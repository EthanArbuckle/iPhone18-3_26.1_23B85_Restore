@interface HMDSharedUserInviteOwnerSendLogEventBuilder
+ (id)logCategory;
- (BOOL)isReady;
- (HMDHome)home;
- (HMDSharedUserInviteOwnerSendLogEventBuilder)initWithHome:(id)a3 sessionIdentifier:(id)a4 invitationType:(unint64_t)a5 invitationAge:(double)a6 invitationSource:(unint64_t)a7;
- (HMDSharedUserInviteOwnerSendLogEventBuilder)initWithHome:(id)a3 sessionIdentifier:(id)a4 invitationType:(unint64_t)a5 invitationAge:(double)a6 invitationSource:(unint64_t)a7 logEventSubmitter:(id)a8 currentUpTicksBlock:(id)a9 submissionTimerFactory:(id)a10;
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
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
      v8 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
      v9 = [v8 error];
      *buf = 138543874;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Submitting shared user send invite latency log event %@ error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v13.receiver = v4;
    v13.super_class = HMDSharedUserInviteOwnerSendLogEventBuilder;
    [(HMDSharedUserInviteLogEventBuilder *)&v13 submit];
    v10 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 home];
    v11 = v10;
    if (v10)
    {
      [v10 removeSharedUserEventBuilder:v4];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isReady
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v12.receiver = self;
  v12.super_class = HMDSharedUserInviteOwnerSendLogEventBuilder;
  v3 = [(HMDSharedUserInviteLogEventBuilder *)&v12 isReady];
  if (v3)
  {
    v4 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
    v5 = [v4 error];

    if (v5)
    {
LABEL_3:
      LOBYTE(v3) = 1;
      return v3;
    }

    v6 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
    if ([v6 createShareMS] >= 1)
    {
      v7 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
      if ([v7 addUserToShareMS] >= 1)
      {
        v8 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
        if ([v8 sendInvitationMS] > 0)
        {
          v9 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self inviteLogEvent];
          v10 = [v9 totalInvitationCreateAndSendMS];

          if (v10 >= 1)
          {
            goto LABEL_3;
          }

LABEL_12:
          LOBYTE(v3) = 0;
          return v3;
        }
      }
    }

    goto LABEL_12;
  }

  return v3;
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = HMDSharedUserInviteOwnerSendLogEventBuilder;
  [(HMDSharedUserInviteLogEventBuilder *)&v5 cancel];
  v3 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self home];
  v4 = v3;
  if (v3)
  {
    [v3 removeSharedUserEventBuilder:self];
  }
}

