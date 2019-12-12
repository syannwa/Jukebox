//
//  ContentView.swift
//  Waters_Jukebox_2
//
//  Created by Sydney Ann Waters on 10/29/19.
//  Copyright © 2019 Sydney Ann Waters. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    //main view
    var body: some View {
        
        HStack {
            NavigationView {
                VStack(spacing:21.0){
                    Text("Sydney's Favorite Songs Jukebox")
                        .bold()
                        .baselineOffset(10)
                        .font(.title)
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: DodieView()) {
                        Text("Dodie Clarke")
                    }
                    .accentColor(Color.white)
                    .padding(10)
                    .background(Color.black)
                    
                    NavigationLink(destination: MaesonView()) {
                        Text("Matt Maeson")
                    }
                    .accentColor(Color.white)
                    .padding(10)
                    .background(Color.black)
                    
                    NavigationLink(destination: LizzoView()) {
                        Text("Lizzo")
                    }
                    .accentColor(Color.white)
                    .padding(10)
                    .background(Color.black)
                    
                    NavigationLink(destination: RuelView()) {
                        Text("Ruel")
                    }
                    .accentColor(Color.white)
                    .padding(10)
                    .background(Color.black)
                    
                }
                .padding(100)
                .background(Color.yellow.opacity(0.65))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 5)
                )
            }
            
        }
        
    }
    
}

    
struct DodieView : View {
        
    @State var audio: AVAudioPlayer?

    //playSound
    func playsound (thesong: String){
        let thepath = Bundle.main.path(forAuxiliaryExecutable: thesong)!
        let url = URL(fileURLWithPath: thepath)
        do {
            audio = try AVAudioPlayer(contentsOf: url)
            audio?.play()
        } catch {
                // couldn't load file :(
        }
        }

        //stopsoud
        func stopsound(){
        audio?.stop()
        }

        //pause
        func paws(){
        audio?.pause()
        }

        //play
        func player(){
        audio?.play()
        }

        var body: some View{
        VStack{
            HStack(spacing: 21.0){
            VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "party.plus.aac.p.m4a")
            }) {
                VStack(spacing: 22.0) {
                Text("Party Tattoos")
                    .font(.title)
                    
                 Text("dodie").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("party")
                    .renderingMode(.original)
                }
            }
        }//party vstack
                .padding(30)
                .background(Color.blue.opacity(0.5))
                .accentColor(Color.white)

        VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "monster.plus.aac.p.m4a")
            }) {
               VStack(spacing: 22.0) {
                Text("Monster")
                    .font(.title)
                 Text("dodie").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("monster")
                    .renderingMode(.original)
                }
            }
        }//monster vstack
                .padding(30)
                .background(Color.blue.opacity(0.5))
                .accentColor(Color.white)
        }//top Hstack

            HStack(spacing: 21.0){
            VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "boys.plus.aac.p.m4a")
            }) {
               VStack(spacing: 22.0) {
                Text("Boys")
                    .font(.title)
                 Text("dodie").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("boys")
                    .renderingMode(.original)
                }
            }
        }//boys vstack
                .padding(30)
                .background(Color.blue.opacity(0.5))
                .accentColor(Color.white)

        VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "guiltless.plus.aac.p.m4a")
            }) {
               VStack(spacing: 22.0) {
                Text("Guiltless")
                    .font(.title)
                 Text("dodie").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("guiltless")
                    .renderingMode(.original)
                }
            }
        }//guiltless vstack
                .padding(30)
                .background(Color.blue.opacity(0.5))
                .accentColor(Color.white)
        }//bottom hstack
            HStack(spacing: 20.0) {
                           Button(action: stopsound) {
                               Text("Stop")
                           }
                           Button(action: paws) {
                               Text("Pause")
                        
                           }
                           Button(action: player) {
                               Text("Play")
                           }
                       }//buttons hstack
                .accentColor(Color.gray)
                .background(Color.white.opacity(0.3))
        }//allvstack
            .padding(300)
    }//some view
    
}//Dodieview

struct MaesonView : View {
        
    @State var audio: AVAudioPlayer?

    //playSound
    func playsound (thesong: String){
        let thepath = Bundle.main.path(forAuxiliaryExecutable: thesong)!
        let url = URL(fileURLWithPath: thepath)
        do {
            audio = try AVAudioPlayer(contentsOf: url)
            audio?.play()
        } catch {
                // couldn't load file :(
        }
        }

        //stopsoud
        func stopsound(){
        audio?.stop()
        }

        //pause
        func paws(){
        audio?.pause()
        }

        //play
        func player(){
        audio?.play()
        }

