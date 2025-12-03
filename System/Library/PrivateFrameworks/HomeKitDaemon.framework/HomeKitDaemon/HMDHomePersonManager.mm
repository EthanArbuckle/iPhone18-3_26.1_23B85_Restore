@interface HMDHomePersonManager
+ (id)logCategory;
+ (id)zoneNameForZoneUUID:(id)d;
- (BOOL)manager:(id)manager shouldGrantWriteAccessToUser:(id)user;
- (BOOL)manager:(id)manager shouldShareWithUser:(id)user;
- (BOOL)zoneManager:(id)manager shouldRequestShareInvitationFromUser:(id)user;
- (HMDHome)home;
- (HMDHomePersonManager)initWithHome:(id)home zoneUUID:(id)d workQueue:(id)queue;
- (HMDHomePersonManager)initWithUUID:(id)d zoneManager:(id)manager coreDataManager:(id)dataManager dataInterfaces:(id)interfaces workQueue:(id)queue featuresDataSource:(id)source home:(id)home;
- (HMHomePersonManagerSettings)settings;
- (HMIHomePersonManager)hmiPersonManager;
- (void)configureWithHome:(id)home;
- (void)handleUpdatedSettings:(id)settings;
- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)notification;
- (void)handleUserRemoteAccessDidChangeNotification:(id)notification;
@end

@implementation HMDHomePersonManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (BOOL)zoneManager:(id)manager shouldRequestShareInvitationFromUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [userCopy isOwner];
  return workQueue;
}

- (BOOL)manager:(id)manager shouldGrantWriteAccessToUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [userCopy isAdministrator];
  return workQueue;
}

- (BOOL)manager:(id)manager shouldShareWithUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [userCopy hasCameraClipsAccess];
  return workQueue;
}

- (void)handleUserRemoteAccessDidChangeNotification:(id)notification
{
  workQueue = [(HMDPersonManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDHomePersonManager_handleUserRemoteAccessDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __68__HMDHomePersonManager_handleUserRemoteAccessDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneManager];
  [v1 updateShareParticipants];
}

- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)notification
{
  workQueue = [(HMDPersonManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDHomePersonManager_handleUserCamerasAccessLevelDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __74__HMDHomePersonManager_handleUserCamerasAccessLevelDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneManager];
  [v1 updateShareParticipants];
}

- (void)handleUpdatedSettings:(id)settings
{
  v26 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  workQueue = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = settingsCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Home person manager settings changed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDPersonManager *)selfCopy _createOrRemoveZonesForSettings:settingsCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  dataInterfaces = [(HMDPersonManager *)selfCopy dataInterfaces];
  v11 = [dataInterfaces countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(dataInterfaces);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 handleUpdatedSettings:settingsCopy mirrorOutputFuture:0];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [dataInterfaces countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)home
{
  homeCopy = home;
  workQueue = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (homeCopy)
  {
    v10.receiver = self;
    v10.super_class = HMDHomePersonManager;
    [(HMDPersonManager *)&v10 configureWithHome:homeCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleUserCamerasAccessLevelDidChangeNotification_ name:@"HMDUserCamerasAccessLevelDidChangeNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_handleUserRemoteAccessDidChangeNotification_ name:@"HMDUserRemoteAccessDidChangeNotification" object:0];
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    [(HMDHomePersonManager *)v8 settings];
  }
}

- (HMHomePersonManagerSettings)settings
{
  home = [(HMDHomePersonManager *)self home];
  personManagerSettings = [home personManagerSettings];

  return personManagerSettings;
}

- (HMIHomePersonManager)hmiPersonManager
{
  dataInterfaces = [(HMDPersonManager *)self dataInterfaces];
  v3 = [dataInterfaces na_map:&__block_literal_global_117935];
  anyObject = [v3 anyObject];

  return anyObject;
}

id __40__HMDHomePersonManager_hmiPersonManager__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 homePersonManager];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HMDHomePersonManager)initWithUUID:(id)d zoneManager:(id)manager coreDataManager:(id)dataManager dataInterfaces:(id)interfaces workQueue:(id)queue featuresDataSource:(id)source home:(id)home
{
  v18.receiver = self;
  v18.super_class = HMDHomePersonManager;
  homeCopy = home;
  v16 = [(HMDPersonManager *)&v18 initWithUUID:d zoneManager:manager coreDataManager:dataManager dataInterfaces:interfaces workQueue:queue featuresDataSource:source];
  objc_storeWeak(&v16->_home, homeCopy);

  return v16;
}

