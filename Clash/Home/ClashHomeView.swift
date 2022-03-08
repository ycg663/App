import SwiftUI
import CommonKit

struct ClashHomeView: View {
    
    @EnvironmentObject private var manager: VPNManager
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    ClashConfigView()
                    if let controller = self.manager.controller {
                        VPNStateView()
                            .environmentObject(controller)
                        VPNConnecteDurationView()
                            .environmentObject(controller)
                    }
                }
                Section {
                    VPNConfigView()
                }
                Section {
                    ClashTunnelModeView()
                }
                Section {
                    ClashTrafficUpView()
                    ClashTrafficDownView()
                }
                Section {
                    ClashLogView()
                }
            }
            .navigationBarTitle("Clash")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
