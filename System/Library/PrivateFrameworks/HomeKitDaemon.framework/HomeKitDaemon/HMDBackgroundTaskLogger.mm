@interface HMDBackgroundTaskLogger
+ (id)logCategory;
- (HMDBackgroundTaskLogger)init;
- (HMDBackgroundTaskLogger)initWithLogEventSubmitter:(id)submitter;
- (void)submitLogEventForTask:(id)task;
- (void)submitNotFiredLogEventForTask:(id)task;
@end

@implementation HMDBackgroundTaskLogger

- (void)submitNotFiredLogEventForTask:(id)task
{
  v25 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v5 = objc_autoreleasePoolPush();
  expectedFireDate = [taskCopy expectedFireDate];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [expectedFireDate compare:v7];

  if (v8 != 1)
  {
    v9 = [HMDBackgroundTaskLogEvent alloc];
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = [(HMDBackgroundTaskLogEvent *)v9 initWithTask:taskCopy didFire:0 now:v10];

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      identifier = [taskCopy identifier];
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = identifier;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Submitting never fired log %@ with identifier %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    submitter = [(HMDBackgroundTaskLogger *)selfCopy submitter];
    [submitter submitLogEvent:v11];
  }

  objc_autoreleasePoolPop(v5);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)submitLogEventForTask:(id)task
{
  v22 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  v5 = objc_autoreleasePoolPush();
  v6 = [HMDBackgroundTaskLogEvent alloc];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [(HMDBackgroundTaskLogEvent *)v6 initWithTask:taskCopy didFire:1 now:v7];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [taskCopy identifier];
    v16 = 138543874;
    v17 = v12;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = identifier;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Submitting log %@ with identifier %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  submitter = [(HMDBackgroundTaskLogger *)selfCopy submitter];
  [submitter submitLogEvent:v8];

  objc_autoreleasePoolPop(v5);
  v15 = *MEMORY[0x277D85DE8];
}

- (HMDBackgroundTaskLogger)init
{
  v3 = +[HMDMetricsManager sharedLogEventSubmitter];
  v4 = [(HMDBackgroundTaskLogger *)self initWithLogEventSubmitter:v3];

  return v4;
}

- (HMDBackgroundTaskLogger)initWithLogEventSubmitter:(id)submitter
{
  submitterCopy = submitter;
  v9.receiver = self;
  v9.super_class = HMDBackgroundTaskLogger;
  v6 = [(HMDBackgroundTaskLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_submitter, submitter);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_260531 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_260531, &__block_literal_global_260532);
  }

  v3 = logCategory__hmf_once_v3_260533;

  return v3;
}

void __38__HMDBackgroundTaskLogger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_260533;
  logCategory__hmf_once_v3_260533 = v1;
}

@end