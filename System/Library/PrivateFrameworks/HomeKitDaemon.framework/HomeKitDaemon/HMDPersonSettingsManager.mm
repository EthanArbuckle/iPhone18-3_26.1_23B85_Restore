@interface HMDPersonSettingsManager
+ (id)_allowedClassesForMigrationSettings;
+ (id)logCategory;
- (BOOL)areClassificationNotificationsEnabledForPersonUUID:(id)a3;
- (HMDHome)home;
- (HMDPersonSettingsManager)initWithHome:(id)a3 backingStoreContext:(id)a4 dependencyFactory:(id)a5 workQueue:(id)a6;
- (HMDPersonSettingsManager)initWithHome:(id)a3 workQueue:(id)a4;
- (NSURL)personSettingsManagerMigrationFileURL;
- (id)_localPersonClassificationSettings;
- (id)_setClassificationNotificationsEnabled:(id)a3 forPersonUUID:(id)a4;
- (id)logIdentifier;
- (void)_handleFetchClassificationNotificationsEnabledForPersonMessage:(id)a3;
- (void)_handleSetClassificationNotificationsEnabledForPersonMessage:(id)a3;
- (void)_maybeMigrateSettings;
- (void)_registerForMessages;
- (void)_removeMigrationSettingsFileFromDisk;
- (void)configure;
- (void)remove;
@end

