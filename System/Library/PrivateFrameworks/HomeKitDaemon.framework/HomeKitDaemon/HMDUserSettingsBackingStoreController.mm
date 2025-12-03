@interface HMDUserSettingsBackingStoreController
+ (id)logCategory;
- (BOOL)manager:(id)manager shouldShareWithUser:(id)user;
- (HMDAssistantAccessControlModelUpdateReceiver)assistantAccessControlModelUpdateReceiver;
- (HMDMediaContentProfileAccessControlModelUpdateReceiver)mediaContentProfileAccessControlModelUpdateReceiver;
- (HMDSettingTransactionReceiverProtocol)transactionReceiver;
- (HMDSharedUserDataModelUpdateReceiver)sharedUserDataModelUpdateReceiver;
- (HMDUserListeningHistoryUpdateControlModelUpdateReceiver)userListeningHistoryUpdateControlModelUpdateReceiver;
- (HMDUserSettingsBackingStoreController)initWithDelegate:(id)delegate queue:(id)queue zoneName:(id)name database:(id)database shareMessenger:(id)messenger;
- (HMDUserSettingsBackingStoreControllerDelegate)delegate;
- (id)_registrationWithParent:(void *)parent subjectDeviceIdentifier:;
- (id)_uuidForActivitySubject:(void *)subject observer:;
- (id)loadAssistantAccessControlModelWithModelID:(id)d error:(id *)error;
- (id)loadMediaContentAccessControlModelWithModelID:(id)d error:(id *)error;
- (id)loadPrivateUserDataModelWithError:(id *)error;
- (id)loadSharedUserDataModelWithError:(id *)error;
- (id)loadUserListeningHistoryUpdateControlModelWithModelID:(id)d error:(id *)error;
- (id)loadUserSettings;
- (id)queryPushTokensForDevicesObservingSubjectDevice:(id)device subActivity:(id)activity;
- (id)settingTransactionWithName:(id)name;
- (void)_didFetchZonesWithResult:(id)result isOwnedZone:(BOOL)zone error:(id)error;
- (void)_invalidate;
- (void)_localZone:(id)zone updatedModel:(id)model previousModel:(id)previousModel options:(id)options;
- (void)_sendShareInvitation:(id)invitation toUser:(id)user device:(id)device;
- (void)_startWithOwnedZone;
- (void)_startWithSharedZone;
- (void)_updateLogEventRunState:(int64_t)state;
- (void)_updateRunState:(int64_t)state;
- (void)clearParticipants;
- (void)database:(id)database didCreateZoneWithName:(id)name isPrivate:(BOOL)private;
- (void)database:(id)database didRemoveZoneWithName:(id)name isPrivate:(BOOL)private;
- (void)deregisterObserverDeviceIdentifier:(id)identifier;
- (void)deregisterObserverDeviceIdentifier:(id)identifier observerPushToken:(id)token subActivity:(id)activity subjectDeviceIdentifier:(id)deviceIdentifier;
- (void)destroyZone;
- (void)localZone:(id)zone didProcessModelCreation:(id)creation;
- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion;
- (void)localZone:(id)zone didProcessModelUpdate:(id)update;
- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toDevice:(id)device;
- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toUser:(id)user;
- (void)messenger:(id)messenger didReceiveInvitationData:(id)data completion:(id)completion;
- (void)messenger:(id)messenger didReceiveInvitationRequestFromUser:(id)user device:(id)device;
- (void)registerForAssistantAccessControlModelUpdates:(id)updates modelID:(id)d;
- (void)registerForMediaContentAccessControlModelUpdates:(id)updates modelID:(id)d;
- (void)registerForSettingsTransactions:(id)transactions;
- (void)registerForSharedUserDataModelUpdates:(id)updates modelID:(id)d;
- (void)registerForUserListeningHistoryUpdateControlModelUpdates:(id)updates modelID:(id)d;
- (void)registerObserverDeviceIdentifier:(id)identifier observerPushToken:(id)token subActivity:(id)activity subjectDeviceIdentifier:(id)deviceIdentifier;
- (void)runTransaction:(id)transaction waitForCloudPush:(BOOL)push completion:(id)completion;
- (void)start;
- (void)updateObserverDeviceIdentifier:(id)identifier observerPushToken:(id)token;
- (void)updateParticipants;
@end

@implementation HMDUserSettingsBackingStoreController

- (HMDSharedUserDataModelUpdateReceiver)sharedUserDataModelUpdateReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_sharedUserDataModelUpdateReceiver);

  return WeakRetained;
}

- (HMDUserListeningHistoryUpdateControlModelUpdateReceiver)userListeningHistoryUpdateControlModelUpdateReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_userListeningHistoryUpdateControlModelUpdateReceiver);

  return WeakRetained;
}

- (HMDMediaContentProfileAccessControlModelUpdateReceiver)mediaContentProfileAccessControlModelUpdateReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaContentProfileAccessControlModelUpdateReceiver);

  return WeakRetained;
}

- (HMDAssistantAccessControlModelUpdateReceiver)assistantAccessControlModelUpdateReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_assistantAccessControlModelUpdateReceiver);

  return WeakRetained;
}

- (HMDSettingTransactionReceiverProtocol)transactionReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionReceiver);

  return WeakRetained;
}

- (HMDUserSettingsBackingStoreControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)database:(id)database didRemoveZoneWithName:(id)name isPrivate:(BOOL)private
{
  privateCopy = private;
  nameCopy = name;
  zoneName = [(HMDUserSettingsBackingStoreController *)self zoneName];
  v8 = [nameCopy isEqualToString:?];

  if (v8)
  {
    delegate = [(HMDUserSettingsBackingStoreController *)self delegate];
    isCurrentUser = [delegate isCurrentUser];

    if (isCurrentUser == privateCopy)
    {
      workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HMDUserSettingsBackingStoreController_database_didRemoveZoneWithName_isPrivate___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
  }
}

void __82__HMDUserSettingsBackingStoreController_database_didRemoveZoneWithName_isPrivate___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Zone was removed by the database", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _invalidate];
  v6 = [*(a1 + 32) delegate];
  [v6 didStopBackingStoreController:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)database didCreateZoneWithName:(id)name isPrivate:(BOOL)private
{
  privateCopy = private;
  nameCopy = name;
  zoneName = [(HMDUserSettingsBackingStoreController *)self zoneName];
  v8 = [nameCopy isEqualToString:?];

  if (v8)
  {
    delegate = [(HMDUserSettingsBackingStoreController *)self delegate];
    isCurrentUser = [delegate isCurrentUser];

    if (isCurrentUser == privateCopy)
    {
      workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HMDUserSettingsBackingStoreController_database_didCreateZoneWithName_isPrivate___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = self;
      dispatch_async(workQueue, block);
    }
  }

  else
  {
  }
}

uint64_t __82__HMDUserSettingsBackingStoreController_database_didCreateZoneWithName_isPrivate___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling zone creation by starting", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) start];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)runTransaction:(id)transaction waitForCloudPush:(BOOL)push completion:(id)completion
{
  pushCopy = push;
  v60 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  completionCopy = completion;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HMDUserSettingsBackingStoreControllerRunStateAsString([(HMDUserSettingsBackingStoreController *)selfCopy runState]);
    *buf = 138543874;
    v55 = v12;
    v56 = 2112;
    v57 = transactionCopy;
    v58 = 2112;
    v59 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Running transaction %@, runState: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  localZone = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
  if (localZone)
  {
    v15 = transactionCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = MEMORY[0x277D17108];
    transactionLabel = [v17 transactionLabel];
    v20 = [v18 optionsWithLabel:transactionLabel];

    if (([v17 initialCreation] & 1) != 0 || pushCopy)
    {
      [v20 setShouldRollBackIfMirrorOutputFails:1];
    }

    updateModels = [v17 updateModels];
    if ([updateModels count])
    {
    }

    else
    {
      removeUUIDs = [v17 removeUUIDs];
      v34 = [removeUUIDs count];

      if (!v34)
      {
        v44 = objc_autoreleasePoolPush();
        v45 = selfCopy;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v47;
          v56 = 2112;
          v57 = v15;
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Skipping Empty transaction: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
        v32 = completionCopy;
        (*(completionCopy + 2))(completionCopy, 0);
        goto LABEL_19;
      }
    }

    updateModels2 = [v17 updateModels];
    removeUUIDs2 = [v17 removeUUIDs];
    v37 = [localZone addModels:updateModels2 andRemoveModelIDs:removeUUIDs2 options:v20];

    v38 = MEMORY[0x277D2C938];
    workQueue = [(HMDUserSettingsBackingStoreController *)selfCopy workQueue];
    v40 = [v38 schedulerWithDispatchQueue:workQueue];
    v41 = [v37 reschedule:v40];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __84__HMDUserSettingsBackingStoreController_runTransaction_waitForCloudPush_completion___block_invoke;
    v50[3] = &unk_278671270;
    v50[4] = selfCopy;
    v51 = v15;
    v53 = pushCopy;
    v32 = completionCopy;
    v52 = completionCopy;
    v42 = [v41 addCompletionBlock:v50];

LABEL_19:
    transactionCopy = v48;
    goto LABEL_20;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v55 = v25;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Failed to run transaction due to nil localZone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  v26 = [[HMDAssertionLogEvent alloc] initWithReason:@"Failed to run transaction due to nil localZone"];
  v27 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v27 submitLogEvent:v26];

  v28 = objc_autoreleasePoolPush();
  v29 = v23;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543618;
    v55 = v31;
    v56 = 2112;
    v57 = transactionCopy;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to run transaction: %@ due to nil localZone", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v32 = completionCopy;
  (*(completionCopy + 2))(completionCopy, v17);
LABEL_20:

  v43 = *MEMORY[0x277D85DE8];
}

void __84__HMDUserSettingsBackingStoreController_runTransaction_waitForCloudPush_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    v13 = HMFBooleanToString();
    *buf = 138544130;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v6;
    v39 = 2112;
    v40 = v13;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Finished running transaction: %@, Error: %@, waitForCloudPush: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  if (v6 || (*(a1 + 56) & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if (v5 && ([v5 mirrorOutputResult], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    v15 = [v5 mirrorOutputResult];
    v16 = MEMORY[0x277D2C938];
    v17 = [*(a1 + 32) workQueue];
    v18 = [v16 schedulerWithDispatchQueue:v17];
    v19 = [v15 reschedule:v18];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __84__HMDUserSettingsBackingStoreController_runTransaction_waitForCloudPush_completion___block_invoke_139;
    v29[3] = &unk_278671248;
    v20 = *(a1 + 40);
    v29[4] = *(a1 + 32);
    v30 = v20;
    v31 = v5;
    v32 = *(a1 + 48);
    v21 = [v19 addCompletionBlock:v29];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@No processing result to wait for.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v27 = *(a1 + 48);
    v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v27 + 16))(v27, v28);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __84__HMDUserSettingsBackingStoreController_runTransaction_waitForCloudPush_completion___block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = 138544130;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Finished running mirror protocol for transaction: %@, inResult: %@, inError: %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 56) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

- (id)settingTransactionWithName:(id)name
{
  nameCopy = name;
  v4 = [[HMDSettingTransaction alloc] initWithTransactionLabel:nameCopy];

  return v4;
}

- (void)registerForSettingsTransactions:(id)transactions
{
  v14 = *MEMORY[0x277D85DE8];
  transactionsCopy = transactions;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = transactionsCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering transaction receiver %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDUserSettingsBackingStoreController *)selfCopy setTransactionReceiver:transactionsCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_localZone:(id)zone updatedModel:(id)model previousModel:(id)previousModel options:(id)options
{
  v73 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  modelCopy = model;
  previousModelCopy = previousModel;
  optionsCopy = options;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v70 = v18;
    v71 = 2112;
    v72 = modelCopy;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Received transaction update for model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  transactionReceiver = [(HMDUserSettingsBackingStoreController *)selfCopy transactionReceiver];
  v20 = modelCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (!v22)
  {
    v23 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    if (v25)
    {
      [transactionReceiver transactionSettingModelUpdated:v23 previousModel:previousModelCopy];
LABEL_52:

      goto LABEL_53;
    }

    v26 = v23;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    if (v28)
    {
      [transactionReceiver transactionSettingConstraintModelUpdated:v26 previousModel:previousModelCopy];
      v25 = 0;
LABEL_51:

      goto LABEL_52;
    }

    v68 = zoneCopy;
    hmbModelID = [v26 hmbModelID];
    assistantAccessControlModelID = [(HMDUserSettingsBackingStoreController *)selfCopy assistantAccessControlModelID];
    v31 = [hmbModelID isEqual:assistantAccessControlModelID];

    if (v31)
    {
      assistantAccessControlModelUpdateReceiver = [(HMDUserSettingsBackingStoreController *)selfCopy assistantAccessControlModelUpdateReceiver];
      [assistantAccessControlModelUpdateReceiver assistantAccessControlModelUpdated:v26 previousModel:previousModelCopy];
LABEL_22:

      zoneCopy = v68;
      v25 = 0;
      v28 = 0;
      goto LABEL_51;
    }

    hmbModelID2 = [v26 hmbModelID];
    mediaContentProfileAccessControlModelID = [(HMDUserSettingsBackingStoreController *)selfCopy mediaContentProfileAccessControlModelID];
    v35 = [hmbModelID2 isEqual:mediaContentProfileAccessControlModelID];

    if (v35)
    {
      assistantAccessControlModelUpdateReceiver = [(HMDUserSettingsBackingStoreController *)selfCopy mediaContentProfileAccessControlModelUpdateReceiver];
      [assistantAccessControlModelUpdateReceiver mediaContentProfileAccessControlModelUpdated:v26 previousModel:previousModelCopy];
      goto LABEL_22;
    }

    hmbModelID3 = [v26 hmbModelID];
    sharedUserDataModelUpdateModelID = [(HMDUserSettingsBackingStoreController *)selfCopy sharedUserDataModelUpdateModelID];
    v38 = [hmbModelID3 isEqual:sharedUserDataModelUpdateModelID];

    if (v38)
    {
      sharedUserDataModelUpdateReceiver = [(HMDUserSettingsBackingStoreController *)selfCopy sharedUserDataModelUpdateReceiver];
      [sharedUserDataModelUpdateReceiver sharedUserDataModelUpdated:v26 previousModel:previousModelCopy];
    }

    v40 = v26;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;

    v67 = v42;
    hmbModelID4 = [v42 hmbModelID];
    userListeningHistoryUpdateModelID = [(HMDUserSettingsBackingStoreController *)selfCopy userListeningHistoryUpdateModelID];
    v45 = [hmbModelID4 isEqual:userListeningHistoryUpdateModelID];

    if (v45)
    {
      userListeningHistoryUpdateControlModelUpdateReceiver = [(HMDUserSettingsBackingStoreController *)selfCopy userListeningHistoryUpdateControlModelUpdateReceiver];
      v47 = v67;
      [userListeningHistoryUpdateControlModelUpdateReceiver userListeningHistoryUpdateControlModelUpdated:v67 previousModel:previousModelCopy];
      zoneCopy = v68;
      v25 = 0;
      v28 = 0;
LABEL_50:

      goto LABEL_51;
    }

    v48 = v40;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;

    if (v50)
    {
      v51 = previousModelCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      v53 = v52;

      v54 = [v50 hmbIsDifferentFromModel:v53 differingFields:0];
      userListeningHistoryUpdateControlModelUpdateReceiver = v50;
      if (!v54)
      {
        zoneCopy = v68;
        v25 = 0;
        v47 = v67;
        v28 = 0;
        goto LABEL_50;
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v66 = v50;
      [defaultCenter postNotificationName:@"HMDUserDidUpdateIDSActivityRegistration" object:?];
    }

    else
    {
      v66 = 0;
      v56 = v48;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      defaultCenter = v57;

      if (!defaultCenter)
      {
        v65 = v56;
        v59 = objc_autoreleasePoolPush();
        v60 = selfCopy;
        v61 = HMFGetOSLogHandle();
        v25 = 0;
        v28 = 0;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v62 = v64 = v59;
          *buf = 138543618;
          v70 = v62;
          v71 = 2112;
          v72 = v65;
          _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_INFO, "%{public}@No handler for model %@", buf, 0x16u);

          v59 = v64;
        }

        objc_autoreleasePoolPop(v59);
        defaultCenter = 0;
        zoneCopy = v68;
        goto LABEL_49;
      }

      delegate = [(HMDUserSettingsBackingStoreController *)selfCopy delegate];
      [delegate backingStoreController:selfCopy didUpdatePhotosPersonManagerSettingsModel:defaultCenter previousPhotosPersonManagerSettingsModel:previousModelCopy];
    }

    zoneCopy = v68;
    v25 = 0;
    v28 = 0;
LABEL_49:
    v47 = v67;

    userListeningHistoryUpdateControlModelUpdateReceiver = v66;
    goto LABEL_50;
  }

  [transactionReceiver transactionSettingGroupModelUpdated:v20 previousModel:previousModelCopy];
LABEL_53:

  v63 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)zone didProcessModelUpdate:(id)update
{
  zoneCopy = zone;
  updateCopy = update;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDUserSettingsBackingStoreController_localZone_didProcessModelUpdate___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = zoneCopy;
  v13 = updateCopy;
  v9 = updateCopy;
  v10 = zoneCopy;
  dispatch_async(workQueue, block);
}

void __73__HMDUserSettingsBackingStoreController_localZone_didProcessModelUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = [*(a1 + 48) model];
  v4 = [*(a1 + 48) previousModel];
  v5 = [*(a1 + 48) options];
  [v2 _localZone:v3 updatedModel:v6 previousModel:v4 options:v5];
}

