@interface HMDUserSettingsBackingStoreController
+ (id)logCategory;
- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4;
- (HMDAssistantAccessControlModelUpdateReceiver)assistantAccessControlModelUpdateReceiver;
- (HMDMediaContentProfileAccessControlModelUpdateReceiver)mediaContentProfileAccessControlModelUpdateReceiver;
- (HMDSettingTransactionReceiverProtocol)transactionReceiver;
- (HMDSharedUserDataModelUpdateReceiver)sharedUserDataModelUpdateReceiver;
- (HMDUserListeningHistoryUpdateControlModelUpdateReceiver)userListeningHistoryUpdateControlModelUpdateReceiver;
- (HMDUserSettingsBackingStoreController)initWithDelegate:(id)a3 queue:(id)a4 zoneName:(id)a5 database:(id)a6 shareMessenger:(id)a7;
- (HMDUserSettingsBackingStoreControllerDelegate)delegate;
- (id)_registrationWithParent:(void *)a3 subjectDeviceIdentifier:;
- (id)_uuidForActivitySubject:(void *)a3 observer:;
- (id)loadAssistantAccessControlModelWithModelID:(id)a3 error:(id *)a4;
- (id)loadMediaContentAccessControlModelWithModelID:(id)a3 error:(id *)a4;
- (id)loadPrivateUserDataModelWithError:(id *)a3;
- (id)loadSharedUserDataModelWithError:(id *)a3;
- (id)loadUserListeningHistoryUpdateControlModelWithModelID:(id)a3 error:(id *)a4;
- (id)loadUserSettings;
- (id)queryPushTokensForDevicesObservingSubjectDevice:(id)a3 subActivity:(id)a4;
- (id)settingTransactionWithName:(id)a3;
- (void)_didFetchZonesWithResult:(id)a3 isOwnedZone:(BOOL)a4 error:(id)a5;
- (void)_invalidate;
- (void)_localZone:(id)a3 updatedModel:(id)a4 previousModel:(id)a5 options:(id)a6;
- (void)_sendShareInvitation:(id)a3 toUser:(id)a4 device:(id)a5;
- (void)_startWithOwnedZone;
- (void)_startWithSharedZone;
- (void)_updateLogEventRunState:(int64_t)a3;
- (void)_updateRunState:(int64_t)a3;
- (void)clearParticipants;
- (void)database:(id)a3 didCreateZoneWithName:(id)a4 isPrivate:(BOOL)a5;
- (void)database:(id)a3 didRemoveZoneWithName:(id)a4 isPrivate:(BOOL)a5;
- (void)deregisterObserverDeviceIdentifier:(id)a3;
- (void)deregisterObserverDeviceIdentifier:(id)a3 observerPushToken:(id)a4 subActivity:(id)a5 subjectDeviceIdentifier:(id)a6;
- (void)destroyZone;
- (void)localZone:(id)a3 didProcessModelCreation:(id)a4;
- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4;
- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4;
- (void)manager:(id)a3 didRequestSendForInvitation:(id)a4 toDevice:(id)a5;
- (void)manager:(id)a3 didRequestSendForInvitation:(id)a4 toUser:(id)a5;
- (void)messenger:(id)a3 didReceiveInvitationData:(id)a4 completion:(id)a5;
- (void)messenger:(id)a3 didReceiveInvitationRequestFromUser:(id)a4 device:(id)a5;
- (void)registerForAssistantAccessControlModelUpdates:(id)a3 modelID:(id)a4;
- (void)registerForMediaContentAccessControlModelUpdates:(id)a3 modelID:(id)a4;
- (void)registerForSettingsTransactions:(id)a3;
- (void)registerForSharedUserDataModelUpdates:(id)a3 modelID:(id)a4;
- (void)registerForUserListeningHistoryUpdateControlModelUpdates:(id)a3 modelID:(id)a4;
- (void)registerObserverDeviceIdentifier:(id)a3 observerPushToken:(id)a4 subActivity:(id)a5 subjectDeviceIdentifier:(id)a6;
- (void)runTransaction:(id)a3 waitForCloudPush:(BOOL)a4 completion:(id)a5;
- (void)start;
- (void)updateObserverDeviceIdentifier:(id)a3 observerPushToken:(id)a4;
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

