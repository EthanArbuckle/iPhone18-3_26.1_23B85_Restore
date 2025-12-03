@interface HMDMediaGroupsAggregateBackupMessageTimer
+ (id)logCategory;
- (HMDMediaGroupsAggregateBackupMessageTimer)initWithParticipantAccessoryUUID:(id)d timerProvider:(id)provider;
- (HMDMediaGroupsAggregateBackupMessageTimerDelegate)delegate;
- (HMFTimerProvider)timerProvider;
- (double)nextTimeInterval;
- (id)logIdentifier;
- (void)markAttemptWithMessageIdentifier:(id)identifier;
- (void)startRetryTimer;
- (void)timerDidFire:(id)fire;
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
  participantAccessoryUUID = [(HMDMediaGroupsAggregateBackupMessageTimer *)self participantAccessoryUUID];
  uUIDString = [participantAccessoryUUID UUIDString];

  return uUIDString;
}

- (void)timerDidFire:(id)fire
{
  v15 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  timer = [(HMDMediaGroupsAggregateBackupMessageTimer *)self timer];

  if (timer == fireCopy)
  {
    delegate = [(HMDMediaGroupsAggregateBackupMessageTimer *)self delegate];
    v7 = delegate;
    if (delegate)
    {
      [delegate didFireTimerForMediaGroupsAggregateBackupMessageTimer:self];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of triggered timer due to no delegate", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (double)nextTimeInterval
{
  v8 = *MEMORY[0x277D85DE8];
  attemptCount = [(HMDMediaGroupsAggregateBackupMessageTimer *)self attemptCount];
  v6[0] = vdupq_n_s64(0x404E000000000000uLL);
  v6[1] = xmmword_22A587030;
  v7 = 0x409C200000000000;
  if (attemptCount > 5)
  {
    result = 86400.0;
  }

  else
  {
    if (attemptCount <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = attemptCount;
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDMediaGroupsAggregateBackupMessageTimer attemptCount](selfCopy, "attemptCount")}];
    v21 = 138543618;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting timer with attempts: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if ([(HMDMediaGroupsAggregateBackupMessageTimer *)selfCopy attemptCount]< 0x24)
  {
    timerProvider = [(HMDMediaGroupsAggregateBackupMessageTimer *)selfCopy timerProvider];
    if (timerProvider)
    {
      [(HMDMediaGroupsAggregateBackupMessageTimer *)selfCopy nextTimeInterval];
      v13 = [timerProvider timerWithTimeInterval:2 options:?];
      [(HMDMediaGroupsAggregateBackupMessageTimer *)selfCopy setTimer:v13];

      timer = [(HMDMediaGroupsAggregateBackupMessageTimer *)selfCopy timer];
      [timer setDelegate:selfCopy];

      timer2 = [(HMDMediaGroupsAggregateBackupMessageTimer *)selfCopy timer];
      [timer2 resume];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to start new timer due to no timer provider", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = selfCopy;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = &unk_283E738E0;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create retry timer due to reaching the max attempt count: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)markAttemptWithMessageIdentifier:(id)identifier
{
  [(HMDMediaGroupsAggregateBackupMessageTimer *)self setCurrentMessageIdentifier:identifier];
  v4 = [(HMDMediaGroupsAggregateBackupMessageTimer *)self attemptCount]+ 1;

  [(HMDMediaGroupsAggregateBackupMessageTimer *)self setAttemptCount:v4];
}

- (HMDMediaGroupsAggregateBackupMessageTimer)initWithParticipantAccessoryUUID:(id)d timerProvider:(id)provider
{
  dCopy = d;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = HMDMediaGroupsAggregateBackupMessageTimer;
  v9 = [(HMDMediaGroupsAggregateBackupMessageTimer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_timerProvider, providerCopy);
    objc_storeStrong(&v10->_participantAccessoryUUID, d);
    uUID = [MEMORY[0x277CCAD78] UUID];
    currentMessageIdentifier = v10->_currentMessageIdentifier;
    v10->_currentMessageIdentifier = uUID;

    v10->_attemptCount = 0;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_180709 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_180709, &__block_literal_global_180710);
  }

  v3 = logCategory__hmf_once_v5_180711;

  return v3;
}

void __56__HMDMediaGroupsAggregateBackupMessageTimer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_180711;
  logCategory__hmf_once_v5_180711 = v1;
}

@end