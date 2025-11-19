@interface CWFRemoteInterfaceNetworkInfo
- (CWFRemoteInterfaceNetworkInfo)initWithCoder:(id)a3;
- (CWFRemoteInterfaceNetworkInfo)initWithInterface:(id)a3;
- (CWFRemoteInterfaceNetworkInfo)initWithSSID:(id)a3;
- (CWFRemoteInterfaceNetworkInfo)initWithScanResult:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CWFRemoteInterfaceNetworkInfo

- (CWFRemoteInterfaceNetworkInfo)initWithScanResult:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CWFRemoteInterfaceNetworkInfo;
  v5 = [(CWFRemoteInterfaceNetworkInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 networkName];
    SSID = v5->_SSID;
    v5->_SSID = v6;

    v8 = [v4 displayName];
    networkName = v5->_networkName;
    v5->_networkName = v8;

    v10 = [v4 BSSID];
    BSSID = v5->_BSSID;
    v5->_BSSID = v10;

    v5->_RSSI = [v4 RSSI];
    v5->_securityType = [v4 supportedSecurityTypes];
    v5->_state = 0;
    v12 = [v4 primaryMAC];
    macAddress = v5->_macAddress;
    v5->_macAddress = v12;
  }

  return v5;
}

- (CWFRemoteInterfaceNetworkInfo)initWithInterface:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CWFRemoteInterfaceNetworkInfo;
  v5 = [(CWFRemoteInterfaceNetworkInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 networkName];
    SSID = v5->_SSID;
    v5->_SSID = v6;

    v8 = [v4 networkName];
    networkName = v5->_networkName;
    v5->_networkName = v8;

    v10 = [v4 BSSID];
    BSSID = v5->_BSSID;
    v5->_BSSID = v10;

    v5->_RSSI = [v4 RSSI];
    v5->_securityType = [v4 securityType];
    v5->_state = [v4 state];
    v12 = [v4 MACAddress];
    macAddress = v5->_macAddress;
    v5->_macAddress = v12;
  }

  return v5;
}

- (CWFRemoteInterfaceNetworkInfo)initWithSSID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CWFRemoteInterfaceNetworkInfo;
  v6 = [(CWFRemoteInterfaceNetworkInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_SSID, a3);
    objc_storeStrong(&v7->_networkName, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CWFRemoteInterfaceNetworkInfo *)self SSID];
  [v4 encodeObject:v5 forKey:SSIDKey];

  v6 = [(CWFRemoteInterfaceNetworkInfo *)self networkName];
  [v4 encodeObject:v6 forKey:NetworkNameKey];

  v7 = [(CWFRemoteInterfaceNetworkInfo *)self BSSID];
  [v4 encodeObject:v7 forKey:BSSIDKey];

  v8 = [(CWFRemoteInterfaceNetworkInfo *)self RSSI];
  [v4 encodeInteger:v8 forKey:RSSIKey];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFRemoteInterfaceNetworkInfo securityType](self, "securityType")}];
  [v4 encodeObject:v9 forKey:SecurityTypeKey];

  v10 = [(CWFRemoteInterfaceNetworkInfo *)self state];
  [v4 encodeInteger:v10 forKey:NetworkStateKey];
  v11 = [(CWFRemoteInterfaceNetworkInfo *)self macAddress];
  [v4 encodeObject:v11 forKey:MACAddressKey];
}

- (CWFRemoteInterfaceNetworkInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CWFRemoteInterfaceNetworkInfo);
  v6 = [v4 decodeObjectForKey:SSIDKey];
  [(CWFRemoteInterfaceNetworkInfo *)v5 setSSID:v6];

  v7 = [v4 decodeObjectForKey:NetworkNameKey];
  [(CWFRemoteInterfaceNetworkInfo *)v5 setNetworkName:v7];

  v8 = [v4 decodeObjectForKey:BSSIDKey];
  [(CWFRemoteInterfaceNetworkInfo *)v5 setBSSID:v8];

  -[CWFRemoteInterfaceNetworkInfo setRSSI:](v5, "setRSSI:", [v4 decodeIntegerForKey:RSSIKey]);
  v9 = [v4 decodeObjectForKey:SecurityTypeKey];
  -[CWFRemoteInterfaceNetworkInfo setSecurityType:](v5, "setSecurityType:", [v9 unsignedIntegerValue]);
  -[CWFRemoteInterfaceNetworkInfo setState:](v5, "setState:", [v4 decodeIntegerForKey:NetworkStateKey]);
  v10 = [v4 decodeObjectForKey:MACAddressKey];

  [(CWFRemoteInterfaceNetworkInfo *)v5 setMacAddress:v10];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CWFRemoteInterfaceNetworkInfo *)self SSID];
  v5 = [(CWFRemoteInterfaceNetworkInfo *)self networkName];
  v6 = [(CWFRemoteInterfaceNetworkInfo *)self BSSID];
  v7 = [(CWFRemoteInterfaceNetworkInfo *)self RSSI];
  v8 = [(CWFRemoteInterfaceNetworkInfo *)self securityType];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CWFRemoteInterfaceNetworkInfo state](self, "state")}];
  v10 = [(CWFRemoteInterfaceNetworkInfo *)self macAddress];
  v11 = [v3 stringWithFormat:@"SSID: %@, networkName: %@ BSSID: %@, RSSI: %ld, security: %lu, state: %@, macAddress: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end