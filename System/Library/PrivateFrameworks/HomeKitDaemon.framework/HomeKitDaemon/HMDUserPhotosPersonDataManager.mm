@interface HMDUserPhotosPersonDataManager
+ (HMPhotosPersonManagerSettings)defaultSettings;
+ (id)logCategory;
+ (id)settingsModelFromSharedUserDataRoot:(id)a3;
+ (id)settingsModelUUIDWithUUID:(id)a3;
- (BOOL)shouldUseUserModelForSettings;
- (HMDUser)user;
- (HMDUserPhotosPersonDataManager)initWithUser:(id)a3 messageDispatcher:(id)a4 backingStoreContext:(id)a5 cloudTransform:(id)a6 workQueue:(id)a7 supportsFaceClassification:(BOOL)a8 notificationCenter:(id)a9 cloudPhotosSettingObserver:(id)a10;
- (HMDUserPhotosPersonDataManager)initWithUser:(id)a3 messageDispatcher:(id)a4 backingStoreContext:(id)a5 workQueue:(id)a6;
- (HMPhotosPersonManagerSettings)settings;
- (NSUUID)zoneUUID;
- (id)logIdentifier;
- (id)persistedSettingsModel;
- (id)photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser;
- (id)settingsModelUUID;
- (id)updateSettingsModelWithSettings:(id)a3;
- (void)_handleUpdatedSettingsModel:(id)a3;
- (void)configure;
- (void)configurePhotosPersonManagerWithSettingsModel:(id)a3;
- (void)didInsertOrUpdateModel:(id)a3 changedProperties:(id)a4;
- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)a3;
- (void)handleUpdatePersonManagerOwnerSettingsMessage:(id)a3;
- (void)handleUpdatePersonManagerSettingsMessage:(id)a3;
- (void)handleUpdatedUserModel:(id)a3;
- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)a3;
- (void)handleUserRemoteAccessDidChangeNotification:(id)a3;
- (void)removeCloudDataDueToUserRemoval;
- (void)updateSettingsForCurrentCameraClipsAccess;
@end

@implementation HMDUserPhotosPersonDataManager

- (HMDUser)user
{
  WeakRetained = objc_loadWeakRetained(&self->_user);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDUserPhotosPersonDataManager *)self userUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)didInsertOrUpdateModel:(id)a3 changedProperties:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [v10 homeModelID];
    v12 = [(HMDUserPhotosPersonDataManager *)self user];
    v13 = [v12 home];
    v14 = [v13 uuid];
    v15 = [v11 isEqual:v14];

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v19;
        v28 = 2112;
        v29 = v10;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Received notification about modified shared user data root: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [objc_opt_class() settingsModelFromSharedUserDataRoot:v10];
      v21 = [(HMDUserPhotosPersonDataManager *)v17 workQueue];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __75__HMDUserPhotosPersonDataManager_didInsertOrUpdateModel_changedProperties___block_invoke;
      v24[3] = &unk_27868A750;
      v24[4] = v17;
      v25 = v20;
      v22 = v20;
      dispatch_async(v21, v24);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)a3
{
  v4 = [(HMDUserPhotosPersonDataManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HMDUserPhotosPersonDataManager_handleHomePersonManagerSettingsDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __87__HMDUserPhotosPersonDataManager_handleHomePersonManagerSettingsDidChangeNotification___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) user];
  v3 = v2;
  if (v2)
  {
    if ([v2 isCurrentUser])
    {
      v4 = [v3 home];
      v5 = [v4 personManagerSettings];

      if (v5 && ([v5 isFaceClassificationEnabled] & 1) == 0)
      {
        v6 = objc_autoreleasePoolPush();
        v7 = *(a1 + 32);
        v8 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = HMFGetLogIdentifier();
          v18 = 138543362;
          v19 = v9;
          _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating settings to default settings since Face Classification was disabled", &v18, 0xCu);
        }

        objc_autoreleasePoolPop(v6);
        v10 = *(a1 + 32);
        v11 = [objc_opt_class() defaultSettings];
        v12 = [v10 updateSettingsModelWithSettings:v11];
      }
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleUserRemoteAccessDidChangeNotification:(id)a3
{
  v4 = [(HMDUserPhotosPersonDataManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDUserPhotosPersonDataManager_handleUserRemoteAccessDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)a3
{
  v4 = [(HMDUserPhotosPersonDataManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMDUserPhotosPersonDataManager_handleUserCamerasAccessLevelDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)handleUpdatePersonManagerOwnerSettingsMessage:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 shortDescription];
    *buf = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update person manager owner settings message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDUserPhotosPersonDataManager *)v6 user];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 home];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 residentSyncManager];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __80__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerOwnerSettingsMessage___block_invoke;
      v25[3] = &unk_2786858B0;
      v25[4] = v6;
      v26 = v4;
      [v14 interceptRemoteResidentRequest:v26 proceed:v25];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v6;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [v4 respondWithError:v23];

      v13 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v6;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v13];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __80__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerOwnerSettingsMessage___block_invoke(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CD13F8];
  v27[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v6 = [v3 unarchivedObjectForKey:v4 ofClasses:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) updateSettingsModelWithSettings:v6];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __80__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerOwnerSettingsMessage___block_invoke_60;
    v21[3] = &unk_27868A228;
    v21[4] = *(a1 + 32);
    v8 = v3;
    v22 = v8;
    v9 = [v7 addSuccessBlock:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __80__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerOwnerSettingsMessage___block_invoke_2;
    v19[3] = &unk_27868A250;
    v20 = v8;
    v10 = [v9 addFailureBlock:v19];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v3 messagePayload];
      *buf = 138543618;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not find photos person manager settings in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = *(a1 + 40);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v16 respondWithError:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __80__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerOwnerSettingsMessage___block_invoke_60(uint64_t a1)
{
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v2 = [*(a1 + 32) settings];
  v3 = encodeRootObjectForIncomingXPCMessage(v2, 0);
  [v8 setObject:v3 forKeyedSubscript:*MEMORY[0x277CD13F8]];

  v4 = [*(a1 + 32) zoneUUID];
  v5 = [v4 UUIDString];
  [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD1408]];

  v6 = *(a1 + 40);
  v7 = [v8 copy];
  [v6 respondWithPayload:v7];
}

