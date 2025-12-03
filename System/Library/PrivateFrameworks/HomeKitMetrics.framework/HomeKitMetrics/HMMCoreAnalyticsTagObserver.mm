@interface HMMCoreAnalyticsTagObserver
+ (id)logCategory;
- (HMMCoreAnalyticsTagObserver)initWithTagDispatcher:(id)dispatcher logEventSubmitter:(id)submitter logEventFactory:(id)factory;
- (void)configure;
- (void)observeTaggedEvent:(id)event addProcessorBlock:(id)block;
- (void)unconfigure;
@end

@implementation HMMCoreAnalyticsTagObserver

- (void)observeTaggedEvent:(id)event addProcessorBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  blockCopy = block;
  logEventFactory = [(HMMCoreAnalyticsTagObserver *)self logEventFactory];
  v9 = [logEventFactory logEventForTaggedEvent:eventCopy];

  if (eventCopy)
  {
    logEventSubmitter = [(HMMCoreAnalyticsTagObserver *)self logEventSubmitter];
    [logEventSubmitter submitLogEvent:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  tagDispatcher = [(HMMCoreAnalyticsTagObserver *)self tagDispatcher];
  logEventFactory = [(HMMCoreAnalyticsTagObserver *)self logEventFactory];
  supportedTags = [logEventFactory supportedTags];
  [tagDispatcher unregisterTagObserver:self forTags:supportedTags];
}

- (void)configure
{
  tagDispatcher = [(HMMCoreAnalyticsTagObserver *)self tagDispatcher];
  logEventFactory = [(HMMCoreAnalyticsTagObserver *)self logEventFactory];
  supportedTags = [logEventFactory supportedTags];
  [tagDispatcher registerTagObserver:self forTags:supportedTags];
}

- (HMMCoreAnalyticsTagObserver)initWithTagDispatcher:(id)dispatcher logEventSubmitter:(id)submitter logEventFactory:(id)factory
{
  dispatcherCopy = dispatcher;
  submitterCopy = submitter;
  factoryCopy = factory;
  if (!dispatcherCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!submitterCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = factoryCopy;
  if (!factoryCopy)
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
    objc_storeStrong(&v13->_tagDispatcher, dispatcher);
    objc_storeStrong(&v14->_logEventSubmitter, submitter);
    objc_storeStrong(&v14->_logEventFactory, factory);
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