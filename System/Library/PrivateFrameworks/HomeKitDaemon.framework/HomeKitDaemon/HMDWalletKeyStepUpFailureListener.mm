@interface HMDWalletKeyStepUpFailureListener
+ (id)logCategory;
- (BOOL)shouldPerformAuditForAccessory:(id)accessory didError:(BOOL)error;
- (HMDHomeManager)homeManager;
- (HMDWalletKeyStepUpFailureListener)initWithHomeManager:(id)manager;
- (HMDWalletKeyStepUpFailureListener)initWithHomeManager:(id)manager libXPCServer:(id)server datasource:(id)datasource;
- (id)accessoryWithReaderGroupSubIdentifierACWG:(id)g;
- (id)reachablePrimaryResidentDeviceForHome:(id)home;
- (void)configure;
- (void)didReceiveEventDictionary:(id)dictionary;
- (void)handleHomeManagerHomeDataLoaded:(id)loaded;
- (void)handleWalletKeyStatusChange;
- (void)handleWalletKeyUpdatedNotification:(id)notification;
@end

@implementation HMDWalletKeyStepUpFailureListener

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)didReceiveEventDictionary:(id)dictionary
{
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy hmf_stringForKey:@"readerIdentifier"];
  v6 = [dictionaryCopy hmf_BOOLForKey:@"isStepUp"];
  v7 = [dictionaryCopy hmf_BOOLForKey:@"didError"];
  v8 = [dictionaryCopy hmf_numberForKey:@"TxType"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v23 = 138544386;
    v24 = v12;
    v25 = 1024;
    *v26 = v7;
    *&v26[4] = 1024;
    *&v26[6] = v6;
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Stockholm StepUp detection payload values: didError: %d, isStepUp: %d, txType: %@, readerIdentifier: %@", &v23, 0x2Cu);
  }

  objc_autoreleasePoolPop(v9);
  if (v6)
  {
    if (v5 && [v5 length] > 0x20)
    {
      v17 = [v5 substringFromIndex:32];
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v21;
        v25 = 2112;
        *v26 = v5;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@StepUp failed for: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      [(HMDWalletKeyStepUpFailureListener *)v19 handleStepUpForReaderGroupSubIdentifier:v17 didError:v7];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = selfCopy;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v16;
        v25 = 2112;
        *v26 = v5;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Missing readerIdentifier: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleWalletKeyUpdatedNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling HMDWalletKeyUpdatedNotification", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDWalletKeyStepUpFailureListener *)selfCopy handleWalletKeyStatusChange];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeManagerHomeDataLoaded:(id)loaded
{
  v12 = *MEMORY[0x277D85DE8];
  loadedCopy = loaded;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling HMDHomeManagerHomeDataLoadedNotification", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDWalletKeyStepUpFailureListener *)selfCopy handleWalletKeyStatusChange];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleWalletKeyStatusChange
{
  v3 = +[HMDPassUpdater shared];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HMDWalletKeyStepUpFailureListener_handleWalletKeyStatusChange__block_invoke;
  v4[3] = &unk_278686028;
  v4[4] = self;
  [v3 hasAtLeastOneWalletKeyWithCompletionHandler:v4];
}

void __64__HMDWalletKeyStepUpFailureListener_handleWalletKeyStatusChange__block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to check if user has at least one wallet key: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v11 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (a2)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v12;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@User has at least one wallet key. Starting listener", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v13 = [*(a1 + 32) libXPCServer];
      [v13 start];
    }

    else
    {
      if (v11)
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v14;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@User has no wallet keys. Stopping listener", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v15 = [*(a1 + 32) libXPCServer];
      [v15 stop];

      v13 = [*(a1 + 32) auditedAccessories];
      [v13 removeAllObjects];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)reachablePrimaryResidentDeviceForHome:(id)home
{
  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];

  capabilities = [primaryResidentDevice capabilities];
  if ([capabilities supportsWalletKey])
  {
    isReachable = [primaryResidentDevice isReachable];

    if (isReachable)
    {
      device = [primaryResidentDevice device];
      goto LABEL_6;
    }
  }

  else
  {
  }

  device = 0;
LABEL_6:

  return device;
}

void __86__HMDWalletKeyStepUpFailureListener_handleStepUpForReaderGroupSubIdentifier_didError___block_invoke(id *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  if (v8)
  {
    v11 = [HMDNIST256Utilities publicKeyExternalRepresentationFromKeyPairExternalRepresentation:v8];
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v15 = v27 = v9;
      v16 = [a1[5] UUID];
      v17 = [a1[6] uuid];
      *buf = 138544130;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v17;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Invoking auditKeysLocallyOrRedispatchWithAccessoryUUID for accessoryUUID: %@, localIssuerKey: %@", buf, 0x2Au);

      v9 = v27;
    }

    objc_autoreleasePoolPop(v12);
    v18 = [a1[7] nfcReaderKeyManager];
    v19 = [v18 accessoryManager];
    v20 = [a1[6] uuid];
    [v19 auditKeysLocallyOrRedispatchWithAccessoryUUID:v20 issuerKey:v11 withFlow:a1[5]];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = a1[4];
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [a1[5] UUID];
      *buf = 138543874;
      v29 = v24;
      v30 = 2112;
      v31 = v25;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create ACWG issuer key with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldPerformAuditForAccessory:(id)accessory didError:(BOOL)error
{
  v31 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (([accessoryCopy supportsACWGProvisioning] & 1) == 0)
  {
    supportsMatterWalletKey = [accessoryCopy supportsMatterWalletKey];
    bOOLValue = [supportsMatterWalletKey BOOLValue];

    if (bOOLValue)
    {
      auditedAccessories = [(HMDWalletKeyStepUpFailureListener *)self auditedAccessories];
      uuid = [accessoryCopy uuid];
      v11 = [auditedAccessories objectForKeyedSubscript:uuid];

      if (v11 && ([MEMORY[0x277CBEAA8] date], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "timeIntervalSinceDate:", v11), v14 = v13, v12, v14 < 3600.0))
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          uuid2 = [accessoryCopy uuid];
          v25 = 138543874;
          v26 = v21;
          v27 = 2112;
          v28 = uuid2;
          v29 = 2048;
          v30 = v14;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Skipping audit for accessory %@ - last audit was %0.1f seconds ago", &v25, 0x20u);
        }

        error = 0;
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v17 = HMFGetOSLogHandle();
        error = 1;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          uuid3 = [accessoryCopy uuid];
          v25 = 138543618;
          v26 = v18;
          v27 = 2112;
          v28 = uuid3;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Accessory %@ is unified access, performing audit", &v25, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v15);
    }

    else
    {
      error = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)accessoryWithReaderGroupSubIdentifierACWG:(id)g
{
  v22 = *MEMORY[0x277D85DE8];
  gCopy = g;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  homeManager = [(HMDWalletKeyStepUpFailureListener *)self homeManager];
  homes = [homeManager homes];

  v7 = [homes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(homes);
      }

      hapAccessories = [*(*(&v17 + 1) + 8 * v10) hapAccessories];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __79__HMDWalletKeyStepUpFailureListener_accessoryWithReaderGroupSubIdentifierACWG___block_invoke;
      v15[3] = &unk_2786830C8;
      v16 = gCopy;
      v12 = [hapAccessories na_firstObjectPassingTest:v15];

      if (v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [homes countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

BOOL __79__HMDWalletKeyStepUpFailureListener_accessoryWithReaderGroupSubIdentifierACWG___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 supportsWalletKey])
  {
    v4 = [v3 readerGroupSubIdentifierACWG];
    if (v4)
    {
      v5 = [v3 readerGroupSubIdentifierACWG];
      v6 = [v5 hmf_hexadecimalStringWithOptions:2];
      v7 = [v6 caseInsensitiveCompare:*(a1 + 32)] == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)configure
{
  libXPCServer = [(HMDWalletKeyStepUpFailureListener *)self libXPCServer];
  [libXPCServer setDelegate:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  homeManager = [(HMDWalletKeyStepUpFailureListener *)self homeManager];
  [defaultCenter addObserver:self selector:sel_handleHomeManagerHomeDataLoaded_ name:@"HMDHomeManagerHomeDataLoadedNotification" object:homeManager];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleWalletKeyUpdatedNotification_ name:@"HMDWalletKeyUpdatedNotification" object:0];
}

- (HMDWalletKeyStepUpFailureListener)initWithHomeManager:(id)manager libXPCServer:(id)server datasource:(id)datasource
{
  managerCopy = manager;
  serverCopy = server;
  datasourceCopy = datasource;
  v16.receiver = self;
  v16.super_class = HMDWalletKeyStepUpFailureListener;
  v11 = [(HMDWalletKeyStepUpFailureListener *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_homeManager, managerCopy);
    objc_storeStrong(&v12->_libXPCServer, server);
    objc_storeStrong(&v12->_dataSource, datasource);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    auditedAccessories = v12->_auditedAccessories;
    v12->_auditedAccessories = dictionary;
  }

  return v12;
}

- (HMDWalletKeyStepUpFailureListener)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v5 = [[HMDLibXPCServer alloc] initWithMachServiceName:@"com.apple.nfcd.xpc.homed.uaevents"];
  v6 = objc_alloc_init(HMDHomeWalletDataSource);
  v7 = [(HMDWalletKeyStepUpFailureListener *)self initWithHomeManager:managerCopy libXPCServer:v5 datasource:v6];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_47171 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_47171, &__block_literal_global_47172);
  }

  v3 = logCategory__hmf_once_v14_47173;

  return v3;
}

void __48__HMDWalletKeyStepUpFailureListener_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_47173;
  logCategory__hmf_once_v14_47173 = v1;
}

@end