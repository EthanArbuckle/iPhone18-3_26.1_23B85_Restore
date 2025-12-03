@interface HMFWiFiNetworkInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNetworkInfo:(id)info;
- (HMFWiFiNetworkInfo)initWithCoder:(id)coder;
- (HMFWiFiNetworkInfo)initWithMACAddress:(id)address SSID:(id)d BSSID:(id)iD gatewayIPAddress:(id)pAddress gatewayMACAddress:(id)cAddress;
- (NSString)propertyDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMFWiFiNetworkInfo

- (HMFWiFiNetworkInfo)initWithMACAddress:(id)address SSID:(id)d BSSID:(id)iD gatewayIPAddress:(id)pAddress gatewayMACAddress:(id)cAddress
{
  v33 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  dCopy = d;
  iDCopy = iD;
  pAddressCopy = pAddress;
  cAddressCopy = cAddress;
  if (!addressCopy || dCopy && ![dCopy length])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier(0);
      *buf = 138543874;
      v28 = v22;
      v29 = 2112;
      v30 = addressCopy;
      v31 = 2112;
      v32 = dCopy;
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
    objc_storeStrong(&v17->_MACAddress, address);
    objc_storeStrong(&v18->_SSID, d);
    objc_storeStrong(&v18->_networkBSSID, iD);
    objc_storeStrong(&v18->_networkGatewayIPAddress, pAddress);
    v19 = cAddressCopy;
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
  mACAddress = [(HMFWiFiNetworkInfo *)self MACAddress];
  sSID = [(HMFWiFiNetworkInfo *)self SSID];
  v6 = [v3 stringWithFormat:@" MACAddress=%@ SSID=%@", mACAddress, sSID];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HMFWiFiNetworkInfo *)self isEqualToNetworkInfo:equalCopy];

  return v5;
}

- (BOOL)isEqualToNetworkInfo:(id)info
{
  infoCopy = info;
  mACAddress = [(HMFWiFiNetworkInfo *)self MACAddress];
  mACAddress2 = [infoCopy MACAddress];
  if ([mACAddress isEqualToAddress:mACAddress2])
  {
    sSID = [(HMFWiFiNetworkInfo *)self SSID];
    sSID2 = [infoCopy SSID];
    v9 = HMFEqualObjects(sSID, sSID2);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  mACAddress = [(HMFWiFiNetworkInfo *)self MACAddress];
  v4 = [mACAddress hash];

  sSID = [(HMFWiFiNetworkInfo *)self SSID];
  v6 = [sSID hash];

  return v6 ^ v4;
}

- (HMFWiFiNetworkInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMF.MACAddress"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMF.SSID"];

  v7 = [(HMFWiFiNetworkInfo *)self initWithMACAddress:v5 SSID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mACAddress = [(HMFWiFiNetworkInfo *)self MACAddress];
  [coderCopy encodeObject:mACAddress forKey:@"HMF.MACAddress"];

  sSID = [(HMFWiFiNetworkInfo *)self SSID];
  [coderCopy encodeObject:sSID forKey:@"HMF.SSID"];
}

@end