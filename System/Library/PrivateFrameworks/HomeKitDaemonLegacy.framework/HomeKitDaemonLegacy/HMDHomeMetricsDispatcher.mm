@interface HMDHomeMetricsDispatcher
+ (id)logCategory;
- (HMDHomeMetricsDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter;
- (id)logIdentifier;
- (void)submitMigrationEventMetricsForModel:(id)model reason:(id)reason;
- (void)submitMigrationEventMetricsForModels:(id)models reason:(id)reason;
@end

@implementation HMDHomeMetricsDispatcher

- (id)logIdentifier
{
  identifier = [(HMDHomeMetricsDispatcher *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)submitMigrationEventMetricsForModel:(id)model reason:(id)reason
{
  v21 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  reasonCopy = reason;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = modelCopy;
    v19 = 2112;
    v20 = reasonCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Submitting migration event metric for model: %@ reason: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [[HMDHomeMigrationEvent alloc] initWithModel:modelCopy reason:reasonCopy];
  logEventSubmitter = [(HMDHomeMetricsDispatcher *)selfCopy logEventSubmitter];
  [logEventSubmitter submitLogEvent:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)submitMigrationEventMetricsForModels:(id)models reason:(id)reason
{
  reasonCopy = reason;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HMDHomeMetricsDispatcher_submitMigrationEventMetricsForModels_reason___block_invoke;
  v8[3] = &unk_279721CA8;
  v8[4] = self;
  v9 = reasonCopy;
  v7 = reasonCopy;
  [models na_each:v8];
}

- (HMDHomeMetricsDispatcher)initWithIdentifier:(id)identifier logEventSubmitter:(id)submitter
{
  identifierCopy = identifier;
  submitterCopy = submitter;
  v12.receiver = self;
  v12.super_class = HMDHomeMetricsDispatcher;
  v9 = [(HMDHomeMetricsDispatcher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_logEventSubmitter, submitter);
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