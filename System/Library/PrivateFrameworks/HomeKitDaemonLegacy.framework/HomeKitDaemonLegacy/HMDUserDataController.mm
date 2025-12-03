@interface HMDUserDataController
+ (id)logCategory;
- (BOOL)_userListeningHistoryValueFromModels:(id)models;
- (BOOL)hasUserSeenRMVNewLanguageNotification;
- (BOOL)isRecognizeMyVoiceEnabled;
- (HMBModel)assistantAccessControlModelToReset;
- (HMDUserDataController)initWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController isCurrentUser:(BOOL)self0;
- (HMDUserDataController)initWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController timerCreator:(id)self0 isCurrentUser:(BOOL)self1;
- (HMDUserDataControllerDataSource)dataSource;
- (HMDUserDataControllerDelegate)delegate;
- (NSArray)assistantAccessControlAccessoriesToEncode;
- (NSArray)mediaContentProfileAccessControlAccessoriesToEncode;
- (NSArray)userListeningHistoryUpdateControlModelAccessoriesToEncode;
- (NSDictionary)privateSettingValuesByKeyPath;
- (NSDictionary)sharedSettingValuesByKeyPath;
- (id)_keyPathToModelFromKeyPath:(id)path models:(id)models;
- (id)_migrateUserListeningHistoryUpdateControlWithUserCurrentDataModel:(id)model transaction:(id)transaction settingModels:(id)models;
- (id)logIdentifier;
- (id)updateListeningHistoryModelToReset;
- (int64_t)sharedUserSettingsLogEventBackingStoreControllerRunState;
- (unint64_t)state;
- (void)_invalidatePrivateZoneFirstLoadTimer;
- (void)_invalidateSharedZoneFirstLoadTimer;
- (void)_migrateUserSupportsAutomaticHH2MigrationUserCurrentDataModel:(id)model transaction:(id)transaction;
- (void)_startPrivateZoneFirstLoadTimer;
- (void)_startSharedZoneFirstLoadTimer;
- (void)_startupPrivateZone;
- (void)_startupSharedZone;
- (void)assistantAccessControlModelRemoved:(id)removed;
- (void)assistantAccessControlModelUpdated:(id)updated previousModel:(id)model;
- (void)configure;
- (void)enableUserListeningHistoryForAccessory:(id)accessory;
- (void)encodeWithCoder:(id)coder;
- (void)eventDidInitializePrivateZone;
- (void)eventDidInitializeSharedZone;
- (void)handleAssistantAccessControlAccessoryUUIDsUpdated:(id)updated requireAuthenticationForSecureRequests:(BOOL)requests activityNotificationsEnabledForPersonalRequests:(BOOL)personalRequests completion:(id)completion;
- (void)handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion;
- (void)handleRemovedAccessory:(id)accessory;
- (void)handleStartForZoneController:(id)controller;
- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion;
- (void)initializePrivateZoneController:(id)controller userDataModel:(id)model;
- (void)initializeSharedZoneController:(id)controller userDataModel:(id)model;
- (void)mediaContentProfileAccessControlModelRemoved:(id)removed;
- (void)mediaContentProfileAccessControlModelUpdated:(id)updated previousModel:(id)model;
- (void)performFirstRunOperationsOnPrivateZoneController:(id)controller;
- (void)performFirstRunOperationsOnSharedZoneController:(id)controller;
- (void)setState:(unint64_t)state;
- (void)sharedUserDataModelUpdated:(id)updated previousModel:(id)model;
- (void)timerDidFire:(id)fire;
- (void)userListeningHistoryUpdateControlModelRemoved:(id)removed;
- (void)userListeningHistoryUpdateControlModelUpdated:(id)updated previousModel:(id)model;
- (void)userSupportsAutomaticHH2MigrationModelRemoved:(id)removed;
- (void)userSupportsAutomaticHH2MigrationModelUpdated:(id)updated previousModel:(id)model;
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
  userUUID = [(HMDUserDataController *)self userUUID];
  uUIDString = [userUUID UUIDString];

  return uUIDString;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HMDUserDataController_timerDidFire___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = fireCopy;
  selfCopy = self;
  v6 = fireCopy;
  dispatch_async(clientQueue, v7);
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Attempting to recreate data in shared user data zone", &v19, 0xCu);
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
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Attempting to recreate data in private user data zone", &v19, 0xCu);
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
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpected timer fired %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)userSupportsAutomaticHH2MigrationModelRemoved:(id)removed
{
  v13 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@User supports automatic HH2 migration was removed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDUserDataController *)selfCopy setSupportsHH2MigrationByOwnerManual:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)userSupportsAutomaticHH2MigrationModelUpdated:(id)updated previousModel:(id)model
{
  v29 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  modelCopy = model;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  delegate = [(HMDUserDataController *)self delegate];
  supportsAutomaticHH2Migration = [updatedCopy supportsAutomaticHH2Migration];
  bOOLValue = [supportsAutomaticHH2Migration BOOLValue];

  if (bOOLValue != [(HMDUserDataController *)self supportsHH2MigrationByOwnerManual])
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = HMFBooleanToString();
      v25 = 138543618;
      v26 = v15;
      v27 = 2114;
      v28 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating user supports automatic HH2 migration by owner manual to %{public}@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [(HMDUserDataController *)selfCopy setSupportsHH2MigrationByOwnerManual:bOOLValue];
    [delegate userDataControllerDidUpdateSupportsAutomaticHH2Migration:selfCopy];
  }

  supportsHH2MigrationByOwnerAuto = [updatedCopy supportsHH2MigrationByOwnerAuto];
  bOOLValue2 = [supportsHH2MigrationByOwnerAuto BOOLValue];

  if (bOOLValue2 != [(HMDUserDataController *)self supportsHH2MigrationByOwnerAuto])
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = HMFBooleanToString();
      v25 = 138543618;
      v26 = v22;
      v27 = 2114;
      v28 = v23;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating user supports automatic HH2 migration by owner auto to %{public}@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDUserDataController *)selfCopy2 setSupportsHH2MigrationByOwnerAuto:bOOLValue2];
    [delegate userDataControllerDidUpdateSupportsAutomaticHH2Migration:selfCopy2];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)userListeningHistoryUpdateControlModelRemoved:(id)removed
{
  v14 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@user update listening history access control was removed", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CBEB58] set];
  [(HMDUserDataController *)selfCopy setUserListeningHistoryUpdateControlModelAccessories:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)userListeningHistoryUpdateControlModelUpdated:(id)updated previousModel:(id)model
{
  v24 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  modelCopy = model;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  accessories = [updatedCopy accessories];
  if (accessories)
  {
    [updatedCopy accessories];
  }

  else
  {
    [MEMORY[0x277CBEA60] array];
  }
  v10 = ;

  v11 = [MEMORY[0x277CBEB58] setWithArray:v10];
  userListeningHistoryUpdateControlModelAccessories = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelAccessories];
  v13 = [userListeningHistoryUpdateControlModelAccessories isEqualToSet:v11];

  if ((v13 & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating listening history update accessories to %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDUserDataController *)selfCopy setUserListeningHistoryUpdateControlModelAccessories:v11];
    delegate = [(HMDUserDataController *)selfCopy delegate];
    [delegate userDataControllerDidUpdateUserListeningHistoryUpdateControl:selfCopy];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)mediaContentProfileAccessControlModelRemoved:(id)removed
{
  v14 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Media content profile access control was removed", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CBEB58] set];
  [(HMDUserDataController *)selfCopy setMediaContentProfileAccessControlAccessories:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)mediaContentProfileAccessControlModelUpdated:(id)updated previousModel:(id)model
{
  v24 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  modelCopy = model;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v9 = MEMORY[0x277CBEB58];
  accessories = [updatedCopy accessories];
  v11 = [v9 setWithArray:accessories];

  mediaContentProfileAccessControlAccessories = [(HMDUserDataController *)self mediaContentProfileAccessControlAccessories];
  v13 = [mediaContentProfileAccessControlAccessories isEqualToSet:v11];

  if ((v13 & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating media content profile access control to %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDUserDataController *)selfCopy setMediaContentProfileAccessControlAccessories:v11];
    delegate = [(HMDUserDataController *)selfCopy delegate];
    [delegate userDataControllerDidUpdateMediaContentProfile:selfCopy];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (int64_t)sharedUserSettingsLogEventBackingStoreControllerRunState
{
  delegate = [(HMDUserDataController *)self delegate];
  v4 = [delegate sharedZoneControllerForUserDataController:self];
  logEventRunState = [v4 logEventRunState];

  return logEventRunState;
}

void __66__HMDUserDataController_setHasUserSeenRMVNewLanguageNotification___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updated hasUserSeenRMVNewLanguageNotification value with error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasUserSeenRMVNewLanguageNotification
{
  v21 = *MEMORY[0x277D85DE8];
  privateSettingsController = [(HMDUserDataController *)self privateSettingsController];
  v4 = privateSettingsController;
  if (privateSettingsController)
  {
    v5 = [privateSettingsController settingForKeyPath:@"root.home.hasUserSeenRMVNewLanguageNotification"];
    v6 = v5;
    if (v5)
    {
      value = [v5 value];
      bOOLValue = [value BOOLValue];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch hasUserSeenRMVNewLanguageNotification because the setting is nil", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      bOOLValue = 1;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch hasUserSeenRMVNewLanguageNotification because privateSettingsController is nil", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    bOOLValue = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (BOOL)isRecognizeMyVoiceEnabled
{
  v21 = *MEMORY[0x277D85DE8];
  sharedSettingsController = [(HMDUserDataController *)self sharedSettingsController];
  v4 = sharedSettingsController;
  if (sharedSettingsController)
  {
    v5 = [sharedSettingsController settingForKeyPath:@"root.siri.identifyVoice"];
    v6 = v5;
    if (v5)
    {
      value = [v5 value];
      bOOLValue = [value BOOLValue];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch isRecognizeMyVoiceEnabled because the setting is nil", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      bOOLValue = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch isRecognizeMyVoiceEnabled because privateSettingsController is nil", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    bOOLValue = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (NSDictionary)privateSettingValuesByKeyPath
{
  privateSettingsController = [(HMDUserDataController *)self privateSettingsController];

  if (privateSettingsController)
  {
    privateSettingsController2 = [(HMDUserDataController *)self privateSettingsController];
    v5 = [privateSettingsController2 settingValuesByKeyPathWithPrefix:@"private"];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (NSDictionary)sharedSettingValuesByKeyPath
{
  sharedSettingsController = [(HMDUserDataController *)self sharedSettingsController];

  if (sharedSettingsController)
  {
    sharedSettingsController2 = [(HMDUserDataController *)self sharedSettingsController];
    v5 = [sharedSettingsController2 settingValuesByKeyPathWithPrefix:@"shared"];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (void)assistantAccessControlModelRemoved:(id)removed
{
  v13 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Assistant access control was removed", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)assistantAccessControlModelUpdated:(id)updated previousModel:(id)model
{
  v35 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  modelCopy = model;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if ([updatedCopy hmbPropertyWasSet:@"activityNotificationsEnabledForPersonalRequests"])
  {
    activityNotificationsEnabledForPersonalRequests = [updatedCopy activityNotificationsEnabledForPersonalRequests];
    bOOLValue = [activityNotificationsEnabledForPersonalRequests BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  requiresAuthenticationForSecureRequests = [updatedCopy requiresAuthenticationForSecureRequests];
  bOOLValue2 = [requiresAuthenticationForSecureRequests BOOLValue];

  v13 = [MEMORY[0x277CBEB58] set];
  accessoryUUIDs = [updatedCopy accessoryUUIDs];
  [v13 na_safeAddObjectsFromArray:accessoryUUIDs];

  siriEndpointAccessoryUUIDs = [updatedCopy siriEndpointAccessoryUUIDs];
  [v13 na_safeAddObjectsFromArray:siriEndpointAccessoryUUIDs];

  assistantAccessControlAccessoryUUIDs = [(HMDUserDataController *)self assistantAccessControlAccessoryUUIDs];
  if (![assistantAccessControlAccessoryUUIDs isEqualToSet:v13] || bOOLValue != -[HMDUserDataController assistantAccessControlActivityNotificationsEnabledForPersonalRequests](self, "assistantAccessControlActivityNotificationsEnabledForPersonalRequests"))
  {

LABEL_7:
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      requiresAuthenticationForSecureRequests2 = [updatedCopy requiresAuthenticationForSecureRequests];
      v29 = 138543874;
      v30 = v20;
      v31 = 2112;
      v32 = requiresAuthenticationForSecureRequests2;
      v33 = 2112;
      v34 = v13;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating assistant access control on zone update to require auth: %@, accessories:%@", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDUserDataController *)selfCopy setAssistantAccessControlAccessoryUUIDs:v13];
    [(HMDUserDataController *)selfCopy setAssistantAccessControlRequiresAuthenticationForSecureRequests:bOOLValue2];
    [(HMDUserDataController *)selfCopy setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:bOOLValue];
    delegate = [(HMDUserDataController *)selfCopy delegate];
    [delegate userDataControllerDidUpdateAssistantAccessControl:selfCopy];

    goto LABEL_10;
  }

  assistantAccessControlRequiresAuthenticationForSecureRequests = [(HMDUserDataController *)self assistantAccessControlRequiresAuthenticationForSecureRequests];

  if (bOOLValue2 != assistantAccessControlRequiresAuthenticationForSecureRequests)
  {
    goto LABEL_7;
  }

  v25 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v29 = 138543618;
    v30 = v28;
    v31 = 2112;
    v32 = updatedCopy;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Model in zone update has no changes %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
LABEL_10:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)sharedUserDataModelUpdated:(id)updated previousModel:(id)model
{
  v83 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  modelCopy = model;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  userListeningHistoryUpdateControlModelUUID = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelUUID];
  userListeningHistoryUpdateControlModelUUID2 = [updatedCopy userListeningHistoryUpdateControlModelUUID];
  v11 = [userListeningHistoryUpdateControlModelUUID isEqual:userListeningHistoryUpdateControlModelUUID2];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v78 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@User Shared model changed, but no diff in ULH uuid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v73 = modelCopy;
    delegate = [(HMDUserDataController *)self delegate];
    v16 = [delegate sharedZoneControllerForUserDataController:self];
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      userListeningHistoryUpdateControlModelUUID3 = [(HMDUserDataController *)selfCopy2 userListeningHistoryUpdateControlModelUUID];
      userListeningHistoryUpdateControlModelUUID4 = [updatedCopy userListeningHistoryUpdateControlModelUUID];
      *buf = 138543874;
      v78 = v20;
      v79 = 2112;
      v80 = userListeningHistoryUpdateControlModelUUID3;
      v81 = 2112;
      v82 = userListeningHistoryUpdateControlModelUUID4;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Registering and Loading user listening history update since the UUID flipped from =%@, to =%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    userListeningHistoryUpdateControlModelUUID5 = [updatedCopy userListeningHistoryUpdateControlModelUUID];
    [(HMDUserDataController *)selfCopy2 setUserListeningHistoryUpdateControlModelUUID:userListeningHistoryUpdateControlModelUUID5];

    userListeningHistoryUpdateControlModelUUID6 = [(HMDUserDataController *)selfCopy2 userListeningHistoryUpdateControlModelUUID];
    v76 = 0;
    v25 = [v16 loadUserListeningHistoryUpdateControlModelWithModelID:userListeningHistoryUpdateControlModelUUID6 error:&v76];
    v26 = v76;

    userListeningHistoryUpdateControlModelUUID7 = [(HMDUserDataController *)selfCopy2 userListeningHistoryUpdateControlModelUUID];
    [v16 registerForUserListeningHistoryUpdateControlModelUpdates:selfCopy2 modelID:userListeningHistoryUpdateControlModelUUID7];

    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy2;
    v30 = HMFGetOSLogHandle();
    v31 = v30;
    if (v25)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        accessories = [v25 accessories];
        *buf = 138543618;
        v78 = v32;
        v79 = 2112;
        v80 = accessories;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Loaded user listening history update accessories %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v34 = MEMORY[0x277CBEB58];
      accessories2 = [v25 accessories];
      v36 = [v34 setWithArray:accessories2];
      [(HMDUserDataController *)v29 setUserListeningHistoryUpdateControlModelAccessories:v36];

      v37 = delegate;
      [delegate userDataControllerDidUpdateUserListeningHistoryUpdateControl:v29];
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v78 = v38;
        v79 = 2112;
        v80 = v26;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to load update listening history accessories %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v37 = delegate;
    }

    modelCopy = v73;
  }

  supportsAutomaticHH2MigrationModelUUID = [(HMDUserDataController *)self supportsAutomaticHH2MigrationModelUUID];
  supportsAutomaticHH2MigrationModelUUID2 = [updatedCopy supportsAutomaticHH2MigrationModelUUID];
  v41 = [supportsAutomaticHH2MigrationModelUUID isEqual:supportsAutomaticHH2MigrationModelUUID2];

  if (v41)
  {
    v42 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543362;
      v78 = v45;
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@User Shared model changed, but no diff in USAHH2M uuid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
  }

  else
  {
    delegate2 = [(HMDUserDataController *)self delegate];
    v47 = [delegate2 sharedZoneControllerForUserDataController:self];
    v48 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = HMFGetLogIdentifier();
      supportsAutomaticHH2MigrationModelUUID3 = [(HMDUserDataController *)selfCopy4 supportsAutomaticHH2MigrationModelUUID];
      supportsAutomaticHH2MigrationModelUUID4 = [updatedCopy supportsAutomaticHH2MigrationModelUUID];
      *buf = 138543874;
      v78 = v51;
      v79 = 2112;
      v80 = supportsAutomaticHH2MigrationModelUUID3;
      v81 = 2112;
      v82 = supportsAutomaticHH2MigrationModelUUID4;
      _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@Registering and Loading user support automatic HH2 migration UUID flipped from =%@, to =%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v48);
    supportsAutomaticHH2MigrationModelUUID5 = [updatedCopy supportsAutomaticHH2MigrationModelUUID];
    [(HMDUserDataController *)selfCopy4 setSupportsAutomaticHH2MigrationModelUUID:supportsAutomaticHH2MigrationModelUUID5];

    supportsAutomaticHH2MigrationModelUUID6 = [(HMDUserDataController *)selfCopy4 supportsAutomaticHH2MigrationModelUUID];
    v75 = 0;
    v56 = [v47 loadUserSupportsAutomaticHH2MigrationModelWithModelID:supportsAutomaticHH2MigrationModelUUID6 error:&v75];
    v57 = v75;

    supportsAutomaticHH2MigrationModelUUID7 = [(HMDUserDataController *)selfCopy4 supportsAutomaticHH2MigrationModelUUID];
    [v47 registerForUserSupportsAutomaticHH2MigrationModelUpdates:selfCopy4 modelID:supportsAutomaticHH2MigrationModelUUID7];

    if (v56)
    {
      supportsAutomaticHH2Migration = [v56 supportsAutomaticHH2Migration];
      -[HMDUserDataController setSupportsHH2MigrationByOwnerManual:](selfCopy4, "setSupportsHH2MigrationByOwnerManual:", [supportsAutomaticHH2Migration BOOLValue]);

      supportsHH2MigrationByOwnerAuto = [v56 supportsHH2MigrationByOwnerAuto];
      -[HMDUserDataController setSupportsHH2MigrationByOwnerAuto:](selfCopy4, "setSupportsHH2MigrationByOwnerAuto:", [supportsHH2MigrationByOwnerAuto BOOLValue]);

      v61 = objc_autoreleasePoolPush();
      v62 = selfCopy4;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v64 = v74 = modelCopy;
        [(HMDUserDataController *)v62 supportsHH2MigrationByOwnerManual];
        HMFBooleanToString();
        v72 = v57;
        v66 = v65 = delegate2;
        [(HMDUserDataController *)v62 supportsHH2MigrationByOwnerAuto];
        v67 = HMFBooleanToString();
        *buf = 138543874;
        v78 = v64;
        v79 = 2114;
        v80 = v66;
        v81 = 2114;
        v82 = v67;
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Loaded user supports automatic HH2 migration model by owner manual = %{public}@, by owner auto = %{public}@", buf, 0x20u);

        delegate2 = v65;
        v57 = v72;

        modelCopy = v74;
      }
    }

    else
    {
      v61 = objc_autoreleasePoolPush();
      v68 = selfCopy4;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v69 = HMFGetLogIdentifier();
        *buf = 138543618;
        v78 = v69;
        v79 = 2112;
        v80 = v57;
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@Unable to load user supports automatic HH2 migration model %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v61);
  }

  v70 = *MEMORY[0x277D85DE8];
}

- (id)updateListeningHistoryModelToReset
{
  userListeningHistoryUpdateControlModelUUID = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelUUID];

  if (userListeningHistoryUpdateControlModelUUID)
  {
    v4 = [HMDUserListeningHistoryUpdateControlModel alloc];
    userListeningHistoryUpdateControlModelUUID2 = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelUUID];
    userUUID = [(HMDUserDataController *)self userUUID];
    v7 = [(HMBModel *)v4 initWithModelID:userListeningHistoryUpdateControlModelUUID2 parentModelID:userUUID];

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
  assistantAccessControlModelUUID = [(HMDUserDataController *)self assistantAccessControlModelUUID];

  if (assistantAccessControlModelUUID)
  {
    v4 = [HMDAssistantAccessControlModelV2 alloc];
    assistantAccessControlModelUUID2 = [(HMDUserDataController *)self assistantAccessControlModelUUID];
    userUUID = [(HMDUserDataController *)self userUUID];
    v7 = [(HMBModel *)v4 initWithModelID:assistantAccessControlModelUUID2 parentModelID:userUUID];

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

- (void)handleRemovedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDUserDataController_handleRemovedAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(clientQueue, v7);
}

void __48__HMDUserDataController_handleRemovedAccessory___block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = [*(a1 + 32) assistantAccessControlAccessoryUUIDs];
  v4 = [v3 containsObject:*(a1 + 40)];

  v5 = &unk_281523000;
  if (v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 40);
      *buf = 138543618;
      v77 = v9;
      v78 = 2112;
      v79 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Found removed accessory %@ in assistant access control list removing.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [HMDAssistantAccessControlModelV2 alloc];
    v12 = [*(a1 + 32) assistantAccessControlModelUUID];
    v13 = [*(a1 + 32) userUUID];
    v14 = [(HMBModel *)v11 initWithModelID:v12 parentModelID:v13];

    v15 = [*(a1 + 32) assistantAccessControlAccessoryUUIDs];
    v16 = MEMORY[0x277CBEB98];
    v75 = *(a1 + 40);
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [v15 na_setByRemovingObjectsFromSet:v18];
    v20 = [v19 allObjects];

    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __48__HMDUserDataController_handleRemovedAccessory___block_invoke_171;
    v74[3] = &unk_2797358A0;
    v74[4] = *(a1 + 32);
    v21 = [v20 na_filter:v74];
    [(HMDAssistantAccessControlModelV2 *)v14 setAccessoryUUIDs:v21];

    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __48__HMDUserDataController_handleRemovedAccessory___block_invoke_2;
    v71[3] = &unk_27972E788;
    v22 = v2;
    v23 = *(a1 + 32);
    v72 = v22;
    v73 = v23;
    v24 = [v20 na_filter:v71];
    [(HMDAssistantAccessControlModelV2 *)v14 setSiriEndpointAccessoryUUIDs:v24];

    v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "assistantAccessControlRequiresAuthenticationForSecureRequests")}];
    [(HMDAssistantAccessControlModelV2 *)v14 setRequiresAuthenticationForSecureRequests:v25];

    v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "assistantAccessControlActivityNotificationsEnabledForPersonalRequests")}];
    [(HMDAssistantAccessControlModelV2 *)v14 setActivityNotificationsEnabledForPersonalRequests:v26];

    v27 = [v22 sharedZoneControllerForUserDataController:*(a1 + 32)];
    v5 = &unk_281523000;
    v28 = [[HMDSettingTransaction alloc] initWithTransactionLabel:@"Remove accessory from user assistant access control"];
    [(HMDSettingTransaction *)v28 addModelToBeUpdated:v14];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __48__HMDUserDataController_handleRemovedAccessory___block_invoke_3;
    v69[3] = &unk_2797358C8;
    v29 = *(a1 + 40);
    v69[4] = *(a1 + 32);
    v70 = v29;
    [v27 runTransaction:v28 waitForCloudPush:0 completion:v69];
  }

  v30 = [*(a1 + 32) mediaContentProfileAccessControlAccessories];
  v31 = [v30 containsObject:*(a1 + 40)];

  if (v31)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = *(a1 + 32);
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = *(a1 + 40);
      *buf = 138543618;
      v77 = v35;
      v78 = 2112;
      v79 = v36;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Found removed accessory %@ in media content profile list removing.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v37 = [HMDMediaContentProfileAccessControlModel alloc];
    v38 = [*(a1 + 32) mediaContentProfileAccessControlModelUUID];
    v39 = [*(a1 + 32) userUUID];
    v40 = [(HMBModel *)v37 initWithModelID:v38 parentModelID:v39];

    v41 = [*(a1 + 32) mediaContentProfileAccessControlAccessories];
    v42 = [v41 mutableCopy];

    [v42 removeObject:*(a1 + 40)];
    v43 = [v42 allObjects];
    [(HMDMediaContentProfileAccessControlModel *)v40 setAccessories:v43];

    v44 = [v2 sharedZoneControllerForUserDataController:*(a1 + 32)];
    v45 = [objc_alloc((v5 + 2824)) initWithTransactionLabel:@"Remove accessory from media content profile access control"];
    [v45 addModelToBeUpdated:v40];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __48__HMDUserDataController_handleRemovedAccessory___block_invoke_178;
    v67[3] = &unk_2797358C8;
    v46 = *(a1 + 40);
    v67[4] = *(a1 + 32);
    v68 = v46;
    [v44 runTransaction:v45 waitForCloudPush:0 completion:v67];
  }

  v47 = [*(a1 + 32) userListeningHistoryUpdateControlModelAccessories];
  v48 = [v47 containsObject:*(a1 + 40)];

  if (v48)
  {
    v49 = objc_autoreleasePoolPush();
    v50 = *(a1 + 32);
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = HMFGetLogIdentifier();
      v53 = *(a1 + 40);
      *buf = 138543618;
      v77 = v52;
      v78 = 2112;
      v79 = v53;
      _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@Found removed accessory %@ in update listening history list removing.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v49);
    v54 = [HMDUserListeningHistoryUpdateControlModel alloc];
    v55 = [*(a1 + 32) userListeningHistoryUpdateControlModelUUID];
    v56 = [*(a1 + 32) userUUID];
    v57 = [(HMBModel *)v54 initWithModelID:v55 parentModelID:v56];

    v58 = [*(a1 + 32) userListeningHistoryUpdateControlModelAccessories];
    v59 = [v58 mutableCopy];

    [v59 removeObject:*(a1 + 40)];
    v60 = [v59 allObjects];
    [(HMDUserListeningHistoryUpdateControlModel *)v57 setAccessories:v60];

    v61 = [v2 sharedZoneControllerForUserDataController:*(a1 + 32)];
    v62 = [objc_alloc((v5 + 2824)) initWithTransactionLabel:@"Remove accessory from update listening history control"];
    [v62 addModelToBeUpdated:v57];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __48__HMDUserDataController_handleRemovedAccessory___block_invoke_182;
    v65[3] = &unk_2797358C8;
    v63 = *(a1 + 40);
    v65[4] = *(a1 + 32);
    v66 = v63;
    [v61 runTransaction:v62 waitForCloudPush:0 completion:v65];
  }

  v64 = *MEMORY[0x277D85DE8];
}

