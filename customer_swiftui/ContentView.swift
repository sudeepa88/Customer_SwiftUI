//
//  ContentView.swift
//  customer_swiftui
//
//  Created by sudeepa pal on 20/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            VStack{
            HStack{
                Label("View Patient",systemImage:"arrow.left")
                    .foregroundColor(Color(red: 0.00392156862745098, green: 0.1803921568627451, blue: 0.3411764705882353))
                    .font(.system(size:18).bold())
                    .padding()
                       
            }.frame(width:400,height:50,alignment: .topLeading)//Hstack for navigation bar
                
                HStack{
                    Rectangle().frame(width:420, height:2, alignment:.center)
                        .foregroundColor(Color(red:0.6823529411764706, green:0.6745098039215687 , blue:0.6745098039215687))
                }
                
            }//Vstack for navigation bar
            
            
            HStack{
                HStack{
                    VStack{
                        Text("S.Meena,F/23")
                            .foregroundColor(Color(red: 0.00392156862745098, green: 0.1803921568627451, blue: 0.3411764705882353))
                            .font(.system(size:19))
                            .padding(.trailing,100)
                           
                        Text("Patient ID:20200727153557")
                            .foregroundColor(Color(red: 0.00392156862745098, green: 0.1803921568627451, blue: 0.3411764705882353))
                            .font(.system(size:15))
                            .padding(.trailing,20)
                      
                    }
                    .padding(.leading)
                        
                    Spacer()
                }
                HStack{
                    Image(systemName:"person.circle")
                        .foregroundColor(Color(red: 0.00392156862745098, green: 0.1803921568627451, blue: 0.3411764705882353))
                        .font(.system(size:45))
                }.padding(.trailing)
            }//for Patient's Details
            
            
            
    ///Chart is starting from here
            VStack{
                ZStack{
                    
                    HStack{
                        
                    }.frame(width:390, height:230)
                        .overlay(RoundedRectangle(cornerRadius:40).fill(Color(red:0, green: 0.14901960784313725, blue:0.2784313725490196))
                            .shadow(color:.gray, radius:8, x:8, y:8))
                    
                    HStack{
                        Text("Goal Reached")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            
                    }.frame(height:210,alignment:.top)
                    
                    ZStack{
                        
                        Circle().trim(from: 0, to: 0.5) // 1
                                        .stroke(
                                            Color(red:0.8509803921568627, green: 0.8509803921568627, blue: 0.8509803921568627),
                                            lineWidth: 30
                                        ).rotationEffect(.degrees(180))
                        
                        Circle().trim(from: 0, to: 0.10) // 1
                                        .stroke(
                                            Color(red:252/255, green:176/255, blue:0/255),
                                            lineWidth: 32
                                        ).rotationEffect(.degrees(180))

                        
                    }.frame(width:160, height:200)
                        .padding(.top,55)
                        .padding(.trailing,85)
                    
                    
                    HStack{
                        Text("40%")
                            .font(.system(size:25).bold())
                            .foregroundColor(.white)
                    }.padding(.trailing,75)
                    
                    VStack{
                        VStack{
                            Text("EMG")
                                .font(.system(size:14))
                                .padding(.trailing,30)
                            
                            HStack(spacing:-4){
                                Image(systemName:"waveform.path.ecg")
                                    .frame(height:4)
                                    .foregroundColor(Color(red:55/255, green:221/255, blue:13/255))
                                Image(systemName:"waveform.path.ecg")
                                    .frame(height:4)
                                    .foregroundColor(Color(red:55/255, green:221/255, blue:13/255))
                                Image(systemName:"waveform.path.ecg")
                                    .frame(height:4)
                                    .foregroundColor(Color(red:55/255, green:221/255, blue:13/255))
                                Image(systemName:"waveform.path.ecg")
                                    .frame(height:4)
                                    .foregroundColor(Color(red:55/255, green:221/255, blue:13/255))
                                Image(systemName:"waveform.path.ecg")
                                    .frame(height:4)
                                    .foregroundColor(Color(red:55/255, green:221/255, blue:13/255))
                            }.rotationEffect(.degrees(170))
                                    
                                    
                                
                            
                            
                        }.frame(width:75, height:45, alignment:.topLeading)
                            .background(Color.white)
                            .cornerRadius(10)
                            //this Vstack is for emg
                        
                        VStack{
                            Text("ROM")
                                .font(.system(size:14))
                                .padding(.trailing,30)
                            HStack(spacing:-4){
                                Image(systemName:"waveform.path.ecg")
                                    .frame(height:4)
                                    .foregroundColor(Color(red:223/255, green:1/255, blue:0/255))
                                Image(systemName:"waveform.path.ecg")
                                    .frame(height:4)
                                    .foregroundColor(Color(red:223/255, green:1/255, blue:0/255))
                                Image(systemName:"waveform.path.ecg")
                                    .frame(height:4)
                                    .foregroundColor(Color(red:223/255, green:1/255, blue:0/255))
                                Image(systemName:"waveform.path.ecg")
                                    .frame(height:4)
                                    .foregroundColor(Color(red:223/255, green:1/255, blue:0/255))
                                Image(systemName:"waveform.path.ecg")
                                    .frame(height:4)
                                    .foregroundColor(Color(red:223/255, green:1/255, blue:0/255))
                            }.rotationEffect(.degrees(6))
                            
                            
                            
                            
                        }.frame(width:75, height:45, alignment:.topLeading)
                            .background(Color.white)
                            .cornerRadius(10)//this VStack is for ROM
                    }.padding(.leading,240)
                    
                    
                    
                }//Zsatck for view
//End of the chart
                
//Patients details startinf from fere
                
                HStack(spacing:35){
                    VStack(spacing:10){
                        VStack{
                            Text("Phone no.")
                                .foregroundColor(Color(red:188/255, green:188/255, blue:188/255))
                        }.frame(width:105,alignment: .leading)
                        VStack{
                            Text("Mail ID")
                                .foregroundColor(Color(red:188/255, green:188/255, blue:188/255))
                        }.frame(width:105,alignment: .leading)
                        VStack{
                            Text("Affected Side")
                                .foregroundColor(Color(red:188/255, green:188/255, blue:188/255))
                        }.frame(width:105,alignment: .leading)
                        VStack{
                            Text("Condition")
                                .foregroundColor(Color(red:188/255, green:188/255, blue:188/255))
                        }.frame(width:105,alignment: .leading)
                        VStack{
                            Text("Speciality")
                                .foregroundColor(Color(red:188/255, green:188/255, blue:188/255))
                        }.frame(width:105,alignment: .leading)
                    }.frame(alignment:.leading)
                    
                    
                    
                    VStack(spacing:10){
                        HStack{
                            HStack{
                                Image(systemName:"phone.fill")
                                    .foregroundColor(Color(red:0, green: 0.14901960784313725, blue:0.2784313725490196))
                            }
                            HStack{
                               Text("8022334455")
                            }
                        }.frame(width:235,alignment:.leading)
                        
                        HStack{
                            HStack{
                                Image(systemName:"envelope")
                                    .foregroundColor(Color(red:0, green: 0.14901960784313725, blue:0.2784313725490196))
                            }
                            HStack{
                               Text("meenarabinsachin@ gmail.com")
                                    .font(.system(size:14))
                                    .foregroundStyle(.black)
                            }
                        }.frame(width:235,alignment:.leading)
                        
                        
                        HStack{
                            HStack{
                                Image(systemName:"person.crop.square.fill")
                                    .foregroundColor(Color(red:223/255, green:1/255, blue:0/255))
                            }
                            HStack{
                               Text("Billateral")
                            }
                        }.frame(width:235,alignment:.leading)
                        
                        
                        HStack{
                            HStack{
                                Image(systemName:"peacesign")
                                    .foregroundColor(Color.black)
                            }
                            HStack{
                               Text("Ortho")
                            }
                        }.frame(width:235,alignment:.leading)
                        
                        
                        HStack{
                            HStack{
                                Image(systemName:"cross.case")
                                    .foregroundColor(Color.black)
                            }
                            HStack{
                               Text("Osteoarthritis")
                            }
                        }.frame(width:235,alignment:.leading)
                        
                        
                    }.frame(alignment:.leading)
                    
                    
                    
                    
                    
                    
                    
                }.frame(width:400,alignment: .leading)
                    .padding(.leading,17)//Hstack for patient details
                
                
                HStack{
                    Rectangle().frame(width:420, height:2, alignment:.center)
                        .foregroundColor(Color(red:0.6823529411764706, green:0.6745098039215687 , blue:0.6745098039215687))
                }
                
                
            }//this vstack is for chart
            
            
            HStack(spacing:30){
                HStack{
                    HStack{
                        Image(systemName: "doc.badge.ellipsis")
                            .font(.system(size:20))
                    }
                    
                    HStack{
                        Text("Medical History")
                            .font(.system(size:15))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red:0/255, green:38/255 , blue:71/255))
                    }
                }
                
                HStack{
                    Text("Hypertension,DM,Hypothyrodism")
                        .font(.system(size:14))
                }
            }
            
            
            
            
            Spacer()
        }.frame(maxWidth:.infinity,maxHeight:.infinity)//the whole screen
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
