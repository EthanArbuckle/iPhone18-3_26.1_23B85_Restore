@interface HMDDatabaseZoneManager
+ (id)logCategory;
- (BOOL)_fetchExistingPrivateZonesWithConfiguration:(id)configuration;
- (BOOL)_fetchPrivateZonesWithConfiguration:(id)configuration;
- (BOOL)_fetchSharedZonesWithConfiguration:(id)configuration;
- (BOOL)_handleFetchZonesResult:(id)result configuration:(id)configuration;
- (BOOL)start;
- (BOOL)startWithConfiguration:(id)configuration;
- (HMDDatabaseZoneManager)initWithDatabase:(id)database zoneName:(id)name home:(id)home messageTargetUUID:(id)d workQueue:(id)queue;
- (HMDDatabaseZoneManager)initWithDatabase:(id)database zoneName:(id)name home:(id)home shareMessenger:(id)messenger workQueue:(id)queue;
- (HMDDatabaseZoneManagerDataSource)dataSource;
- (HMDDatabaseZoneManagerDelegate)delegate;
- (HMDHome)home;
- (NSString)containerIdentifier;
- (NSUUID)messageTargetUUID;
- (id)remove;
- (void)_requestShareInvitationWithConfiguration:(id)configuration;
- (void)_sendShareInvitation:(id)invitation toUser:(id)user device:(id)device;
- (void)_tearDownState;
- (void)configure;
- (void)database:(id)database didCreateZoneWithName:(id)name isPrivate:(BOOL)private;
- (void)database:(id)database didReceiveMessageWithUserInfo:(id)info;
- (void)database:(id)database didRemoveZoneWithName:(id)name isPrivate:(BOOL)private;
- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toDevice:(id)device;
- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toUser:(id)user;
- (void)manager:(id)manager didRevokeShareAccessForUser:(id)user;
- (void)messenger:(id)messenger didReceiveInvitationData:(id)data completion:(id)completion;
- (void)messenger:(id)messenger didReceiveInvitationRequestFromUser:(id)user device:(id)device;
- (void)messengerDidReceiveShareAccessRevocation:(id)revocation;
- (void)updateShareParticipants;
@end

@implementation HMDDatabaseZoneManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDDatabaseZoneManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDDatabaseZoneManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)database:(id)database didReceiveMessageWithUserInfo:(id)info
{
  infoCopy = info;
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HMDDatabaseZoneManager_database_didReceiveMessageWithUserInfo___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_async(workQueue, v8);
}

void __65__HMDDatabaseZoneManager_database_didReceiveMessageWithUserInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 zoneManager:*(a1 + 32) didReceiveMessageWithUserInfo:*(a1 + 40)];
  }
}

- (void)database:(id)database didRemoveZoneWithName:(id)name isPrivate:(BOOL)private
{
  privateCopy = private;
  v22 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  nameCopy = name;
  zoneName = [(HMDDatabaseZoneManager *)self zoneName];
  if ([nameCopy isEqualToString:zoneName])
  {
    defaultConfiguration = [(HMDDatabaseZoneManager *)self defaultConfiguration];
    isZoneOwner = [defaultConfiguration isZoneOwner];

    if (isZoneOwner == privateCopy)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Handling zone removal by tearing down state", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      workQueue = [(HMDDatabaseZoneManager *)selfCopy workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__HMDDatabaseZoneManager_database_didRemoveZoneWithName_isPrivate___block_invoke;
      block[3] = &unk_279735D00;
      block[4] = selfCopy;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)database didCreateZoneWithName:(id)name isPrivate:(BOOL)private
{
  privateCopy = private;
  v22 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  nameCopy = name;
  zoneName = [(HMDDatabaseZoneManager *)self zoneName];
  if ([nameCopy isEqualToString:zoneName])
  {
    defaultConfiguration = [(HMDDatabaseZoneManager *)self defaultConfiguration];
    isZoneOwner = [defaultConfiguration isZoneOwner];

    if (isZoneOwner == privateCopy)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Handling zone creation by starting", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      workQueue = [(HMDDatabaseZoneManager *)selfCopy workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__HMDDatabaseZoneManager_database_didCreateZoneWithName_isPrivate___block_invoke;
      block[3] = &unk_279735D00;
      block[4] = selfCopy;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager didRevokeShareAccessForUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  shareMessenger = [(HMDDatabaseZoneManager *)self shareMessenger];
  [shareMessenger notifyOfShareAccessRevocationForUser:userCopy];
}

- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toDevice:(id)device
{
  deviceCopy = device;
  invitationCopy = invitation;
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDDatabaseZoneManager *)self _sendShareInvitation:invitationCopy toUser:0 device:deviceCopy];
}

- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toUser:(id)user
{
  userCopy = user;
  invitationCopy = invitation;
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDDatabaseZoneManager *)self _sendShareInvitation:invitationCopy toUser:userCopy device:0];
}

- (void)messengerDidReceiveShareAccessRevocation:(id)revocation
{
  v15 = *MEMORY[0x277D85DE8];
  revocationCopy = revocation;
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Synchronizing shared zones due to share revocation", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  database = [(HMDDatabaseZoneManager *)selfCopy database];
  synchronizeSharedZones = [database synchronizeSharedZones];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)messenger:(id)messenger didReceiveInvitationRequestFromUser:(id)user device:(id)device
{
  deviceCopy = device;
  userCopy = user;
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  participantsManager = [(HMDDatabaseZoneManager *)self participantsManager];
  [participantsManager inviteUser:userCopy usingDevice:deviceCopy];
}

- (void)messenger:(id)messenger didReceiveInvitationData:(id)data completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  messengerCopy = messenger;
  dataCopy = data;
  completionCopy = completion;
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = MEMORY[0x277CCAAC8];
  v13 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v31 = 0;
  v14 = [v12 _strictlyUnarchivedObjectOfClasses:v13 fromData:dataCopy error:&v31];
  v15 = v31;

  if (v14)
  {
    database = [(HMDDatabaseZoneManager *)self database];
    v17 = [database acceptInvitation:v14];

    v18 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDDatabaseZoneManager *)self workQueue];
    v20 = [v18 schedulerWithDispatchQueue:workQueue2];
    v21 = [v17 reschedule:v20];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __72__HMDDatabaseZoneManager_messenger_didReceiveInvitationData_completion___block_invoke;
    v28[3] = &unk_2797281B0;
    v28[4] = self;
    v29 = v15;
    v30 = completionCopy;
    v22 = [v21 addCompletionBlock:v28];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v26;
      v34 = 2112;
      v35 = dataCopy;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive share invitation from invitation data: %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    (*(completionCopy + 2))(completionCopy, 0, v15);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __72__HMDDatabaseZoneManager_messenger_didReceiveInvitationData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully accepted invitation and created shared zone with ID %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) start];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to accept received invitation: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(v14 + 16))(v14, 0, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownState
{
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDDatabaseZoneManager *)self state])
  {
    [(HMDDatabaseZoneManager *)self setCloudZone:0];
    [(HMDDatabaseZoneManager *)self setLocalZone:0];
    [(HMDDatabaseZoneManager *)self setParticipantsManager:0];
    [(HMDDatabaseZoneManager *)self setState:0];
    delegate = [(HMDDatabaseZoneManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate zoneManagerDidStop:self];
    }
  }
}

