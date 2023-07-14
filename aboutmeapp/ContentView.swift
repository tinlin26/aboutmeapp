//
//  ContentView.swift
//  aboutmeapp
//
//  Created by Tina Lin on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var intro = "Hey, I'm Tina!"
    var body: some View {
        ZStack {
            Color(hue: 1.0, saturation: 0.133, brightness: 1.0)
                .ignoresSafeArea()
        VStack {
            Text(intro)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color.pink)
                .multilineTextAlignment(.center)
                .padding()
            Image("pic")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
                .padding()
            Button("Click to Learn About Me!") {
                intro = "I'm interested in business + public speaking! This is me and my friend at a competition <3"
        
            }
            .font(.title3)
            .buttonStyle(.borderedProminent)
            .tint(.pink)
            .padding()
                    }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