- (void)database:(id)a3 didRemoveZoneWithName:(id)a4 isPrivate:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v12 = [(HMDUserSettingsBackingStoreController *)self zoneName];
  v8 = [v7 isEqualToString:?];

  if (v8)
  {
    v9 = [(HMDUserSettingsBackingStoreController *)self delegate];
    v10 = [v9 isCurrentUser];

    if (v10 == v5)
    {
      v11 = [(HMDUserSettingsBackingStoreController *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HMDUserSettingsBackingStoreController_database_didRemoveZoneWithName_isPrivate___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = self;
      dispatch_async(v11, block);
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

- (void)database:(id)a3 didCreateZoneWithName:(id)a4 isPrivate:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v12 = [(HMDUserSettingsBackingStoreController *)self zoneName];
  v8 = [v7 isEqualToString:?];

  if (v8)
  {
    v9 = [(HMDUserSettingsBackingStoreController *)self delegate];
    v10 = [v9 isCurrentUser];

    if (v10 == v5)
    {
      v11 = [(HMDUserSettingsBackingStoreController *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__HMDUserSettingsBackingStoreController_database_didCreateZoneWithName_isPrivate___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = self;
      dispatch_async(v11, block);
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

- (void)runTransaction:(id)a3 waitForCloudPush:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v60 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v49 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = HMDUserSettingsBackingStoreControllerRunStateAsString([(HMDUserSettingsBackingStoreController *)v10 runState]);
    *buf = 138543874;
    v55 = v12;
    v56 = 2112;
    v57 = v8;
    v58 = 2112;
    v59 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Running transaction %@, runState: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HMDUserSettingsBackingStoreController *)v10 localZone];
  if (v14)
  {
    v15 = v8;
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
    v19 = [v17 transactionLabel];
    v20 = [v18 optionsWithLabel:v19];

    if (([v17 initialCreation] & 1) != 0 || v6)
    {
      [v20 setShouldRollBackIfMirrorOutputFails:1];
    }

    v21 = [v17 updateModels];
    if ([v21 count])
    {
    }

    else
    {
      v33 = [v17 removeUUIDs];
      v34 = [v33 count];

      if (!v34)
      {
        v44 = objc_autoreleasePoolPush();
        v45 = v10;
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
        v32 = v49;
        (*(v49 + 2))(v49, 0);
        goto LABEL_19;
      }
    }

    v35 = [v17 updateModels];
    v36 = [v17 removeUUIDs];
    v37 = [v14 addModels:v35 andRemoveModelIDs:v36 options:v20];

    v38 = MEMORY[0x277D2C938];
    v39 = [(HMDUserSettingsBackingStoreController *)v10 workQueue];
    v40 = [v38 schedulerWithDispatchQueue:v39];
    v41 = [v37 reschedule:v40];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __84__HMDUserSettingsBackingStoreController_runTransaction_waitForCloudPush_completion___block_invoke;
    v50[3] = &unk_278671270;
    v50[4] = v10;
    v51 = v15;
    v53 = v6;
    v32 = v49;
    v52 = v49;
    v42 = [v41 addCompletionBlock:v50];

LABEL_19:
    v8 = v48;
    goto LABEL_20;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = v10;
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
    v57 = v8;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to run transaction: %@ due to nil localZone", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v32 = v49;
  (*(v49 + 2))(v49, v17);
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

- (id)settingTransactionWithName:(id)a3
{
  v3 = a3;
  v4 = [[HMDSettingTransaction alloc] initWithTransactionLabel:v3];

  return v4;
}

- (void)registerForSettingsTransactions:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Registering transaction receiver %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDUserSettingsBackingStoreController *)v6 setTransactionReceiver:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_localZone:(id)a3 updatedModel:(id)a4 previousModel:(id)a5 options:(id)a6
{
  v73 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v70 = v18;
    v71 = 2112;
    v72 = v11;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Received transaction update for model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v19 = [(HMDUserSettingsBackingStoreController *)v16 transactionReceiver];
  v20 = v11;
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
      [v19 transactionSettingModelUpdated:v23 previousModel:v12];
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
      [v19 transactionSettingConstraintModelUpdated:v26 previousModel:v12];
      v25 = 0;
LABEL_51:

      goto LABEL_52;
    }

    v68 = v10;
    v29 = [v26 hmbModelID];
    v30 = [(HMDUserSettingsBackingStoreController *)v16 assistantAccessControlModelID];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      v32 = [(HMDUserSettingsBackingStoreController *)v16 assistantAccessControlModelUpdateReceiver];
      [v32 assistantAccessControlModelUpdated:v26 previousModel:v12];
LABEL_22:

      v10 = v68;
      v25 = 0;
      v28 = 0;
      goto LABEL_51;
    }

    v33 = [v26 hmbModelID];
    v34 = [(HMDUserSettingsBackingStoreController *)v16 mediaContentProfileAccessControlModelID];
    v35 = [v33 isEqual:v34];

    if (v35)
    {
      v32 = [(HMDUserSettingsBackingStoreController *)v16 mediaContentProfileAccessControlModelUpdateReceiver];
      [v32 mediaContentProfileAccessControlModelUpdated:v26 previousModel:v12];
      goto LABEL_22;
    }

    v36 = [v26 hmbModelID];
    v37 = [(HMDUserSettingsBackingStoreController *)v16 sharedUserDataModelUpdateModelID];
    v38 = [v36 isEqual:v37];

    if (v38)
    {
      v39 = [(HMDUserSettingsBackingStoreController *)v16 sharedUserDataModelUpdateReceiver];
      [v39 sharedUserDataModelUpdated:v26 previousModel:v12];
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
    v43 = [v42 hmbModelID];
    v44 = [(HMDUserSettingsBackingStoreController *)v16 userListeningHistoryUpdateModelID];
    v45 = [v43 isEqual:v44];

    if (v45)
    {
      v46 = [(HMDUserSettingsBackingStoreController *)v16 userListeningHistoryUpdateControlModelUpdateReceiver];
      v47 = v67;
      [v46 userListeningHistoryUpdateControlModelUpdated:v67 previousModel:v12];
      v10 = v68;
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
      v51 = v12;
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
      v46 = v50;
      if (!v54)
      {
        v10 = v68;
        v25 = 0;
        v47 = v67;
        v28 = 0;
        goto LABEL_50;
      }

      v55 = [MEMORY[0x277CCAB98] defaultCenter];
      v66 = v50;
      [v55 postNotificationName:@"HMDUserDidUpdateIDSActivityRegistration" object:?];
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

      v55 = v57;

      if (!v55)
      {
        v65 = v56;
        v59 = objc_autoreleasePoolPush();
        v60 = v16;
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
        v55 = 0;
        v10 = v68;
        goto LABEL_49;
      }

      v58 = [(HMDUserSettingsBackingStoreController *)v16 delegate];
      [v58 backingStoreController:v16 didUpdatePhotosPersonManagerSettingsModel:v55 previousPhotosPersonManagerSettingsModel:v12];
    }

    v10 = v68;
    v25 = 0;
    v28 = 0;
LABEL_49:
    v47 = v67;

    v46 = v66;
    goto LABEL_50;
  }

  [v19 transactionSettingGroupModelUpdated:v20 previousModel:v12];
LABEL_53:

  v63 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDUserSettingsBackingStoreController_localZone_didProcessModelUpdate___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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

- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4
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
    v12 = [v7 model];
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Notified of unhandled model deletion: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)localZone:(id)a3 didProcessModelCreation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDUserSettingsBackingStoreController_localZone_didProcessModelCreation___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __75__HMDUserSettingsBackingStoreController_localZone_didProcessModelCreation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [*(a1 + 48) model];
  v4 = [*(a1 + 48) options];
  [v2 _localZone:v3 updatedModel:v5 previousModel:0 options:v4];
}

- (void)messenger:(id)a3 didReceiveInvitationRequestFromUser:(id)a4 device:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDUserSettingsBackingStoreController *)self workQueue];
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
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Received invitation request from user %@ and device %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v18 = [(HMDUserSettingsBackingStoreController *)v13 participantsManager];
  [v18 inviteUser:v9 usingDevice:v10];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)messenger:(id)a3 didReceiveInvitationData:(id)a4 completion:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
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
  v18 = [v16 _strictlyUnarchivedObjectOfClasses:v17 fromData:v9 error:&v34];
  v19 = v34;

  if (v18)
  {
    v20 = [(HMDUserSettingsBackingStoreController *)v13 database];
    v21 = [v20 acceptInvitation:v18];

    v22 = MEMORY[0x277D2C938];
    v23 = [(HMDUserSettingsBackingStoreController *)v13 workQueue];
    v24 = [v22 schedulerWithDispatchQueue:v23];
    v25 = [v21 reschedule:v24];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __87__HMDUserSettingsBackingStoreController_messenger_didReceiveInvitationData_completion___block_invoke;
    v32[3] = &unk_278671220;
    v32[4] = v13;
    v33 = v10;
    v26 = [v25 addCompletionBlock:v32];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v13;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      v36 = v30;
      v37 = 2112;
      v38 = v9;
      v39 = 2112;
      v40 = v19;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive share invitation from invitation data: %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    (*(v10 + 2))(v10, 0, v19);
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

- (void)manager:(id)a3 didRequestSendForInvitation:(id)a4 toDevice:(id)a5
{
  v7 = a5;
  v9 = a4;
  v8 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v8);

  [(HMDUserSettingsBackingStoreController *)self _sendShareInvitation:v9 toUser:0 device:v7];
}