uint64_t __48__HMDUserDataController_handleRemovedAccessory___block_invoke_171(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  v6 = [v5 userDataController:*(a1 + 32) isAppleMediaAccessory:v4];

  return v6;
}

void __48__HMDUserDataController_handleRemovedAccessory___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Removed accessory %@ from assistant access control list on accessory removal.", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

void __48__HMDUserDataController_handleRemovedAccessory___block_invoke_178(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Removed accessory %@ from media content profile access control list on accessory removal.", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

void __48__HMDUserDataController_handleRemovedAccessory___block_invoke_182(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Removed accessory %@ from ULH list on accessory removal.", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)enableUserListeningHistoryForAccessory:(id)accessory
{
  v20 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  userListeningHistoryUpdateControlModelAccessories = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelAccessories];
  if ([userListeningHistoryUpdateControlModelAccessories containsObject:accessoryCopy])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = accessoryCopy;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@ULH for accessory %@ is already enabled", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    [userListeningHistoryUpdateControlModelAccessories addObject:accessoryCopy];
    v10 = MEMORY[0x277CBEA60];
    allObjects = [userListeningHistoryUpdateControlModelAccessories allObjects];
    v12 = [v10 arrayWithObjects:{allObjects, 0}];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__HMDUserDataController_enableUserListeningHistoryForAccessory___block_invoke;
    v14[3] = &unk_2797358C8;
    v14[4] = self;
    v15 = accessoryCopy;
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Enabling ULH for accessory %@ failed with %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if ([(HMDUserDataController *)self isInitialized])
  {
    userListeningHistoryUpdateControlModelAccessories = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelAccessories];
    v10 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
    v11 = [v10 na_setByRemovingObjectsFromSet:userListeningHistoryUpdateControlModelAccessories];

    delegate = [(HMDUserDataController *)self delegate];
    v42 = dsCopy;
    v13 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v14 = v11;
    v15 = [(HMDUserListeningHistoryUpdateControlModel *)v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v43 + 1) + 8 * i);
          if (([delegate userDataController:self isAccessoryUserListeningHistoryUpdateCapable:v19] & 1) == 0)
          {
            v36 = objc_autoreleasePoolPush();
            selfCopy = self;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = HMFGetLogIdentifier();
              *buf = 138543618;
              v48 = v39;
              v49 = 2112;
              v50 = v19;
              _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Unable to validate accessory %@, skipping", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v36);
            v40 = MEMORY[0x277CCA9B8];
            v30 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2027];
            v31 = [v40 hmErrorWithCode:2 description:@"Could not validate accessory" reason:@"Need all accessories to be valid" suggestion:0 underlyingError:v30];
            completionCopy[2](completionCopy, v31);
            v28 = v14;
            goto LABEL_19;
          }
        }

        v16 = [(HMDUserListeningHistoryUpdateControlModel *)v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v20 = [MEMORY[0x277CBEB58] setWithArray:v42];

    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v24;
      v49 = 2112;
      v50 = v20;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Running transaction to update user listening history update control to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [HMDUserListeningHistoryUpdateControlModel alloc];
    userListeningHistoryUpdateControlModelUUID = [(HMDUserDataController *)selfCopy2 userListeningHistoryUpdateControlModelUUID];
    userUUID = [(HMDUserDataController *)selfCopy2 userUUID];
    v28 = [(HMBModel *)v25 initWithModelID:userListeningHistoryUpdateControlModelUUID parentModelID:userUUID];

    allObjects = [v20 allObjects];
    [(HMDUserListeningHistoryUpdateControlModel *)v28 setAccessories:allObjects];

    v30 = [delegate sharedZoneControllerForUserDataController:selfCopy2];
    v31 = [[HMDSettingTransaction alloc] initWithTransactionLabel:@"Update user listening history update control"];
    [(HMDSettingTransaction *)v31 addModelToBeUpdated:v28];
    [v30 runTransaction:v31 waitForCloudPush:0 completion:completionCopy];
    v13 = v20;
LABEL_19:

    dsCopy = v42;
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v35;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Not initialized yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    userListeningHistoryUpdateControlModelAccessories = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Not ready" reason:@"Initialization is not complete" suggestion:0];
    completionCopy[2](completionCopy, userListeningHistoryUpdateControlModelAccessories);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if ([(HMDUserDataController *)self isInitialized])
  {
    delegate = [(HMDUserDataController *)self delegate];
    v10 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = dsCopy;
    v12 = [(HMDMediaContentProfileAccessControlModel *)v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          if (![(HMDSettingTransaction *)delegate userDataController:self isMediaContentProfileCapableAccessoryID:v16, v37])
          {
            v31 = objc_autoreleasePoolPush();
            selfCopy = self;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = HMFGetLogIdentifier();
              *buf = 138543618;
              v42 = v34;
              v43 = 2112;
              v44 = v16;
              _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Unable to validate accessory %@, skipping", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v31);
            v35 = MEMORY[0x277CCA9B8];
            v25 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2026];
            v26 = [v35 hmErrorWithCode:2 description:@"Could not validate accessory" reason:@"Need all accessories to be valid" suggestion:0 underlyingError:v25];
            completionCopy[2](completionCopy, v26);
            goto LABEL_19;
          }

          [v10 addObject:v16];
        }

        v13 = [(HMDMediaContentProfileAccessControlModel *)v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v20;
      v43 = 2112;
      v44 = v10;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Running transaction to update media content profile access control to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [HMDMediaContentProfileAccessControlModel alloc];
    mediaContentProfileAccessControlModelUUID = [(HMDUserDataController *)selfCopy2 mediaContentProfileAccessControlModelUUID];
    userUUID = [(HMDUserDataController *)selfCopy2 userUUID];
    v11 = [(HMBModel *)v21 initWithModelID:mediaContentProfileAccessControlModelUUID parentModelID:userUUID];

    allObjects = [v10 allObjects];
    [(HMDMediaContentProfileAccessControlModel *)v11 setAccessories:allObjects];

    v25 = [(HMDSettingTransaction *)delegate sharedZoneControllerForUserDataController:selfCopy2];
    v26 = [[HMDSettingTransaction alloc] initWithTransactionLabel:@"Update media content profile access control"];
    [(HMDSettingTransaction *)v26 addModelToBeUpdated:v11];
    [v25 runTransaction:v26 waitForCloudPush:0 completion:completionCopy];
LABEL_19:
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Not initialized yet", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    delegate = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Not ready" reason:@"Initialization is not complete" suggestion:0];
    completionCopy[2](completionCopy, delegate);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)handleAssistantAccessControlAccessoryUUIDsUpdated:(id)updated requireAuthenticationForSecureRequests:(BOOL)requests activityNotificationsEnabledForPersonalRequests:(BOOL)personalRequests completion:(id)completion
{
  personalRequestsCopy = personalRequests;
  requestsCopy = requests;
  v79 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  completionCopy = completion;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  if ([(HMDUserDataController *)self isInitialized])
  {
    v59 = requestsCopy;
    v60 = personalRequestsCopy;
    assistantAccessControlAccessoryUUIDs = [(HMDUserDataController *)self assistantAccessControlAccessoryUUIDs];
    v61 = updatedCopy;
    v14 = [MEMORY[0x277CBEB98] setWithArray:updatedCopy];
    v15 = [v14 na_setByRemovingObjectsFromSet:assistantAccessControlAccessoryUUIDs];

    delegate = [(HMDUserDataController *)self delegate];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v68 objects:v78 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v69;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v69 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v68 + 1) + 8 * i);
          if (([delegate userDataController:self isPersonalRequestCapableAccessoryID:v22] & 1) == 0)
          {
            v46 = objc_autoreleasePoolPush();
            selfCopy = self;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543618;
              v73 = v49;
              v74 = 2112;
              v75 = v22;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Unable to validate accessory %@, skipping", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v46);
            v50 = MEMORY[0x277CCA9B8];
            v51 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2025];
            v52 = [v50 hmErrorWithCode:2 description:@"Could not validate accessory" reason:@"Need all newly added accessories to be valid" suggestion:0 underlyingError:v51];
            completionCopy[2](completionCopy, v52);

            updatedCopy = v61;
            goto LABEL_22;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v68 objects:v78 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    assistantAccessControlAccessoryUUIDs2 = [(HMDUserDataController *)self assistantAccessControlAccessoryUUIDs];
    updatedCopy = v61;
    v24 = [MEMORY[0x277CBEB98] setWithArray:v61];
    if ([assistantAccessControlAccessoryUUIDs2 isEqualToSet:v24] && -[HMDUserDataController assistantAccessControlActivityNotificationsEnabledForPersonalRequests](self, "assistantAccessControlActivityNotificationsEnabledForPersonalRequests") == v60)
    {
      assistantAccessControlRequiresAuthenticationForSecureRequests = [(HMDUserDataController *)self assistantAccessControlRequiresAuthenticationForSecureRequests];

      if (assistantAccessControlRequiresAuthenticationForSecureRequests == v59)
      {
        v55 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v57 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = HMFGetLogIdentifier();
          *buf = 138543362;
          v73 = v58;
          _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_INFO, "%{public}@Nothing to modify.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v55);
        completionCopy[2](completionCopy, 0);
        goto LABEL_22;
      }
    }

    else
    {
    }

    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      v29 = [MEMORY[0x277CCABB0] numberWithBool:v60];
      *buf = 138543874;
      v73 = v28;
      v74 = 2112;
      v75 = v61;
      v76 = 2112;
      v77 = v29;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Updating user assistant access control accessories: %@, activity notifications enabled for personal requests: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    v30 = [HMDAssistantAccessControlModelV2 alloc];
    assistantAccessControlModelUUID = [(HMDUserDataController *)selfCopy3 assistantAccessControlModelUUID];
    userUUID = [(HMDUserDataController *)selfCopy3 userUUID];
    v33 = [(HMBModel *)v30 initWithModelID:assistantAccessControlModelUUID parentModelID:userUUID];

    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __173__HMDUserDataController_handleAssistantAccessControlAccessoryUUIDsUpdated_requireAuthenticationForSecureRequests_activityNotificationsEnabledForPersonalRequests_completion___block_invoke;
    v65[3] = &unk_27972E788;
    v34 = delegate;
    v66 = v34;
    v67 = selfCopy3;
    v35 = [v61 na_filter:v65];
    [(HMDAssistantAccessControlModelV2 *)v33 setAccessoryUUIDs:v35];

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __173__HMDUserDataController_handleAssistantAccessControlAccessoryUUIDsUpdated_requireAuthenticationForSecureRequests_activityNotificationsEnabledForPersonalRequests_completion___block_invoke_2;
    v62[3] = &unk_27972E788;
    updatedCopy = v61;
    v36 = v34;
    v63 = v36;
    v64 = selfCopy3;
    v37 = [v61 na_filter:v62];
    [(HMDAssistantAccessControlModelV2 *)v33 setSiriEndpointAccessoryUUIDs:v37];

    v38 = [MEMORY[0x277CCABB0] numberWithBool:v60];
    [(HMDAssistantAccessControlModelV2 *)v33 setActivityNotificationsEnabledForPersonalRequests:v38];

    v39 = [MEMORY[0x277CCABB0] numberWithBool:v59];
    [(HMDAssistantAccessControlModelV2 *)v33 setRequiresAuthenticationForSecureRequests:v39];

    v40 = [v36 sharedZoneControllerForUserDataController:selfCopy3];
    v41 = [[HMDSettingTransaction alloc] initWithTransactionLabel:@"Update user assistant access control"];
    [(HMDSettingTransaction *)v41 addModelToBeUpdated:v33];
    [v40 runTransaction:v41 waitForCloudPush:0 completion:completionCopy];

