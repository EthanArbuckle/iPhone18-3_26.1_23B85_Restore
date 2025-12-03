@interface HMDCHIPControllerFabricDataSource
+ (id)logCategory;
- (BOOL)removeValueForKey:(id)key completion:(id)completion;
- (BOOL)setValue:(id)value forKey:(id)key completion:(id)completion;
- (HMDCHIPControllerFabricDataSource)initWithHome:(id)home;
- (HMDHome)home;
- (id)keyValueStore;
- (id)logIdentifier;
- (id)valueForKey:(id)key;
@end

@implementation HMDCHIPControllerFabricDataSource

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  home = [(HMDCHIPControllerFabricDataSource *)self home];
  v3 = MEMORY[0x277CCACA8];
  logIdentifier = [home logIdentifier];
  fabric = [home fabric];
  fabricID = [fabric fabricID];
  v7 = [v3 stringWithFormat:@"%@/%@", logIdentifier, fabricID];

  return v7;
}

- (BOOL)removeValueForKey:(id)key completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Controller Fabric Data Source not implemented yet", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)setValue:(id)value forKey:(id)key completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Controller Fabric Data Source not implemented yet", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)valueForKey:(id)key
{
  v13 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Controller Fabric Data Source not implemented yet", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)keyValueStore
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Controller Fabric Data Source not implemented yet", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (HMDCHIPControllerFabricDataSource)initWithHome:(id)home
{
  homeCopy = home;
  if (homeCopy)
  {
    v5 = homeCopy;
    v11.receiver = self;
    v11.super_class = HMDCHIPControllerFabricDataSource;
    v6 = [(HMDCHIPControllerFabricDataSource *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeWeak(&v6->_home, v5);
    }

    return v7;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return +[(HMDCHIPControllerFabricDataSource *)v9];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_280672 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_280672, &__block_literal_global_280673);
  }

  v3 = logCategory__hmf_once_v5_280674;

  return v3;
}

void __48__HMDCHIPControllerFabricDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_280674;
  logCategory__hmf_once_v5_280674 = v1;
}

@end