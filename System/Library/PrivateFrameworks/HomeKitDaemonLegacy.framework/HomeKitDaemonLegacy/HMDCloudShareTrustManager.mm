@interface HMDCloudShareTrustManager
+ (id)logCategory;
- (BOOL)isFromOwner;
- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4;
- (CloudShareTrustManagerTrustStatusCounts)trustStatusCounts;
- (HMDCloudShareTrustManager)initWithDatabase:(id)a3 isOwnedTrust:(BOOL)a4 queue:(id)a5 shareMessenger:(id)a6 ownerCloudShareID:(id)a7 logEventSubmitter:(id)a8 dailyScheduler:(id)a9;
- (HMDCloudShareTrustManagerDataSource)dataSource;
- (HMDCloudShareTrustManagerDelegate)delegate;
- (id)attributeDescriptions;
- (id)homeForCloudShareTrustManagerMetricsEventDispatcher:(id)a3;
- (id)logIdentifier;
- (int64_t)configureState;
- (void)_cancelRequestInviteTimer;
- (void)_configure;
- (void)_configureOwnerCloudShareIDWithCloudZone:(id)a3;
- (void)_configureWithFetchZoneResult:(id)a3 error:(id)a4;
- (void)_configureWithOwnedZone;
- (void)_configureWithSharedZone;
- (void)_didCreateZone;
- (void)_didRemoveZone;
- (void)_finishConfigure;
- (void)_homeDidBecomeTrustZoneCapable:(id)a3;
- (void)_requestShareInvitationForSharedZone;
- (void)_startRequestInviteTimer;
- (void)cloudZone:(id)a3 didRemoveParticipantWithClientIdentifier:(id)a4;
- (void)cloudZone:(id)a3 didUpdateParticipantWithClientIdentifier:(id)a4;
- (void)configure;
- (void)database:(id)a3 didCreateZoneWithName:(id)a4 isPrivate:(BOOL)a5;
- (void)database:(id)a3 didRemoveZoneWithName:(id)a4 isPrivate:(BOOL)a5;
- (void)discoverUntrustedUsers;
- (void)homeDidBecomeTrustZoneCapable:(id)a3;
- (void)localZone:(id)a3 didProcessModelCreation:(id)a4;
- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4;
- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4;
- (void)manager:(id)a3 didRequestSendForInvitation:(id)a4 toDevice:(id)a5;
- (void)manager:(id)a3 didRequestSendForInvitation:(id)a4 toUser:(id)a5;
- (void)messenger:(id)a3 didReceiveInvitationData:(id)a4 completion:(id)a5;
- (void)messenger:(id)a3 didReceiveInvitationRequestFromUser:(id)a4 device:(id)a5;
- (void)removeTrust;
- (void)sendShareInvitation:(id)a3 toUser:(id)a4 device:(id)a5;
- (void)setConfigureState:(int64_t)a3;
- (void)timerDidFire:(id)a3;
- (void)updateCloudShareIDForAllUsers;
- (void)updateCloudShareIDForUser:(id)a3;
- (void)updateCurrentUserCloudShareID;
@end

@implementation HMDCloudShareTrustManager

- (HMDCloudShareTrustManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDCloudShareTrustManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)timerDidFire:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCloudShareTrustManager *)self requestInviteTimer];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6 == v4)
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Request invite timer fired", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    if ([(HMDCloudShareTrustManager *)v8 configureState]== 2 || [(HMDCloudShareTrustManager *)v8 configureState]== 3)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v8;
      v15 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
LABEL_12:

        objc_autoreleasePoolPop(v13);
        [(HMDCloudShareTrustManager *)v14 _cancelRequestInviteTimer];
        goto LABEL_13;
      }

      v16 = HMFGetLogIdentifier();
      v17 = HMDCloudShareTrustManagerConfigureStateAsString([(HMDCloudShareTrustManager *)v14 configureState]);
      v22 = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Canceling request invite timer due to trust manager configure state: %@", &v22, 0x16u);
    }

    else
    {
      v19 = [(HMDCloudShareTrustManager *)v8 requestInviteTimer];
      [v19 timeInterval];
      v21 = v20;

      if (v21 < 86400.0)
      {
        [(HMDCloudShareTrustManager *)v8 _configure];
        goto LABEL_13;
      }

      v13 = objc_autoreleasePoolPush();
      v14 = v8;
      v15 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      v16 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Canceling request invite timer due to reaching max interval time", &v22, 0xCu);
    }

    goto LABEL_12;
  }

  if (v10)
  {
    v11 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received timer did fire call from unknown timer: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_cancelRequestInviteTimer
{
  v3 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v3);

  [(HMDCloudShareTrustManager *)self setRequestInviteTimer:0];
}

