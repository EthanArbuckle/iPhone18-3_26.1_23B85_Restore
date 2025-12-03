@interface HMDHomeHindsightCloudShareManager
+ (id)logCategory;
- (BOOL)manager:(id)manager shouldGrantWriteAccessToUser:(id)user;
- (BOOL)manager:(id)manager shouldShareWithUser:(id)user;
- (BOOL)zoneManager:(id)manager shouldRequestShareInvitationFromUser:(id)user;
- (HMDHome)home;
- (HMDHomeHindsightCloudShareManager)initWithHome:(id)home UUID:(id)d workQueue:(id)queue dataSource:(id)source zoneManager:(id)manager;
- (HMDHomeHindsightCloudShareManager)initWithHome:(id)home workQueue:(id)queue dataSource:(id)source;
- (void)_startZoneManager;
- (void)_synchronize;
- (void)configure;
- (void)synchronize;
- (void)zoneManagerDidCreateZone:(id)zone;
- (void)zoneManagerDidStart:(id)start;
@end

@implementation HMDHomeHindsightCloudShareManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)zoneManagerDidCreateZone:(id)zone
{
  v16 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  workQueue = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notified that target zone was created", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  dataSource = [(HMDHomeHindsightCloudShareManager *)selfCopy dataSource];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    dataSource2 = [(HMDHomeHindsightCloudShareManager *)selfCopy dataSource];
    [dataSource2 cloudShareManagerDidCreateZone:selfCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)zoneManagerDidStart:(id)start
{
  v14 = *MEMORY[0x277D85DE8];
  startCopy = start;
  workQueue = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@HomeKit events zone manager started", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  localZone = [startCopy localZone];
  [localZone startUp];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)zoneManager:(id)manager shouldRequestShareInvitationFromUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [userCopy isOwner];
  return workQueue;
}

- (BOOL)manager:(id)manager shouldGrantWriteAccessToUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDHomeHindsightCloudShareManager *)self dataSource];
  LOBYTE(workQueue) = [dataSource shouldGrantWriteAccessToUser:userCopy];

  return workQueue;
}

- (BOOL)manager:(id)manager shouldShareWithUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDHomeHindsightCloudShareManager *)self dataSource];
  LOBYTE(workQueue) = [dataSource shouldShareWithUser:userCopy];

  return workQueue;
}

- (void)_startZoneManager
{
  workQueue = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  zoneManager = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  defaultConfiguration = [zoneManager defaultConfiguration];
  v10 = [defaultConfiguration mutableCopy];

  dataSource = [(HMDHomeHindsightCloudShareManager *)self dataSource];
  zoneManager2 = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  home = [zoneManager2 home];
  [v10 setShouldCreateZone:{objc_msgSend(dataSource, "shouldCreateZoneForHome:", home)}];

  zoneManager3 = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  [zoneManager3 startWithConfiguration:v10];
}

- (void)_synchronize
{
  v23 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  zoneManager = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  cloudZone = [zoneManager cloudZone];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (cloudZone)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Synchronizing hindsight cloud share manager by performing cloud pull", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [MEMORY[0x277D17108] optionsWithLabel:@"Synchronizing for hindsight cloud share manager"];
    v12 = [cloudZone performCloudPullWithOptions:v11];
    v13 = MEMORY[0x277D2C938];
    workQueue2 = [(HMDHomeHindsightCloudShareManager *)selfCopy workQueue];
    v15 = [v13 schedulerWithDispatchQueue:workQueue2];
    v16 = [v12 reschedule:v15];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__HMDHomeHindsightCloudShareManager__synchronize__block_invoke;
    v20[3] = &unk_278687CC0;
    v20[4] = selfCopy;
    v17 = [v16 addCompletionBlock:v20];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v18;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Synchronizing hindsight cloud share manager by starting zone manager", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDHomeHindsightCloudShareManager *)selfCopy _startZoneManager];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __49__HMDHomeHindsightCloudShareManager__synchronize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Finished performing cloud pull for synchronization", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) _startZoneManager];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)synchronize
{
  workQueue = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDHomeHindsightCloudShareManager_synchronize__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)configure
{
  workQueue = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  zoneManager = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  [zoneManager setDelegate:self];

  zoneManager2 = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  [zoneManager2 setDataSource:self];

  zoneManager3 = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  [zoneManager3 configure];

  [(HMDHomeHindsightCloudShareManager *)self _startZoneManager];
}

