@interface HMDSharedUserAccessorySettingsDataController
- (BOOL)assistantAccessControlActivityNotificationsEnabledForPersonalRequests;
- (HMDSharedUserAccessorySettingsDataController)initWithUserModelID:(id)d homeModelID:(id)iD privateStore:(id)store managedObjectContext:(id)context;
- (NSArray)assistantAccessControlAccessoriesToEncode;
- (NSArray)mediaContentProfileAccessControlAccessoriesToEncode;
- (NSArray)userListeningHistoryUpdateControlModelAccessoriesToEncode;
- (id)_fetchDataRootWithError:(id *)error;
- (void)_addMissingAccessorySettingsFromAccessoryModelIDs:(id)ds dataRoot:(id)root;
- (void)enableUserListeningHistoryForAccessory:(id)accessory;
- (void)handleAssistantAccessControlAccessoryUUIDsUpdated:(id)updated activityNotificationsEnabledForPersonalRequests:(BOOL)requests completion:(id)completion;
- (void)handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion;
- (void)handleRemovedAccessoryWithModelID:(id)d;
- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion;
@end

@implementation HMDSharedUserAccessorySettingsDataController

- (void)_addMissingAccessorySettingsFromAccessoryModelIDs:(id)ds dataRoot:(id)root
{
  v29 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  rootCopy = root;
  accessorySettings = [rootCopy accessorySettings];
  v9 = accessorySettings;
  if (accessorySettings)
  {
    v10 = accessorySettings;
  }

  else
  {
    v10 = [MEMORY[0x277CBEB98] set];
  }

  v11 = v10;

  v12 = [v11 na_map:&__block_literal_global_76_132297];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __107__HMDSharedUserAccessorySettingsDataController__addMissingAccessorySettingsFromAccessoryModelIDs_dataRoot___block_invoke_2;
  v26[3] = &unk_27868A1B0;
  v13 = v12;
  v27 = v13;
  v21 = dsCopy;
  v14 = [dsCopy na_filter:v26];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [MKFCKSharedUserAccessorySettings createWithHomeModelID:self->_homeModelID accessoryModelID:*(*(&v22 + 1) + 8 * i) persistentStore:self->_privateStore context:self->_moc];
        [v19 setRoot:rootCopy];
        [rootCopy addAccessorySettingsObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_fetchDataRootWithError:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  v5 = +[MKFCKSharedUserDataRoot fetchRequest];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", self->_homeModelID];
  [v5 setPredicate:v6];

  v39[0] = self->_privateStore;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  [v5 setAffectedStores:v7];

  v8 = [(HMDManagedObjectContext *)self->_moc executeFetchRequest:v5 error:error];
  v9 = v8;
  if (!v8)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      homeModelID = self->_homeModelID;
      privateStore = self->_privateStore;
      *buf = 138544130;
      v32 = v21;
      v33 = 2112;
      v34 = homeModelID;
      v35 = 2112;
      v36 = v5;
      v37 = 2112;
      v38 = privateStore;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@No shared data root found for home %@. It's nil. Request was %@. Store is %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
LABEL_10:
    firstObject = 0;
    goto LABEL_16;
  }

  if ([v8 hmf_isEmpty])
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = self->_homeModelID;
      v15 = self->_privateStore;
      *buf = 138544130;
      v32 = v13;
      v33 = 2112;
      v34 = v14;
      v35 = 2112;
      v36 = v5;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@No shared data root found for home %@. Request was %@. Store is %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v16 = +[HMDTTRManager sharedManager];
    [v16 requestRadarWithDisplayReason:@"detected issue related to HomeKit Shared User functionality" radarTitle:@"MKFCKSharedUserDataRoot missing during accessory settings fetch" componentName:@"HomeKit" componentVersion:@"Users+Invitations" componentID:938670];

    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      *error = firstObject = 0;
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if ([v9 count] >= 2)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = self->_homeModelID;
      *buf = 138543618;
      v32 = v27;
      v33 = 2112;
      v34 = v28;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@More than one shared data root with home modelID %@ is found, using the first one", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
  }

  firstObject = [v9 firstObject];
LABEL_16:

  v29 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)handleRemovedAccessoryWithModelID:(id)d
{
  dCopy = d;
  moc = self->_moc;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HMDSharedUserAccessorySettingsDataController_handleRemovedAccessoryWithModelID___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  [(HMDManagedObjectContext *)moc performBlock:v7];
}

