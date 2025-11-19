@interface HMDBackgroundTaskLogger
+ (id)logCategory;
- (HMDBackgroundTaskLogger)init;
- (HMDBackgroundTaskLogger)initWithLogEventSubmitter:(id)a3;
- (void)submitLogEventForTask:(id)a3;
- (void)submitNotFiredLogEventForTask:(id)a3;
@end

@implementation HMDBackgroundTaskLogger

- (void)submitNotFiredLogEventForTask:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 expectedFireDate];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [v6 compare:v7];

  if (v8 != 1)
  {
    v9 = [HMDBackgroundTaskLogEvent alloc];
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = [(HMDBackgroundTaskLogEvent *)v9 initWithTask:v4 didFire:0 now:v10];

    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v4 identifier];
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Submitting never fired log %@ with identifier %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [(HMDBackgroundTaskLogger *)v13 submitter];
    [v17 submitLogEvent:v11];
  }

  objc_autoreleasePoolPop(v5);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)submitLogEventForTask:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [HMDBackgroundTaskLogEvent alloc];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [(HMDBackgroundTaskLogEvent *)v6 initWithTask:v4 didFire:1 now:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v4 identifier];
    v16 = 138543874;
    v17 = v12;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Submitting log %@ with identifier %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HMDBackgroundTaskLogger *)v10 submitter];
  [v14 submitLogEvent:v8];

  objc_autoreleasePoolPop(v5);
  v15 = *MEMORY[0x277D85DE8];
}

- (HMDBackgroundTaskLogger)init
{
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  v4 = [(HMDBackgroundTaskLogger *)self initWithLogEventSubmitter:v3];

  return v4;
}

- (HMDBackgroundTaskLogger)initWithLogEventSubmitter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDBackgroundTaskLogger;
  v6 = [(HMDBackgroundTaskLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_submitter, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_157233 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_157233, &__block_literal_global_157234);
  }

  v3 = logCategory__hmf_once_v3_157235;

  return v3;
}

uint64_t __38__HMDBackgroundTaskLogger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_157235;
  logCategory__hmf_once_v3_157235 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end