- (void)handleUpdatePersonManagerSettingsMessage:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 shortDescription];
    *buf = 138543618;
    v55 = v8;
    v56 = 2112;
    v57 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update person manager settings message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDUserPhotosPersonDataManager *)v6 user];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 home];
    if (v12)
    {
      if ([v11 isCurrentUser] && (objc_msgSend(v11, "hasCameraClipsAccess") & 1) != 0)
      {
        v13 = *MEMORY[0x277CD13F8];
        v53 = objc_opt_class();
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
        v15 = [v4 unarchivedObjectForKey:v13 ofClasses:v14];

        if (!v15)
        {
          v37 = objc_autoreleasePoolPush();
          v38 = v6;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = HMFGetLogIdentifier();
            v41 = [v4 messagePayload];
            *buf = 138543618;
            v55 = v40;
            v56 = 2112;
            v57 = v41;
            _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Could not find photos person manager settings in message payload: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v37);
          v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          [v4 respondWithError:v42];

          v15 = 0;
          goto LABEL_23;
        }

        if ([v15 isImportingFromPhotoLibraryEnabled] && (-[HMDUserPhotosPersonDataManager cloudPhotosSettingObserver](v6, "cloudPhotosSettingObserver"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isCloudPhotosEnabled"), v16, (v17 & 1) == 0))
        {
          v43 = objc_autoreleasePoolPush();
          v44 = v6;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = HMFGetLogIdentifier();
            *buf = 138543362;
            v55 = v46;
            _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Cannot enable importing from Photo Library because cloud photos is not enabled", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v43);
          v47 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2007];
          [v4 respondWithError:v47];
        }

        else
        {
          if (![v11 isOwner] || (objc_msgSend(v12, "isCurrentDeviceConfirmedPrimaryResident") & 1) != 0)
          {
            v18 = [(HMDUserPhotosPersonDataManager *)v6 updateSettingsModelWithSettings:v15];
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = __75__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerSettingsMessage___block_invoke;
            v51[3] = &unk_27868A228;
            v51[4] = v6;
            v19 = v4;
            v52 = v19;
            v20 = [v18 addSuccessBlock:v51];
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __75__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerSettingsMessage___block_invoke_2;
            v49[3] = &unk_27868A250;
            v50 = v19;
            v21 = [v20 addFailureBlock:v49];

LABEL_23:
            goto LABEL_24;
          }

          v47 = [v4 mutableCopy];
          [v47 setName:@"HMDUPPM.m.updateOwnerSettings"];
          v48 = [v12 residentSyncManager];
          [v48 performResidentRequest:v47 options:0];
        }

        goto LABEL_23;
      }

      v26 = objc_autoreleasePoolPush();
      v27 = v6;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v55 = v29;
        v56 = 2112;
        v57 = v11;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Person manager settings cannot be updated for user: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v30 = MEMORY[0x277CCA9B8];
      v31 = 17;
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = v6;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v55 = v35;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v32);
      v30 = MEMORY[0x277CCA9B8];
      v31 = 48;
    }

    v15 = [v30 hmErrorWithCode:v31];
    [v4 respondWithError:v15];
    goto LABEL_23;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = v6;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v55 = v25;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  [v4 respondWithError:v12];
