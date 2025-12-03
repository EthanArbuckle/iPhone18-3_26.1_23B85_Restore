@interface HMDUserPhotosPersonDataManager
+ (HMPhotosPersonManagerSettings)defaultSettings;
+ (id)logCategory;
+ (id)settingsModelUUIDWithUUID:(id)d;
- (HMDUser)user;
- (HMDUserPhotosPersonDataManager)initWithUser:(id)user messageDispatcher:(id)dispatcher localZone:(id)zone workQueue:(id)queue;
- (HMDUserPhotosPersonDataManager)initWithUser:(id)user messageDispatcher:(id)dispatcher localZone:(id)zone workQueue:(id)queue supportsFaceClassification:(BOOL)classification notificationCenter:(id)center cloudPhotosSettingObserver:(id)observer;
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
- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)notification;
- (void)handleUpdatePersonManagerSettingsMessage:(id)message;
- (void)handleUpdatedSettingsModel:(id)model;
- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)notification;
- (void)handleUserRemoteAccessDidChangeNotification:(id)notification;
- (void)recoverDueToUUIDChangeFromOldUUID:(id)d;
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

- (void)handleHomePersonManagerSettingsDidChangeNotification:(id)notification
{
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HMDUserPhotosPersonDataManager_handleHomePersonManagerSettingsDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
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
          _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating settings to default settings since Face Classification was disabled", &v18, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", &v18, 0xCu);
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
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)notification
{
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMDUserPhotosPersonDataManager_handleUserCamerasAccessLevelDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleUpdatePersonManagerSettingsMessage:(id)message
{
  v57 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    *buf = 138543618;
    v54 = v8;
    v55 = 2112;
    v56 = shortDescription;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update person manager settings message: %@", buf, 0x16u);
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
        v52 = objc_opt_class();
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
        v15 = [messageCopy unarchivedObjectForKey:v13 ofClasses:v14];

        if (v15)
        {
          if ([v15 isImportingFromPhotoLibraryEnabled] && (-[HMDUserPhotosPersonDataManager cloudPhotosSettingObserver](selfCopy, "cloudPhotosSettingObserver"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isCloudPhotosEnabled"), v16, (v17 & 1) == 0))
          {
            v43 = objc_autoreleasePoolPush();
            v44 = selfCopy;
            v45 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v46 = HMFGetLogIdentifier();
              *buf = 138543362;
              v54 = v46;
              _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Cannot enable importing from Photo Library because cloud photos is not enabled", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v43);
            v47 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2007];
            [messageCopy respondWithError:v47];
          }

          else
          {
            v18 = [(HMDUserPhotosPersonDataManager *)selfCopy updateSettingsModelWithSettings:v15];
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __75__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerSettingsMessage___block_invoke;
            v50[3] = &unk_279735918;
            v50[4] = selfCopy;
            v19 = messageCopy;
            v51 = v19;
            v20 = [v18 addSuccessBlock:v50];
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __75__HMDUserPhotosPersonDataManager_handleUpdatePersonManagerSettingsMessage___block_invoke_2;
            v48[3] = &unk_2797359D8;
            v49 = v19;
            v21 = [v20 addFailureBlock:v48];
          }
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          v38 = selfCopy;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = HMFGetLogIdentifier();
            messagePayload = [messageCopy messagePayload];
            *buf = 138543618;
            v54 = v40;
            v55 = 2112;
            v56 = messagePayload;
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Could not find photos person manager settings in message payload: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v37);
          v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
          [messageCopy respondWithError:v42];

          v15 = 0;
        }

        goto LABEL_21;
      }

      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v54 = v29;
        v55 = 2112;
        v56 = v11;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Person manager settings cannot be updated for user: %@", buf, 0x16u);
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
        v54 = v35;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v32);
      v30 = MEMORY[0x277CCA9B8];
      v31 = 48;
    }

    v15 = [v30 hmErrorWithCode:v31];
    [messageCopy respondWithError:v15];
LABEL_21:

    goto LABEL_22;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v25;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  home = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  [messageCopy respondWithError:home];
LABEL_22:

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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling updated settings model: %@ previous model: %@", &v39, 0x20u);
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
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings zone UUID changed from %@ to %@. Configuring photos person manager", &v39, 0x20u);
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
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings zone UUID is now nil. Removing photos person manager", &v39, 0xCu);
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
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating settings to default settings since user does not have access to camera clips: %@", &v20, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", &v20, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v23, v24, v22, &v31, v25);
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Configuring photos person manager: %@", &v31, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Not configuring photos person manager because zoneUUID is nil", &v31, 0xCu);
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
                _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Found current user %@ using photos person manager zone UUID: %@", buf, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", buf, 0xCu);
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
  localZone = [(HMDUserPhotosPersonDataManager *)self localZone];
  settingsModelUUID = [(HMDUserPhotosPersonDataManager *)self settingsModelUUID];
  v5 = [localZone fetchModelWithModelID:settingsModelUUID ofType:objc_opt_class() error:0];

  return v5;
}