- (void)_startRequestInviteTimer
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCloudShareTrustManager *)self requestInviteTimer];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Request invite timer already started", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = [(HMDCloudShareTrustManager *)self requestInviteTimerFactory];
    v10 = v9[2](v9, 3, 30.0, 86400.0);
    [(HMDCloudShareTrustManager *)self setRequestInviteTimer:v10];

    v11 = [(HMDCloudShareTrustManager *)self requestInviteTimer];
    [v11 setDelegate:self];

    v12 = [(HMDCloudShareTrustManager *)self queue];
    v13 = [(HMDCloudShareTrustManager *)self requestInviteTimer];
    [v13 setDelegateQueue:v12];

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Starting request invite timer", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [(HMDCloudShareTrustManager *)v15 requestInviteTimer];
    [v18 resume];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCloudShareTrustManager *)self isOwnedTrust];
  v4 = HMFBooleanToString();
  v5 = [v3 initWithName:@"isOwnedTrust" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = HMDCloudShareTrustManagerConfigureStateAsString([(HMDCloudShareTrustManager *)self configureState]);
  v8 = [v6 initWithName:@"configureState" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDCloudShareTrustManager *)self ownerCloudShareID];
  v11 = [v9 initWithName:@"ownerCloudShareID" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)logIdentifier
{
  v3 = [(HMDCloudShareTrustManager *)self dataSource];
  v4 = [v3 zoneNameForCloudShareTrustManager:self];

  return v4;
}

- (void)_didRemoveZone
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Trust zone has been removed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCloudShareTrustManager *)v5 metricsEventDispatcher];
  [v8 submitTrustZoneRemovedEvent];

  v9 = [(HMDCloudShareTrustManager *)v5 delegate];
  [v9 didRemoveTrustZoneInCloudShareTrustManager:v5];

  [(HMDCloudShareTrustManager *)v5 setConfigureState:3];
  [(HMDCloudShareTrustManager *)v5 setCloudZone:0];
  [(HMDCloudShareTrustManager *)v5 setLocalZone:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)a3 didRemoveZoneWithName:(id)a4 isPrivate:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(HMDCloudShareTrustManager *)self dataSource];
  v9 = [v8 zoneNameForCloudShareTrustManager:self];

  LODWORD(v8) = [v7 isEqualToString:v9];
  if (v8 && [(HMDCloudShareTrustManager *)self isOwnedTrust]== v5)
  {
    v10 = [(HMDCloudShareTrustManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HMDCloudShareTrustManager_database_didRemoveZoneWithName_isPrivate___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(v10, block);
  }
}

- (void)_didCreateZone
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Trust zone has been created", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDCloudShareTrustManager *)v5 metricsEventDispatcher];
  [v8 submitTrustZoneCreatedEvent];

  if ([(HMDCloudShareTrustManager *)v5 configureState]== 3)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v5;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Forcing trust from removed to unconfigured state due to a zone creation notification", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    os_unfair_lock_lock_with_options();
    v10->_configureState = 0;
    os_unfair_lock_unlock(&v10->_lock);
  }

  [(HMDCloudShareTrustManager *)v5 _configure];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)a3 didCreateZoneWithName:(id)a4 isPrivate:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(HMDCloudShareTrustManager *)self dataSource];
  v9 = [v8 zoneNameForCloudShareTrustManager:self];

  LODWORD(v8) = [v7 isEqualToString:v9];
  if (v8 && [(HMDCloudShareTrustManager *)self isOwnedTrust]== v5)
  {
    v10 = [(HMDCloudShareTrustManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HMDCloudShareTrustManager_database_didCreateZoneWithName_isPrivate___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(v10, block);
  }
}

- (id)homeForCloudShareTrustManagerMetricsEventDispatcher:(id)a3
{
  v4 = [(HMDCloudShareTrustManager *)self dataSource];
  v5 = [v4 homeForCloudShareTrustManager:self];

  return v5;
}

- (CloudShareTrustManagerTrustStatusCounts)trustStatusCounts
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = [(HMDCloudShareTrustManager *)self dataSource];
  v5 = [v4 homeForCloudShareTrustManager:self];

  v37 = v5;
  v6 = [v5 users];
  v36 = [v6 count];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v39 = 0;
    v40 = 0;
    v43 = 0;
    v44 = 0;
    v10 = 0;
    v41 = 0;
    v42 = 0;
    v11 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        if (([v13 isOwner] & 1) == 0)
        {
          v14 = [(HMDCloudShareTrustManager *)self cloudShareParticipantsManager];
          v15 = [v14 participatingUsers];
          v16 = [v15 containsObject:v13];

          if (v16)
          {
            v17 = [(HMDCloudShareTrustManager *)self cloudShareParticipantsManager];
            v18 = [v17 isAcceptedParticipatingUser:v13];

            v19 = [v13 cloudShareID];

            if (v18)
            {
              ++v41;
              if (v19)
              {
                ++v40;
              }

              else
              {
                ++v39;
              }
            }

            else
            {
              ++v44;
              v20 = v42;
              if (v19)
              {
                v20 = v42 + 1;
              }

              v42 = v20;
              v21 = +[HMDHomeKitVersion version6];
              v22 = [v13 hasDeviceWithHomeKitVersionGreaterThanVersion:v21];

              v43 += v22;
            }
          }

          else
          {
            ++v10;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v9);
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v43 = 0;
    v44 = 0;
    v10 = 0;
    v41 = 0;
    v42 = 0;
  }

  v23 = v36 - 1;

  v24 = 1;
  if (v36 != 2)
  {
    v24 = 2;
  }

  if (v23 <= 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__HMDCloudShareTrustManager_trustStatusCounts__block_invoke;
  aBlock[3] = &__block_descriptor_40_e11_Q24__0Q8Q16l;
  aBlock[4] = v23 & ~(v23 >> 63);
  v26 = _Block_copy(aBlock);
  v27 = v26[2](v26, v41, 100);
  v28 = v26[2](v26, v40, 100);
  v29 = v26[2](v26, v42, 0);
  v30 = v26[2](v26, v43, 0);
  v31 = v26[2](v26, v10, 0);
  v32 = v26[2](v26, v44, 0);
  v33 = v26[2](v26, v39, 0);
  retstr->var0 = v25;
  retstr->var1 = v27;
  retstr->var2 = v28;
  retstr->var3 = v29;
  retstr->var4 = v30;
  retstr->var5 = v31;
  retstr->var6 = v32;
  retstr->var7 = v33;

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t __46__HMDCloudShareTrustManager_trustStatusCounts__block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    return (a2 * 100.0 / v3);
  }

  return a3;
}