- (void)localZone:(id)zone didProcessModelDeletion:(id)deletion
{
  v18 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  deletionCopy = deletion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    model = [deletionCopy model];
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = model;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Notified of unhandled model deletion: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)zone didProcessModelCreation:(id)creation
{
  zoneCopy = zone;
  creationCopy = creation;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDUserSettingsBackingStoreController_localZone_didProcessModelCreation___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = zoneCopy;
  v13 = creationCopy;
  v9 = creationCopy;
  v10 = zoneCopy;
  dispatch_async(workQueue, block);
}

void __75__HMDUserSettingsBackingStoreController_localZone_didProcessModelCreation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [*(a1 + 48) model];
  v4 = [*(a1 + 48) options];
  [v2 _localZone:v3 updatedModel:v5 previousModel:0 options:v4];
}

- (void)messenger:(id)messenger didReceiveInvitationRequestFromUser:(id)user device:(id)device
{
  v26 = *MEMORY[0x277D85DE8];
  messengerCopy = messenger;
  userCopy = user;
  deviceCopy = device;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

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
  participantsManager = [(HMDUserSettingsBackingStoreController *)selfCopy participantsManager];
  [participantsManager inviteUser:userCopy usingDevice:deviceCopy];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)messenger:(id)messenger didReceiveInvitationData:(id)data completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  messengerCopy = messenger;
  dataCopy = data;
  completionCopy = completion;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v15;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received invitation to share user settings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  v16 = MEMORY[0x277CCAAC8];
  v17 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v34 = 0;
  v18 = [v16 _strictlyUnarchivedObjectOfClasses:v17 fromData:dataCopy error:&v34];
  v19 = v34;

  if (v18)
  {
    database = [(HMDUserSettingsBackingStoreController *)selfCopy database];
    v21 = [database acceptInvitation:v18];

    v22 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDUserSettingsBackingStoreController *)selfCopy workQueue];
    v24 = [v22 schedulerWithDispatchQueue:workQueue2];
    v25 = [v21 reschedule:v24];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __87__HMDUserSettingsBackingStoreController_messenger_didReceiveInvitationData_completion___block_invoke;
    v32[3] = &unk_278671220;
    v32[4] = selfCopy;
    v33 = completionCopy;
    v26 = [v25 addCompletionBlock:v32];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      v36 = v30;
      v37 = 2112;
      v38 = dataCopy;
      v39 = 2112;
      v40 = v19;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive share invitation from invitation data: %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    (*(completionCopy + 2))(completionCopy, 0, v19);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __87__HMDUserSettingsBackingStoreController_messenger_didReceiveInvitationData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Successfully accepted invitation and created shared zone with ID %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) start];
  }

  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toDevice:(id)device
{
  deviceCopy = device;
  invitationCopy = invitation;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserSettingsBackingStoreController *)self _sendShareInvitation:invitationCopy toUser:0 device:deviceCopy];
}

- (void)manager:(id)manager didRequestSendForInvitation:(id)invitation toUser:(id)user
{
  userCopy = user;
  invitationCopy = invitation;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserSettingsBackingStoreController *)self _sendShareInvitation:invitationCopy toUser:userCopy device:0];
}

- (BOOL)manager:(id)manager shouldShareWithUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [userCopy isOwner];
  return workQueue;
}