LABEL_24:

  v36 = *MEMORY[0x277D85DE8];
}

void __75__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerSettingsMessage___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v2 = [*(a1 + 32) settings];
  v3 = encodeRootObjectForIncomingXPCMessage(v2, 0);
  [v8 setObject:v3 forKeyedSubscript:*MEMORY[0x277CD13F8]];

  v4 = [*(a1 + 32) zoneUUID];
  v5 = [v4 UUIDString];
  [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD1408]];

  v6 = *(a1 + 40);
  v7 = [v8 copy];
  [v6 respondWithPayload:v7];
}

- (void)_handleUpdatedSettingsModel:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDUserPhotosPersonDataManager *)self settingsModel];
  if ([v4 hmbIsDifferentFromModel:v6 differingFields:0])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 debugDescription];
      v12 = [v6 debugDescription];
      v39 = 138543874;
      v40 = v10;
      v41 = 2112;
      v42 = v11;
      v43 = 2112;
      v44 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling updated settings model: %@ previous model: %@", &v39, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDUserPhotosPersonDataManager *)v8 setSettingsModel:v4];
    v13 = [v4 zoneUUID];
    if (v13)
    {
      v14 = v13;
      v15 = [v6 zoneUUID];
      v16 = [v4 zoneUUID];
      v17 = [v15 isEqual:v16];

      if ((v17 & 1) == 0)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = v8;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          v25 = [v6 zoneUUID];
          v26 = [v4 zoneUUID];
          v39 = 138543874;
          v40 = v24;
          v41 = 2112;
          v42 = v25;
          v43 = 2112;
          v44 = v26;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings zone UUID changed from %@ to %@. Configuring photos person manager", &v39, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        v27 = [v6 zoneUUID];
        [(HMDUserPhotosPersonDataManager *)v22 removeCloudDataForZoneUUID:v27 isDueToHomeGraphObjectRemoval:0];

        [(HMDUserPhotosPersonDataManager *)v22 configurePhotosPersonManagerWithSettingsModel:v4];
        goto LABEL_16;
      }
    }

    v18 = [v4 zoneUUID];
    if (v18)
    {
    }

    else
    {
      v28 = [v6 zoneUUID];

      if (v28)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = v8;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v39 = 138543362;
          v40 = v32;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings zone UUID is now nil. Removing photos person manager", &v39, 0xCu);
        }

        objc_autoreleasePoolPop(v29);
        v33 = [v6 zoneUUID];
        [(HMDUserPhotosPersonDataManager *)v30 removeCloudDataForZoneUUID:v33 isDueToHomeGraphObjectRemoval:0];

        goto LABEL_16;
      }
    }

    v19 = [(HMDUserPhotosPersonDataManager *)v8 personManager];
    v20 = [v4 createSettings];
    [v19 handleUpdatedSettings:v20];