- (void)_requestShareInvitationWithConfiguration:(id)configuration
{
  v25 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  dataSource = [(HMDDatabaseZoneManager *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (-[HMDDatabaseZoneManager participantsManager](self, "participantsManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [dataSource areShareModificationsEnabledForManager:v6], v6, v7))
  {
    if ([configurationCopy shouldCreateZone])
    {
      v19 = configurationCopy;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      home = [(HMDDatabaseZoneManager *)self home];
      users = [home users];

      v10 = [users countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(users);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            if (([v14 isCurrentUser] & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(dataSource, "zoneManager:shouldRequestShareInvitationFromUser:", self, v14))
            {
              shareMessenger = [(HMDDatabaseZoneManager *)self shareMessenger];
              [shareMessenger requestShareInvitationDataFromUser:v14];
            }
          }

          v11 = [users countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }

      database = [(HMDDatabaseZoneManager *)self database];
      synchronizeSharedZones = [database synchronizeSharedZones];

      configurationCopy = v19;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_sendShareInvitation:(id)invitation toUser:(id)user device:(id)device
{
  v37 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  userCopy = user;
  deviceCopy = device;
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v30 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:invitationCopy requiringSecureCoding:1 error:&v30];
  v13 = v30;
  if (v12)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__HMDDatabaseZoneManager__sendShareInvitation_toUser_device___block_invoke;
    aBlock[3] = &unk_279732800;
    aBlock[4] = self;
    v14 = _Block_copy(aBlock);
    if (!(userCopy | deviceCopy))
    {
      _HMFPreconditionFailure();
    }

    v15 = v14;
    if (userCopy)
    {
      shareMessenger = [(HMDDatabaseZoneManager *)self shareMessenger];
      defaultConfiguration = [(HMDDatabaseZoneManager *)self defaultConfiguration];
      minimumHomeKitVersion = [defaultConfiguration minimumHomeKitVersion];
      defaultConfiguration2 = [(HMDDatabaseZoneManager *)self defaultConfiguration];
      [defaultConfiguration2 requiredSupportedFeatures];
      v19 = deviceCopy;
      v20 = invitationCopy;
      v22 = v21 = v13;
      [shareMessenger sendShareInvitationData:v12 toUser:userCopy minimumHomeKitVersion:minimumHomeKitVersion requiredSupportedFeatures:v22 completion:v15];

      v13 = v21;
      invitationCopy = v20;
      deviceCopy = v19;
    }

    else
    {
      if (!deviceCopy)
      {
LABEL_11:

        goto LABEL_12;
      }

      shareMessenger = [(HMDDatabaseZoneManager *)self shareMessenger];
      [shareMessenger sendShareInvitationData:v12 toDevice:deviceCopy completion:v15];
    }

    goto LABEL_11;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543874;
    v32 = v26;
    v33 = 2112;
    v34 = invitationCopy;
    v35 = 2112;
    v36 = v13;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize invitation %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v23);
LABEL_12:

  v27 = *MEMORY[0x277D85DE8];
}

void __61__HMDDatabaseZoneManager__sendShareInvitation_toUser_device___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
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
      v16 = 138543362;
      v17 = v10;
      v11 = "%{public}@Zone invitation was successfully accepted";
      v12 = v9;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 12;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v12, v13, v11, &v16, v14);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v10;
    v18 = 2112;
    v19 = v5;
    v11 = "%{public}@Zone invitation was not accepted: %@";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v6);
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleFetchZonesResult:(id)result configuration:(id)configuration
{
  v73 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  configurationCopy = configuration;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    zoneName = [(HMDDatabaseZoneManager *)selfCopy zoneName];
    *buf = 138543618;
    v70 = v11;
    v71 = 2112;
    v72 = zoneName;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetched zones with name %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  localZone = [resultCopy localZone];
  [(HMDDatabaseZoneManager *)selfCopy setLocalZone:localZone];

  cloudZone = [resultCopy cloudZone];
  [(HMDDatabaseZoneManager *)selfCopy setCloudZone:cloudZone];

  if ([configurationCopy isZoneOwner])
  {
    externalRecordTypesForSubscriptions = [configurationCopy externalRecordTypesForSubscriptions];

    cloudZone2 = [(HMDDatabaseZoneManager *)selfCopy cloudZone];
    v17 = cloudZone2;
    if (externalRecordTypesForSubscriptions)
    {
      v58 = resultCopy;
      subscriptions = [cloudZone2 subscriptions];
      v19 = [subscriptions na_map:&__block_literal_global_9];

      v57 = configurationCopy;
      externalRecordTypesForSubscriptions2 = [configurationCopy externalRecordTypesForSubscriptions];
      v56 = v19;
      v21 = [v19 hmf_removedObjectsFromSet:externalRecordTypesForSubscriptions2];

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v64;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v64 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v63 + 1) + 8 * i);
            v28 = objc_autoreleasePoolPush();
            v29 = selfCopy;
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = HMFGetLogIdentifier();
              *buf = 138543618;
              v70 = v31;
              v71 = 2112;
              v72 = v27;
              _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing externalRecordType: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v28);
            cloudZone3 = [(HMDDatabaseZoneManager *)v29 cloudZone];
            v33 = [cloudZone3 unregisterSubscriptionForExternalRecordType:v27];
          }

          v24 = [v22 countByEnumeratingWithState:&v63 objects:v68 count:16];
        }

        while (v24);
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      configurationCopy = v57;
      externalRecordTypesForSubscriptions3 = [v57 externalRecordTypesForSubscriptions];
      v35 = [externalRecordTypesForSubscriptions3 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v60;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v60 != v37)
            {
              objc_enumerationMutation(externalRecordTypesForSubscriptions3);
            }

            v39 = *(*(&v59 + 1) + 8 * j);
            cloudZone4 = [(HMDDatabaseZoneManager *)selfCopy cloudZone];
            v41 = [cloudZone4 registerSubscriptionForExternalRecordType:v39];
          }

          v36 = [externalRecordTypesForSubscriptions3 countByEnumeratingWithState:&v59 objects:v67 count:16];
        }

        while (v36);
      }

      v17 = v56;
      resultCopy = v58;
    }

    else
    {
      v42 = [cloudZone2 registerSubscriptionForExternalRecordType:0];
    }

    participantsManagerFactory = [(HMDDatabaseZoneManager *)selfCopy participantsManagerFactory];
    workQueue = [(HMDDatabaseZoneManager *)selfCopy workQueue];
    cloudZone5 = [(HMDDatabaseZoneManager *)selfCopy cloudZone];
    home = [(HMDDatabaseZoneManager *)selfCopy home];
    v47 = (participantsManagerFactory)[2](participantsManagerFactory, workQueue, cloudZone5, home);
    [(HMDDatabaseZoneManager *)selfCopy setParticipantsManager:v47];

    dataSource = [(HMDDatabaseZoneManager *)selfCopy dataSource];
    participantsManager = [(HMDDatabaseZoneManager *)selfCopy participantsManager];
    [participantsManager setDataSource:dataSource];

    participantsManager2 = [(HMDDatabaseZoneManager *)selfCopy participantsManager];
    [participantsManager2 setDelegate:selfCopy];

    participantsManager3 = [(HMDDatabaseZoneManager *)selfCopy participantsManager];
    [participantsManager3 configure];

    participantsManager4 = [(HMDDatabaseZoneManager *)selfCopy participantsManager];
    [participantsManager4 updateShareParticipants];
  }

  [(HMDDatabaseZoneManager *)selfCopy setState:2];
  delegate = [(HMDDatabaseZoneManager *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate zoneManagerDidStart:selfCopy];
  }

  v54 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_fetchSharedZonesWithConfiguration:(id)configuration
{
  v50 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v46 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching shared zones", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  externalRecordTypesForSubscriptions = [configurationCopy externalRecordTypesForSubscriptions];

  if (externalRecordTypesForSubscriptions)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    externalRecordTypesForSubscriptions2 = [configurationCopy externalRecordTypesForSubscriptions];
    v12 = [externalRecordTypesForSubscriptions2 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(externalRecordTypesForSubscriptions2);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
          database = [(HMDDatabaseZoneManager *)selfCopy database];
          v18 = [database registerSharedSubscriptionForExternalRecordType:v16];
        }

        v13 = [externalRecordTypesForSubscriptions2 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v13);
    }
  }

  else
  {
    externalRecordTypesForSubscriptions2 = [(HMDDatabaseZoneManager *)selfCopy database];
    v19 = [externalRecordTypesForSubscriptions2 registerSharedSubscriptionForExternalRecordType:0];
  }

  database2 = [(HMDDatabaseZoneManager *)selfCopy database];
  zoneName = [(HMDDatabaseZoneManager *)selfCopy zoneName];
  v22 = [database2 existingSharedZoneIDWithName:zoneName];

  if (v22)
  {
    database3 = [(HMDDatabaseZoneManager *)selfCopy database];
    cloudZoneConfiguration = [configurationCopy cloudZoneConfiguration];
    delegate = [(HMDDatabaseZoneManager *)selfCopy delegate];
    v40 = 0;
    v26 = [database3 sharedZonesWithID:v22 configuration:cloudZoneConfiguration delegate:delegate error:&v40];
    v27 = v40;

    if (v26)
    {
      v28 = [(HMDDatabaseZoneManager *)selfCopy _handleFetchZonesResult:v26 configuration:configurationCopy];
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = selfCopy;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v37;
        v47 = 2112;
        v48 = v27;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch shared zones: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      [(HMDDatabaseZoneManager *)v35 _tearDownState];
      v28 = 0;
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      zoneName2 = [(HMDDatabaseZoneManager *)v30 zoneName];
      *buf = 138543618;
      v46 = v32;
      v47 = 2112;
      v48 = zoneName2;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@No shared zone exists with zone name %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    [(HMDDatabaseZoneManager *)v30 _requestShareInvitationWithConfiguration:configurationCopy];
    [(HMDDatabaseZoneManager *)v30 _tearDownState];
    v28 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)_fetchExistingPrivateZonesWithConfiguration:(id)configuration
{
  v26 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching existing private zones", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  database = [(HMDDatabaseZoneManager *)selfCopy database];
  zoneName = [(HMDDatabaseZoneManager *)selfCopy zoneName];
  cloudZoneConfiguration = [configurationCopy cloudZoneConfiguration];
  delegate = [(HMDDatabaseZoneManager *)selfCopy delegate];
  v23 = 0;
  v14 = [database existingPrivateZonesWithName:zoneName configuration:cloudZoneConfiguration delegate:delegate error:&v23];
  v15 = v23;

  if (v14)
  {
    v16 = [(HMDDatabaseZoneManager *)selfCopy _handleFetchZonesResult:v14 configuration:configurationCopy];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@No existing private zones exist", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDDatabaseZoneManager *)v18 _tearDownState];
    v16 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_fetchPrivateZonesWithConfiguration:(id)configuration
{
  v28 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching private zones", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  database = [(HMDDatabaseZoneManager *)selfCopy database];
  zoneName = [(HMDDatabaseZoneManager *)selfCopy zoneName];
  cloudZoneConfiguration = [configurationCopy cloudZoneConfiguration];
  delegate = [(HMDDatabaseZoneManager *)selfCopy delegate];
  v23 = 0;
  v14 = [database privateZonesWithName:zoneName configuration:cloudZoneConfiguration delegate:delegate error:&v23];
  v15 = v23;

  if (v14)
  {
    v16 = [(HMDDatabaseZoneManager *)selfCopy _handleFetchZonesResult:v14 configuration:configurationCopy];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch private zones: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDDatabaseZoneManager *)v18 _tearDownState];
    v16 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)updateShareParticipants
{
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  participantsManager = [(HMDDatabaseZoneManager *)self participantsManager];

  if (participantsManager)
  {
    participantsManager2 = [(HMDDatabaseZoneManager *)self participantsManager];
    [participantsManager2 updateShareParticipants];
  }

  else
  {
    participantsManager2 = [(HMDDatabaseZoneManager *)self defaultConfiguration];
    if (([participantsManager2 isZoneOwner] & 1) == 0)
    {
      state = [(HMDDatabaseZoneManager *)self state];

      if (state)
      {
        return;
      }

      participantsManager2 = [(HMDDatabaseZoneManager *)self defaultConfiguration];
      [(HMDDatabaseZoneManager *)self _requestShareInvitationWithConfiguration:?];
    }
  }
}

- (id)remove
{
  v26 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Asked to remove zone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  if ([(HMDDatabaseZoneManager *)selfCopy state]== 2)
  {
    [(HMDDatabaseZoneManager *)selfCopy setState:3];
    v8 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDDatabaseZoneManager *)selfCopy workQueue];
    v10 = [v8 schedulerWithDispatchQueue:workQueue2];

    database = [(HMDDatabaseZoneManager *)selfCopy database];
    localZone = [(HMDDatabaseZoneManager *)selfCopy localZone];
    v13 = [database removeLocalAndCloudDataForLocalZone:localZone];

    v14 = [v13 reschedule:v10];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __32__HMDDatabaseZoneManager_remove__block_invoke;
    v23[3] = &unk_2797306C8;
    v23[4] = selfCopy;
    v15 = [v14 flatMap:v23];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot remove backing store because it is not running", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = MEMORY[0x277D2C900];
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    v15 = [v20 futureWithError:v10];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __32__HMDDatabaseZoneManager_remove__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v2);

  [*(a1 + 32) _tearDownState];
  v3 = MEMORY[0x277D2C900];

  return [v3 futureWithNoResult];
}

