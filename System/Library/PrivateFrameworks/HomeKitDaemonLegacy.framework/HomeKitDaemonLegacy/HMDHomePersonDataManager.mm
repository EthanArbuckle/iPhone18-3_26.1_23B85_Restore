@interface HMDHomePersonDataManager
+ (id)logCategory;
- (HMDHome)home;
- (HMDHomePersonDataManager)initWithHome:(id)home workQueue:(id)queue;
- (id)logIdentifier;
- (id)updateSettingsModelWithSettings:(id)settings;
- (void)configure;
- (void)configurePersonManagerWithZoneUUID:(id)d;
- (void)handleUpdateSettingsMessage:(id)message;
- (void)handleUpdatedSettingsModel:(id)model previousSettingsModel:(id)settingsModel message:(id)message;
- (void)removeCloudDataDueToHomeRemoval;
@end

@implementation HMDHomePersonDataManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  homeUUID = [(HMDHomePersonDataManager *)self homeUUID];
  uUIDString = [homeUUID UUIDString];

  return uUIDString;
}

- (void)handleUpdateSettingsMessage:(id)message
{
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomePersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v37 = v9;
    v38 = 2112;
    v39 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling update person manager settings message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDHomePersonDataManager *)selfCopy home];
  if (home)
  {
    v12 = *MEMORY[0x277CD04A8];
    v35 = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    v14 = [messageCopy unarchivedObjectForKey:v12 ofClasses:v13];

    if (v14)
    {
      v15 = [(HMDHomePersonDataManager *)selfCopy updateSettingsModelWithSettings:v14];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __56__HMDHomePersonDataManager_handleUpdateSettingsMessage___block_invoke;
      v32[3] = &unk_279735918;
      v33 = home;
      v16 = messageCopy;
      v34 = v16;
      v17 = [v15 addSuccessBlock:v32];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __56__HMDHomePersonDataManager_handleUpdateSettingsMessage___block_invoke_2;
      v30[3] = &unk_2797359D8;
      v31 = v16;
      v18 = [v17 addFailureBlock:v30];

      v19 = v33;
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        messagePayload2 = [messageCopy messagePayload];
        *buf = 138543618;
        v37 = v27;
        v38 = 2112;
        v39 = messagePayload2;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find person manager settings in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [messageCopy respondWithError:v19];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v14];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __56__HMDHomePersonDataManager_handleUpdateSettingsMessage___block_invoke(uint64_t a1)
{
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v2 = [*(a1 + 32) personManagerSettings];
  v3 = encodeRootObjectForIncomingXPCMessage(v2, 0);
  [v8 setObject:v3 forKeyedSubscript:*MEMORY[0x277CD04A8]];

  v4 = [*(a1 + 32) personManagerZoneUUID];
  v5 = [v4 UUIDString];
  [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD04C0]];

  v6 = *(a1 + 40);
  v7 = [v8 copy];
  [v6 respondWithPayload:v7];
}