- (BOOL)isFromOwner
{
  v3 = [(HMDCloudShareTrustManager *)self dataSource];
  v4 = [v3 homeForCloudShareTrustManager:self];

  v5 = [v4 currentUser];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 isOwner];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)manager:(id)a3 didRequestSendForInvitation:(id)a4 toDevice:(id)a5
{
  v7 = a5;
  v9 = a4;
  v8 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v8);

  [(HMDCloudShareTrustManager *)self sendShareInvitation:v9 toUser:0 device:v7];
}

- (void)manager:(id)a3 didRequestSendForInvitation:(id)a4 toUser:(id)a5
{
  v7 = a5;
  v9 = a4;
  v8 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v8);

  [(HMDCloudShareTrustManager *)self sendShareInvitation:v9 toUser:v7 device:0];
}

- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4
{
  v5 = a4;
  v6 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v6);

  if ([(HMDCloudShareTrustManager *)self configureState]== 3)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(HMDCloudShareTrustManager *)self dataSource];
    v7 = [v8 cloudShareTrustManager:self shouldShareTrustWithUser:v5];
  }

  return v7;
}

- (void)messenger:(id)a3 didReceiveInvitationData:(id)a4 completion:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v46 = v15;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Received trust zone invitation", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  v16 = MEMORY[0x277CCAAC8];
  v17 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v44 = 0;
  v18 = [v16 _strictlyUnarchivedObjectOfClasses:v17 fromData:v9 error:&v44];
  v19 = v44;

  if (v18)
  {
    v20 = [(HMDCloudShareTrustManager *)v13 database];
    v21 = [v20 acceptInvitation:v18];
    v22 = MEMORY[0x277D2C938];
    [(HMDCloudShareTrustManager *)v13 queue];
    v24 = v23 = v10;
    [v22 schedulerWithDispatchQueue:v24];
    v39 = v19;
    v25 = v9;
    v27 = v26 = v8;
    v28 = [v21 reschedule:v27];

    v10 = v23;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __75__HMDCloudShareTrustManager_messenger_didReceiveInvitationData_completion___block_invoke;
    v42[3] = &unk_279733F30;
    v42[4] = v13;
    v29 = v23;
    v43 = v29;
    v30 = [v28 addFailureBlock:v42];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __75__HMDCloudShareTrustManager_messenger_didReceiveInvitationData_completion___block_invoke_40;
    v40[3] = &unk_2797243D8;
    v40[4] = v13;
    v31 = v29;
    v8 = v26;
    v9 = v25;
    v19 = v39;
    v41 = v31;
    v32 = [v28 addSuccessBlock:v40];
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v13;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v36;
      v47 = 2112;
      v48 = v19;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize trust zone invitation data, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v37 = [(HMDCloudShareTrustManager *)v34 metricsEventDispatcher];
    [v37 submitFailureEventWithEventErrorCode:9 error:v19];

    (*(v10 + 2))(v10, 0, v19);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __75__HMDCloudShareTrustManager_messenger_didReceiveInvitationData_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Trust zone invitation was not accepted: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) metricsEventDispatcher];
  [v8 submitFailureEventWithEventErrorCode:11 error:v3];

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