void __82__HMDSharedUserAccessorySettingsDataController_handleRemovedAccessoryWithModelID___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v31 = 0;
  v3 = [v2 _fetchDataRootWithError:&v31];
  v4 = v31;
  if (v3)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [v3 accessorySettings];
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v11 = [v10 accessoryModelID];
          v12 = [v11 isEqual:*(a1 + 40)];

          if (v12)
          {
            [*(*(a1 + 32) + 32) deleteObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v27 objects:v38 count:16];
      }

      while (v7);
    }

    v13 = *(*(a1 + 32) + 32);
    v26 = v4;
    [v13 save:&v26];
    v14 = v26;

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = *(a1 + 40);
        *buf = 138543874;
        v33 = v18;
        v34 = 2112;
        v35 = v19;
        v36 = 2112;
        v37 = v14;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Deleting shared user accessory setting with modelID %@ failed with %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v4 = HMDSanitizeCoreDataError(v14);
    }

    else
    {
      v4 = 0;
    }

    [*(*(a1 + 32) + 32) reset];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = *(*(a1 + 32) + 16);
      *buf = 138543618;
      v33 = v23;
      v34 = 2112;
      v35 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@No shared data root for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    if (!v4)
    {
      v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)enableUserListeningHistoryForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  moc = self->_moc;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__HMDSharedUserAccessorySettingsDataController_enableUserListeningHistoryForAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  [(HMDManagedObjectContext *)moc performBlock:v7];
}

void __87__HMDSharedUserAccessorySettingsDataController_enableUserListeningHistoryForAccessory___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v35 = 0;
  v3 = [v2 _fetchDataRootWithError:&v35];
  v4 = v35;
  v5 = v4;
  if (!v3)
  {
    v6 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(*(a1 + 32) + 16);
      *buf = 138543618;
      v39 = v12;
      v40 = 2112;
      v41 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Enabling ULH failed with no shared data root for home %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  if (v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v9;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Enabling ULH for shared user failed with %@", buf, 0x16u);
    }

LABEL_9:
    objc_autoreleasePoolPop(v6);
    goto LABEL_24;
  }

  v14 = *(a1 + 32);
  v37 = *(a1 + 40);
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  [v14 _addMissingAccessorySettingsFromAccessoryModelIDs:v15 dataRoot:v3];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = [v3 accessorySettings];
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        v22 = *(a1 + 40);
        v23 = [v21 accessoryModelID];
        LODWORD(v22) = [v22 hmf_isEqualToUUID:v23];

        if (v22)
        {
          [v21 setListeningHistoryEnabled:1];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v18);
  }

  v24 = *(*(a1 + 32) + 32);
  v30 = 0;
  [v24 save:&v30];
  v5 = v30;
  if (v5)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v28;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Enabling ULH for shared user failed with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
  }

  [*(*(a1 + 32) + 32) reset];
LABEL_24:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  moc = self->_moc;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __120__HMDSharedUserAccessorySettingsDataController_handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs_completion___block_invoke;
  v11[3] = &unk_278689F98;
  v12 = dsCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = dsCopy;
  v10 = completionCopy;
  [(HMDManagedObjectContext *)moc performBlock:v11];
}

