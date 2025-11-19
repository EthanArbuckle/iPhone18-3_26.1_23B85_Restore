@interface HMFWiFiNetworkInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNetworkInfo:(id)a3;
- (HMFWiFiNetworkInfo)initWithCoder:(id)a3;
- (HMFWiFiNetworkInfo)initWithMACAddress:(id)a3 SSID:(id)a4 BSSID:(id)a5 gatewayIPAddress:(id)a6 gatewayMACAddress:(id)a7;
- (NSString)propertyDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFWiFiNetworkInfo

- (HMFWiFiNetworkInfo)initWithMACAddress:(id)a3 SSID:(id)a4 BSSID:(id)a5 gatewayIPAddress:(id)a6 gatewayMACAddress:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v25 = a5;
  v15 = a6;
  v16 = a7;
  if (!v13 || v14 && ![v14 length])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier(0);
      *buf = 138543874;
      v28 = v22;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_22ADEC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot create HMFWiFiNetworkInfo with MACAddress: %@ and SSID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v18 = 0;
    goto LABEL_9;
  }

  v26.receiver = self;
  v26.super_class = HMFWiFiNetworkInfo;
  v17 = [(HMFWiFiNetworkInfo *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_MACAddress, a3);
    objc_storeStrong(&v18->_SSID, a4);
    objc_storeStrong(&v18->_networkBSSID, a5);
    objc_storeStrong(&v18->_networkGatewayIPAddress, a6);
    v19 = v16;
    self = v18->_networkGatewayMACAddress;
    v18->_networkGatewayMACAddress = v19;
LABEL_9:
  }

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

- (NSString)propertyDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMFWiFiNetworkInfo *)self MACAddress];
  v5 = [(HMFWiFiNetworkInfo *)self SSID];
  v6 = [v3 stringWithFormat:@" MACAddress=%@ SSID=%@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HMFWiFiNetworkInfo *)self isEqualToNetworkInfo:v4];

  return v5;
}

- (BOOL)isEqualToNetworkInfo:(id)a3
{
  v4 = a3;
  v5 = [(HMFWiFiNetworkInfo *)self MACAddress];
  v6 = [v4 MACAddress];
  if ([v5 isEqualToAddress:v6])
  {
    v7 = [(HMFWiFiNetworkInfo *)self SSID];
    v8 = [v4 SSID];
    v9 = HMFEqualObjects(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(HMFWiFiNetworkInfo *)self MACAddress];
  v4 = [v3 hash];

  v5 = [(HMFWiFiNetworkInfo *)self SSID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (HMFWiFiNetworkInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMF.MACAddress"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMF.SSID"];

  v7 = [(HMFWiFiNetworkInfo *)self initWithMACAddress:v5 SSID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMFWiFiNetworkInfo *)self MACAddress];
  [v4 encodeObject:v5 forKey:@"HMF.MACAddress"];

  v6 = [(HMFWiFiNetworkInfo *)self SSID];
  [v4 encodeObject:v6 forKey:@"HMF.SSID"];
}

@end