- (void)manager:(id)a3 didRequestSendForInvitation:(id)a4 toUser:(id)a5
{
  v7 = a5;
  v9 = a4;
  v8 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v8);

  [(HMDUserSettingsBackingStoreController *)self _sendShareInvitation:v9 toUser:v7 device:0];
}

- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4
{
  v5 = a4;
  v6 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v6);

  LOBYTE(v6) = [v5 isOwner];
  return v6;
}

- (void)_sendShareInvitation:(id)a3 toUser:(id)a4 device:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v37 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v37];
  v13 = v37;
  if (v12)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__HMDUserSettingsBackingStoreController__sendShareInvitation_toUser_device___block_invoke;
    aBlock[3] = &unk_278686028;
    aBlock[4] = self;
    v14 = _Block_copy(aBlock);
    if (!(v9 | v10))
    {
      _HMFPreconditionFailure();
    }

    v15 = v14;
    if (v9)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v19 = v34 = v13;
        v20 = [v9 shortDescription];
        *buf = 138543618;
        v39 = v19;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Sending share invitation for user settings to user: %@", buf, 0x16u);

        v13 = v34;
      }

      objc_autoreleasePoolPop(v16);
      v21 = [(HMDUserSettingsBackingStoreController *)v17 shareMessenger];
      v22 = +[HMDHomeKitVersion version6];
      v23 = [MEMORY[0x277CBEB98] set];
      [v21 sendShareInvitationData:v12 toUser:v9 minimumHomeKitVersion:v22 requiredSupportedFeatures:v23 completion:v15];
    }

    else
    {
      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        [v10 shortDescription];
        v32 = v35 = v13;
        *buf = 138543618;
        v39 = v31;
        v40 = 2112;
        v41 = v32;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Sending share invitation for user settings to device: %@", buf, 0x16u);

        v13 = v35;
      }

      objc_autoreleasePoolPop(v28);
      v21 = [(HMDUserSettingsBackingStoreController *)v29 shareMessenger];
      [v21 sendShareInvitationData:v12 toDevice:v10 completion:v15];
    }

    goto LABEL_15;
  }

  v24 = objc_autoreleasePoolPush();
  v25 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543874;
    v39 = v27;
    v40 = 2112;
    v41 = v8;
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

