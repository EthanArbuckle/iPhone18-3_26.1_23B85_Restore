@interface HMDUserActionPredictionManager
- (BOOL)manager:(id)manager shouldShareWithUser:(id)user;
- (HMBLocalZone)localZone;
- (HMDUserActionPredictionManager)initWithHome:(id)home;
- (HMDUserActionPredictionManager)initWithZoneManager:(id)manager workQueue:(id)queue;
- (id)_removeZones;
- (void)configure;
- (void)removeZones;
- (void)setLocalZone:(id)zone;
- (void)zoneManagerDidStart:(id)start;
- (void)zoneManagerDidStop:(id)stop;
@end

@implementation HMDUserActionPredictionManager

- (void)zoneManagerDidStop:(id)stop
{
  v13 = *MEMORY[0x277D85DE8];
  stopCopy = stop;
  workQueue = [(HMDUserActionPredictionManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@User Action zone manager stopped", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDUserActionPredictionManager *)selfCopy setLocalZone:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)zoneManagerDidStart:(id)start
{
  v62 = *MEMORY[0x277D85DE8];
  startCopy = start;
  workQueue = [(HMDUserActionPredictionManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v57 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@User Action zone manager started", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = objc_alloc(MEMORY[0x277D0F770]);
  v11 = MEMORY[0x277CCACA8];
  v12 = MEMORY[0x22AAD2510](selfCopy, a2);
  v13 = [v11 stringWithFormat:@"%@, %s:%ld", v12, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/User/User Action Predictions/HMDUserActionPredictionManager.m", 135];
  v14 = [v10 initWithName:v13];

  zoneManager = [(HMDUserActionPredictionManager *)selfCopy zoneManager];
  localZone = [zoneManager localZone];
  [(HMDUserActionPredictionManager *)selfCopy setLocalZone:localZone];

  localZone2 = [(HMDUserActionPredictionManager *)selfCopy localZone];
  [localZone2 startUp];

  v48 = v14;
  [v14 markWithReason:@"Fetch models from backing store"];
  localZone3 = [(HMDUserActionPredictionManager *)selfCopy localZone];
  v55 = 0;
  v19 = [localZone3 fetchModelsOfType:objc_opt_class() error:&v55];
  v47 = v55;

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v19;
  v20 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v52;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v52 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v51 + 1) + 8 * i);
        localZone4 = [(HMDUserActionPredictionManager *)selfCopy localZone];
        v26 = selfCopy;
        v27 = MEMORY[0x277CBEB98];
        hmbModelID = [v24 hmbModelID];
        v60 = hmbModelID;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
        v30 = [v27 setWithArray:v29];
        v31 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove no longer used user action prediction"];
        v32 = [localZone4 removeModelIDs:v30 options:v31];

        selfCopy = v26;
      }

      v21 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v21);
  }

  if (v47)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v36;
      v58 = 2112;
      v59 = v47;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@User Action model fetch failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

  v37 = objc_autoreleasePoolPush();
  v38 = selfCopy;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = HMFGetLogIdentifier();
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(obj, "count")}];
    *buf = 138543618;
    v57 = v40;
    v58 = 2112;
    v59 = v41;
    _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Startup User Action model fetch of %@ existing models is complete", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v37);
  [v48 invalidate];
  v42 = objc_autoreleasePoolPush();
  v43 = v38;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543362;
    v57 = v45;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Removing user action prediction zone as its no longer needed in roar", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
  [(HMDUserActionPredictionManager *)v43 removeZones];

  v46 = *MEMORY[0x277D85DE8];
}

- (BOOL)manager:(id)manager shouldShareWithUser:(id)user
{
  v4 = [(HMDUserActionPredictionManager *)self workQueue:manager];
  dispatch_assert_queue_V2(v4);

  return 0;
}

- (id)_removeZones
{
  v14 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDUserActionPredictionManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Removing all user action prediction manager data", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  zoneManager = [(HMDUserActionPredictionManager *)selfCopy zoneManager];
  remove = [zoneManager remove];

  v10 = *MEMORY[0x277D85DE8];

  return remove;
}

- (HMBLocalZone)localZone
{
  os_unfair_lock_lock_with_options();
  v3 = self->_localZone;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLocalZone:(id)zone
{
  zoneCopy = zone;
  os_unfair_lock_lock_with_options();
  localZone = self->_localZone;
  self->_localZone = zoneCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeZones
{
  workQueue = [(HMDUserActionPredictionManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDUserActionPredictionManager_removeZones__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)configure
{
  zoneManager = [(HMDUserActionPredictionManager *)self zoneManager];
  [zoneManager setDelegate:self];

  zoneManager2 = [(HMDUserActionPredictionManager *)self zoneManager];
  [zoneManager2 setDataSource:self];

  zoneManager3 = [(HMDUserActionPredictionManager *)self zoneManager];
  [zoneManager3 configure];

  workQueue = [(HMDUserActionPredictionManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDUserActionPredictionManager_configure__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __43__HMDUserActionPredictionManager_configure__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneManager];
  [v1 start];
}

- (HMDUserActionPredictionManager)initWithZoneManager:(id)manager workQueue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = HMDUserActionPredictionManager;
  v9 = [(HMDUserActionPredictionManager *)&v13 init];
  if (v9)
  {
    defaultConfiguration = [managerCopy defaultConfiguration];
    v11 = [defaultConfiguration mutableCopy];

    [v11 setZoneOwner:1];
    [v11 setShouldCreateZone:0];
    [managerCopy setDefaultConfiguration:v11];
    objc_storeStrong(&v9->_workQueue, queue);
    objc_storeStrong(&v9->_zoneManager, manager);
  }

  return v9;
}

- (HMDUserActionPredictionManager)initWithHome:(id)home
{
  homeCopy = home;
  workQueue = [homeCopy workQueue];
  uuid = [homeCopy uuid];
  if (uuid)
  {
    v7 = uuid;
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"9A1A9B9D-BE90-4E26-A5EC-70FE027E74EA"];
    v9 = MEMORY[0x277CCAD78];
    uUIDString = [v7 UUIDString];
    v11 = [uUIDString dataUsingEncoding:4];
    v12 = [v9 hmf_UUIDWithNamespace:v8 data:v11];

    uUIDString2 = [v12 UUIDString];
    v14 = [@"user-action-prediction-data-" stringByAppendingString:uUIDString2];

    v15 = [HMDDatabaseZoneManager alloc];
    v16 = +[HMDDatabase defaultDatabase];
    v17 = [(HMDDatabaseZoneManager *)v15 initWithDatabase:v16 zoneName:v14 home:homeCopy messageTargetUUID:v12 workQueue:workQueue];

    v18 = [(HMDUserActionPredictionManager *)self initWithZoneManager:v17 workQueue:workQueue];
    return v18;
  }

  else
  {
    v20 = _HMFPreconditionFailure();
    [(HMDHAPAccessoryAdvertisement *)v20 .cxx_destruct];
  }

  return result;
}

@end