- (BOOL)startWithConfiguration:(id)configuration
{
  v23 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = configurationCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting zone manager with configuration: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if ([(HMDDatabaseZoneManager *)selfCopy state])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      state = [(HMDDatabaseZoneManager *)v11 state];
      v19 = 138543618;
      v20 = v13;
      v21 = 2048;
      v22 = state;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Zone manager was asked to start but it isn't idle: %ld", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = 0;
  }

  else
  {
    [(HMDDatabaseZoneManager *)selfCopy setState:1];
    if ([configurationCopy isZoneOwner])
    {
      if ([configurationCopy shouldCreateZone])
      {
        v16 = [(HMDDatabaseZoneManager *)selfCopy _fetchPrivateZonesWithConfiguration:configurationCopy];
      }

      else
      {
        v16 = [(HMDDatabaseZoneManager *)selfCopy _fetchExistingPrivateZonesWithConfiguration:configurationCopy];
      }
    }

    else
    {
      v16 = [(HMDDatabaseZoneManager *)selfCopy _fetchSharedZonesWithConfiguration:configurationCopy];
    }

    v15 = v16;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)start
{
  selfCopy = self;
  workQueue = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  defaultConfiguration = [(HMDDatabaseZoneManager *)selfCopy defaultConfiguration];
  LOBYTE(selfCopy) = [(HMDDatabaseZoneManager *)selfCopy startWithConfiguration:defaultConfiguration];

  return selfCopy;
}

