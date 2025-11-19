@interface HMDUserPresenceFeedRetryTimer
+ (id)logCategory;
- (HMDUserPresenceFeedRetryTimer)init;
- (double)retryTimeInterval;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)cancel;
- (void)startWithDelegate:(id)a3 delegateQueue:(id)a4 responseTime:(double)a5;
@end

@implementation HMDUserPresenceFeedRetryTimer

- (id)logIdentifier
{
  v2 = [(HMDUserPresenceFeedRetryTimer *)self timerID];
  v3 = [v2 UUIDString];

  return v3;
}

- (double)retryTimeInterval
{
  v2 = [(HMDUserPresenceFeedRetryTimer *)self retryCount];
  result = 300.0;
  if (v2 <= 0xA)
  {
    return 30.0;
  }

  return result;
}

- (void)cancel
{
  v3 = [(HMDUserPresenceFeedRetryTimer *)self retryTimer];
  [v3 cancel];

  [(HMDUserPresenceFeedRetryTimer *)self setRetryTimer:0];
}

- (void)startWithDelegate:(id)a3 delegateQueue:(id)a4 responseTime:(double)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    v15 = MEMORY[0x277CCABB0];
    [(HMDUserPresenceFeedRetryTimer *)v11 retryTimeInterval];
    v16 = [v15 numberWithDouble:?];
    v30 = 138543874;
    v31 = v13;
    v32 = 2112;
    v33 = v14;
    v34 = 2112;
    v35 = v16;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting the timer after response time %@ and retry time interval %@", &v30, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if ([(HMDUserPresenceFeedRetryTimer *)v11 shouldRetryImmediately:a5])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v11;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
      v22 = MEMORY[0x277CCABB0];
      [(HMDUserPresenceFeedRetryTimer *)v18 retryTimeInterval];
      v23 = [v22 numberWithDouble:?];
      v30 = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Response time %@ is more than retry timer %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v24 = [(HMDUserPresenceFeedRetryTimer *)v18 retryTimer];
    [v8 timerDidFire:v24];
  }

  else
  {
    [(HMDUserPresenceFeedRetryTimer *)v11 retryTimeInterval];
    v26 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v25 - a5];
    [(HMDUserPresenceFeedRetryTimer *)v11 setRetryTimer:v26];

    v27 = [(HMDUserPresenceFeedRetryTimer *)v11 retryTimer];
    [v27 setDelegate:v8];

    v28 = [(HMDUserPresenceFeedRetryTimer *)v11 retryTimer];
    [v28 setDelegateQueue:v9];

    v24 = [(HMDUserPresenceFeedRetryTimer *)v11 retryTimer];
    [v24 resume];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDUserPresenceFeedRetryTimer *)self timerID];
  v5 = [v3 initWithName:@"TID" value:v4];
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
    v3 = [MEMORY[0x277CCAD78] UUID];
    timerID = v2->_timerID;
    v2->_timerID = v3;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_9181 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_9181, &__block_literal_global_9182);
  }

  v3 = logCategory__hmf_once_v3_9183;

  return v3;
}

void __44__HMDUserPresenceFeedRetryTimer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_9183;
  logCategory__hmf_once_v3_9183 = v1;
}

@end