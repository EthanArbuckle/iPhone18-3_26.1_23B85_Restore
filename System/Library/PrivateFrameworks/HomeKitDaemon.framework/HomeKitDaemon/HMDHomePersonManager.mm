@interface HMDHomePersonManager
+ (id)logCategory;
+ (id)zoneNameForZoneUUID:(id)a3;
- (BOOL)manager:(id)a3 shouldGrantWriteAccessToUser:(id)a4;
- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4;
- (BOOL)zoneManager:(id)a3 shouldRequestShareInvitationFromUser:(id)a4;
- (HMDHome)home;
- (HMDHomePersonManager)initWithHome:(id)a3 zoneUUID:(id)a4 workQueue:(id)a5;
- (HMDHomePersonManager)initWithUUID:(id)a3 zoneManager:(id)a4 coreDataManager:(id)a5 dataInterfaces:(id)a6 workQueue:(id)a7 featuresDataSource:(id)a8 home:(id)a9;
- (HMHomePersonManagerSettings)settings;
- (HMIHomePersonManager)hmiPersonManager;
- (void)configureWithHome:(id)a3;
- (void)handleUpdatedSettings:(id)a3;
- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)a3;
- (void)handleUserRemoteAccessDidChangeNotification:(id)a3;
@end

@implementation HMDHomePersonManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (BOOL)zoneManager:(id)a3 shouldRequestShareInvitationFromUser:(id)a4
{
  v5 = a4;
  v6 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  LOBYTE(v6) = [v5 isOwner];
  return v6;
}

- (BOOL)manager:(id)a3 shouldGrantWriteAccessToUser:(id)a4
{
  v5 = a4;
  v6 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  LOBYTE(v6) = [v5 isAdministrator];
  return v6;
}

- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4
{
  v5 = a4;
  v6 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  LOBYTE(v6) = [v5 hasCameraClipsAccess];
  return v6;
}

- (void)handleUserRemoteAccessDidChangeNotification:(id)a3
{
  v4 = [(HMDPersonManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDHomePersonManager_handleUserRemoteAccessDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __68__HMDHomePersonManager_handleUserRemoteAccessDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneManager];
  [v1 updateShareParticipants];
}

- (void)handleUserCamerasAccessLevelDidChangeNotification:(id)a3
{
  v4 = [(HMDPersonManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDHomePersonManager_handleUserCamerasAccessLevelDidChangeNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __74__HMDHomePersonManager_handleUserCamerasAccessLevelDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneManager];
  [v1 updateShareParticipants];
}

- (void)handleUpdatedSettings:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Home person manager settings changed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDPersonManager *)v7 _createOrRemoveZonesForSettings:v4];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(HMDPersonManager *)v7 dataInterfaces];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 handleUpdatedSettings:v4 mirrorOutputFuture:0];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v10.receiver = self;
    v10.super_class = HMDHomePersonManager;
    [(HMDPersonManager *)&v10 configureWithHome:v4];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel_handleUserCamerasAccessLevelDidChangeNotification_ name:@"HMDUserCamerasAccessLevelDidChangeNotification" object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:self selector:sel_handleUserRemoteAccessDidChangeNotification_ name:@"HMDUserRemoteAccessDidChangeNotification" object:0];
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    [(HMDHomePersonManager *)v8 settings];
  }
}

- (HMHomePersonManagerSettings)settings
{
  v2 = [(HMDHomePersonManager *)self home];
  v3 = [v2 personManagerSettings];

  return v3;
}

- (HMIHomePersonManager)hmiPersonManager
{
  v2 = [(HMDPersonManager *)self dataInterfaces];
  v3 = [v2 na_map:&__block_literal_global_117935];
  v4 = [v3 anyObject];

  return v4;
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

- (HMDHomePersonManager)initWithUUID:(id)a3 zoneManager:(id)a4 coreDataManager:(id)a5 dataInterfaces:(id)a6 workQueue:(id)a7 featuresDataSource:(id)a8 home:(id)a9
{
  v18.receiver = self;
  v18.super_class = HMDHomePersonManager;
  v15 = a9;
  v16 = [(HMDPersonManager *)&v18 initWithUUID:a3 zoneManager:a4 coreDataManager:a5 dataInterfaces:a6 workQueue:a7 featuresDataSource:a8];
  objc_storeWeak(&v16->_home, v15);

  return v16;
}

- (HMDHomePersonManager)initWithHome:(id)a3 zoneUUID:(id)a4 workQueue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CD1AA8];
  v11 = a4;
  v12 = [v8 uuid];
  v13 = [v10 personManagerUUIDFromHomeUUID:v12];

  v14 = [MEMORY[0x277CBEB58] set];
  v15 = +[HMDDeviceCapabilities deviceCapabilities];
  if (![(HMDHomeAIHomePersonDataInterface *)v15 supportsFaceClassification])
  {
    goto LABEL_4;
  }

  v16 = [v8 isOwnerUser];

  if (v16)
  {
    v17 = [HMDHomeAIHomePersonDataInterface alloc];
    v18 = [v8 uuid];
    v15 = [(HMDHomeAIHomePersonDataInterface *)v17 initWithPersonManagerUUID:v13 homeUUID:v18 workQueue:v9];

    [v14 addObject:v15];
LABEL_4:
  }

  v19 = [HMDHomeKitPersonDataInterface alloc];
  v20 = [v8 msgDispatcher];
  v21 = [(HMDHomeKitPersonDataInterface *)v19 initWithUUID:v13 messageDispatcher:v20 workQueue:v9];
  [v14 addObject:v21];

  v22 = [[HMDRemotePersonDataMessenger alloc] initWithUUID:v13 home:v8 workQueue:v9];
  [v14 addObject:v22];

  v23 = [HMDHomePersonManager zoneNameForZoneUUID:v11];

  v24 = [HMDDatabaseZoneManager alloc];
  v25 = +[HMDDatabase cameraClipsDatabase];
  v26 = [(HMDDatabaseZoneManager *)v24 initWithDatabase:v25 zoneName:v23 home:v8 messageTargetUUID:v13 workQueue:v9];

  v27 = [(HMDDatabaseZoneManager *)v26 defaultConfiguration];
  v28 = [v27 mutableCopy];

  [v28 setZoneOwner:{objc_msgSend(v8, "isOwnerUser")}];
  v29 = +[HMDHomeKitVersion version7];
  [v28 setMinimumHomeKitVersion:v29];

  [(HMDDatabaseZoneManager *)v26 setDefaultConfiguration:v28];
  v30 = [[HMDPersonCoreDataManager alloc] initWithUUID:v13 workQueue:v9 home:v8 userUUID:0];
  v31 = +[HMDFeaturesDataSource defaultDataSource];
  v32 = [(HMDHomePersonManager *)self initWithUUID:v13 zoneManager:v26 coreDataManager:v30 dataInterfaces:v14 workQueue:v9 featuresDataSource:v31 home:v8];

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

+ (id)zoneNameForZoneUUID:(id)a3
{
  v3 = *MEMORY[0x277CD04B0];
  v4 = [a3 UUIDString];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

@end