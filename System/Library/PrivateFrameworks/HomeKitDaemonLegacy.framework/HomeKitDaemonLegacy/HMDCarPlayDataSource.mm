@interface HMDCarPlayDataSource
+ (id)logCategory;
- (BOOL)synchronouslyFetchIsCarPlayConnectedStatus;
- (BOOL)synchronouslyFetchIsConnectedToCarPlayNetwork;
@end

@implementation HMDCarPlayDataSource

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_7151 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_7151, &__block_literal_global_7152);
  }

  v3 = logCategory__hmf_once_v2_7153;

  return v3;
}

uint64_t __35__HMDCarPlayDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v2_7153 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)synchronouslyFetchIsConnectedToCarPlayNetwork
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D02B18]);
  [v3 activate];
  v4 = [v3 currentKnownNetworkProfile];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isCarPlay];
  }

  else
  {
    v6 = 0;
  }

  [v3 invalidate];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@CWFNetworkProfile isCarPlay: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)synchronouslyFetchIsCarPlayConnectedStatus
{
  v2 = [objc_alloc(MEMORY[0x277CF89F8]) initAndWaitUntilSessionUpdated];
  v3 = [v2 currentSession];
  v4 = [v3 isPaired];

  return v4;
}

@end