- (void)_sendShareInvitation:(id)invitation toUser:(id)user device:(id)device
{
  v44 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  userCopy = user;
  deviceCopy = device;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v37 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:invitationCopy requiringSecureCoding:1 error:&v37];
  v13 = v37;
  if (v12)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__HMDUserSettingsBackingStoreController__sendShareInvitation_toUser_device___block_invoke;
    aBlock[3] = &unk_278686028;
    aBlock[4] = self;
    v14 = _Block_copy(aBlock);
    if (!(userCopy | deviceCopy))
    {
      _HMFPreconditionFailure();
    }

    v15 = v14;
    if (userCopy)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v19 = v34 = v13;
        shortDescription = [userCopy shortDescription];
        *buf = 138543618;
        v39 = v19;
        v40 = 2112;
        v41 = shortDescription;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Sending share invitation for user settings to user: %@", buf, 0x16u);

        v13 = v34;
      }

      objc_autoreleasePoolPop(v16);
      shareMessenger = [(HMDUserSettingsBackingStoreController *)selfCopy shareMessenger];
      v22 = +[HMDHomeKitVersion version6];
      v23 = [MEMORY[0x277CBEB98] set];
      [shareMessenger sendShareInvitationData:v12 toUser:userCopy minimumHomeKitVersion:v22 requiredSupportedFeatures:v23 completion:v15];
    }

    else
    {
      if (!deviceCopy)
      {
LABEL_15:

        goto LABEL_16;
      }

      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        [deviceCopy shortDescription];
        v32 = v35 = v13;
        *buf = 138543618;
        v39 = v31;
        v40 = 2112;
        v41 = v32;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Sending share invitation for user settings to device: %@", buf, 0x16u);

        v13 = v35;
      }

      objc_autoreleasePoolPop(v28);
      shareMessenger = [(HMDUserSettingsBackingStoreController *)selfCopy2 shareMessenger];
      [shareMessenger sendShareInvitationData:v12 toDevice:deviceCopy completion:v15];
    }

    goto LABEL_15;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543874;
    v39 = v27;
    v40 = 2112;
    v41 = invitationCopy;
    v42 = 2112;
    v43 = v13;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize invitation %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v24);
LABEL_16:

  v33 = *MEMORY[0x277D85DE8];
}

void __76__HMDUserSettingsBackingStoreController__sendShareInvitation_toUser_device___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (a2)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v10 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v10;
    v11 = "%{public}@User settings zone sharing invitation was successfully accepted";
    v12 = v9;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v10 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v10;
    v21 = 2112;
    v22 = v5;
    v11 = "%{public}@User settings zone sharing invitation was not accepted: %@";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 22;
  }

  _os_log_impl(&dword_229538000, v12, v13, v11, &v19, v14);

LABEL_7:
  objc_autoreleasePoolPop(v6);
  if (v5)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = [[HMDUserDataZoneControllerShareLogEvent alloc] initWithResult:v15 didAccept:a2];
  v17 = [*(a1 + 32) logEventSubmitter];
  [v17 submitLogEvent:v16];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateLogEventRunState:(int64_t)state
{
  v18 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDUserSettingsBackingStoreController *)self logEventRunState]!= state)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      if (state >= 6)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:state];
        v10 = [v11 stringWithFormat:@"Unknown state %@", v12];
      }

      else
      {
        v10 = off_2786712A8[state];
      }

      *buf = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating metric run state to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDUserSettingsBackingStoreController *)selfCopy setLogEventRunState:state];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateRunState:(int64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDUserSettingsBackingStoreController *)self runState]!= state)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMDUserSettingsBackingStoreControllerRunStateAsString(state);
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating run state to %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDUserSettingsBackingStoreController *)selfCopy setRunState:state];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)loadUserSettings
{
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  delegate = [(HMDUserSettingsBackingStoreController *)self delegate];
  userUUID = [delegate userUUID];
  v20 = 0;
  v8 = [localZone fetchModelsWithParentModelID:userUUID error:&v20];
  v9 = v20;
  allObjects = [v8 allObjects];
  v11 = [allObjects mutableCopy];

  [v4 addObjectsFromArray:v11];
  if ([v11 count])
  {
    do
    {
      firstObject = [v11 firstObject];
      [v11 hmf_removeFirstObject];
      localZone2 = [(HMDUserSettingsBackingStoreController *)self localZone];
      hmbModelID = [firstObject hmbModelID];
      v19 = v9;
      v15 = [localZone2 fetchModelsWithParentModelID:hmbModelID error:&v19];
      v16 = v19;

      allObjects2 = [v15 allObjects];

      [v4 addObjectsFromArray:allObjects2];
      [v11 addObjectsFromArray:allObjects2];

      v9 = v16;
    }

    while ([v11 count]);
  }

  else
  {
    v16 = v9;
  }

  return v4;
}

