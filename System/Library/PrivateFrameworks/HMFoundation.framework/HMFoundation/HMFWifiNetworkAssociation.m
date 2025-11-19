@interface HMFWifiNetworkAssociation
- (HMFWifiNetworkAssociation)initWithMACAddress:(id)a3 SSID:(id)a4 requiresPassword:(BOOL)a5 BSSID:(id)a6 gatewayIPAddress:(id)a7 gatewayMACAddress:(id)a8;
@end

@implementation HMFWifiNetworkAssociation

- (HMFWifiNetworkAssociation)initWithMACAddress:(id)a3 SSID:(id)a4 requiresPassword:(BOOL)a5 BSSID:(id)a6 gatewayIPAddress:(id)a7 gatewayMACAddress:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v22 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = HMFWifiNetworkAssociation;
  v18 = [(HMFWifiNetworkAssociation *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_MACAddress, a3);
    objc_storeStrong(&v19->_SSID, a4);
    v19->_requiresPassword = a5;
    objc_storeStrong(&v19->_BSSID, a6);
    objc_storeStrong(&v19->_gatewayIPAddress, a7);
    objc_storeStrong(&v19->_gatewayMACAddress, a8);
  }

  return v19;
}

@end