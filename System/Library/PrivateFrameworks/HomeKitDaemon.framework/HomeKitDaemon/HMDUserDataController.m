@interface HMDUserDataController
+ (id)logCategory;
- (HMBModel)assistantAccessControlModelToReset;
- (HMDUserDataController)initWithDelegate:(id)a3 dataSource:(id)a4 queue:(id)a5 userID:(id)a6 homeID:(id)a7 sharedSettingsController:(id)a8 privateSettingsController:(id)a9 isCurrentUser:(BOOL)a10;
- (HMDUserDataController)initWithDelegate:(id)a3 dataSource:(id)a4 queue:(id)a5 userID:(id)a6 homeID:(id)a7 sharedSettingsController:(id)a8 privateSettingsController:(id)a9 timerCreator:(id)a10 isCurrentUser:(BOOL)a11;
- (HMDUserDataControllerDataSource)dataSource;
- (HMDUserDataControllerDelegate)delegate;
- (NSArray)assistantAccessControlAccessoriesToEncode;
- (NSArray)mediaContentProfileAccessControlAccessoriesToEncode;
- (NSArray)userListeningHistoryUpdateControlModelAccessoriesToEncode;
- (id)logIdentifier;
- (id)updateListeningHistoryModelToReset;
- (int64_t)sharedUserSettingsLogEventBackingStoreControllerRunState;
- (unint64_t)state;
- (void)_invalidatePrivateZoneFirstLoadTimer;
- (void)_invalidateSharedZoneFirstLoadTimer;
- (void)_startPrivateZoneFirstLoadTimer;
- (void)_startSharedZoneFirstLoadTimer;
- (void)assistantAccessControlModelRemoved:(id)a3;
- (void)assistantAccessControlModelUpdated:(id)a3 previousModel:(id)a4;
- (void)configure;
- (void)enableUserListeningHistoryForAccessory:(id)a3;
- (void)eventDidInitializePrivateZone;
- (void)eventDidInitializeSharedZone;
- (void)handleAssistantAccessControlAccessoryUUIDsUpdated:(id)a3 requireAuthenticationForSecureRequests:(BOOL)a4 activityNotificationsEnabledForPersonalRequests:(BOOL)a5 completion:(id)a6;
- (void)handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:(id)a3 completion:(id)a4;
- (void)handleStartForZoneController:(id)a3;
- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)a3 completion:(id)a4;
- (void)initializePrivateZoneController:(id)a3 userDataModel:(id)a4;
- (void)initializeSharedZoneController:(id)a3 userDataModel:(id)a4;
- (void)mediaContentProfileAccessControlModelRemoved:(id)a3;
- (void)mediaContentProfileAccessControlModelUpdated:(id)a3 previousModel:(id)a4;
- (void)performFirstRunOperationsOnPrivateZoneController:(id)a3;
- (void)performFirstRunOperationsOnSharedZoneController:(id)a3;
- (void)setState:(unint64_t)a3;
- (void)sharedUserDataModelUpdated:(id)a3 previousModel:(id)a4;
- (void)timerDidFire:(id)a3;
- (void)userListeningHistoryUpdateControlModelRemoved:(id)a3;
- (void)userListeningHistoryUpdateControlModelUpdated:(id)a3 previousModel:(id)a4;
@end

@implementation HMDUserDataController

