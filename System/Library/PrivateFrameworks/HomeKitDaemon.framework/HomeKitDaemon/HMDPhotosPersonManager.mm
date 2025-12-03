@interface HMDPhotosPersonManager
+ (id)logCategory;
+ (id)zoneNameForZoneUUID:(id)d;
- (BOOL)manager:(id)manager shouldShareWithUser:(id)user;
- (BOOL)sharesFaceClassifications;
- (BOOL)zoneManager:(id)manager shouldRequestShareInvitationFromUser:(id)user;
- (HMDPhotosPersonManager)initWithUUID:(id)d zoneManager:(id)manager coreDataManager:(id)dataManager dataInterfaces:(id)interfaces workQueue:(id)queue featuresDataSource:(id)source user:(id)user;
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Photos person manager settings changed: %@", buf, 0x16u);
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
  v3 = [dataInterfaces na_map:&__block_literal_global_16195];
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

- (HMDPhotosPersonManager)initWithUUID:(id)d zoneManager:(id)manager coreDataManager:(id)dataManager dataInterfaces:(id)interfaces workQueue:(id)queue featuresDataSource:(id)source user:(id)user
{
  v20.receiver = self;
  v20.super_class = HMDPhotosPersonManager;
  userCopy = user;
  v16 = [(HMDPersonManager *)&v20 initWithUUID:d zoneManager:manager coreDataManager:dataManager dataInterfaces:interfaces workQueue:queue featuresDataSource:source];
  objc_storeWeak(&v16->_user, userCopy);

  v17 = objc_alloc_init(MEMORY[0x277CD1D00]);
  dataUnavailableExternalSettings = v16->_dataUnavailableExternalSettings;
  v16->_dataUnavailableExternalSettings = v17;

  return v16;
}

- (HMDPhotosPersonManager)initWithUser:(id)user zoneUUID:(id)d workQueue:(id)queue
{
  userCopy = user;
  queueCopy = queue;
  v9 = MEMORY[0x277CD1CF8];
  dCopy = d;
  uuid = [userCopy uuid];
  v12 = [v9 personManagerUUIDFromUserUUID:uuid];

  home = [userCopy home];
  v14 = [MEMORY[0x277CBEB58] set];
  v15 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsFaceClassification = [v15 supportsFaceClassification];

  if (supportsFaceClassification)
  {
    v17 = [HMDHomeAIPhotosPersonDataInterface alloc];
    uuid2 = [home uuid];
    v19 = [(HMDHomeAIPhotosPersonDataInterface *)v17 initWithPersonManagerUUID:v12 homeUUID:uuid2 workQueue:queueCopy];

    [v14 addObject:v19];
  }

  if ([userCopy isCurrentUser])
  {
    v20 = [[HMDPhotoLibraryPersonImporter alloc] initWithUUID:v12];
    [v14 addObject:v20];
  }

  v21 = [HMDHomeKitPersonDataInterface alloc];
  msgDispatcher = [home msgDispatcher];
  v23 = [(HMDHomeKitPersonDataInterface *)v21 initWithUUID:v12 messageDispatcher:msgDispatcher workQueue:queueCopy];
  [v14 addObject:v23];

  v24 = [[HMDRemotePersonDataMessenger alloc] initWithUUID:v12 home:home workQueue:queueCopy];
  [v14 addObject:v24];

  v38 = [HMDPhotosPersonManager zoneNameForZoneUUID:dCopy];

  v25 = [HMDDatabaseZoneManager alloc];
  v26 = +[HMDDatabase cameraClipsDatabase];
  v27 = [(HMDDatabaseZoneManager *)v25 initWithDatabase:v26 zoneName:v38 home:home messageTargetUUID:v12 workQueue:queueCopy];

  defaultConfiguration = [(HMDDatabaseZoneManager *)v27 defaultConfiguration];
  v29 = [defaultConfiguration mutableCopy];

  [v29 setZoneOwner:{objc_msgSend(userCopy, "isCurrentUser")}];
  v30 = +[HMDHomeKitVersion version7];
  [v29 setMinimumHomeKitVersion:v30];

  v31 = [MEMORY[0x277CBEB98] setWithObject:&unk_283E71B70];
  [v29 setRequiredSupportedFeatures:v31];

  [(HMDDatabaseZoneManager *)v27 setDefaultConfiguration:v29];
  v32 = [HMDPersonCoreDataManager alloc];
  uuid3 = [userCopy uuid];
  v34 = [(HMDPersonCoreDataManager *)v32 initWithUUID:v12 workQueue:queueCopy home:home userUUID:uuid3];

  v35 = +[HMDFeaturesDataSource defaultDataSource];
  v36 = [(HMDPhotosPersonManager *)self initWithUUID:v12 zoneManager:v27 coreDataManager:v34 dataInterfaces:v14 workQueue:queueCopy featuresDataSource:v35 user:userCopy];

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

+ (id)zoneNameForZoneUUID:(id)d
{
  v3 = *MEMORY[0x277CD0C30];
  uUIDString = [d UUIDString];
  v5 = [v3 stringByAppendingString:uUIDString];

  return v5;
}

@end