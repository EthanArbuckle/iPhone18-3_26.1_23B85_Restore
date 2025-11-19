@interface HMDSharedUserInviteAcceptLogEventBuilder
+ (id)logCategory;
- (BOOL)isReady;
- (HMDHomeManager)homeManager;
- (HMDSharedUserInviteAcceptLogEventBuilder)initWithHomeUUID:(id)a3 homeManager:(id)a4 sessionIdentifier:(id)a5 invitationType:(unint64_t)a6 invitationAge:(double)a7 invitationSource:(unint64_t)a8 logEventSubmitter:(id)a9 wifiManager:(id)a10 currentUpTicksBlock:(id)a11 submissionTimerFactory:(id)a12;
- (HMDSharedUserInviteAcceptLogEventBuilder)initWithHomeUUID:(id)a3 homeManager:(id)a4 sessionIdentifier:(id)a5 invitationType:(unint64_t)a6 invitationAge:(double)a7 invitationSource:(unint64_t)a8 wifiManager:(id)a9;
- (void)cancel;
- (void)markAddUserBegin;
- (void)markAddUserEnd;
- (void)markCreateMKFCKSharedUserDataRootBegin;
- (void)markCreateMKFCKSharedUserDataRootEnd;
- (void)markCreateReverseShareBegin;
- (void)markCreateReverseShareEnd;
- (void)markCreatedHome;
- (void)markDiscoverPrimaryResidentBegin;
- (void)markDiscoverPrimaryResidentEnd;
- (void)markJoinOwnerShareBegin;
- (void)markJoinOwnerShareEnd;
- (void)markResidentSyncBegin;
- (void)markResidentSyncEnd;
- (void)markSendAcceptanceToOwnerBegin;
- (void)markSendAcceptanceToOwnerEnd;
- (void)submit;
@end

