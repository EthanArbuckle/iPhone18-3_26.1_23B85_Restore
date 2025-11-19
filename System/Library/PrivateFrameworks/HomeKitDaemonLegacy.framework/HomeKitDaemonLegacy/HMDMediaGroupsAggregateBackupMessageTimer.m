@interface HMDMediaGroupsAggregateBackupMessageTimer
+ (id)logCategory;
- (HMDMediaGroupsAggregateBackupMessageTimer)initWithParticipantAccessoryUUID:(id)a3 timerProvider:(id)a4;
- (HMDMediaGroupsAggregateBackupMessageTimerDelegate)delegate;
- (HMFTimerProvider)timerProvider;
- (double)nextTimeInterval;
- (id)logIdentifier;
- (void)markAttemptWithMessageIdentifier:(id)a3;
- (void)startRetryTimer;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDMediaGroupsAggregateBackupMessageTimer

- (HMFTimerProvider)timerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_timerProvider);

  return WeakRetained;
}

- (HMDMediaGroupsAggregateBackupMessageTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDMediaGroupsAggregateBackupMessageTimer *)self participantAccessoryUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)timerDidFire:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregateBackupMessageTimer *)self timer];

  if (v5 == v4)
  {
    v6 = [(HMDMediaGroupsAggregateBackupMessageTimer *)self delegate];
    v7 = v6;
    if (v6)
    {
      [v6 didFireTimerForMediaGroupsAggregateBackupMessageTimer:self];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of triggered timer due to no delegate", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (double)nextTimeInterval
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(HMDMediaGroupsAggregateBackupMessageTimer *)self attemptCount];
  v6[0] = vdupq_n_s64(0x404E000000000000uLL);
  v6[1] = xmmword_253D4B580;
  v7 = 0x409C200000000000;
  if (v2 > 5)
  {
    result = 86400.0;
  }

  else
  {
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    result = *(v6 + v3 - 1);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startRetryTimer
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDMediaGroupsAggregateBackupMessageTimer attemptCount](v4, "attemptCount")}];
    v21 = 138543618;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting timer with attempts: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if ([(HMDMediaGroupsAggregateBackupMessageTimer *)v4 attemptCount]< 0x24)
  {
    v12 = [(HMDMediaGroupsAggregateBackupMessageTimer *)v4 timerProvider];
    if (v12)
    {
      [(HMDMediaGroupsAggregateBackupMessageTimer *)v4 nextTimeInterval];
      v13 = [v12 timerWithTimeInterval:2 options:?];
      [(HMDMediaGroupsAggregateBackupMessageTimer *)v4 setTimer:v13];

      v14 = [(HMDMediaGroupsAggregateBackupMessageTimer *)v4 timer];
      [v14 setDelegate:v4];

      v15 = [(HMDMediaGroupsAggregateBackupMessageTimer *)v4 timer];
      [v15 resume];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v4;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to start new timer due to no timer provider", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v4;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = &unk_286628CA8;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create retry timer due to reaching the max attempt count: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)markAttemptWithMessageIdentifier:(id)a3
{
  [(HMDMediaGroupsAggregateBackupMessageTimer *)self setCurrentMessageIdentifier:a3];
  v4 = [(HMDMediaGroupsAggregateBackupMessageTimer *)self attemptCount]+ 1;

  [(HMDMediaGroupsAggregateBackupMessageTimer *)self setAttemptCount:v4];
}

- (HMDMediaGroupsAggregateBackupMessageTimer)initWithParticipantAccessoryUUID:(id)a3 timerProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDMediaGroupsAggregateBackupMessageTimer;
  v9 = [(HMDMediaGroupsAggregateBackupMessageTimer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_timerProvider, v8);
    objc_storeStrong(&v10->_participantAccessoryUUID, a3);
    v11 = [MEMORY[0x277CCAD78] UUID];
    currentMessageIdentifier = v10->_currentMessageIdentifier;
    v10->_currentMessageIdentifier = v11;

    v10->_attemptCount = 0;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_108964 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_108964, &__block_literal_global_108965);
  }

  v3 = logCategory__hmf_once_v5_108966;

  return v3;
}

uint64_t __56__HMDMediaGroupsAggregateBackupMessageTimer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_108966;
  logCategory__hmf_once_v5_108966 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end