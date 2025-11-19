@interface HMMSiriSELFLogEventObserver
+ (id)logCategory;
- (HMMSiriSELFLogEventObserver)initWithSiriAnalyticsStream:(id)a3 logEventDispatcher:(id)a4;
- (void)observeEvent:(id)a3;
@end

@implementation HMMSiriSELFLogEventObserver

- (void)observeEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = objc_opt_class();
    _os_log_impl(&dword_22B074000, v7, OS_LOG_TYPE_DEBUG, "%{public}@[SiriAnalytics] Received event from dispatcher: %{public}@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 enabledForSiriSELFLogging])
  {
    v9 = [(HMMSiriSELFLogEventObserver *)v6 siriAnalyticsStream];
    v10 = [v4 siriInstrumentationMessage];
    [v9 emitMessage:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HMMSiriSELFLogEventObserver)initWithSiriAnalyticsStream:(id)a3 logEventDispatcher:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMMSiriSELFLogEventObserver;
  v9 = [(HMMSiriSELFLogEventObserver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_siriAnalyticsStream, a3);
    [v8 addObserver:v10 forProtocol:&unk_283EFAEE8];
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_1414 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_1414, &__block_literal_global_1415);
  }

  v3 = logCategory__hmf_once_v2_1416;

  return v3;
}

uint64_t __42__HMMSiriSELFLogEventObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v2_1416 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end