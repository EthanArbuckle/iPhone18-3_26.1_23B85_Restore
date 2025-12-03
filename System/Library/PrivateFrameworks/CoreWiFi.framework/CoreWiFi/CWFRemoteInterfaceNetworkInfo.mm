@interface CWFRemoteInterfaceNetworkInfo
- (CWFRemoteInterfaceNetworkInfo)initWithCoder:(id)coder;
- (CWFRemoteInterfaceNetworkInfo)initWithInterface:(id)interface;
- (CWFRemoteInterfaceNetworkInfo)initWithSSID:(id)d;
- (CWFRemoteInterfaceNetworkInfo)initWithScanResult:(id)result;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFRemoteInterfaceNetworkInfo

- (CWFRemoteInterfaceNetworkInfo)initWithScanResult:(id)result
{
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = CWFRemoteInterfaceNetworkInfo;
  v5 = [(CWFRemoteInterfaceNetworkInfo *)&v15 init];
  if (v5)
  {
    networkName = [resultCopy networkName];
    SSID = v5->_SSID;
    v5->_SSID = networkName;

    displayName = [resultCopy displayName];
    networkName = v5->_networkName;
    v5->_networkName = displayName;

    bSSID = [resultCopy BSSID];
    BSSID = v5->_BSSID;
    v5->_BSSID = bSSID;

    v5->_RSSI = [resultCopy RSSI];
    v5->_securityType = [resultCopy supportedSecurityTypes];
    v5->_state = 0;
    primaryMAC = [resultCopy primaryMAC];
    macAddress = v5->_macAddress;
    v5->_macAddress = primaryMAC;
  }

  return v5;
}

- (CWFRemoteInterfaceNetworkInfo)initWithInterface:(id)interface
{
  interfaceCopy = interface;
  v15.receiver = self;
  v15.super_class = CWFRemoteInterfaceNetworkInfo;
  v5 = [(CWFRemoteInterfaceNetworkInfo *)&v15 init];
  if (v5)
  {
    networkName = [interfaceCopy networkName];
    SSID = v5->_SSID;
    v5->_SSID = networkName;

    networkName2 = [interfaceCopy networkName];
    networkName = v5->_networkName;
    v5->_networkName = networkName2;

    bSSID = [interfaceCopy BSSID];
    BSSID = v5->_BSSID;
    v5->_BSSID = bSSID;

    v5->_RSSI = [interfaceCopy RSSI];
    v5->_securityType = [interfaceCopy securityType];
    v5->_state = [interfaceCopy state];
    mACAddress = [interfaceCopy MACAddress];
    macAddress = v5->_macAddress;
    v5->_macAddress = mACAddress;
  }

  return v5;
}

- (CWFRemoteInterfaceNetworkInfo)initWithSSID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = CWFRemoteInterfaceNetworkInfo;
  v6 = [(CWFRemoteInterfaceNetworkInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_SSID, d);
    objc_storeStrong(&v7->_networkName, d);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sSID = [(CWFRemoteInterfaceNetworkInfo *)self SSID];
  [coderCopy encodeObject:sSID forKey:SSIDKey];

  networkName = [(CWFRemoteInterfaceNetworkInfo *)self networkName];
  [coderCopy encodeObject:networkName forKey:NetworkNameKey];

  bSSID = [(CWFRemoteInterfaceNetworkInfo *)self BSSID];
  [coderCopy encodeObject:bSSID forKey:BSSIDKey];

  rSSI = [(CWFRemoteInterfaceNetworkInfo *)self RSSI];
  [coderCopy encodeInteger:rSSI forKey:RSSIKey];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFRemoteInterfaceNetworkInfo securityType](self, "securityType")}];
  [coderCopy encodeObject:v9 forKey:SecurityTypeKey];

  state = [(CWFRemoteInterfaceNetworkInfo *)self state];
  [coderCopy encodeInteger:state forKey:NetworkStateKey];
  macAddress = [(CWFRemoteInterfaceNetworkInfo *)self macAddress];
  [coderCopy encodeObject:macAddress forKey:MACAddressKey];
}

- (CWFRemoteInterfaceNetworkInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(CWFRemoteInterfaceNetworkInfo);
  v6 = [coderCopy decodeObjectForKey:SSIDKey];
  [(CWFRemoteInterfaceNetworkInfo *)v5 setSSID:v6];

  v7 = [coderCopy decodeObjectForKey:NetworkNameKey];
  [(CWFRemoteInterfaceNetworkInfo *)v5 setNetworkName:v7];

  v8 = [coderCopy decodeObjectForKey:BSSIDKey];
  [(CWFRemoteInterfaceNetworkInfo *)v5 setBSSID:v8];

  -[CWFRemoteInterfaceNetworkInfo setRSSI:](v5, "setRSSI:", [coderCopy decodeIntegerForKey:RSSIKey]);
  v9 = [coderCopy decodeObjectForKey:SecurityTypeKey];
  -[CWFRemoteInterfaceNetworkInfo setSecurityType:](v5, "setSecurityType:", [v9 unsignedIntegerValue]);
  -[CWFRemoteInterfaceNetworkInfo setState:](v5, "setState:", [coderCopy decodeIntegerForKey:NetworkStateKey]);
  v10 = [coderCopy decodeObjectForKey:MACAddressKey];

  [(CWFRemoteInterfaceNetworkInfo *)v5 setMacAddress:v10];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  sSID = [(CWFRemoteInterfaceNetworkInfo *)self SSID];
  networkName = [(CWFRemoteInterfaceNetworkInfo *)self networkName];
  bSSID = [(CWFRemoteInterfaceNetworkInfo *)self BSSID];
  rSSI = [(CWFRemoteInterfaceNetworkInfo *)self RSSI];
  securityType = [(CWFRemoteInterfaceNetworkInfo *)self securityType];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CWFRemoteInterfaceNetworkInfo state](self, "state")}];
  macAddress = [(CWFRemoteInterfaceNetworkInfo *)self macAddress];
  v11 = [v3 stringWithFormat:@"SSID: %@, networkName: %@ BSSID: %@, RSSI: %ld, security: %lu, state: %@, macAddress: %@", sSID, networkName, bSSID, rSSI, securityType, v9, macAddress];

  return v11;
}

@end