@implementation HMDPersonSettingsManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDPersonSettingsManager *)self UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)_setClassificationNotificationsEnabled:(id)a3 forPersonUUID:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDPersonSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v31 = v12;
    v32 = 2112;
    v33 = v6;
    v34 = 2112;
    v35 = v7;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating the local person registration with classification notifications enabled: %@, for person with UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDPersonSettingsManager *)v10 backingStoreContext];
  v14 = objc_alloc_init(MEMORY[0x277D2C900]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__HMDPersonSettingsManager__setClassificationNotificationsEnabled_forPersonUUID___block_invoke;
  v25[3] = &unk_278689550;
  v25[4] = v10;
  v26 = v6;
  v27 = v7;
  v28 = v13;
  v29 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v7;
  v18 = v6;
  [v16 performBlock:v25];
  v19 = MEMORY[0x277D2C938];
  v20 = [(HMDPersonSettingsManager *)v10 workQueue];
  v21 = [v19 schedulerWithDispatchQueue:v20];
  v22 = [v15 reschedule:v21];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __81__HMDPersonSettingsManager__setClassificationNotificationsEnabled_forPersonUUID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _localPersonClassificationSettings];
  [*(a1 + 32) _setClassificationNotificationsEnabled:objc_msgSend(*(a1 + 40) personUUID:"BOOLValue") settings:{*(a1 + 48), v2}];
  v3 = *(a1 + 56);
  v12 = 0;
  v4 = [v3 save:&v12];
  v5 = v12;
  if (v4)
  {
    [*(a1 + 64) finishWithNoResult];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 48);
      *buf = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to save person classification settings for person %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 64) finishWithError:v5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [HMDXPCMessagePolicy policyWithEntitlements:8197];
  v5 = [(HMDPersonSettingsManager *)self home];
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:v5 userPrivilege:0 remoteAccessRequired:0];

  v11[0] = v4;
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [(HMDPersonSettingsManager *)self messageDispatcher];
  [v8 registerForMessage:*MEMORY[0x277CD0C18] receiver:self policies:v7 selector:sel__handleFetchClassificationNotificationsEnabledForPersonMessage_];

  v9 = [(HMDPersonSettingsManager *)self messageDispatcher];
  [v9 registerForMessage:*MEMORY[0x277CD0C28] receiver:self policies:v7 selector:sel__handleSetClassificationNotificationsEnabledForPersonMessage_];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetClassificationNotificationsEnabledForPersonMessage:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling update classification notifications enabled for person message with payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 uuidForKey:*MEMORY[0x277CD0C20]];
  v12 = [v4 numberForKey:*MEMORY[0x277CD0C10]];
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
    v16 = v7;
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
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch classification notifications enabled because information is missing from the message payload - personUUID: %@, enabled:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v19];
  }

  else
  {
    v19 = [(HMDPersonSettingsManager *)v7 _setClassificationNotificationsEnabled:v12 forPersonUUID:v11];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __89__HMDPersonSettingsManager__handleSetClassificationNotificationsEnabledForPersonMessage___block_invoke;
    v22[3] = &unk_278681018;
    v22[4] = v7;
    v23 = v4;
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
      _os_log_impl(&dword_229538000, v13, v14, v12, &v17, v15);
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

- (void)_handleFetchClassificationNotificationsEnabledForPersonMessage:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch classification notifications enabled for person message with payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 uuidForKey:*MEMORY[0x277CD0C20]];
  if (v11)
  {
    v12 = [(HMDPersonSettingsManager *)v7 areClassificationNotificationsEnabledForPersonUUID:v11];
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = HMFBooleanToString();
      *buf = 138543618;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Responding with classificationNotificationsEnabledForPerson: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{v12, *MEMORY[0x277CD0C10]}];
    v26 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v4 respondWithPayload:v19];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v7;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch classification notifications enabled because we could not find the person UUID in the message payload", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v18];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_maybeMigrateSettings
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonSettingsManager *)self personSettingsManagerMigrationFileURL];
  v4 = [(HMDPersonSettingsManager *)self dependencyFactory];
  v5 = [v4 fileManager];

  if ([v5 fileExistsAtURL:v3])
  {
    v41 = 0;
    v6 = [v5 dataWithContentsOfURL:v3 options:2 error:&v41];
    v7 = v41;
    if (v6)
    {
      v8 = MEMORY[0x277CCAAC8];
      v9 = [objc_opt_class() _allowedClassesForMigrationSettings];
      v40 = v7;
      v10 = [v8 unarchivedObjectOfClasses:v9 fromData:v6 error:&v40];
      v11 = v40;

      if (v10)
      {
        v12 = v10;
        objc_opt_class();
        v13 = objc_opt_isKindOfClass() & 1;
        if (v13)
        {
          v14 = v12;
        }

        else
        {
          v14 = 0;
        }

        v36 = v14;

        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        v18 = v17;
        if (v13)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v43 = v19;
            v44 = 2112;
            v45 = v12;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Found HH1 classification settings: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          v20 = [(HMDPersonSettingsManager *)v16 backingStoreContext];
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __49__HMDPersonSettingsManager__maybeMigrateSettings__block_invoke;
          v37[3] = &unk_27868A010;
          v37[4] = v16;
          v38 = v12;
          v39 = v20;
          v21 = v20;
          [v21 unsafeSynchronousBlock:v37];
          [(HMDPersonSettingsManager *)v16 _removeMigrationSettingsFileFromDisk];
        }

        else
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543618;
            v43 = v34;
            v44 = 2112;
            v45 = v12;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unarchived data is the wrong type : %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
        }
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v33;
          v44 = 2112;
          v45 = v11;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive from disk : %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
      }

      v7 = v11;
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543874;
        v43 = v29;
        v44 = 2112;
        v45 = v3;
        v46 = 2112;
        v47 = v7;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to read data from file %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v25;
      v44 = 2112;
      v45 = v3;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@HH1 classification settings file does not exist : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __49__HMDPersonSettingsManager__maybeMigrateSettings__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _localPersonClassificationSettings];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__HMDPersonSettingsManager__maybeMigrateSettings__block_invoke_2;
  v14[3] = &unk_278679FD8;
  v3 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v4 = v2;
  v15 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v14];
  v5 = *(a1 + 48);
  v13 = 0;
  v6 = [v5 save:&v13];
  v7 = v13;
  if ((v6 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to save person classification settings during migration: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __49__HMDPersonSettingsManager__maybeMigrateSettings__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 _setClassificationNotificationsEnabled:objc_msgSend(a3 personUUID:"BOOLValue") settings:{v6, *(a1 + 40)}];
}

- (void)_removeMigrationSettingsFileFromDisk
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonSettingsManager *)self personSettingsManagerMigrationFileURL];
  v4 = [(HMDPersonSettingsManager *)self dependencyFactory];
  v5 = [v4 fileManager];
  v12 = 0;
  [v5 removeItemAtURL:v3 error:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error occurred while removing migration settings file from disk : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_localPersonClassificationSettings
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonSettingsManager *)self backingStoreContext];
  v4 = [v3 managedObjectContext];

  [v4 hmd_assertIsExecuting];
  v5 = [(HMDPersonSettingsManager *)self UUID];
  v6 = [MKFLocalPersonClassificationSettings fetchPersonClassificationSettingsForModelID:v5 managedObjectContext:v4];

  if (!v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Person classification settings do not exist, assuming it has not been created yet", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = [[MKFLocalPersonClassificationSettings alloc] initWithContext:v4];
    v11 = [(HMDPersonSettingsManager *)v8 UUID];
    [(MKFLocalPersonClassificationSettings *)v6 setModelID:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSURL)personSettingsManagerMigrationFileURL
{
  v3 = MEMORY[0x277CCACA8];
  v4 = hh1ToHH2PerDeviceMigrationDirectoryPath;
  v5 = [(HMDPersonSettingsManager *)self UUID];
  v6 = [v3 stringWithFormat:@"%@/HMDPersonSettingsManager-%@.plist", v4, v5];

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];

  return v7;
}

