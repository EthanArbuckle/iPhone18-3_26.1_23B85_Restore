@interface HMDLastEventStoreController
+ (id)logCategory;
- (HMDLastEventStoreController)initWithWithEventStore:(id)store;
- (void)didRemoveAccessory:(id)accessory;
- (void)didRemoveHome:(id)home;
- (void)didRemoveMediaSystem:(id)system;
@end

@implementation HMDLastEventStoreController

- (void)didRemoveAccessory:(id)accessory
{
  v18 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = accessoryCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removing accessory events, accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  eventStore = [(HMDLastEventStoreController *)selfCopy eventStore];
  v10 = MEMORY[0x277CCACA8];
  uUIDString = [accessoryCopy UUIDString];
  v12 = [v10 stringWithFormat:@"accessory.%@", uUIDString];
  [eventStore resetWildcardTopics:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveMediaSystem:(id)system
{
  v18 = *MEMORY[0x277D85DE8];
  systemCopy = system;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = systemCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removing media system events, media system: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  eventStore = [(HMDLastEventStoreController *)selfCopy eventStore];
  v10 = MEMORY[0x277CCACA8];
  uUIDString = [systemCopy UUIDString];
  v12 = [v10 stringWithFormat:@"stereo.%@", uUIDString];
  [eventStore resetWildcardTopics:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = homeCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removing home events, home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  eventStore = [(HMDLastEventStoreController *)selfCopy eventStore];
  v10 = MEMORY[0x277CCACA8];
  uUIDString = [homeCopy UUIDString];
  v12 = [v10 stringWithFormat:@"home.%@", uUIDString];
  [eventStore resetWildcardTopics:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDLastEventStoreController)initWithWithEventStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = HMDLastEventStoreController;
  v6 = [(HMDLastEventStoreController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventStore, store);
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