- (void)_didFetchZonesWithResult:(id)result isOwnedZone:(BOOL)zone error:(id)error
{
  v93 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (resultCopy)
  {
    zoneCopy = zone;
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      localZone = [resultCopy localZone];
      *buf = 138543618;
      v88 = v14;
      v89 = 2112;
      v90 = localZone;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Did fetch zones with local zone %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    delegate = [(HMDUserSettingsBackingStoreController *)selfCopy delegate];
    localZone2 = [resultCopy localZone];
    [(HMDUserSettingsBackingStoreController *)selfCopy setLocalZone:localZone2];

    localZone3 = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
    [localZone3 addObserverForAllModels:selfCopy];

    localZone4 = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
    [localZone4 startUp];

    [delegate didStartLocalZoneForBackingStoreController:selfCopy];
    if (selfCopy)
    {
      v75 = delegate;
      v76 = errorCopy;
      v77 = resultCopy;
      localZone5 = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
      v21 = [localZone5 fetchModelsOfType:objc_opt_class() error:0];

      v22 = [MEMORY[0x277CBEB58] set];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v83 objects:buf count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v84;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v84 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v83 + 1) + 8 * i);
            subjectDeviceIdentifier = [v28 subjectDeviceIdentifier];
            hmbParentModelID = [v28 hmbParentModelID];
            v31 = [(HMDUserSettingsBackingStoreController *)selfCopy _uuidForActivitySubject:subjectDeviceIdentifier observer:hmbParentModelID];

            hmbModelID = [v28 hmbModelID];
            LOBYTE(subjectDeviceIdentifier) = [hmbModelID isEqual:v31];

            if ((subjectDeviceIdentifier & 1) == 0)
            {
              hmbModelID2 = [v28 hmbModelID];
              [v22 addObject:hmbModelID2];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v83 objects:buf count:16];
        }

        while (v25);
      }

      if ([v22 count])
      {
        localZone6 = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
        v35 = [MEMORY[0x277D17108] optionsWithLabel:@"Removing non-derived HMDIDSActivityRegistrationModels"];
        v36 = [localZone6 removeModelIDs:v22 options:v35];
      }

      errorCopy = v76;
      resultCopy = v77;
      delegate = v75;
    }

    cloudZone = [resultCopy cloudZone];
    [(HMDUserSettingsBackingStoreController *)selfCopy setCloudZone:cloudZone];

    if ([delegate isCurrentUser] && (objc_msgSend(delegate, "isRunningOnHomeOwnersDevice") & 1) == 0)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = selfCopy;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v88 = v41;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Starting participant manager to share with owner", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
      cloudZone2 = [resultCopy cloudZone];
      v43 = [delegate backingStoreController:v39 createParticipantManagerForCloudZone:cloudZone2];
      [(HMDUserSettingsBackingStoreController *)v39 setParticipantsManager:v43];

      participantsManager = [(HMDUserSettingsBackingStoreController *)v39 participantsManager];
      [participantsManager setDataSource:v39];

      participantsManager2 = [(HMDUserSettingsBackingStoreController *)v39 participantsManager];
      [participantsManager2 setDelegate:v39];

      participantsManager3 = [(HMDUserSettingsBackingStoreController *)v39 participantsManager];
      [participantsManager3 configure];

      participantsManager4 = [(HMDUserSettingsBackingStoreController *)v39 participantsManager];
      [participantsManager4 updateShareParticipants];
    }

    v48 = selfCopy->_logger;
    v49 = v48;
    startupSignPost = selfCopy->_startupSignPost;
    if (startupSignPost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_229538000, v49, OS_SIGNPOST_EVENT, startupSignPost, "UserZone.Startup", "Fetched Zones", buf, 2u);
    }

    cloudZone3 = [(HMDUserSettingsBackingStoreController *)selfCopy cloudZone];
    startUp = [cloudZone3 startUp];
    v53 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDUserSettingsBackingStoreController *)selfCopy workQueue];
    v55 = [v53 schedulerWithDispatchQueue:workQueue2];
    v56 = [startUp reschedule:v55];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __84__HMDUserSettingsBackingStoreController__didFetchZonesWithResult_isOwnedZone_error___block_invoke;
    v82[3] = &unk_27868A250;
    v82[4] = selfCopy;
    v57 = [v56 addFailureBlock:v82];

    cloudZone4 = [(HMDUserSettingsBackingStoreController *)selfCopy cloudZone];
    startUp2 = [cloudZone4 startUp];
    v60 = MEMORY[0x277D2C938];
    workQueue3 = [(HMDUserSettingsBackingStoreController *)selfCopy workQueue];
    v62 = [v60 schedulerWithDispatchQueue:workQueue3];
    v63 = [startUp2 reschedule:v62];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __84__HMDUserSettingsBackingStoreController__didFetchZonesWithResult_isOwnedZone_error___block_invoke_114;
    v79[3] = &unk_27867EA90;
    v81 = zoneCopy;
    v79[4] = selfCopy;
    v80 = delegate;
    v64 = delegate;
    v65 = [v63 addSuccessBlock:v79];
  }

  else
  {
    v66 = self->_logger;
    v67 = v66;
    v68 = self->_startupSignPost;
    if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
    {
      *buf = 138412290;
      v88 = errorCopy;
      _os_signpost_emit_with_name_impl(&dword_229538000, v67, OS_SIGNPOST_INTERVAL_END, v68, "UserZone.Startup", "Error=%{signpost.description:attribute}@ ", buf, 0xCu);
    }

    v69 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v71 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = HMFGetLogIdentifier();
      zoneName = [(HMDUserSettingsBackingStoreController *)selfCopy2 zoneName];
      *buf = 138543874;
      v88 = v72;
      v89 = 2112;
      v90 = zoneName;
      v91 = 2112;
      v92 = errorCopy;
      _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_ERROR, "%{public}@Failed to open zones for user settings with zone ID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v69);
    [(HMDUserSettingsBackingStoreController *)selfCopy2 _updateRunState:0];
    [(HMDUserSettingsBackingStoreController *)selfCopy2 _updateLogEventRunState:3];
  }

  v74 = *MEMORY[0x277D85DE8];
}

void __84__HMDUserSettingsBackingStoreController__didFetchZonesWithResult_isOwnedZone_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Zone failed to startup: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(*(a1 + 32) + 8);
  v9 = v8;
  v10 = *(*(a1 + 32) + 16);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v12 = 138412290;
    v13 = v3;
    _os_signpost_emit_with_name_impl(&dword_229538000, v9, OS_SIGNPOST_INTERVAL_END, v10, "UserZone.Startup", "Error=%{signpost.description:attribute}@ ", &v12, 0xCu);
  }

  [*(a1 + 32) _updateRunState:0];
  [*(a1 + 32) _updateLogEventRunState:3];

  v11 = *MEMORY[0x277D85DE8];
}