- (void)_updateLogEventRunState:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDUserSettingsBackingStoreController *)self logEventRunState]!= a3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      if (a3 >= 6)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
        v10 = [v11 stringWithFormat:@"Unknown state %@", v12];
      }

      else
      {
        v10 = off_2786712A8[a3];
      }

      *buf = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating metric run state to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDUserSettingsBackingStoreController *)v7 setLogEventRunState:a3];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateRunState:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if ([(HMDUserSettingsBackingStoreController *)self runState]!= a3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMDUserSettingsBackingStoreControllerRunStateAsString(a3);
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating run state to %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDUserSettingsBackingStoreController *)v7 setRunState:a3];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)loadUserSettings
{
  v3 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(HMDUserSettingsBackingStoreController *)self localZone];
  v6 = [(HMDUserSettingsBackingStoreController *)self delegate];
  v7 = [v6 userUUID];
  v20 = 0;
  v8 = [v5 fetchModelsWithParentModelID:v7 error:&v20];
  v9 = v20;
  v10 = [v8 allObjects];
  v11 = [v10 mutableCopy];

  [v4 addObjectsFromArray:v11];
  if ([v11 count])
  {
    do
    {
      v12 = [v11 firstObject];
      [v11 hmf_removeFirstObject];
      v13 = [(HMDUserSettingsBackingStoreController *)self localZone];
      v14 = [v12 hmbModelID];
      v19 = v9;
      v15 = [v13 fetchModelsWithParentModelID:v14 error:&v19];
      v16 = v19;

      v17 = [v15 allObjects];

      [v4 addObjectsFromArray:v17];
      [v11 addObjectsFromArray:v17];

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

- (void)_didFetchZonesWithResult:(id)a3 isOwnedZone:(BOOL)a4 error:(id)a5
{
  v93 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v10);

  if (v8)
  {
    v78 = a4;
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v8 localZone];
      *buf = 138543618;
      v88 = v14;
      v89 = 2112;
      v90 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Did fetch zones with local zone %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [(HMDUserSettingsBackingStoreController *)v12 delegate];
    v17 = [v8 localZone];
    [(HMDUserSettingsBackingStoreController *)v12 setLocalZone:v17];

    v18 = [(HMDUserSettingsBackingStoreController *)v12 localZone];
    [v18 addObserverForAllModels:v12];

    v19 = [(HMDUserSettingsBackingStoreController *)v12 localZone];
    [v19 startUp];

    [v16 didStartLocalZoneForBackingStoreController:v12];
    if (v12)
    {
      v75 = v16;
      v76 = v9;
      v77 = v8;
      v20 = [(HMDUserSettingsBackingStoreController *)v12 localZone];
      v21 = [v20 fetchModelsOfType:objc_opt_class() error:0];

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
            v29 = [v28 subjectDeviceIdentifier];
            v30 = [v28 hmbParentModelID];
            v31 = [(HMDUserSettingsBackingStoreController *)v12 _uuidForActivitySubject:v29 observer:v30];

            v32 = [v28 hmbModelID];
            LOBYTE(v29) = [v32 isEqual:v31];

            if ((v29 & 1) == 0)
            {
              v33 = [v28 hmbModelID];
              [v22 addObject:v33];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v83 objects:buf count:16];
        }

        while (v25);
      }

      if ([v22 count])
      {
        v34 = [(HMDUserSettingsBackingStoreController *)v12 localZone];
        v35 = [MEMORY[0x277D17108] optionsWithLabel:@"Removing non-derived HMDIDSActivityRegistrationModels"];
        v36 = [v34 removeModelIDs:v22 options:v35];
      }

      v9 = v76;
      v8 = v77;
      v16 = v75;
    }

    v37 = [v8 cloudZone];
    [(HMDUserSettingsBackingStoreController *)v12 setCloudZone:v37];

    if ([v16 isCurrentUser] && (objc_msgSend(v16, "isRunningOnHomeOwnersDevice") & 1) == 0)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = v12;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v88 = v41;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Starting participant manager to share with owner", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
      v42 = [v8 cloudZone];
      v43 = [v16 backingStoreController:v39 createParticipantManagerForCloudZone:v42];
      [(HMDUserSettingsBackingStoreController *)v39 setParticipantsManager:v43];

      v44 = [(HMDUserSettingsBackingStoreController *)v39 participantsManager];
      [v44 setDataSource:v39];

      v45 = [(HMDUserSettingsBackingStoreController *)v39 participantsManager];
      [v45 setDelegate:v39];

      v46 = [(HMDUserSettingsBackingStoreController *)v39 participantsManager];
      [v46 configure];

      v47 = [(HMDUserSettingsBackingStoreController *)v39 participantsManager];
      [v47 updateShareParticipants];
    }

    v48 = v12->_logger;
    v49 = v48;
    startupSignPost = v12->_startupSignPost;
    if (startupSignPost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_229538000, v49, OS_SIGNPOST_EVENT, startupSignPost, "UserZone.Startup", "Fetched Zones", buf, 2u);
    }

    v51 = [(HMDUserSettingsBackingStoreController *)v12 cloudZone];
    v52 = [v51 startUp];
    v53 = MEMORY[0x277D2C938];
    v54 = [(HMDUserSettingsBackingStoreController *)v12 workQueue];
    v55 = [v53 schedulerWithDispatchQueue:v54];
    v56 = [v52 reschedule:v55];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __84__HMDUserSettingsBackingStoreController__didFetchZonesWithResult_isOwnedZone_error___block_invoke;
    v82[3] = &unk_27868A250;
    v82[4] = v12;
    v57 = [v56 addFailureBlock:v82];

    v58 = [(HMDUserSettingsBackingStoreController *)v12 cloudZone];
    v59 = [v58 startUp];
    v60 = MEMORY[0x277D2C938];
    v61 = [(HMDUserSettingsBackingStoreController *)v12 workQueue];
    v62 = [v60 schedulerWithDispatchQueue:v61];
    v63 = [v59 reschedule:v62];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __84__HMDUserSettingsBackingStoreController__didFetchZonesWithResult_isOwnedZone_error___block_invoke_114;
    v79[3] = &unk_27867EA90;
    v81 = v78;
    v79[4] = v12;
    v80 = v16;
    v64 = v16;
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
      v88 = v9;
      _os_signpost_emit_with_name_impl(&dword_229538000, v67, OS_SIGNPOST_INTERVAL_END, v68, "UserZone.Startup", "Error=%{signpost.description:attribute}@ ", buf, 0xCu);
    }

    v69 = objc_autoreleasePoolPush();
    v70 = self;
    v71 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = HMFGetLogIdentifier();
      v73 = [(HMDUserSettingsBackingStoreController *)v70 zoneName];
      *buf = 138543874;
      v88 = v72;
      v89 = 2112;
      v90 = v73;
      v91 = 2112;
      v92 = v9;
      _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_ERROR, "%{public}@Failed to open zones for user settings with zone ID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v69);
    [(HMDUserSettingsBackingStoreController *)v70 _updateRunState:0];
    [(HMDUserSettingsBackingStoreController *)v70 _updateLogEventRunState:3];
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