- (void)configurePersonManagerWithZoneUUID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDHomePersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomePersonDataManager *)self home];
  if (home)
  {
    personManagerFactory = [(HMDHomePersonDataManager *)self personManagerFactory];
    workQueue2 = [(HMDHomePersonDataManager *)self workQueue];
    v9 = (personManagerFactory)[2](personManagerFactory, home, dCopy, workQueue2);
    [(HMDHomePersonDataManager *)self setPersonManager:v9];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      personManager = [(HMDHomePersonDataManager *)selfCopy personManager];
      v21 = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = personManager;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Configuring home person manager: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    personManager2 = [(HMDHomePersonDataManager *)selfCopy personManager];
    [personManager2 configureWithHome:home];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedSettingsModel:(id)model previousSettingsModel:(id)settingsModel message:(id)message
{
  v65 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  settingsModelCopy = settingsModel;
  messageCopy = message;
  v11 = [settingsModelCopy copy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = modelCopy;
  }

  v14 = v13;

  v15 = [v14 merge:modelCopy];
  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v14 debugString:1];
    *buf = 138543618;
    v60 = v19;
    v61 = 2112;
    v62 = v20;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Handling updated home person manager settings model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  home = [(HMDHomePersonDataManager *)selfCopy home];
  if (home)
  {
    if ([v14 propertyWasSet:@"zoneUUIDString"])
    {
      createSettings = [v14 createSettings];
      personManagerSettings = [home personManagerSettings];
      v24 = [personManagerSettings isEqual:createSettings];

      v51 = createSettings;
      if ((v24 & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          personManagerSettings2 = [home personManagerSettings];
          *buf = 138543874;
          v60 = v47;
          v61 = 2112;
          v62 = personManagerSettings2;
          v28 = personManagerSettings2;
          v63 = 2112;
          v64 = v51;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Updating home person manager settings from %@ to %@", buf, 0x20u);

          createSettings = v51;
        }

        objc_autoreleasePoolPop(context);
        [home setPersonManagerSettings:createSettings];
      }

      zoneUUID = [v14 zoneUUID];
      contexta = [home personManagerZoneUUID];
      personManagerZoneUUID = [home personManagerZoneUUID];
      v31 = HMFEqualObjects();

      if (v31)
      {
        if (v24)
        {
          [messageCopy respondWithSuccess];
          v33 = contexta;
          v32 = v51;
LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v41 = v46 = messageCopy;
          [home personManagerZoneUUID];
          v42 = v48 = v38;
          *buf = 138543874;
          v60 = v41;
          v61 = 2112;
          v62 = v42;
          v63 = 2112;
          v64 = zoneUUID;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Updating home person manager zone UUID from %@ to %@", buf, 0x20u);

          v38 = v48;
          messageCopy = v46;
        }

        objc_autoreleasePoolPop(v38);
        [home setPersonManagerZoneUUID:zoneUUID];
      }

      transactionResult = [messageCopy transactionResult];
      [transactionResult markChanged];

      workQueue = [(HMDHomePersonDataManager *)selfCopy workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85__HMDHomePersonDataManager_handleUpdatedSettingsModel_previousSettingsModel_message___block_invoke;
      block[3] = &unk_27972F208;
      v53 = zoneUUID;
      v33 = contexta;
      v54 = contexta;
      v55 = selfCopy;
      v56 = home;
      v32 = v51;
      v57 = v51;
      v58 = messageCopy;
      dispatch_async(workQueue, block);

      goto LABEL_23;
    }

    [messageCopy respondWithSuccess];
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = selfCopy;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v60 = v37;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
  }

LABEL_24:

  v45 = *MEMORY[0x277D85DE8];
}

uint64_t __85__HMDHomePersonDataManager_handleUpdatedSettingsModel_previousSettingsModel_message___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
LABEL_4:
    if (*(a1 + 40))
    {
      v3 = objc_autoreleasePoolPush();
      v4 = *(a1 + 48);
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v6;
        _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Home person manager zone UUID is now nil. Removing home person manager", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v3);
      [*(a1 + 48) removeCloudDataDueToHomeGraphObjectRemoval:0];
      goto LABEL_12;
    }

LABEL_8:
    v7 = [*(a1 + 48) personManager];
    [v7 handleUpdatedSettings:*(a1 + 64)];

    goto LABEL_12;
  }

  v2 = *(a1 + 40);
  if (HMFEqualObjects())
  {
    if (*(a1 + 32))
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 48);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = *(a1 + 40);
    v13 = [*(a1 + 56) personManagerZoneUUID];
    v16 = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Home person manager zone UUID changed from %@ to %@. Configuring home person manager", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [*(a1 + 48) removeCloudDataDueToHomeGraphObjectRemoval:0];
  [*(a1 + 48) configurePersonManagerWithZoneUUID:*(a1 + 32)];
