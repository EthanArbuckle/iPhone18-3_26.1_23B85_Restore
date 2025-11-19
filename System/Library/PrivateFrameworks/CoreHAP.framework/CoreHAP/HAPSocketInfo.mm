@interface HAPSocketInfo
+ (id)ipAddressAddScopeWithAddress:(id)a3;
+ (id)ipAddressRemoveScopeWithAddress:(id)a3;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HAPSocketInfo)initWithDictionary:(id)a3;
- (HAPSocketInfo)initWithIPAddressString:(id)a3 ipAddressType:(int64_t)a4 port:(id)a5;
- (HAPSocketInfo)initWithIPAddressString:(id)a3 port:(id)a4;
- (HAPSocketInfo)initWithSocket:(const sockaddr_storage *)a3;
- (NSDictionary)dictionaryRepresentation;
- (NSString)ipAddressStringWithScope;
- (NSString)shortDescription;
@end

@implementation HAPSocketInfo

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  ipAddressString = self->_ipAddressString;
  return [v3 stringWithFormat:@"%@ %@/%@", v4, ipAddressString, self->_port];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((ipAddressString = self->_ipAddressString, !(ipAddressString | v4[1])) || -[NSString isEqualToString:](ipAddressString, "isEqualToString:")))
  {
    port = self->_port;
    if (port | v4[2])
    {
      v7 = [(NSNumber *)port isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [(HAPSocketInfo *)self ipAddressString];
  v4 = [HAPSocketInfo ipAddressRemoveScopeWithAddress:v3];

  v9[0] = @"HAPSocketInfoIPAddressString";
  v9[1] = @"HAPSocketInfoPort";
  v10[0] = v4;
  v5 = [(HAPSocketInfo *)self port];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)ipAddressStringWithScope
{
  v3 = [(HAPSocketInfo *)self ipAddressType];
  if (v3 <= 4)
  {
    v3 = [(HAPSocketInfo *)self ipAddressString];
  }

  return v3;
}

- (HAPSocketInfo)initWithIPAddressString:(id)a3 ipAddressType:(int64_t)a4 port:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HAPSocketInfo;
  v11 = [(HAPSocketInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_ipAddressString, a3);
    v12->_ipAddressType = a4;
    objc_storeStrong(&v12->_port, a5);
  }

  return v12;
}

- (HAPSocketInfo)initWithIPAddressString:(id)a3 port:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v19 = 0;
    if (inet_pton(2, [v6 UTF8String], &v19) == 1)
    {
      v10 = [(HAPSocketInfo *)self initWithIPAddressString:v6 ipAddressType:1 port:v8];
LABEL_18:
      self = v10;
      v9 = self;
      goto LABEL_19;
    }

    v18[0] = 0;
    v18[1] = 0;
    if (inet_pton(30, [v6 UTF8String], v18) == 1)
    {
      if (LOBYTE(v18[0]) == 255)
      {
        if ((BYTE1(v18[0]) & 0xF) == 0xE)
        {
          v11 = 3;
          goto LABEL_17;
        }
      }

      else if (LOBYTE(v18[0]) == 254)
      {
        if ((BYTE1(v18[0]) & 0xC0) == 0x80)
        {
          v11 = 2;
LABEL_17:
          v10 = [(HAPSocketInfo *)self initWithIPAddressString:v6 ipAddressType:v11 port:v8];
          goto LABEL_18;
        }
      }

      else if ((v18[0] & 0xFE) == 0xFC)
      {
        v11 = 4;
        goto LABEL_17;
      }
    }

    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not determine IP address type from string: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
    goto LABEL_17;
  }

LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HAPSocketInfo)initWithDictionary:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmf_stringForKey:@"HAPSocketInfoIPAddressString"];
  v6 = [v4 hmf_numberForKey:@"HAPSocketInfoPort"];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [HAPSocketInfo ipAddressRemoveScopeWithAddress:v5];
    v9 = [HAPSocketInfo ipAddressAddScopeWithAddress:v8];
    v10 = [(HAPSocketInfo *)self initWithIPAddressString:v9 port:v7];

    v11 = v10;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v10 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize socket info from dictionary: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (HAPSocketInfo)initWithSocket:(const sockaddr_storage *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  ss_family = a3->ss_family;
  if (ss_family == 2 || ss_family == 30)
  {
    v6 = SockAddrToString();
    if (!v6)
    {
      Port = SockAddrGetPort();
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:Port];
      v10 = [(HAPSocketInfo *)self initWithIPAddressString:v16 port:v17];

      v14 = v10;
      goto LABEL_13;
    }

    v7 = v6;
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v8;
      v22 = 1024;
      v23 = v7;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize HAPSocketInfo: failed to obtain socket address string: %d", &v20, 0x12u);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v13;
      v26 = 1024;
      v27 = ss_family;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to initialize HAPSocketInfo: invalid socket address family: %d", buf, 0x12u);
    }
  }

  objc_autoreleasePoolPop(v9);
  v14 = 0;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)ipAddressAddScopeWithAddress:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v9[0] = 0;
    v9[1] = 0;
    if (inet_pton(30, [v3 UTF8String], v9) == 1 && LOBYTE(v9[0]) == 254 && (BYTE1(v9[0]) & 0xC0) == 0x80)
    {
      v5 = +[HAPInterfaceConfig activeWifiOrEthernetInterfaceName];
      v6 = v5;
      if (v5)
      {
        v7 = [v4 stringByAppendingFormat:@"%%%@", v5];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = v4;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)ipAddressRemoveScopeWithAddress:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9[2] = 0;
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v9[0] = 0;
    v9[1] = 0;
    if (inet_pton(30, [v3 UTF8String], v9) == 1 && LOBYTE(v9[0]) == 254 && (BYTE1(v9[0]) & 0xC0) == 0x80 && (objc_msgSend(v4, "UTF8String"), !StringToSockAddr()))
    {
      SockAddrToString();
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
    }

    else
    {
      v5 = v4;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end