void __75__HMDCloudShareTrustManager_messenger_didReceiveInvitationData_completion___block_invoke_40(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Trust zone invitation was accepted", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _configure];
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)messenger:(id)a3 didReceiveInvitationRequestFromUser:(id)a4 device:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v9 shortDescription];
    v17 = [v10 shortDescription];
    v20 = 138543874;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Received invitation request from user %@ and device %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v18 = [(HMDCloudShareTrustManager *)v13 cloudShareParticipantsManager];
  [v18 inviteUser:v9 usingDevice:v10];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Trust zone updated unknown model: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDCloudShareTrustManager *)v9 metricsEventDispatcher];
  [v12 submitFailureEventWithEventErrorCode:8];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Trust zone deleted unknown model: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDCloudShareTrustManager *)v9 metricsEventDispatcher];
  [v12 submitFailureEventWithEventErrorCode:7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)a3 didProcessModelCreation:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Trust zone created unknown model: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDCloudShareTrustManager *)v9 metricsEventDispatcher];
  [v12 submitFailureEventWithEventErrorCode:6];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cloudZone:(id)a3 didRemoveParticipantWithClientIdentifier:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Trust zone removed participant with client identifier: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDCloudShareTrustManager *)v9 delegate];
  [v12 cloudShareTrustManager:v9 didRemoveUserWithUUID:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cloudZone:(id)a3 didUpdateParticipantWithClientIdentifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v11;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Trust zone updated participant with client identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDCloudShareTrustManager *)v9 dataSource];
  v13 = [v12 homeForCloudShareTrustManager:v9];

  v14 = [v13 userWithUUID:v7];
  if (v14)
  {
    v15 = [(HMDCloudShareTrustManager *)v9 queue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __80__HMDCloudShareTrustManager_cloudZone_didUpdateParticipantWithClientIdentifier___block_invoke;
    v21[3] = &unk_2797359B0;
    v21[4] = v9;
    v22 = v14;
    dispatch_async(v15, v21);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find user with UUID matching updated participant client identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setConfigureState:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_configureState == 3)
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = HMDCloudShareTrustManagerConfigureStateAsString(a3);
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot change from removed state to: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [(HMDCloudShareTrustManager *)v6 metricsEventDispatcher];
    [v10 submitFailureEventWithEventErrorCode:5];

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    self->_configureState = a3;
    v12 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (int64_t)configureState
{
  os_unfair_lock_lock_with_options();
  configureState = self->_configureState;
  os_unfair_lock_unlock(&self->_lock);
  return configureState;
}

- (void)_homeDidBecomeTrustZoneCapable:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Owner is now capable of establishing trust zones", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCloudShareTrustManager *)v7 requestInviteTimer];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v7;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Skipping reconfigure since a request invite timer exists", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    [(HMDCloudShareTrustManager *)v7 _configure];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)homeDidBecomeTrustZoneCapable:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudShareTrustManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDCloudShareTrustManager_homeDidBecomeTrustZoneCapable___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)sendShareInvitation:(id)a3 toUser:(id)a4 device:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v11);

  v41 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v41];
  v13 = v41;
  if (v12)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__HMDCloudShareTrustManager_sendShareInvitation_toUser_device___block_invoke;
    aBlock[3] = &unk_27972B728;
    aBlock[4] = self;
    v14 = v9;
    v40 = v14;
    v15 = _Block_copy(aBlock);
    if (!(v14 | v10))
    {
      _HMFPreconditionFailure();
    }

    v16 = v15;
    if (v14)
    {
      v36 = v9;
      v37 = v13;
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v14 shortDescription];
        *buf = 138543618;
        v43 = v20;
        v44 = 2112;
        v45 = v21;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending trust zone invitation to user: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = [(HMDCloudShareTrustManager *)v18 cloudShareMessenger];
      v23 = +[HMDHomeKitVersion version6];
      v24 = [MEMORY[0x277CBEB98] set];
      [v22 sendShareInvitationData:v12 toUser:v14 minimumHomeKitVersion:v23 requiredSupportedFeatures:v24 completion:v16];

      v9 = v36;
      v13 = v37;
    }

    else
    {
      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      v30 = objc_autoreleasePoolPush();
      v31 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v33 = v38 = v13;
        v34 = [v10 shortDescription];
        *buf = 138543618;
        v43 = v33;
        v44 = 2112;
        v45 = v34;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Sending trust zone invitation to device: %@", buf, 0x16u);

        v13 = v38;
      }

      objc_autoreleasePoolPop(v30);
      v22 = [(HMDCloudShareTrustManager *)v31 cloudShareMessenger];
      [v22 sendShareInvitationData:v12 toDevice:v10 completion:v16];
    }

    goto LABEL_15;
  }

  v25 = objc_autoreleasePoolPush();
  v26 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v28;
    v44 = 2112;
    v45 = v13;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize trust zone invitation: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v29 = [(HMDCloudShareTrustManager *)v26 metricsEventDispatcher];
  [v29 submitFailureEventWithEventErrorCode:10 error:v13];

LABEL_16:
  v35 = *MEMORY[0x277D85DE8];
}

