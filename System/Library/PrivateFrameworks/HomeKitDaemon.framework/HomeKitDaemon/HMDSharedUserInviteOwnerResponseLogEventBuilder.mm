@interface HMDSharedUserInviteOwnerResponseLogEventBuilder
+ (id)logCategory;
- (BOOL)isReady;
- (HMDSharedUserInviteOwnerResponseLogEventBuilder)initWithHome:(id)a3 sessionIdentifier:(id)a4 invitationType:(unint64_t)a5 invitationAge:(double)a6 invitationSource:(unint64_t)a7;
- (void)cancel;
- (void)markAddUserToHomeBegin;
- (void)markAddUserToHomeEnd;
- (void)markAuthenticateUserBegin;
- (void)markAuthenticateUserEnd;
- (void)markJoiningReverseShareBegin;
- (void)markJoiningReverseShareEnd;
- (void)submit;
@end

@implementation HMDSharedUserInviteOwnerResponseLogEventBuilder

- (void)submit
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->super._lock);
  if (!self->super.submitted)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      Property = objc_getProperty(v4, v7, 112, 1);
      v10 = [objc_getProperty(v4 v9];
      *buf = 138543874;
      v16 = v6;
      v17 = 2112;
      v18 = Property;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Submitting shared user response latency log event %@ error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v14.receiver = v4;
    v14.super_class = HMDSharedUserInviteOwnerResponseLogEventBuilder;
    [(HMDSharedUserInviteLogEventBuilder *)&v14 submit];
    WeakRetained = objc_loadWeakRetained(&v4->_home);
    v12 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained removeSharedUserResponseEventBuilder:v4];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isReady
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v14.receiver = self;
  v14.super_class = HMDSharedUserInviteOwnerResponseLogEventBuilder;
  v3 = [(HMDSharedUserInviteLogEventBuilder *)&v14 isReady];
  if (v3)
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 112, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = [Property error];

    LOBYTE(v3) = v6 || (!self ? (v8 = 0) : (v8 = objc_getProperty(self, v7, 112, 1)), [v8 authenticateUserMS] >= 1 && (!self ? (v10 = 0) : (v10 = objc_getProperty(self, v9, 112, 1)), objc_msgSend(v10, "joiningReverseShareMS") >= 1 && (!self ? (v12 = 0) : (v12 = objc_getProperty(self, v11, 112, 1)), objc_msgSend(v12, "addUserToHomeMS") > 0)));
  }

  return v3;
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = HMDSharedUserInviteOwnerResponseLogEventBuilder;
  [(HMDSharedUserInviteLogEventBuilder *)&v5 cancel];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_home);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained removeSharedUserResponseEventBuilder:self];
    }
  }

  else
  {
    v4 = 0;
  }
}

