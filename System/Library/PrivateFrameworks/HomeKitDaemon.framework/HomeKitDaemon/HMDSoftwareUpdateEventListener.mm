@interface HMDSoftwareUpdateEventListener
+ (id)logCategory;
- (BOOL)isSoftwareUpdateAvailable;
- (BOOL)isSoftwareUpdateDownloadedAndReadyForInstallation;
- (HMDSoftwareUpdateEventListener)initWithContext:(id)context;
- (HMSoftwareUpdateDescriptor)softwareUpdateDescriptorForLastEvent;
- (id)logIdentifier;
- (void)didReceiveCachedEvent:(id)event topic:(id)topic source:(id)source;
- (void)didReceiveEvent:(id)event topic:(id)topic;
- (void)registerForEvents;
@end

@implementation HMDSoftwareUpdateEventListener

- (id)logIdentifier
{
  context = [(HMDSoftwareUpdateEventListener *)self context];
  logIdentifier = [context logIdentifier];

  return logIdentifier;
}

- (void)didReceiveCachedEvent:(id)event topic:(id)topic source:(id)source
{
  v26 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  topicCopy = topic;
  sourceCopy = source;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v20 = 138543874;
    v21 = v14;
    v22 = 2112;
    v23 = eventCopy;
    v24 = 2112;
    v25 = topicCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Did receive cached event: %@, for topic: %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  context = [(HMDSoftwareUpdateEventListener *)selfCopy context];
  [context updateAppBadgeAndBulletinNotification];

  if ([(HMDSoftwareUpdateEventListener *)selfCopy isSoftwareUpdateAvailable])
  {
    context2 = [(HMDSoftwareUpdateEventListener *)selfCopy context];
    context3 = [(HMDSoftwareUpdateEventListener *)selfCopy context];
    softwareUpdateDescriptorForLastEvent = [context3 softwareUpdateDescriptorForLastEvent];
    [context2 handleSoftwareUpdateDidBecomeAvailableWithDescriptor:softwareUpdateDescriptorForLastEvent];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveEvent:(id)event topic:(id)topic
{
  v23 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  topicCopy = topic;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543874;
    v18 = v11;
    v19 = 2112;
    v20 = eventCopy;
    v21 = 2112;
    v22 = topicCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Did receive event: %@, for topic: %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  context = [(HMDSoftwareUpdateEventListener *)selfCopy context];
  [context updateAppBadgeAndBulletinNotification];

  if ([(HMDSoftwareUpdateEventListener *)selfCopy isSoftwareUpdateAvailable])
  {
    context2 = [(HMDSoftwareUpdateEventListener *)selfCopy context];
    context3 = [(HMDSoftwareUpdateEventListener *)selfCopy context];
    softwareUpdateDescriptorForLastEvent = [context3 softwareUpdateDescriptorForLastEvent];
    [context2 handleSoftwareUpdateDidBecomeAvailableWithDescriptor:softwareUpdateDescriptorForLastEvent];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HMSoftwareUpdateDescriptor)softwareUpdateDescriptorForLastEvent
{
  context = [(HMDSoftwareUpdateEventListener *)self context];
  softwareUpdateDescriptorForLastEvent = [context softwareUpdateDescriptorForLastEvent];

  return softwareUpdateDescriptorForLastEvent;
}

- (BOOL)isSoftwareUpdateAvailable
{
  context = [(HMDSoftwareUpdateEventListener *)self context];
  softwareUpdateStatusForLastEvent = [context softwareUpdateStatusForLastEvent];

  return softwareUpdateStatusForLastEvent > 2 && softwareUpdateStatusForLastEvent != 17;
}

- (BOOL)isSoftwareUpdateDownloadedAndReadyForInstallation
{
  context = [(HMDSoftwareUpdateEventListener *)self context];
  softwareUpdateStatusForLastEvent = [context softwareUpdateStatusForLastEvent];

  return softwareUpdateStatusForLastEvent == 8 || (softwareUpdateStatusForLastEvent & 0xFFFFFFFFFFFFFFFELL) == 6;
}

- (void)registerForEvents
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Registering for events", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  context = [(HMDSoftwareUpdateEventListener *)selfCopy context];
  topicForSoftwareUpdateDescriptor = [context topicForSoftwareUpdateDescriptor];

  if (topicForSoftwareUpdateDescriptor)
  {
    context2 = [(HMDSoftwareUpdateEventListener *)selfCopy context];
    v17 = topicForSoftwareUpdateDescriptor;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__HMDSoftwareUpdateEventListener_registerForEvents__block_invoke;
    v16[3] = &unk_278689230;
    v16[4] = selfCopy;
    [context2 registerConsumer:selfCopy topicFilters:v10 completion:v16];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
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

- (HMDSoftwareUpdateEventListener)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = HMDSoftwareUpdateEventListener;
  v6 = [(HMDSoftwareUpdateEventListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
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