LABEL_12:
  result = [*(a1 + 72) respondWithSuccess];
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)updateSettingsModelWithSettings:(id)settings
{
  v50 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  workQueue = [(HMDHomePersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v47 = v10;
    v48 = 2112;
    v49 = settingsCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating home person manager settings: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  home = [(HMDHomePersonDataManager *)selfCopy home];
  v12 = home;
  if (home)
  {
    uuid = [home uuid];
    v14 = [HMDHomePersonManagerSettingsModel defaultModelForHomeUUID:uuid];

    if ([settingsCopy isFaceClassificationEnabled] && (objc_msgSend(v12, "personManagerZoneUUID"), v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      [v14 setZoneUUID:uUID];

      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        zoneUUID = [v14 zoneUUID];
        *buf = 138543618;
        v47 = v31;
        v48 = 2112;
        v49 = zoneUUID;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Face Classification is now enabled. Updating settings with new home person manager zone UUID: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
    }

    else if (([settingsCopy isFaceClassificationEnabled] & 1) == 0)
    {
      personManagerZoneUUID = [v12 personManagerZoneUUID];

      if (personManagerZoneUUID)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = selfCopy;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v47 = v20;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Face Classification is now disabled. Updating settings to remove zone UUID", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
        [v14 setZoneUUID:0];
      }
    }

    v33 = objc_alloc_init(MEMORY[0x277D2C900]);
    v34 = objc_alloc(MEMORY[0x277D0F848]);
    v35 = NSStringFromSelector(a2);
    allMessageDestinations = [MEMORY[0x277D0F820] allMessageDestinations];
    v37 = [v34 initWithName:v35 destination:allMessageDestinations payload:0];

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __60__HMDHomePersonDataManager_updateSettingsModelWithSettings___block_invoke;
    v44[3] = &unk_279734E00;
    v38 = v33;
    v45 = v38;
    [v37 setResponseHandler:v44];
    backingStore = [v12 backingStore];
    v40 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v41 = [backingStore transaction:@"Update home person manager settings" options:v40];

    [v41 add:v14 withMessage:v37];
    [v41 run];
    v26 = v38;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v26 = [v25 futureWithError:v14];
  }

  v42 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __60__HMDHomePersonDataManager_updateSettingsModelWithSettings___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

- (void)removeCloudDataDueToHomeRemoval
{
  workQueue = [(HMDHomePersonDataManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDHomePersonDataManager *)self removeCloudDataDueToHomeGraphObjectRemoval:1];
}

- (void)configure
{
  v31 = *MEMORY[0x277D85DE8];
  home = [(HMDHomePersonDataManager *)self home];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (home)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      personManagerSettings = [home personManagerSettings];
      personManagerZoneUUID = [home personManagerZoneUUID];
      *buf = 138543874;
      v26 = v8;
      v27 = 2112;
      v28 = personManagerSettings;
      v29 = 2112;
      v30 = personManagerZoneUUID;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Initialized home person manager settings: %@, home person manager zone UUID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    personManagerZoneUUID2 = [home personManagerZoneUUID];
    administratorHandler = [home administratorHandler];
    v13 = *MEMORY[0x277CD0688];
    v14 = [HMDXPCMessagePolicy policyWithEntitlements:8197];
    v24[0] = v14;
    v15 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v24[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    [administratorHandler registerForMessage:v13 receiver:selfCopy policies:v16 selector:sel_handleUpdateSettingsMessage_];

    workQueue = [(HMDHomePersonDataManager *)selfCopy workQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __37__HMDHomePersonDataManager_configure__block_invoke;
    v21[3] = &unk_2797359B0;
    v22 = personManagerZoneUUID2;
    v23 = selfCopy;
    v18 = personManagerZoneUUID2;
    dispatch_async(workQueue, v21);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v19;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __37__HMDHomePersonDataManager_configure__block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) configurePersonManagerWithZoneUUID:?];
  }

  return result;
}

- (HMDHomePersonDataManager)initWithHome:(id)home workQueue:(id)queue
{
  homeCopy = home;
  queueCopy = queue;
  if (!homeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = queueCopy;
  if (!queueCopy)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return __51__HMDHomePersonDataManager_initWithHome_workQueue___block_invoke(v15);
  }

  v16.receiver = self;
  v16.super_class = HMDHomePersonDataManager;
  v9 = [(HMDHomePersonDataManager *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    uuid = [homeCopy uuid];
    homeUUID = v10->_homeUUID;
    v10->_homeUUID = uuid;

    objc_storeWeak(&v10->_home, homeCopy);
    personManagerFactory = v10->_personManagerFactory;
    v10->_personManagerFactory = &__block_literal_global_132653;
  }

  return v10;
}

HMDHomePersonManager *__51__HMDHomePersonDataManager_initWithHome_workQueue___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = [[HMDHomePersonManager alloc] initWithHome:v8 zoneUUID:v7 workQueue:v6];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_132665 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_132665, &__block_literal_global_30_132666);
  }

  v3 = logCategory__hmf_once_v19_132667;

  return v3;
}

uint64_t __39__HMDHomePersonDataManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_132667;
  logCategory__hmf_once_v19_132667 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end