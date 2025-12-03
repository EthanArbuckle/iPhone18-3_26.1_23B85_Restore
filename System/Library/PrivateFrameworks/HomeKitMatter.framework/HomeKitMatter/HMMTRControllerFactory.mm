@interface HMMTRControllerFactory
+ (id)factoryParamsWithCommonStorage;
+ (id)logCategory;
- (BOOL)enabled;
- (HMMTRControllerFactory)initWithWorkQueue:(id)queue factoryParams:(id)params;
- (id)_createControllerForGetter:(id)getter;
- (id)_createControllerUsingCommonStorageWithStartupParams:(id)params;
- (id)_createControllerUsingOwnStorageWithStartupParams:(id)params;
- (id)_createControllerWithStartupParams:(id)params;
- (id)_disableNormalOperation:(BOOL)operation;
- (id)mtrPluginDeviceControllerRegistry;
- (id)mtrPluginSharedInstance;
- (id)stackStorageWithStartupParams:(id)params operationalKeyPairTLV:(id)v;
- (id)wrapperWithName:(id)name startupParams:(id)params entityIdentifier:(id)identifier;
- (void)_removeGetter:(id)getter;
- (void)_restartMatterControllerFactory;
- (void)enableNormalOperationWithToken:(id)token;
- (void)restartNormalOperation;
@end

@implementation HMMTRControllerFactory