- (HMDUserDataControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMDUserDataControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDUserDataController *)self userUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserDataController *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HMDUserDataController_timerDidFire___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __38__HMDUserDataController_timerDidFire___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sharedZoneFirstLoadTimer];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Attempting to recreate data in shared user data zone", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) _startupSharedZone];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) privateZoneFirstLoadTimer];
    v10 = [v8 isEqual:v9];

    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Attempting to recreate data in private user data zone", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [*(a1 + 40) _startupPrivateZone];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 32);
        v19 = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = v17;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpected timer fired %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)userListeningHistoryUpdateControlModelRemoved:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@user update listening history access control was removed", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CBEB58] set];
  [(HMDUserDataController *)v7 setUserListeningHistoryUpdateControlModelAccessories:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)userListeningHistoryUpdateControlModelUpdated:(id)a3 previousModel:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 accessories];
  if (v9)
  {
    [v6 accessories];
  }

  else
  {
    [MEMORY[0x277CBEA60] array];
  }
  v10 = ;

  v11 = [MEMORY[0x277CBEB58] setWithArray:v10];
  v12 = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelAccessories];
  v13 = [v12 isEqualToSet:v11];

  if ((v13 & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating listening history update accessories to %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDUserDataController *)v15 setUserListeningHistoryUpdateControlModelAccessories:v11];
    v18 = [(HMDUserDataController *)v15 delegate];
    [v18 userDataControllerDidUpdateUserListeningHistoryUpdateControl:v15];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)mediaContentProfileAccessControlModelRemoved:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Media content profile access control was removed", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CBEB58] set];
  [(HMDUserDataController *)v7 setMediaContentProfileAccessControlAccessories:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)mediaContentProfileAccessControlModelUpdated:(id)a3 previousModel:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v8);

  v9 = MEMORY[0x277CBEB58];
  v10 = [v6 accessories];
  v11 = [v9 setWithArray:v10];

  v12 = [(HMDUserDataController *)self mediaContentProfileAccessControlAccessories];
  v13 = [v12 isEqualToSet:v11];

  if ((v13 & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating media content profile access control to %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDUserDataController *)v15 setMediaContentProfileAccessControlAccessories:v11];
    v18 = [(HMDUserDataController *)v15 delegate];
    [v18 userDataControllerDidUpdateMediaContentProfile:v15];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (int64_t)sharedUserSettingsLogEventBackingStoreControllerRunState
{
  v3 = [(HMDUserDataController *)self delegate];
  v4 = [v3 sharedZoneControllerForUserDataController:self];
  v5 = [v4 logEventRunState];

  return v5;
}

- (void)assistantAccessControlModelRemoved:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Assistant access control was removed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)assistantAccessControlModelUpdated:(id)a3 previousModel:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v8);

  if ([v6 hmbPropertyWasSet:@"activityNotificationsEnabledForPersonalRequests"])
  {
    v9 = [v6 activityNotificationsEnabledForPersonalRequests];
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 1;
  }

  v11 = [v6 requiresAuthenticationForSecureRequests];
  v12 = [v11 BOOLValue];

  v13 = [MEMORY[0x277CBEB58] set];
  v14 = [v6 accessoryUUIDs];
  [v13 na_safeAddObjectsFromArray:v14];

  v15 = [v6 siriEndpointAccessoryUUIDs];
  [v13 na_safeAddObjectsFromArray:v15];

  v16 = [(HMDUserDataController *)self assistantAccessControlAccessoryUUIDs];
  if (![v16 isEqualToSet:v13] || v10 != -[HMDUserDataController assistantAccessControlActivityNotificationsEnabledForPersonalRequests](self, "assistantAccessControlActivityNotificationsEnabledForPersonalRequests"))
  {

LABEL_7:
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v6 requiresAuthenticationForSecureRequests];
      v29 = 138543874;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v13;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating assistant access control on zone update to require auth: %@, accessories:%@", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDUserDataController *)v18 setAssistantAccessControlAccessoryUUIDs:v13];
    [(HMDUserDataController *)v18 setAssistantAccessControlRequiresAuthenticationForSecureRequests:v12];
    [(HMDUserDataController *)v18 setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:v10];
    v22 = [(HMDUserDataController *)v18 delegate];
    [v22 userDataControllerDidUpdateAssistantAccessControl:v18];

    goto LABEL_10;
  }

  v24 = [(HMDUserDataController *)self assistantAccessControlRequiresAuthenticationForSecureRequests];

  if (v12 != v24)
  {
    goto LABEL_7;
  }

  v25 = objc_autoreleasePoolPush();
  v26 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v28;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Model in zone update has no changes %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
