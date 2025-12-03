@interface HMDCloudShareTrustManager
+ (id)logCategory;
- (BOOL)isFromOwner;
- (BOOL)manager:(id)manager shouldShareWithUser:(id)user;
- (CloudShareTrustManagerTrustStatusCounts)trustStatusCounts;
- (HMDCloudShareTrustManager)initWithDatabase:(id)database isOwnedTrust:(BOOL)trust queue:(id)queue shareMessenger:(id)messenger ownerCloudShareID:(id)d logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler;
- (HMDCloudShareTrustManagerDataSource)dataSource;
- (HMDCloudShareTrustManagerDelegate)delegate;
- (id)attributeDescriptions;
- (id)homeForCloudShareTrustManagerMetricsEventDispatcher:(id)dispatcher;
- (id)logIdentifier;
- (int64_t)configureState;
- (void)_cancelRequestInviteTimer;
- (void)_configure;
- (void)_configureOwnerCloudShareIDWithCloudZone:(id)zone;
- (void)_configureWithFetchZoneResult:(id)result error:(id)error;
- (void)_configureWithOwnedZone;
- (void)_configureWithSharedZone;
- (void)_didCreateZone;
- (void)_didRemoveZone;
- (void)_finishConfigure;
- (void)_homeDidBecomeTrustZoneCapable:(id)capable;
- (void)_requestShareInvitationForSharedZone;
- (void)_startRequestInviteTimer;
- (void)cloudZone:(id)zone didRemoveParticipantWithClientIdentifier:(id)identifier;
- (void)cloudZone:(id)zone didUpdateParticipantWithClientIdentifier:(id)identifier;
- (void)configure;
- (void)database:(id)database didCreateZoneWithName:(id)name isPrivate:(BOOL)private;
- (void)database:(id)database didRemoveZoneWithName:(id)name isPrivate:(BOOL)private;
- (void)discoverUntrustedUsers;
- (void)homeDidBecomeTrustZoneCapable:(id)capable;
- (void)localZone:(id)zone didProcessModelCreation:(id)creation;
- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion;
- (void)localZone:(id)zone didProcessModelUpdate:(id)update;
- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toDevice:(id)device;
- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toUser:(id)user;
- (void)messenger:(id)messenger didReceiveInvitationData:(id)data completion:(id)completion;
- (void)messenger:(id)messenger didReceiveInvitationRequestFromUser:(id)user device:(id)device;
- (void)removeTrust;
- (void)sendShareInvitation:(id)invitation toUser:(id)user device:(id)device;
- (void)setConfigureState:(int64_t)state;
- (void)timerDidFire:(id)fire;
- (void)updateCloudShareIDForAllUsers;
- (void)updateCloudShareIDForUser:(id)user;
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

- (void)timerDidFire:(id)fire
{
  v26 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  requestInviteTimer = [(HMDCloudShareTrustManager *)self requestInviteTimer];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (requestInviteTimer == fireCopy)
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Request invite timer fired", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    if ([(HMDCloudShareTrustManager *)selfCopy configureState]== 2 || [(HMDCloudShareTrustManager *)selfCopy configureState]== 3)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Canceling request invite timer due to trust manager configure state: %@", &v22, 0x16u);
    }

    else
    {
      requestInviteTimer2 = [(HMDCloudShareTrustManager *)selfCopy requestInviteTimer];
      [requestInviteTimer2 timeInterval];
      v21 = v20;

      if (v21 < 86400.0)
      {
        [(HMDCloudShareTrustManager *)selfCopy _configure];
        goto LABEL_13;
      }

      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v15 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      v16 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Canceling request invite timer due to reaching max interval time", &v22, 0xCu);
    }

    goto LABEL_12;
  }

  if (v10)
  {
    v11 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = fireCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received timer did fire call from unknown timer: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_cancelRequestInviteTimer
{
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDCloudShareTrustManager *)self setRequestInviteTimer:0];
}

- (void)_startRequestInviteTimer
{
  v22 = *MEMORY[0x277D85DE8];
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  requestInviteTimer = [(HMDCloudShareTrustManager *)self requestInviteTimer];

  if (requestInviteTimer)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Request invite timer already started", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    requestInviteTimerFactory = [(HMDCloudShareTrustManager *)self requestInviteTimerFactory];
    v10 = requestInviteTimerFactory[2](requestInviteTimerFactory, 3, 30.0, 86400.0);
    [(HMDCloudShareTrustManager *)self setRequestInviteTimer:v10];

    requestInviteTimer2 = [(HMDCloudShareTrustManager *)self requestInviteTimer];
    [requestInviteTimer2 setDelegate:self];

    queue2 = [(HMDCloudShareTrustManager *)self queue];
    requestInviteTimer3 = [(HMDCloudShareTrustManager *)self requestInviteTimer];
    [requestInviteTimer3 setDelegateQueue:queue2];

    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Starting request invite timer", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    requestInviteTimer4 = [(HMDCloudShareTrustManager *)selfCopy2 requestInviteTimer];
    [requestInviteTimer4 resume];
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
  ownerCloudShareID = [(HMDCloudShareTrustManager *)self ownerCloudShareID];
  v11 = [v9 initWithName:@"ownerCloudShareID" value:ownerCloudShareID];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)logIdentifier
{
  dataSource = [(HMDCloudShareTrustManager *)self dataSource];
  v4 = [dataSource zoneNameForCloudShareTrustManager:self];

  return v4;
}