void __63__HMDCloudShareTrustManager_sendShareInvitation_toUser_device___block_invoke(uint64_t a1, char a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) uuid];
      *buf = 138543618;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Trust zone invitation was accepted by user with id: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [*(a1 + 40) cloudShareID];

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 40) uuid];
        *buf = 138543618;
        v34 = v16;
        v35 = 2112;
        v36 = v17;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@User already has cloud share ID. Skip cloud pull. user id: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }

    else
    {
      v21 = [MEMORY[0x277D17108] optionsWithLabel:@"Fetch due to new participant"];
      v22 = [*(a1 + 32) cloudZone];
      v23 = [v22 performCloudPullWithOptions:v21];
      v24 = MEMORY[0x277D2C938];
      v25 = [*(a1 + 32) queue];
      v26 = [v24 schedulerWithDispatchQueue:v25];
      v27 = [v23 reschedule:v26];

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __63__HMDCloudShareTrustManager_sendShareInvitation_toUser_device___block_invoke_29;
      v32[3] = &unk_2797359D8;
      v32[4] = *(a1 + 32);
      v28 = [v27 addFailureBlock:v32];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __63__HMDCloudShareTrustManager_sendShareInvitation_toUser_device___block_invoke_30;
      v31[3] = &unk_2797358F0;
      v31[4] = *(a1 + 32);
      v29 = [v27 addSuccessBlock:v31];
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 40) uuid];
      *buf = 138543874;
      v34 = v18;
      v35 = 2112;
      v36 = v19;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Trust zone invitation was not accepted by user with id: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v20 = [*(a1 + 32) metricsEventDispatcher];
    [v20 submitFailureEventWithEventErrorCode:11 error:v5];
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __63__HMDCloudShareTrustManager_sendShareInvitation_toUser_device___block_invoke_29(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Cloud pull fail with error:%@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) metricsEventDispatcher];
  [v8 submitFailureEventWithEventErrorCode:12 error:v3];

  v9 = *MEMORY[0x277D85DE8];
}

void __63__HMDCloudShareTrustManager_sendShareInvitation_toUser_device___block_invoke_30(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Cloud pull was successful", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) updateCloudShareIDForAllUsers];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)discoverUntrustedUsers
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudShareTrustManager *)self dataSource];
  v38 = self;
  v4 = [v3 homeForCloudShareTrustManager:self];

  v5 = [MEMORY[0x277CBEB58] set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = [v4 users];
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        v12 = [v11 cloudShareID];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 isOwner];

          if ((v14 & 1) == 0)
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v8);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = [(HMDCloudShareTrustManager *)v38 cloudZone];
  v16 = [v15 participants];

  v17 = [v16 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v43 + 1) + 8 * j) clientIdentifier];
        v22 = [v4 userWithUUID:v21];

        if (v22)
        {
          [v5 removeObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v18);
  }

  v37 = v4;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = v5;
  v24 = [v23 countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v40;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v39 + 1) + 8 * k);
        v29 = objc_autoreleasePoolPush();
        v30 = v38;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v33 = [v28 uuid];
          *buf = 138543618;
          v52 = v32;
          v53 = 2112;
          v54 = v33;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Discovered untrusted user with id: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        v34 = [(HMDCloudShareTrustManager *)v30 delegate];
        v35 = [v28 uuid];
        [v34 cloudShareTrustManager:v30 didRemoveUserWithUUID:v35];
      }

      v25 = [v23 countByEnumeratingWithState:&v39 objects:v55 count:16];
    }

    while (v25);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)updateCloudShareIDForUser:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v5);

  if (([v4 isOwner] & 1) == 0)
  {
    v6 = [v4 cloudShareID];

    if (!v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [v4 shortDescription];
        *buf = 138543618;
        v28 = v10;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetching cloud share ID for shared user: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [(HMDCloudShareTrustManager *)v8 cloudZone];
      v13 = [v4 uuid];
      v14 = [v12 fetchCloudShareIDForShareParticipantClientIdentifier:v13];
      v15 = MEMORY[0x277D2C938];
      v16 = [(HMDCloudShareTrustManager *)v8 queue];
      v17 = [v15 schedulerWithDispatchQueue:v16];
      v18 = [v14 reschedule:v17];

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __55__HMDCloudShareTrustManager_updateCloudShareIDForUser___block_invoke;
      v25[3] = &unk_2797358C8;
      v25[4] = v8;
      v19 = v4;
      v26 = v19;
      v20 = [v18 addFailureBlock:v25];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __55__HMDCloudShareTrustManager_updateCloudShareIDForUser___block_invoke_22;
      v23[3] = &unk_2797243B0;
      v23[4] = v8;
      v24 = v19;
      v21 = [v18 addSuccessBlock:v23];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __55__HMDCloudShareTrustManager_updateCloudShareIDForUser___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) shortDescription];
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch cloud share ID for %@: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [*(a1 + 32) metricsEventDispatcher];
  [v9 submitFailureEventWithEventErrorCode:4 error:v3];

  v10 = *MEMORY[0x277D85DE8];
}

void __55__HMDCloudShareTrustManager_updateCloudShareIDForUser___block_invoke_22(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) shortDescription];
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Received cloud share ID for %@: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) updateCloudShareID:v3];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateCloudShareIDForAllUsers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCloudShareTrustManager *)self dataSource];
  v5 = [v4 homeForCloudShareTrustManager:self];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 users];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HMDCloudShareTrustManager *)self updateCloudShareIDForUser:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentUserCloudShareID
{
  v3 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCloudShareTrustManager *)self cloudZone];
  v5 = [v4 fetchCurrentParticipantCloudShareID];
  v6 = MEMORY[0x277D2C938];
  v7 = [(HMDCloudShareTrustManager *)self queue];
  v8 = [v6 schedulerWithDispatchQueue:v7];
  v9 = [v5 reschedule:v8];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HMDCloudShareTrustManager_updateCurrentUserCloudShareID__block_invoke;
  v13[3] = &unk_2797359D8;
  v13[4] = self;
  v10 = [v9 addFailureBlock:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HMDCloudShareTrustManager_updateCurrentUserCloudShareID__block_invoke_21;
  v12[3] = &unk_279724388;
  v12[4] = self;
  v11 = [v9 addSuccessBlock:v12];
}