- (void)markSendInviteEnd
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markSendInviteEnd", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    if (v4->sendInvitationBeginTime)
    {
      v7 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
      v8 = [v7 sendInvitationMS] == -1;

      if (v8)
      {
        v9 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v10 = v9[2]();
        sendInvitationBeginTime = v4->sendInvitationBeginTime;
        v12 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
        v13 = v12;
        if (v10 == sendInvitationBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - sendInvitationBeginTime;
        }

        [v12 setSendInvitationMS:v14];

        v15 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v16 = v15[2]();
        eventCreatedTime = v4->super.eventCreatedTime;
        v18 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
        v19 = v18;
        if (v16 == eventCreatedTime)
        {
          v20 = 1;
        }

        else
        {
          v20 = v16 - eventCreatedTime;
        }

        [v18 setTotalInvitationCreateAndSendMS:v20];

        [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)markSendInviteBegin
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markSendInviteBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted && !v4->sendInvitationBeginTime)
  {
    v7 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
    v4->sendInvitationBeginTime = v7[2]();

    v8 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
    [v8 setSendInvitationMS:-1];
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markUserAlreadyAddedToShare
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markUserAlreadyAddedToShare", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    v7 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
    v8 = [v7 userAlreadyAddedToShare];

    if ((v8 & 1) == 0)
    {
      v9 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
      [v9 setUserAlreadyAddedToShare:1];

      v10 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
      [v10 setCreateShareMS:1];

      v11 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
      [v11 setAddUserToShareMS:1];

      [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)markAddUserEnd
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAddUserEnd", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    if (v4->addUserToShareBeginTime)
    {
      v7 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
      v8 = [v7 addUserToShareMS] == -1;

      if (v8)
      {
        v9 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v10 = v9[2]();
        addUserToShareBeginTime = v4->addUserToShareBeginTime;
        v12 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
        v13 = v12;
        if (v10 == addUserToShareBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - addUserToShareBeginTime;
        }

        [v12 setAddUserToShareMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)markAddUserBegin
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAddUserBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted && !v4->addUserToShareBeginTime)
  {
    v7 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
    v4->addUserToShareBeginTime = v7[2]();

    v8 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
    [v8 setAddUserToShareMS:-1];
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markCreateShareEnd
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateShareEnd", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    if (v4->createShareBeginTime)
    {
      v7 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
      v8 = [v7 createShareMS] == -1;

      if (v8)
      {
        v9 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v10 = v9[2]();
        createShareBeginTime = v4->createShareBeginTime;
        v12 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
        v13 = v12;
        if (v10 == createShareBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - createShareBeginTime;
        }

        [v12 setCreateShareMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)markCreateShareBegin
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateShareBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted && !v4->createShareBeginTime)
  {
    v7 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
    v4->createShareBeginTime = v7[2]();

    v8 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)v4 inviteLogEvent];
    [v8 setCreateShareMS:-1];
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (HMDSharedUserInviteOwnerSendLogEventBuilder)initWithHome:(id)a3 sessionIdentifier:(id)a4 invitationType:(unint64_t)a5 invitationAge:(double)a6 invitationSource:(unint64_t)a7
{
  v12 = a4;
  v13 = a3;
  v14 = +[HMDMetricsManager sharedLogEventSubmitter];
  v15 = [(HMDSharedUserInviteOwnerSendLogEventBuilder *)self initWithHome:v13 sessionIdentifier:v12 invitationType:a5 invitationAge:a7 invitationSource:v14 logEventSubmitter:&__block_literal_global_176924 currentUpTicksBlock:a6 submissionTimerFactory:&__block_literal_global_4_176925];

  return v15;
}

id __124__HMDSharedUserInviteOwnerSendLogEventBuilder_initWithHome_sessionIdentifier_invitationType_invitationAge_invitationSource___block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:300.0];

  return v0;
}

- (HMDSharedUserInviteOwnerSendLogEventBuilder)initWithHome:(id)a3 sessionIdentifier:(id)a4 invitationType:(unint64_t)a5 invitationAge:(double)a6 invitationSource:(unint64_t)a7 logEventSubmitter:(id)a8 currentUpTicksBlock:(id)a9 submissionTimerFactory:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = [HMDSharedUserInviteOwnerSendLogEvent alloc];
  v23 = [v17 uuid];
  v24 = [(HMDSharedUserInviteLogEvent *)v22 initWithHomeUUID:v23];

  if (v24)
  {
    v25 = [v17 homeManager];
    v26 = [v17 wifiManager];
    v27 = a7;
    v28 = v26;
    v32.receiver = self;
    v32.super_class = HMDSharedUserInviteOwnerSendLogEventBuilder;
    v29 = [(HMDSharedUserInviteLogEventBuilder *)&v32 initWithLogEvent:v24 homeManager:v25 sessionIdentifier:v18 invitationType:a5 invitationAge:v27 invitationSource:v19 logEventSubmitter:a6 wifiManager:v26 currentUpTicksBlock:v20 submissionTimerFactory:v21];

    if (v29)
    {
      objc_storeWeak(&v29->_home, v17);
      objc_storeStrong(&v29->_inviteLogEvent, v24);
    }

    self = v29;
    v30 = self;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15_176935 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15_176935, &__block_literal_global_14_176936);
  }

  v3 = logCategory__hmf_once_v16_176937;

  return v3;
}

uint64_t __58__HMDSharedUserInviteOwnerSendLogEventBuilder_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v16_176937;
  logCategory__hmf_once_v16_176937 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end