- (id)_uuidForActivitySubject:(void *)a3 observer:
{
  if (a1)
  {
    v4 = MEMORY[0x277CCAD78];
    v5 = a2;
    v6 = [a3 data];
    v7 = [v4 hm_deriveUUIDFromBaseUUID:v5 identifierSalt:v6];
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
  v3 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDUserSettingsBackingStoreController *)self database];
  v5 = [v4 registerSharedSubscriptionForExternalRecordType:0];

  v6 = [(HMDUserSettingsBackingStoreController *)self database];
  v7 = [(HMDUserSettingsBackingStoreController *)self zoneName];
  v8 = [v6 existingSharedZoneIDWithName:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDUserSettingsBackingStoreController *)v10 zoneName];
      *buf = 138543874;
      v29 = v13;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Got zoneID %@ for user settings zone %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [(HMDUserSettingsBackingStoreController *)v10 database];
    v16 = objc_alloc_init(MEMORY[0x277D17068]);
    v27 = 0;
    v17 = [v15 sharedZonesWithID:v8 configuration:v16 delegate:0 error:&v27];
    v18 = v27;

    [(HMDUserSettingsBackingStoreController *)v10 _didFetchZonesWithResult:v17 isOwnedZone:0 error:v18];
  }

  else
  {
    if (v12)
    {
      v19 = HMFGetLogIdentifier();
      v20 = [(HMDUserSettingsBackingStoreController *)v10 zoneName];
      *buf = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@No shared zone exists for user settings with zone name %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDUserSettingsBackingStoreController *)v10 _updateRunState:0];
    [(HMDUserSettingsBackingStoreController *)v10 _updateLogEventRunState:5];
    v21 = [(HMDUserSettingsBackingStoreController *)v10 delegate];
    v17 = [v21 ownerForUserSettingsBackingStoreController:v10];

    v22 = objc_autoreleasePoolPush();
    v23 = v10;
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
    v18 = [(HMDUserSettingsBackingStoreController *)v23 shareMessenger];
    [v18 requestShareInvitationDataFromUser:v17];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_startWithOwnedZone
{
  v3 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(MEMORY[0x277D170E8]);
  [v4 setShouldRebuildOnManateeKeyLoss:1];
  v5 = [(HMDUserSettingsBackingStoreController *)self database];
  v6 = [(HMDUserSettingsBackingStoreController *)self zoneName];
  v9 = 0;
  v7 = [v5 privateZonesWithName:v6 configuration:v4 delegate:0 error:&v9];
  v8 = v9;

  [(HMDUserSettingsBackingStoreController *)self _didFetchZonesWithResult:v7 isOwnedZone:1 error:v8];
}

- (void)updateParticipants
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Updating participants", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDUserSettingsBackingStoreController *)v4 participantsManager];
  [v7 updateShareParticipants];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearParticipants
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Clearing participants", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDUserSettingsBackingStoreController *)v4 participantsManager];
  [v7 clearParticipants];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)queryPushTokensForDevicesObservingSubjectDevice:(id)a3 subActivity:(id)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30 = @"subjectDeviceIdentifier";
  v31[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v12;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Querying all models observing %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDUserSettingsBackingStoreController *)v10 localZone];
  v14 = +[HMDIDSActivityRegistrationModel registeredDevicesQuery];
  v15 = [v13 queryModelsUsingQuery:v14 arguments:v8];

  v16 = [MEMORY[0x277CBEB18] array];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __101__HMDUserSettingsBackingStoreController_queryPushTokensForDevicesObservingSubjectDevice_subActivity___block_invoke;
  v22[3] = &unk_2786711F8;
  v23 = v7;
  v24 = v10;
  v25 = v16;
  v17 = v16;
  v18 = v7;
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