void __84__HMDUserSettingsBackingStoreController__didFetchZonesWithResult_isOwnedZone_error___block_invoke_114(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Started user data zone.", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(*(a1 + 32) + 8);
  v9 = v8;
  v10 = *(*(a1 + 32) + 16);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_229538000, v9, OS_SIGNPOST_INTERVAL_END, v10, "UserZone.Startup", "", &v14, 2u);
  }

  if (*(a1 + 48) == 1)
  {
    v11 = [*(a1 + 32) cloudZone];
    v12 = [v11 registerSubscriptionForExternalRecordType:0];
  }

  [*(a1 + 32) _updateRunState:2];
  [*(a1 + 32) _updateLogEventRunState:2];
  [*(a1 + 40) didStartBackingStoreController:*(a1 + 32)];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_uuidForActivitySubject:(void *)subject observer:
{
  if (self)
  {
    v4 = MEMORY[0x277CCAD78];
    v5 = a2;
    data = [subject data];
    v7 = [v4 hm_deriveUUIDFromBaseUUID:v5 identifierSalt:data];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_startWithSharedZone
{
  v34 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  database = [(HMDUserSettingsBackingStoreController *)self database];
  v5 = [database registerSharedSubscriptionForExternalRecordType:0];

  database2 = [(HMDUserSettingsBackingStoreController *)self database];
  zoneName = [(HMDUserSettingsBackingStoreController *)self zoneName];
  v8 = [database2 existingSharedZoneIDWithName:zoneName];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      zoneName2 = [(HMDUserSettingsBackingStoreController *)selfCopy zoneName];
      *buf = 138543874;
      v29 = v13;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = zoneName2;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Got zoneID %@ for user settings zone %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    database3 = [(HMDUserSettingsBackingStoreController *)selfCopy database];
    v16 = objc_alloc_init(MEMORY[0x277D17068]);
    v27 = 0;
    v17 = [database3 sharedZonesWithID:v8 configuration:v16 delegate:0 error:&v27];
    shareMessenger = v27;

    [(HMDUserSettingsBackingStoreController *)selfCopy _didFetchZonesWithResult:v17 isOwnedZone:0 error:shareMessenger];
  }

  else
  {
    if (v12)
    {
      v19 = HMFGetLogIdentifier();
      zoneName3 = [(HMDUserSettingsBackingStoreController *)selfCopy zoneName];
      *buf = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = zoneName3;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@No shared zone exists for user settings with zone name %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDUserSettingsBackingStoreController *)selfCopy _updateRunState:0];
    [(HMDUserSettingsBackingStoreController *)selfCopy _updateLogEventRunState:5];
    delegate = [(HMDUserSettingsBackingStoreController *)selfCopy delegate];
    v17 = [delegate ownerForUserSettingsBackingStoreController:selfCopy];

    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v25;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Requesting user settings share from user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    shareMessenger = [(HMDUserSettingsBackingStoreController *)v23 shareMessenger];
    [shareMessenger requestShareInvitationDataFromUser:v17];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_startWithOwnedZone
{
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_alloc_init(MEMORY[0x277D170E8]);
  [v4 setShouldRebuildOnManateeKeyLoss:1];
  database = [(HMDUserSettingsBackingStoreController *)self database];
  zoneName = [(HMDUserSettingsBackingStoreController *)self zoneName];
  v9 = 0;
  v7 = [database privateZonesWithName:zoneName configuration:v4 delegate:0 error:&v9];
  v8 = v9;

  [(HMDUserSettingsBackingStoreController *)self _didFetchZonesWithResult:v7 isOwnedZone:1 error:v8];
}

- (void)updateParticipants
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Updating participants", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  participantsManager = [(HMDUserSettingsBackingStoreController *)selfCopy participantsManager];
  [participantsManager updateShareParticipants];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearParticipants
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Clearing participants", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  participantsManager = [(HMDUserSettingsBackingStoreController *)selfCopy participantsManager];
  [participantsManager clearParticipants];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)queryPushTokensForDevicesObservingSubjectDevice:(id)device subActivity:(id)activity
{
  v31[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  activityCopy = activity;
  v30 = @"subjectDeviceIdentifier";
  v31[0] = deviceCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v12;
    v28 = 2112;
    v29 = deviceCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Querying all models observing %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  localZone = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
  v14 = +[HMDIDSActivityRegistrationModel registeredDevicesQuery];
  v15 = [localZone queryModelsUsingQuery:v14 arguments:v8];

  array = [MEMORY[0x277CBEB18] array];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __101__HMDUserSettingsBackingStoreController_queryPushTokensForDevicesObservingSubjectDevice_subActivity___block_invoke;
  v22[3] = &unk_2786711F8;
  v23 = activityCopy;
  v24 = selfCopy;
  v25 = array;
  v17 = array;
  v18 = activityCopy;
  [v15 enumerateObjectsUsingBlock:v22];
  v19 = [v17 copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __101__HMDUserSettingsBackingStoreController_queryPushTokensForDevicesObservingSubjectDevice_subActivity___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 subActivities];
  v5 = [v4 containsObject:*(a1 + 32)];

  if (v5)
  {
    v6 = [*(a1 + 40) localZone];
    v7 = [v3 hmbParentModelID];
    v19 = 0;
    v8 = [v6 fetchModelWithModelID:v7 ofType:objc_opt_class() error:&v19];
    v9 = v19;

    v10 = [v8 pushToken];

    if (v10)
    {
      v11 = *(a1 + 48);
      v12 = [v8 pushToken];
      [v11 addObject:v12];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = @"No parent observer model found";
        *buf = 138543874;
        v21 = v16;
        if (v9)
        {
          v17 = v9;
        }

        v22 = 2112;
        v23 = v3;
        v24 = 2112;
        v25 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to locate push token for registration %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)deregisterObserverDeviceIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = identifierCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removing IDS Activity Observer: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  localZone = [(HMDUserSettingsBackingStoreController *)selfCopy localZone];
  v10 = [MEMORY[0x277CBEB98] setWithObject:identifierCopy];
  v11 = [MEMORY[0x277D17108] optionsWithLabel:@"Removing IDS Activity Observer"];
  v12 = [localZone removeModelIDs:v10 options:v11];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__HMDUserSettingsBackingStoreController_deregisterObserverDeviceIdentifier___block_invoke;
  v16[3] = &unk_27868A1D8;
  v16[4] = selfCopy;
  v17 = identifierCopy;
  v13 = identifierCopy;
  v14 = [v12 addFailureBlock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __76__HMDUserSettingsBackingStoreController_deregisterObserverDeviceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove IDS Activity observer %@: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)deregisterObserverDeviceIdentifier:(id)identifier observerPushToken:(id)token subActivity:(id)activity subjectDeviceIdentifier:(id)deviceIdentifier
{
  v62 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  tokenCopy = token;
  activityCopy = activity;
  deviceIdentifierCopy = deviceIdentifier;
  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  v15 = [localZone fetchModelWithModelID:identifierCopy ofType:objc_opt_class() error:0];

  if (v15)
  {
    v16 = [(HMDUserSettingsBackingStoreController *)self _registrationWithParent:identifierCopy subjectDeviceIdentifier:deviceIdentifierCopy];
    if (v16)
    {
      v17 = [MEMORY[0x277CBEB58] set];
      subActivities = [v16 subActivities];
      v19 = [subActivities containsObject:activityCopy];

      v52 = deviceIdentifierCopy;
      v53 = tokenCopy;
      if (v19)
      {
        v20 = MEMORY[0x277CBEB18];
        subActivities2 = [v16 subActivities];
        v22 = [v20 arrayWithArray:subActivities2];

        [v22 removeObject:activityCopy];
        v23 = [v22 copy];
        [v16 setSubActivities:v23];

        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v27 = v26 = v17;
          *buf = 138543874;
          v57 = v27;
          v58 = 2112;
          v59 = activityCopy;
          v60 = 2112;
          v61 = v22;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Removed subActivity %@ from existing list %@", buf, 0x20u);

          v17 = v26;
        }

        objc_autoreleasePoolPop(context);
        [v17 addObject:v16];

        tokenCopy = v53;
      }

      [v15 pushToken];
      v29 = v28 = v17;
      v30 = [tokenCopy isEqualToData:v29];

      v31 = v28;
      if ((v30 & 1) == 0)
      {
        [v15 setPushToken:tokenCopy];
        [v28 addObject:v15];
      }

      if ([v28 count])
      {
        v32 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543874;
          v57 = v35;
          v58 = 2112;
          v59 = activityCopy;
          v60 = 2112;
          v61 = identifierCopy;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Removing subActivity %@ from IDS Activity Registration for: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
        localZone2 = [(HMDUserSettingsBackingStoreController *)selfCopy2 localZone];
        v37 = [MEMORY[0x277CBEB98] setWithObjects:{v15, v16, 0}];
        v38 = [MEMORY[0x277D17108] optionsWithLabel:@"Updating IDS Activity Registration"];
        v39 = [localZone2 addModels:v37 options:v38];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __130__HMDUserSettingsBackingStoreController_deregisterObserverDeviceIdentifier_observerPushToken_subActivity_subjectDeviceIdentifier___block_invoke;
        v54[3] = &unk_27868A1D8;
        v54[4] = selfCopy2;
        v55 = identifierCopy;
        v40 = [v39 addFailureBlock:v54];

        tokenCopy = v53;
        v31 = v28;
      }

      deviceIdentifierCopy = v52;
    }

    else
    {
      v45 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v49 = v48 = tokenCopy;
        *buf = 138543618;
        v57 = v49;
        v58 = 2112;
        v59 = identifierCopy;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Unable to deregister, no IDS Activty Registration model found for %@", buf, 0x16u);

        tokenCopy = v48;
      }

      objc_autoreleasePoolPop(v45);
    }
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v44;
      v58 = 2112;
      v59 = identifierCopy;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Unable to deregister, no IDS Activty Observer model found for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (id)_registrationWithParent:(void *)parent subjectDeviceIdentifier:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  parentCopy = parent;
  if (self)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    localZone = [self localZone];
    v8 = [localZone fetchModelsWithParentModelID:v5 error:0];

    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          subjectDeviceIdentifier = [v12 subjectDeviceIdentifier];
          v14 = [subjectDeviceIdentifier isEqual:parentCopy];

          if (v14)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

void __130__HMDUserSettingsBackingStoreController_deregisterObserverDeviceIdentifier_observerPushToken_subActivity_subjectDeviceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update IDS Activity registration for %@: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateObserverDeviceIdentifier:(id)identifier observerPushToken:(id)token
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  tokenCopy = token;
  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  v9 = [localZone fetchModelWithModelID:identifierCopy ofType:objc_opt_class() error:0];

  if (!v9)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v15;
      v31 = 2112;
      v32 = identifierCopy;
      v16 = "%{public}@Unable to update observer pushToken, no IDS Activty Observer model found for %@";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v12);
    goto LABEL_12;
  }

  pushToken = [v9 pushToken];
  v11 = [tokenCopy isEqualToData:pushToken];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v15;
      v31 = 2112;
      v32 = identifierCopy;
      v16 = "%{public}@Push token already up to date for %@";
LABEL_7:
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, v16, buf, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v9 setPushToken:tokenCopy];
  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v20;
    v31 = 2112;
    v32 = identifierCopy;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Updating IDS Activity observer pushToken: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  localZone2 = [(HMDUserSettingsBackingStoreController *)selfCopy3 localZone];
  v22 = [MEMORY[0x277CBEB98] setWithObject:v9];
  v23 = [MEMORY[0x277D17108] optionsWithLabel:@"Reregistering IDS Activity Observer"];
  v24 = [localZone2 addModels:v22 options:v23];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __90__HMDUserSettingsBackingStoreController_updateObserverDeviceIdentifier_observerPushToken___block_invoke;
  v27[3] = &unk_27868A1D8;
  v27[4] = selfCopy3;
  v28 = identifierCopy;
  v25 = [v24 addFailureBlock:v27];

LABEL_12:
  v26 = *MEMORY[0x277D85DE8];
}

