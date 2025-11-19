@interface HAPAccessoryServerIPCacheData
+ (id)logCategory;
- (HAPAccessoryServerIPCacheData)initWithCachedIp:(id)a3 bonjourRecord:(id)a4;
- (id)debugDescription;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
@end

@implementation HAPAccessoryServerIPCacheData

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPAccessoryServerIPCacheData *)self socketInfo];
  v5 = [(HAPAccessoryServerIPCacheData *)self bonjourDeviceInfo];
  v6 = [v3 stringWithFormat:@"HAPAccessoryServerIPCacheData: socketInfo %@, bonjour %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HAPAccessoryServerIPCacheData *)self socketInfo];
  v4 = [(HAPAccessoryServerIPCacheData *)self bonjourDeviceInfo];
  v5 = v4;
  if (v3 && v4)
  {
    v13[0] = @"socketInfo";
    v13[1] = @"bonjourDeviceInfo";
    v14[0] = v3;
    v14[1] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Ignoring cache entry with null fields", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)initFromDictionary:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"socketInfo"];
  v6 = [v4 objectForKeyedSubscript:@"bonjourDeviceInfo"];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [(HAPAccessoryServerIPCacheData *)self initWithCachedIp:v5 bonjourRecord:v6];
    v9 = v8;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v8 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Invalid input dictionary %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (HAPAccessoryServerIPCacheData)initWithCachedIp:(id)a3 bonjourRecord:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HAPAccessoryServerIPCacheData;
  v9 = [(HAPAccessoryServerIPCacheData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_socketInfo, a3);
    objc_storeStrong(&v10->_bonjourDeviceInfo, a4);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2, &__block_literal_global_14921);
  }

  v3 = logCategory__hmf_once_v3;

  return v3;
}

uint64_t __44__HAPAccessoryServerIPCacheData_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v3 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end