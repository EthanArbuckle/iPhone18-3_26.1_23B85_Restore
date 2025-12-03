@interface HMDLaunchHandler
+ (HMDLaunchHandler)sharedHandler;
+ (id)logCategory;
- (HMDLaunchHandler)init;
- (HMDLaunchHandler)initWithRelaunchPlistFileURL:(id)l fileManager:(id)manager jetsamPriorityHandler:(id)handler;
- (void)_setJetsamPriorityElevated:(BOOL)elevated;
- (void)_updateOrRemoveRelaunchPlist;
- (void)deregisterRelaunchClientWithUUID:(id)d;
- (void)registerRelaunchClientWithUUID:(id)d;
- (void)removePersistentRelaunchRegistrationsIfNecessary;
@end

@implementation HMDLaunchHandler

- (void)_setJetsamPriorityElevated:(BOOL)elevated
{
  elevatedCopy = elevated;
  v24 = *MEMORY[0x277D85DE8];
  handlerQueue = [(HMDLaunchHandler *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  if (elevatedCopy)
  {
    v6 = 14;
  }

  else
  {
    v6 = 15;
  }

  jetsamPriorityHandler = [(HMDLaunchHandler *)self jetsamPriorityHandler];
  v8 = jetsamPriorityHandler[2](jetsamPriorityHandler, v6);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMFBooleanToString();
      v18 = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 1024;
      v23 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to set jetsam priority elevated to %@: %d", &v18, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = HMFBooleanToString();
    v18 = 138543618;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Successfully set jetsam priority elevated to %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateOrRemoveRelaunchPlist
{
  v50 = *MEMORY[0x277D85DE8];
  handlerQueue = [(HMDLaunchHandler *)self handlerQueue];
  dispatch_assert_queue_V2(handlerQueue);

  registeredRelaunchClients = [(HMDLaunchHandler *)self registeredRelaunchClients];
  v5 = [registeredRelaunchClients count];

  if (v5)
  {
    v42 = @"KeepAliveClients";
    registeredRelaunchClients2 = [(HMDLaunchHandler *)self registeredRelaunchClients];
    allObjects = [registeredRelaunchClients2 allObjects];
    v43 = allObjects;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];

    fileManager = [(HMDLaunchHandler *)self fileManager];
    relaunchPlistFileURL = [(HMDLaunchHandler *)self relaunchPlistFileURL];
    v40 = 0;
    v11 = [fileManager writeDictionary:v8 toURL:relaunchPlistFileURL error:&v40];
    v12 = v40;

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    v16 = v15;
    if (v11)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        relaunchPlistFileURL2 = [(HMDLaunchHandler *)selfCopy relaunchPlistFileURL];
        *buf = 138543618;
        v45 = v17;
        v46 = 2112;
        v47 = relaunchPlistFileURL2;
        v19 = "%{public}@Successfully wrote relaunch plist file at %@";
        v20 = v16;
        v21 = OS_LOG_TYPE_INFO;
        v22 = 22;
LABEL_11:
        _os_log_impl(&dword_229538000, v20, v21, v19, buf, v22);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      relaunchPlistFileURL2 = [(HMDLaunchHandler *)selfCopy relaunchPlistFileURL];
      *buf = 138543874;
      v45 = v17;
      v46 = 2112;
      v47 = relaunchPlistFileURL2;
      v48 = 2112;
      v49 = v12;
      v19 = "%{public}@Failed to write relaunch plist file at %@: %@";
      v20 = v16;
      v21 = OS_LOG_TYPE_ERROR;
      v22 = 32;
      goto LABEL_11;
    }

    objc_autoreleasePoolPop(v13);
LABEL_17:

    goto LABEL_18;
  }

  fileManager2 = [(HMDLaunchHandler *)self fileManager];
  relaunchPlistFileURL3 = [(HMDLaunchHandler *)self relaunchPlistFileURL];
  v25 = [fileManager2 fileExistsAtURL:relaunchPlistFileURL3];

  if (v25)
  {
    fileManager3 = [(HMDLaunchHandler *)self fileManager];
    relaunchPlistFileURL4 = [(HMDLaunchHandler *)self relaunchPlistFileURL];
    v41 = 0;
    v28 = [fileManager3 removeItemAtURL:relaunchPlistFileURL4 error:&v41];
    v8 = v41;

    v29 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v31 = HMFGetOSLogHandle();
    v32 = v31;
    if (v28)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        relaunchPlistFileURL5 = [(HMDLaunchHandler *)selfCopy2 relaunchPlistFileURL];
        *buf = 138543618;
        v45 = v33;
        v46 = 2112;
        v47 = relaunchPlistFileURL5;
        v35 = "%{public}@Successfully removed relaunch plist file at %@";
        v36 = v32;
        v37 = OS_LOG_TYPE_INFO;
        v38 = 22;
LABEL_15:
        _os_log_impl(&dword_229538000, v36, v37, v35, buf, v38);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      relaunchPlistFileURL5 = [(HMDLaunchHandler *)selfCopy2 relaunchPlistFileURL];
      *buf = 138543874;
      v45 = v33;
      v46 = 2112;
      v47 = relaunchPlistFileURL5;
      v48 = 2112;
      v49 = v8;
      v35 = "%{public}@Failed to remove relaunch plist file at %@: %@";
      v36 = v32;
      v37 = OS_LOG_TYPE_ERROR;
      v38 = 32;
      goto LABEL_15;
    }

    objc_autoreleasePoolPop(v29);
    goto LABEL_17;
  }

LABEL_18:
  v39 = *MEMORY[0x277D85DE8];
}