- (void)deregisterObserverDeviceIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Removing IDS Activity Observer: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDUserSettingsBackingStoreController *)v6 localZone];
  v10 = [MEMORY[0x277CBEB98] setWithObject:v4];
  v11 = [MEMORY[0x277D17108] optionsWithLabel:@"Removing IDS Activity Observer"];
  v12 = [v9 removeModelIDs:v10 options:v11];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__HMDUserSettingsBackingStoreController_deregisterObserverDeviceIdentifier___block_invoke;
  v16[3] = &unk_27868A1D8;
  v16[4] = v6;
  v17 = v4;
  v13 = v4;
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

- (void)deregisterObserverDeviceIdentifier:(id)a3 observerPushToken:(id)a4 subActivity:(id)a5 subjectDeviceIdentifier:(id)a6
{
  v62 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDUserSettingsBackingStoreController *)self localZone];
  v15 = [v14 fetchModelWithModelID:v10 ofType:objc_opt_class() error:0];

  if (v15)
  {
    v16 = [(HMDUserSettingsBackingStoreController *)self _registrationWithParent:v10 subjectDeviceIdentifier:v13];
    if (v16)
    {
      v17 = [MEMORY[0x277CBEB58] set];
      v18 = [v16 subActivities];
      v19 = [v18 containsObject:v12];

      v52 = v13;
      v53 = v11;
      if (v19)
      {
        v20 = MEMORY[0x277CBEB18];
        v21 = [v16 subActivities];
        v22 = [v20 arrayWithArray:v21];

        [v22 removeObject:v12];
        v23 = [v22 copy];
        [v16 setSubActivities:v23];

        context = objc_autoreleasePoolPush();
        v24 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v27 = v26 = v17;
          *buf = 138543874;
          v57 = v27;
          v58 = 2112;
          v59 = v12;
          v60 = 2112;
          v61 = v22;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Removed subActivity %@ from existing list %@", buf, 0x20u);

          v17 = v26;
        }

        objc_autoreleasePoolPop(context);
        [v17 addObject:v16];

        v11 = v53;
      }

      [v15 pushToken];
      v29 = v28 = v17;
      v30 = [v11 isEqualToData:v29];

      v31 = v28;
      if ((v30 & 1) == 0)
      {
        [v15 setPushToken:v11];
        [v28 addObject:v15];
      }

      if ([v28 count])
      {
        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543874;
          v57 = v35;
          v58 = 2112;
          v59 = v12;
          v60 = 2112;
          v61 = v10;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Removing subActivity %@ from IDS Activity Registration for: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
        v36 = [(HMDUserSettingsBackingStoreController *)v33 localZone];
        v37 = [MEMORY[0x277CBEB98] setWithObjects:{v15, v16, 0}];
        v38 = [MEMORY[0x277D17108] optionsWithLabel:@"Updating IDS Activity Registration"];
        v39 = [v36 addModels:v37 options:v38];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __130__HMDUserSettingsBackingStoreController_deregisterObserverDeviceIdentifier_observerPushToken_subActivity_subjectDeviceIdentifier___block_invoke;
        v54[3] = &unk_27868A1D8;
        v54[4] = v33;
        v55 = v10;
        v40 = [v39 addFailureBlock:v54];

        v11 = v53;
        v31 = v28;
      }

      v13 = v52;
    }

    else
    {
      v45 = objc_autoreleasePoolPush();
      v46 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v49 = v48 = v11;
        *buf = 138543618;
        v57 = v49;
        v58 = 2112;
        v59 = v10;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Unable to deregister, no IDS Activty Registration model found for %@", buf, 0x16u);

        v11 = v48;
      }

      objc_autoreleasePoolPop(v45);
    }
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    v42 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v44;
      v58 = 2112;
      v59 = v10;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Unable to deregister, no IDS Activty Observer model found for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (id)_registrationWithParent:(void *)a3 subjectDeviceIdentifier:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [a1 localZone];
    v8 = [v7 fetchModelsWithParentModelID:v5 error:0];

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
          v13 = [v12 subjectDeviceIdentifier];
          v14 = [v13 isEqual:v6];

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

- (void)updateObserverDeviceIdentifier:(id)a3 observerPushToken:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUserSettingsBackingStoreController *)self localZone];
  v9 = [v8 fetchModelWithModelID:v6 ofType:objc_opt_class() error:0];

  if (!v9)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v15;
      v31 = 2112;
      v32 = v6;
      v16 = "%{public}@Unable to update observer pushToken, no IDS Activty Observer model found for %@";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v12);
    goto LABEL_12;
  }

  v10 = [v9 pushToken];
  v11 = [v7 isEqualToData:v10];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v15;
      v31 = 2112;
      v32 = v6;
      v16 = "%{public}@Push token already up to date for %@";
LABEL_7:
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, v16, buf, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  [v9 setPushToken:v7];
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v20;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Updating IDS Activity observer pushToken: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = [(HMDUserSettingsBackingStoreController *)v18 localZone];
  v22 = [MEMORY[0x277CBEB98] setWithObject:v9];
  v23 = [MEMORY[0x277D17108] optionsWithLabel:@"Reregistering IDS Activity Observer"];
  v24 = [v21 addModels:v22 options:v23];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __90__HMDUserSettingsBackingStoreController_updateObserverDeviceIdentifier_observerPushToken___block_invoke;
  v27[3] = &unk_27868A1D8;
  v27[4] = v18;
  v28 = v6;
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

