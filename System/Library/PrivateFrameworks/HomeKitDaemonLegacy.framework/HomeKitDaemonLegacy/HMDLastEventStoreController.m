@interface HMDLastEventStoreController
+ (id)logCategory;
- (HMDLastEventStoreController)initWithWithEventStore:(id)a3;
- (void)didRemoveAccessory:(id)a3;
- (void)didRemoveHome:(id)a3;
- (void)didRemoveMediaSystem:(id)a3;
@end

@implementation HMDLastEventStoreController

- (void)didRemoveAccessory:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removing accessory events, accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDLastEventStoreController *)v6 eventStore];
  v10 = MEMORY[0x277CCACA8];
  v11 = [v4 UUIDString];
  v12 = [v10 stringWithFormat:@"accessory.%@", v11];
  [v9 resetWildcardTopics:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveMediaSystem:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removing media system events, media system: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDLastEventStoreController *)v6 eventStore];
  v10 = MEMORY[0x277CCACA8];
  v11 = [v4 UUIDString];
  v12 = [v10 stringWithFormat:@"stereo.%@", v11];
  [v9 resetWildcardTopics:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveHome:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removing home events, home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDLastEventStoreController *)v6 eventStore];
  v10 = MEMORY[0x277CCACA8];
  v11 = [v4 UUIDString];
  v12 = [v10 stringWithFormat:@"home.%@", v11];
  [v9 resetWildcardTopics:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDLastEventStoreController)initWithWithEventStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDLastEventStoreController;
  v6 = [(HMDLastEventStoreController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventStore, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_107268 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_107268, &__block_literal_global_107269);
  }

  v3 = logCategory__hmf_once_v4_107270;

  return v3;
}

uint64_t __42__HMDLastEventStoreController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_107270;
  logCategory__hmf_once_v4_107270 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end