- (HMDHomeHindsightCloudShareManager)initWithHome:(id)home UUID:(id)d workQueue:(id)queue dataSource:(id)source zoneManager:(id)manager
{
  homeCopy = home;
  dCopy = d;
  queueCopy = queue;
  sourceCopy = source;
  managerCopy = manager;
  if (!homeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  v17 = managerCopy;
  if (!managerCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!queueCopy)
  {
LABEL_11:
    v26 = _HMFPreconditionFailure();
    return [(HMDHomeHindsightCloudShareManager *)v26 initWithHome:v27 workQueue:v28 dataSource:v29, v30];
  }

  v31.receiver = self;
  v31.super_class = HMDHomeHindsightCloudShareManager;
  v18 = [(HMDHomeHindsightCloudShareManager *)&v31 init];
  if (v18)
  {
    v19 = [dCopy copy];
    UUID = v18->_UUID;
    v18->_UUID = v19;

    objc_storeStrong(&v18->_workQueue, queue);
    objc_storeStrong(&v18->_zoneManager, manager);
    v21 = MEMORY[0x277CCACA8];
    zoneName = [v17 zoneName];
    v23 = [v21 stringWithFormat:@"%@/%@", dCopy, zoneName];
    logIdentifier = v18->_logIdentifier;
    v18->_logIdentifier = v23;

    objc_storeWeak(&v18->_home, homeCopy);
    objc_storeStrong(&v18->_dataSource, source);
  }

  return v18;
}

- (HMDHomeHindsightCloudShareManager)initWithHome:(id)home workQueue:(id)queue dataSource:(id)source
{
  homeCopy = home;
  queueCopy = queue;
  sourceCopy = source;
  if (homeCopy)
  {
    if (queueCopy)
    {
      v11 = sourceCopy;
      v12 = [sourceCopy zoneUUIDForHome:homeCopy];
      v13 = HMVConfigurationZoneNameForZoneUUID();
      v14 = [HMDDatabaseZoneManager alloc];
      v15 = +[HMDDatabase hindsightDatabase];
      v16 = [(HMDDatabaseZoneManager *)v14 initWithDatabase:v15 zoneName:v13 home:homeCopy messageTargetUUID:v12 workQueue:queueCopy];

      defaultConfiguration = [(HMDDatabaseZoneManager *)v16 defaultConfiguration];
      v18 = [defaultConfiguration mutableCopy];

      [v18 setZoneOwner:{objc_msgSend(homeCopy, "isOwnerUser")}];
      minimumHomeKitVersion = [v11 minimumHomeKitVersion];
      [v18 setMinimumHomeKitVersion:minimumHomeKitVersion];

      [v18 setShouldCreateZone:0];
      v20 = objc_alloc_init(MEMORY[0x277D170E8]);
      [v20 setShouldSkipCloudPulls:1];
      [v18 setCloudZoneConfiguration:v20];
      [(HMDDatabaseZoneManager *)v16 setDefaultConfiguration:v18];
      v21 = [(HMDHomeHindsightCloudShareManager *)self initWithHome:homeCopy UUID:v12 workQueue:queueCopy dataSource:v11 zoneManager:v16];

      return v21;
    }
  }

  else
  {
    _HMFPreconditionFailure();
  }

  v23 = _HMFPreconditionFailure();
  return +[(HMDHomeHindsightCloudShareManager *)v23];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_264444 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_264444, &__block_literal_global_264445);
  }

  v3 = logCategory__hmf_once_v6_264446;

  return v3;
}

void __48__HMDHomeHindsightCloudShareManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_264446;
  logCategory__hmf_once_v6_264446 = v1;
}

@end