LABEL_10:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)sharedUserDataModelUpdated:(id)a3 previousModel:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelUUID];
  v10 = [v6 userListeningHistoryUpdateControlModelUUID];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@User Shared model changed, but no diff in ULH uuid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v16 = [(HMDUserDataController *)self delegate];
    v17 = [v16 sharedZoneControllerForUserDataController:self];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [(HMDUserDataController *)v19 userListeningHistoryUpdateControlModelUUID];
      [v6 userListeningHistoryUpdateControlModelUUID];
      v24 = v23 = v7;
      *buf = 138543874;
      v46 = v21;
      v47 = 2112;
      v48 = v22;
      v49 = 2112;
      v50 = v24;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Registering and Loading user listening history update since the UUID flipped from =%@, to =%@", buf, 0x20u);

      v7 = v23;
    }

    objc_autoreleasePoolPop(v18);
    v25 = [v6 userListeningHistoryUpdateControlModelUUID];
    [(HMDUserDataController *)v19 setUserListeningHistoryUpdateControlModelUUID:v25];

    v26 = [(HMDUserDataController *)v19 userListeningHistoryUpdateControlModelUUID];
    v44 = 0;
    v27 = [v17 loadUserListeningHistoryUpdateControlModelWithModelID:v26 error:&v44];
    v28 = v44;

    v29 = [(HMDUserDataController *)v19 userListeningHistoryUpdateControlModelUUID];
    [v17 registerForUserListeningHistoryUpdateControlModelUpdates:v19 modelID:v29];

    v30 = objc_autoreleasePoolPush();
    v31 = v19;
    v32 = HMFGetOSLogHandle();
    v33 = v32;
    if (v27)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v43 = v16;
        v34 = v28;
        v36 = v35 = v7;
        v37 = [v27 accessories];
        *buf = 138543618;
        v46 = v36;
        v47 = 2112;
        v48 = v37;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Loaded user listening history update accessories %@", buf, 0x16u);

        v7 = v35;
        v28 = v34;
        v16 = v43;
      }

      objc_autoreleasePoolPop(v30);
      v38 = MEMORY[0x277CBEB58];
      v39 = [v27 accessories];
      v40 = [v38 setWithArray:v39];
      [(HMDUserDataController *)v31 setUserListeningHistoryUpdateControlModelAccessories:v40];

      [v16 userDataControllerDidUpdateUserListeningHistoryUpdateControl:v31];
    }

    else
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v41;
        v47 = 2112;
        v48 = v28;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Unable to load update listening history accessories %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (id)updateListeningHistoryModelToReset
{
  v3 = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelUUID];

  if (v3)
  {
    v4 = [HMDUserListeningHistoryUpdateControlModel alloc];
    v5 = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelUUID];
    v6 = [(HMDUserDataController *)self userUUID];
    v7 = [(HMBModel *)v4 initWithModelID:v5 parentModelID:v6];

    [(HMDUserListeningHistoryUpdateControlModel *)v7 setAccessories:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HMBModel)assistantAccessControlModelToReset
{
  v3 = [(HMDUserDataController *)self assistantAccessControlModelUUID];

  if (v3)
  {
    v4 = [HMDAssistantAccessControlModelV2 alloc];
    v5 = [(HMDUserDataController *)self assistantAccessControlModelUUID];
    v6 = [(HMDUserDataController *)self userUUID];
    v7 = [(HMBModel *)v4 initWithModelID:v5 parentModelID:v6];

    v8 = MEMORY[0x277CBEBF8];
    [(HMDAssistantAccessControlModelV2 *)v7 setAccessoryUUIDs:MEMORY[0x277CBEBF8]];
    [(HMDAssistantAccessControlModelV2 *)v7 setSiriEndpointAccessoryUUIDs:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enableUserListeningHistoryForAccessory:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelAccessories];
  if ([v5 containsObject:v4])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@ULH for accessory %@ is already enabled", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    [v5 addObject:v4];
    v10 = MEMORY[0x277CBEA60];
    v11 = [v5 allObjects];
    v12 = [v10 arrayWithObjects:{v11, 0}];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__HMDUserDataController_enableUserListeningHistoryForAccessory___block_invoke;
    v14[3] = &unk_27868A1D8;
    v14[4] = self;
    v15 = v4;
    [(HMDUserDataController *)self handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:v12 completion:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __64__HMDUserDataController_enableUserListeningHistoryForAccessory___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Enabling ULH for accessory %@ failed with %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  if (v4)
  {
    v6 = v4;
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v6[2](v6, v5);

    v4 = v6;
  }
}

- (void)handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  if (v4)
  {
    v6 = v4;
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v6[2](v6, v5);

    v4 = v6;
  }
}

- (void)handleAssistantAccessControlAccessoryUUIDsUpdated:(id)a3 requireAuthenticationForSecureRequests:(BOOL)a4 activityNotificationsEnabledForPersonalRequests:(BOOL)a5 completion:(id)a6
{
  v6 = _Block_copy(a6);
  if (v6)
  {
    v8 = v6;
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v8[2](v8, v7);

    v6 = v8;
  }
}

- (void)handleStartForZoneController:(id)a3
{
  v8 = a3;
  v4 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDUserDataController *)self delegate];
  if (v8)
  {
    v6 = [v5 sharedZoneControllerForUserDataController:self];

    if (v6 == v8)
    {
      [(HMDUserDataController *)self _startupSharedZone];
    }

    else
    {
      v7 = [v5 privateZoneControllerForUserDataController:self];

      if (v7 == v8)
      {
        [(HMDUserDataController *)self _startupPrivateZone];
      }
    }
  }
}

