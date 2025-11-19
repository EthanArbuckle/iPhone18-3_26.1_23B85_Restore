@interface HMDPhotosPersonManager
+ (id)logCategory;
+ (id)zoneNameForZoneUUID:(id)a3;
- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4;
- (BOOL)sharesFaceClassifications;
- (BOOL)zoneManager:(id)a3 shouldRequestShareInvitationFromUser:(id)a4;
- (HMDPhotosPersonManager)initWithUUID:(id)a3 zoneManager:(id)a4 coreDataManager:(id)a5 dataInterfaces:(id)a6 workQueue:(id)a7 featuresDataSource:(id)a8 user:(id)a9;
- (HMDPhotosPersonManager)initWithUser:(id)a3 zoneUUID:(id)a4 workQueue:(id)a5;
- (HMDUser)user;
- (HMIExternalPersonManager)hmiPersonManager;
- (HMPhotosPersonManagerSettings)settings;
- (void)handleUpdatedSettings:(id)a3;
@end

@implementation HMDPhotosPersonManager

- (HMDUser)user
{
  WeakRetained = objc_loadWeakRetained(&self->_user);

  return WeakRetained;
}

- (BOOL)zoneManager:(id)a3 shouldRequestShareInvitationFromUser:(id)a4
{
  v5 = [(HMDPersonManager *)self workQueue:a3];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDPersonManager *)self zoneManager];
  v7 = [v6 home];
  v8 = [v7 isOwnerUser];

  return v8;
}

- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4
{
  v5 = a4;
  v6 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v6);

  LOBYTE(v6) = [v5 isOwner];
  return v6;
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings changed: %@", buf, 0x16u);
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

- (HMPhotosPersonManagerSettings)settings
{
  v2 = [(HMDPhotosPersonManager *)self user];
  v3 = [v2 photosPersonManagerSettings];

  return v3;
}

- (HMIExternalPersonManager)hmiPersonManager
{
  v2 = [(HMDPersonManager *)self dataInterfaces];
  v3 = [v2 na_map:&__block_literal_global_16195];
  v4 = [v3 anyObject];

  return v4;
}

id __42__HMDPhotosPersonManager_hmiPersonManager__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 photosPersonManager];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)sharesFaceClassifications
{
  v2 = [(HMDPhotosPersonManager *)self settings];
  v3 = [v2 isSharingFaceClassificationsEnabled];

  return v3;
}

- (HMDPhotosPersonManager)initWithUUID:(id)a3 zoneManager:(id)a4 coreDataManager:(id)a5 dataInterfaces:(id)a6 workQueue:(id)a7 featuresDataSource:(id)a8 user:(id)a9
{
  v20.receiver = self;
  v20.super_class = HMDPhotosPersonManager;
  v15 = a9;
  v16 = [(HMDPersonManager *)&v20 initWithUUID:a3 zoneManager:a4 coreDataManager:a5 dataInterfaces:a6 workQueue:a7 featuresDataSource:a8];
  objc_storeWeak(&v16->_user, v15);

  v17 = objc_alloc_init(MEMORY[0x277CD1D00]);
  dataUnavailableExternalSettings = v16->_dataUnavailableExternalSettings;
  v16->_dataUnavailableExternalSettings = v17;

  return v16;
}

- (HMDPhotosPersonManager)initWithUser:(id)a3 zoneUUID:(id)a4 workQueue:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x277CD1CF8];
  v10 = a4;
  v11 = [v7 uuid];
  v12 = [v9 personManagerUUIDFromUserUUID:v11];

  v13 = [v7 home];
  v14 = [MEMORY[0x277CBEB58] set];
  v15 = +[HMDDeviceCapabilities deviceCapabilities];
  v16 = [v15 supportsFaceClassification];

  if (v16)
  {
    v17 = [HMDHomeAIPhotosPersonDataInterface alloc];
    v18 = [v13 uuid];
    v19 = [(HMDHomeAIPhotosPersonDataInterface *)v17 initWithPersonManagerUUID:v12 homeUUID:v18 workQueue:v8];

    [v14 addObject:v19];
  }

  if ([v7 isCurrentUser])
  {
    v20 = [[HMDPhotoLibraryPersonImporter alloc] initWithUUID:v12];
    [v14 addObject:v20];
  }

  v21 = [HMDHomeKitPersonDataInterface alloc];
  v22 = [v13 msgDispatcher];
  v23 = [(HMDHomeKitPersonDataInterface *)v21 initWithUUID:v12 messageDispatcher:v22 workQueue:v8];
  [v14 addObject:v23];

  v24 = [[HMDRemotePersonDataMessenger alloc] initWithUUID:v12 home:v13 workQueue:v8];
  [v14 addObject:v24];

  v38 = [HMDPhotosPersonManager zoneNameForZoneUUID:v10];

  v25 = [HMDDatabaseZoneManager alloc];
  v26 = +[HMDDatabase cameraClipsDatabase];
  v27 = [(HMDDatabaseZoneManager *)v25 initWithDatabase:v26 zoneName:v38 home:v13 messageTargetUUID:v12 workQueue:v8];

  v28 = [(HMDDatabaseZoneManager *)v27 defaultConfiguration];
  v29 = [v28 mutableCopy];

  [v29 setZoneOwner:{objc_msgSend(v7, "isCurrentUser")}];
  v30 = +[HMDHomeKitVersion version7];
  [v29 setMinimumHomeKitVersion:v30];

  v31 = [MEMORY[0x277CBEB98] setWithObject:&unk_283E71B70];
  [v29 setRequiredSupportedFeatures:v31];

  [(HMDDatabaseZoneManager *)v27 setDefaultConfiguration:v29];
  v32 = [HMDPersonCoreDataManager alloc];
  v33 = [v7 uuid];
  v34 = [(HMDPersonCoreDataManager *)v32 initWithUUID:v12 workQueue:v8 home:v13 userUUID:v33];

  v35 = +[HMDFeaturesDataSource defaultDataSource];
  v36 = [(HMDPhotosPersonManager *)self initWithUUID:v12 zoneManager:v27 coreDataManager:v34 dataInterfaces:v14 workQueue:v8 featuresDataSource:v35 user:v7];

  return v36;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_16225 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_16225, &__block_literal_global_22);
  }

  v3 = logCategory__hmf_once_v2_16226;

  return v3;
}

void __37__HMDPhotosPersonManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_16226;
  logCategory__hmf_once_v2_16226 = v1;
}

+ (id)zoneNameForZoneUUID:(id)a3
{
  v3 = *MEMORY[0x277CD0C30];
  v4 = [a3 UUIDString];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

@end