LABEL_22:
    goto LABEL_23;
  }

  v42 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543362;
    v73 = v45;
    _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Not initialized yet", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
  assistantAccessControlAccessoryUUIDs = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Not ready" reason:@"Initialization is not complete" suggestion:0];
  completionCopy[2](completionCopy, assistantAccessControlAccessoryUUIDs);
LABEL_23:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)handleStartForZoneController:(id)controller
{
  controllerCopy = controller;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  delegate = [(HMDUserDataController *)self delegate];
  if (controllerCopy)
  {
    v6 = [delegate sharedZoneControllerForUserDataController:self];

    if (v6 == controllerCopy)
    {
      [(HMDUserDataController *)self _startupSharedZone];
    }

    else
    {
      v7 = [delegate privateZoneControllerForUserDataController:self];

      if (v7 == controllerCopy)
      {
        [(HMDUserDataController *)self _startupPrivateZone];
      }
    }
  }
}

- (void)_startupPrivateZone
{
  v31 = *MEMORY[0x277D85DE8];
  delegate = [(HMDUserDataController *)self delegate];
  v4 = [delegate privateZoneControllerForUserDataController:self];

  v26 = 0;
  v5 = [v4 loadPrivateUserDataModelWithError:&v26];
  v6 = v26;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Loaded user data model from local zone.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    loadUserSettings = [v4 loadUserSettings];
    privateSettingsController = [(HMDUserDataController *)selfCopy privateSettingsController];
    [privateSettingsController loadWithModels:loadUserSettings];

    v13 = [[HMDSettingTransaction alloc] initWithTransactionLabel:@"Private user setting model migration"];
    privateSettingsController2 = [(HMDUserDataController *)selfCopy privateSettingsController];
    v25 = v6;
    v15 = [privateSettingsController2 migrateSettingsTransactionWithTransaction:v13 error:&v25];
    v16 = v25;

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v20;
        v29 = 2112;
        v30 = v16;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Error migrating user data models in private zone %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      [(HMDUserDataController *)v18 _startPrivateZoneFirstLoadTimer];
    }

    else
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __44__HMDUserDataController__startupPrivateZone__block_invoke;
      v22[3] = &unk_279734D88;
      v22[4] = selfCopy;
      v23 = v4;
      v24 = v5;
      [v23 runTransaction:v13 waitForCloudPush:1 completion:v22];
    }
  }

  else
  {
    [(HMDUserDataController *)self performFirstRunOperationsOnPrivateZoneController:v4];
    v16 = v6;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __44__HMDUserDataController__startupPrivateZone__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error migrating user data models in private zone %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _startPrivateZoneFirstLoadTimer];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully migrated models for private zone.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) initializePrivateZoneController:*(a1 + 40) userDataModel:*(a1 + 48)];
    [*(a1 + 32) _invalidatePrivateZoneFirstLoadTimer];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startupSharedZone
{
  v36 = *MEMORY[0x277D85DE8];
  delegate = [(HMDUserDataController *)self delegate];
  v4 = [delegate sharedZoneControllerForUserDataController:self];

  v31 = 0;
  v5 = [v4 loadSharedUserDataModelWithError:&v31];
  v6 = v31;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Loaded user data model from local zone.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    loadUserSettings = [v4 loadUserSettings];
    if ([(HMDUserDataController *)selfCopy isCurrentUser])
    {
      sharedSettingsController = [(HMDUserDataController *)selfCopy sharedSettingsController];
      [sharedSettingsController loadWithModels:loadUserSettings];

      v13 = [[HMDSettingTransaction alloc] initWithTransactionLabel:@"Migration"];
      sharedSettingsController2 = [(HMDUserDataController *)selfCopy sharedSettingsController];
      v30 = v6;
      v15 = [sharedSettingsController2 migrateSettingsTransactionWithTransaction:v13 error:&v30];
      v16 = v30;

      v17 = [(HMDUserDataController *)selfCopy _migrateUserListeningHistoryUpdateControlWithUserCurrentDataModel:v5 transaction:v13 settingModels:loadUserSettings];
      [(HMDUserDataController *)selfCopy _migrateUserSupportsAutomaticHH2MigrationUserCurrentDataModel:v5 transaction:v13];
      if (v16)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = selfCopy;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543618;
          v33 = v21;
          v34 = 2112;
          v35 = v16;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Error migrating user data models in shared zone %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        [(HMDUserDataController *)v19 _startSharedZoneFirstLoadTimer];
      }

      else
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __43__HMDUserDataController__startupSharedZone__block_invoke;
        v27[3] = &unk_279734D88;
        v27[4] = selfCopy;
        v28 = 0;
        v29 = v4;
        [v29 runTransaction:v13 waitForCloudPush:1 completion:v27];
      }

      v6 = v16;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@We are not current user, no migration should happen on a non-current user zone", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      [(HMDUserDataController *)v23 initializeSharedZoneController:v4 userDataModel:v5];
      [(HMDUserDataController *)v23 _invalidateSharedZoneFirstLoadTimer];
    }
  }

  else
  {
    [(HMDUserDataController *)self performFirstRunOperationsOnSharedZoneController:v4];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __43__HMDUserDataController__startupSharedZone__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error migrating user data models in shared zone %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _startSharedZoneFirstLoadTimer];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully migrated models for shared zone.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v11 = [*(a1 + 48) loadSharedUserDataModelWithError:0];
    [*(a1 + 32) initializeSharedZoneController:*(a1 + 48) userDataModel:v11];
    [*(a1 + 32) _invalidateSharedZoneFirstLoadTimer];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_invalidatePrivateZoneFirstLoadTimer
{
  privateZoneFirstLoadTimer = [(HMDUserDataController *)self privateZoneFirstLoadTimer];
  [privateZoneFirstLoadTimer cancel];

  [(HMDUserDataController *)self setPrivateZoneFirstLoadTimer:0];
}

