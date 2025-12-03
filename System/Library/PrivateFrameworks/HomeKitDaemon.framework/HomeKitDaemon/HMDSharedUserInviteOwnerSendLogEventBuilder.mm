@interface HMDSharedUserInviteOwnerSendLogEventBuilder
+ (id)logCategory;
- (BOOL)isReady;
- (HMDHome)home;
- (HMDSharedUserInviteOwnerSendLogEventBuilder)initWithHome:(id)home sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source;
- (HMDSharedUserInviteOwnerSendLogEventBuilder)initWithHome:(id)home sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source logEventSubmitter:(id)submitter currentUpTicksBlock:(id)block submissionTimerFactory:(id)self0;
- (void)cancel;
- (void)markAddUserBegin;
- (void)markAddUserEnd;
- (void)markCreateShareBegin;
- (void)markCreateShareEnd;
- (void)markSendInviteBegin;
- (void)markSendInviteEnd;
- (void)markUserAlreadyAddedToShare;
- (void)submit;
@end

@implementation HMDSharedUserInviteOwnerSendLogEventBuilder

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)submit
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  if (!self->super.submitted)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      inviteLogEvent2 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      error = [inviteLogEvent2 error];
      *buf = 138543874;
      v15 = v6;
      v16 = 2112;
      v17 = inviteLogEvent;
      v18 = 2112;
      v19 = error;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Submitting shared user send invite latency log event %@ error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v13.receiver = selfCopy;
    v13.super_class = HMDSharedUserInviteOwnerSendLogEventBuilder;
    [(HMDSharedUserInviteLogEventBuilder *)&v13 submit];
    home = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy home];
    v11 = home;
    if (home)
    {
      [home removeSharedUserEventBuilder:selfCopy];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isReady
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v12.receiver = self;
  v12.super_class = HMDSharedUserInviteOwnerSendLogEventBuilder;
  isReady = [(HMDSharedUserInviteLogEventBuilder *)&v12 isReady];
  if (isReady)
  {
    inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
    error = [inviteLogEvent error];

    if (error)
    {
LABEL_3:
      LOBYTE(isReady) = 1;
      return isReady;
    }

    inviteLogEvent2 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
    if ([inviteLogEvent2 createShareMS] >= 1)
    {
      inviteLogEvent3 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
      if ([inviteLogEvent3 addUserToShareMS] >= 1)
      {
        inviteLogEvent4 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
        if ([inviteLogEvent4 sendInvitationMS] > 0)
        {
          inviteLogEvent5 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
          totalInvitationCreateAndSendMS = [inviteLogEvent5 totalInvitationCreateAndSendMS];

          if (totalInvitationCreateAndSendMS >= 1)
          {
            goto LABEL_3;
          }

LABEL_12:
          LOBYTE(isReady) = 0;
          return isReady;
        }
      }
    }

    goto LABEL_12;
  }

  return isReady;
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = HMDSharedUserInviteOwnerSendLogEventBuilder;
  [(HMDSharedUserInviteLogEventBuilder *)&v5 cancel];
  home = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self home];
  v4 = home;
  if (home)
  {
    [home removeSharedUserEventBuilder:self];
  }
}

