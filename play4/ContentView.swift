//
//  ContentView.swift
//  play4
//
//  Created by Josep Subils Rigau on 02/04/2020.
//  Copyright © 2020 Josep Subils Rigau. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            WelcomeHeader()
            Spacer()
            HStack(spacing: 5) {
                Plan(title: "Basic", price:"3€", subtitle:"3 max", textColor: .white, backgroundColor: .green)
                ZStack {
                    Plan(title: "Pro", price:"5€", subtitle:"10 max", textColor: .black, backgroundColor: .gray)
                    Text("El mejor para empezar")
                        .font(.system(.caption, design: .rounded))
                        .foregroundColor(.white)
                        .fontWeight(.black)
                        .background(Color(red: 240/255, green: 180/255,blue:50/255))
                        .padding(10)
                        .offset(x:0, y: -70)
                }
            }
            Plan(title: "Definitivo", price:"10€", subtitle:"100 max", textColor: .black, backgroundColor: .gray, icon: "lightbulb")
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WelcomeHeader: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Benvingut")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            
            Text("Escull el teu producte:")
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
        }
    }
}

struct Plan: View {
    var title: String
    var price: String
    var subtitle: String
    var textColor: Color
    var backgroundColor: Color
    var icon: String?
    
    var body: some View {
        VStack {
            
            icon.map({
                Image(systemName: $0)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            })
            
            Text(title)
                .font(.system(.body, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            
            Text(price)
                .font(.system(size:30, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            
            Text(subtitle)
                .font(.system(.body, design: .rounded))
                .foregroundColor(textColor)
        }
        .padding(20)
        .background(backgroundColor)
        .cornerRadius(10)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
    }
}