- (void)_startPrivateZoneFirstLoadTimer
{
  v19 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  privateZoneFirstLoadTimer = [(HMDUserDataController *)self privateZoneFirstLoadTimer];

  if (!privateZoneFirstLoadTimer)
  {
    timerCreator = [(HMDUserDataController *)self timerCreator];
    createExponentialBackoffTimerForZoneFetch = [timerCreator createExponentialBackoffTimerForZoneFetch];
    [(HMDUserDataController *)self setPrivateZoneFirstLoadTimer:createExponentialBackoffTimerForZoneFetch];

    privateZoneFirstLoadTimer2 = [(HMDUserDataController *)self privateZoneFirstLoadTimer];
    [privateZoneFirstLoadTimer2 setDelegate:self];

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      privateZoneFirstLoadTimer3 = [(HMDUserDataController *)selfCopy privateZoneFirstLoadTimer];
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = privateZoneFirstLoadTimer3;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting timer to perform first run operations on shared zone. %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    privateZoneFirstLoadTimer4 = [(HMDUserDataController *)selfCopy privateZoneFirstLoadTimer];
    [privateZoneFirstLoadTimer4 resume];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)performFirstRunOperationsOnPrivateZoneController:(id)controller
{
  v41 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v40 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Creating user data model for private user zone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = objc_autoreleasePoolPush();
  v11 = selfCopy;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v40 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Configuring and making private settings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  privateSettingsController = [(HMDUserDataController *)v11 privateSettingsController];
  modelsToMakeSettings = [privateSettingsController modelsToMakeSettings];

  v16 = [HMDPrivateUserDataModel alloc];
  userUUID = [(HMDUserDataController *)v11 userUUID];
  homeUUID = [(HMDUserDataController *)v11 homeUUID];
  v19 = [(HMBModel *)v16 initWithModelID:userUUID parentModelID:homeUUID];

  userUUID2 = [(HMDUserDataController *)v11 userUUID];
  v21 = __rootSettingUUIDInSettingModels(modelsToMakeSettings, userUUID2);
  [(HMDPrivateUserDataModel *)v19 setSettingsRootUUID:v21];

  v22 = [[HMDSettingTransaction alloc] initForInitialCreationWithTransactionLabel:@"Creating Private User Data"];
  [v22 addModelToBeUpdated:v19];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = modelsToMakeSettings;
  v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v35;
    do
    {
      v27 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [v22 addModelToBeUpdated:*(*(&v34 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v25);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __74__HMDUserDataController_performFirstRunOperationsOnPrivateZoneController___block_invoke;
  v31[3] = &unk_279734D88;
  v31[4] = v11;
  v32 = controllerCopy;
  v33 = v19;
  v28 = v19;
  v29 = controllerCopy;
  [v29 runTransaction:v22 waitForCloudPush:1 completion:v31];

  v30 = *MEMORY[0x277D85DE8];
}

void __74__HMDUserDataController_performFirstRunOperationsOnPrivateZoneController___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error creating user data models in private zone %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _startPrivateZoneFirstLoadTimer];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully created and pushed models for private zone.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) initializePrivateZoneController:*(a1 + 40) userDataModel:*(a1 + 48)];
    [*(a1 + 32) _invalidatePrivateZoneFirstLoadTimer];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateSharedZoneFirstLoadTimer
{
  sharedZoneFirstLoadTimer = [(HMDUserDataController *)self sharedZoneFirstLoadTimer];
  [sharedZoneFirstLoadTimer cancel];

  [(HMDUserDataController *)self setSharedZoneFirstLoadTimer:0];
}

- (void)_startSharedZoneFirstLoadTimer
{
  v19 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  sharedZoneFirstLoadTimer = [(HMDUserDataController *)self sharedZoneFirstLoadTimer];

  if (!sharedZoneFirstLoadTimer)
  {
    timerCreator = [(HMDUserDataController *)self timerCreator];
    createExponentialBackoffTimerForZoneFetch = [timerCreator createExponentialBackoffTimerForZoneFetch];
    [(HMDUserDataController *)self setSharedZoneFirstLoadTimer:createExponentialBackoffTimerForZoneFetch];

    sharedZoneFirstLoadTimer2 = [(HMDUserDataController *)self sharedZoneFirstLoadTimer];
    [sharedZoneFirstLoadTimer2 setDelegate:self];

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      sharedZoneFirstLoadTimer3 = [(HMDUserDataController *)selfCopy sharedZoneFirstLoadTimer];
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = sharedZoneFirstLoadTimer3;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting timer to perform first run operations on shared zone. %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    sharedZoneFirstLoadTimer4 = [(HMDUserDataController *)selfCopy sharedZoneFirstLoadTimer];
    [sharedZoneFirstLoadTimer4 resume];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)performFirstRunOperationsOnSharedZoneController:(id)controller
{
  v69 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v68 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating user data model for shared user zone", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [[HMDSettingTransaction alloc] initForInitialCreationWithTransactionLabel:@"Creating Shared User Data"];
  v10 = [HMDAssistantAccessControlModelV2 alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  userUUID = [(HMDUserDataController *)selfCopy userUUID];
  v13 = [(HMBModel *)v10 initWithModelID:uUID parentModelID:userUUID];

  v14 = MEMORY[0x277CBEBF8];
  [(HMDAssistantAccessControlModelV2 *)v13 setAccessoryUUIDs:MEMORY[0x277CBEBF8]];
  [(HMDAssistantAccessControlModelV2 *)v13 setSiriEndpointAccessoryUUIDs:v14];
  v15 = [HMDMediaContentProfileAccessControlModel alloc];
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  userUUID2 = [(HMDUserDataController *)selfCopy userUUID];
  v18 = [(HMBModel *)v15 initWithModelID:uUID2 parentModelID:userUUID2];

  [(HMDMediaContentProfileAccessControlModel *)v18 setAccessories:v14];
  v19 = [HMDUserSupportsAutomaticHH2MigrationModel alloc];
  uUID3 = [MEMORY[0x277CCAD78] UUID];
  userUUID3 = [(HMDUserDataController *)selfCopy userUUID];
  v22 = [(HMBModel *)v19 initWithModelID:uUID3 parentModelID:userUUID3];

  v23 = MEMORY[0x277CBEC28];
  [(HMDUserSupportsAutomaticHH2MigrationModel *)v22 setSupportsAutomaticHH2Migration:MEMORY[0x277CBEC28]];
  [(HMDUserSupportsAutomaticHH2MigrationModel *)v22 setSupportsHH2MigrationByOwnerAuto:v23];
  v24 = objc_autoreleasePoolPush();
  v25 = selfCopy;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v68 = v27;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Configuring and making shared settings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
  sharedSettingsController = [(HMDUserDataController *)v25 sharedSettingsController];
  modelsToMakeSettings = [sharedSettingsController modelsToMakeSettings];

  v30 = [HMDSharedUserDataModel alloc];
  userUUID4 = [(HMDUserDataController *)v25 userUUID];
  homeUUID = [(HMDUserDataController *)v25 homeUUID];
  v33 = [(HMBModel *)v30 initWithModelID:userUUID4 parentModelID:homeUUID];

  hmbModelID = [(HMBModel *)v13 hmbModelID];
  [(HMDSharedUserDataModel *)v33 setAssistantAccessControlModelUUID:hmbModelID];

  hmbModelID2 = [(HMBModel *)v18 hmbModelID];
  [(HMDSharedUserDataModel *)v33 setMediaContentProfileAccessControlModelUUID:hmbModelID2];

  hmbModelID3 = [(HMBModel *)v22 hmbModelID];
  [(HMDSharedUserDataModel *)v33 setSupportsAutomaticHH2MigrationModelUUID:hmbModelID3];

  userUUID5 = [(HMDUserDataController *)v25 userUUID];
  v38 = __rootSettingUUIDInSettingModels(modelsToMakeSettings, userUUID5);
  [(HMDSharedUserDataModel *)v33 setSettingsRootUUID:v38];

  [v9 addModelToBeUpdated:v33];
  v56 = v13;
  [v9 addModelToBeUpdated:v13];
  v55 = v18;
  [v9 addModelToBeUpdated:v18];
  v39 = [HMDUserListeningHistoryUpdateControlModel alloc];
  uUID4 = [MEMORY[0x277CCAD78] UUID];
  userUUID6 = [(HMDUserDataController *)v25 userUUID];
  v42 = [(HMBModel *)v39 initWithModelID:uUID4 parentModelID:userUUID6];

  dataSource = [(HMDUserDataController *)v25 dataSource];
  allAccessoryUUID = [dataSource allAccessoryUUID];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __73__HMDUserDataController_performFirstRunOperationsOnSharedZoneController___block_invoke;
  v65[3] = &unk_2797358A0;
  v65[4] = v25;
  v45 = [allAccessoryUUID na_filter:v65];

  [(HMDUserListeningHistoryUpdateControlModel *)v42 setAccessories:v45];
  hmbModelID4 = [(HMBModel *)v42 hmbModelID];
  [(HMDSharedUserDataModel *)v33 setUserListeningHistoryUpdateControlModelUUID:hmbModelID4];

  [v9 addModelToBeUpdated:v42];
  [v9 addModelToBeUpdated:v22];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v47 = modelsToMakeSettings;
  v48 = [v47 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v62;
    do
    {
      v51 = 0;
      do
      {
        if (*v62 != v50)
        {
          objc_enumerationMutation(v47);
        }

        [v9 addModelToBeUpdated:*(*(&v61 + 1) + 8 * v51++)];
      }

      while (v49 != v51);
      v49 = [v47 countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v49);
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __73__HMDUserDataController_performFirstRunOperationsOnSharedZoneController___block_invoke_2;
  v58[3] = &unk_279734D88;
  v58[4] = v25;
  v59 = controllerCopy;
  v60 = v33;
  v52 = v33;
  v53 = controllerCopy;
  [v53 runTransaction:v9 waitForCloudPush:1 completion:v58];

  v54 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HMDUserDataController_performFirstRunOperationsOnSharedZoneController___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  v6 = [v5 userDataController:*(a1 + 32) isAccessoryUserListeningHistoryUpdateCapable:v4];

  return v6;
}

void __73__HMDUserDataController_performFirstRunOperationsOnSharedZoneController___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error creating user data models in shared zone %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _startSharedZoneFirstLoadTimer];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully created and pushed models for shared zone.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) initializeSharedZoneController:*(a1 + 40) userDataModel:*(a1 + 48)];
    [*(a1 + 32) _invalidateSharedZoneFirstLoadTimer];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)initializePrivateZoneController:(id)controller userDataModel:(id)model
{
  modelCopy = model;
  controllerCopy = controller;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  settingsRootUUID = [modelCopy settingsRootUUID];

  [(HMDUserDataController *)self setPrivateSettingsRootUUID:settingsRootUUID];
  loadUserSettings = [controllerCopy loadUserSettings];

  privateSettingsController = [(HMDUserDataController *)self privateSettingsController];
  [privateSettingsController loadWithModels:loadUserSettings];

  privateSettingsController2 = [(HMDUserDataController *)self privateSettingsController];
  [privateSettingsController2 configure];

  [(HMDUserDataController *)self eventDidInitializePrivateZone];
}

- (void)_migrateUserSupportsAutomaticHH2MigrationUserCurrentDataModel:(id)model transaction:(id)transaction
{
  v26 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  transactionCopy = transaction;
  supportsAutomaticHH2MigrationModelUUID = [modelCopy supportsAutomaticHH2MigrationModelUUID];

  if (supportsAutomaticHH2MigrationModelUUID)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@current data model has UUID, not migrating user supports automatic HH2 migration", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v13 = [HMDUserSupportsAutomaticHH2MigrationModel alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    userUUID = [(HMDUserDataController *)self userUUID];
    v16 = [(HMBModel *)v13 initWithModelID:uUID parentModelID:userUUID];

    v17 = [HMDSharedUserDataModel alloc];
    userUUID2 = [(HMDUserDataController *)self userUUID];
    homeUUID = [(HMDUserDataController *)self homeUUID];
    v20 = [(HMBModel *)v17 initWithModelID:userUUID2 parentModelID:homeUUID];

    hmbModelID = [(HMBModel *)v16 hmbModelID];
    [(HMDSharedUserDataModel *)v20 setSupportsAutomaticHH2MigrationModelUUID:hmbModelID];

    v22 = MEMORY[0x277CBEC28];
    [(HMDUserSupportsAutomaticHH2MigrationModel *)v16 setSupportsAutomaticHH2Migration:MEMORY[0x277CBEC28]];
    [(HMDUserSupportsAutomaticHH2MigrationModel *)v16 setSupportsHH2MigrationByOwnerAuto:v22];
    [transactionCopy addModel:v16];
    [transactionCopy addModel:v20];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_keyPathToModelFromKeyPath:(id)path models:(id)models
{
  v5 = MEMORY[0x277CBEB38];
  modelsCopy = models;
  pathCopy = path;
  dictionary = [v5 dictionary];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__HMDUserDataController__keyPathToModelFromKeyPath_models___block_invoke;
  v21[3] = &unk_27972E738;
  v9 = dictionary;
  v22 = v9;
  [modelsCopy na_each:v21];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__HMDUserDataController__keyPathToModelFromKeyPath_models___block_invoke_2;
  v18[3] = &unk_27972E760;
  v19 = v9;
  v20 = dictionary2;
  v11 = dictionary2;
  v12 = v9;
  [v12 na_each:v18];
  v13 = [pathCopy stringByAppendingString:@"."];

  v14 = [v11 objectForKeyedSubscript:v13];
  if ([v14 conformsToProtocol:&unk_28668A8B0])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

void __59__HMDUserDataController__keyPathToModelFromKeyPath_models___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 hmbModelID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __59__HMDUserDataController__keyPathToModelFromKeyPath_models___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = v4;
  v19 = v6;
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = [v7 hmbModelID];
      if (!v8)
      {
        goto LABEL_8;
      }

      v9 = v8;
      v10 = *(a1 + 32);
      v11 = [v7 hmbModelID];
      v12 = [v10 objectForKeyedSubscript:v11];

      if (!v12)
      {
LABEL_8:
        v15 = v5;
        if (v5)
        {
          goto LABEL_7;
        }

        goto LABEL_9;
      }

      v13 = MEMORY[0x277CCAB68];
      v14 = [v7 nameForKeyPath];
      v15 = [v13 stringWithFormat:@"%@.%@", v14, v5];

      v16 = *(a1 + 32);
      v17 = [v7 hmbParentModelID];
      v18 = [v16 objectForKeyedSubscript:v17];

      v7 = v18;
      v5 = v15;
    }

    while (v18);
    if (v15)
    {
LABEL_7:
      [*(a1 + 40) setObject:v19 forKeyedSubscript:v15];
      v5 = v15;
      goto LABEL_11;
    }

LABEL_9:
    v5 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
}

- (BOOL)_userListeningHistoryValueFromModels:(id)models
{
  v20 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  v5 = [(HMDUserDataController *)self _keyPathToModelFromKeyPath:@"root.music.playbackInfluencesForYou" models:modelsCopy];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@setting model =%@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    numberValue = [v5 numberValue];
    bOOLValue = [numberValue BOOLValue];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@no setting model for ULH", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    bOOLValue = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (id)_migrateUserListeningHistoryUpdateControlWithUserCurrentDataModel:(id)model transaction:(id)transaction settingModels:(id)models
{
  v47 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  transactionCopy = transaction;
  modelsCopy = models;
  userListeningHistoryUpdateControlModelUUID = [modelCopy userListeningHistoryUpdateControlModelUUID];

  if (userListeningHistoryUpdateControlModelUUID)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@current data model has UUID, not migrating ULH", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v16 = [HMDUserListeningHistoryUpdateControlModel alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    userUUID = [(HMDUserDataController *)self userUUID];
    v19 = [(HMBModel *)v16 initWithModelID:uUID parentModelID:userUUID];

    v20 = [HMDSharedUserDataModel alloc];
    userUUID2 = [(HMDUserDataController *)self userUUID];
    homeUUID = [(HMDUserDataController *)self homeUUID];
    v23 = [(HMBModel *)v20 initWithModelID:userUUID2 parentModelID:homeUUID];

    v24 = [modelsCopy na_map:&__block_literal_global_143604];
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v28;
      v45 = 2112;
      v46 = v24;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Filtered Setting MOdels: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [(HMDUserDataController *)selfCopy2 _userListeningHistoryValueFromModels:v24];
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy2;
    v32 = HMFGetOSLogHandle();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
    if (v29)
    {
      if (v33)
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v34;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@ULH was true for the user, migrating accessories", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      dataSource = [(HMDUserDataController *)v31 dataSource];
      allAccessoryUUID = [dataSource allAccessoryUUID];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __117__HMDUserDataController__migrateUserListeningHistoryUpdateControlWithUserCurrentDataModel_transaction_settingModels___block_invoke_70;
      v42[3] = &unk_2797358A0;
      v42[4] = v31;
      v37 = [allAccessoryUUID na_filter:v42];

      [(HMDUserListeningHistoryUpdateControlModel *)v19 setAccessories:v37];
    }

    else
    {
      if (v33)
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v38;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@ULH was False for the user, NOT migrating accessories", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      [(HMDUserListeningHistoryUpdateControlModel *)v19 setAccessories:MEMORY[0x277CBEBF8]];
    }

    hmbModelID = [(HMBModel *)v19 hmbModelID];
    [(HMDSharedUserDataModel *)v23 setUserListeningHistoryUpdateControlModelUUID:hmbModelID];

    [transactionCopy addModel:v19];
    [transactionCopy addModel:v23];
  }

  v40 = *MEMORY[0x277D85DE8];

  return transactionCopy;
}

uint64_t __117__HMDUserDataController__migrateUserListeningHistoryUpdateControlWithUserCurrentDataModel_transaction_settingModels___block_invoke_70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  v6 = [v5 userDataController:*(a1 + 32) isAccessoryUserListeningHistoryUpdateCapable:v4];

  return v6;
}