- (void)_invalidatePrivateZoneFirstLoadTimer
{
  v3 = [(HMDUserDataController *)self privateZoneFirstLoadTimer];
  [v3 cancel];

  [(HMDUserDataController *)self setPrivateZoneFirstLoadTimer:0];
}

- (void)_startPrivateZoneFirstLoadTimer
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDUserDataController *)self privateZoneFirstLoadTimer];

  if (!v4)
  {
    v5 = [(HMDUserDataController *)self timerCreator];
    v6 = [v5 createExponentialBackoffTimerForZoneFetch];
    [(HMDUserDataController *)self setPrivateZoneFirstLoadTimer:v6];

    v7 = [(HMDUserDataController *)self privateZoneFirstLoadTimer];
    [v7 setDelegate:self];

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDUserDataController *)v9 privateZoneFirstLoadTimer];
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting timer to perform first run operations on shared zone. %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [(HMDUserDataController *)v9 privateZoneFirstLoadTimer];
    [v13 resume];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)performFirstRunOperationsOnPrivateZoneController:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@HMDUserDataController: Code disabled as we are running in HH2", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateSharedZoneFirstLoadTimer
{
  v3 = [(HMDUserDataController *)self sharedZoneFirstLoadTimer];
  [v3 cancel];

  [(HMDUserDataController *)self setSharedZoneFirstLoadTimer:0];
}

- (void)_startSharedZoneFirstLoadTimer
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDUserDataController *)self sharedZoneFirstLoadTimer];

  if (!v4)
  {
    v5 = [(HMDUserDataController *)self timerCreator];
    v6 = [v5 createExponentialBackoffTimerForZoneFetch];
    [(HMDUserDataController *)self setSharedZoneFirstLoadTimer:v6];

    v7 = [(HMDUserDataController *)self sharedZoneFirstLoadTimer];
    [v7 setDelegate:self];

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDUserDataController *)v9 sharedZoneFirstLoadTimer];
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting timer to perform first run operations on shared zone. %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [(HMDUserDataController *)v9 sharedZoneFirstLoadTimer];
    [v13 resume];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)performFirstRunOperationsOnSharedZoneController:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@In HH2: Not running performFirstRunOperationsOnSharedZoneController", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)initializePrivateZoneController:(id)a3 userDataModel:(id)a4
{
  v5 = a4;
  v6 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v5 settingsRootUUID];

  [(HMDUserDataController *)self setPrivateSettingsRootUUID:v7];
}