void __58__HMDCloudShareTrustManager_updateCurrentUserCloudShareID__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch cloud share id for current user, error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) setConfigureState:0];
  [*(a1 + 32) setLocalZone:0];
  [*(a1 + 32) setCloudZone:0];
  v8 = [*(a1 + 32) metricsEventDispatcher];
  [v8 submitFailureEventWithEventErrorCode:4 error:v3];

  v9 = *MEMORY[0x277D85DE8];
}

void __58__HMDCloudShareTrustManager_updateCurrentUserCloudShareID__block_invoke_21(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 homeForCloudShareTrustManager:*(a1 + 32)];

  v6 = [v5 currentUser];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received current user cloud share id: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [v6 updateCloudShareID:v3];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeTrust
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDCloudShareTrustManager *)self configureState]== 3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMDCloudShareTrustManagerConfigureStateAsString([(HMDCloudShareTrustManager *)v5 configureState]);
      *buf = 138543618;
      v32 = v7;
      v33 = 2112;
      v34 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Skipping remove trust due to configure state: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [(HMDCloudShareTrustManager *)self setConfigureState:3];
    v9 = [(HMDCloudShareTrustManager *)self cloudShareMessenger];
    [v9 unconfigure];

    v10 = [(HMDCloudShareTrustManager *)self dataSource];
    v11 = [v10 zoneNameForCloudShareTrustManager:self];

    v12 = [(HMDCloudShareTrustManager *)self isOwnedTrust];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v16)
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v17;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Removing owned cloud share trust", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v18 = [(HMDCloudShareTrustManager *)v14 database];
      v19 = [v18 removePrivateZonesWithName:v11];
    }

    else
    {
      if (v16)
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v20;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Removing shared cloud share trust", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v18 = [(HMDCloudShareTrustManager *)v14 database];
      v19 = [v18 removeSharedZonesWithName:v11];
    }

    v21 = v19;
    v22 = MEMORY[0x277D2C938];
    v23 = [(HMDCloudShareTrustManager *)v14 queue];
    v24 = [v22 schedulerWithDispatchQueue:v23];
    v25 = [v21 reschedule:v24];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __40__HMDCloudShareTrustManager_removeTrust__block_invoke;
    v30[3] = &unk_2797359D8;
    v30[4] = v14;
    v26 = [v25 addFailureBlock:v30];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __40__HMDCloudShareTrustManager_removeTrust__block_invoke_19;
    v29[3] = &unk_2797358F0;
    v29[4] = v14;
    v27 = [v25 addSuccessBlock:v29];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __40__HMDCloudShareTrustManager_removeTrust__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed cloud share trust removal, error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) metricsEventDispatcher];
  [v8 submitFailureEventWithEventErrorCode:3 error:v3];

  v9 = *MEMORY[0x277D85DE8];
}

void __40__HMDCloudShareTrustManager_removeTrust__block_invoke_19(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Cloud share trust has been removed", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) setCloudZone:0];
  [*(a1 + 32) setLocalZone:0];
  v8 = [*(a1 + 32) delegate];
  [v8 didRemoveTrustZoneInCloudShareTrustManager:*(a1 + 32)];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_finishConfigure
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v3);

  [(HMDCloudShareTrustManager *)self setConfigureState:2];
  v4 = [(HMDCloudShareTrustManager *)self delegate];
  [v4 didFinishConfiguringForCloudShareTrustManager:self];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Trust manager finished configuring", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDCloudShareTrustManager *)v6 isOwnedTrust])
  {
    [(HMDCloudShareTrustManager *)v6 updateCloudShareIDForAllUsers];
    [(HMDCloudShareTrustManager *)v6 discoverUntrustedUsers];
  }

  else
  {
    [(HMDCloudShareTrustManager *)v6 updateCurrentUserCloudShareID];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_configureOwnerCloudShareIDWithCloudZone:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching trust owner cloud share id", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v4 fetchOwnerParticipantCloudShareID];
  v11 = MEMORY[0x277D2C938];
  v12 = [(HMDCloudShareTrustManager *)v7 queue];
  v13 = [v11 schedulerWithDispatchQueue:v12];
  v14 = [v10 reschedule:v13];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__HMDCloudShareTrustManager__configureOwnerCloudShareIDWithCloudZone___block_invoke;
  v19[3] = &unk_2797359D8;
  v19[4] = v7;
  v15 = [v14 addFailureBlock:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__HMDCloudShareTrustManager__configureOwnerCloudShareIDWithCloudZone___block_invoke_17;
  v18[3] = &unk_279724388;
  v18[4] = v7;
  v16 = [v14 addSuccessBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __70__HMDCloudShareTrustManager__configureOwnerCloudShareIDWithCloudZone___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Could not read owner cloud share id in trust zone, error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) setConfigureState:0];
  [*(a1 + 32) setCloudShareParticipantsManager:0];
  [*(a1 + 32) setLocalZone:0];
  [*(a1 + 32) setCloudZone:0];
  v8 = [*(a1 + 32) metricsEventDispatcher];
  [v8 submitFailureEventWithEventErrorCode:4 error:v3];

  v9 = *MEMORY[0x277D85DE8];
}

