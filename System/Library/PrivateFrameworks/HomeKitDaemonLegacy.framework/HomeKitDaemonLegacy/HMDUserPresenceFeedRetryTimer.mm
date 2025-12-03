@interface HMDUserPresenceFeedRetryTimer
+ (id)logCategory;
- (HMDUserPresenceFeedRetryTimer)init;
- (double)retryTimeInterval;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)cancel;
- (void)startWithDelegate:(id)delegate delegateQueue:(id)queue responseTime:(double)time;
@end

@implementation HMDUserPresenceFeedRetryTimer

- (id)logIdentifier
{
  timerID = [(HMDUserPresenceFeedRetryTimer *)self timerID];
  uUIDString = [timerID UUIDString];

  return uUIDString;
}

- (double)retryTimeInterval
{
  retryCount = [(HMDUserPresenceFeedRetryTimer *)self retryCount];
  result = 300.0;
  if (retryCount <= 0xA)
  {
    return 30.0;
  }

  return result;
}

- (void)cancel
{
  retryTimer = [(HMDUserPresenceFeedRetryTimer *)self retryTimer];
  [retryTimer cancel];

  [(HMDUserPresenceFeedRetryTimer *)self setRetryTimer:0];
}

- (void)startWithDelegate:(id)delegate delegateQueue:(id)queue responseTime:(double)time
{
  v36 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    v15 = MEMORY[0x277CCABB0];
    [(HMDUserPresenceFeedRetryTimer *)selfCopy retryTimeInterval];
    v16 = [v15 numberWithDouble:?];
    v30 = 138543874;
    v31 = v13;
    v32 = 2112;
    v33 = v14;
    v34 = 2112;
    v35 = v16;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting the timer after response time %@ and retry time interval %@", &v30, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if ([(HMDUserPresenceFeedRetryTimer *)selfCopy shouldRetryImmediately:time])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:time];
      v22 = MEMORY[0x277CCABB0];
      [(HMDUserPresenceFeedRetryTimer *)v18 retryTimeInterval];
      v23 = [v22 numberWithDouble:?];
      v30 = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Response time %@ is more than retry timer %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    retryTimer = [(HMDUserPresenceFeedRetryTimer *)v18 retryTimer];
    [delegateCopy timerDidFire:retryTimer];
  }

  else
  {
    [(HMDUserPresenceFeedRetryTimer *)selfCopy retryTimeInterval];
    time = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v25 - time];
    [(HMDUserPresenceFeedRetryTimer *)selfCopy setRetryTimer:time];

    retryTimer2 = [(HMDUserPresenceFeedRetryTimer *)selfCopy retryTimer];
    [retryTimer2 setDelegate:delegateCopy];

    retryTimer3 = [(HMDUserPresenceFeedRetryTimer *)selfCopy retryTimer];
    [retryTimer3 setDelegateQueue:queueCopy];

    retryTimer = [(HMDUserPresenceFeedRetryTimer *)selfCopy retryTimer];
    [retryTimer resume];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  timerID = [(HMDUserPresenceFeedRetryTimer *)self timerID];
  v5 = [v3 initWithName:@"TID" value:timerID];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserPresenceFeedRetryTimer retryCount](self, "retryCount")}];
  v8 = [v6 initWithName:@"RC" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDUserPresenceFeedRetryTimer)init
{
  v6.receiver = self;
  v6.super_class = HMDUserPresenceFeedRetryTimer;
  v2 = [(HMDUserPresenceFeedRetryTimer *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    timerID = v2->_timerID;
    v2->_timerID = uUID;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_7091 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_7091, &__block_literal_global_7092);
  }

  v3 = logCategory__hmf_once_v3_7093;

  return v3;
}

uint64_t __44__HMDUserPresenceFeedRetryTimer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v3_7093 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end