- (void)_didRemoveZone
{
  v13 = *MEMORY[0x277D85DE8];
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Trust zone has been removed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  metricsEventDispatcher = [(HMDCloudShareTrustManager *)selfCopy metricsEventDispatcher];
  [metricsEventDispatcher submitTrustZoneRemovedEvent];

  delegate = [(HMDCloudShareTrustManager *)selfCopy delegate];
  [delegate didRemoveTrustZoneInCloudShareTrustManager:selfCopy];

  [(HMDCloudShareTrustManager *)selfCopy setConfigureState:3];
  [(HMDCloudShareTrustManager *)selfCopy setCloudZone:0];
  [(HMDCloudShareTrustManager *)selfCopy setLocalZone:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)database didRemoveZoneWithName:(id)name isPrivate:(BOOL)private
{
  privateCopy = private;
  nameCopy = name;
  dataSource = [(HMDCloudShareTrustManager *)self dataSource];
  v9 = [dataSource zoneNameForCloudShareTrustManager:self];

  LODWORD(dataSource) = [nameCopy isEqualToString:v9];
  if (dataSource && [(HMDCloudShareTrustManager *)self isOwnedTrust]== privateCopy)
  {
    queue = [(HMDCloudShareTrustManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HMDCloudShareTrustManager_database_didRemoveZoneWithName_isPrivate___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_didCreateZone
{
  v16 = *MEMORY[0x277D85DE8];
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Trust zone has been created", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  metricsEventDispatcher = [(HMDCloudShareTrustManager *)selfCopy metricsEventDispatcher];
  [metricsEventDispatcher submitTrustZoneCreatedEvent];

  if ([(HMDCloudShareTrustManager *)selfCopy configureState]== 3)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Forcing trust from removed to unconfigured state due to a zone creation notification", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    os_unfair_lock_lock_with_options();
    v10->_configureState = 0;
    os_unfair_lock_unlock(&v10->_lock);
  }

  [(HMDCloudShareTrustManager *)selfCopy _configure];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)database didCreateZoneWithName:(id)name isPrivate:(BOOL)private
{
  privateCopy = private;
  nameCopy = name;
  dataSource = [(HMDCloudShareTrustManager *)self dataSource];
  v9 = [dataSource zoneNameForCloudShareTrustManager:self];

  LODWORD(dataSource) = [nameCopy isEqualToString:v9];
  if (dataSource && [(HMDCloudShareTrustManager *)self isOwnedTrust]== privateCopy)
  {
    queue = [(HMDCloudShareTrustManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HMDCloudShareTrustManager_database_didCreateZoneWithName_isPrivate___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (id)homeForCloudShareTrustManagerMetricsEventDispatcher:(id)dispatcher
{
  dataSource = [(HMDCloudShareTrustManager *)self dataSource];
  v5 = [dataSource homeForCloudShareTrustManager:self];

  return v5;
}

- (CloudShareTrustManagerTrustStatusCounts)trustStatusCounts
{
  v51 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDCloudShareTrustManager *)self dataSource];
  v5 = [dataSource homeForCloudShareTrustManager:self];

  v37 = v5;
  users = [v5 users];
  v36 = [users count];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = users;
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
          cloudShareParticipantsManager = [(HMDCloudShareTrustManager *)self cloudShareParticipantsManager];
          participatingUsers = [cloudShareParticipantsManager participatingUsers];
          v16 = [participatingUsers containsObject:v13];

          if (v16)
          {
            cloudShareParticipantsManager2 = [(HMDCloudShareTrustManager *)self cloudShareParticipantsManager];
            v18 = [cloudShareParticipantsManager2 isAcceptedParticipatingUser:v13];

            cloudShareID = [v13 cloudShareID];

            if (v18)
            {
              ++v41;
              if (cloudShareID)
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
              if (cloudShareID)
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
  dataSource = [(HMDCloudShareTrustManager *)self dataSource];
  v4 = [dataSource homeForCloudShareTrustManager:self];

  currentUser = [v4 currentUser];
  v6 = currentUser;
  if (currentUser)
  {
    isOwner = [currentUser isOwner];
  }

  else
  {
    isOwner = 0;
  }

  return isOwner;
}

- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toDevice:(id)device
{
  deviceCopy = device;
  invitationCopy = invitation;
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDCloudShareTrustManager *)self sendShareInvitation:invitationCopy toUser:0 device:deviceCopy];
}

- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toUser:(id)user
{
  userCopy = user;
  invitationCopy = invitation;
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDCloudShareTrustManager *)self sendShareInvitation:invitationCopy toUser:userCopy device:0];
}

- (BOOL)manager:(id)manager shouldShareWithUser:(id)user
{
  userCopy = user;
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDCloudShareTrustManager *)self configureState]== 3)
  {
    v7 = 0;
  }

  else
  {
    dataSource = [(HMDCloudShareTrustManager *)self dataSource];
    v7 = [dataSource cloudShareTrustManager:self shouldShareTrustWithUser:userCopy];
  }

  return v7;
}

- (void)messenger:(id)messenger didReceiveInvitationData:(id)data completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  messengerCopy = messenger;
  dataCopy = data;
  completionCopy = completion;
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v46 = v15;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received trust zone invitation", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  v16 = MEMORY[0x277CCAAC8];
  v17 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v44 = 0;
  v18 = [v16 _strictlyUnarchivedObjectOfClasses:v17 fromData:dataCopy error:&v44];
  v19 = v44;

  if (v18)
  {
    database = [(HMDCloudShareTrustManager *)selfCopy database];
    v21 = [database acceptInvitation:v18];
    v22 = MEMORY[0x277D2C938];
    [(HMDCloudShareTrustManager *)selfCopy queue];
    v24 = v23 = completionCopy;
    [v22 schedulerWithDispatchQueue:v24];
    v39 = v19;
    v25 = dataCopy;
    v27 = v26 = messengerCopy;
    v28 = [v21 reschedule:v27];

    completionCopy = v23;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __75__HMDCloudShareTrustManager_messenger_didReceiveInvitationData_completion___block_invoke;
    v42[3] = &unk_278689A68;
    v42[4] = selfCopy;
    v29 = v23;
    v43 = v29;
    v30 = [v28 addFailureBlock:v42];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __75__HMDCloudShareTrustManager_messenger_didReceiveInvitationData_completion___block_invoke_40;
    v40[3] = &unk_2786727C0;
    v40[4] = selfCopy;
    v31 = v29;
    messengerCopy = v26;
    dataCopy = v25;
    v19 = v39;
    v41 = v31;
    v32 = [v28 addSuccessBlock:v40];
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v36;
      v47 = 2112;
      v48 = v19;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize trust zone invitation data, error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    metricsEventDispatcher = [(HMDCloudShareTrustManager *)v34 metricsEventDispatcher];
    [metricsEventDispatcher submitFailureEventWithEventErrorCode:9 error:v19];

    (*(completionCopy + 2))(completionCopy, 0, v19);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Trust zone invitation was not accepted: %@", &v10, 0x16u);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Trust zone invitation was accepted", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _configure];
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)messenger:(id)messenger didReceiveInvitationRequestFromUser:(id)user device:(id)device
{
  v26 = *MEMORY[0x277D85DE8];
  messengerCopy = messenger;
  userCopy = user;
  deviceCopy = device;
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    shortDescription = [userCopy shortDescription];
    shortDescription2 = [deviceCopy shortDescription];
    v20 = 138543874;
    v21 = v15;
    v22 = 2112;
    v23 = shortDescription;
    v24 = 2112;
    v25 = shortDescription2;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received invitation request from user %@ and device %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  cloudShareParticipantsManager = [(HMDCloudShareTrustManager *)selfCopy cloudShareParticipantsManager];
  [cloudShareParticipantsManager inviteUser:userCopy usingDevice:deviceCopy];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)zone didProcessModelUpdate:(id)update
{
  v18 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  updateCopy = update;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = updateCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Trust zone updated unknown model: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  metricsEventDispatcher = [(HMDCloudShareTrustManager *)selfCopy metricsEventDispatcher];
  [metricsEventDispatcher submitFailureEventWithEventErrorCode:8];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion
{
  v18 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  deletionCopy = deletion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = deletionCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Trust zone deleted unknown model: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  metricsEventDispatcher = [(HMDCloudShareTrustManager *)selfCopy metricsEventDispatcher];
  [metricsEventDispatcher submitFailureEventWithEventErrorCode:7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)zone didProcessModelCreation:(id)creation
{
  v18 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  creationCopy = creation;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = creationCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Trust zone created unknown model: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  metricsEventDispatcher = [(HMDCloudShareTrustManager *)selfCopy metricsEventDispatcher];
  [metricsEventDispatcher submitFailureEventWithEventErrorCode:6];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cloudZone:(id)zone didRemoveParticipantWithClientIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Trust zone removed participant with client identifier: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  delegate = [(HMDCloudShareTrustManager *)selfCopy delegate];
  [delegate cloudShareTrustManager:selfCopy didRemoveUserWithUUID:identifierCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cloudZone:(id)zone didUpdateParticipantWithClientIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v11;
    v25 = 2112;
    v26 = identifierCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Trust zone updated participant with client identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  dataSource = [(HMDCloudShareTrustManager *)selfCopy dataSource];
  v13 = [dataSource homeForCloudShareTrustManager:selfCopy];

  v14 = [v13 userWithUUID:identifierCopy];
  if (v14)
  {
    queue = [(HMDCloudShareTrustManager *)selfCopy queue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __80__HMDCloudShareTrustManager_cloudZone_didUpdateParticipantWithClientIdentifier___block_invoke;
    v21[3] = &unk_27868A750;
    v21[4] = selfCopy;
    v22 = v14;
    dispatch_async(queue, v21);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = identifierCopy;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find user with UUID matching updated participant client identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setConfigureState:(int64_t)state
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_configureState == 3)
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = HMDCloudShareTrustManagerConfigureStateAsString(state);
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot change from removed state to: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    metricsEventDispatcher = [(HMDCloudShareTrustManager *)selfCopy metricsEventDispatcher];
    [metricsEventDispatcher submitFailureEventWithEventErrorCode:5];

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    self->_configureState = state;
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

- (void)_homeDidBecomeTrustZoneCapable:(id)capable
{
  v18 = *MEMORY[0x277D85DE8];
  capableCopy = capable;
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Owner is now capable of establishing trust zones", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  requestInviteTimer = [(HMDCloudShareTrustManager *)selfCopy requestInviteTimer];

  if (requestInviteTimer)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Skipping reconfigure since a request invite timer exists", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    [(HMDCloudShareTrustManager *)selfCopy _configure];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)homeDidBecomeTrustZoneCapable:(id)capable
{
  capableCopy = capable;
  queue = [(HMDCloudShareTrustManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDCloudShareTrustManager_homeDidBecomeTrustZoneCapable___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = capableCopy;
  v6 = capableCopy;
  dispatch_async(queue, v7);
}

- (void)sendShareInvitation:(id)invitation toUser:(id)user device:(id)device
{
  v46 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  userCopy = user;
  deviceCopy = device;
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v41 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:invitationCopy requiringSecureCoding:1 error:&v41];
  v13 = v41;
  if (v12)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__HMDCloudShareTrustManager_sendShareInvitation_toUser_device___block_invoke;
    aBlock[3] = &unk_27867CBC8;
    aBlock[4] = self;
    v14 = userCopy;
    v40 = v14;
    v15 = _Block_copy(aBlock);
    if (!(v14 | deviceCopy))
    {
      _HMFPreconditionFailure();
    }

    v16 = v15;
    if (v14)
    {
      v36 = userCopy;
      v37 = v13;
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        shortDescription = [v14 shortDescription];
        *buf = 138543618;
        v43 = v20;
        v44 = 2112;
        v45 = shortDescription;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending trust zone invitation to user: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      cloudShareMessenger = [(HMDCloudShareTrustManager *)selfCopy cloudShareMessenger];
      v23 = +[HMDHomeKitVersion version6];
      v24 = [MEMORY[0x277CBEB98] set];
      [cloudShareMessenger sendShareInvitationData:v12 toUser:v14 minimumHomeKitVersion:v23 requiredSupportedFeatures:v24 completion:v16];

      userCopy = v36;
      v13 = v37;
    }

    else
    {
      if (!deviceCopy)
      {
LABEL_15:

        goto LABEL_16;
      }

      v30 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v33 = v38 = v13;
        shortDescription2 = [deviceCopy shortDescription];
        *buf = 138543618;
        v43 = v33;
        v44 = 2112;
        v45 = shortDescription2;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Sending trust zone invitation to device: %@", buf, 0x16u);

        v13 = v38;
      }

      objc_autoreleasePoolPop(v30);
      cloudShareMessenger = [(HMDCloudShareTrustManager *)selfCopy2 cloudShareMessenger];
      [cloudShareMessenger sendShareInvitationData:v12 toDevice:deviceCopy completion:v16];
    }

    goto LABEL_15;
  }

  v25 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v28;
    v44 = 2112;
    v45 = v13;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize trust zone invitation: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  metricsEventDispatcher = [(HMDCloudShareTrustManager *)selfCopy3 metricsEventDispatcher];
  [metricsEventDispatcher submitFailureEventWithEventErrorCode:10 error:v13];

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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Trust zone invitation was accepted by user with id: %@", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@User already has cloud share ID. Skip cloud pull. user id: %@", buf, 0x16u);
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
      v32[3] = &unk_27868A250;
      v32[4] = *(a1 + 32);
      v28 = [v27 addFailureBlock:v32];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __63__HMDCloudShareTrustManager_sendShareInvitation_toUser_device___block_invoke_30;
      v31[3] = &unk_27868A200;
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Trust zone invitation was not accepted by user with id: %@ error: %@", buf, 0x20u);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Cloud pull fail with error:%@", &v10, 0x16u);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Cloud pull was successful", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) updateCloudShareIDForAllUsers];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)discoverUntrustedUsers
{
  v58 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDCloudShareTrustManager *)self dataSource];
  selfCopy = self;
  v4 = [dataSource homeForCloudShareTrustManager:self];

  v5 = [MEMORY[0x277CBEB58] set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  users = [v4 users];
  v7 = [users countByEnumeratingWithState:&v47 objects:v57 count:16];
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
          objc_enumerationMutation(users);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        cloudShareID = [v11 cloudShareID];
        if (cloudShareID)
        {
          v13 = cloudShareID;
          isOwner = [v11 isOwner];

          if ((isOwner & 1) == 0)
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [users countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v8);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  cloudZone = [(HMDCloudShareTrustManager *)selfCopy cloudZone];
  participants = [cloudZone participants];

  v17 = [participants countByEnumeratingWithState:&v43 objects:v56 count:16];
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
          objc_enumerationMutation(participants);
        }

        clientIdentifier = [*(*(&v43 + 1) + 8 * j) clientIdentifier];
        v22 = [v4 userWithUUID:clientIdentifier];

        if (v22)
        {
          [v5 removeObject:v22];
        }
      }

      v18 = [participants countByEnumeratingWithState:&v43 objects:v56 count:16];
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
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          uuid = [v28 uuid];
          *buf = 138543618;
          v52 = v32;
          v53 = 2112;
          v54 = uuid;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Discovered untrusted user with id: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        delegate = [(HMDCloudShareTrustManager *)v30 delegate];
        uuid2 = [v28 uuid];
        [delegate cloudShareTrustManager:v30 didRemoveUserWithUUID:uuid2];
      }

      v25 = [v23 countByEnumeratingWithState:&v39 objects:v55 count:16];
    }

    while (v25);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)updateCloudShareIDForUser:(id)user
{
  v31 = *MEMORY[0x277D85DE8];
  userCopy = user;
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (([userCopy isOwner] & 1) == 0)
  {
    cloudShareID = [userCopy cloudShareID];

    if (!cloudShareID)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        shortDescription = [userCopy shortDescription];
        *buf = 138543618;
        v28 = v10;
        v29 = 2112;
        v30 = shortDescription;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetching cloud share ID for shared user: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      cloudZone = [(HMDCloudShareTrustManager *)selfCopy cloudZone];
      uuid = [userCopy uuid];
      v14 = [cloudZone fetchCloudShareIDForShareParticipantClientIdentifier:uuid];
      v15 = MEMORY[0x277D2C938];
      queue2 = [(HMDCloudShareTrustManager *)selfCopy queue];
      v17 = [v15 schedulerWithDispatchQueue:queue2];
      v18 = [v14 reschedule:v17];

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __55__HMDCloudShareTrustManager_updateCloudShareIDForUser___block_invoke;
      v25[3] = &unk_27868A1D8;
      v25[4] = selfCopy;
      v19 = userCopy;
      v26 = v19;
      v20 = [v18 addFailureBlock:v25];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __55__HMDCloudShareTrustManager_updateCloudShareIDForUser___block_invoke_22;
      v23[3] = &unk_278672798;
      v23[4] = selfCopy;
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch cloud share ID for %@: %@", &v11, 0x20u);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received cloud share ID for %@: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 40) updateCloudShareID:v3];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateCloudShareIDForAllUsers
{
  v17 = *MEMORY[0x277D85DE8];
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  dataSource = [(HMDCloudShareTrustManager *)self dataSource];
  v5 = [dataSource homeForCloudShareTrustManager:self];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  users = [v5 users];
  v7 = [users countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(users);
        }

        [(HMDCloudShareTrustManager *)self updateCloudShareIDForUser:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [users countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentUserCloudShareID
{
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  cloudZone = [(HMDCloudShareTrustManager *)self cloudZone];
  fetchCurrentParticipantCloudShareID = [cloudZone fetchCurrentParticipantCloudShareID];
  v6 = MEMORY[0x277D2C938];
  queue2 = [(HMDCloudShareTrustManager *)self queue];
  v8 = [v6 schedulerWithDispatchQueue:queue2];
  v9 = [fetchCurrentParticipantCloudShareID reschedule:v8];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HMDCloudShareTrustManager_updateCurrentUserCloudShareID__block_invoke;
  v13[3] = &unk_27868A250;
  v13[4] = self;
  v10 = [v9 addFailureBlock:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HMDCloudShareTrustManager_updateCurrentUserCloudShareID__block_invoke_21;
  v12[3] = &unk_278672770;
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch cloud share id for current user, error: %@", &v10, 0x16u);
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
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received current user cloud share id: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [v6 updateCloudShareID:v3];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeTrust
{
  v35 = *MEMORY[0x277D85DE8];
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDCloudShareTrustManager *)self configureState]== 3)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMDCloudShareTrustManagerConfigureStateAsString([(HMDCloudShareTrustManager *)selfCopy configureState]);
      *buf = 138543618;
      v32 = v7;
      v33 = 2112;
      v34 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Skipping remove trust due to configure state: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [(HMDCloudShareTrustManager *)self setConfigureState:3];
    cloudShareMessenger = [(HMDCloudShareTrustManager *)self cloudShareMessenger];
    [cloudShareMessenger unconfigure];

    dataSource = [(HMDCloudShareTrustManager *)self dataSource];
    v11 = [dataSource zoneNameForCloudShareTrustManager:self];

    isOwnedTrust = [(HMDCloudShareTrustManager *)self isOwnedTrust];
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (isOwnedTrust)
    {
      if (v16)
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Removing owned cloud share trust", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      database = [(HMDCloudShareTrustManager *)selfCopy2 database];
      v19 = [database removePrivateZonesWithName:v11];
    }

    else
    {
      if (v16)
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v20;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Removing shared cloud share trust", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      database = [(HMDCloudShareTrustManager *)selfCopy2 database];
      v19 = [database removeSharedZonesWithName:v11];
    }

    v21 = v19;
    v22 = MEMORY[0x277D2C938];
    queue2 = [(HMDCloudShareTrustManager *)selfCopy2 queue];
    v24 = [v22 schedulerWithDispatchQueue:queue2];
    v25 = [v21 reschedule:v24];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __40__HMDCloudShareTrustManager_removeTrust__block_invoke;
    v30[3] = &unk_27868A250;
    v30[4] = selfCopy2;
    v26 = [v25 addFailureBlock:v30];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __40__HMDCloudShareTrustManager_removeTrust__block_invoke_19;
    v29[3] = &unk_27868A200;
    v29[4] = selfCopy2;
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed cloud share trust removal, error: %@", &v10, 0x16u);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Cloud share trust has been removed", &v10, 0xCu);
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
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDCloudShareTrustManager *)self setConfigureState:2];
  delegate = [(HMDCloudShareTrustManager *)self delegate];
  [delegate didFinishConfiguringForCloudShareTrustManager:self];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Trust manager finished configuring", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDCloudShareTrustManager *)selfCopy isOwnedTrust])
  {
    [(HMDCloudShareTrustManager *)selfCopy updateCloudShareIDForAllUsers];
    [(HMDCloudShareTrustManager *)selfCopy discoverUntrustedUsers];
  }

  else
  {
    [(HMDCloudShareTrustManager *)selfCopy updateCurrentUserCloudShareID];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_configureOwnerCloudShareIDWithCloudZone:(id)zone
{
  v22 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching trust owner cloud share id", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  fetchOwnerParticipantCloudShareID = [zoneCopy fetchOwnerParticipantCloudShareID];
  v11 = MEMORY[0x277D2C938];
  queue2 = [(HMDCloudShareTrustManager *)selfCopy queue];
  v13 = [v11 schedulerWithDispatchQueue:queue2];
  v14 = [fetchOwnerParticipantCloudShareID reschedule:v13];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__HMDCloudShareTrustManager__configureOwnerCloudShareIDWithCloudZone___block_invoke;
  v19[3] = &unk_27868A250;
  v19[4] = selfCopy;
  v15 = [v14 addFailureBlock:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __70__HMDCloudShareTrustManager__configureOwnerCloudShareIDWithCloudZone___block_invoke_17;
  v18[3] = &unk_278672770;
  v18[4] = selfCopy;
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Could not read owner cloud share id in trust zone, error: %@", &v10, 0x16u);
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Read trust zone owner cloud share ID: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) setOwnerCloudShareID:v3];
  [*(a1 + 32) _finishConfigure];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_configureWithFetchZoneResult:(id)result error:(id)error
{
  v42 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (resultCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *v39 = 138543362;
      *&v39[4] = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Did fetch trust cloud zone", v39, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    cloudZone = [resultCopy cloudZone];
    [(HMDCloudShareTrustManager *)selfCopy setCloudZone:cloudZone];

    if ([(HMDCloudShareTrustManager *)selfCopy isOwnedTrust])
    {
      cloudZone2 = [(HMDCloudShareTrustManager *)selfCopy cloudZone];
      v16 = [cloudZone2 registerSubscriptionForExternalRecordType:0];
    }

    localZone = [resultCopy localZone];
    [(HMDCloudShareTrustManager *)selfCopy setLocalZone:localZone];

    localZone2 = [(HMDCloudShareTrustManager *)selfCopy localZone];
    [localZone2 startUp];

    if ([(HMDCloudShareTrustManager *)selfCopy isOwnedTrust])
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *v39 = 138543362;
        *&v39[4] = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Starting participant manager to share trust zone", v39, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      dataSource = [(HMDCloudShareTrustManager *)v20 dataSource];
      v24 = [dataSource homeForCloudShareTrustManager:v20];

      participantsManagerFactory = [(HMDCloudShareTrustManager *)v20 participantsManagerFactory];
      queue2 = [(HMDCloudShareTrustManager *)v20 queue];
      cloudZone3 = [resultCopy cloudZone];
      v28 = (participantsManagerFactory)[2](participantsManagerFactory, queue2, cloudZone3, v24);
      [(HMDCloudShareTrustManager *)v20 setCloudShareParticipantsManager:v28];

      cloudShareParticipantsManager = [(HMDCloudShareTrustManager *)v20 cloudShareParticipantsManager];
      [cloudShareParticipantsManager setDataSource:v20];

      cloudShareParticipantsManager2 = [(HMDCloudShareTrustManager *)v20 cloudShareParticipantsManager];
      [cloudShareParticipantsManager2 setDelegate:v20];

      cloudShareParticipantsManager3 = [(HMDCloudShareTrustManager *)v20 cloudShareParticipantsManager];
      [cloudShareParticipantsManager3 configure];

      cloudShareParticipantsManager4 = [(HMDCloudShareTrustManager *)v20 cloudShareParticipantsManager];
      [cloudShareParticipantsManager4 updateShareParticipants];
    }

    cloudZone4 = [resultCopy cloudZone];
    [(HMDCloudShareTrustManager *)selfCopy _configureOwnerCloudShareIDWithCloudZone:cloudZone4];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      isOwnedTrust = [(HMDCloudShareTrustManager *)selfCopy isOwnedTrust];
      v36 = @"Shared Zone";
      *v39 = 138543874;
      *&v39[4] = v34;
      *&v39[12] = 2112;
      if (isOwnedTrust)
      {
        v36 = @"Owned Zone";
      }

      *&v39[14] = v36;
      v40 = 2112;
      v41 = errorCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to open trust zone: %@, error: %@", v39, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDCloudShareTrustManager *)selfCopy setConfigureState:0];
    cloudZone4 = [(HMDCloudShareTrustManager *)selfCopy metricsEventDispatcher];
    if ([(HMDCloudShareTrustManager *)selfCopy isOwnedTrust])
    {
      v37 = 1;
    }

    else
    {
      v37 = 2;
    }

    [cloudZone4 submitFailureEventWithEventErrorCode:v37 error:{errorCopy, *v39}];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_requestShareInvitationForSharedZone
{
  v26 = *MEMORY[0x277D85DE8];
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  dataSource = [(HMDCloudShareTrustManager *)self dataSource];
  if ([dataSource isOwnerCapableForTrustManager:self])
  {
    ownerCloudShareID = [(HMDCloudShareTrustManager *)self ownerCloudShareID];

    if (ownerCloudShareID)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@We have a cloud share ID for the owner, but we aren't invited to the share", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
    }

    [(HMDCloudShareTrustManager *)self _startRequestInviteTimer];
    v10 = [dataSource ownerForCloudShareTrustManager:self];
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      uuid = [v10 uuid];
      v22 = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = uuid;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Requesting trust zone share invitation from trust owner with id: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    cloudShareMessenger = [(HMDCloudShareTrustManager *)selfCopy2 cloudShareMessenger];
    [cloudShareMessenger requestShareInvitationDataFromUser:v10];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Skipping request for trust invitation due to owner being incapable of setting up trust", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_configureWithSharedZone
{
  v26 = *MEMORY[0x277D85DE8];
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  database = [(HMDCloudShareTrustManager *)self database];
  v5 = [database registerSharedSubscriptionForExternalRecordType:0];

  database2 = [(HMDCloudShareTrustManager *)self database];
  dataSource = [(HMDCloudShareTrustManager *)self dataSource];
  v8 = [dataSource zoneNameForCloudShareTrustManager:self];
  v9 = [database2 existingSharedZoneIDWithName:v8];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Got zoneID for shared trust zone: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    database3 = [(HMDCloudShareTrustManager *)selfCopy database];
    v16 = objc_alloc_init(MEMORY[0x277D17068]);
    v21 = 0;
    v17 = [database3 sharedZonesWithID:v9 configuration:v16 delegate:selfCopy error:&v21];
    v18 = v21;

    [(HMDCloudShareTrustManager *)selfCopy _configureWithFetchZoneResult:v17 error:v18];
  }

  else
  {
    if (v13)
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v19;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@No shared trust zone exists yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDCloudShareTrustManager *)selfCopy _requestShareInvitationForSharedZone];
    [(HMDCloudShareTrustManager *)selfCopy setConfigureState:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_configureWithOwnedZone
{
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = objc_alloc_init(MEMORY[0x277D170E8]);
  [v4 setShouldRebuildOnManateeKeyLoss:1];
  database = [(HMDCloudShareTrustManager *)self database];
  dataSource = [(HMDCloudShareTrustManager *)self dataSource];
  v7 = [dataSource zoneNameForCloudShareTrustManager:self];
  v10 = 0;
  v8 = [database privateZonesWithName:v7 configuration:v4 delegate:self error:&v10];
  v9 = v10;

  [(HMDCloudShareTrustManager *)self _configureWithFetchZoneResult:v8 error:v9];
}

- (void)_configure
{
  v22 = *MEMORY[0x277D85DE8];
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDCloudShareTrustManager *)self configureState])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMDCloudShareTrustManagerConfigureStateAsString([(HMDCloudShareTrustManager *)selfCopy configureState]);
      v18 = 138543618;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Skipping cloud share trust configure. Trust already in configure state: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [(HMDCloudShareTrustManager *)self setConfigureState:1];
    cloudShareMessenger = [(HMDCloudShareTrustManager *)self cloudShareMessenger];
    [cloudShareMessenger configure];

    isOwnedTrust = [(HMDCloudShareTrustManager *)self isOwnedTrust];
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (isOwnedTrust)
    {
      if (v14)
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v15;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Configuring cloud share trust with owned trust", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [(HMDCloudShareTrustManager *)selfCopy2 _configureWithOwnedZone];
    }

    else
    {
      if (v14)
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Configuring cloud share trust with shared trust", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [(HMDCloudShareTrustManager *)selfCopy2 _configureWithSharedZone];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  queue = [(HMDCloudShareTrustManager *)self queue];
  dispatch_assert_queue_V2(queue);

  dataSource = [(HMDCloudShareTrustManager *)self dataSource];
  v4 = [dataSource homeForCloudShareTrustManager:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_homeDidBecomeTrustZoneCapable_ name:@"HMDHomeOwnerBecameTrustZoneCapableNotification" object:v4];

  [(HMDCloudShareTrustManager *)self _configure];
}

- (HMDCloudShareTrustManager)initWithDatabase:(id)database isOwnedTrust:(BOOL)trust queue:(id)queue shareMessenger:(id)messenger ownerCloudShareID:(id)d logEventSubmitter:(id)submitter dailyScheduler:(id)scheduler
{
  databaseCopy = database;
  queueCopy = queue;
  messengerCopy = messenger;
  dCopy = d;
  submitterCopy = submitter;
  schedulerCopy = scheduler;
  v31.receiver = self;
  v31.super_class = HMDCloudShareTrustManager;
  v20 = [(HMDCloudShareTrustManager *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_queue, queue);
    v21->_ownedTrust = trust;
    objc_storeStrong(&v21->_ownerCloudShareID, d);
    objc_storeStrong(&v21->_database, database);
    [(HMDDatabase *)v21->_database addDelegate:v21, queueCopy, databaseCopy];
    v21->_configureState = 0;
    objc_storeStrong(&v21->_cloudShareMessenger, messenger);
    [(HMDCloudShareMessenger *)v21->_cloudShareMessenger setDelegate:v21];
    participantsManagerFactory = v21->_participantsManagerFactory;
    v21->_participantsManagerFactory = &__block_literal_global_36720;

    requestInviteTimerFactory = v21->_requestInviteTimerFactory;
    v21->_requestInviteTimerFactory = &__block_literal_global_3_36721;

    if (submitterCopy && schedulerCopy)
    {
      v24 = [HMDCloudShareTrustManagerMetricsEventDispatcher alloc];
      messageTargetUUID = [messengerCopy messageTargetUUID];
      v26 = [(HMDCloudShareTrustManagerMetricsEventDispatcher *)v24 initWithIdentifier:messageTargetUUID logEventSubmitter:submitterCopy dailyScheduler:schedulerCopy dataSource:v21];
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
    dispatch_once(&logCategory__hmf_once_t54, &__block_literal_global_44_36733);
  }

  v3 = logCategory__hmf_once_v55;

  return v3;
}

void __40__HMDCloudShareTrustManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v55;
  logCategory__hmf_once_v55 = v1;
}

@end