LABEL_16:
    v34 = [(HMDUserPhotosPersonDataManager *)v8 user];
    v35 = [v34 home];
    v36 = [v35 homeManager];
    v37 = [(HMDUserPhotosPersonDataManager *)v8 userUUID];
    [v36 updateGenerationCounterWithReason:@"Photos Person Manager Settings Updated" sourceUUID:v37 shouldNotifyClients:1];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)updateSettingsForCurrentCameraClipsAccess
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDUserPhotosPersonDataManager *)self user];
  v5 = v4;
  if (v4)
  {
    if (([v4 hasCameraClipsAccess] & 1) == 0)
    {
      v6 = [(HMDUserPhotosPersonDataManager *)self settings];
      v7 = [objc_opt_class() defaultSettings];
      v8 = [v6 isEqual:v7];

      if ((v8 & 1) == 0)
      {
        v9 = objc_autoreleasePoolPush();
        v10 = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          v20 = 138543618;
          v21 = v12;
          v22 = 2112;
          v23 = v5;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating settings to default settings since user does not have access to camera clips: %@", &v20, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        v13 = [objc_opt_class() defaultSettings];
        v14 = [(HMDUserPhotosPersonDataManager *)v10 updateSettingsModelWithSettings:v13];
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)configurePhotosPersonManagerWithSettingsModel:(id)a3
{
  *&v34[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDUserPhotosPersonDataManager *)self user];
  if (!v6)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v21;
      v22 = "%{public}@User reference is nil";
      v23 = v20;
      v24 = OS_LOG_TYPE_DEFAULT;
      v25 = 12;
LABEL_16:
      _os_log_impl(&dword_229538000, v23, v24, v22, &v31, v25);
    }

LABEL_17:

    objc_autoreleasePoolPop(v18);
    goto LABEL_18;
  }

  if (!-[HMDUserPhotosPersonDataManager supportsFaceClassification](self, "supportsFaceClassification") && ([v6 isCurrentUser] & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v31 = 138543874;
      v32 = v21;
      v33 = 1024;
      *v34 = [(HMDUserPhotosPersonDataManager *)v19 supportsFaceClassification];
      v34[2] = 1024;
      *&v34[3] = [v6 isCurrentUser];
      v22 = "%{public}@Not configuring photos person manager because self.supportsFaceClassification=%d and user.isCurrentUser=%d";
      v23 = v20;
      v24 = OS_LOG_TYPE_DEBUG;
      v25 = 24;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v7 = [v4 zoneUUID];
  if (v7)
  {
    v8 = [(HMDUserPhotosPersonDataManager *)self personManagerFactory];
    v9 = [(HMDUserPhotosPersonDataManager *)self workQueue];
    v10 = (v8)[2](v8, v6, v7, v9);
    [(HMDUserPhotosPersonDataManager *)self setPersonManager:v10];

    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMDUserPhotosPersonDataManager *)v12 personManager];
      v31 = 138543618;
      v32 = v14;
      v33 = 2112;
      *v34 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Configuring photos person manager: %@", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [(HMDUserPhotosPersonDataManager *)v12 personManager];
    v17 = [v6 home];
    [v16 configureWithHome:v17];
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Not configuring photos person manager because zoneUUID is nil", &v31, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
  }

LABEL_18:
  v30 = *MEMORY[0x277D85DE8];
}

- (id)photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDUserPhotosPersonDataManager *)self user];
  v5 = v4;
  if (v4)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = [v4 home];
    v7 = [v6 homeManager];
    v8 = [v7 homes];

    v9 = [v8 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v29 + 1) + 8 * i) currentUser];
          v14 = [v13 uuid];
          v15 = [v5 uuid];
          v16 = [v14 isEqual:v15];

          if ((v16 & 1) == 0)
          {
            v17 = [v13 photosPersonDataManager];
            v18 = [v17 zoneUUID];

            if (v18)
            {
              v23 = objc_autoreleasePoolPush();
              v24 = self;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v26 = HMFGetLogIdentifier();
                *buf = 138543874;
                v34 = v26;
                v35 = 2112;
                v36 = v13;
                v37 = 2112;
                v38 = v18;
                _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Found current user %@ using photos person manager zone UUID: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v23);
              goto LABEL_19;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  v18 = 0;
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)persistedSettingsModel
{
  v3 = [HMDPhotosPersonManagerSettingsModel alloc];
  v4 = [(HMDUserPhotosPersonDataManager *)self settingsModelUUID];
  v5 = +[HMDPhotosPersonManagerSettingsModel sentinelParentUUID];
  v6 = [(HMBModel *)v3 initWithModelID:v4 parentModelID:v5];

  v7 = [(HMDUserPhotosPersonDataManager *)self backingStoreContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__HMDUserPhotosPersonDataManager_persistedSettingsModel__block_invoke;
  v12[3] = &unk_27868A750;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [v7 unsafeSynchronousBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __56__HMDUserPhotosPersonDataManager_persistedSettingsModel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldUseUserModelForSettings];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 userUUID];
    v5 = [*(a1 + 32) backingStoreContext];
    v6 = [v5 managedObjectContext];
    v12 = [(_MKFModel *)_MKFUser modelWithModelID:v4 context:v6];

    [v12 sharePhotosFaceClassifications];
  }

  else
  {
    v7 = [v3 homeUUID];
    v8 = [*(a1 + 32) backingStoreContext];
    v9 = [v8 managedObjectContext];
    v12 = [(MKFCKModel *)MKFCKSharedUserDataRoot modelWithModelID:v7 context:v9 error:0];

    [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "sharePhotosFaceClassifications")}];
  }
  v10 = ;
  [*(a1 + 40) setSharingFaceClassificationsEnabled:v10];

  v11 = [v12 photosPersonDataZoneUUID];
  [*(a1 + 40) setZoneUUID:v11];
}