- (HMDHomePersonManager)initWithHome:(id)home zoneUUID:(id)d workQueue:(id)queue
{
  homeCopy = home;
  queueCopy = queue;
  v10 = MEMORY[0x277CD1AA8];
  dCopy = d;
  uuid = [homeCopy uuid];
  v13 = [v10 personManagerUUIDFromHomeUUID:uuid];

  v14 = [MEMORY[0x277CBEB58] set];
  v15 = +[HMDDeviceCapabilities deviceCapabilities];
  if (![(HMDHomeAIHomePersonDataInterface *)v15 supportsFaceClassification])
  {
    goto LABEL_4;
  }

  isOwnerUser = [homeCopy isOwnerUser];

  if (isOwnerUser)
  {
    v17 = [HMDHomeAIHomePersonDataInterface alloc];
    uuid2 = [homeCopy uuid];
    v15 = [(HMDHomeAIHomePersonDataInterface *)v17 initWithPersonManagerUUID:v13 homeUUID:uuid2 workQueue:queueCopy];

    [v14 addObject:v15];
LABEL_4:
  }

  v19 = [HMDHomeKitPersonDataInterface alloc];
  msgDispatcher = [homeCopy msgDispatcher];
  v21 = [(HMDHomeKitPersonDataInterface *)v19 initWithUUID:v13 messageDispatcher:msgDispatcher workQueue:queueCopy];
  [v14 addObject:v21];

  v22 = [[HMDRemotePersonDataMessenger alloc] initWithUUID:v13 home:homeCopy workQueue:queueCopy];
  [v14 addObject:v22];

  v23 = [HMDHomePersonManager zoneNameForZoneUUID:dCopy];

  v24 = [HMDDatabaseZoneManager alloc];
  v25 = +[HMDDatabase cameraClipsDatabase];
  v26 = [(HMDDatabaseZoneManager *)v24 initWithDatabase:v25 zoneName:v23 home:homeCopy messageTargetUUID:v13 workQueue:queueCopy];

  defaultConfiguration = [(HMDDatabaseZoneManager *)v26 defaultConfiguration];
  v28 = [defaultConfiguration mutableCopy];

  [v28 setZoneOwner:{objc_msgSend(homeCopy, "isOwnerUser")}];
  v29 = +[HMDHomeKitVersion version7];
  [v28 setMinimumHomeKitVersion:v29];

  [(HMDDatabaseZoneManager *)v26 setDefaultConfiguration:v28];
  v30 = [[HMDPersonCoreDataManager alloc] initWithUUID:v13 workQueue:queueCopy home:homeCopy userUUID:0];
  v31 = +[HMDFeaturesDataSource defaultDataSource];
  v32 = [(HMDHomePersonManager *)self initWithUUID:v13 zoneManager:v26 coreDataManager:v30 dataInterfaces:v14 workQueue:queueCopy featuresDataSource:v31 home:homeCopy];

  return v32;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_117959 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_117959, &__block_literal_global_26_117960);
  }

  v3 = logCategory__hmf_once_v2_117961;

  return v3;
}

void __35__HMDHomePersonManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_117961;
  logCategory__hmf_once_v2_117961 = v1;
}

+ (id)zoneNameForZoneUUID:(id)d
{
  v3 = *MEMORY[0x277CD04B0];
  uUIDString = [d UUIDString];
  v5 = [v3 stringByAppendingString:uUIDString];

  return v5;
}

@end