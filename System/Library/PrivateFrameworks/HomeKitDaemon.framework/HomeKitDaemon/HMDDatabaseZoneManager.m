@interface HMDDatabaseZoneManager
+ (id)logCategory;
- (BOOL)_fetchExistingPrivateZonesWithConfiguration:(id)a3;
- (BOOL)_fetchPrivateZonesWithConfiguration:(id)a3;
- (BOOL)_fetchSharedZonesWithConfiguration:(id)a3;
- (BOOL)_handleFetchZonesResult:(id)a3 configuration:(id)a4;
- (BOOL)start;
- (BOOL)startWithConfiguration:(id)a3;
- (HMDDatabaseZoneManager)initWithDatabase:(id)a3 zoneName:(id)a4 home:(id)a5 messageTargetUUID:(id)a6 workQueue:(id)a7;
- (HMDDatabaseZoneManager)initWithDatabase:(id)a3 zoneName:(id)a4 home:(id)a5 shareMessenger:(id)a6 workQueue:(id)a7;
- (HMDDatabaseZoneManagerDataSource)dataSource;
- (HMDDatabaseZoneManagerDelegate)delegate;
- (HMDHome)home;
- (NSString)containerIdentifier;
- (NSUUID)messageTargetUUID;
- (id)remove;
- (void)_requestShareInvitationWithConfiguration:(id)a3;
- (void)_sendShareInvitation:(id)a3 toUser:(id)a4 device:(id)a5;
- (void)_tearDownState;
- (void)configure;
- (void)database:(id)a3 didCreateZoneWithName:(id)a4 isPrivate:(BOOL)a5;
- (void)database:(id)a3 didReceiveMessageWithUserInfo:(id)a4;
- (void)database:(id)a3 didRemoveZoneWithName:(id)a4 isPrivate:(BOOL)a5;
- (void)manager:(id)a3 didRequestSendForInvitation:(id)a4 toDevice:(id)a5;
- (void)manager:(id)a3 didRequestSendForInvitation:(id)a4 toUser:(id)a5;
- (void)manager:(id)a3 didRevokeShareAccessForUser:(id)a4;
- (void)messenger:(id)a3 didReceiveInvitationData:(id)a4 completion:(id)a5;
- (void)messenger:(id)a3 didReceiveInvitationRequestFromUser:(id)a4 device:(id)a5;
- (void)messengerDidReceiveShareAccessRevocation:(id)a3;
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

- (void)database:(id)a3 didReceiveMessageWithUserInfo:(id)a4
{
  v5 = a4;
  v6 = [(HMDDatabaseZoneManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HMDDatabaseZoneManager_database_didReceiveMessageWithUserInfo___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __65__HMDDatabaseZoneManager_database_didReceiveMessageWithUserInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 zoneManager:*(a1 + 32) didReceiveMessageWithUserInfo:*(a1 + 40)];
  }
}

- (void)database:(id)a3 didRemoveZoneWithName:(id)a4 isPrivate:(BOOL)a5
{
  v5 = a5;
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HMDDatabaseZoneManager *)self zoneName];
  if ([v9 isEqualToString:v10])
  {
    v11 = [(HMDDatabaseZoneManager *)self defaultConfiguration];
    v12 = [v11 isZoneOwner];

    if (v12 == v5)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Handling zone removal by tearing down state", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v17 = [(HMDDatabaseZoneManager *)v14 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__HMDDatabaseZoneManager_database_didRemoveZoneWithName_isPrivate___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = v14;
      dispatch_async(v17, block);
    }
  }

  else
  {
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)a3 didCreateZoneWithName:(id)a4 isPrivate:(BOOL)a5
{
  v5 = a5;
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(HMDDatabaseZoneManager *)self zoneName];
  if ([v9 isEqualToString:v10])
  {
    v11 = [(HMDDatabaseZoneManager *)self defaultConfiguration];
    v12 = [v11 isZoneOwner];

    if (v12 == v5)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Handling zone creation by starting", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v17 = [(HMDDatabaseZoneManager *)v14 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__HMDDatabaseZoneManager_database_didCreateZoneWithName_isPrivate___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = v14;
      dispatch_async(v17, block);
    }
  }

  else
  {
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __67__HMDDatabaseZoneManager_database_didCreateZoneWithName_isPrivate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) start];
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 zoneManagerDidCreateZone:*(a1 + 32)];
  }
}