void *__117__HMDUserDataController__migrateUserListeningHistoryUpdateControlWithUserCurrentDataModel_transaction_settingModels___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_286642168])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)initializeSharedZoneController:(id)controller userDataModel:(id)model
{
  v115 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  modelCopy = model;
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  assistantAccessControlModelUUID = [modelCopy assistantAccessControlModelUUID];
  [(HMDUserDataController *)self setAssistantAccessControlModelUUID:assistantAccessControlModelUUID];

  mediaContentProfileAccessControlModelUUID = [modelCopy mediaContentProfileAccessControlModelUUID];
  [(HMDUserDataController *)self setMediaContentProfileAccessControlModelUUID:mediaContentProfileAccessControlModelUUID];

  userUUID = [(HMDUserDataController *)self userUUID];
  [controllerCopy registerForSharedUserDataModelUpdates:self modelID:userUUID];

  userListeningHistoryUpdateControlModelUUID = [modelCopy userListeningHistoryUpdateControlModelUUID];
  [(HMDUserDataController *)self setUserListeningHistoryUpdateControlModelUUID:userListeningHistoryUpdateControlModelUUID];

  supportsAutomaticHH2MigrationModelUUID = [modelCopy supportsAutomaticHH2MigrationModelUUID];
  [(HMDUserDataController *)self setSupportsAutomaticHH2MigrationModelUUID:supportsAutomaticHH2MigrationModelUUID];

  settingsRootUUID = [modelCopy settingsRootUUID];
  [(HMDUserDataController *)self setSharedSettingsRootUUID:settingsRootUUID];

  assistantAccessControlModelUUID2 = [(HMDUserDataController *)self assistantAccessControlModelUUID];
  [controllerCopy registerForAssistantAccessControlModelUpdates:self modelID:assistantAccessControlModelUUID2];

  mediaContentProfileAccessControlModelUUID2 = [(HMDUserDataController *)self mediaContentProfileAccessControlModelUUID];
  [controllerCopy registerForMediaContentAccessControlModelUpdates:self modelID:mediaContentProfileAccessControlModelUUID2];

  userListeningHistoryUpdateControlModelUUID2 = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelUUID];
  [controllerCopy registerForUserListeningHistoryUpdateControlModelUpdates:self modelID:userListeningHistoryUpdateControlModelUUID2];

  supportsAutomaticHH2MigrationModelUUID2 = [(HMDUserDataController *)self supportsAutomaticHH2MigrationModelUUID];
  [controllerCopy registerForUserSupportsAutomaticHH2MigrationModelUpdates:self modelID:supportsAutomaticHH2MigrationModelUUID2];

  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    assistantAccessControlModelUUID3 = [(HMDUserDataController *)selfCopy assistantAccessControlModelUUID];
    *buf = 138543618;
    v108 = v22;
    v109 = 2112;
    v110 = assistantAccessControlModelUUID3;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Loading assistant access control model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  assistantAccessControlModelUUID4 = [(HMDUserDataController *)selfCopy assistantAccessControlModelUUID];
  v106 = 0;
  v25 = [controllerCopy loadAssistantAccessControlModelWithModelID:assistantAccessControlModelUUID4 error:&v106];
  v26 = v106;

  v27 = objc_autoreleasePoolPush();
  v28 = selfCopy;
  v29 = HMFGetOSLogHandle();
  v30 = v29;
  v31 = 0x277CBE000;
  if (v25)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      requiresAuthenticationForSecureRequests = [v25 requiresAuthenticationForSecureRequests];
      [v25 activityNotificationsEnabledForPersonalRequests];
      v102 = controllerCopy;
      v34 = v26;
      v36 = v35 = modelCopy;
      accessoryUUIDs = [v25 accessoryUUIDs];
      *buf = 138544130;
      v108 = v32;
      v109 = 2112;
      v110 = requiresAuthenticationForSecureRequests;
      v111 = 2112;
      v112 = v36;
      v113 = 2112;
      v114 = accessoryUUIDs;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Loaded assistant access control requires auth: %@, activity notifications enabled for personal requests: %@, accessories: %@", buf, 0x2Au);

      modelCopy = v35;
      v26 = v34;
      controllerCopy = v102;

      v31 = 0x277CBE000uLL;
    }

    objc_autoreleasePoolPop(v27);
    v38 = [*(v31 + 2904) set];
    accessoryUUIDs2 = [v25 accessoryUUIDs];
    [v38 na_safeAddObjectsFromArray:accessoryUUIDs2];

    siriEndpointAccessoryUUIDs = [v25 siriEndpointAccessoryUUIDs];
    [v38 na_safeAddObjectsFromArray:siriEndpointAccessoryUUIDs];

    [(HMDUserDataController *)v28 setAssistantAccessControlAccessoryUUIDs:v38];
    requiresAuthenticationForSecureRequests2 = [v25 requiresAuthenticationForSecureRequests];
    -[HMDUserDataController setAssistantAccessControlRequiresAuthenticationForSecureRequests:](v28, "setAssistantAccessControlRequiresAuthenticationForSecureRequests:", [requiresAuthenticationForSecureRequests2 BOOLValue]);

    if ([v25 hmbPropertyWasSet:@"activityNotificationsEnabledForPersonalRequests"])
    {
      activityNotificationsEnabledForPersonalRequests = [v25 activityNotificationsEnabledForPersonalRequests];
      -[HMDUserDataController setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:](v28, "setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:", [activityNotificationsEnabledForPersonalRequests BOOLValue]);
    }

    else
    {
      [(HMDUserDataController *)v28 setAssistantAccessControlActivityNotificationsEnabledForPersonalRequests:1];
    }
  }

  else
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v108 = v43;
      v109 = 2112;
      v110 = v26;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to load assistant access control %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
  }

  v44 = objc_autoreleasePoolPush();
  v45 = v28;
  v46 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    v47 = HMFGetLogIdentifier();
    mediaContentProfileAccessControlModelUUID3 = [(HMDUserDataController *)v45 mediaContentProfileAccessControlModelUUID];
    *buf = 138543618;
    v108 = v47;
    v109 = 2112;
    v110 = mediaContentProfileAccessControlModelUUID3;
    _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Loading media content profile access control model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v44);
  mediaContentProfileAccessControlModelUUID4 = [(HMDUserDataController *)v45 mediaContentProfileAccessControlModelUUID];
  v105 = 0;
  v50 = [controllerCopy loadMediaContentAccessControlModelWithModelID:mediaContentProfileAccessControlModelUUID4 error:&v105];
  v51 = v105;

  v52 = objc_autoreleasePoolPush();
  v53 = v45;
  v54 = HMFGetOSLogHandle();
  v55 = v54;
  if (v50)
  {
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v56 = HMFGetLogIdentifier();
      accessories = [v50 accessories];
      *buf = 138543618;
      v108 = v56;
      v109 = 2112;
      v110 = accessories;
      _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Loaded media content profile access control accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v52);
    v58 = *(v31 + 2904);
    accessories2 = [v50 accessories];
    v60 = [v58 setWithArray:accessories2];
    [(HMDUserDataController *)v53 setMediaContentProfileAccessControlAccessories:v60];
  }

  else
  {
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v61 = HMFGetLogIdentifier();
      *buf = 138543618;
      v108 = v61;
      v109 = 2112;
      v110 = v51;
      _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_ERROR, "%{public}@Unable to load media content profile accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v52);
  }

  v62 = objc_autoreleasePoolPush();
  v63 = v53;
  v64 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v65 = HMFGetLogIdentifier();
    userListeningHistoryUpdateControlModelUUID3 = [(HMDUserDataController *)v63 userListeningHistoryUpdateControlModelUUID];
    *buf = 138543618;
    v108 = v65;
    v109 = 2112;
    v110 = userListeningHistoryUpdateControlModelUUID3;
    _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_INFO, "%{public}@Loading user listening history update model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v62);
  userListeningHistoryUpdateControlModelUUID4 = [(HMDUserDataController *)v63 userListeningHistoryUpdateControlModelUUID];
  v104 = 0;
  v68 = [controllerCopy loadUserListeningHistoryUpdateControlModelWithModelID:userListeningHistoryUpdateControlModelUUID4 error:&v104];
  v69 = v104;

  v70 = objc_autoreleasePoolPush();
  v71 = v63;
  v72 = HMFGetOSLogHandle();
  v73 = v72;
  if (v68)
  {
    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      v74 = HMFGetLogIdentifier();
      accessories3 = [v68 accessories];
      *buf = 138543618;
      v108 = v74;
      v109 = 2112;
      v110 = accessories3;
      _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Loaded user listening history update accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v70);
    v76 = *(v31 + 2904);
    accessories4 = [v68 accessories];
    v78 = [v76 setWithArray:accessories4];
    [(HMDUserDataController *)v71 setUserListeningHistoryUpdateControlModelAccessories:v78];
  }

  else
  {
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v79 = HMFGetLogIdentifier();
      *buf = 138543618;
      v108 = v79;
      v109 = 2112;
      v110 = v69;
      _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_ERROR, "%{public}@Unable to load update listening history accessories %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v70);
  }

  v80 = objc_autoreleasePoolPush();
  v81 = v71;
  v82 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
  {
    v83 = HMFGetLogIdentifier();
    supportsAutomaticHH2MigrationModelUUID3 = [(HMDUserDataController *)v81 supportsAutomaticHH2MigrationModelUUID];
    *buf = 138543618;
    v108 = v83;
    v109 = 2112;
    v110 = supportsAutomaticHH2MigrationModelUUID3;
    _os_log_impl(&dword_2531F8000, v82, OS_LOG_TYPE_INFO, "%{public}@Loading user supports automatic HH2 migration model %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v80);
  supportsAutomaticHH2MigrationModelUUID4 = [(HMDUserDataController *)v81 supportsAutomaticHH2MigrationModelUUID];
  v103 = 0;
  v86 = [controllerCopy loadUserSupportsAutomaticHH2MigrationModelWithModelID:supportsAutomaticHH2MigrationModelUUID4 error:&v103];
  v87 = v103;

  if (v86)
  {
    supportsAutomaticHH2Migration = [v86 supportsAutomaticHH2Migration];
    -[HMDUserDataController setSupportsHH2MigrationByOwnerManual:](v81, "setSupportsHH2MigrationByOwnerManual:", [supportsAutomaticHH2Migration BOOLValue]);

    supportsHH2MigrationByOwnerAuto = [v86 supportsHH2MigrationByOwnerAuto];
    -[HMDUserDataController setSupportsHH2MigrationByOwnerAuto:](v81, "setSupportsHH2MigrationByOwnerAuto:", [supportsHH2MigrationByOwnerAuto BOOLValue]);

    v90 = objc_autoreleasePoolPush();
    v91 = v81;
    v92 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
    {
      v93 = HMFGetLogIdentifier();
      [(HMDUserDataController *)v91 supportsHH2MigrationByOwnerManual];
      v94 = HMFBooleanToString();
      [(HMDUserDataController *)v91 supportsHH2MigrationByOwnerAuto];
      v95 = HMFBooleanToString();
      *buf = 138543874;
      v108 = v93;
      v109 = 2114;
      v110 = v94;
      v111 = 2114;
      v112 = v95;
      _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_INFO, "%{public}@Loaded user supports automatic HH2 migration model by owner manual = %{public}@, by owner auto = %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v90 = objc_autoreleasePoolPush();
    v96 = v81;
    v92 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v97 = HMFGetLogIdentifier();
      *buf = 138543618;
      v108 = v97;
      v109 = 2112;
      v110 = v87;
      _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_ERROR, "%{public}@Unable to load user supports automatic HH2 migration model %@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v90);
  loadUserSettings = [controllerCopy loadUserSettings];
  sharedSettingsController = [(HMDUserDataController *)v81 sharedSettingsController];
  [sharedSettingsController loadWithModels:loadUserSettings];

  sharedSettingsController2 = [(HMDUserDataController *)v81 sharedSettingsController];
  [sharedSettingsController2 configure];

  [(HMDUserDataController *)v81 eventDidInitializeSharedZone];
  v101 = *MEMORY[0x277D85DE8];
}

- (void)eventDidInitializeSharedZone
{
  v25 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  self->_isModifyingState = 1;
  state = [(HMDUserDataController *)self state];
  if (state > 1)
  {
    if (state != 2)
    {
      if (state != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }

    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Moving to initialized on initializing shared zone", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v14 = selfCopy;
    v15 = 1;
LABEL_16:
    [(HMDUserDataController *)v14 setState:v15];
    goto LABEL_17;
  }

  if (!state)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Moving to pending private on initializing shared zone", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = selfCopy2;
    v15 = 3;
    goto LABEL_16;
  }

  if (state != 1)
  {
    goto LABEL_17;
  }

LABEL_7:
  v5 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserDataController state](selfCopy3, "state")}];
    v21 = 138543618;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected from state on init shared zone event %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
LABEL_17:
  self->_isModifyingState = 0;
  v20 = *MEMORY[0x277D85DE8];
}

