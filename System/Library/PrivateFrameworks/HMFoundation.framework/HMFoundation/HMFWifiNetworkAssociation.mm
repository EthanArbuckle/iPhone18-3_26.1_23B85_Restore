@interface HMFWifiNetworkAssociation
- (HMFWifiNetworkAssociation)initWithMACAddress:(id)address SSID:(id)d requiresPassword:(BOOL)password BSSID:(id)iD gatewayIPAddress:(id)pAddress gatewayMACAddress:(id)cAddress;
@end

@implementation HMFWifiNetworkAssociation

- (HMFWifiNetworkAssociation)initWithMACAddress:(id)address SSID:(id)d requiresPassword:(BOOL)password BSSID:(id)iD gatewayIPAddress:(id)pAddress gatewayMACAddress:(id)cAddress
{
  addressCopy = address;
  dCopy = d;
  iDCopy = iD;
  pAddressCopy = pAddress;
  cAddressCopy = cAddress;
  v23.receiver = self;
  v23.super_class = HMFWifiNetworkAssociation;
  v18 = [(HMFWifiNetworkAssociation *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_MACAddress, address);
    objc_storeStrong(&v19->_SSID, d);
    v19->_requiresPassword = password;
    objc_storeStrong(&v19->_BSSID, iD);
    objc_storeStrong(&v19->_gatewayIPAddress, pAddress);
    objc_storeStrong(&v19->_gatewayMACAddress, cAddress);
  }

  return v19;
}

@end