void __90__HMDUserSettingsBackingStoreController_updateObserverDeviceIdentifier_observerPushToken___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update IDS Activity for observer %@: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)registerObserverDeviceIdentifier:(id)identifier observerPushToken:(id)token subActivity:(id)activity subjectDeviceIdentifier:(id)deviceIdentifier
{
  v65[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  tokenCopy = token;
  activityCopy = activity;
  deviceIdentifierCopy = deviceIdentifier;
  v14 = [MEMORY[0x277CBEB58] set];
  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  v16 = [localZone fetchModelWithModelID:identifierCopy ofType:objc_opt_class() error:0];

  v56 = activityCopy;
  if (!v16)
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v60 = v34;
      v61 = 2112;
      v62 = identifierCopy;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@No IDS Activity observer found for %@, creating", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v16 = [[HMDIDSActivityObserverModel alloc] initWithModelID:identifierCopy];
    [v14 addObject:v16];
    goto LABEL_13;
  }

  v17 = [(HMDUserSettingsBackingStoreController *)self _registrationWithParent:identifierCopy subjectDeviceIdentifier:deviceIdentifierCopy];
  if (!v17)
  {
LABEL_13:
    v55 = tokenCopy;
    v35 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v60 = v38;
      v61 = 2112;
      v62 = deviceIdentifierCopy;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@No IDS Activity registration found for %@, creating", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v26 = [(HMDUserSettingsBackingStoreController *)selfCopy2 _uuidForActivitySubject:deviceIdentifierCopy observer:identifierCopy];
    v39 = [HMDIDSActivityRegistrationModel alloc];
    hmbModelID = [(HMBModel *)v16 hmbModelID];
    v18 = [(HMBModel *)v39 initWithModelID:v26 parentModelID:hmbModelID];

    [(HMDIDSActivityRegistrationModel *)v18 setSubjectDeviceIdentifier:deviceIdentifierCopy];
    v65[0] = v56;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
    [(HMDIDSActivityRegistrationModel *)v18 setSubActivities:v41];

    goto LABEL_16;
  }

  v18 = v17;
  subActivities = [(HMDIDSActivityRegistrationModel *)v17 subActivities];
  v20 = activityCopy;
  v21 = [subActivities containsObject:activityCopy];

  if (v21)
  {
    goto LABEL_17;
  }

  v55 = tokenCopy;
  v22 = MEMORY[0x277CBEB18];
  subActivities2 = [(HMDIDSActivityRegistrationModel *)v18 subActivities];
  v24 = subActivities2;
  if (subActivities2)
  {
    v25 = subActivities2;
  }

  else
  {
    v25 = MEMORY[0x277CBEBF8];
  }

  v26 = [v22 arrayWithArray:v25];

  [v26 addObject:v20];
  v27 = [v26 copy];
  [(HMDIDSActivityRegistrationModel *)v18 setSubActivities:v27];

  v28 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v54 = HMFGetLogIdentifier();
    *buf = 138543874;
    v60 = v54;
    v61 = 2112;
    v62 = v56;
    v63 = 2112;
    v64 = v26;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Added subActivity %@ to existing list %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v28);
LABEL_16:
  [v14 addObject:v18];

  tokenCopy = v55;
LABEL_17:
  pushToken = [(HMDIDSActivityObserverModel *)v16 pushToken];
  v43 = [tokenCopy isEqualToData:pushToken];

  v44 = v56;
  if ((v43 & 1) == 0)
  {
    [(HMDIDSActivityObserverModel *)v16 setPushToken:tokenCopy];
    [v14 addObject:v16];
  }

  if ([v14 count])
  {
    v45 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543618;
      v60 = v48;
      v61 = 2112;
      v62 = v14;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@Updating IDS Activity Registration info: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);
    localZone2 = [(HMDUserSettingsBackingStoreController *)selfCopy4 localZone];
    v50 = [MEMORY[0x277D17108] optionsWithLabel:@"Updating IDS Activity Registration"];
    v51 = [localZone2 addModels:v14 options:v50];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __128__HMDUserSettingsBackingStoreController_registerObserverDeviceIdentifier_observerPushToken_subActivity_subjectDeviceIdentifier___block_invoke;
    v57[3] = &unk_27868A1D8;
    v57[4] = selfCopy4;
    v58 = identifierCopy;
    v52 = [v51 addFailureBlock:v57];

    v44 = v56;
  }

  v53 = *MEMORY[0x277D85DE8];
}

void __128__HMDUserSettingsBackingStoreController_registerObserverDeviceIdentifier_observerPushToken_subActivity_subjectDeviceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to update IDS Activity registration for observer %@: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)destroyZone
{
  v17 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Destroying zone", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  delegate = [(HMDUserSettingsBackingStoreController *)selfCopy delegate];
  isCurrentUser = [delegate isCurrentUser];

  database = [(HMDUserSettingsBackingStoreController *)selfCopy database];
  zoneName = [(HMDUserSettingsBackingStoreController *)selfCopy zoneName];
  if (isCurrentUser)
  {
    v12 = [database removePrivateZonesWithName:zoneName];
  }

  else
  {
    v13 = [database removeSharedZonesWithName:zoneName];
  }

  [(HMDUserSettingsBackingStoreController *)selfCopy _invalidate];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Invalidating user zone", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  workQueue = [(HMDUserSettingsBackingStoreController *)selfCopy workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserSettingsBackingStoreController *)selfCopy setLocalZone:0];
  [(HMDUserSettingsBackingStoreController *)selfCopy setCloudZone:0];
  [(HMDUserSettingsBackingStoreController *)selfCopy _updateRunState:0];
  [(HMDUserSettingsBackingStoreController *)selfCopy _updateLogEventRunState:4];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerForSharedUserDataModelUpdates:(id)updates modelID:(id)d
{
  dCopy = d;
  [(HMDUserSettingsBackingStoreController *)self setSharedUserDataModelUpdateReceiver:updates];
  [(HMDUserSettingsBackingStoreController *)self setSharedUserDataModelUpdateModelID:dCopy];
}

- (void)registerForUserListeningHistoryUpdateControlModelUpdates:(id)updates modelID:(id)d
{
  dCopy = d;
  updatesCopy = updates;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserSettingsBackingStoreController *)self setUserListeningHistoryUpdateControlModelUpdateReceiver:updatesCopy];
  [(HMDUserSettingsBackingStoreController *)self setUserListeningHistoryUpdateModelID:dCopy];
}