- (void)eventDidInitializePrivateZone
{
  v25 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  self->_isModifyingState = 1;
  state = [(HMDUserDataController *)self state];
  if (state - 1 < 2)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserDataController state](selfCopy, "state")}];
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpected from state on init private zone event %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (state == 3)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Moving to initialized on initializing private zone", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v9 = selfCopy2;
      v10 = 1;
      goto LABEL_13;
    }

    if (!state)
    {
      v5 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Moving to pending shared on initializing private zone", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      v9 = selfCopy3;
      v10 = 2;
LABEL_13:
      [(HMDUserDataController *)v9 setState:v10];
    }
  }

  self->_isModifyingState = 0;
  v20 = *MEMORY[0x277D85DE8];
}

- (void)setState:(unint64_t)state
{
  v21 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDUserDataController *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  os_unfair_lock_lock_with_options();
  if (self->_state == state)
  {
    v6 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMDUserDataControllerStateAsString(self->_state);
      v12 = HMDUserDataControllerStateAsString(state);
      v15 = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Moving state from %@ to %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    self->_state = state;
    os_unfair_lock_unlock(&self->_lock);
    if (state == 1)
    {
      notificationCenter = [(HMDUserDataController *)selfCopy notificationCenter];
      [notificationCenter postNotificationName:@"HMDUserDataControllerInitializedNotificationKey" object:selfCopy];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([(HMDUserDataController *)self isInitialized])
  {
    sharedSettingsController = [(HMDUserDataController *)self sharedSettingsController];
    [sharedSettingsController encodeWithCoder:coderCopy];

    privateSettingsController = [(HMDUserDataController *)self privateSettingsController];
    [privateSettingsController encodeWithCoder:coderCopy];

    [coderCopy encodeBool:self->_state == 1 forKey:*MEMORY[0x277CD0FA0]];
  }
}

- (NSArray)userListeningHistoryUpdateControlModelAccessoriesToEncode
{
  userListeningHistoryUpdateControlModelAccessories = [(HMDUserDataController *)self userListeningHistoryUpdateControlModelAccessories];
  allObjects = [userListeningHistoryUpdateControlModelAccessories allObjects];
  v4 = [allObjects copy];

  return v4;
}

- (NSArray)mediaContentProfileAccessControlAccessoriesToEncode
{
  mediaContentProfileAccessControlAccessories = [(HMDUserDataController *)self mediaContentProfileAccessControlAccessories];
  allObjects = [mediaContentProfileAccessControlAccessories allObjects];
  v4 = [allObjects copy];

  return v4;
}

- (NSArray)assistantAccessControlAccessoriesToEncode
{
  if ([(HMDUserDataController *)self isInitialized])
  {
    assistantAccessControlAccessoryUUIDs = [(HMDUserDataController *)self assistantAccessControlAccessoryUUIDs];
    allObjects = [assistantAccessControlAccessoryUUIDs allObjects];
    v5 = [allObjects copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)configure
{
  clientQueue = [(HMDUserDataController *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMDUserDataController_configure__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __34__HMDUserDataController_configure__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = [v4 sharedZoneControllerForUserDataController:*(a1 + 32)];
  [v2 start];

  v3 = [v4 privateZoneControllerForUserDataController:*(a1 + 32)];
  [v3 start];
}

- (HMDUserDataController)initWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController isCurrentUser:(BOOL)self0
{
  settingsControllerCopy = settingsController;
  controllerCopy = controller;
  iDCopy = iD;
  dCopy = d;
  queueCopy = queue;
  sourceCopy = source;
  delegateCopy = delegate;
  v24 = objc_opt_new();
  LOBYTE(v27) = user;
  v25 = [(HMDUserDataController *)self initWithDelegate:delegateCopy dataSource:sourceCopy queue:queueCopy userID:dCopy homeID:iDCopy sharedSettingsController:controllerCopy privateSettingsController:settingsControllerCopy timerCreator:v24 isCurrentUser:v27];

  return v25;
}

- (HMDUserDataController)initWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController timerCreator:(id)self0 isCurrentUser:(BOOL)self1
{
  obj = delegate;
  sourceCopy = source;
  queueCopy = queue;
  dCopy = d;
  iDCopy = iD;
  controllerCopy = controller;
  settingsControllerCopy = settingsController;
  creatorCopy = creator;
  v34.receiver = self;
  v34.super_class = HMDUserDataController;
  v20 = [(HMDUserDataController *)&v34 init];
  v21 = v20;
  if (v20)
  {
    v20->_state = 2 * (settingsControllerCopy == 0);
    v20->_isModifyingState = 0;
    objc_storeStrong(&v20->_clientQueue, queue);
    objc_storeWeak(&v21->_delegate, obj);
    objc_storeStrong(&v21->_timerCreator, creator);
    v22 = [MEMORY[0x277CBEB58] set];
    assistantAccessControlAccessoryUUIDs = v21->_assistantAccessControlAccessoryUUIDs;
    v21->_assistantAccessControlAccessoryUUIDs = v22;

    *&v21->_assistantAccessControlRequiresAuthenticationForSecureRequests = 256;
    v24 = [MEMORY[0x277CBEB58] set];
    mediaContentProfileAccessControlAccessories = v21->_mediaContentProfileAccessControlAccessories;
    v21->_mediaContentProfileAccessControlAccessories = v24;

    objc_storeStrong(&v21->_userUUID, d);
    objc_storeStrong(&v21->_homeUUID, iD);
    objc_storeStrong(&v21->_sharedSettingsController, controller);
    objc_storeStrong(&v21->_privateSettingsController, settingsController);
    objc_storeWeak(&v21->_dataSource, sourceCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    notificationCenter = v21->_notificationCenter;
    v21->_notificationCenter = defaultCenter;

    v21->_isCurrentUser = user;
  }

  return v21;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t99_143651 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t99_143651, &__block_literal_global_197_143652);
  }

  v3 = logCategory__hmf_once_v100_143653;

  return v3;
}

uint64_t __36__HMDUserDataController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v100_143653;
  logCategory__hmf_once_v100_143653 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end