- (id)_createControllerUsingOwnStorageWithStartupParams:(id)params
{
  v24 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  controllerParams2 = [paramsCopy controllerParams2];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    fabricID = [paramsCopy fabricID];
    *buf = 138543618;
    v21 = v9;
    v22 = 2112;
    v23 = fabricID;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Creating controller that uses own storage for fabric ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v19 = 0;
  v11 = [objc_alloc(MEMORY[0x277CD5318]) initWithParameters:controllerParams2 error:&v19];
  v12 = v19;
  if (!v11)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v16;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to create controller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_createControllerUsingCommonStorageWithStartupParams:(id)params
{
  v28 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  controllerParams = [paramsCopy controllerParams];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    fabricID = [paramsCopy fabricID];
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = fabricID;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Creating controller that uses common storage for fabric ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  sharedDeviceControllerFactory = [(HMMTRControllerFactory *)selfCopy sharedDeviceControllerFactory];
  v23 = 0;
  v12 = [sharedDeviceControllerFactory createControllerOnExistingFabric:controllerParams error:&v23];
  v13 = v23;
  v14 = v13;
  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v22 = v13;
    v12 = [sharedDeviceControllerFactory createControllerOnNewFabric:controllerParams error:&v22];
    v15 = v22;

    if (!v12)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v19;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to create controller: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v12 = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_createControllerWithStartupParams:(id)params
{
  paramsCopy = params;
  if ([paramsCopy usesCommonStorageDelegate])
  {
    [(HMMTRControllerFactory *)self _createControllerUsingCommonStorageWithStartupParams:paramsCopy];
  }

  else
  {
    [(HMMTRControllerFactory *)self _createControllerUsingOwnStorageWithStartupParams:paramsCopy];
  }
  v5 = ;

  return v5;
}

- (void)_removeGetter:(id)getter
{
  v17 = *MEMORY[0x277D85DE8];
  getterCopy = getter;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = getterCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing controller wrapper: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  controllerWrappers = [(HMMTRControllerFactory *)selfCopy controllerWrappers];
  [controllerWrappers removeObject:getterCopy];

  controllerWrappers2 = [(HMMTRControllerFactory *)selfCopy controllerWrappers];
  v11 = [controllerWrappers2 count];

  if (!v11)
  {
    [(HMMTRControllerFactory *)selfCopy _restartMatterControllerFactory];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_createControllerForGetter:(id)getter
{
  v48 = *MEMORY[0x277D85DE8];
  getterCopy = getter;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    enabled = selfCopy->_enabled;
    v10 = HMFBooleanToString();
    *buf = 138543874;
    v39 = v8;
    v40 = 2112;
    v41 = getterCopy;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating controller for %@ in enabled state: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if (selfCopy->_enabled)
  {
    if (![(HMMTRControllerFactory *)selfCopy matterFactoryRunning])
    {
      [(HMMTRControllerFactory *)selfCopy _restartMatterControllerFactory];
    }

    startupParams = [getterCopy startupParams];
    v12 = [(HMMTRControllerFactory *)selfCopy _createControllerWithStartupParams:startupParams];
    [getterCopy setCachedDeviceController:v12];

    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      name = [getterCopy name];
      cachedDeviceController = [getterCopy cachedDeviceController];
      controllerNodeID = [cachedDeviceController controllerNodeID];
      startupParams2 = [getterCopy startupParams];
      fabricID = [startupParams2 fabricID];
      entityIdentifier = [getterCopy entityIdentifier];
      *buf = 138544386;
      v39 = v16;
      v40 = 2112;
      v41 = name;
      v42 = 2112;
      v43 = controllerNodeID;
      v44 = 2112;
      v45 = fabricID;
      v46 = 2112;
      v47 = entityIdentifier;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@Started Matter controller '%@' with Node ID %@ on fabric ID %@, entity id %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    cachedDeviceController2 = [getterCopy cachedDeviceController];

    if (cachedDeviceController2)
    {
      mtrPluginDeviceControllerRegistry = [(HMMTRControllerFactory *)v14 mtrPluginDeviceControllerRegistry];
      if (mtrPluginDeviceControllerRegistry)
      {
        entityIdentifier2 = [getterCopy entityIdentifier];

        if (entityIdentifier2)
        {
          v25 = objc_autoreleasePoolPush();
          v26 = v14;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = HMFGetLogIdentifier();
            entityIdentifier3 = [getterCopy entityIdentifier];
            *buf = 138543618;
            v39 = v28;
            v40 = 2112;
            v41 = entityIdentifier3;
            _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Registering new device controller entityIdentifier: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v25);
          v30 = objc_opt_respondsToSelector();
          cachedDeviceController3 = [getterCopy cachedDeviceController];
          if (v30)
          {
            entityIdentifier4 = [getterCopy entityIdentifier];
            [mtrPluginDeviceControllerRegistry addDeviceController:cachedDeviceController3 forEntityWithIdentifier:entityIdentifier4];
          }

          else
          {
            [mtrPluginDeviceControllerRegistry addDeviceController:cachedDeviceController3];
          }
        }
      }

      mtrPluginSharedInstance = [(HMMTRControllerFactory *)v14 mtrPluginSharedInstance];
      [mtrPluginSharedInstance start];
    }

    cachedDeviceController4 = [getterCopy cachedDeviceController];
  }

  else
  {
    cachedDeviceController4 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return cachedDeviceController4;
}

- (void)_restartMatterControllerFactory
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(HMMTRControllerFactory *)self usesCommonStorage])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Restarting controller factory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    sharedDeviceControllerFactory = [(HMMTRControllerFactory *)selfCopy sharedDeviceControllerFactory];
    [sharedDeviceControllerFactory stopControllerFactory];
    storage = [(HMMTRControllerFactory *)selfCopy storage];
    [storage clear];

    factoryParams = [(HMMTRControllerFactory *)selfCopy factoryParams];
    v17 = 0;
    v10 = [sharedDeviceControllerFactory startControllerFactory:factoryParams error:&v17];
    v11 = v17;

    if (v10)
    {
      [(HMMTRControllerFactory *)selfCopy setMatterFactoryRunning:1];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v19 = v15;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to start: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)mtrPluginSharedInstance
{
  if (isFeatureMatterRVCEnabled())
  {
    mEMORY[0x277D26750] = [MEMORY[0x277D26750] sharedInstance];
  }

  else
  {
    mEMORY[0x277D26750] = 0;
  }

  return mEMORY[0x277D26750];
}

- (id)mtrPluginDeviceControllerRegistry
{
  if (isFeatureMatterRVCEnabled())
  {
    mEMORY[0x277D26760] = [MEMORY[0x277D26760] sharedInstance];
  }

  else
  {
    mEMORY[0x277D26760] = 0;
  }

  return mEMORY[0x277D26760];
}

- (void)enableNormalOperationWithToken:(id)token
{
  v20 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = tokenCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@Enabling normal operation with token %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  workQueue = [(HMMTRControllerFactory *)selfCopy workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__HMMTRControllerFactory_enableNormalOperationWithToken___block_invoke;
  v14[3] = &unk_2786EF328;
  v14[4] = selfCopy;
  v15 = v6;
  v12 = v6;
  dispatch_async(workQueue, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __57__HMMTRControllerFactory_enableNormalOperationWithToken___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) disablingTokens];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) disablingTokens];
  v4 = [v3 count];

  if (!v4)
  {
    [*(a1 + 32) _setEnabled:1];
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 40);
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Voted normal operation with token %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_disableNormalOperation:(BOOL)operation
{
  v26 = *MEMORY[0x277D85DE8];
  if (!isFeatureMatterRVCEnabled() || operation)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = uUID;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Disabling normal operation with token %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    workQueue = [(HMMTRControllerFactory *)selfCopy workQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __50__HMMTRControllerFactory__disableNormalOperation___block_invoke;
    v20[3] = &unk_2786EF328;
    v20[4] = selfCopy;
    v16 = uUID;
    v21 = v16;
    dispatch_async(workQueue, v20);

    v17 = v21;
    v9 = v16;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Disable controller factory operation ignored", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

void __50__HMMTRControllerFactory__disableNormalOperation___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) disablingTokens];
  [v2 addObject:*(a1 + 40)];

  [*(a1 + 32) _setEnabled:0];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 40);
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Disabled normal operation with token %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)restartNormalOperation
{
  v3 = [(HMMTRControllerFactory *)self _disableNormalOperation:1];
  [(HMMTRControllerFactory *)self enableNormalOperationWithToken:v3];
}