void __70__HMDCloudShareTrustManager__configureOwnerCloudShareIDWithCloudZone___block_invoke_17(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  [v4 cloudShareTrustManager:*(a1 + 32) didFetchOwnerCloudShareID:v3];

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Read trust zone owner cloud share ID: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) setOwnerCloudShareID:v3];
  [*(a1 + 32) _finishConfigure];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_configureWithFetchZoneResult:(id)a3 error:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v6)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *v39 = 138543362;
      *&v39[4] = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Did fetch trust cloud zone", v39, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [v6 cloudZone];
    [(HMDCloudShareTrustManager *)v10 setCloudZone:v14];

    if ([(HMDCloudShareTrustManager *)v10 isOwnedTrust])
    {
      v15 = [(HMDCloudShareTrustManager *)v10 cloudZone];
      v16 = [v15 registerSubscriptionForExternalRecordType:0];
    }

    v17 = [v6 localZone];
    [(HMDCloudShareTrustManager *)v10 setLocalZone:v17];

    v18 = [(HMDCloudShareTrustManager *)v10 localZone];
    [v18 startUp];

    if ([(HMDCloudShareTrustManager *)v10 isOwnedTrust])
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v10;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *v39 = 138543362;
        *&v39[4] = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Starting participant manager to share trust zone", v39, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [(HMDCloudShareTrustManager *)v20 dataSource];
      v24 = [v23 homeForCloudShareTrustManager:v20];

      v25 = [(HMDCloudShareTrustManager *)v20 participantsManagerFactory];
      v26 = [(HMDCloudShareTrustManager *)v20 queue];
      v27 = [v6 cloudZone];
      v28 = (v25)[2](v25, v26, v27, v24);
      [(HMDCloudShareTrustManager *)v20 setCloudShareParticipantsManager:v28];

      v29 = [(HMDCloudShareTrustManager *)v20 cloudShareParticipantsManager];
      [v29 setDataSource:v20];

      v30 = [(HMDCloudShareTrustManager *)v20 cloudShareParticipantsManager];
      [v30 setDelegate:v20];

      v31 = [(HMDCloudShareTrustManager *)v20 cloudShareParticipantsManager];
      [v31 configure];

      v32 = [(HMDCloudShareTrustManager *)v20 cloudShareParticipantsManager];
      [v32 updateShareParticipants];
    }

    v33 = [v6 cloudZone];
    [(HMDCloudShareTrustManager *)v10 _configureOwnerCloudShareIDWithCloudZone:v33];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [(HMDCloudShareTrustManager *)v10 isOwnedTrust];
      v36 = @"Shared Zone";
      *v39 = 138543874;
      *&v39[4] = v34;
      *&v39[12] = 2112;
      if (v35)
      {
        v36 = @"Owned Zone";
      }

      *&v39[14] = v36;
      v40 = 2112;
      v41 = v7;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to open trust zone: %@, error: %@", v39, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCloudShareTrustManager *)v10 setConfigureState:0];
    v33 = [(HMDCloudShareTrustManager *)v10 metricsEventDispatcher];
    if ([(HMDCloudShareTrustManager *)v10 isOwnedTrust])
    {
      v37 = 1;
    }

    else
    {
      v37 = 2;
    }

    [v33 submitFailureEventWithEventErrorCode:v37 error:{v7, *v39}];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_requestShareInvitationForSharedZone
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCloudShareTrustManager *)self dataSource];
  if ([v4 isOwnerCapableForTrustManager:self])
  {
    v5 = [(HMDCloudShareTrustManager *)self ownerCloudShareID];

    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v9;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@We have a cloud share ID for the owner, but we aren't invited to the share", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
    }

    [(HMDCloudShareTrustManager *)self _startRequestInviteTimer];
    v10 = [v4 ownerForCloudShareTrustManager:self];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v10 uuid];
      v22 = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Requesting trust zone share invitation from trust owner with id: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [(HMDCloudShareTrustManager *)v12 cloudShareMessenger];
    [v16 requestShareInvitationDataFromUser:v10];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Skipping request for trust invitation due to owner being incapable of setting up trust", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_configureWithSharedZone
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCloudShareTrustManager *)self database];
  v5 = [v4 registerSharedSubscriptionForExternalRecordType:0];

  v6 = [(HMDCloudShareTrustManager *)self database];
  v7 = [(HMDCloudShareTrustManager *)self dataSource];
  v8 = [v7 zoneNameForCloudShareTrustManager:self];
  v9 = [v6 existingSharedZoneIDWithName:v8];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Got zoneID for shared trust zone: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [(HMDCloudShareTrustManager *)v11 database];
    v16 = objc_alloc_init(MEMORY[0x277D17068]);
    v21 = 0;
    v17 = [v15 sharedZonesWithID:v9 configuration:v16 delegate:v11 error:&v21];
    v18 = v21;

    [(HMDCloudShareTrustManager *)v11 _configureWithFetchZoneResult:v17 error:v18];
  }

  else
  {
    if (v13)
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v19;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@No shared trust zone exists yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDCloudShareTrustManager *)v11 _requestShareInvitationForSharedZone];
    [(HMDCloudShareTrustManager *)v11 setConfigureState:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_configureWithOwnedZone
{
  v3 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(MEMORY[0x277D170E8]);
  [v4 setShouldRebuildOnManateeKeyLoss:1];
  v5 = [(HMDCloudShareTrustManager *)self database];
  v6 = [(HMDCloudShareTrustManager *)self dataSource];
  v7 = [v6 zoneNameForCloudShareTrustManager:self];
  v10 = 0;
  v8 = [v5 privateZonesWithName:v7 configuration:v4 delegate:self error:&v10];
  v9 = v10;

  [(HMDCloudShareTrustManager *)self _configureWithFetchZoneResult:v8 error:v9];
}

- (void)_configure
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDCloudShareTrustManager *)self configureState])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMDCloudShareTrustManagerConfigureStateAsString([(HMDCloudShareTrustManager *)v5 configureState]);
      v18 = 138543618;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Skipping cloud share trust configure. Trust already in configure state: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [(HMDCloudShareTrustManager *)self setConfigureState:1];
    v9 = [(HMDCloudShareTrustManager *)self cloudShareMessenger];
    [v9 configure];

    v10 = [(HMDCloudShareTrustManager *)self isOwnedTrust];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v14)
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v15;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Configuring cloud share trust with owned trust", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [(HMDCloudShareTrustManager *)v12 _configureWithOwnedZone];
    }

    else
    {
      if (v14)
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Configuring cloud share trust with shared trust", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [(HMDCloudShareTrustManager *)v12 _configureWithSharedZone];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v3 = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v6 = [(HMDCloudShareTrustManager *)self dataSource];
  v4 = [v6 homeForCloudShareTrustManager:self];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_homeDidBecomeTrustZoneCapable_ name:@"HMDHomeOwnerBecameTrustZoneCapableNotification" object:v4];

  [(HMDCloudShareTrustManager *)self _configure];
}

