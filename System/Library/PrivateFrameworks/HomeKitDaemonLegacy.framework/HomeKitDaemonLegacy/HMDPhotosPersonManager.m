@interface HMDPhotosPersonManager
+ (id)logCategory;
+ (id)zoneNameForZoneUUID:(id)a3;
- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4;
- (BOOL)sharesFaceClassifications;
- (BOOL)zoneManager:(id)a3 shouldRequestShareInvitationFromUser:(id)a4;
- (HMDPhotosPersonManager)initWithUUID:(id)a3 zoneManager:(id)a4 dataInterfaces:(id)a5 workQueue:(id)a6 featuresDataSource:(id)a7 user:(id)a8;
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings changed: %@", buf, 0x16u);
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
  v3 = [v2 na_map:&__block_literal_global_11685];
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

- (HMDPhotosPersonManager)initWithUUID:(id)a3 zoneManager:(id)a4 dataInterfaces:(id)a5 workQueue:(id)a6 featuresDataSource:(id)a7 user:(id)a8
{
  v18.receiver = self;
  v18.super_class = HMDPhotosPersonManager;
  v13 = a8;
  v14 = [(HMDPersonManager *)&v18 initWithUUID:a3 zoneManager:a4 dataInterfaces:a5 workQueue:a6 featuresDataSource:a7];
  objc_storeWeak(&v14->_user, v13);

  v15 = objc_alloc_init(MEMORY[0x277CD1D00]);
  dataUnavailableExternalSettings = v14->_dataUnavailableExternalSettings;
  v14->_dataUnavailableExternalSettings = v15;

  return v14;
}

- (HMDPhotosPersonManager)initWithUser:(id)a3 zoneUUID:(id)a4 workQueue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CD1CF8];
  v11 = a4;
  v12 = [v8 uuid];
  v13 = [v10 personManagerUUIDFromUserUUID:v12];

  v14 = [v8 home];
  v15 = [MEMORY[0x277CBEB58] set];
  v16 = +[HMDDeviceCapabilities deviceCapabilities];
  v17 = [v16 supportsFaceClassification];

  if (v17)
  {
    v18 = [HMDHomeAIPhotosPersonDataInterface alloc];
    v19 = [v14 uuid];
    v20 = [(HMDHomeAIPhotosPersonDataInterface *)v18 initWithPersonManagerUUID:v13 homeUUID:v19 workQueue:v9];

    [v15 addObject:v20];
  }

  if ([v8 isCurrentUser])
  {
    v21 = [[HMDPhotoLibraryPersonImporter alloc] initWithUUID:v13];
    [v15 addObject:v21];
  }

  v22 = [HMDHomeKitPersonDataInterface alloc];
  v23 = [v14 msgDispatcher];
  v24 = [(HMDHomeKitPersonDataInterface *)v22 initWithUUID:v13 messageDispatcher:v23 workQueue:v9];
  [v15 addObject:v24];

  v25 = [[HMDRemotePersonDataMessenger alloc] initWithUUID:v13 home:v14 workQueue:v9];
  [v15 addObject:v25];

  v26 = [HMDPhotosPersonManager zoneNameForZoneUUID:v11];

  v27 = [HMDDatabaseZoneManager alloc];
  v28 = +[HMDDatabase cameraClipsDatabase];
  v29 = [(HMDDatabaseZoneManager *)v27 initWithDatabase:v28 zoneName:v26 home:v14 messageTargetUUID:v13 workQueue:v9];

  v30 = [(HMDDatabaseZoneManager *)v29 defaultConfiguration];
  v31 = [v30 mutableCopy];

  [v31 setZoneOwner:{objc_msgSend(v8, "isCurrentUser")}];
  v32 = +[HMDHomeKitVersion version7];
  [v31 setMinimumHomeKitVersion:v32];

  v33 = [MEMORY[0x277CBEB98] setWithObject:&unk_2866278F8];
  [v31 setRequiredSupportedFeatures:v33];

  [(HMDDatabaseZoneManager *)v29 setDefaultConfiguration:v31];
  v34 = +[HMDFeaturesDataSource defaultDataSource];
  v35 = [(HMDPhotosPersonManager *)self initWithUUID:v13 zoneManager:v29 dataInterfaces:v15 workQueue:v9 featuresDataSource:v34 user:v8];

  return v35;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_11713 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_11713, &__block_literal_global_21_11714);
  }

  v3 = logCategory__hmf_once_v2_11715;

  return v3;
}

uint64_t __37__HMDPhotosPersonManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v2_11715 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)zoneNameForZoneUUID:(id)a3
{
  v3 = *MEMORY[0x277CD0C30];
  v4 = [a3 UUIDString];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

@end