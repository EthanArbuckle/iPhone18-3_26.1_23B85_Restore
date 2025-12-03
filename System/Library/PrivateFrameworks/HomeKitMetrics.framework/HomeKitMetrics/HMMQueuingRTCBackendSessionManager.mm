@interface HMMQueuingRTCBackendSessionManager
+ (id)logCategory;
+ (id)sharedSessionManager;
- (BOOL)_isTimeValid;
- (HMMQueuingRTCBackendSessionManager)initWithRTCFactory:(id)factory timeSourceBlock:(id)block;
- (void)addBarrierBlock:(id)block;
- (void)checkForStaleSessions;
- (void)sendMetaEventWithName:(id)name forServiceName:(id)serviceName;
@end

@implementation HMMQueuingRTCBackendSessionManager

- (void)addBarrierBlock:(id)block
{
  blockCopy = block;
  queue = [(HMMQueuingRTCBackendSessionManager *)self queue];
  [queue addBarrierBlock:blockCopy];
}

- (void)checkForStaleSessions
{
  v29 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = (*(self->_timeSourceBlock + 2))();
  if (v3 >= self->_nextStaleCheckTime)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v7;
      _os_log_impl(&dword_22B074000, v6, OS_LOG_TYPE_INFO, "%{public}@Checking for stale backend sessions", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = 0;
    *&v9 = 138543618;
    v22 = v9;
    while (v8 < [(NSPointerArray *)selfCopy->_activeSessions count])
    {
      v10 = [(NSPointerArray *)selfCopy->_activeSessions pointerAtIndex:v8];
      v11 = v10;
      if (v10 && ([v10 lastEventTime], v3 - v12 > 3600.0))
      {
        v13 = objc_autoreleasePoolPush();
        v14 = selfCopy;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = HMFGetLogIdentifier();
          serviceName = [v11 serviceName];
          *buf = v22;
          v26 = v16;
          v27 = 2112;
          v28 = serviceName;
          _os_log_impl(&dword_22B074000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Found stale session for service %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
        v23[0] = @"HMFSessionIdentifier";
        sessionUUID = [v11 sessionUUID];
        v24[0] = sessionUUID;
        v24[1] = @"HMFLogging.StaleSession";
        v23[1] = @"HMFEventName";
        v23[2] = @"HMFTimestamp";
        v19 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
        v24[2] = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
        [v11 sendMessage:v20];

        [v11 close];
        [(NSPointerArray *)selfCopy->_activeSessions removePointerAtIndex:v8];
      }

      else
      {
        ++v8;
      }
    }

    self->_nextStaleCheckTime = v3 + 3600.0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)sendMetaEventWithName:(id)name forServiceName:(id)serviceName
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16[0] = name;
  v6 = MEMORY[0x277CCABB0];
  serviceNameCopy = serviceName;
  nameCopy = name;
  v9 = [(HMMQueuingRTCBackendSessionManager *)self timeSourceBlock:@"HMFMetaEventName"];
  v9[2]();
  v10 = [v6 numberWithDouble:?];
  v15[2] = @"HMFCorrespondingServiceName";
  v16[1] = v10;
  v16[2] = serviceNameCopy;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v17[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  uUID = [MEMORY[0x277CCAD78] UUID];

  [(HMMQueuingRTCBackendSessionManager *)self submitMessages:v12 serviceName:@"HMFMeta" sessionUUID:uUID isRealtime:0];
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isTimeValid
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->__isTimeValid)
  {
    return 1;
  }

  if (_isTimeValid_onceToken != -1)
  {
    dispatch_once(&_isTimeValid_onceToken, &__block_literal_global_115);
  }

  result = (*(self->_timeSourceBlock + 2))() >= *&_isTimeValid_minAllowedTime;
  self->__isTimeValid = result;
  return result;
}

void __50__HMMQueuingRTCBackendSessionManager__isTimeValid__block_invoke()
{
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setDay:1];
  [v5 setMonth:1];
  [v5 setYear:2022];
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v2 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v1 setTimeZone:v2];

  v3 = [v1 dateFromComponents:v5];
  [v3 timeIntervalSince1970];
  _isTimeValid_minAllowedTime = v4;
}

- (HMMQueuingRTCBackendSessionManager)initWithRTCFactory:(id)factory timeSourceBlock:(id)block
{
  factoryCopy = factory;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = HMMQueuingRTCBackendSessionManager;
  v9 = [(HMMQueuingRTCBackendSessionManager *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rtcFactory, factory);
    v11 = _Block_copy(blockCopy);
    timeSourceBlock = v10->_timeSourceBlock;
    v10->_timeSourceBlock = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v10->_queue;
    v10->_queue = v13;

    [(NSOperationQueue *)v10->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v10->_queue setQualityOfService:9];
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    activeSessions = v10->_activeSessions;
    v10->_activeSessions = weakObjectsPointerArray;

    v10->_nextStaleCheckTime = blockCopy[2](blockCopy) + 1800.0;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19, &__block_literal_global_129);
  }

  v3 = logCategory__hmf_once_v20;

  return v3;
}

uint64_t __49__HMMQueuingRTCBackendSessionManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1C0];
  logCategory__hmf_once_v20 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedSessionManager
{
  if (sharedSessionManager__hmf_once_t11 != -1)
  {
    dispatch_once(&sharedSessionManager__hmf_once_t11, &__block_literal_global_107);
  }

  v3 = sharedSessionManager__hmf_once_v12;

  return v3;
}

void __58__HMMQueuingRTCBackendSessionManager_sharedSessionManager__block_invoke()
{
  v0 = [HMMQueuingRTCBackendSessionManager alloc];
  v3 = objc_alloc_init(HMMRTCReportingFactory);
  v1 = [(HMMQueuingRTCBackendSessionManager *)v0 initWithRTCFactory:v3 timeSourceBlock:&__block_literal_global_112];
  v2 = sharedSessionManager__hmf_once_v12;
  sharedSessionManager__hmf_once_v12 = v1;
}

double __58__HMMQueuingRTCBackendSessionManager_sharedSessionManager__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEAA8] date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  return v2;
}

@end