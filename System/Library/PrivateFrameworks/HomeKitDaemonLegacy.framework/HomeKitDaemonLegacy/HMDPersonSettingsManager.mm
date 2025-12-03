@interface HMDPersonSettingsManager
+ (id)logCategory;
- (BOOL)areClassificationNotificationsEnabledForPersonUUID:(id)d;
- (HMDHome)home;
- (HMDPersonSettingsManager)initWithHome:(id)home localZone:(id)zone dependencyFactory:(id)factory workQueue:(id)queue;
- (HMDPersonSettingsManager)initWithHome:(id)home localZone:(id)zone workQueue:(id)queue;
- (NSURL)personSettingsManagerMigrationFileURL;
- (id)_setClassificationNotificationsEnabled:(id)enabled forPersonUUID:(id)d;
- (id)logIdentifier;
- (void)_handleFetchClassificationNotificationsEnabledForPersonMessage:(id)message;
- (void)_handleSetClassificationNotificationsEnabledForPersonMessage:(id)message;
- (void)_registerForMessages;
- (void)configure;
- (void)remove;
- (void)savePersonManagerSettingsToLocalDiskForMigration;
@end

@implementation HMDPersonSettingsManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  uUID = [(HMDPersonSettingsManager *)self UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (id)_setClassificationNotificationsEnabled:(id)enabled forPersonUUID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  dCopy = d;
  workQueue = [(HMDPersonSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v31 = 138543874;
    v32 = v12;
    v33 = 2112;
    v34 = enabledCopy;
    v35 = 2112;
    v36 = dCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating the HMDPersonSettingsModel with classification notifications enabled: %@, for person with UUID: %@", &v31, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  localZone = [(HMDPersonSettingsManager *)selfCopy localZone];
  v14 = +[HMDPersonSettingsModel sentinelModelUUID];
  v15 = [localZone fetchModelWithModelID:v14 ofType:objc_opt_class() error:0];

  if (!v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Did not find HMDPersonSettingsModel, assuming it has not been created yet", &v31, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v15 = objc_alloc_init(HMDPersonSettingsModel);
  }

  [(HMDPersonSettingsModel *)v15 setClassificationNotificationsEnabled:enabledCopy forPersonUUID:dCopy];
  localZone2 = [(HMDPersonSettingsManager *)selfCopy localZone];
  v21 = [MEMORY[0x277CBEB98] setWithObject:v15];
  v22 = [MEMORY[0x277D17108] optionsWithLabel:@"Update classification notifications settings"];
  v23 = [localZone2 addModels:v21 options:v22];

  v24 = MEMORY[0x277D2C938];
  workQueue2 = [(HMDPersonSettingsManager *)selfCopy workQueue];
  v26 = [v24 schedulerWithDispatchQueue:workQueue2];
  v27 = [v23 reschedule:v26];
  v28 = [v27 flatMap:&__block_literal_global_86842];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)_registerForMessages
{
  v11[2] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDPersonSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = [HMDXPCMessagePolicy policyWithEntitlements:8197];
  home = [(HMDPersonSettingsManager *)self home];
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];

  v11[0] = v4;
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  messageDispatcher = [(HMDPersonSettingsManager *)self messageDispatcher];
  [messageDispatcher registerForMessage:*MEMORY[0x277CD0C18] receiver:self policies:v7 selector:sel__handleFetchClassificationNotificationsEnabledForPersonMessage_];

  messageDispatcher2 = [(HMDPersonSettingsManager *)self messageDispatcher];
  [messageDispatcher2 registerForMessage:*MEMORY[0x277CD0C28] receiver:self policies:v7 selector:sel__handleSetClassificationNotificationsEnabledForPersonMessage_];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetClassificationNotificationsEnabledForPersonMessage:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDPersonSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling update classification notifications enabled for person message with payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy uuidForKey:*MEMORY[0x277CD0C20]];
  v12 = [messageCopy numberForKey:*MEMORY[0x277CD0C10]];
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v25 = v18;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch classification notifications enabled because information is missing from the message payload - personUUID: %@, enabled:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v19];
  }

  else
  {
    v19 = [(HMDPersonSettingsManager *)selfCopy _setClassificationNotificationsEnabled:v12 forPersonUUID:v11];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __89__HMDPersonSettingsManager__handleSetClassificationNotificationsEnabledForPersonMessage___block_invoke;
    v22[3] = &unk_27972E9E0;
    v22[4] = selfCopy;
    v23 = messageCopy;
    v20 = [v19 addCompletionBlock:v22];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __89__HMDPersonSettingsManager__handleSetClassificationNotificationsEnabledForPersonMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      v12 = "%{public}@Responding with error: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v13, v14, v12, &v17, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v11;
    v12 = "%{public}@Responding with success";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 40) respondWithPayload:0 error:v6];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_handleFetchClassificationNotificationsEnabledForPersonMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDPersonSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch classification notifications enabled for person message with payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy uuidForKey:*MEMORY[0x277CD0C20]];
  if (v11)
  {
    v12 = [(HMDPersonSettingsManager *)selfCopy areClassificationNotificationsEnabledForPersonUUID:v11];
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = HMFBooleanToString();
      *buf = 138543618;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Responding with classificationNotificationsEnabledForPerson: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{v12, *MEMORY[0x277CD0C10]}];
    v26 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [messageCopy respondWithPayload:v19];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch classification notifications enabled because we could not find the person UUID in the message payload", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v18];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)savePersonManagerSettingsToLocalDiskForMigration
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Saving person classification settings to disk for migration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  localZone = [(HMDPersonSettingsManager *)selfCopy localZone];
  v8 = +[HMDPersonSettingsModel sentinelModelUUID];
  v9 = [localZone fetchModelWithModelID:v8 ofType:objc_opt_class() error:0];

  faceClassificationNotificationsEnabledByPersonUUID = [v9 faceClassificationNotificationsEnabledByPersonUUID];
  v11 = objc_autoreleasePoolPush();
  if (v9 && faceClassificationNotificationsEnabledByPersonUUID)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v15;
      v37 = 2112;
      v38 = faceClassificationNotificationsEnabledByPersonUUID;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Saving person classification settings %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v34 = 0;
    v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:faceClassificationNotificationsEnabledByPersonUUID requiringSecureCoding:1 error:&v34];
    v17 = v34;
    if (v16)
    {
      personSettingsManagerMigrationFileURL = [(HMDPersonSettingsManager *)v13 personSettingsManagerMigrationFileURL];
      dependencyFactory = [(HMDPersonSettingsManager *)v13 dependencyFactory];
      persistentStore = [dependencyFactory persistentStore];

      path = [personSettingsManagerMigrationFileURL path];
      v22 = [persistentStore writeData:v16 toStorePath:path dataLabel:@"PersonClassificationSettings"];

      context = objc_autoreleasePoolPush();
      v23 = v13;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v25 = v32 = v11;
        *buf = 138543874;
        v36 = v25;
        v37 = 2112;
        v38 = v22;
        v39 = 2112;
        v40 = personSettingsManagerMigrationFileURL;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Saved [%@] bytes to [%@]", buf, 0x20u);

        v11 = v32;
      }

      objc_autoreleasePoolPop(context);
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v13;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v30;
        v37 = 2112;
        v38 = v17;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Nothing to store as there is no data after archiving: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v16 = 0;
    }
  }

  else
  {
    v17 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v26;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@No person classification settings found, skipping", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v11);
  v31 = *MEMORY[0x277D85DE8];
}

