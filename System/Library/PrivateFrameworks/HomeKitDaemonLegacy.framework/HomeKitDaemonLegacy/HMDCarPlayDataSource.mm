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
  currentKnownNetworkProfile = [v3 currentKnownNetworkProfile];
  v5 = currentKnownNetworkProfile;
  if (currentKnownNetworkProfile)
  {
    isCarPlay = [currentKnownNetworkProfile isCarPlay];
  }

  else
  {
    isCarPlay = 0;
  }

  [v3 invalidate];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [MEMORY[0x277CCABB0] numberWithBool:isCarPlay];
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@CWFNetworkProfile isCarPlay: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];
  return isCarPlay;
}

- (BOOL)synchronouslyFetchIsCarPlayConnectedStatus
{
  initAndWaitUntilSessionUpdated = [objc_alloc(MEMORY[0x277CF89F8]) initAndWaitUntilSessionUpdated];
  currentSession = [initAndWaitUntilSessionUpdated currentSession];
  isPaired = [currentSession isPaired];

  return isPaired;
}

@end