- (void)registerObserverDeviceIdentifier:(id)a3 observerPushToken:(id)a4 subActivity:(id)a5 subjectDeviceIdentifier:(id)a6
{
  v65[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x277CBEB58] set];
  v15 = [(HMDUserSettingsBackingStoreController *)self localZone];
  v16 = [v15 fetchModelWithModelID:v10 ofType:objc_opt_class() error:0];

  v56 = v12;
  if (!v16)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v60 = v34;
      v61 = 2112;
      v62 = v10;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@No IDS Activity observer found for %@, creating", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v16 = [[HMDIDSActivityObserverModel alloc] initWithModelID:v10];
    [v14 addObject:v16];
    goto LABEL_13;
  }

  v17 = [(HMDUserSettingsBackingStoreController *)self _registrationWithParent:v10 subjectDeviceIdentifier:v13];
  if (!v17)
  {
LABEL_13:
    v55 = v11;
    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v60 = v38;
      v61 = 2112;
      v62 = v13;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@No IDS Activity registration found for %@, creating", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v26 = [(HMDUserSettingsBackingStoreController *)v36 _uuidForActivitySubject:v13 observer:v10];
    v39 = [HMDIDSActivityRegistrationModel alloc];
    v40 = [(HMBModel *)v16 hmbModelID];
    v18 = [(HMBModel *)v39 initWithModelID:v26 parentModelID:v40];

    [(HMDIDSActivityRegistrationModel *)v18 setSubjectDeviceIdentifier:v13];
    v65[0] = v56;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
    [(HMDIDSActivityRegistrationModel *)v18 setSubActivities:v41];

    goto LABEL_16;
  }

  v18 = v17;
  v19 = [(HMDIDSActivityRegistrationModel *)v17 subActivities];
  v20 = v12;
  v21 = [v19 containsObject:v12];

  if (v21)
  {
    goto LABEL_17;
  }

  v55 = v11;
  v22 = MEMORY[0x277CBEB18];
  v23 = [(HMDIDSActivityRegistrationModel *)v18 subActivities];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
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
  v29 = self;
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

  v11 = v55;
LABEL_17:
  v42 = [(HMDIDSActivityObserverModel *)v16 pushToken];
  v43 = [v11 isEqualToData:v42];

  v44 = v56;
  if ((v43 & 1) == 0)
  {
    [(HMDIDSActivityObserverModel *)v16 setPushToken:v11];
    [v14 addObject:v16];
  }

  if ([v14 count])
  {
    v45 = objc_autoreleasePoolPush();
    v46 = self;
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
    v49 = [(HMDUserSettingsBackingStoreController *)v46 localZone];
    v50 = [MEMORY[0x277D17108] optionsWithLabel:@"Updating IDS Activity Registration"];
    v51 = [v49 addModels:v14 options:v50];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __128__HMDUserSettingsBackingStoreController_registerObserverDeviceIdentifier_observerPushToken_subActivity_subjectDeviceIdentifier___block_invoke;
    v57[3] = &unk_27868A1D8;
    v57[4] = v46;
    v58 = v10;
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
  v3 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Destroying zone", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDUserSettingsBackingStoreController *)v5 delegate];
  v9 = [v8 isCurrentUser];

  v10 = [(HMDUserSettingsBackingStoreController *)v5 database];
  v11 = [(HMDUserSettingsBackingStoreController *)v5 zoneName];
  if (v9)
  {
    v12 = [v10 removePrivateZonesWithName:v11];
  }

  else
  {
    v13 = [v10 removeSharedZonesWithName:v11];
  }

  [(HMDUserSettingsBackingStoreController *)v5 _invalidate];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Invalidating user zone", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDUserSettingsBackingStoreController *)v4 workQueue];
  dispatch_assert_queue_V2(v7);

  [(HMDUserSettingsBackingStoreController *)v4 setLocalZone:0];
  [(HMDUserSettingsBackingStoreController *)v4 setCloudZone:0];
  [(HMDUserSettingsBackingStoreController *)v4 _updateRunState:0];
  [(HMDUserSettingsBackingStoreController *)v4 _updateLogEventRunState:4];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerForSharedUserDataModelUpdates:(id)a3 modelID:(id)a4
{
  v6 = a4;
  [(HMDUserSettingsBackingStoreController *)self setSharedUserDataModelUpdateReceiver:a3];
  [(HMDUserSettingsBackingStoreController *)self setSharedUserDataModelUpdateModelID:v6];
}

- (void)registerForUserListeningHistoryUpdateControlModelUpdates:(id)a3 modelID:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v7);

  [(HMDUserSettingsBackingStoreController *)self setUserListeningHistoryUpdateControlModelUpdateReceiver:v6];
  [(HMDUserSettingsBackingStoreController *)self setUserListeningHistoryUpdateModelID:v8];
}

- (id)loadUserListeningHistoryUpdateControlModelWithModelID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDUserSettingsBackingStoreController *)self localZone];
  v9 = [v8 fetchModelWithModelID:v6 error:a4];

  return v9;
}