- (NSURL)personSettingsManagerMigrationFileURL
{
  v3 = MEMORY[0x277CCACA8];
  v4 = hh1ToHH2PerDeviceMigrationDirectoryPath;
  uUID = [(HMDPersonSettingsManager *)self UUID];
  v6 = [v3 stringWithFormat:@"%@/HMDPersonSettingsManager-%@.plist", v4, uUID];

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];

  return v7;
}

- (void)remove
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Removing person settings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  localZone = [(HMDPersonSettingsManager *)selfCopy localZone];
  v8 = MEMORY[0x277CBEB98];
  v9 = +[HMDPersonSettingsModel sentinelModelUUID];
  v10 = [v8 setWithObject:v9];
  v11 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove Person Settings"];
  v12 = [localZone removeModelIDs:v10 options:v11];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __34__HMDPersonSettingsManager_remove__block_invoke;
  v15[3] = &unk_27972EB40;
  v15[4] = selfCopy;
  v13 = [v12 addCompletionBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __34__HMDPersonSettingsManager_remove__block_invoke(uint64_t a1, void *a2, void *a3)
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
      v17 = 138543362;
      v18 = v11;
      v12 = "%{public}@Successfully removed person settings";
      v13 = v10;
      v14 = OS_LOG_TYPE_INFO;
      v15 = 12;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v13, v14, v12, &v17, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    v12 = "%{public}@Failed to remove person settings with error: %@";
    v13 = v10;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)areClassificationNotificationsEnabledForPersonUUID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching classification notification settings from HMDPersonSettingsModel", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  localZone = [(HMDPersonSettingsManager *)selfCopy localZone];
  v10 = +[HMDPersonSettingsModel sentinelModelUUID];
  v11 = [localZone fetchModelWithModelID:v10 ofType:objc_opt_class() error:0];

  if (v11)
  {
    v12 = [v11 classificationNotificationsEnabledForPersonUUID:dCopy];
    v13 = v12;
    if (v12)
    {
      bOOLValue = [v12 BOOLValue];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = HMFBooleanToString();
        v27 = 138543874;
        v28 = v23;
        v29 = 2112;
        v30 = dCopy;
        v31 = 2112;
        v32 = v24;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@No classification notification setting has been set for person with uuid: %@, so returning default value: %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      bOOLValue = 1;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = HMFBooleanToString();
      v27 = 138543618;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Person settings model does not exist, returning default setting: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    bOOLValue = 1;
  }

  v25 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (void)configure
{
  v11 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDPersonSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Configuring HMDPersonSettingsManager", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDPersonSettingsManager *)selfCopy _registerForMessages];
  v8 = *MEMORY[0x277D85DE8];
}

- (HMDPersonSettingsManager)initWithHome:(id)home localZone:(id)zone dependencyFactory:(id)factory workQueue:(id)queue
{
  homeCopy = home;
  zoneCopy = zone;
  factoryCopy = factory;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = HMDPersonSettingsManager;
  v14 = [(HMDPersonSettingsManager *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_home, homeCopy);
    msgDispatcher = [homeCopy msgDispatcher];
    messageDispatcher = v15->_messageDispatcher;
    v15->_messageDispatcher = msgDispatcher;

    objc_storeStrong(&v15->_dependencyFactory, factory);
    objc_storeStrong(&v15->_workQueue, queue);
    v18 = MEMORY[0x277CD1CF0];
    uuid = [homeCopy uuid];
    v20 = [v18 personSettingsManagerUUIDFromHomeUUID:uuid];
    UUID = v15->_UUID;
    v15->_UUID = v20;

    objc_storeStrong(&v15->_localZone, zone);
  }

  return v15;
}

- (HMDPersonSettingsManager)initWithHome:(id)home localZone:(id)zone workQueue:(id)queue
{
  queueCopy = queue;
  zoneCopy = zone;
  homeCopy = home;
  v11 = objc_alloc_init(HMDPersonSettingsManagerDependencyFactory);
  v12 = [(HMDPersonSettingsManager *)self initWithHome:homeCopy localZone:zoneCopy dependencyFactory:v11 workQueue:queueCopy];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t21_86895 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t21_86895, &__block_literal_global_45);
  }

  v3 = logCategory__hmf_once_v22_86896;

  return v3;
}

uint64_t __39__HMDPersonSettingsManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v22_86896;
  logCategory__hmf_once_v22_86896 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end