- (HMDCloudShareTrustManager)initWithDatabase:(id)a3 isOwnedTrust:(BOOL)a4 queue:(id)a5 shareMessenger:(id)a6 ownerCloudShareID:(id)a7 logEventSubmitter:(id)a8 dailyScheduler:(id)a9
{
  v30 = a3;
  v29 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v31.receiver = self;
  v31.super_class = HMDCloudShareTrustManager;
  v20 = [(HMDCloudShareTrustManager *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_queue, a5);
    v21->_ownedTrust = a4;
    objc_storeStrong(&v21->_ownerCloudShareID, a7);
    objc_storeStrong(&v21->_database, a3);
    [(HMDDatabase *)v21->_database addDelegate:v21, v29, v30];
    v21->_configureState = 0;
    objc_storeStrong(&v21->_cloudShareMessenger, a6);
    [(HMDCloudShareMessenger *)v21->_cloudShareMessenger setDelegate:v21];
    participantsManagerFactory = v21->_participantsManagerFactory;
    v21->_participantsManagerFactory = &__block_literal_global_25970;

    requestInviteTimerFactory = v21->_requestInviteTimerFactory;
    v21->_requestInviteTimerFactory = &__block_literal_global_3_25971;

    if (v18 && v19)
    {
      v24 = [HMDCloudShareTrustManagerMetricsEventDispatcher alloc];
      v25 = [v16 messageTargetUUID];
      v26 = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)v24 initWithIdentifier:v25 logEventSubmitter:v18 dailyScheduler:v19 dataSource:v21];
      metricsEventDispatcher = v21->_metricsEventDispatcher;
      v21->_metricsEventDispatcher = v26;
    }

    [(HMDCloudShareTrustManagerMetricsEventDispatcher *)v21->_metricsEventDispatcher registerForDailyTrustManagerEvents];
  }

  return v21;
}

id __131__HMDCloudShareTrustManager_initWithDatabase_isOwnedTrust_queue_shareMessenger_ownerCloudShareID_logEventSubmitter_dailyScheduler___block_invoke_2(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v4 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:a4 maximumTimeInterval:0 exponentialFactor:a1 options:a2];

  return v4;
}

HMDCloudShareParticipantsManager *__131__HMDCloudShareTrustManager_initWithDatabase_isOwnedTrust_queue_shareMessenger_ownerCloudShareID_logEventSubmitter_dailyScheduler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = [[HMDCloudShareParticipantsManager alloc] initWithQueue:v8 cloudZone:v7 home:v6];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t54 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t54, &__block_literal_global_44);
  }

  v3 = logCategory__hmf_once_v55;

  return v3;
}

uint64_t __40__HMDCloudShareTrustManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v55;
  logCategory__hmf_once_v55 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end