- (id)stackStorageWithStartupParams:(id)params operationalKeyPairTLV:(id)v
{
  v32 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  vCopy = v;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v11;
    v30 = 2112;
    v31 = paramsCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Dumping stack storage for params: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = [paramsCopy ipk];
  [dictionary setObject:v13 forKeyedSubscript:@"IPK"];

  v14 = MEMORY[0x277CD5230];
  rootCertificate = [paramsCopy rootCertificate];
  v16 = [v14 convertX509Certificate:rootCertificate];
  [dictionary setObject:v16 forKeyedSubscript:@"f/1/r"];

  v17 = MEMORY[0x277CD5230];
  operationalCertificate = [paramsCopy operationalCertificate];
  v19 = [v17 convertX509Certificate:operationalCertificate];
  [dictionary setObject:v19 forKeyedSubscript:@"f/1/n"];

  v27 = 0x12C1384002515;
  v28 = 24;
  vendorID = [paramsCopy vendorID];
  LOWORD(operationalCertificate) = [vendorID unsignedShortValue];

  *(&v27 + 3) = operationalCertificate;
  v21 = [MEMORY[0x277CBEA90] dataWithBytes:&v27 length:9];
  [dictionary setObject:v21 forKeyedSubscript:@"f/1/m"];

  [dictionary setObject:vCopy forKeyedSubscript:@"f/1/o"];
  *buf = 0x104013602002415;
  *&buf[8] = 6168;
  v22 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:10];
  [dictionary setObject:v22 forKeyedSubscript:@"g/fidx"];

  v26 = 0x1829625600002615;
  v23 = [MEMORY[0x277CBEA90] dataWithBytes:&v26 length:8];
  [dictionary setObject:v23 forKeyedSubscript:@"g/lkgt"];

  v24 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)wrapperWithName:(id)name startupParams:(id)params entityIdentifier:(id)identifier
{
  v37 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  paramsCopy = params;
  identifierCopy = identifier;
  v11 = [HMMTRControllerWrapper alloc];
  workQueue = [(HMMTRControllerFactory *)self workQueue];
  v13 = [(HMMTRControllerWrapper *)v11 initWithWorkQueue:workQueue factory:self startupParams:paramsCopy name:nameCopy entityIdentifier:identifierCopy];

  workQueue2 = [(HMMTRControllerFactory *)self workQueue];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __73__HMMTRControllerFactory_wrapperWithName_startupParams_entityIdentifier___block_invoke;
  v28 = &unk_2786EF328;
  selfCopy = self;
  v15 = v13;
  v30 = v15;
  dispatch_sync(workQueue2, &v25);

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    fabricID = [paramsCopy fabricID];
    *buf = 138543874;
    v32 = v19;
    v33 = 2112;
    v34 = v15;
    v35 = 2112;
    v36 = fabricID;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@New controller wrapper %@ for fabric ID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = v30;
  v22 = v15;

  v23 = *MEMORY[0x277D85DE8];
  return v15;
}

