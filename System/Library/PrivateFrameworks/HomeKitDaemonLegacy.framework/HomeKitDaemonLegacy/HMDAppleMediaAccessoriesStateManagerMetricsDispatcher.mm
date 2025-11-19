@interface HMDAppleMediaAccessoriesStateManagerMetricsDispatcher
+ (id)logCategory;
- (HMDAppleMediaAccessoriesStateManagerMetricsDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4;
- (id)logIdentifier;
- (void)submitMatchingIdentifierEventWithMatchingCount:(int64_t)a3;
- (void)submitMatchingIdentifierRemovalEventWithRemovalCount:(int64_t)a3;
@end

@implementation HMDAppleMediaAccessoriesStateManagerMetricsDispatcher

- (id)logIdentifier
{
  v2 = [(HMDAppleMediaAccessoriesStateManagerMetricsDispatcher *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)submitMatchingIdentifierRemovalEventWithRemovalCount:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Submitting matching identifier removal event with count: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [[HMDAppleMediaAccessoryMatchingIdentifierRemovalEvent alloc] initWithRemovalCount:a3];
  v11 = [(HMDAppleMediaAccessoriesStateManagerMetricsDispatcher *)v6 logEventSubmitter];
  [v11 submitLogEvent:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)submitMatchingIdentifierEventWithMatchingCount:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Submitting matching identifiers event with matching count: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [[HMDAppleMediaAccessoryMatchingIdentifierEvent alloc] initWithMatchingIdentifiersCount:a3];
  v11 = [(HMDAppleMediaAccessoriesStateManagerMetricsDispatcher *)v6 logEventSubmitter];
  [v11 submitLogEvent:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessoriesStateManagerMetricsDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = v7;
  if (!v7)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMDAppleMediaAccessoriesStateManagerMetricsDispatcher *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMDAppleMediaAccessoriesStateManagerMetricsDispatcher;
  v9 = [(HMDAppleMediaAccessoriesStateManagerMetricsDispatcher *)&v15 init];
  if (v9)
  {
    v10 = [v6 copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_logEventSubmitter, a4);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_148861 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_148861, &__block_literal_global_148862);
  }

  v3 = logCategory__hmf_once_v3_148863;

  return v3;
}

uint64_t __68__HMDAppleMediaAccessoriesStateManagerMetricsDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_148863;
  logCategory__hmf_once_v3_148863 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end