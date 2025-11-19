@interface HMDCHIPControllerResidentNodeDataSource
+ (id)logCategory;
- (BOOL)removeValueForKey:(id)a3 completion:(id)a4;
- (BOOL)setValue:(id)a3 forKey:(id)a4 completion:(id)a5;
- (HMDCHIPControllerResidentNodeDataSource)initWithHome:(id)a3;
- (HMDHome)home;
- (id)keyValueStore;
- (id)logIdentifier;
- (id)valueForKey:(id)a3;
@end

@implementation HMDCHIPControllerResidentNodeDataSource

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDCHIPControllerResidentNodeDataSource *)self home];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 logIdentifier];
  v5 = [v2 fabric];
  v6 = [v5 fabricID];
  v7 = [v3 stringWithFormat:@"%@/%@", v4, v6];

  return v7;
}

- (BOOL)removeValueForKey:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Controller Resident Node Data Source not implemented yet", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)setValue:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Controller Resident Node Data Source not implemented yet", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)valueForKey:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Controller Resident Node Data Source not implemented yet", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)keyValueStore
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "%{public}@Controller Resident Node Data Source not implemented yet", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (HMDCHIPControllerResidentNodeDataSource)initWithHome:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v11.receiver = self;
    v11.super_class = HMDCHIPControllerResidentNodeDataSource;
    v6 = [(HMDCHIPControllerResidentNodeDataSource *)&v11 init];
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
    return +[(HMDCHIPControllerResidentNodeDataSource *)v9];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_279923 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_279923, &__block_literal_global_279924);
  }

  v3 = logCategory__hmf_once_v5_279925;

  return v3;
}

void __54__HMDCHIPControllerResidentNodeDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_279925;
  logCategory__hmf_once_v5_279925 = v1;
}

@end