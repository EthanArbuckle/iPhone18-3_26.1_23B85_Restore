@interface HMDPhotosPersonManager
+ (id)logCategory;
+ (id)zoneNameForZoneUUID:(id)d;
- (BOOL)manager:(id)manager shouldShareWithUser:(id)user;
- (BOOL)sharesFaceClassifications;
- (BOOL)zoneManager:(id)manager shouldRequestShareInvitationFromUser:(id)user;
- (HMDPhotosPersonManager)initWithUUID:(id)d zoneManager:(id)manager dataInterfaces:(id)interfaces workQueue:(id)queue featuresDataSource:(id)source user:(id)user;
- (HMDPhotosPersonManager)initWithUser:(id)user zoneUUID:(id)d workQueue:(id)queue;
- (HMDUser)user;
- (HMIExternalPersonManager)hmiPersonManager;
- (HMPhotosPersonManagerSettings)settings;
- (void)handleUpdatedSettings:(id)settings;
@end

@implementation HMDPhotosPersonManager

- (HMDUser)user
{
  WeakRetained = objc_loadWeakRetained(&self->_user);

  return WeakRetained;
}

- (BOOL)zoneManager:(id)manager shouldRequestShareInvitationFromUser:(id)user
{
  v5 = [(HMDPersonManager *)self workQueue:manager];
  dispatch_assert_queue_V2(v5);

  zoneManager = [(HMDPersonManager *)self zoneManager];
  home = [zoneManager home];
  isOwnerUser = [home isOwnerUser];

  return isOwnerUser;
}

- (BOOL)manager:(id)manager shouldShareWithUser:(id)user
{
  userCopy = user;
  workQueue = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LOBYTE(workQueue) = [userCopy isOwner];
  return workQueue;
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings changed: %@", buf, 0x16u);
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

- (HMPhotosPersonManagerSettings)settings
{
  user = [(HMDPhotosPersonManager *)self user];
  photosPersonManagerSettings = [user photosPersonManagerSettings];

  return photosPersonManagerSettings;
}

- (HMIExternalPersonManager)hmiPersonManager
{
  dataInterfaces = [(HMDPersonManager *)self dataInterfaces];
  v3 = [dataInterfaces na_map:&__block_literal_global_11685];
  anyObject = [v3 anyObject];

  return anyObject;
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
  settings = [(HMDPhotosPersonManager *)self settings];
  isSharingFaceClassificationsEnabled = [settings isSharingFaceClassificationsEnabled];

  return isSharingFaceClassificationsEnabled;
}

- (HMDPhotosPersonManager)initWithUUID:(id)d zoneManager:(id)manager dataInterfaces:(id)interfaces workQueue:(id)queue featuresDataSource:(id)source user:(id)user
{
  v18.receiver = self;
  v18.super_class = HMDPhotosPersonManager;
  userCopy = user;
  v14 = [(HMDPersonManager *)&v18 initWithUUID:d zoneManager:manager dataInterfaces:interfaces workQueue:queue featuresDataSource:source];
  objc_storeWeak(&v14->_user, userCopy);

  v15 = objc_alloc_init(MEMORY[0x277CD1D00]);
  dataUnavailableExternalSettings = v14->_dataUnavailableExternalSettings;
  v14->_dataUnavailableExternalSettings = v15;

  return v14;
}

- (HMDPhotosPersonManager)initWithUser:(id)user zoneUUID:(id)d workQueue:(id)queue
{
  userCopy = user;
  queueCopy = queue;
  v10 = MEMORY[0x277CD1CF8];
  dCopy = d;
  uuid = [userCopy uuid];
  v13 = [v10 personManagerUUIDFromUserUUID:uuid];

  home = [userCopy home];
  v15 = [MEMORY[0x277CBEB58] set];
  v16 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsFaceClassification = [v16 supportsFaceClassification];

  if (supportsFaceClassification)
  {
    v18 = [HMDHomeAIPhotosPersonDataInterface alloc];
    uuid2 = [home uuid];
    v20 = [(HMDHomeAIPhotosPersonDataInterface *)v18 initWithPersonManagerUUID:v13 homeUUID:uuid2 workQueue:queueCopy];

    [v15 addObject:v20];
  }

  if ([userCopy isCurrentUser])
  {
    v21 = [[HMDPhotoLibraryPersonImporter alloc] initWithUUID:v13];
    [v15 addObject:v21];
  }

  v22 = [HMDHomeKitPersonDataInterface alloc];
  msgDispatcher = [home msgDispatcher];
  v24 = [(HMDHomeKitPersonDataInterface *)v22 initWithUUID:v13 messageDispatcher:msgDispatcher workQueue:queueCopy];
  [v15 addObject:v24];

  v25 = [[HMDRemotePersonDataMessenger alloc] initWithUUID:v13 home:home workQueue:queueCopy];
  [v15 addObject:v25];

  v26 = [HMDPhotosPersonManager zoneNameForZoneUUID:dCopy];

  v27 = [HMDDatabaseZoneManager alloc];
  v28 = +[HMDDatabase cameraClipsDatabase];
  v29 = [(HMDDatabaseZoneManager *)v27 initWithDatabase:v28 zoneName:v26 home:home messageTargetUUID:v13 workQueue:queueCopy];

  defaultConfiguration = [(HMDDatabaseZoneManager *)v29 defaultConfiguration];
  v31 = [defaultConfiguration mutableCopy];

  [v31 setZoneOwner:{objc_msgSend(userCopy, "isCurrentUser")}];
  v32 = +[HMDHomeKitVersion version7];
  [v31 setMinimumHomeKitVersion:v32];

  v33 = [MEMORY[0x277CBEB98] setWithObject:&unk_2866278F8];
  [v31 setRequiredSupportedFeatures:v33];

  [(HMDDatabaseZoneManager *)v29 setDefaultConfiguration:v31];
  v34 = +[HMDFeaturesDataSource defaultDataSource];
  v35 = [(HMDPhotosPersonManager *)self initWithUUID:v13 zoneManager:v29 dataInterfaces:v15 workQueue:queueCopy featuresDataSource:v34 user:userCopy];

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

+ (id)zoneNameForZoneUUID:(id)d
{
  v3 = *MEMORY[0x277CD0C30];
  uUIDString = [d UUIDString];
  v5 = [v3 stringByAppendingString:uUIDString];

  return v5;
}

@end