- (BOOL)shouldUseUserModelForSettings
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserPhotosPersonDataManager *)self user];
  v4 = v3;
  if (v3)
  {
    if ([v3 isOwner])
    {
      v5 = 1;
    }

    else
    {
      v10 = [v4 home];
      v5 = [v10 isOwnerUser];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)settingsModelUUID
{
  v3 = objc_opt_class();
  v4 = [(HMDUserPhotosPersonDataManager *)self userUUID];
  v5 = [v3 settingsModelUUIDWithUUID:v4];

  return v5;
}

- (void)handleUpdatedUserModel:(id)a3
{
  v15 = a3;
  v4 = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  if ([(HMDUserPhotosPersonDataManager *)self shouldUseUserModelForSettings])
  {
    v5 = [(HMDUserPhotosPersonDataManager *)self settingsModel];
    v6 = [v5 copy];

    v7 = [v15 setProperties];
    v8 = [v7 containsObject:@"photosPersonDataZoneUUIDString"];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v15 photosPersonDataZoneUUIDString];
      v11 = [v9 initWithUUIDString:v10];
      [v6 setZoneUUID:v11];
    }

    v12 = [v15 setProperties];
    v13 = [v12 containsObject:@"sharePhotosFaceClassifications"];

    if (v13)
    {
      v14 = [v15 sharePhotosFaceClassifications];
      [v6 setSharingFaceClassificationsEnabled:v14];
    }

    [(HMDUserPhotosPersonDataManager *)self _handleUpdatedSettingsModel:v6];
  }
}