- (id)settingsModelUUID
{
  v3 = objc_opt_class();
  userUUID = [(HMDUserPhotosPersonDataManager *)self userUUID];
  v5 = [v3 settingsModelUUIDWithUUID:userUUID];

  return v5;
}

- (void)handleUpdatedSettingsModel:(id)model
{
  modelCopy = model;
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDUserPhotosPersonDataManager *)self _handleUpdatedSettingsModel:modelCopy];
}

- (id)updateSettingsModelWithSettings:(id)settings
{
  v46 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v42 = 138543618;
    v43 = v9;
    v44 = 2112;
    v45 = settingsCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating photos person manager settings: %@", &v42, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [HMDPhotosPersonManagerSettingsModel alloc];
  settingsModelUUID = [(HMDUserPhotosPersonDataManager *)selfCopy settingsModelUUID];
  v12 = [(HMDPhotosPersonManagerSettingsModel *)v10 initWithModelID:settingsModelUUID settings:settingsCopy];

  settingsModel = [(HMDUserPhotosPersonDataManager *)selfCopy settingsModel];
  if ([settingsCopy isImportingFromPhotoLibraryEnabled])
  {
    zoneUUID = [settingsModel zoneUUID];

    if (!zoneUUID)
    {
      photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser = [(HMDUserPhotosPersonDataManager *)selfCopy photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser];
      if (photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          v42 = 138543618;
          v43 = v28;
          v44 = 2112;
          v45 = photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Using existing Photo Library person manager zone UUID for current user from another home: %@", &v42, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser];
      }

      else
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:uUID];
      }

      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        zoneUUID2 = [(HMDPhotosPersonManagerSettingsModel *)v12 zoneUUID];
        v42 = 138543618;
        v43 = v33;
        v44 = 2112;
        v45 = zoneUUID2;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Importing from Photo Library is now enabled. Updating settings with new photos person manager zone UUID: %@", &v42, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      goto LABEL_21;
    }
  }

  if (([settingsCopy isImportingFromPhotoLibraryEnabled] & 1) != 0 || (objc_msgSend(settingsModel, "zoneUUID"), v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v42 = 138543362;
      v43 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Importing from Photo Library has not changed. Not changing zone UUID", &v42, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser = [settingsModel zoneUUID];
    [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:photosPersonManagerZoneUUIDForAnyOtherHomeCurrentUser];
LABEL_21:

    goto LABEL_22;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = selfCopy;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v42 = 138543362;
    v43 = v19;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Importing from Photo Library is now disabled. Updating settings to remove zone UUID", &v42, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  [(HMDPhotosPersonManagerSettingsModel *)v12 setZoneUUID:0];
LABEL_22:
  localZone = [(HMDUserPhotosPersonDataManager *)selfCopy localZone];
  v36 = [MEMORY[0x277CBEB98] setWithObject:v12];
  v37 = [MEMORY[0x277D17108] optionsWithLabel:@"Update photos person manager settings"];
  v38 = [localZone addModels:v36 options:v37];
  v39 = [v38 flatMap:&__block_literal_global_39];

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

- (void)removeCloudDataDueToUserRemoval
{
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  zoneUUID = [(HMDUserPhotosPersonDataManager *)self zoneUUID];
  [(HMDUserPhotosPersonDataManager *)self removeCloudDataForZoneUUID:zoneUUID isDueToHomeGraphObjectRemoval:1];
}

- (void)recoverDueToUUIDChangeFromOldUUID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Migrating photos person manager settings to use new user UUID", &v29, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [objc_opt_class() settingsModelUUIDWithUUID:dCopy];
  localZone = [(HMDUserPhotosPersonDataManager *)selfCopy localZone];
  v12 = [localZone fetchModelWithModelID:v10 ofType:objc_opt_class() error:0];

  if (v12)
  {
    v13 = [HMDPhotosPersonManagerSettingsModel alloc];
    settingsModelUUID = [(HMDUserPhotosPersonDataManager *)selfCopy settingsModelUUID];
    v15 = +[HMDPhotosPersonManagerSettingsModel sentinelParentUUID];
    v16 = [(HMBModel *)v13 initWithModelID:settingsModelUUID parentModelID:v15];

    [(HMBModel *)v16 hmbMergeSetPropertiesFromModel:v12];
    localZone2 = [(HMDUserPhotosPersonDataManager *)selfCopy localZone];
    v18 = [MEMORY[0x277CBEB98] setWithObject:v16];
    v19 = MEMORY[0x277CBEB98];
    hmbModelID = [v12 hmbModelID];
    v21 = [v19 setWithObject:hmbModelID];
    v22 = [MEMORY[0x277D17108] optionsWithLabel:@"Migrate photos person manager settings"];
    v23 = [localZone2 addModels:v18 andRemoveModelIDs:v21 options:v22];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@No old settings model exists to migrate", &v29, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v38[3] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserPhotosPersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  user = [(HMDUserPhotosPersonDataManager *)self user];
  v5 = user;
  if (user)
  {
    home = [user home];
    if (!home)
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = HMFGetLogIdentifier();
        v34 = 138543362;
        v35 = v31;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", &v34, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      goto LABEL_16;
    }

    messageDispatcher = [(HMDUserPhotosPersonDataManager *)self messageDispatcher];
    v8 = *MEMORY[0x277CD14E0];
    v9 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v38[0] = v9;
    v10 = [HMDXPCMessagePolicy policyWithEntitlements:8197];
    v38[1] = v10;
    v11 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
    v38[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
    [messageDispatcher registerForMessage:v8 receiver:self policies:v12 selector:sel_handleUpdatePersonManagerSettingsMessage_];

    notificationCenter = [(HMDUserPhotosPersonDataManager *)self notificationCenter];
    [notificationCenter addObserver:self selector:sel_handleUserCamerasAccessLevelDidChangeNotification_ name:@"HMDUserCamerasAccessLevelDidChangeNotification" object:v5];

    notificationCenter2 = [(HMDUserPhotosPersonDataManager *)self notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handleUserRemoteAccessDidChangeNotification_ name:@"HMDUserRemoteAccessDidChangeNotification" object:v5];

    notificationCenter3 = [(HMDUserPhotosPersonDataManager *)self notificationCenter];
    [notificationCenter3 addObserver:self selector:sel_handleHomePersonManagerSettingsDidChangeNotification_ name:@"HMDHomePersonManagerSettingsDidChangeNotification" object:home];

    persistedSettingsModel = [(HMDUserPhotosPersonDataManager *)self persistedSettingsModel];
    if (persistedSettingsModel)
    {
      [(HMDUserPhotosPersonDataManager *)self setSettingsModel:persistedSettingsModel];
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        settingsModel = [(HMDUserPhotosPersonDataManager *)selfCopy2 settingsModel];
        createSettings = [settingsModel createSettings];
        v34 = 138543618;
        v35 = v20;
        v36 = 2112;
        v37 = createSettings;
        v23 = "%{public}@Initialized photos person data manager with settings: %@";
LABEL_14:
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, v23, &v34, 0x16u);
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        settingsModel = [(HMDUserPhotosPersonDataManager *)selfCopy3 settingsModel];
        createSettings = [settingsModel createSettings];
        v34 = 138543618;
        v35 = v20;
        v36 = 2112;
        v37 = createSettings;
        v23 = "%{public}@Initialized photos person data manager with default settings: %@";
        goto LABEL_14;
      }
    }

    objc_autoreleasePoolPop(v17);
    [(HMDUserPhotosPersonDataManager *)self configurePhotosPersonManagerWithSettingsModel:persistedSettingsModel];

LABEL_16:
    goto LABEL_17;
  }

  v24 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = HMFGetLogIdentifier();
    v34 = 138543362;
    v35 = v27;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@User reference is nil", &v34, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
LABEL_17:

  v33 = *MEMORY[0x277D85DE8];
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

- (HMDUserPhotosPersonDataManager)initWithUser:(id)user messageDispatcher:(id)dispatcher localZone:(id)zone workQueue:(id)queue supportsFaceClassification:(BOOL)classification notificationCenter:(id)center cloudPhotosSettingObserver:(id)observer
{
  userCopy = user;
  dispatcherCopy = dispatcher;
  zoneCopy = zone;
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

  if (!zoneCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!queueCopy)
  {
LABEL_11:
    v33 = _HMFPreconditionFailure();
    return __158__HMDUserPhotosPersonDataManager_initWithUser_messageDispatcher_localZone_workQueue_supportsFaceClassification_notificationCenter_cloudPhotosSettingObserver___block_invoke(v33);
  }

  v35 = observerCopy;
  v37.receiver = self;
  v37.super_class = HMDUserPhotosPersonDataManager;
  v19 = [(HMDUserPhotosPersonDataManager *)&v37 init];
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
    objc_storeStrong(&v20->_localZone, zone);
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
    v20->_personManagerFactory = &__block_literal_global_16254;
  }

  return v20;
}

