@interface HMDCoreAnalyticsLogEventFactory
+ (id)logCategory;
- (id)logEventForTaggedEvent:(id)event;
@end

@implementation HMDCoreAnalyticsLogEventFactory

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_101510 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_101510, &__block_literal_global_101511);
  }

  v3 = logCategory__hmf_once_v2_101512;

  return v3;
}

uint64_t __46__HMDCoreAnalyticsLogEventFactory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_101512;
  logCategory__hmf_once_v2_101512 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (id)logEventForTaggedEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = eventCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to get log event for unknown tagged event: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

@end