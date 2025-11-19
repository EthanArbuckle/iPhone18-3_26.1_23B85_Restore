@interface HMDCloudManagerMetricsDispatcher
+ (id)logCategory;
- (HMDCloudManagerMetricsDispatcher)initWithLogEventDispatcher:(id)a3;
- (void)submitFailureEventWithModelType:(id)a3 failureCode:(unint64_t)a4 error:(id)a5;
@end

@implementation HMDCloudManagerMetricsDispatcher

- (void)submitFailureEventWithModelType:(id)a3 failureCode:(unint64_t)a4 error:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    if (a4 == 1)
    {
      v14 = @"NoAddTransaction";
    }

    else
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      v14 = [v15 stringWithFormat:@"failureCode(%@)", v16];
    }

    *buf = 138544130;
    v21 = v13;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Submitting failure event with model type: %@ failure code: %@ error: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v17 = [[HMDCloudManagerModelFailureEvent alloc] initWithModel:v8 failureCode:a4 error:v9];
  v18 = [(HMDCloudManagerMetricsDispatcher *)v11 logEventSubmitter];
  [v18 submitLogEvent:v17];

  v19 = *MEMORY[0x277D85DE8];
}

- (HMDCloudManagerMetricsDispatcher)initWithLogEventDispatcher:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDCloudManagerMetricsDispatcher;
  v6 = [(HMDCloudManagerMetricsDispatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logEventSubmitter, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_187223 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_187223, &__block_literal_global_187224);
  }

  v3 = logCategory__hmf_once_v2_187225;

  return v3;
}

uint64_t __47__HMDCloudManagerMetricsDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_187225;
  logCategory__hmf_once_v2_187225 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end