- (void)manager:(id)a3 didRevokeShareAccessForUser:(id)a4
{
  v5 = a4;
  v6 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDDatabaseZoneManager *)self shareMessenger];
  [v7 notifyOfShareAccessRevocationForUser:v5];
}

- (void)manager:(id)a3 didRequestSendForInvitation:(id)a4 toDevice:(id)a5
{
  v7 = a5;
  v9 = a4;
  v8 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  [(HMDDatabaseZoneManager *)self _sendShareInvitation:v9 toUser:0 device:v7];
}

- (void)manager:(id)a3 didRequestSendForInvitation:(id)a4 toUser:(id)a5
{
  v7 = a5;
  v9 = a4;
  v8 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  [(HMDDatabaseZoneManager *)self _sendShareInvitation:v9 toUser:v7 device:0];
}

- (void)messengerDidReceiveShareAccessRevocation:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Synchronizing shared zones due to share revocation", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDDatabaseZoneManager *)v7 database];
  v11 = [v10 synchronizeSharedZones];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)messenger:(id)a3 didReceiveInvitationRequestFromUser:(id)a4 device:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(HMDDatabaseZoneManager *)self participantsManager];
  [v10 inviteUser:v8 usingDevice:v7];
}

- (void)messenger:(id)a3 didReceiveInvitationData:(id)a4 completion:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = MEMORY[0x277CCAAC8];
  v13 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v31 = 0;
  v14 = [v12 _strictlyUnarchivedObjectOfClasses:v13 fromData:v9 error:&v31];
  v15 = v31;

  if (v14)
  {
    v16 = [(HMDDatabaseZoneManager *)self database];
    v17 = [v16 acceptInvitation:v14];

    v18 = MEMORY[0x277D2C938];
    v19 = [(HMDDatabaseZoneManager *)self workQueue];
    v20 = [v18 schedulerWithDispatchQueue:v19];
    v21 = [v17 reschedule:v20];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __72__HMDDatabaseZoneManager_messenger_didReceiveInvitationData_completion___block_invoke;
    v28[3] = &unk_278677B68;
    v28[4] = self;
    v29 = v15;
    v30 = v10;
    v22 = [v21 addCompletionBlock:v28];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v26;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive share invitation from invitation data: %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    (*(v10 + 2))(v10, 0, v15);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully accepted invitation and created shared zone with ID %@", &v17, 0x16u);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to accept received invitation: %@", &v17, 0x16u);
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
  v3 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDDatabaseZoneManager *)self state])
  {
    [(HMDDatabaseZoneManager *)self setCloudZone:0];
    [(HMDDatabaseZoneManager *)self setLocalZone:0];
    [(HMDDatabaseZoneManager *)self setParticipantsManager:0];
    [(HMDDatabaseZoneManager *)self setState:0];
    v4 = [(HMDDatabaseZoneManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 zoneManagerDidStop:self];
    }
  }
}