@implementation HMDSharedUserInviteAcceptLogEventBuilder

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

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
      v7 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
      v8 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
      v9 = [v8 error];
      *buf = 138543874;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Submitting shared user accept latency log event %@ error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v14.receiver = v4;
    v14.super_class = HMDSharedUserInviteAcceptLogEventBuilder;
    [(HMDSharedUserInviteLogEventBuilder *)&v14 submit];
    v10 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 homeManager];
    v11 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
    v12 = [v11 homeUUID];
    [v10 removeSharedUserAcceptEventBuilderForHomeUuid:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isReady
{
  os_unfair_lock_assert_owner(&self->super._lock);
  v18.receiver = self;
  v18.super_class = HMDSharedUserInviteAcceptLogEventBuilder;
  v3 = [(HMDSharedUserInviteLogEventBuilder *)&v18 isReady];
  if (v3)
  {
    v4 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
    v5 = [v4 error];

    if (v5)
    {
LABEL_3:
      LOBYTE(v3) = 1;
      return v3;
    }

    v6 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
    if ([v6 joinOwnerShareMS] >= 1)
    {
      v7 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
      if ([v7 createMKFCKSharedUserDataRootMS] >= 1)
      {
        v8 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
        if ([v8 createReverseShareMS] >= 1)
        {
          v9 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
          if ([v9 addUserToShareMS] >= 1)
          {
            v10 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
            if ([v10 sendAcceptanceToOwnerMS] >= 1)
            {
              v11 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
              if ([v11 totalInvitationAcceptanceMS] >= 1)
              {
                v12 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
                if ([v12 createHomeMS] >= 1)
                {
                  v13 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
                  if ([v13 discoverPrimaryResidentMS] >= 1)
                  {
                    v14 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
                    if ([v14 residentSyncDataReceivedMS] >= 1)
                    {
                      v15 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
                      v17 = [v15 sharedUserTotalMS];

                      if (v17 >= 1)
                      {
                        goto LABEL_3;
                      }

LABEL_24:
                      LOBYTE(v3) = 0;
                      return v3;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_24;
  }

  return v3;
}

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = HMDSharedUserInviteAcceptLogEventBuilder;
  [(HMDSharedUserInviteLogEventBuilder *)&v6 cancel];
  v3 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self homeManager];
  v4 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self acceptLogEvent];
  v5 = [v4 homeUUID];
  [v3 removeSharedUserAcceptEventBuilderForHomeUuid:v5];
}

- (void)markResidentSyncEnd
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markResidentSyncEnd", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    if (v4->residentSyncBeginTime)
    {
      v7 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
      v8 = [v7 residentSyncDataReceivedMS] == -1;

      if (v8)
      {
        v9 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v10 = v9[2]();
        residentSyncBeginTime = v4->residentSyncBeginTime;
        v12 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
        v13 = v12;
        if (v10 == residentSyncBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - residentSyncBeginTime;
        }

        [v12 setResidentSyncDataReceivedMS:v14];

        v15 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v16 = v15[2]();
        eventCreatedTime = v4->super.eventCreatedTime;
        v18 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
        v19 = v18;
        if (v16 == eventCreatedTime)
        {
          v20 = 1;
        }

        else
        {
          v20 = v16 - eventCreatedTime;
        }

        [v18 setSharedUserTotalMS:v20];

        [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)markResidentSyncBegin
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markResidentSyncBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted && !v4->residentSyncBeginTime)
  {
    v7 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
    v4->residentSyncBeginTime = v7[2]();

    v8 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
    [v8 setResidentSyncDataReceivedMS:-1];
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markDiscoverPrimaryResidentEnd
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markDiscoverPrimaryResidentEnd", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    if (v4->discoverPrimaryResidentBeginTime)
    {
      v7 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
      v8 = [v7 discoverPrimaryResidentMS] == -1;

      if (v8)
      {
        v9 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v10 = v9[2]();
        discoverPrimaryResidentBeginTime = v4->discoverPrimaryResidentBeginTime;
        v12 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
        v13 = v12;
        if (v10 == discoverPrimaryResidentBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - discoverPrimaryResidentBeginTime;
        }

        [v12 setDiscoverPrimaryResidentMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)markDiscoverPrimaryResidentBegin
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markDiscoverPrimaryResidentBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted && !v4->discoverPrimaryResidentBeginTime)
  {
    v7 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
    v4->discoverPrimaryResidentBeginTime = v7[2]();

    v8 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
    [v8 setDiscoverPrimaryResidentMS:-1];
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markCreatedHome
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreatedHome", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    v7 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
    v8 = [v7 createHomeMS] == 0;

    if (v8)
    {
      v9 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
      v10 = v9[2]();
      joinOwnerShareBeginTime = v4->joinOwnerShareBeginTime;
      v12 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
      v13 = v12;
      if (v10 == joinOwnerShareBeginTime)
      {
        v14 = 1;
      }

      else
      {
        v14 = v10 - joinOwnerShareBeginTime;
      }

      [v12 setCreateHomeMS:v14];

      [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)markSendAcceptanceToOwnerEnd
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markSendAcceptanceToOwnerEnd", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    if (v4->sendAcceptanceToOwnerBeginTime)
    {
      v7 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
      v8 = [v7 sendAcceptanceToOwnerMS] == -1;

      if (v8)
      {
        v9 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v10 = v9[2]();
        sendAcceptanceToOwnerBeginTime = v4->sendAcceptanceToOwnerBeginTime;
        v12 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
        v13 = v12;
        if (v10 == sendAcceptanceToOwnerBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - sendAcceptanceToOwnerBeginTime;
        }

        [v12 setSendAcceptanceToOwnerMS:v14];

        v15 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v16 = v15[2]();
        eventCreatedTime = v4->super.eventCreatedTime;
        v18 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
        v19 = v18;
        if (v16 == eventCreatedTime)
        {
          v20 = 1;
        }

        else
        {
          v20 = v16 - eventCreatedTime;
        }

        [v18 setTotalInvitationAcceptanceMS:v20];

        [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)markSendAcceptanceToOwnerBegin
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markSendAcceptanceToOwnerBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted && !v4->sendAcceptanceToOwnerBeginTime)
  {
    v7 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
    v4->sendAcceptanceToOwnerBeginTime = v7[2]();

    v8 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
    [v8 setSendAcceptanceToOwnerMS:-1];
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v9 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAddUserEnd", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    if (v4->addUserToShareBeginTime)
    {
      v7 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
      v8 = [v7 addUserToShareMS] == -1;

      if (v8)
      {
        v9 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v10 = v9[2]();
        addUserToShareBeginTime = v4->addUserToShareBeginTime;
        v12 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markAddUserBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted && !v4->addUserToShareBeginTime)
  {
    v7 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
    v4->addUserToShareBeginTime = v7[2]();

    v8 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
    [v8 setAddUserToShareMS:-1];
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markCreateReverseShareEnd
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateReverseShareEnd", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    if (v4->createReverseShareBeginTime)
    {
      v7 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
      v8 = [v7 createReverseShareMS] == -1;

      if (v8)
      {
        v9 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v10 = v9[2]();
        createReverseShareBeginTime = v4->createReverseShareBeginTime;
        v12 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
        v13 = v12;
        if (v10 == createReverseShareBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - createReverseShareBeginTime;
        }

        [v12 setCreateReverseShareMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)markCreateReverseShareBegin
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateReverseShareBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted && !v4->createReverseShareBeginTime)
  {
    v7 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
    v4->createReverseShareBeginTime = v7[2]();

    v8 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
    [v8 setCreateReverseShareMS:-1];
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markCreateMKFCKSharedUserDataRootEnd
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateMKFCKSharedUserDataRootEnd", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    if (v4->createMKFCKSharedUserDataRootBeginTime)
    {
      v7 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
      v8 = [v7 createMKFCKSharedUserDataRootMS] == -1;

      if (v8)
      {
        v9 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v10 = v9[2]();
        createMKFCKSharedUserDataRootBeginTime = v4->createMKFCKSharedUserDataRootBeginTime;
        v12 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
        v13 = v12;
        if (v10 == createMKFCKSharedUserDataRootBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - createMKFCKSharedUserDataRootBeginTime;
        }

        [v12 setCreateMKFCKSharedUserDataRootMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)markCreateMKFCKSharedUserDataRootBegin
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markCreateMKFCKSharedUserDataRootBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted && !v4->createMKFCKSharedUserDataRootBeginTime)
  {
    v7 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
    v4->createMKFCKSharedUserDataRootBeginTime = v7[2]();

    v8 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
    [v8 setCreateMKFCKSharedUserDataRootMS:-1];
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)markJoinOwnerShareEnd
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markJoinOwnerShareEnd", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted)
  {
    if (v4->joinOwnerShareBeginTime)
    {
      v7 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
      v8 = [v7 joinOwnerShareMS] == -1;

      if (v8)
      {
        v9 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
        v10 = v9[2]();
        joinOwnerShareBeginTime = v4->joinOwnerShareBeginTime;
        v12 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
        v13 = v12;
        if (v10 == joinOwnerShareBeginTime)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - joinOwnerShareBeginTime;
        }

        [v12 setJoinOwnerShareMS:v14];

        [(HMDSharedUserInviteLogEventBuilder *)v4 submitIfReady];
      }
    }
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)markJoinOwnerShareBegin
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@markJoinOwnerShareBegin", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  if (!v4->super.submitted && !v4->joinOwnerShareBeginTime)
  {
    v7 = [(HMDSharedUserInviteLogEventBuilder *)v4 currentUpTicksBlock];
    v4->joinOwnerShareBeginTime = v7[2]();

    v8 = [(HMDSharedUserInviteAcceptLogEventBuilder *)v4 acceptLogEvent];
    [v8 setJoinOwnerShareMS:-1];
  }

  os_unfair_lock_unlock(&v4->super._lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (HMDSharedUserInviteAcceptLogEventBuilder)initWithHomeUUID:(id)a3 homeManager:(id)a4 sessionIdentifier:(id)a5 invitationType:(unint64_t)a6 invitationAge:(double)a7 invitationSource:(unint64_t)a8 wifiManager:(id)a9
{
  v16 = a9;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = +[HMDMetricsManager sharedLogEventSubmitter];
  v21 = [(HMDSharedUserInviteAcceptLogEventBuilder *)self initWithHomeUUID:v19 homeManager:v18 sessionIdentifier:v17 invitationType:a6 invitationAge:a8 invitationSource:v20 logEventSubmitter:a7 wifiManager:v16 currentUpTicksBlock:&__block_literal_global_256877 submissionTimerFactory:&__block_literal_global_4_256878];

  return v21;
}

id __149__HMDSharedUserInviteAcceptLogEventBuilder_initWithHomeUUID_homeManager_sessionIdentifier_invitationType_invitationAge_invitationSource_wifiManager___block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:900.0];

  return v0;
}

- (HMDSharedUserInviteAcceptLogEventBuilder)initWithHomeUUID:(id)a3 homeManager:(id)a4 sessionIdentifier:(id)a5 invitationType:(unint64_t)a6 invitationAge:(double)a7 invitationSource:(unint64_t)a8 logEventSubmitter:(id)a9 wifiManager:(id)a10 currentUpTicksBlock:(id)a11 submissionTimerFactory:(id)a12
{
  v17 = a4;
  v18 = a5;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a3;
  v24 = [[HMDSharedUserInviteAcceptLogEvent alloc] initWithHomeUUID:v23];

  if (v24)
  {
    v31.receiver = self;
    v31.super_class = HMDSharedUserInviteAcceptLogEventBuilder;
    v25 = [(HMDSharedUserInviteLogEventBuilder *)&v31 initWithLogEvent:v24 homeManager:v17 sessionIdentifier:v18 invitationType:a6 invitationAge:a8 invitationSource:v19 logEventSubmitter:a7 wifiManager:v20 currentUpTicksBlock:v21 submissionTimerFactory:v22];
    p_isa = &v25->super.super.isa;
    if (v25)
    {
      objc_storeWeak(&v25->_homeManager, v17);
      objc_storeStrong(p_isa + 18, v24);
    }

    self = p_isa;
    v27 = self;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31_256888 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31_256888, &__block_literal_global_14_256889);
  }

  v3 = logCategory__hmf_once_v32_256890;

  return v3;
}

void __55__HMDSharedUserInviteAcceptLogEventBuilder_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v32_256890;
  logCategory__hmf_once_v32_256890 = v1;
}

@end