- (void)deregisterRelaunchClientWithUUID:(id)d
{
  dCopy = d;
  handlerQueue = [(HMDLaunchHandler *)self handlerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HMDLaunchHandler_deregisterRelaunchClientWithUUID___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(handlerQueue, v7);
}

void __53__HMDLaunchHandler_deregisterRelaunchClientWithUUID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v15 = 138543618;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Deregistering client for relaunch: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) registeredRelaunchClients];
  v8 = [*(a1 + 40) UUIDString];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = [*(a1 + 32) registeredRelaunchClients];
    v11 = [*(a1 + 40) UUIDString];
    [v10 removeObject:v11];

    [*(a1 + 32) _updateOrRemoveRelaunchPlist];
    v12 = [*(a1 + 32) registeredRelaunchClients];
    v13 = [v12 count];

    if (!v13)
    {
      [*(a1 + 32) _setJetsamPriorityElevated:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerRelaunchClientWithUUID:(id)d
{
  dCopy = d;
  handlerQueue = [(HMDLaunchHandler *)self handlerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDLaunchHandler_registerRelaunchClientWithUUID___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(handlerQueue, v7);
}

void __51__HMDLaunchHandler_registerRelaunchClientWithUUID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v15 = 138543618;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Registering client for relaunch: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) registeredRelaunchClients];
  v8 = [*(a1 + 40) UUIDString];
  v9 = [v7 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [*(a1 + 32) registeredRelaunchClients];
    v11 = [*(a1 + 40) UUIDString];
    [v10 addObject:v11];

    [*(a1 + 32) _updateOrRemoveRelaunchPlist];
    v12 = [*(a1 + 32) registeredRelaunchClients];
    v13 = [v12 count];

    if (v13 == 1)
    {
      [*(a1 + 32) _setJetsamPriorityElevated:1];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removePersistentRelaunchRegistrationsIfNecessary
{
  handlerQueue = [(HMDLaunchHandler *)self handlerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDLaunchHandler_removePersistentRelaunchRegistrationsIfNecessary__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(handlerQueue, block);
}

void __68__HMDLaunchHandler_removePersistentRelaunchRegistrationsIfNecessary__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Removing persistent relaunch registrations if necessary", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) registeredRelaunchClients];
  v7 = [v6 count];

  if (!v7)
  {
    [*(a1 + 32) _updateOrRemoveRelaunchPlist];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (HMDLaunchHandler)initWithRelaunchPlistFileURL:(id)l fileManager:(id)manager jetsamPriorityHandler:(id)handler
{
  lCopy = l;
  managerCopy = manager;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = HMDLaunchHandler;
  v11 = [(HMDLaunchHandler *)&v22 init];
  if (v11)
  {
    v12 = [lCopy copy];
    relaunchPlistFileURL = v11->_relaunchPlistFileURL;
    v11->_relaunchPlistFileURL = v12;

    objc_storeStrong(&v11->_fileManager, manager);
    v14 = _Block_copy(handlerCopy);
    jetsamPriorityHandler = v11->_jetsamPriorityHandler;
    v11->_jetsamPriorityHandler = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.homed.HMDLaunchHandler", v16);
    handlerQueue = v11->_handlerQueue;
    v11->_handlerQueue = v17;

    v19 = [MEMORY[0x277CBEB58] set];
    registeredRelaunchClients = v11->_registeredRelaunchClients;
    v11->_registeredRelaunchClients = v19;
  }

  return v11;
}

- (HMDLaunchHandler)init
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = launchdAssertionPlistPath;
  v5 = [v3 fileURLWithPath:v4];

  v6 = objc_alloc_init(HMDFileManager);
  v7 = [(HMDLaunchHandler *)self initWithRelaunchPlistFileURL:v5 fileManager:v6 jetsamPriorityHandler:&__block_literal_global_194794];

  return v7;
}

uint64_t __24__HMDLaunchHandler_init__block_invoke()
{
  getpid();

  return memorystatus_control();
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_194803 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_194803, &__block_literal_global_8_194804);
  }

  v3 = logCategory__hmf_once_v10_194805;

  return v3;
}

void __31__HMDLaunchHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_194805;
  logCategory__hmf_once_v10_194805 = v1;
}

+ (HMDLaunchHandler)sharedHandler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HMDLaunchHandler_sharedHandler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedHandler_onceToken_194810 != -1)
  {
    dispatch_once(&sharedHandler_onceToken_194810, block);
  }

  v2 = sharedHandler_sharedHandler;

  return v2;
}

void __33__HMDLaunchHandler_sharedHandler__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedHandler_sharedHandler;
  sharedHandler_sharedHandler = v1;
}

@end