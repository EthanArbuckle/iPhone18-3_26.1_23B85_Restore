@interface HMDHomeHindsightCloudShareManager
+ (id)logCategory;
- (BOOL)manager:(id)a3 shouldGrantWriteAccessToUser:(id)a4;
- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4;
- (BOOL)zoneManager:(id)a3 shouldRequestShareInvitationFromUser:(id)a4;
- (HMDHome)home;
- (HMDHomeHindsightCloudShareManager)initWithHome:(id)a3 UUID:(id)a4 workQueue:(id)a5 dataSource:(id)a6 zoneManager:(id)a7;
- (HMDHomeHindsightCloudShareManager)initWithHome:(id)a3 workQueue:(id)a4 dataSource:(id)a5;
- (void)_startZoneManager;
- (void)_synchronize;
- (void)configure;
- (void)synchronize;
- (void)zoneManagerDidCreateZone:(id)a3;
- (void)zoneManagerDidStart:(id)a3;
@end

@implementation HMDHomeHindsightCloudShareManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)zoneManagerDidCreateZone:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Notified that target zone was created", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDHomeHindsightCloudShareManager *)v7 dataSource];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(HMDHomeHindsightCloudShareManager *)v7 dataSource];
    [v12 cloudShareManagerDidCreateZone:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)zoneManagerDidStart:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@HomeKit events zone manager started", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v4 localZone];
  [v10 startUp];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)zoneManager:(id)a3 shouldRequestShareInvitationFromUser:(id)a4
{
  v5 = a4;
  v6 = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  LOBYTE(v6) = [v5 isOwner];
  return v6;
}

- (BOOL)manager:(id)a3 shouldGrantWriteAccessToUser:(id)a4
{
  v5 = a4;
  v6 = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDHomeHindsightCloudShareManager *)self dataSource];
  LOBYTE(v6) = [v7 shouldGrantWriteAccessToUser:v5];

  return v6;
}

- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4
{
  v5 = a4;
  v6 = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDHomeHindsightCloudShareManager *)self dataSource];
  LOBYTE(v6) = [v7 shouldShareWithUser:v5];

  return v6;
}

- (void)_startZoneManager
{
  v3 = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  v5 = [v4 defaultConfiguration];
  v10 = [v5 mutableCopy];

  v6 = [(HMDHomeHindsightCloudShareManager *)self dataSource];
  v7 = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  v8 = [v7 home];
  [v10 setShouldCreateZone:{objc_msgSend(v6, "shouldCreateZoneForHome:", v8)}];

  v9 = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  [v9 startWithConfiguration:v10];
}

- (void)_synchronize
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  v5 = [v4 cloudZone];

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
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
    v12 = [v5 performCloudPullWithOptions:v11];
    v13 = MEMORY[0x277D2C938];
    v14 = [(HMDHomeHindsightCloudShareManager *)v7 workQueue];
    v15 = [v13 schedulerWithDispatchQueue:v14];
    v16 = [v12 reschedule:v15];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__HMDHomeHindsightCloudShareManager__synchronize__block_invoke;
    v20[3] = &unk_278687CC0;
    v20[4] = v7;
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
    [(HMDHomeHindsightCloudShareManager *)v7 _startZoneManager];
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
  v3 = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDHomeHindsightCloudShareManager_synchronize__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)configure
{
  v3 = [(HMDHomeHindsightCloudShareManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  [v4 setDelegate:self];

  v5 = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  [v5 setDataSource:self];

  v6 = [(HMDHomeHindsightCloudShareManager *)self zoneManager];
  [v6 configure];

  [(HMDHomeHindsightCloudShareManager *)self _startZoneManager];
}

- (HMDHomeHindsightCloudShareManager)initWithHome:(id)a3 UUID:(id)a4 workQueue:(id)a5 dataSource:(id)a6 zoneManager:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v13)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  v17 = v16;
  if (!v16)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v14)
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
    v19 = [v13 copy];
    UUID = v18->_UUID;
    v18->_UUID = v19;

    objc_storeStrong(&v18->_workQueue, a5);
    objc_storeStrong(&v18->_zoneManager, a7);
    v21 = MEMORY[0x277CCACA8];
    v22 = [v17 zoneName];
    v23 = [v21 stringWithFormat:@"%@/%@", v13, v22];
    logIdentifier = v18->_logIdentifier;
    v18->_logIdentifier = v23;

    objc_storeWeak(&v18->_home, v12);
    objc_storeStrong(&v18->_dataSource, a6);
  }

  return v18;
}

- (HMDHomeHindsightCloudShareManager)initWithHome:(id)a3 workQueue:(id)a4 dataSource:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      v11 = v10;
      v12 = [v10 zoneUUIDForHome:v8];
      v13 = HMVConfigurationZoneNameForZoneUUID();
      v14 = [HMDDatabaseZoneManager alloc];
      v15 = +[HMDDatabase hindsightDatabase];
      v16 = [(HMDDatabaseZoneManager *)v14 initWithDatabase:v15 zoneName:v13 home:v8 messageTargetUUID:v12 workQueue:v9];

      v17 = [(HMDDatabaseZoneManager *)v16 defaultConfiguration];
      v18 = [v17 mutableCopy];

      [v18 setZoneOwner:{objc_msgSend(v8, "isOwnerUser")}];
      v19 = [v11 minimumHomeKitVersion];
      [v18 setMinimumHomeKitVersion:v19];

      [v18 setShouldCreateZone:0];
      v20 = objc_alloc_init(MEMORY[0x277D170E8]);
      [v20 setShouldSkipCloudPulls:1];
      [v18 setCloudZoneConfiguration:v20];
      [(HMDDatabaseZoneManager *)v16 setDefaultConfiguration:v18];
      v21 = [(HMDHomeHindsightCloudShareManager *)self initWithHome:v8 UUID:v12 workQueue:v9 dataSource:v11 zoneManager:v16];

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