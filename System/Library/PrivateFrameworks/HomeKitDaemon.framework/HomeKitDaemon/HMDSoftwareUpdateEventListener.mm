@interface HMDSoftwareUpdateEventListener
+ (id)logCategory;
- (BOOL)isSoftwareUpdateAvailable;
- (BOOL)isSoftwareUpdateDownloadedAndReadyForInstallation;
- (HMDSoftwareUpdateEventListener)initWithContext:(id)a3;
- (HMSoftwareUpdateDescriptor)softwareUpdateDescriptorForLastEvent;
- (id)logIdentifier;
- (void)didReceiveCachedEvent:(id)a3 topic:(id)a4 source:(id)a5;
- (void)didReceiveEvent:(id)a3 topic:(id)a4;
- (void)registerForEvents;
@end

@implementation HMDSoftwareUpdateEventListener

- (id)logIdentifier
{
  v2 = [(HMDSoftwareUpdateEventListener *)self context];
  v3 = [v2 logIdentifier];

  return v3;
}

- (void)didReceiveCachedEvent:(id)a3 topic:(id)a4 source:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v20 = 138543874;
    v21 = v14;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Did receive cached event: %@, for topic: %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMDSoftwareUpdateEventListener *)v12 context];
  [v15 updateAppBadgeAndBulletinNotification];

  if ([(HMDSoftwareUpdateEventListener *)v12 isSoftwareUpdateAvailable])
  {
    v16 = [(HMDSoftwareUpdateEventListener *)v12 context];
    v17 = [(HMDSoftwareUpdateEventListener *)v12 context];
    v18 = [v17 softwareUpdateDescriptorForLastEvent];
    [v16 handleSoftwareUpdateDidBecomeAvailableWithDescriptor:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveEvent:(id)a3 topic:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543874;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Did receive event: %@, for topic: %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDSoftwareUpdateEventListener *)v9 context];
  [v12 updateAppBadgeAndBulletinNotification];

  if ([(HMDSoftwareUpdateEventListener *)v9 isSoftwareUpdateAvailable])
  {
    v13 = [(HMDSoftwareUpdateEventListener *)v9 context];
    v14 = [(HMDSoftwareUpdateEventListener *)v9 context];
    v15 = [v14 softwareUpdateDescriptorForLastEvent];
    [v13 handleSoftwareUpdateDidBecomeAvailableWithDescriptor:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HMSoftwareUpdateDescriptor)softwareUpdateDescriptorForLastEvent
{
  v2 = [(HMDSoftwareUpdateEventListener *)self context];
  v3 = [v2 softwareUpdateDescriptorForLastEvent];

  return v3;
}

- (BOOL)isSoftwareUpdateAvailable
{
  v2 = [(HMDSoftwareUpdateEventListener *)self context];
  v3 = [v2 softwareUpdateStatusForLastEvent];

  return v3 > 2 && v3 != 17;
}

- (BOOL)isSoftwareUpdateDownloadedAndReadyForInstallation
{
  v2 = [(HMDSoftwareUpdateEventListener *)self context];
  v3 = [v2 softwareUpdateStatusForLastEvent];

  return v3 == 8 || (v3 & 0xFFFFFFFFFFFFFFFELL) == 6;
}

- (void)registerForEvents
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Registering for events", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDSoftwareUpdateEventListener *)v4 context];
  v8 = [v7 topicForSoftwareUpdateDescriptor];

  if (v8)
  {
    v9 = [(HMDSoftwareUpdateEventListener *)v4 context];
    v17 = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__HMDSoftwareUpdateEventListener_registerForEvents__block_invoke;
    v16[3] = &unk_278689230;
    v16[4] = v4;
    [v9 registerConsumer:v4 topicFilters:v10 completion:v16];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v4;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Not registering for events because failed to get software update topic", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __51__HMDSoftwareUpdateEventListener_registerForEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"error: %@, ", v6];
  }

  else
  {
    v7 = &stru_283CF9D50;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v15 = v11;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Subscribed with %@cachedEvents: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [*(a1 + 32) context];
  [v12 updateAppBadgeAndBulletinNotification];

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDSoftwareUpdateEventListener)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDSoftwareUpdateEventListener;
  v6 = [(HMDSoftwareUpdateEventListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_68152 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_68152, &__block_literal_global_68153);
  }

  v3 = logCategory__hmf_once_v6_68154;

  return v3;
}

void __45__HMDSoftwareUpdateEventListener_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_68154;
  logCategory__hmf_once_v6_68154 = v1;
}

@end