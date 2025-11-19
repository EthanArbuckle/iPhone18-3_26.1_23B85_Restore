@interface HMDHomeMetricsDispatcher
+ (id)logCategory;
- (HMDHomeMetricsDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4;
- (id)logIdentifier;
- (void)submitMigrationEventMetricsForModel:(id)a3 reason:(id)a4;
- (void)submitMigrationEventMetricsForModels:(id)a3 reason:(id)a4;
@end

@implementation HMDHomeMetricsDispatcher

- (id)logIdentifier
{
  v2 = [(HMDHomeMetricsDispatcher *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)submitMigrationEventMetricsForModel:(id)a3 reason:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Submitting migration event metric for model: %@ reason: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [[HMDHomeMigrationEvent alloc] initWithModel:v6 reason:v7];
  v13 = [(HMDHomeMetricsDispatcher *)v9 logEventSubmitter];
  [v13 submitLogEvent:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)submitMigrationEventMetricsForModels:(id)a3 reason:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HMDHomeMetricsDispatcher_submitMigrationEventMetricsForModels_reason___block_invoke;
  v8[3] = &unk_279721CA8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 na_each:v8];
}

- (HMDHomeMetricsDispatcher)initWithIdentifier:(id)a3 logEventSubmitter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDHomeMetricsDispatcher;
  v9 = [(HMDHomeMetricsDispatcher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_logEventSubmitter, a4);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_7393 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_7393, &__block_literal_global_7394);
  }

  v3 = logCategory__hmf_once_v2_7395;

  return v3;
}

uint64_t __39__HMDHomeMetricsDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v2_7395 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end