- (id)loadUserListeningHistoryUpdateControlModelWithModelID:(id)d error:(id *)error
{
  dCopy = d;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  v9 = [localZone fetchModelWithModelID:dCopy error:error];

  return v9;
}

- (void)registerForMediaContentAccessControlModelUpdates:(id)updates modelID:(id)d
{
  dCopy = d;
  updatesCopy = updates;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserSettingsBackingStoreController *)self setMediaContentProfileAccessControlModelUpdateReceiver:updatesCopy];
  [(HMDUserSettingsBackingStoreController *)self setMediaContentProfileAccessControlModelID:dCopy];
}

- (id)loadMediaContentAccessControlModelWithModelID:(id)d error:(id *)error
{
  dCopy = d;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  v9 = [localZone fetchModelWithModelID:dCopy error:error];

  return v9;
}

- (void)registerForAssistantAccessControlModelUpdates:(id)updates modelID:(id)d
{
  dCopy = d;
  updatesCopy = updates;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserSettingsBackingStoreController *)self setAssistantAccessControlModelUpdateReceiver:updatesCopy];
  [(HMDUserSettingsBackingStoreController *)self setAssistantAccessControlModelID:dCopy];
}

- (id)loadAssistantAccessControlModelWithModelID:(id)d error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  v9 = [localZone fetchModelWithModelID:dCopy error:error];

  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v10 && !v12)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Obtained model of unexpected type %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)loadSharedUserDataModelWithError:(id *)error
{
  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  delegate = [(HMDUserSettingsBackingStoreController *)self delegate];
  userUUID = [delegate userUUID];
  v8 = [localZone fetchModelWithModelID:userUUID error:error];

  return v8;
}

- (id)loadPrivateUserDataModelWithError:(id *)error
{
  localZone = [(HMDUserSettingsBackingStoreController *)self localZone];
  delegate = [(HMDUserSettingsBackingStoreController *)self delegate];
  userUUID = [delegate userUUID];
  v8 = [localZone fetchModelWithModelID:userUUID error:error];

  return v8;
}

- (void)start
{
  v31 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDUserSettingsBackingStoreController *)self runState])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMDUserSettingsBackingStoreControllerRunStateAsString([(HMDUserSettingsBackingStoreController *)selfCopy runState]);
      v27 = 138543618;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Already in run state %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    delegate = [(HMDUserSettingsBackingStoreController *)self delegate];
    if ([delegate isCurrentUser])
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        userUUID = [delegate userUUID];
        v27 = 138543618;
        v28 = v13;
        v29 = 2112;
        v30 = userUUID;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting backing store controller to fetch owned zone for user %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDUserSettingsBackingStoreController *)selfCopy2 _updateRunState:1];
      [(HMDUserSettingsBackingStoreController *)selfCopy2 _updateLogEventRunState:1];
      logger = selfCopy2->_logger;
      if (os_signpost_enabled(logger))
      {
        v16 = logger;
        userUUID2 = [delegate userUUID];
        v27 = 138412546;
        v28 = @"Owned";
        v29 = 2112;
        v30 = userUUID2;
        _os_signpost_emit_with_name_impl(&dword_229538000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UserZone.Startup", "Type=%{signpost.description:attribute}@ User=%{signpost.description:attribute}@ ", &v27, 0x16u);
      }

      selfCopy2->_startupSignPost = 0xEEEEB0B5B2B2EEEELL;
      [(HMDUserSettingsBackingStoreController *)selfCopy2 _startWithOwnedZone];
    }

    else if (([delegate isCurrentUser] & 1) == 0 && objc_msgSend(delegate, "isRunningOnHomeOwnersDevice"))
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        userUUID3 = [delegate userUUID];
        v27 = 138543618;
        v28 = v21;
        v29 = 2112;
        v30 = userUUID3;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Starting backing store controller to fetch shared zone for user %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      [(HMDUserSettingsBackingStoreController *)selfCopy3 _updateRunState:1];
      [(HMDUserSettingsBackingStoreController *)selfCopy3 _updateLogEventRunState:1];
      v23 = selfCopy3->_logger;
      if (os_signpost_enabled(v23))
      {
        v24 = v23;
        userUUID4 = [delegate userUUID];
        v27 = 138412546;
        v28 = @"Shared";
        v29 = 2112;
        v30 = userUUID4;
        _os_signpost_emit_with_name_impl(&dword_229538000, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UserZone.Startup", "Type=%{signpost.description:attribute}@ User=%{signpost.description:attribute}@ ", &v27, 0x16u);
      }

      selfCopy3->_startupSignPost = 0xEEEEB0B5B2B2EEEELL;
      [(HMDUserSettingsBackingStoreController *)selfCopy3 _startWithSharedZone];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (HMDUserSettingsBackingStoreController)initWithDelegate:(id)delegate queue:(id)queue zoneName:(id)name database:(id)database shareMessenger:(id)messenger
{
  delegateCopy = delegate;
  queueCopy = queue;
  nameCopy = name;
  databaseCopy = database;
  messengerCopy = messenger;
  v23.receiver = self;
  v23.super_class = HMDUserSettingsBackingStoreController;
  v17 = [(HMDUserSettingsBackingStoreController *)&v23 init];
  if (v17)
  {
    v18 = HMFGetOSLogHandle();
    logger = v17->_logger;
    v17->_logger = v18;

    v17->_startupSignPost = 0;
    objc_storeWeak(&v17->_delegate, delegateCopy);
    objc_storeStrong(&v17->_workQueue, queue);
    v20 = +[HMDMetricsManager sharedLogEventSubmitter];
    logEventSubmitter = v17->_logEventSubmitter;
    v17->_logEventSubmitter = v20;

    objc_storeStrong(&v17->_zoneName, name);
    objc_storeStrong(&v17->_database, database);
    objc_storeStrong(&v17->_shareMessenger, messenger);
    [(HMDCloudShareMessenger *)v17->_shareMessenger setDelegate:v17];
    [(HMDCloudShareMessenger *)v17->_shareMessenger configure];
    v17->_runState = 0;
    v17->_logEventRunState = 0;
    [databaseCopy addDelegate:v17];
  }

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t81 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t81, &__block_literal_global_21088);
  }

  v3 = logCategory__hmf_once_v82;

  return v3;
}

void __52__HMDUserSettingsBackingStoreController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v82;
  logCategory__hmf_once_v82 = v1;
}

@end