void __120__HMDSharedUserAccessorySettingsDataController_handleUserListeningHistoryUpdateControlUpdatedAccessoryUUIDs_completion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v35 = 0;
  v3 = [v2 _fetchDataRootWithError:&v35];
  v4 = v35;
  if (v3)
  {
    [*(a1 + 32) _addMissingAccessorySettingsFromAccessoryModelIDs:*(a1 + 40) dataRoot:v3];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = [v3 accessorySettings];
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          v11 = *(a1 + 40);
          v12 = [v10 accessoryModelID];
          v13 = [v11 containsObject:v12];

          [v10 setListeningHistoryEnabled:v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v7);
    }

    v14 = *(*(a1 + 32) + 32);
    v30 = v4;
    [v14 save:&v30];
    v15 = v30;

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v19;
        v39 = 2112;
        v40 = v15;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Saving updated user listening history access control failed with %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v4 = HMDSanitizeCoreDataError(v15);
    }

    else
    {
      v4 = 0;
    }

    [*(*(a1 + 32) + 32) reset];
    v27 = _Block_copy(*(a1 + 48));
    v26 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, v4);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = *(*(a1 + 32) + 16);
      *buf = 138543618;
      v38 = v23;
      v39 = 2112;
      v40 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@No shared data root for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = _Block_copy(*(a1 + 48));
    v26 = v25;
    if (v25)
    {
      if (v4)
      {
        (*(v25 + 2))(v25, v4);
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (v26)[2](v26, v29);

        v4 = 0;
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  moc = self->_moc;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __119__HMDSharedUserAccessorySettingsDataController_handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs_completion___block_invoke;
  v11[3] = &unk_278689F98;
  v12 = dsCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = dsCopy;
  v10 = completionCopy;
  [(HMDManagedObjectContext *)moc performBlock:v11];
}

void __119__HMDSharedUserAccessorySettingsDataController_handleMediaContentProfileAccessControlUpdatedAccessoryUUIDs_completion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v35 = 0;
  v3 = [v2 _fetchDataRootWithError:&v35];
  v4 = v35;
  if (v3)
  {
    [*(a1 + 32) _addMissingAccessorySettingsFromAccessoryModelIDs:*(a1 + 40) dataRoot:v3];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = [v3 accessorySettings];
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          v11 = *(a1 + 40);
          v12 = [v10 accessoryModelID];
          v13 = [v11 containsObject:v12];

          [v10 setMediaContentProfileEnabled:v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v7);
    }

    v14 = *(*(a1 + 32) + 32);
    v30 = v4;
    [v14 save:&v30];
    v15 = v30;

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v19;
        v39 = 2112;
        v40 = v15;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Saving updated media content profile access control failed with %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v4 = HMDSanitizeCoreDataError(v15);
    }

    else
    {
      v4 = 0;
    }

    [*(*(a1 + 32) + 32) reset];
    v27 = _Block_copy(*(a1 + 48));
    v26 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, v4);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = *(*(a1 + 32) + 16);
      *buf = 138543618;
      v38 = v23;
      v39 = 2112;
      v40 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@No shared data root for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = _Block_copy(*(a1 + 48));
    v26 = v25;
    if (v25)
    {
      if (v4)
      {
        (*(v25 + 2))(v25, v4);
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (v26)[2](v26, v29);

        v4 = 0;
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleAssistantAccessControlAccessoryUUIDsUpdated:(id)updated activityNotificationsEnabledForPersonalRequests:(BOOL)requests completion:(id)completion
{
  updatedCopy = updated;
  completionCopy = completion;
  moc = self->_moc;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __157__HMDSharedUserAccessorySettingsDataController_handleAssistantAccessControlAccessoryUUIDsUpdated_activityNotificationsEnabledForPersonalRequests_completion___block_invoke;
  v13[3] = &unk_278685C18;
  v14 = updatedCopy;
  v15 = completionCopy;
  requestsCopy = requests;
  v13[4] = self;
  v11 = updatedCopy;
  v12 = completionCopy;
  [(HMDManagedObjectContext *)moc performBlock:v13];
}

void __157__HMDSharedUserAccessorySettingsDataController_handleAssistantAccessControlAccessoryUUIDsUpdated_activityNotificationsEnabledForPersonalRequests_completion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v35 = 0;
  v3 = [v2 _fetchDataRootWithError:&v35];
  v4 = v35;
  if (v3)
  {
    [v3 setActivityNotificationsEnabledForPersonalRequests:*(a1 + 56)];
    [*(a1 + 32) _addMissingAccessorySettingsFromAccessoryModelIDs:*(a1 + 40) dataRoot:v3];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = [v3 accessorySettings];
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          v11 = *(a1 + 40);
          v12 = [v10 accessoryModelID];
          v13 = [v11 containsObject:v12];

          [v10 setPersonalRequestsEnabled:v13];
        }

        v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v7);
    }

    v14 = *(*(a1 + 32) + 32);
    v30 = v4;
    [v14 save:&v30];
    v15 = v30;

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v19;
        v39 = 2112;
        v40 = v15;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Saving personal requests access control failed with %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v4 = HMDSanitizeCoreDataError(v15);
    }

    else
    {
      v4 = 0;
    }

    [*(*(a1 + 32) + 32) reset];
    v27 = _Block_copy(*(a1 + 48));
    v26 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, v4);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = *(*(a1 + 32) + 16);
      *buf = 138543618;
      v38 = v23;
      v39 = 2112;
      v40 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@No shared data root for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v25 = _Block_copy(*(a1 + 48));
    v26 = v25;
    if (v25)
    {
      if (v4)
      {
        (*(v25 + 2))(v25, v4);
      }

      else
      {
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (v26)[2](v26, v29);

        v4 = 0;
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (NSArray)userListeningHistoryUpdateControlModelAccessoriesToEncode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__132266;
  v12 = __Block_byref_object_dispose__132267;
  v13 = 0;
  moc = self->_moc;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __105__HMDSharedUserAccessorySettingsDataController_userListeningHistoryUpdateControlModelAccessoriesToEncode__block_invoke;
  v7[3] = &unk_27868A688;
  v7[4] = self;
  v7[5] = &v8;
  [(HMDManagedObjectContext *)moc performBlockAndWait:v7];
  v3 = v9[5];
  if (v3)
  {
    array = v3;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v5 = array;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __105__HMDSharedUserAccessorySettingsDataController_userListeningHistoryUpdateControlModelAccessoriesToEncode__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v16 = 0;
  v3 = [v2 _fetchDataRootWithError:&v16];
  v4 = v16;
  if (v3)
  {
    v5 = [v3 accessorySettings];
    v6 = [v5 na_map:&__block_literal_global_64_132329];
    v7 = [v6 allObjects];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(*(a1 + 32) + 16);
      *buf = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@No shared data root for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if (!v4)
    {
      v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

id __105__HMDSharedUserAccessorySettingsDataController_userListeningHistoryUpdateControlModelAccessoriesToEncode__block_invoke_62(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 listeningHistoryEnabled])
  {
    v3 = [v2 accessoryModelID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)mediaContentProfileAccessControlAccessoriesToEncode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__132266;
  v12 = __Block_byref_object_dispose__132267;
  v13 = 0;
  moc = self->_moc;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99__HMDSharedUserAccessorySettingsDataController_mediaContentProfileAccessControlAccessoriesToEncode__block_invoke;
  v7[3] = &unk_27868A688;
  v7[4] = self;
  v7[5] = &v8;
  [(HMDManagedObjectContext *)moc performBlockAndWait:v7];
  v3 = v9[5];
  if (v3)
  {
    array = v3;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v5 = array;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __99__HMDSharedUserAccessorySettingsDataController_mediaContentProfileAccessControlAccessoriesToEncode__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v16 = 0;
  v3 = [v2 _fetchDataRootWithError:&v16];
  v4 = v16;
  if (v3)
  {
    v5 = [v3 accessorySettings];
    v6 = [v5 na_map:&__block_literal_global_61];
    v7 = [v6 allObjects];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(*(a1 + 32) + 16);
      *buf = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@No shared data root for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if (!v4)
    {
      v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

id __99__HMDSharedUserAccessorySettingsDataController_mediaContentProfileAccessControlAccessoriesToEncode__block_invoke_59(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 mediaContentProfileEnabled])
  {
    v3 = [v2 accessoryModelID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)assistantAccessControlAccessoriesToEncode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__132266;
  v12 = __Block_byref_object_dispose__132267;
  v13 = 0;
  moc = self->_moc;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__HMDSharedUserAccessorySettingsDataController_assistantAccessControlAccessoriesToEncode__block_invoke;
  v7[3] = &unk_27868A688;
  v7[4] = self;
  v7[5] = &v8;
  [(HMDManagedObjectContext *)moc performBlockAndWait:v7];
  v3 = v9[5];
  if (v3)
  {
    array = v3;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v5 = array;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __89__HMDSharedUserAccessorySettingsDataController_assistantAccessControlAccessoriesToEncode__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v16 = 0;
  v3 = [v2 _fetchDataRootWithError:&v16];
  v4 = v16;
  if (v3)
  {
    v5 = [v3 accessorySettings];
    v6 = [v5 na_map:&__block_literal_global_58_132333];
    v7 = [v6 allObjects];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(*(a1 + 32) + 16);
      *buf = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@No shared data root for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if (!v4)
    {
      v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

id __89__HMDSharedUserAccessorySettingsDataController_assistantAccessControlAccessoriesToEncode__block_invoke_55(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 personalRequestsEnabled])
  {
    v3 = [v2 accessoryModelID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)assistantAccessControlActivityNotificationsEnabledForPersonalRequests
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  moc = self->_moc;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __117__HMDSharedUserAccessorySettingsDataController_assistantAccessControlActivityNotificationsEnabledForPersonalRequests__block_invoke;
  v5[3] = &unk_27868A688;
  v5[4] = self;
  v5[5] = &v6;
  [(HMDManagedObjectContext *)moc performBlockAndWait:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __117__HMDSharedUserAccessorySettingsDataController_assistantAccessControlActivityNotificationsEnabledForPersonalRequests__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = [v2 _fetchDataRootWithError:&v11];
  v4 = v11;
  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 activityNotificationsEnabledForPersonalRequests];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(*(a1 + 32) + 16);
      *buf = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@No shared data root for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDSharedUserAccessorySettingsDataController)initWithUserModelID:(id)d homeModelID:(id)iD privateStore:(id)store managedObjectContext:(id)context
{
  dCopy = d;
  iDCopy = iD;
  storeCopy = store;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = HMDSharedUserAccessorySettingsDataController;
  v15 = [(HMDSharedUserAccessorySettingsDataController *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_userModelID, d);
    objc_storeStrong(&v16->_homeModelID, iD);
    objc_storeStrong(&v16->_privateStore, store);
    objc_storeStrong(&v16->_moc, context);
  }

  return v16;
}

@end