@interface HMMCoreAnalyticsTagObserver
+ (id)logCategory;
- (HMMCoreAnalyticsTagObserver)initWithTagDispatcher:(id)a3 logEventSubmitter:(id)a4 logEventFactory:(id)a5;
- (void)configure;
- (void)observeTaggedEvent:(id)a3 addProcessorBlock:(id)a4;
- (void)unconfigure;
@end

@implementation HMMCoreAnalyticsTagObserver

- (void)observeTaggedEvent:(id)a3 addProcessorBlock:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMCoreAnalyticsTagObserver *)self logEventFactory];
  v9 = [v8 logEventForTaggedEvent:v6];

  if (v6)
  {
    v10 = [(HMMCoreAnalyticsTagObserver *)self logEventSubmitter];
    [v10 submitLogEvent:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = 0;
      _os_log_impl(&dword_22B074000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get logged event from tagged event: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  v5 = [(HMMCoreAnalyticsTagObserver *)self tagDispatcher];
  v3 = [(HMMCoreAnalyticsTagObserver *)self logEventFactory];
  v4 = [v3 supportedTags];
  [v5 unregisterTagObserver:self forTags:v4];
}

- (void)configure
{
  v5 = [(HMMCoreAnalyticsTagObserver *)self tagDispatcher];
  v3 = [(HMMCoreAnalyticsTagObserver *)self logEventFactory];
  v4 = [v3 supportedTags];
  [v5 registerTagObserver:self forTags:v4];
}

- (HMMCoreAnalyticsTagObserver)initWithTagDispatcher:(id)a3 logEventSubmitter:(id)a4 logEventFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v10)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = v11;
  if (!v11)
  {
LABEL_9:
    v16 = _HMFPreconditionFailure();
    return +[(HMMCoreAnalyticsTagObserver *)v16];
  }

  v18.receiver = self;
  v18.super_class = HMMCoreAnalyticsTagObserver;
  v13 = [(HMMCoreAnalyticsTagObserver *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_tagDispatcher, a3);
    objc_storeStrong(&v14->_logEventSubmitter, a4);
    objc_storeStrong(&v14->_logEventFactory, a5);
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1, &__block_literal_global_188);
  }

  v3 = logCategory__hmf_once_v2;

  return v3;
}

uint64_t __42__HMMCoreAnalyticsTagObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v2 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end