- (void)initializeSharedZoneController:(id)a3 userDataModel:(id)a4
{
  v91 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 assistantAccessControlModelUUID];
  [(HMDUserDataController *)self setAssistantAccessControlModelUUID:v9];

  v10 = [v7 mediaContentProfileAccessControlModelUUID];
  [(HMDUserDataController *)self setMediaContentProfileAccessControlModelUUID:v10];

  v11 = [(HMDUserDataController *)self userUUID];
  [v6 registerForSharedUserDataModelUpdates:self modelID:v11];

  v12 = [v7 userListeningHistoryUpdateControlModelUUID];
  [(HMDUserDataController *)self setUserListeningHistoryUpdateControlModelUUID:v12];

  v13 = [v7 settingsRootUUID];
  [(HMDUserDataController *)self setSharedSettingsRootUUID:v13];

  v14 = [(HMDUserDataController *)self assistantAccessControlModelUUID];
  [v6 registerForAssistantAccessControlModelUpdates:self modelID:v14];

  v15 = [(HMDUserDataController *)self mediaContentProfileAccessControlModelUUID];
  [v6 registerForMediaContentAccessControlModelUpdates:self modelID:v15];

  v16 = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelUUID];
  [v6 registerForUserListeningHistoryUpdateControlModelUpdates:self modelID:v16];

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [(HMDUserDataController *)v18 assistantAccessControlModelUUID];
    *buf = 138543618;
    v84 = v20;
    v85 = 2112;
    v86 = v21;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Loading assistant access control model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v22 = [(HMDUserDataController *)v18 assistantAccessControlModelUUID];
  v82 = 0;
  v23 = [v6 loadAssistantAccessControlModelWithModelID:v22 error:&v82];
  v24 = v82;

  v25 = objc_autoreleasePoolPush();
  v26 = v18;
  v27 = HMFGetOSLogHandle();
  v28 = v27;
  v29 = 0x277CBE000;
  if (v23)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      [v23 requiresAuthenticationForSecureRequests];
      v79 = v6;
      v31 = v24;
      v33 = v32 = v7;
      v34 = [v23 activityNotificationsEnabledForPersonalRequests];
      v35 = [v23 accessoryUUIDs];
      *buf = 138544130;
      v84 = v30;
      v85 = 2112;
      v86 = v33;
      v87 = 2112;
      v88 = v34;
      v89 = 2112;
      v90 = v35;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Loaded assistant access control requires auth: %@, activity notifications enabled for personal requests: %@, accessories: %@", buf, 0x2Au);

      v29 = 0x277CBE000uLL;
      v7 = v32;
      v24 = v31;
      v6 = v79;
    }

    objc_autoreleasePoolPop(v25);
    v36 = [*(v29 + 2904) set];
    v37 = [v23 accessoryUUIDs];
    [v36 na_safeAddObjectsFromArray:v37];

    v38 = [v23 siriEndpointAccessoryUUIDs];
    [v36 na_safeAddObjectsFromArray:v38];

    [(HMDUserDataController *)v26 setAssistantAccessControlAccessoryUUIDs:v36];
    v39 = [v23 requiresAuthenticationForSecureRequests];
    -[HMDUserDataController setAssistantAccessControlRequiresAuthenticationForSecureRequests:](v26, "setAssistantAccessControlRequiresAuthenticationForSecureRequests:", [v39 BOOLValue]);

    if ([v23 hmbPropertyWasSet:@"activityNotificationsEnabledForPersonalRequests"])
    {
      v40 = [v23 activityNotificationsEnabledForPersonalRequests];
      -[HMDUserDataController setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:](v26, "setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:", [v40 BOOLValue]);
    }

    else
    {
      [(HMDUserDataController *)v26 setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:1];
    }
  }

  else
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v84 = v41;
      v85 = 2112;
      v86 = v24;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to load assistant access control %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
  }

  v42 = objc_autoreleasePoolPush();
  v43 = v26;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = HMFGetLogIdentifier();
    v46 = [(HMDUserDataController *)v43 mediaContentProfileAccessControlModelUUID];
    *buf = 138543618;
    v84 = v45;
    v85 = 2112;
    v86 = v46;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Loading media content profile access control model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v42);
  v47 = [(HMDUserDataController *)v43 mediaContentProfileAccessControlModelUUID];
  v81 = 0;
  v48 = [v6 loadMediaContentAccessControlModelWithModelID:v47 error:&v81];
  v49 = v81;

  v50 = objc_autoreleasePoolPush();
  v51 = v43;
  v52 = HMFGetOSLogHandle();
  v53 = v52;
  if (v48)
  {
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v54 = HMFGetLogIdentifier();
      v55 = [v48 accessories];
      *buf = 138543618;
      v84 = v54;
      v85 = 2112;
      v86 = v55;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@Loaded media content profile access control accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
    v56 = *(v29 + 2904);
    v57 = [v48 accessories];
    v58 = [v56 setWithArray:v57];
    [(HMDUserDataController *)v51 setMediaContentProfileAccessControlAccessories:v58];
  }

  else
  {
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v59 = HMFGetLogIdentifier();
      *buf = 138543618;
      v84 = v59;
      v85 = 2112;
      v86 = v49;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Unable to load media content profile accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
  }

  v60 = objc_autoreleasePoolPush();
  v61 = v51;
  v62 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    v63 = HMFGetLogIdentifier();
    v64 = [(HMDUserDataController *)v61 userListeningHistoryUpdateControlModelUUID];
    *buf = 138543618;
    v84 = v63;
    v85 = 2112;
    v86 = v64;
    _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Loading user listening history update model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v60);
  v65 = [(HMDUserDataController *)v61 userListeningHistoryUpdateControlModelUUID];
  v80 = 0;
  v66 = [v6 loadUserListeningHistoryUpdateControlModelWithModelID:v65 error:&v80];
  v67 = v80;

  v68 = objc_autoreleasePoolPush();
  v69 = v61;
  v70 = HMFGetOSLogHandle();
  v71 = v70;
  if (v66)
  {
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      v72 = HMFGetLogIdentifier();
      v73 = [v66 accessories];
      *buf = 138543618;
      v84 = v72;
      v85 = 2112;
      v86 = v73;
      _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_INFO, "%{public}@Loaded user listening history update accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v68);
    v74 = *(v29 + 2904);
    v75 = [v66 accessories];
    v76 = [v74 setWithArray:v75];
    [(HMDUserDataController *)v69 setUserListeningHistoryUpdateControlModelAccessories:v76];
  }

  else
  {
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v77 = HMFGetLogIdentifier();
      *buf = 138543618;
      v84 = v77;
      v85 = 2112;
      v86 = v67;
      _os_log_impl(&dword_229538000, v71, OS_LOG_TYPE_ERROR, "%{public}@Unable to load update listening history accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v68);
  }

  v78 = *MEMORY[0x277D85DE8];
}