- (void)remove
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Removing person settings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDPersonSettingsManager *)v4 backingStoreContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__HMDPersonSettingsManager_remove__block_invoke;
  v10[3] = &unk_27868A750;
  v11 = v7;
  v12 = v4;
  v8 = v7;
  [v8 performBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __34__HMDPersonSettingsManager_remove__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) UUID];
  v4 = [MKFLocalPersonClassificationSettings fetchPersonClassificationSettingsForModelID:v3 managedObjectContext:v2];

  if (v4)
  {
    [v2 deleteObject:v4];
    [*(a1 + 32) save];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@No local person classification settings were found for removal", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)areClassificationNotificationsEnabledForPersonUUID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching classification notification settings from MKFLocalPersonClassificationRegistration", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x2020000000;
  v21 = 1;
  v9 = [(HMDPersonSettingsManager *)v6 backingStoreContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HMDPersonSettingsManager_areClassificationNotificationsEnabledForPersonUUID___block_invoke;
  v14[3] = &unk_278689D20;
  v10 = v4;
  v15 = v10;
  v16 = v6;
  v11 = v9;
  v17 = v11;
  p_buf = &buf;
  [v11 unsafeSynchronousBlock:v14];
  LOBYTE(v9) = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void __79__HMDPersonSettingsManager_areClassificationNotificationsEnabledForPersonUUID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) UUID];
  v4 = [*(a1 + 48) managedObjectContext];
  v5 = [MKFLocalPersonClassificationRegistration fetchPersonClassificationRegistrationForPersonUUID:v2 settingsModelUUID:v3 managedObjectContext:v4];

  if (v5)
  {
    *(*(*(a1 + 56) + 8) + 24) = [v5 enabled];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMFBooleanToString();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Person classification registration settings do not exist, returning default setting: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonSettingsManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Configuring HMDPersonSettingsManager", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDPersonSettingsManager *)v5 _maybeMigrateSettings];
  [(HMDPersonSettingsManager *)v5 _registerForMessages];
  v8 = *MEMORY[0x277D85DE8];
}

- (HMDPersonSettingsManager)initWithHome:(id)a3 backingStoreContext:(id)a4 dependencyFactory:(id)a5 workQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = HMDPersonSettingsManager;
  v14 = [(HMDPersonSettingsManager *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_home, v10);
    v16 = [v10 msgDispatcher];
    messageDispatcher = v15->_messageDispatcher;
    v15->_messageDispatcher = v16;

    objc_storeStrong(&v15->_dependencyFactory, a5);
    objc_storeStrong(&v15->_workQueue, a6);
    v18 = MEMORY[0x277CD1CF0];
    v19 = [v10 uuid];
    v20 = [v18 personSettingsManagerUUIDFromHomeUUID:v19];
    UUID = v15->_UUID;
    v15->_UUID = v20;

    objc_storeStrong(&v15->_backingStoreContext, a4);
  }

  return v15;
}

- (HMDPersonSettingsManager)initWithHome:(id)a3 workQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 backingStore];
  v9 = [v8 context];
  v10 = objc_alloc_init(HMDPersonSettingsManagerDependencyFactory);
  v11 = [(HMDPersonSettingsManager *)self initWithHome:v7 backingStoreContext:v9 dependencyFactory:v10 workQueue:v6];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_131986 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_131986, &__block_literal_global_131987);
  }

  v3 = logCategory__hmf_once_v25_131988;

  return v3;
}

void __39__HMDPersonSettingsManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_131988;
  logCategory__hmf_once_v25_131988 = v1;
}

+ (id)_allowedClassesForMigrationSettings
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:3];
  v4 = [v2 setWithArray:{v3, v7, v8}];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end