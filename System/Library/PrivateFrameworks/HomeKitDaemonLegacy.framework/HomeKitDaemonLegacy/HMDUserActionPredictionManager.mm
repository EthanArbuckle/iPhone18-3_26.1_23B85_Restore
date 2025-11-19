@interface HMDUserActionPredictionManager
- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4;
- (HMBLocalZone)localZone;
- (HMDUserActionPredictionManager)initWithHome:(id)a3;
- (HMDUserActionPredictionManager)initWithZoneManager:(id)a3 workQueue:(id)a4;
- (id)_removeZones;
- (void)configure;
- (void)removeZones;
- (void)setLocalZone:(id)a3;
- (void)zoneManagerDidStart:(id)a3;
- (void)zoneManagerDidStop:(id)a3;
@end

@implementation HMDUserActionPredictionManager

- (void)zoneManagerDidStop:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserActionPredictionManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@User Action zone manager stopped", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDUserActionPredictionManager *)v7 setLocalZone:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)zoneManagerDidStart:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v5 = [(HMDUserActionPredictionManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@User Action zone manager started", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = objc_alloc(MEMORY[0x277D0F770]);
  v11 = MEMORY[0x277CCACA8];
  v12 = MEMORY[0x259C01AE0](v7, a2);
  v13 = [v11 stringWithFormat:@"%@, %s:%ld", v12, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/User/User Action Predictions/HMDUserActionPredictionManager.m", 135];
  v14 = [v10 initWithName:v13];

  v15 = [(HMDUserActionPredictionManager *)v7 zoneManager];
  v16 = [v15 localZone];
  [(HMDUserActionPredictionManager *)v7 setLocalZone:v16];

  v17 = [(HMDUserActionPredictionManager *)v7 localZone];
  [v17 startUp];

  v44 = v14;
  [v14 markWithReason:@"Fetch models from backing store"];
  v18 = [(HMDUserActionPredictionManager *)v7 localZone];
  v51 = 0;
  v19 = [v18 fetchModelsOfType:objc_opt_class() error:&v51];
  v43 = v51;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v19;
  v20 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v48;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v47 + 1) + 8 * i);
        v25 = [(HMDUserActionPredictionManager *)v7 localZone];
        v26 = v7;
        v27 = MEMORY[0x277CBEB98];
        v28 = [v24 hmbModelID];
        v56 = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
        v30 = [v27 setWithArray:v29];
        v31 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove no longer used user action prediction"];
        v32 = [v25 removeModelIDs:v30 options:v31];

        v7 = v26;
      }

      v21 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v21);
  }

  if (v43)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v7;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v36;
      v54 = 2112;
      v55 = v43;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@User Action model fetch failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

  v37 = objc_autoreleasePoolPush();
  v38 = v7;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = HMFGetLogIdentifier();
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(obj, "count")}];
    *buf = 138543618;
    v53 = v40;
    v54 = 2112;
    v55 = v41;
    _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Startup User Action model fetch of %@ existing models is complete", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v37);
  [v44 invalidate];

  v42 = *MEMORY[0x277D85DE8];
}

- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4
{
  v4 = [(HMDUserActionPredictionManager *)self workQueue:a3];
  dispatch_assert_queue_V2(v4);

  return 0;
}

- (id)_removeZones
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserActionPredictionManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Removing all user action prediction manager data", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDUserActionPredictionManager *)v5 zoneManager];
  v9 = [v8 remove];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMBLocalZone)localZone
{
  os_unfair_lock_lock_with_options();
  v3 = self->_localZone;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLocalZone:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  localZone = self->_localZone;
  self->_localZone = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeZones
{
  v3 = [(HMDUserActionPredictionManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDUserActionPredictionManager_removeZones__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)configure
{
  v3 = [(HMDUserActionPredictionManager *)self zoneManager];
  [v3 setDelegate:self];

  v4 = [(HMDUserActionPredictionManager *)self zoneManager];
  [v4 setDataSource:self];

  v5 = [(HMDUserActionPredictionManager *)self zoneManager];
  [v5 configure];

  v6 = [(HMDUserActionPredictionManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDUserActionPredictionManager_configure__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v6, block);
}

void __43__HMDUserActionPredictionManager_configure__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneManager];
  [v1 start];
}

- (HMDUserActionPredictionManager)initWithZoneManager:(id)a3 workQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HMDUserActionPredictionManager;
  v9 = [(HMDUserActionPredictionManager *)&v13 init];
  if (v9)
  {
    v10 = [v7 defaultConfiguration];
    v11 = [v10 mutableCopy];

    [v11 setZoneOwner:1];
    [v11 setShouldCreateZone:0];
    [v7 setDefaultConfiguration:v11];
    objc_storeStrong(&v9->_workQueue, a4);
    objc_storeStrong(&v9->_zoneManager, a3);
  }

  return v9;
}

- (HMDUserActionPredictionManager)initWithHome:(id)a3
{
  v4 = a3;
  v5 = [v4 workQueue];
  v6 = [v4 uuid];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"9A1A9B9D-BE90-4E26-A5EC-70FE027E74EA"];
    v9 = MEMORY[0x277CCAD78];
    v10 = [v7 UUIDString];
    v11 = [v10 dataUsingEncoding:4];
    v12 = [v9 hmf_UUIDWithNamespace:v8 data:v11];

    v13 = [v12 UUIDString];
    v14 = [@"user-action-prediction-data-" stringByAppendingString:v13];

    v15 = [HMDDatabaseZoneManager alloc];
    v16 = +[HMDDatabase defaultDatabase];
    v17 = [(HMDDatabaseZoneManager *)v15 initWithDatabase:v16 zoneName:v14 home:v4 messageTargetUUID:v12 workQueue:v5];

    v18 = [(HMDUserActionPredictionManager *)self initWithZoneManager:v17 workQueue:v5];
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