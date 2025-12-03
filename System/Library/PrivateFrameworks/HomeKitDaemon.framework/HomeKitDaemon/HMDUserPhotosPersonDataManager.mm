@interface HMDUserPhotosPersonDataManager
+ (HMPhotosPersonManagerSettings)defaultSettings;
+ (id)logCategory;
+ (id)settingsModelFromSharedUserDataRoot:(id)root;
+ (id)settingsModelUUIDWithUUID:(id)d;
- (BOOL)shouldUseUserModelForSettings;
- (HMDUser)user;
- (HMDUserPhotosPersonDataManager)initWithUser:(id)user messageDispatcher:(id)dispatcher backingStoreContext:(id)context cloudTransform:(id)transform workQueue:(id)queue supportsFaceClassification:(BOOL)classification notificationCenter:(id)center cloudPhotosSettingObserver:(id)self0;
- (HMDUserPhotosPersonDataManager)initWithUser:(id)user messageDispatcher:(id)dispatcher backingStoreContext:(id)context workQueue:(id)queue;
- (HMPhotosPersonManagerSettings)settings;
- (NSUUID)zoneUUID;
- (id)logIdentifier;
- (id)persistedSettingsModel;
- (id)photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser;
- (id)settingsModelUUID;
- (id)updateSettingsModelWithSettings:(id)settings;
- (void)_handleUpdatedSettingsModel:(id)model;
- (void)configure;
- (void)configurePhotosPersonManagerWithSettingsModel:(id)model;
- (void)didInsertOrUpdateModel:(id)model changedProperties:(id)properties;
- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)notification;
- (void)handleUpdatePersonManagerOwnerSettingsMessage:(id)message;
- (void)handleUpdatePersonManagerSettingsMessage:(id)message;
- (void)handleUpdatedUserModel:(id)model;
- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)notification;
- (void)handleUserRemoteAccessDidChangeNotification:(id)notification;
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
  userUUID = [(HMDUserPhotosPersonDataManager *)self userUUID];
  uUIDString = [userUUID UUIDString];

  return uUIDString;
}