- (void)_requestShareInvitationWithConfiguration:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDatabaseZoneManager *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (-[HMDDatabaseZoneManager participantsManager](self, "participantsManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 areShareModificationsEnabledForManager:v6], v6, v7))
  {
    if ([v4 shouldCreateZone])
    {
      v19 = v4;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [(HMDDatabaseZoneManager *)self home];
      v9 = [v8 users];

      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            if (([v14 isCurrentUser] & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v5, "zoneManager:shouldRequestShareInvitationFromUser:", self, v14))
            {
              v15 = [(HMDDatabaseZoneManager *)self shareMessenger];
              [v15 requestShareInvitationDataFromUser:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }

      v16 = [(HMDDatabaseZoneManager *)self database];
      v17 = [v16 synchronizeSharedZones];

      v4 = v19;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_sendShareInvitation:(id)a3 toUser:(id)a4 device:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v30 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v30];
  v13 = v30;
  if (v12)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__HMDDatabaseZoneManager__sendShareInvitation_toUser_device___block_invoke;
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
      v16 = [(HMDDatabaseZoneManager *)self shareMessenger];
      v28 = [(HMDDatabaseZoneManager *)self defaultConfiguration];
      v17 = [v28 minimumHomeKitVersion];
      v18 = [(HMDDatabaseZoneManager *)self defaultConfiguration];
      [v18 requiredSupportedFeatures];
      v19 = v10;
      v20 = v8;
      v22 = v21 = v13;
      [v16 sendShareInvitationData:v12 toUser:v9 minimumHomeKitVersion:v17 requiredSupportedFeatures:v22 completion:v15];

      v13 = v21;
      v8 = v20;
      v10 = v19;
    }

    else
    {
      if (!v10)
      {
LABEL_11:

        goto LABEL_12;
      }

      v16 = [(HMDDatabaseZoneManager *)self shareMessenger];
      [v16 sendShareInvitationData:v12 toDevice:v10 completion:v15];
    }

    goto LABEL_11;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543874;
    v32 = v26;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v13;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize invitation %@: %@", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v12, v13, v11, &v16, v14);
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

- (BOOL)_handleFetchZonesResult:(id)a3 configuration:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMDDatabaseZoneManager *)v9 zoneName];
    *buf = 138543618;
    v70 = v11;
    v71 = 2112;
    v72 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetched zones with name %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [v6 localZone];
  [(HMDDatabaseZoneManager *)v9 setLocalZone:v13];

  v14 = [v6 cloudZone];
  [(HMDDatabaseZoneManager *)v9 setCloudZone:v14];

  if ([v7 isZoneOwner])
  {
    v15 = [v7 externalRecordTypesForSubscriptions];

    v16 = [(HMDDatabaseZoneManager *)v9 cloudZone];
    v17 = v16;
    if (v15)
    {
      v58 = v6;
      v18 = [v16 subscriptions];
      v19 = [v18 na_map:&__block_literal_global_9];

      v57 = v7;
      v20 = [v7 externalRecordTypesForSubscriptions];
      v56 = v19;
      v21 = [v19 hmf_removedObjectsFromSet:v20];

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
            v29 = v9;
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = HMFGetLogIdentifier();
              *buf = 138543618;
              v70 = v31;
              v71 = 2112;
              v72 = v27;
              _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing externalRecordType: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v28);
            v32 = [(HMDDatabaseZoneManager *)v29 cloudZone];
            v33 = [v32 unregisterSubscriptionForExternalRecordType:v27];
          }

          v24 = [v22 countByEnumeratingWithState:&v63 objects:v68 count:16];
        }

        while (v24);
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v7 = v57;
      v34 = [v57 externalRecordTypesForSubscriptions];
      v35 = [v34 countByEnumeratingWithState:&v59 objects:v67 count:16];
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
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v59 + 1) + 8 * j);
            v40 = [(HMDDatabaseZoneManager *)v9 cloudZone];
            v41 = [v40 registerSubscriptionForExternalRecordType:v39];
          }

          v36 = [v34 countByEnumeratingWithState:&v59 objects:v67 count:16];
        }

        while (v36);
      }

      v17 = v56;
      v6 = v58;
    }

    else
    {
      v42 = [v16 registerSubscriptionForExternalRecordType:0];
    }

    v43 = [(HMDDatabaseZoneManager *)v9 participantsManagerFactory];
    v44 = [(HMDDatabaseZoneManager *)v9 workQueue];
    v45 = [(HMDDatabaseZoneManager *)v9 cloudZone];
    v46 = [(HMDDatabaseZoneManager *)v9 home];
    v47 = (v43)[2](v43, v44, v45, v46);
    [(HMDDatabaseZoneManager *)v9 setParticipantsManager:v47];

    v48 = [(HMDDatabaseZoneManager *)v9 dataSource];
    v49 = [(HMDDatabaseZoneManager *)v9 participantsManager];
    [v49 setDataSource:v48];

    v50 = [(HMDDatabaseZoneManager *)v9 participantsManager];
    [v50 setDelegate:v9];

    v51 = [(HMDDatabaseZoneManager *)v9 participantsManager];
    [v51 configure];

    v52 = [(HMDDatabaseZoneManager *)v9 participantsManager];
    [v52 updateShareParticipants];
  }

  [(HMDDatabaseZoneManager *)v9 setState:2];
  v53 = [(HMDDatabaseZoneManager *)v9 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v53 zoneManagerDidStart:v9];
  }

  v54 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_fetchSharedZonesWithConfiguration:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v46 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching shared zones", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v4 externalRecordTypesForSubscriptions];

  if (v10)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = [v4 externalRecordTypesForSubscriptions];
    v12 = [v11 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
          v17 = [(HMDDatabaseZoneManager *)v7 database];
          v18 = [v17 registerSharedSubscriptionForExternalRecordType:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v11 = [(HMDDatabaseZoneManager *)v7 database];
    v19 = [v11 registerSharedSubscriptionForExternalRecordType:0];
  }

  v20 = [(HMDDatabaseZoneManager *)v7 database];
  v21 = [(HMDDatabaseZoneManager *)v7 zoneName];
  v22 = [v20 existingSharedZoneIDWithName:v21];

  if (v22)
  {
    v23 = [(HMDDatabaseZoneManager *)v7 database];
    v24 = [v4 cloudZoneConfiguration];
    v25 = [(HMDDatabaseZoneManager *)v7 delegate];
    v40 = 0;
    v26 = [v23 sharedZonesWithID:v22 configuration:v24 delegate:v25 error:&v40];
    v27 = v40;

    if (v26)
    {
      v28 = [(HMDDatabaseZoneManager *)v7 _handleFetchZonesResult:v26 configuration:v4];
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v7;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v37;
        v47 = 2112;
        v48 = v27;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch shared zones: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      [(HMDDatabaseZoneManager *)v35 _tearDownState];
      v28 = 0;
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v7;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [(HMDDatabaseZoneManager *)v30 zoneName];
      *buf = 138543618;
      v46 = v32;
      v47 = 2112;
      v48 = v33;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@No shared zone exists with zone name %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    [(HMDDatabaseZoneManager *)v30 _requestShareInvitationWithConfiguration:v4];
    [(HMDDatabaseZoneManager *)v30 _tearDownState];
    v28 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)_fetchExistingPrivateZonesWithConfiguration:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching existing private zones", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDDatabaseZoneManager *)v7 database];
  v11 = [(HMDDatabaseZoneManager *)v7 zoneName];
  v12 = [v4 cloudZoneConfiguration];
  v13 = [(HMDDatabaseZoneManager *)v7 delegate];
  v23 = 0;
  v14 = [v10 existingPrivateZonesWithName:v11 configuration:v12 delegate:v13 error:&v23];
  v15 = v23;

  if (v14)
  {
    v16 = [(HMDDatabaseZoneManager *)v7 _handleFetchZonesResult:v14 configuration:v4];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v7;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@No existing private zones exist", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDDatabaseZoneManager *)v18 _tearDownState];
    v16 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_fetchPrivateZonesWithConfiguration:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching private zones", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDDatabaseZoneManager *)v7 database];
  v11 = [(HMDDatabaseZoneManager *)v7 zoneName];
  v12 = [v4 cloudZoneConfiguration];
  v13 = [(HMDDatabaseZoneManager *)v7 delegate];
  v23 = 0;
  v14 = [v10 privateZonesWithName:v11 configuration:v12 delegate:v13 error:&v23];
  v15 = v23;

  if (v14)
  {
    v16 = [(HMDDatabaseZoneManager *)v7 _handleFetchZonesResult:v14 configuration:v4];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v7;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch private zones: %@", buf, 0x16u);
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
  v3 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDDatabaseZoneManager *)self participantsManager];

  if (v4)
  {
    v6 = [(HMDDatabaseZoneManager *)self participantsManager];
    [v6 updateShareParticipants];
  }

  else
  {
    v6 = [(HMDDatabaseZoneManager *)self defaultConfiguration];
    if (([v6 isZoneOwner] & 1) == 0)
    {
      v5 = [(HMDDatabaseZoneManager *)self state];

      if (v5)
      {
        return;
      }

      v6 = [(HMDDatabaseZoneManager *)self defaultConfiguration];
      [(HMDDatabaseZoneManager *)self _requestShareInvitationWithConfiguration:?];
    }
  }
}

- (id)remove
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Asked to remove zone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  if ([(HMDDatabaseZoneManager *)v5 state]== 2)
  {
    [(HMDDatabaseZoneManager *)v5 setState:3];
    v8 = MEMORY[0x277D2C938];
    v9 = [(HMDDatabaseZoneManager *)v5 workQueue];
    v10 = [v8 schedulerWithDispatchQueue:v9];

    v11 = [(HMDDatabaseZoneManager *)v5 database];
    v12 = [(HMDDatabaseZoneManager *)v5 localZone];
    v13 = [v11 removeLocalAndCloudDataForLocalZone:v12];

    v14 = [v13 reschedule:v10];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __32__HMDDatabaseZoneManager_remove__block_invoke;
    v23[3] = &unk_2786837F8;
    v23[4] = v5;
    v15 = [v14 flatMap:v23];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v5;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot remove backing store because it is not running", buf, 0xCu);
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

- (BOOL)startWithConfiguration:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting zone manager with configuration: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if ([(HMDDatabaseZoneManager *)v7 state])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v7;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDDatabaseZoneManager *)v11 state];
      v19 = 138543618;
      v20 = v13;
      v21 = 2048;
      v22 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Zone manager was asked to start but it isn't idle: %ld", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = 0;
  }

  else
  {
    [(HMDDatabaseZoneManager *)v7 setState:1];
    if ([v4 isZoneOwner])
    {
      if ([v4 shouldCreateZone])
      {
        v16 = [(HMDDatabaseZoneManager *)v7 _fetchPrivateZonesWithConfiguration:v4];
      }

      else
      {
        v16 = [(HMDDatabaseZoneManager *)v7 _fetchExistingPrivateZonesWithConfiguration:v4];
      }
    }

    else
    {
      v16 = [(HMDDatabaseZoneManager *)v7 _fetchSharedZonesWithConfiguration:v4];
    }

    v15 = v16;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)start
{
  v2 = self;
  v3 = [(HMDDatabaseZoneManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDDatabaseZoneManager *)v2 defaultConfiguration];
  LOBYTE(v2) = [(HMDDatabaseZoneManager *)v2 startWithConfiguration:v4];

  return v2;
}