void __73__HMMTRControllerFactory_wrapperWithName_startupParams_entityIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controllerWrappers];
  [v2 addObject:*(a1 + 40)];
}

- (HMMTRControllerFactory)initWithWorkQueue:(id)queue factoryParams:(id)params
{
  queueCopy = queue;
  paramsCopy = params;
  v25.receiver = self;
  v25.super_class = HMMTRControllerFactory;
  v9 = [(HMMTRControllerFactory *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    if (paramsCopy)
    {
      v11 = objc_alloc_init(HMMTRControllerFactoryStorage);
      storage = v10->_storage;
      v10->_storage = v11;

      v13 = [objc_alloc(MEMORY[0x277CD5330]) initWithStorage:v10->_storage];
      factoryParams = v10->_factoryParams;
      v10->_factoryParams = v13;

      otaProviderDelegate = [paramsCopy otaProviderDelegate];
      [(MTRDeviceControllerFactoryParams *)v10->_factoryParams setOtaProviderDelegate:otaProviderDelegate];

      productAttestationAuthorityCertificates = [paramsCopy productAttestationAuthorityCertificates];
      [(MTRDeviceControllerFactoryParams *)v10->_factoryParams setProductAttestationAuthorityCertificates:productAttestationAuthorityCertificates];

      certificationDeclarationCertificates = [paramsCopy certificationDeclarationCertificates];
      [(MTRDeviceControllerFactoryParams *)v10->_factoryParams setCertificationDeclarationCertificates:certificationDeclarationCertificates];

      port = [paramsCopy port];
      [(MTRDeviceControllerFactoryParams *)v10->_factoryParams setPort:port];

      -[MTRDeviceControllerFactoryParams setShouldStartServer:](v10->_factoryParams, "setShouldStartServer:", [paramsCopy shouldStartServer]);
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    v10->_usesCommonStorage = v19;
    array = [MEMORY[0x277CBEB18] array];
    controllerWrappers = v10->_controllerWrappers;
    v10->_controllerWrappers = array;

    v22 = [MEMORY[0x277CBEB58] set];
    disablingTokens = v10->_disablingTokens;
    v10->_disablingTokens = v22;

    v10->_enabled = 1;
  }

  return v10;
}

- (BOOL)enabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = [(HMMTRControllerFactory *)self workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__HMMTRControllerFactory_enabled__block_invoke;
  v5[3] = &unk_2786EDE38;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t34 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t34, &__block_literal_global_210);
  }

  v3 = logCategory__hmf_once_v35;

  return v3;
}

uint64_t __37__HMMTRControllerFactory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v35 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)factoryParamsWithCommonStorage
{
  v2 = objc_alloc(MEMORY[0x277CD5330]);
  v3 = objc_alloc_init(HMMTRControllerFactoryStorage);
  v4 = [v2 initWithStorage:v3];

  return v4;
}

@end