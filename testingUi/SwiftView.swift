import SwiftUI

struct SwiftView: View {

    let names = ["Raju", "Ghanshyam", "Baburao Ganpatrao Apte", "Anuradha", "Kabira", "Chaman Jhinga", "Devi Prasad", "Khadak Singh"]

    @State private var searchTerm : String = ""

    var body: some View {
        NavigationView{
            List {
                SearchBar(text: $searchTerm)

                ForEach(self.names.filter{
                    self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                }, id: \.self) { name in
                    Text(name)
                }
            }

            .navigationBarTitle(Text("Search Bar"))
        }
    }
}

struct SwiftView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftView()
    }
}