- (void)configure
{
  v3 = [(HMDDatabaseZoneManager *)self database];
  [v3 addDelegate:self];

  v4 = [(HMDDatabaseZoneManager *)self shareMessenger];
  [v4 setDelegate:self];

  v5 = [(HMDDatabaseZoneManager *)self shareMessenger];
  [v5 configure];
}

- (NSString)containerIdentifier
{
  v2 = [(HMDDatabaseZoneManager *)self database];
  v3 = [v2 cloudDatabase];
  v4 = [v3 containerID];
  v5 = [v4 containerIdentifier];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDDatabaseZoneManager *)self shareMessenger];
  v3 = [v2 messageTargetUUID];

  return v3;
}

- (HMDDatabaseZoneManager)initWithDatabase:(id)a3 zoneName:(id)a4 home:(id)a5 shareMessenger:(id)a6 workQueue:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v26.receiver = self;
  v26.super_class = HMDDatabaseZoneManager;
  v18 = [(HMDDatabaseZoneManager *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_state = 0;
    objc_storeStrong(&v18->_database, a3);
    v20 = [v14 hmf_stringWithSmallestEncoding];
    zoneName = v19->_zoneName;
    v19->_zoneName = v20;

    objc_storeWeak(&v19->_home, v15);
    objc_storeStrong(&v19->_shareMessenger, a6);
    objc_storeStrong(&v19->_workQueue, a7);
    v22 = objc_alloc_init(HMDDatabaseZoneManagerConfiguration);
    defaultConfiguration = v19->_defaultConfiguration;
    v19->_defaultConfiguration = v22;

    participantsManagerFactory = v19->_participantsManagerFactory;
    v19->_participantsManagerFactory = &__block_literal_global_98002;
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

- (HMDDatabaseZoneManager)initWithDatabase:(id)a3 zoneName:(id)a4 home:(id)a5 messageTargetUUID:(id)a6 workQueue:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[HMDCloudShareMessenger alloc] initWithMessageTargetUUID:v13 workQueue:v12 home:v14];

  v18 = [(HMDDatabaseZoneManager *)self initWithDatabase:v16 zoneName:v15 home:v14 shareMessenger:v17 workQueue:v12];
  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t22_98010 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t22_98010, &__block_literal_global_31);
  }

  v3 = logCategory__hmf_once_v23_98011;

  return v3;
}

void __37__HMDDatabaseZoneManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v23_98011;
  logCategory__hmf_once_v23_98011 = v1;
}

@end