- (void)didInsertOrUpdateModel:(id)model changedProperties:(id)properties
{
  v30 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  propertiesCopy = properties;
  v8 = modelCopy;
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
    homeModelID = [v10 homeModelID];
    user = [(HMDUserPhotosPersonDataManager *)self user];
    home = [user home];
    uuid = [home uuid];
    v15 = [homeModelID isEqual:uuid];

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      workQueue = [(HMDUserPhotosPersonDataManager *)selfCopy workQueue];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __75__HMDUserPhotosPersonDataManager_didInsertOrUpdateModel_changedProperties___block_invoke;
      v24[3] = &unk_27868A750;
      v24[4] = selfCopy;
      v25 = v20;
      v22 = v20;
      dispatch_async(workQueue, v24);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)notification
{
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HMDUserPhotosPersonDataManager_handleHomePersonManagerSettingsDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
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

- (void)handleUserRemoteAccessDidChangeNotification:(id)notification
{
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HMDUserPhotosPersonDataManager_handleUserRemoteAccessDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)notification
{
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMDUserPhotosPersonDataManager_handleUserCamerasAccessLevelDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleUpdatePersonManagerOwnerSettingsMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = shortDescription;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update person manager owner settings message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  user = [(HMDUserPhotosPersonDataManager *)selfCopy user];
  v11 = user;
  if (user)
  {
    home = [user home];
    if (home)
    {
      v13 = home;
      residentSyncManager = [home residentSyncManager];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __80__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerOwnerSettingsMessage___block_invoke;
      v25[3] = &unk_2786858B0;
      v25[4] = selfCopy;
      v26 = messageCopy;
      [residentSyncManager interceptRemoteResidentRequest:v26 proceed:v25];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
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
      [messageCopy respondWithError:v23];

      v13 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
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
    [messageCopy respondWithError:v13];
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

- (void)handleUpdatePersonManagerSettingsMessage:(id)message
{
  v58 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v55 = v8;
    v56 = 2112;
    v57 = shortDescription;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update person manager settings message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  user = [(HMDUserPhotosPersonDataManager *)selfCopy user];
  v11 = user;
  if (user)
  {
    home = [user home];
    if (home)
    {
      if ([v11 isCurrentUser] && (objc_msgSend(v11, "hasCameraClipsAccess") & 1) != 0)
      {
        v13 = *MEMORY[0x277CD13F8];
        v53 = objc_opt_class();
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
        v15 = [messageCopy unarchivedObjectForKey:v13 ofClasses:v14];

        if (!v15)
        {
          v37 = objc_autoreleasePoolPush();
          v38 = selfCopy;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = HMFGetLogIdentifier();
            messagePayload = [messageCopy messagePayload];
            *buf = 138543618;
            v55 = v40;
            v56 = 2112;
            v57 = messagePayload;
            _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Could not find photos person manager settings in message payload: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v37);
          v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          [messageCopy respondWithError:v42];

          v15 = 0;
          goto LABEL_23;
        }

        if ([v15 isImportingFromPhotoLibraryEnabled] && (-[HMDUserPhotosPersonDataManager cloudPhotosSettingObserver](selfCopy, "cloudPhotosSettingObserver"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isCloudPhotosEnabled"), v16, (v17 & 1) == 0))
        {
          v43 = objc_autoreleasePoolPush();
          v44 = selfCopy;
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
          [messageCopy respondWithError:v47];
        }

        else
        {
          if (![v11 isOwner] || (objc_msgSend(home, "isCurrentDeviceConfirmedPrimaryResident") & 1) != 0)
          {
            v18 = [(HMDUserPhotosPersonDataManager *)selfCopy updateSettingsModelWithSettings:v15];
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = __75__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerSettingsMessage___block_invoke;
            v51[3] = &unk_27868A228;
            v51[4] = selfCopy;
            v19 = messageCopy;
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

          v47 = [messageCopy mutableCopy];
          [v47 setName:@"HMDUPPM.m.updateOwnerSettings"];
          residentSyncManager = [home residentSyncManager];
          [residentSyncManager performResidentRequest:v47 options:0];
        }

        goto LABEL_23;
      }

      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
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
      v33 = selfCopy;
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
    [messageCopy respondWithError:v15];
    goto LABEL_23;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v55 = v25;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  home = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  [messageCopy respondWithError:home];
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

- (void)_handleUpdatedSettingsModel:(id)model
{
  v45 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  settingsModel = [(HMDUserPhotosPersonDataManager *)self settingsModel];
  if ([modelCopy hmbIsDifferentFromModel:settingsModel differingFields:0])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [modelCopy debugDescription];
      v12 = [settingsModel debugDescription];
      v39 = 138543874;
      v40 = v10;
      v41 = 2112;
      v42 = v11;
      v43 = 2112;
      v44 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling updated settings model: %@ previous model: %@", &v39, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDUserPhotosPersonDataManager *)selfCopy setSettingsModel:modelCopy];
    zoneUUID = [modelCopy zoneUUID];
    if (zoneUUID)
    {
      v14 = zoneUUID;
      zoneUUID2 = [settingsModel zoneUUID];
      zoneUUID3 = [modelCopy zoneUUID];
      v17 = [zoneUUID2 isEqual:zoneUUID3];

      if ((v17 & 1) == 0)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = selfCopy;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          zoneUUID4 = [settingsModel zoneUUID];
          zoneUUID5 = [modelCopy zoneUUID];
          v39 = 138543874;
          v40 = v24;
          v41 = 2112;
          v42 = zoneUUID4;
          v43 = 2112;
          v44 = zoneUUID5;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings zone UUID changed from %@ to %@. Configuring photos person manager", &v39, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        zoneUUID6 = [settingsModel zoneUUID];
        [(HMDUserPhotosPersonDataManager *)v22 removeCloudDataForZoneUUID:zoneUUID6 isDueToHomeGraphObjectRemoval:0];

        [(HMDUserPhotosPersonDataManager *)v22 configurePhotosPersonManagerWithSettingsModel:modelCopy];
        goto LABEL_16;
      }
    }

    zoneUUID7 = [modelCopy zoneUUID];
    if (zoneUUID7)
    {
    }

    else
    {
      zoneUUID8 = [settingsModel zoneUUID];

      if (zoneUUID8)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v39 = 138543362;
          v40 = v32;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings zone UUID is now nil. Removing photos person manager", &v39, 0xCu);
        }

        objc_autoreleasePoolPop(v29);
        zoneUUID9 = [settingsModel zoneUUID];
        [(HMDUserPhotosPersonDataManager *)v30 removeCloudDataForZoneUUID:zoneUUID9 isDueToHomeGraphObjectRemoval:0];

        goto LABEL_16;
      }
    }

    personManager = [(HMDUserPhotosPersonDataManager *)selfCopy personManager];
    createSettings = [modelCopy createSettings];
    [personManager handleUpdatedSettings:createSettings];

LABEL_16:
    user = [(HMDUserPhotosPersonDataManager *)selfCopy user];
    home = [user home];
    homeManager = [home homeManager];
    userUUID = [(HMDUserPhotosPersonDataManager *)selfCopy userUUID];
    [homeManager updateGenerationCounterWithReason:@"Photos Person Manager Settings Updated" sourceUUID:userUUID shouldNotifyClients:1];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)updateSettingsForCurrentCameraClipsAccess
{
  v24 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  user = [(HMDUserPhotosPersonDataManager *)self user];
  v5 = user;
  if (user)
  {
    if (([user hasCameraClipsAccess] & 1) == 0)
    {
      settings = [(HMDUserPhotosPersonDataManager *)self settings];
      defaultSettings = [objc_opt_class() defaultSettings];
      v8 = [settings isEqual:defaultSettings];

      if ((v8 & 1) == 0)
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
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
        defaultSettings2 = [objc_opt_class() defaultSettings];
        v14 = [(HMDUserPhotosPersonDataManager *)selfCopy updateSettingsModelWithSettings:defaultSettings2];
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)configurePhotosPersonManagerWithSettingsModel:(id)model
{
  *&v34[5] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  user = [(HMDUserPhotosPersonDataManager *)self user];
  if (!user)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

  if (!-[HMDUserPhotosPersonDataManager supportsFaceClassification](self, "supportsFaceClassification") && ([user isCurrentUser] & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v31 = 138543874;
      v32 = v21;
      v33 = 1024;
      *v34 = [(HMDUserPhotosPersonDataManager *)selfCopy2 supportsFaceClassification];
      v34[2] = 1024;
      *&v34[3] = [user isCurrentUser];
      v22 = "%{public}@Not configuring photos person manager because self.supportsFaceClassification=%d and user.isCurrentUser=%d";
      v23 = v20;
      v24 = OS_LOG_TYPE_DEBUG;
      v25 = 24;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  zoneUUID = [modelCopy zoneUUID];
  if (zoneUUID)
  {
    personManagerFactory = [(HMDUserPhotosPersonDataManager *)self personManagerFactory];
    workQueue2 = [(HMDUserPhotosPersonDataManager *)self workQueue];
    v10 = (personManagerFactory)[2](personManagerFactory, user, zoneUUID, workQueue2);
    [(HMDUserPhotosPersonDataManager *)self setPersonManager:v10];

    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      personManager = [(HMDUserPhotosPersonDataManager *)selfCopy3 personManager];
      v31 = 138543618;
      v32 = v14;
      v33 = 2112;
      *v34 = personManager;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Configuring photos person manager: %@", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    personManager2 = [(HMDUserPhotosPersonDataManager *)selfCopy3 personManager];
    home = [user home];
    [personManager2 configureWithHome:home];
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy4 = self;
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
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  user = [(HMDUserPhotosPersonDataManager *)self user];
  v5 = user;
  if (user)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    home = [user home];
    homeManager = [home homeManager];
    homes = [homeManager homes];

    v9 = [homes countByEnumeratingWithState:&v29 objects:v39 count:16];
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
            objc_enumerationMutation(homes);
          }

          currentUser = [*(*(&v29 + 1) + 8 * i) currentUser];
          uuid = [currentUser uuid];
          uuid2 = [v5 uuid];
          v16 = [uuid isEqual:uuid2];

          if ((v16 & 1) == 0)
          {
            photosPersonDataManager = [currentUser photosPersonDataManager];
            zoneUUID = [photosPersonDataManager zoneUUID];

            if (zoneUUID)
            {
              v23 = objc_autoreleasePoolPush();
              selfCopy = self;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v26 = HMFGetLogIdentifier();
                *buf = 138543874;
                v34 = v26;
                v35 = 2112;
                v36 = currentUser;
                v37 = 2112;
                v38 = zoneUUID;
                _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Found current user %@ using photos person manager zone UUID: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v23);
              goto LABEL_19;
            }
          }
        }

        v10 = [homes countByEnumeratingWithState:&v29 objects:v39 count:16];
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
    selfCopy2 = self;
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

  zoneUUID = 0;
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];

  return zoneUUID;
}

- (id)persistedSettingsModel
{
  v3 = [HMDPhotosPersonManagerSettingsModel alloc];
  settingsModelUUID = [(HMDUserPhotosPersonDataManager *)self settingsModelUUID];
  v5 = +[HMDPhotosPersonManagerSettingsModel sentinelParentUUID];
  v6 = [(HMBModel *)v3 initWithModelID:settingsModelUUID parentModelID:v5];

  backingStoreContext = [(HMDUserPhotosPersonDataManager *)self backingStoreContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__HMDUserPhotosPersonDataManager_persistedSettingsModel__block_invoke;
  v12[3] = &unk_27868A750;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  [backingStoreContext unsafeSynchronousBlock:v12];

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
  user = [(HMDUserPhotosPersonDataManager *)self user];
  v4 = user;
  if (user)
  {
    if ([user isOwner])
    {
      isOwnerUser = 1;
    }

    else
    {
      home = [v4 home];
      isOwnerUser = [home isOwnerUser];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    isOwnerUser = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return isOwnerUser;
}

- (id)settingsModelUUID
{
  v3 = objc_opt_class();
  userUUID = [(HMDUserPhotosPersonDataManager *)self userUUID];
  v5 = [v3 settingsModelUUIDWithUUID:userUUID];

  return v5;
}

- (void)handleUpdatedUserModel:(id)model
{
  modelCopy = model;
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDUserPhotosPersonDataManager *)self shouldUseUserModelForSettings])
  {
    settingsModel = [(HMDUserPhotosPersonDataManager *)self settingsModel];
    v6 = [settingsModel copy];

    setProperties = [modelCopy setProperties];
    v8 = [setProperties containsObject:@"photosPersonDataZoneUUIDString"];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      photosPersonDataZoneUUIDString = [modelCopy photosPersonDataZoneUUIDString];
      v11 = [v9 initWithUUIDString:photosPersonDataZoneUUIDString];
      [v6 setZoneUUID:v11];
    }

    setProperties2 = [modelCopy setProperties];
    v13 = [setProperties2 containsObject:@"sharePhotosFaceClassifications"];

    if (v13)
    {
      sharePhotosFaceClassifications = [modelCopy sharePhotosFaceClassifications];
      [v6 setSharingFaceClassificationsEnabled:sharePhotosFaceClassifications];
    }

    [(HMDUserPhotosPersonDataManager *)self _handleUpdatedSettingsModel:v6];
  }
}

- (id)updateSettingsModelWithSettings:(id)settings
{
  v58 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = settingsCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating photos person manager settings: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [HMDPhotosPersonManagerSettingsModel alloc];
  settingsModelUUID = [(HMDUserPhotosPersonDataManager *)selfCopy settingsModelUUID];
  v12 = [(HMDPhotosPersonManagerSettingsModel *)v10 initWithModelID:settingsModelUUID settings:settingsCopy];

  settingsModel = [(HMDUserPhotosPersonDataManager *)selfCopy settingsModel];
  if ([settingsCopy isImportingFromPhotoLibraryEnabled] && (objc_msgSend(settingsModel, "zoneUUID"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 == 0, v14, v15))
  {
    photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser = [(HMDUserPhotosPersonDataManager *)selfCopy photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser];
    if (photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v31;
        *&buf[12] = 2112;
        *&buf[14] = photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Using existing Photo Library person manager zone UUID for current user from another home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser];
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:uUID];
    }

    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      zoneUUID = [(HMDPhotosPersonManagerSettingsModel *)v12 zoneUUID];
      *buf = 138543618;
      *&buf[4] = v36;
      *&buf[12] = 2112;
      *&buf[14] = zoneUUID;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Importing from Photo Library is now enabled. Updating settings with new photos person manager zone UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

  else if (([settingsCopy isImportingFromPhotoLibraryEnabled] & 1) != 0 || (objc_msgSend(settingsModel, "zoneUUID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v17))
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Importing from Photo Library has not changed. Not changing zone UUID", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    zoneUUID2 = [settingsModel zoneUUID];
    [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:zoneUUID2];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
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
  backingStoreContext = [(HMDUserPhotosPersonDataManager *)selfCopy backingStoreContext];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __66__HMDUserPhotosPersonDataManager_updateSettingsModelWithSettings___block_invoke;
  v50[3] = &unk_278689D20;
  v50[4] = selfCopy;
  v40 = v12;
  v51 = v40;
  v53 = buf;
  v41 = v38;
  v52 = v41;
  [backingStoreContext performBlock:v50];

  v42 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDUserPhotosPersonDataManager *)selfCopy workQueue];
  v44 = [v42 schedulerWithDispatchQueue:workQueue2];
  v45 = [v41 reschedule:v44];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __66__HMDUserPhotosPersonDataManager_updateSettingsModelWithSettings___block_invoke_41;
  v49[3] = &unk_2786714B0;
  v49[4] = selfCopy;
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
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  zoneUUID = [(HMDUserPhotosPersonDataManager *)self zoneUUID];
  [(HMDUserPhotosPersonDataManager *)self removeCloudDataForZoneUUID:zoneUUID isDueToHomeGraphObjectRemoval:1];
}

- (void)configure
{
  v48[3] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  user = [(HMDUserPhotosPersonDataManager *)self user];
  v5 = user;
  if (user)
  {
    home = [user home];
    if (!home)
    {
      v36 = objc_autoreleasePoolPush();
      selfCopy = self;
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

    messageDispatcher = [(HMDUserPhotosPersonDataManager *)self messageDispatcher];
    v8 = *MEMORY[0x277CD14E0];
    v9 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v48[0] = v9;
    v10 = [HMDXPCMessagePolicy policyWithEntitlements:8197];
    v48[1] = v10;
    v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    v48[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
    [messageDispatcher registerForMessage:v8 receiver:self policies:v12 selector:sel_handleUpdatePersonManagerSettingsMessage_];

    v13 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v13 setRoles:{objc_msgSend(v13, "roles") | 4}];
    messageDispatcher2 = [(HMDUserPhotosPersonDataManager *)self messageDispatcher];
    v15 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v47[0] = v15;
    v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
    v47[1] = v16;
    v47[2] = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
    [messageDispatcher2 registerForMessage:@"HMDUPPM.m.updateOwnerSettings" receiver:self policies:v17 selector:sel_handleUpdatePersonManagerOwnerSettingsMessage_];

    notificationCenter = [(HMDUserPhotosPersonDataManager *)self notificationCenter];
    [notificationCenter addObserver:self selector:sel_handleUserCamerasAccessLevelDidChangeNotification_ name:@"HMDUserCamerasAccessLevelDidChangeNotification" object:v5];

    notificationCenter2 = [(HMDUserPhotosPersonDataManager *)self notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handleUserRemoteAccessDidChangeNotification_ name:@"HMDUserRemoteAccessDidChangeNotification" object:v5];

    notificationCenter3 = [(HMDUserPhotosPersonDataManager *)self notificationCenter];
    [notificationCenter3 addObserver:self selector:sel_handleHomePersonManagerSettingsDidChangeNotification_ name:@"HMDHomePersonManagerSettingsDidChangeNotification" object:home];

    if (![(HMDUserPhotosPersonDataManager *)self shouldUseUserModelForSettings])
    {
      cloudTransform = [(HMDUserPhotosPersonDataManager *)self cloudTransform];
      v22 = +[MKFCKSharedUserDataRoot entity];
      v46 = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      [cloudTransform registerCloudChangeListener:self forEntities:v23];
    }

    persistedSettingsModel = [(HMDUserPhotosPersonDataManager *)self persistedSettingsModel];
    if (persistedSettingsModel)
    {
      [(HMDUserPhotosPersonDataManager *)self setSettingsModel:persistedSettingsModel];
      v25 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        settingsModel = [(HMDUserPhotosPersonDataManager *)selfCopy2 settingsModel];
        createSettings = [settingsModel createSettings];
        v42 = 138543618;
        v43 = v28;
        v44 = 2112;
        v45 = createSettings;
        v31 = "%{public}@Initialized photos person data manager with settings: %@";
LABEL_16:
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, v31, &v42, 0x16u);
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        settingsModel = [(HMDUserPhotosPersonDataManager *)selfCopy3 settingsModel];
        createSettings = [settingsModel createSettings];
        v42 = 138543618;
        v43 = v28;
        v44 = 2112;
        v45 = createSettings;
        v31 = "%{public}@Initialized photos person data manager with default settings: %@";
        goto LABEL_16;
      }
    }

    objc_autoreleasePoolPop(v25);
    [(HMDUserPhotosPersonDataManager *)self configurePhotosPersonManagerWithSettingsModel:persistedSettingsModel];

LABEL_18:
    goto LABEL_19;
  }

  v32 = objc_autoreleasePoolPush();
  selfCopy4 = self;
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
  settingsModel = [(HMDUserPhotosPersonDataManager *)self settingsModel];
  zoneUUID = [settingsModel zoneUUID];

  return zoneUUID;
}

- (HMPhotosPersonManagerSettings)settings
{
  settingsModel = [(HMDUserPhotosPersonDataManager *)self settingsModel];
  createSettings = [settingsModel createSettings];

  return createSettings;
}

- (HMDUserPhotosPersonDataManager)initWithUser:(id)user messageDispatcher:(id)dispatcher backingStoreContext:(id)context cloudTransform:(id)transform workQueue:(id)queue supportsFaceClassification:(BOOL)classification notificationCenter:(id)center cloudPhotosSettingObserver:(id)self0
{
  userCopy = user;
  dispatcherCopy = dispatcher;
  contextCopy = context;
  transformCopy = transform;
  queueCopy = queue;
  centerCopy = center;
  observerCopy = observer;
  if (!userCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dispatcherCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!contextCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!queueCopy)
  {
LABEL_11:
    v33 = _HMFPreconditionFailure();
    return __183__HMDUserPhotosPersonDataManager_initWithUser_messageDispatcher_backingStoreContext_cloudTransform_workQueue_supportsFaceClassification_notificationCenter_cloudPhotosSettingObserver___block_invoke(v33);
  }

  v35 = observerCopy;
  v39.receiver = self;
  v39.super_class = HMDUserPhotosPersonDataManager;
  v19 = [(HMDUserPhotosPersonDataManager *)&v39 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_workQueue, queue);
    uuid = [userCopy uuid];
    userUUID = v20->_userUUID;
    v20->_userUUID = uuid;

    home = [userCopy home];
    uuid2 = [home uuid];
    homeUUID = v20->_homeUUID;
    v20->_homeUUID = uuid2;

    objc_storeStrong(&v20->_messageDispatcher, dispatcher);
    objc_storeStrong(&v20->_backingStoreContext, context);
    objc_storeStrong(&v20->_cloudTransform, transform);
    objc_storeWeak(&v20->_user, userCopy);
    v20->_supportsFaceClassification = classification;
    objc_storeStrong(&v20->_notificationCenter, center);
    objc_storeStrong(&v20->_cloudPhotosSettingObserver, observer);
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

- (HMDUserPhotosPersonDataManager)initWithUser:(id)user messageDispatcher:(id)dispatcher backingStoreContext:(id)context workQueue:(id)queue
{
  queueCopy = queue;
  contextCopy = context;
  dispatcherCopy = dispatcher;
  userCopy = user;
  v14 = +[HMDCoreDataCloudTransform sharedInstance];
  v15 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsFaceClassification = [v15 supportsFaceClassification];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v18 = +[HMDCloudPhotosSettingObserver sharedInstance];
  v19 = [(HMDUserPhotosPersonDataManager *)self initWithUser:userCopy messageDispatcher:dispatcherCopy backingStoreContext:contextCopy cloudTransform:v14 workQueue:queueCopy supportsFaceClassification:supportsFaceClassification notificationCenter:defaultCenter cloudPhotosSettingObserver:v18];

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

+ (id)settingsModelFromSharedUserDataRoot:(id)root
{
  rootCopy = root;
  v4 = [HMDPhotosPersonManagerSettingsModel alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = +[HMDPhotosPersonManagerSettingsModel sentinelParentUUID];
  v7 = [(HMBModel *)v4 initWithModelID:uUID parentModelID:v6];

  photosPersonDataZoneUUID = [rootCopy photosPersonDataZoneUUID];
  [(HMDPhotosPersonManagerSettingsModel *)v7 setZoneUUID:photosPersonDataZoneUUID];

  v9 = MEMORY[0x277CCABB0];
  sharePhotosFaceClassifications = [rootCopy sharePhotosFaceClassifications];

  v11 = [v9 numberWithBool:sharePhotosFaceClassifications];
  [(HMDPhotosPersonManagerSettingsModel *)v7 setSharingFaceClassificationsEnabled:v11];

  return v7;
}

+ (id)settingsModelUUIDWithUUID:(id)d
{
  v3 = MEMORY[0x277CCAD78];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:@"F378F892-E6AD-4A6E-927A-C04D01A75448"];
  v6 = MEMORY[0x277CCAD78];
  data = [v5 data];
  v8 = [v6 hmf_UUIDWithNamespace:dCopy data:data];

  return v8;
}

+ (HMPhotosPersonManagerSettings)defaultSettings
{
  v2 = objc_alloc_init(MEMORY[0x277CD1D00]);

  return v2;
}

@end