- (void)registerForMediaContentAccessControlModelUpdates:(id)a3 modelID:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v7);

  [(HMDUserSettingsBackingStoreController *)self setMediaContentProfileAccessControlModelUpdateReceiver:v6];
  [(HMDUserSettingsBackingStoreController *)self setMediaContentProfileAccessControlModelID:v8];
}

- (id)loadMediaContentAccessControlModelWithModelID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDUserSettingsBackingStoreController *)self localZone];
  v9 = [v8 fetchModelWithModelID:v6 error:a4];

  return v9;
}

- (void)registerForAssistantAccessControlModelUpdates:(id)a3 modelID:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v7);

  [(HMDUserSettingsBackingStoreController *)self setAssistantAccessControlModelUpdateReceiver:v6];
  [(HMDUserSettingsBackingStoreController *)self setAssistantAccessControlModelID:v8];
}

- (id)loadAssistantAccessControlModelWithModelID:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDUserSettingsBackingStoreController *)self localZone];
  v9 = [v8 fetchModelWithModelID:v6 error:a4];

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
    v14 = self;
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

- (id)loadSharedUserDataModelWithError:(id *)a3
{
  v5 = [(HMDUserSettingsBackingStoreController *)self localZone];
  v6 = [(HMDUserSettingsBackingStoreController *)self delegate];
  v7 = [v6 userUUID];
  v8 = [v5 fetchModelWithModelID:v7 error:a3];

  return v8;
}

- (id)loadPrivateUserDataModelWithError:(id *)a3
{
  v5 = [(HMDUserSettingsBackingStoreController *)self localZone];
  v6 = [(HMDUserSettingsBackingStoreController *)self delegate];
  v7 = [v6 userUUID];
  v8 = [v5 fetchModelWithModelID:v7 error:a3];

  return v8;
}

- (void)start
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserSettingsBackingStoreController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDUserSettingsBackingStoreController *)self runState])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMDUserSettingsBackingStoreControllerRunStateAsString([(HMDUserSettingsBackingStoreController *)v5 runState]);
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
    v9 = [(HMDUserSettingsBackingStoreController *)self delegate];
    if ([v9 isCurrentUser])
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [v9 userUUID];
        v27 = 138543618;
        v28 = v13;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting backing store controller to fetch owned zone for user %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDUserSettingsBackingStoreController *)v11 _updateRunState:1];
      [(HMDUserSettingsBackingStoreController *)v11 _updateLogEventRunState:1];
      logger = v11->_logger;
      if (os_signpost_enabled(logger))
      {
        v16 = logger;
        v17 = [v9 userUUID];
        v27 = 138412546;
        v28 = @"Owned";
        v29 = 2112;
        v30 = v17;
        _os_signpost_emit_with_name_impl(&dword_229538000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UserZone.Startup", "Type=%{signpost.description:attribute}@ User=%{signpost.description:attribute}@ ", &v27, 0x16u);
      }

      v11->_startupSignPost = 0xEEEEB0B5B2B2EEEELL;
      [(HMDUserSettingsBackingStoreController *)v11 _startWithOwnedZone];
    }

    else if (([v9 isCurrentUser] & 1) == 0 && objc_msgSend(v9, "isRunningOnHomeOwnersDevice"))
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [v9 userUUID];
        v27 = 138543618;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Starting backing store controller to fetch shared zone for user %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      [(HMDUserSettingsBackingStoreController *)v19 _updateRunState:1];
      [(HMDUserSettingsBackingStoreController *)v19 _updateLogEventRunState:1];
      v23 = v19->_logger;
      if (os_signpost_enabled(v23))
      {
        v24 = v23;
        v25 = [v9 userUUID];
        v27 = 138412546;
        v28 = @"Shared";
        v29 = 2112;
        v30 = v25;
        _os_signpost_emit_with_name_impl(&dword_229538000, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UserZone.Startup", "Type=%{signpost.description:attribute}@ User=%{signpost.description:attribute}@ ", &v27, 0x16u);
      }

      v19->_startupSignPost = 0xEEEEB0B5B2B2EEEELL;
      [(HMDUserSettingsBackingStoreController *)v19 _startWithSharedZone];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (HMDUserSettingsBackingStoreController)initWithDelegate:(id)a3 queue:(id)a4 zoneName:(id)a5 database:(id)a6 shareMessenger:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = HMDUserSettingsBackingStoreController;
  v17 = [(HMDUserSettingsBackingStoreController *)&v23 init];
  if (v17)
  {
    v18 = HMFGetOSLogHandle();
    logger = v17->_logger;
    v17->_logger = v18;

    v17->_startupSignPost = 0;
    objc_storeWeak(&v17->_delegate, v12);
    objc_storeStrong(&v17->_workQueue, a4);
    v20 = +[HMDMetricsManager sharedLogEventSubmitter];
    logEventSubmitter = v17->_logEventSubmitter;
    v17->_logEventSubmitter = v20;

    objc_storeStrong(&v17->_zoneName, a5);
    objc_storeStrong(&v17->_database, a6);
    objc_storeStrong(&v17->_shareMessenger, a7);
    [(HMDCloudShareMessenger *)v17->_shareMessenger setDelegate:v17];
    [(HMDCloudShareMessenger *)v17->_shareMessenger configure];
    v17->_runState = 0;
    v17->_logEventRunState = 0;
    [v15 addDelegate:v17];
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