- (void)markSendInviteEnd
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markSendInviteEnd", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->sendInvitationBeginTime)
    {
      inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      v8 = [inviteLogEvent sendInvitationMS] == -1;

      if (v8)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v10 = currentUpTicksBlock[2]();
        sendInvitationBeginTime = selfCopy->sendInvitationBeginTime;
        inviteLogEvent2 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
        v13 = inviteLogEvent2;
        if (v10 == sendInvitationBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - sendInvitationBeginTime;
        }

        [inviteLogEvent2 setSendInvitationMS:v14];

        currentUpTicksBlock2 = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v16 = currentUpTicksBlock2[2]();
        eventCreatedTime = selfCopy->super.eventCreatedTime;
        inviteLogEvent3 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
        v19 = inviteLogEvent3;
        if (v16 == eventCreatedTime)
        {
          v20 = 1;
        }

        else
        {
          v20 = v16 - eventCreatedTime;
        }

        [inviteLogEvent3 setTotalInvitationCreateAndSendMS:v20];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)markSendInviteBegin
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markSendInviteBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->sendInvitationBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->sendInvitationBeginTime = currentUpTicksBlock[2]();

    inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
    [inviteLogEvent setSendInvitationMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markUserAlreadyAddedToShare
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markUserAlreadyAddedToShare", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
    userAlreadyAddedToShare = [inviteLogEvent userAlreadyAddedToShare];

    if ((userAlreadyAddedToShare & 1) == 0)
    {
      inviteLogEvent2 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      [inviteLogEvent2 setUserAlreadyAddedToShare:1];

      inviteLogEvent3 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      [inviteLogEvent3 setCreateShareMS:1];

      inviteLogEvent4 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      [inviteLogEvent4 setAddUserToShareMS:1];

      [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)markAddUserEnd
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAddUserEnd", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->addUserToShareBeginTime)
    {
      inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      v8 = [inviteLogEvent addUserToShareMS] == -1;

      if (v8)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v10 = currentUpTicksBlock[2]();
        addUserToShareBeginTime = selfCopy->addUserToShareBeginTime;
        inviteLogEvent2 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
        v13 = inviteLogEvent2;
        if (v10 == addUserToShareBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - addUserToShareBeginTime;
        }

        [inviteLogEvent2 setAddUserToShareMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)markAddUserBegin
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAddUserBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->addUserToShareBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->addUserToShareBeginTime = currentUpTicksBlock[2]();

    inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
    [inviteLogEvent setAddUserToShareMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markCreateShareEnd
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateShareEnd", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted)
  {
    if (selfCopy->createShareBeginTime)
    {
      inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
      v8 = [inviteLogEvent createShareMS] == -1;

      if (v8)
      {
        currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
        v10 = currentUpTicksBlock[2]();
        createShareBeginTime = selfCopy->createShareBeginTime;
        inviteLogEvent2 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
        v13 = inviteLogEvent2;
        if (v10 == createShareBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - createShareBeginTime;
        }

        [inviteLogEvent2 setCreateShareMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)selfCopy submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)markCreateShareBegin
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateShareBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!selfCopy->super.submitted && !selfCopy->createShareBeginTime)
  {
    currentUpTicksBlock = [(HMDSharedUserInviteLogEventBuilder *)selfCopy currentUpTicksBlock];
    selfCopy->createShareBeginTime = currentUpTicksBlock[2]();

    inviteLogEvent = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)selfCopy inviteLogEvent];
    [inviteLogEvent setCreateShareMS:-1];
  }

  os_unfair_lock_unlock(&selfCopy->super._lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (HMDSharedUserInviteOwnerSendLogEventBuilder)initWithHome:(id)home sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source
{
  identifierCopy = identifier;
  homeCopy = home;
  v14 = +[HMDMetricsManager sharedLogEventSubmitter];
  v15 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self initWithHome:homeCopy sessionIdentifier:identifierCopy invitationType:type invitationAge:source invitationSource:v14 logEventSubmitter:&__block_literal_global_85747 currentUpTicksBlock:age submissionTimerFactory:&__block_literal_global_4];

  return v15;
}

id __124__HMDSharedUserInviteOwnerSendLogEventBuilder_initWithHome_sessionIdentifier_invitationType_invitationAge_invitationSource___block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:300.0];

  return v0;
}

- (HMDSharedUserInviteOwnerSendLogEventBuilder)initWithHome:(id)home sessionIdentifier:(id)identifier invitationType:(unint64_t)type invitationAge:(double)age invitationSource:(unint64_t)source logEventSubmitter:(id)submitter currentUpTicksBlock:(id)block submissionTimerFactory:(id)self0
{
  homeCopy = home;
  identifierCopy = identifier;
  submitterCopy = submitter;
  blockCopy = block;
  factoryCopy = factory;
  v22 = [HMDSharedUserInviteOwnerSendLogEvent alloc];
  uuid = [homeCopy uuid];
  v24 = [(HMDSharedUserInviteLogEvent *)v22 initWithHomeUUID:uuid];

  if (v24)
  {
    homeManager = [homeCopy homeManager];
    wifiManager = [homeCopy wifiManager];
    sourceCopy = source;
    v28 = wifiManager;
    v32.receiver = self;
    v32.super_class = HMDSharedUserInviteOwnerSendLogEventBuilder;
    v29 = [(HMDSharedUserInviteLogEventBuilder *)&v32 initWithLogEvent:v24 homeManager:homeManager sessionIdentifier:identifierCopy invitationType:type invitationAge:sourceCopy invitationSource:submitterCopy logEventSubmitter:age wifiManager:wifiManager currentUpTicksBlock:blockCopy submissionTimerFactory:factoryCopy];

    if (v29)
    {
      objc_storeWeak(&v29->_home, homeCopy);
      objc_storeStrong(&v29->_inviteLogEvent, v24);
    }

    self = v29;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15_85757 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15_85757, &__block_literal_global_14_85758);
  }

  v3 = logCategory__hmf_once_v16_85759;

  return v3;
}

void __58__HMDSharedUserInviteOwnerSendLogEventBuilder_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v16_85759;
  logCategory__hmf_once_v16_85759 = v1;
}

@end