- (void)eventDidInitializeSharedZone
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  self->_isModifyingState = 1;
  v4 = [(HMDUserDataController *)self state];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Moving to initialized on initializing shared zone", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v14 = v17;
    v15 = 1;
LABEL_16:
    [(HMDUserDataController *)v14 setState:v15];
    goto LABEL_17;
  }

  if (!v4)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Moving to pending private on initializing shared zone", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = v11;
    v15 = 3;
    goto LABEL_16;
  }

  if (v4 != 1)
  {
    goto LABEL_17;
  }

LABEL_7:
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserDataController state](v6, "state")}];
    v21 = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected from state on init shared zone event %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
LABEL_17:
  self->_isModifyingState = 0;
  v20 = *MEMORY[0x277D85DE8];
}

- (void)eventDidInitializePrivateZone
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  self->_isModifyingState = 1;
  v4 = [(HMDUserDataController *)self state];
  if (v4 - 1 < 2)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserDataController state](v12, "state")}];
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpected from state on init private zone event %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (v4 == 3)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Moving to initialized on initializing private zone", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v9 = v17;
      v10 = 1;
      goto LABEL_13;
    }

    if (!v4)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Moving to pending shared on initializing private zone", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      v9 = v6;
      v10 = 2;
LABEL_13:
      [(HMDUserDataController *)v9 setState:v10];
    }
  }

  self->_isModifyingState = 0;
  v20 = *MEMORY[0x277D85DE8];
}