- (id)updateSettingsModelWithSettings:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating photos person manager settings: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [HMDPhotosPersonManagerSettingsModel alloc];
  v11 = [(HMDUserPhotosPersonDataManager *)v7 settingsModelUUID];
  v12 = [(HMDPhotosPersonManagerSettingsModel *)v10 initWithModelID:v11 settings:v4];

  v13 = [(HMDUserPhotosPersonDataManager *)v7 settingsModel];
  if ([v4 isImportingFromPhotoLibraryEnabled] && (objc_msgSend(v13, "zoneUUID"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == 0, v14, v15))
  {
    v27 = [(HMDUserPhotosPersonDataManager *)v7 photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser];
    if (v27)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v7;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v31;
        *&buf[12] = 2112;
        *&buf[14] = v27;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Using existing Photo Library person manager zone UUID for current user from another home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:v27];
    }

    else
    {
      v32 = [MEMORY[0x277CCAD78] UUID];
      [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:v32];
    }

    v33 = objc_autoreleasePoolPush();
    v34 = v7;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [(HMDPhotosPersonManagerSettingsModel *)v12 zoneUUID];
      *buf = 138543618;
      *&buf[4] = v36;
      *&buf[12] = 2112;
      *&buf[14] = v37;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Importing from Photo Library is now enabled. Updating settings with new photos person manager zone UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

  else if (([v4 isImportingFromPhotoLibraryEnabled] & 1) != 0 || (objc_msgSend(v13, "zoneUUID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v17))
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v7;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Importing from Photo Library has not changed. Not changing zone UUID", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [v13 zoneUUID];
    [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:v26];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v7;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Importing from Photo Library is now disabled. Updating settings to remove zone UUID", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:0];
  }

  v38 = objc_alloc_init(MEMORY[0x277D2C900]);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v55 = __Block_byref_object_copy__23380;
  v56 = __Block_byref_object_dispose__23381;
  v57 = 0;
  v39 = [(HMDUserPhotosPersonDataManager *)v7 backingStoreContext];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __66__HMDUserPhotosPersonDataManager_updateSettingsModelWithSettings___block_invoke;
  v50[3] = &unk_278689D20;
  v50[4] = v7;
  v40 = v12;
  v51 = v40;
  v53 = buf;
  v41 = v38;
  v52 = v41;
  [v39 performBlock:v50];

  v42 = MEMORY[0x277D2C938];
  v43 = [(HMDUserPhotosPersonDataManager *)v7 workQueue];
  v44 = [v42 schedulerWithDispatchQueue:v43];
  v45 = [v41 reschedule:v44];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __66__HMDUserPhotosPersonDataManager_updateSettingsModelWithSettings___block_invoke_41;
  v49[3] = &unk_2786714B0;
  v49[4] = v7;
  v49[5] = buf;
  v46 = [v45 flatMap:v49];

  _Block_object_dispose(buf, 8);
  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

void __66__HMDUserPhotosPersonDataManager_updateSettingsModelWithSettings___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) shouldUseUserModelForSettings];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 userUUID];
    v5 = [*(a1 + 32) backingStoreContext];
    v6 = [v5 managedObjectContext];
    v7 = [(_MKFModel *)_MKFUser modelWithModelID:v4 context:v6];

    v8 = [*(a1 + 40) sharingFaceClassificationsEnabled];
    [v7 setSharePhotosFaceClassifications:v8];

    v9 = [*(a1 + 40) zoneUUID];
    [v7 setPhotosPersonDataZoneUUID:v9];
  }

  else
  {
    v10 = [v3 homeUUID];
    v11 = [*(a1 + 32) backingStoreContext];
    v12 = [v11 managedObjectContext];
    v7 = [(MKFCKModel *)MKFCKSharedUserDataRoot modelWithModelID:v10 context:v12 error:0];

    v13 = [*(a1 + 40) sharingFaceClassificationsEnabled];
    [v7 setSharePhotosFaceClassifications:{objc_msgSend(v13, "BOOLValue")}];

    v14 = [*(a1 + 40) zoneUUID];
    [v7 setPhotosPersonDataZoneUUID:v14];

    v15 = *(a1 + 32);
    v16 = [objc_opt_class() settingsModelFromSharedUserDataRoot:v7];
    v17 = *(*(a1 + 56) + 8);
    v9 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v18 = [*(a1 + 32) backingStoreContext];
  v26 = 0;
  v19 = [v18 save:&v26];
  v20 = v26;

  if (v19)
  {
    [*(a1 + 48) finishWithNoResult];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v24;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to update settings model with settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    [*(a1 + 48) finishWithError:v20];
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HMDUserPhotosPersonDataManager_updateSettingsModelWithSettings___block_invoke_41(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [*(a1 + 32) _handleUpdatedSettingsModel:?];
    v1 = vars8;
  }

  v2 = MEMORY[0x277D2C900];

  return [v2 futureWithNoResult];
}

- (void)removeCloudDataDueToUserRemoval
{
  v3 = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDUserPhotosPersonDataManager *)self zoneUUID];
  [(HMDUserPhotosPersonDataManager *)self removeCloudDataForZoneUUID:v4 isDueToHomeGraphObjectRemoval:1];
}