HMDPhotosPersonManager *__158__HMDUserPhotosPersonDataManager_initWithUser_messageDispatcher_localZone_workQueue_supportsFaceClassification_notificationCenter_cloudPhotosSettingObserver___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = [[HMDPhotosPersonManager alloc] initWithUser:v8 zoneUUID:v7 workQueue:v6];

  return v9;
}

- (HMDUserPhotosPersonDataManager)initWithUser:(id)user messageDispatcher:(id)dispatcher localZone:(id)zone workQueue:(id)queue
{
  queueCopy = queue;
  zoneCopy = zone;
  dispatcherCopy = dispatcher;
  userCopy = user;
  v14 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsFaceClassification = [v14 supportsFaceClassification];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v17 = +[HMDCloudPhotosSettingObserver sharedInstance];
  v18 = [(HMDUserPhotosPersonDataManager *)self initWithUser:userCopy messageDispatcher:dispatcherCopy localZone:zoneCopy workQueue:queueCopy supportsFaceClassification:supportsFaceClassification notificationCenter:defaultCenter cloudPhotosSettingObserver:v17];

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t32 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t32, &__block_literal_global_53_16276);
  }

  v3 = logCategory__hmf_once_v33;

  return v3;
}

uint64_t __45__HMDUserPhotosPersonDataManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v33 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
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