- (void)setState:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(v5);

  os_unfair_lock_lock_with_options();
  if (self->_state == a3)
  {
    v6 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMDUserDataControllerStateAsString(self->_state);
      v12 = HMDUserDataControllerStateAsString(a3);
      v15 = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Moving state from %@ to %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    self->_state = a3;
    os_unfair_lock_unlock(&self->_lock);
    if (a3 == 1)
    {
      v13 = [(HMDUserDataController *)v8 notificationCenter];
      [v13 postNotificationName:@"HMDUserDataControllerInitializedNotificationKey" object:v8];
    }

    v14 = *MEMORY[0x277D85DE8];
  }
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (NSArray)userListeningHistoryUpdateControlModelAccessoriesToEncode
{
  v2 = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelAccessories];
  v3 = [v2 allObjects];
  v4 = [v3 copy];

  return v4;
}

- (NSArray)mediaContentProfileAccessControlAccessoriesToEncode
{
  v2 = [(HMDUserDataController *)self mediaContentProfileAccessControlAccessories];
  v3 = [v2 allObjects];
  v4 = [v3 copy];

  return v4;
}

- (NSArray)assistantAccessControlAccessoriesToEncode
{
  if ([(HMDUserDataController *)self isInitialized])
  {
    v3 = [(HMDUserDataController *)self assistantAccessControlAccessoryUUIDs];
    v4 = [v3 allObjects];
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)configure
{
  v3 = [(HMDUserDataController *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDUserDataController_configure__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __34__HMDUserDataController_configure__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = [v4 sharedZoneControllerForUserDataController:*(a1 + 32)];
  [v2 start];

  v3 = [v4 privateZoneControllerForUserDataController:*(a1 + 32)];
  [v3 start];
}

- (HMDUserDataController)initWithDelegate:(id)a3 dataSource:(id)a4 queue:(id)a5 userID:(id)a6 homeID:(id)a7 sharedSettingsController:(id)a8 privateSettingsController:(id)a9 isCurrentUser:(BOOL)a10
{
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = objc_opt_new();
  LOBYTE(v27) = a10;
  v25 = [(HMDUserDataController *)self initWithDelegate:v23 dataSource:v22 queue:v21 userID:v20 homeID:v19 sharedSettingsController:v18 privateSettingsController:v17 timerCreator:v24 isCurrentUser:v27];

  return v25;
}

- (HMDUserDataController)initWithDelegate:(id)a3 dataSource:(id)a4 queue:(id)a5 userID:(id)a6 homeID:(id)a7 sharedSettingsController:(id)a8 privateSettingsController:(id)a9 timerCreator:(id)a10 isCurrentUser:(BOOL)a11
{
  v16 = a3;
  v17 = a4;
  v31 = a5;
  v30 = a6;
  v18 = a7;
  v19 = a9;
  v20 = a10;
  v32.receiver = self;
  v32.super_class = HMDUserDataController;
  v21 = [(HMDUserDataController *)&v32 init];
  v22 = v21;
  if (v21)
  {
    v21->_state = 2 * (v19 == 0);
    v21->_isModifyingState = 0;
    objc_storeStrong(&v21->_clientQueue, a5);
    objc_storeWeak(&v22->_delegate, v16);
    objc_storeStrong(&v22->_timerCreator, a10);
    v23 = [MEMORY[0x277CBEB58] set];
    assistantAccessControlAccessoryUUIDs = v22->_assistantAccessControlAccessoryUUIDs;
    v22->_assistantAccessControlAccessoryUUIDs = v23;

    *&v22->_assistantAccessControlRequiresAuthenticationForSecureRequests = 256;
    v25 = [MEMORY[0x277CBEB58] set];
    mediaContentProfileAccessControlAccessories = v22->_mediaContentProfileAccessControlAccessories;
    v22->_mediaContentProfileAccessControlAccessories = v25;

    objc_storeStrong(&v22->_userUUID, a6);
    objc_storeStrong(&v22->_homeUUID, a7);
    objc_storeWeak(&v22->_dataSource, v17);
    v27 = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v22->_notificationCenter;
    v22->_notificationCenter = v27;

    v22->_isCurrentUser = a11;
  }

  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t41 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t41, &__block_literal_global_214514);
  }

  v3 = logCategory__hmf_once_v42;

  return v3;
}

void __36__HMDUserDataController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v42;
  logCategory__hmf_once_v42 = v1;
}

@end