        var body: some View{
        VStack{
            HStack(spacing: 21.0){
            VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "cringe.plus.aac.p.m4a")
            }) {
                VStack(spacing: 22.0) {
                Text("Cringe")
                    .font(.title)
                 Text("Matt Maeson").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("cringe")
                    .renderingMode(.original)
                }
            }
        }//cringe vstack

        VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "bank.m4a")
            }) {
               VStack(spacing: 22.0) {
                Text("Bank on the Funeral")
                    .font(.title)
                 Text("Matt Maeson").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("bank")
                    .renderingMode(.original)
                }
            }
        }//monster vstack
        }//top Hstack

            HStack(spacing: 21.0){
            VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "hallu.m4a")
            }) {
               VStack(spacing: 22.0) {
                Text("Hallucenogenics")
                    .font(.title)
                 Text("Matt Maeson").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("hallu")
                    .renderingMode(.original)
                }
            }
        }//boys vstack

        VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "easy.m4a")
            }) {
               VStack(spacing: 22.0) {
                Text("Easy")
                    .font(.title)
                 Text("Matt Maeson").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("easy")
                    .renderingMode(.original)
                }
            }
        }//guiltless vstack
                .background(Color.blue.opacity(0.5))
        }//bottom hstack
            
            HStack(spacing: 20.0) {
                                      Button(action: stopsound) {
                                          Text("Stop")
                                      }
                                      Button(action: paws) {
                                          Text("Pause")
                                      }
                                      Button(action: player) {
                                          Text("Play")
                                      }
                                  }//buttons hstack
            
        }//allvstack
    }//some view
}//Masonview

struct LizzoView : View {
        
    @State var audio: AVAudioPlayer?

    //playSound
    func playsound (thesong: String){
        let thepath = Bundle.main.path(forAuxiliaryExecutable: thesong)!
        let url = URL(fileURLWithPath: thepath)
        do {
            audio = try AVAudioPlayer(contentsOf: url)
            audio?.play()
        } catch {
                // couldn't load file :(
        }
        }

        //stopsoud
        func stopsound(){
        audio?.stop()
        }

        //pause
        func paws(){
        audio?.pause()
        }

        //play
        func player(){
        audio?.play()
        }

        var body: some View{
        VStack{
            HStack(spacing: 21.0){
            VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "boysLizzo.m4a")
            }) {
                VStack(spacing: 22.0) {
                Text("Boys")
                    .font(.title)
                 Text("Lizzo").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("boysLizzo")
                    .renderingMode(.original)
                }
            }
        }//boys vstack

        VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "good.m4a")
            }) {
               VStack(spacing: 22.0) {
                Text("Good As Hell")
                    .font(.title)
                 Text("Lizzo").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("good")
                    .renderingMode(.original)
                }
            }
        }//good vstack
        }//top Hstack

            HStack(spacing: 21.0){
            VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "tempo.m4a")
            }) {
               VStack(spacing: 22.0) {
                Text("Tempo")
                    .font(.title)
                 Text("Lizzo").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("tempo")
                    .renderingMode(.original)
                }
            }
        }//tempo vstack

        VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "let.m4a")
            }) {
               VStack(spacing: 22.0) {
                Text("Let 'em Say")
                    .font(.title)
                 Text("Lizzo & Caroline Smith").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("Let")
                    .renderingMode(.original)
                }
            }
        }//let vstack
        }//bottom hstack
            
            HStack(spacing: 11.0) {
                                      Button(action: stopsound) {
                                          Text("Stop")
                                      }
                                      Button(action: paws) {
                                          Text("Pause")
                                      }
                                      Button(action: player) {
                                          Text("Play")
                                      }
                                  }//buttons hstack
            
        }//allvstack
    }//some view
}//Lizzoview

struct RuelView : View {
        
    @State var audio: AVAudioPlayer?

    //playSound
    func playsound (thesong: String){
        let thepath = Bundle.main.path(forAuxiliaryExecutable: thesong)!
        let url = URL(fileURLWithPath: thepath)
        do {
            audio = try AVAudioPlayer(contentsOf: url)
            audio?.play()
        } catch {
                // couldn't load file :(
        }
        }

        //stopsoud
        func stopsound(){
        audio?.stop()
        }

        //pause
        func paws(){
        audio?.pause()
        }

        //play
        func player(){
        audio?.play()
        }

        var body: some View{
        VStack{
            HStack(spacing: 21.0){
            VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "dazed.m4a")
            }) {
                VStack(spacing: 22.0) {
                Text("Dazed and Confused")
                    .font(.title)
                 Text("Ruel").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("dazed")
                    .renderingMode(.original)
                }
            }
        }//dazed vstack

        VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "golden.m4a")
            }) {
               VStack(spacing: 22.0) {
                Text("Golden Years")
                    .font(.title)
                 Text("Ruel").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("golden")
                    .renderingMode(.original)
                }
            }
        }//golden vstack
        }//top Hstack

            HStack(spacing: 21.0){
            VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "painkiller.m4a")
            }) {
               VStack(spacing: 22.0) {
                Text("Painkiller")
                    .font(.title)
                 Text("Ruel").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("painkiller")
                    .renderingMode(.original)
                }
            }
        }//painkiller vstack

        VStack(spacing: 55.0) {
            Button(action: {
                self.playsound(thesong: "younger.m4a")
            }) {
               VStack(spacing: 22.0) {
                Text("Younger")
                    .font(.title)
                 Text("Ruel").multilineTextAlignment(.center)
                    .lineLimit(2)
                    Image("younger")
                    .renderingMode(.original)
                }
            }
        }//let vstack
        }//bottom hstack
            
            HStack(spacing: 11.0) {
                                      Button(action: stopsound) {
                                          Text("Stop")
                                      }
                                      Button(action: paws) {
                                          Text("Pause")
                                      }
                                      Button(action: player) {
                                          Text("Play")
                                      }
                                  }//buttons hstack
            
        }//allvstack
    }//some view
}//ruelview



struct ContentView_Previews: PreviewProvider {
static var previews: some View {
    ContentView()
}
}