- (void)markAddUserToHomeEnd
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAddUserToHomeEnd", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    if (v4->addUserToHomeBeginTime)
    {
      v8 = objc_getProperty(v4, v7, 112, 1);
      v9 = [v8 addUserToHomeMS] == -1;

      if (v9)
      {
        v10 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v11 = v10[2]();
        addUserToHomeBeginTime = v4->addUserToHomeBeginTime;
        v14 = objc_getProperty(v4, v13, 112, 1);
        v15 = v14;
        if (v11 == addUserToHomeBeginTime)
        {
          v16 = 1;
        }

        else
        {
          v16 = v11 - addUserToHomeBeginTime;
        }

        [v14 setAddUserToHomeMS:v16];

        v17 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v18 = v17[2]();
        eventCreatedTime = v4->super.eventCreatedTime;
        v21 = objc_getProperty(v4, v20, 112, 1);
        v22 = v21;
        if (v18 == eventCreatedTime)
        {
          v23 = 1;
        }

        else
        {
          v23 = v18 - eventCreatedTime;
        }

        [v21 setTotalOwnerResidentResponseMS:v23];

        [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v24 = *MEMORY[0x277D85DE8];
}

- (void)markAddUserToHomeBegin
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAddUserToHomeBegin", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted && !v4->addUserToHomeBeginTime)
  {
    v7 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
    v4->addUserToHomeBeginTime = v7[2]();

    v9 = objc_getProperty(v4, v8, 112, 1);
    [v9 setAddUserToHomeMS:-1];
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)markJoiningReverseShareEnd
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markJoiningReverseShareEnd", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    if (v4->joiningReverseShareBeginTime)
    {
      v8 = objc_getProperty(v4, v7, 112, 1);
      v9 = [v8 joiningReverseShareMS] == -1;

      if (v9)
      {
        v10 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v11 = v10[2]();
        joiningReverseShareBeginTime = v4->joiningReverseShareBeginTime;
        v14 = objc_getProperty(v4, v13, 112, 1);
        v15 = v14;
        if (v11 == joiningReverseShareBeginTime)
        {
          v16 = 1;
        }

        else
        {
          v16 = v11 - joiningReverseShareBeginTime;
        }

        [v14 setJoiningReverseShareMS:v16];

        [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)markJoiningReverseShareBegin
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markJoiningReverseShareBegin", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted && !v4->joiningReverseShareBeginTime)
  {
    v7 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
    v4->joiningReverseShareBeginTime = v7[2]();

    v9 = objc_getProperty(v4, v8, 112, 1);
    [v9 setJoiningReverseShareMS:-1];
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)markAuthenticateUserEnd
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAuthenticateUserEnd", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    if (v4->authenticateUserBeginTime)
    {
      v8 = objc_getProperty(v4, v7, 112, 1);
      v9 = [v8 authenticateUserMS] == -1;

      if (v9)
      {
        v10 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v11 = v10[2]();
        authenticateUserBeginTime = v4->authenticateUserBeginTime;
        v14 = objc_getProperty(v4, v13, 112, 1);
        v15 = v14;
        if (v11 == authenticateUserBeginTime)
        {
          v16 = 1;
        }

        else
        {
          v16 = v11 - authenticateUserBeginTime;
        }

        [v14 setAuthenticateUserMS:v16];

        [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)markAuthenticateUserBegin
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAuthenticateUserBegin", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted && !v4->authenticateUserBeginTime)
  {
    v7 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
    v4->authenticateUserBeginTime = v7[2]();

    v9 = objc_getProperty(v4, v8, 112, 1);
    [v9 setAuthenticateUserMS:-1];
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (HMDSharedUserInviteOwnerResponseLogEventBuilder)initWithHome:(id)a3 sessionIdentifier:(id)a4 invitationType:(unint64_t)a5 invitationAge:(double)a6 invitationSource:(unint64_t)a7
{
  v12 = a4;
  v13 = a3;
  v14 = +[HMDMetricsManager sharedLogEventSubmitter];
  v15 = v13;
  v16 = v12;
  v17 = v14;
  v18 = &__block_literal_global_170057;
  v19 = &__block_literal_global_4_170058;
  if (self)
  {
    v20 = [HMDSharedUserInviteOwnerResponseLogEvent alloc];
    v21 = [v15 uuid];
    v22 = [(HMDSharedUserInviteOwnerResponseLogEvent *)v20 initWithHomeUUID:v21];

    if (v22)
    {
      v23 = [v15 homeManager];
      v24 = [v15 wifiManager];
      v25 = a7;
      v26 = v24;
      v30.receiver = self;
      v30.super_class = HMDSharedUserInviteOwnerResponseLogEventBuilder;
      v27 = [(HMDSharedUserInviteLogEventBuilder *)&v30 initWithLogEvent:v22 homeManager:v23 sessionIdentifier:v16 invitationType:a5 invitationAge:v25 invitationSource:v17 logEventSubmitter:a6 wifiManager:v24 currentUpTicksBlock:&__block_literal_global_170057 submissionTimerFactory:&__block_literal_global_4_170058];

      if (v27)
      {
        objc_storeWeak(&v27->_home, v15);
        objc_storeStrong(&v27->_responseLogEvent, v22);
      }

      self = v27;
      v28 = self;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

id __128__HMDSharedUserInviteOwnerResponseLogEventBuilder_initWithHome_sessionIdentifier_invitationType_invitationAge_invitationSource___block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:300.0];

  return v0;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_170069 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_170069, &__block_literal_global_14_170070);
  }

  v3 = logCategory__hmf_once_v14_170071;

  return v3;
}

void __62__HMDSharedUserInviteOwnerResponseLogEventBuilder_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_170071;
  logCategory__hmf_once_v14_170071 = v1;
}

@end