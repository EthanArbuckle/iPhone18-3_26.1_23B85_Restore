@interface HMDCameraNetworkConfig
+ (id)localIPAddress;
- (HMDCameraNetworkConfig)init;
- (HMDCameraNetworkConfig)initWithAddress:(id)address ipv6:(BOOL)ipv6 rtpPort:(id)port;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation HMDCameraNetworkConfig

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  ipAddress = [(HMDCameraNetworkConfig *)self ipAddress];
  [(HMDCameraNetworkConfig *)self ipv6];
  v5 = HMFBooleanToString();
  rtpPort = [(HMDCameraNetworkConfig *)self rtpPort];
  stringValue = [rtpPort stringValue];
  v8 = [v3 stringWithFormat:@"<%@, rtpPort:%@ %@>", ipAddress, v5, stringValue];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDCameraNetworkConfig allocWithZone:zone];
  ipAddress = [(HMDCameraNetworkConfig *)self ipAddress];
  ipv6 = [(HMDCameraNetworkConfig *)self ipv6];
  rtpPort = [(HMDCameraNetworkConfig *)self rtpPort];
  v8 = [(HMDCameraNetworkConfig *)v4 initWithAddress:ipAddress ipv6:ipv6 rtpPort:rtpPort];

  sa = self->_ipv4SockAddress.sa;
  *(v8 + 20) = *(&self->_ipv4SockAddress.ipv6.sin6_addr + 4);
  *(v8 + 8) = sa;
  v10 = self->_ipv6SockAddress.sa;
  *(v8 + 48) = *(&self->_ipv6SockAddress.ipv6.sin6_addr + 4);
  *(v8 + 36) = v10;
  return v8;
}

- (HMDCameraNetworkConfig)initWithAddress:(id)address ipv6:(BOOL)ipv6 rtpPort:(id)port
{
  addressCopy = address;
  portCopy = port;
  v11 = [(HMDCameraNetworkConfig *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_ipAddress, address);
    v12->_ipv6 = ipv6;
    objc_storeStrong(&v12->_rtpPort, port);
  }

  return v12;
}

- (HMDCameraNetworkConfig)init
{
  v3.receiver = self;
  v3.super_class = HMDCameraNetworkConfig;
  result = [(HMDCameraNetworkConfig *)&v3 init];
  if (result)
  {
    result->_ipv6 = 0;
  }

  return result;
}

+ (id)localIPAddress
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HMDCameraNetworkConfig);
  if (!GetPrimaryIPAddress())
  {
    p_s_addr = &v2->_ipv4SockAddress.v4.sin_addr.s_addr;
    v8 = bswap32(v2->_ipv4SockAddress.v4.sin_addr.s_addr);
    if (HIWORD(v8) != 43518 && (v8 & 0xFFFFFF00) != -536870912)
    {
      *buf = 0u;
      memset(v25, 0, sizeof(v25));
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{inet_ntop(2, p_s_addr, buf, 0x2Eu)}];
      [(HMDCameraNetworkConfig *)v2 setIpAddress:v13];

      v6 = v2;
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v11 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v6;
      v12 = "%{public}@Found IPv4 address: %@";
      goto LABEL_18;
    }

    if (v2->_ipv6SockAddress.v6.sin6_addr.__u6_addr8[0] == 254 && (v2->_ipv6SockAddress.sa.sa_data[7] & 0xC0) == 0x80)
    {
      *buf = 0u;
      memset(v25, 0, sizeof(v25));
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{inet_ntop(2, p_s_addr, buf, 0x2Eu)}];
      [(HMDCameraNetworkConfig *)v2 setIpAddress:v10];

      v6 = v2;
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v11;
        v22 = 2112;
        v23 = v6;
        v12 = "%{public}@Did not non-link-local IPv4 or IPv6, defaulting to IPv4: %@";
LABEL_18:
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, v12, &v20, 0x16u);
      }
    }

    else
    {
      *buf = 0u;
      memset(v25, 0, sizeof(v25));
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{inet_ntop(30, &v2->_ipv6SockAddress.v6.sin6_addr, buf, 0x2Eu)}];
      [(HMDCameraNetworkConfig *)v2 setIpAddress:v17];

      [(HMDCameraNetworkConfig *)v2 setIpv6:1];
      v6 = v2;
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v11;
        v22 = 2112;
        v23 = v6;
        v12 = "%{public}@Found IPv6 address: %@";
        goto LABEL_18;
      }
    }

LABEL_19:

    objc_autoreleasePoolPop(v14);
    goto LABEL_20;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Failed to get Primary IP Address", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v6 = 0;
LABEL_20:

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

@end