- (void)configure
{
  database = [(HMDDatabaseZoneManager *)self database];
  [database addDelegate:self];

  shareMessenger = [(HMDDatabaseZoneManager *)self shareMessenger];
  [shareMessenger setDelegate:self];

  shareMessenger2 = [(HMDDatabaseZoneManager *)self shareMessenger];
  [shareMessenger2 configure];
}

- (NSString)containerIdentifier
{
  database = [(HMDDatabaseZoneManager *)self database];
  cloudDatabase = [database cloudDatabase];
  containerID = [cloudDatabase containerID];
  containerIdentifier = [containerID containerIdentifier];

  return containerIdentifier;
}

- (NSUUID)messageTargetUUID
{
  shareMessenger = [(HMDDatabaseZoneManager *)self shareMessenger];
  messageTargetUUID = [shareMessenger messageTargetUUID];

  return messageTargetUUID;
}

- (HMDDatabaseZoneManager)initWithDatabase:(id)database zoneName:(id)name home:(id)home shareMessenger:(id)messenger workQueue:(id)queue
{
  databaseCopy = database;
  nameCopy = name;
  homeCopy = home;
  messengerCopy = messenger;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = HMDDatabaseZoneManager;
  v18 = [(HMDDatabaseZoneManager *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_state = 0;
    objc_storeStrong(&v18->_database, database);
    hmf_stringWithSmallestEncoding = [nameCopy hmf_stringWithSmallestEncoding];
    zoneName = v19->_zoneName;
    v19->_zoneName = hmf_stringWithSmallestEncoding;

    objc_storeWeak(&v19->_home, homeCopy);
    objc_storeStrong(&v19->_shareMessenger, messenger);
    objc_storeStrong(&v19->_workQueue, queue);
    v22 = objc_alloc_init(HMDDatabaseZoneManagerConfiguration);
    defaultConfiguration = v19->_defaultConfiguration;
    v19->_defaultConfiguration = v22;

    participantsManagerFactory = v19->_participantsManagerFactory;
    v19->_participantsManagerFactory = &__block_literal_global_62728;
  }

  return v19;
}

HMDCloudShareParticipantsManager *__82__HMDDatabaseZoneManager_initWithDatabase_zoneName_home_shareMessenger_workQueue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = [[HMDCloudShareParticipantsManager alloc] initWithQueue:v8 cloudZone:v7 home:v6];

  return v9;
}

- (HMDDatabaseZoneManager)initWithDatabase:(id)database zoneName:(id)name home:(id)home messageTargetUUID:(id)d workQueue:(id)queue
{
  queueCopy = queue;
  dCopy = d;
  homeCopy = home;
  nameCopy = name;
  databaseCopy = database;
  v17 = [[HMDCloudShareMessenger alloc] initWithMessageTargetUUID:dCopy workQueue:queueCopy home:homeCopy];

  v18 = [(HMDDatabaseZoneManager *)self initWithDatabase:databaseCopy zoneName:nameCopy home:homeCopy shareMessenger:v17 workQueue:queueCopy];
  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t22_62736 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t22_62736, &__block_literal_global_29_62737);
  }

  v3 = logCategory__hmf_once_v23_62738;

  return v3;
}

uint64_t __37__HMDDatabaseZoneManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v23_62738;
  logCategory__hmf_once_v23_62738 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end