- (void)configure
{
  v48[3] = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDUserPhotosPersonDataManager *)self user];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 home];
    if (!v6)
    {
      v36 = objc_autoreleasePoolPush();
      v37 = self;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = HMFGetLogIdentifier();
        v42 = 138543362;
        v43 = v39;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", &v42, 0xCu);
      }

      objc_autoreleasePoolPop(v36);
      goto LABEL_18;
    }

    v7 = [(HMDUserPhotosPersonDataManager *)self messageDispatcher];
    v8 = *MEMORY[0x277CD14E0];
    v9 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v48[0] = v9;
    v10 = [HMDXPCMessagePolicy policyWithEntitlements:8197];
    v48[1] = v10;
    v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:v6 userPrivilege:0 remoteAccessRequired:0];
    v48[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
    [v7 registerForMessage:v8 receiver:self policies:v12 selector:sel_handleUpdatePersonManagerSettingsMessage_];

    v13 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v13 setRoles:{objc_msgSend(v13, "roles") | 4}];
    v14 = [(HMDUserPhotosPersonDataManager *)self messageDispatcher];
    v15 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v47[0] = v15;
    v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:v6 userPrivilege:3 remoteAccessRequired:0];
    v47[1] = v16;
    v47[2] = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
    [v14 registerForMessage:@"HMDUPPM.m.updateOwnerSettings" receiver:self policies:v17 selector:sel_handleUpdatePersonManagerOwnerSettingsMessage_];

    v18 = [(HMDUserPhotosPersonDataManager *)self notificationCenter];
    [v18 addObserver:self selector:sel_handleUserCamerasAccessLevelDidChangeNotification_ name:@"HMDUserCamerasAccessLevelDidChangeNotification" object:v5];

    v19 = [(HMDUserPhotosPersonDataManager *)self notificationCenter];
    [v19 addObserver:self selector:sel_handleUserRemoteAccessDidChangeNotification_ name:@"HMDUserRemoteAccessDidChangeNotification" object:v5];

    v20 = [(HMDUserPhotosPersonDataManager *)self notificationCenter];
    [v20 addObserver:self selector:sel_handleHomePersonManagerSettingsDidChangeNotification_ name:@"HMDHomePersonManagerSettingsDidChangeNotification" object:v6];

    if (![(HMDUserPhotosPersonDataManager *)self shouldUseUserModelForSettings])
    {
      v21 = [(HMDUserPhotosPersonDataManager *)self cloudTransform];
      v22 = +[MKFCKSharedUserDataRoot entity];
      v46 = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      [v21 registerCloudChangeListener:self forEntities:v23];
    }

    v24 = [(HMDUserPhotosPersonDataManager *)self persistedSettingsModel];
    if (v24)
    {
      [(HMDUserPhotosPersonDataManager *)self setSettingsModel:v24];
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [(HMDUserPhotosPersonDataManager *)v26 settingsModel];
        v30 = [v29 createSettings];
        v42 = 138543618;
        v43 = v28;
        v44 = 2112;
        v45 = v30;
        v31 = "%{public}@Initialized photos person data manager with settings: %@";
LABEL_16:
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, v31, &v42, 0x16u);
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v40 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [(HMDUserPhotosPersonDataManager *)v40 settingsModel];
        v30 = [v29 createSettings];
        v42 = 138543618;
        v43 = v28;
        v44 = 2112;
        v45 = v30;
        v31 = "%{public}@Initialized photos person data manager with default settings: %@";
        goto LABEL_16;
      }
    }

    objc_autoreleasePoolPop(v25);
    [(HMDUserPhotosPersonDataManager *)self configurePhotosPersonManagerWithSettingsModel:v24];

LABEL_18:
    goto LABEL_19;
  }

  v32 = objc_autoreleasePoolPush();
  v33 = self;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = HMFGetLogIdentifier();
    v42 = 138543362;
    v43 = v35;
    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", &v42, 0xCu);
  }

  objc_autoreleasePoolPop(v32);
LABEL_19:

  v41 = *MEMORY[0x277D85DE8];
}

- (NSUUID)zoneUUID
{
  v2 = [(HMDUserPhotosPersonDataManager *)self settingsModel];
  v3 = [v2 zoneUUID];

  return v3;
}

- (HMPhotosPersonManagerSettings)settings
{
  v2 = [(HMDUserPhotosPersonDataManager *)self settingsModel];
  v3 = [v2 createSettings];

  return v3;
}

- (HMDUserPhotosPersonDataManager)initWithUser:(id)a3 messageDispatcher:(id)a4 backingStoreContext:(id)a5 cloudTransform:(id)a6 workQueue:(id)a7 supportsFaceClassification:(BOOL)a8 notificationCenter:(id)a9 cloudPhotosSettingObserver:(id)a10
{
  v15 = a3;
  v16 = a4;
  v38 = a5;
  v37 = a6;
  v17 = a7;
  v36 = a9;
  v18 = a10;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v16)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v38)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v17)
  {
LABEL_11:
    v33 = _HMFPreconditionFailure();
    return __183__HMDUserPhotosPersonDataManager_initWithUser_messageDispatcher_backingStoreContext_cloudTransform_workQueue_supportsFaceClassification_notificationCenter_cloudPhotosSettingObserver___block_invoke(v33);
  }

  v35 = v18;
  v39.receiver = self;
  v39.super_class = HMDUserPhotosPersonDataManager;
  v19 = [(HMDUserPhotosPersonDataManager *)&v39 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_workQueue, a7);
    v21 = [v15 uuid];
    userUUID = v20->_userUUID;
    v20->_userUUID = v21;

    v23 = [v15 home];
    v24 = [v23 uuid];
    homeUUID = v20->_homeUUID;
    v20->_homeUUID = v24;

    objc_storeStrong(&v20->_messageDispatcher, a4);
    objc_storeStrong(&v20->_backingStoreContext, a5);
    objc_storeStrong(&v20->_cloudTransform, a6);
    objc_storeWeak(&v20->_user, v15);
    v20->_supportsFaceClassification = a8;
    objc_storeStrong(&v20->_notificationCenter, a9);
    objc_storeStrong(&v20->_cloudPhotosSettingObserver, a10);
    v26 = [HMDPhotosPersonManagerSettingsModel alloc];
    v27 = [objc_opt_class() settingsModelUUIDWithUUID:v20->_userUUID];
    v28 = +[HMDPhotosPersonManagerSettingsModel sentinelParentUUID];
    v29 = [(HMBModel *)v26 initWithModelID:v27 parentModelID:v28];
    settingsModel = v20->_settingsModel;
    v20->_settingsModel = v29;

    personManagerFactory = v20->_personManagerFactory;
    v20->_personManagerFactory = &__block_literal_global_23404;
  }

  return v20;
}

HMDPhotosPersonManager *__183__HMDUserPhotosPersonDataManager_initWithUser_messageDispatcher_backingStoreContext_cloudTransform_workQueue_supportsFaceClassification_notificationCenter_cloudPhotosSettingObserver___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = [[HMDPhotosPersonManager alloc] initWithUser:v8 zoneUUID:v7 workQueue:v6];

  return v9;
}

- (HMDUserPhotosPersonDataManager)initWithUser:(id)a3 messageDispatcher:(id)a4 backingStoreContext:(id)a5 workQueue:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[HMDCoreDataCloudTransform sharedInstance];
  v15 = +[HMDDeviceCapabilities deviceCapabilities];
  v16 = [v15 supportsFaceClassification];
  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  v18 = +[HMDCloudPhotosSettingObserver sharedInstance];
  v19 = [(HMDUserPhotosPersonDataManager *)self initWithUser:v13 messageDispatcher:v12 backingStoreContext:v11 cloudTransform:v14 workQueue:v10 supportsFaceClassification:v16 notificationCenter:v17 cloudPhotosSettingObserver:v18];

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t38 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t38, &__block_literal_global_63_23428);
  }

  v3 = logCategory__hmf_once_v39;

  return v3;
}

void __45__HMDUserPhotosPersonDataManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v39;
  logCategory__hmf_once_v39 = v1;
}

+ (id)settingsModelFromSharedUserDataRoot:(id)a3
{
  v3 = a3;
  v4 = [HMDPhotosPersonManagerSettingsModel alloc];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = +[HMDPhotosPersonManagerSettingsModel sentinelParentUUID];
  v7 = [(HMBModel *)v4 initWithModelID:v5 parentModelID:v6];

  v8 = [v3 photosPersonDataZoneUUID];
  [(HMDPhotosPersonManagerSettingsModel *)v7 setZoneUUID:v8];

  v9 = MEMORY[0x277CCABB0];
  v10 = [v3 sharePhotosFaceClassifications];

  v11 = [v9 numberWithBool:v10];
  [(HMDPhotosPersonManagerSettingsModel *)v7 setSharingFaceClassificationsEnabled:v11];

  return v7;
}

+ (id)settingsModelUUIDWithUUID:(id)a3
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"F378F892-E6AD-4A6E-927A-C04D01A75448"];
  v6 = MEMORY[0x277CCAD78];
  v7 = [v5 data];
  v8 = [v6 hmf_UUIDWithNamespace:v4 data:v7];

  return v8;
}

+ (HMPhotosPersonManagerSettings)defaultSettings
{
  v2 = objc_alloc_init(MEMORY[0x277CD1D00]);

  return v2;
}

@end