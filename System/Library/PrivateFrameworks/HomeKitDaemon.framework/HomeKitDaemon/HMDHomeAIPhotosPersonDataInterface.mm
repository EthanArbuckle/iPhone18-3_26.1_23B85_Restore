@interface HMDHomeAIPhotosPersonDataInterface
+ (id)logCategory;
- (HMDHomeAIPhotosPersonDataInterface)initWithPersonManagerUUID:(id)d homeUUID:(id)iD workQueue:(id)queue;
- (HMDHomeAIPhotosPersonDataInterface)initWithPhotosPersonManager:(id)manager workQueue:(id)queue;
- (id)logIdentifier;
- (void)fetchSettingsWithCompletion:(id)completion;
- (void)handleUpdatedSettings:(id)settings mirrorOutputFuture:(id)future;
@end

@implementation HMDHomeAIPhotosPersonDataInterface

- (void)handleUpdatedSettings:(id)settings mirrorOutputFuture:(id)future
{
  v20 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  futureCopy = future;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  createHMIExternalPersonManagerSettings = [settingsCopy createHMIExternalPersonManagerSettings];
  if (createHMIExternalPersonManagerSettings)
  {
    photosPersonManager = [(HMDHomeAIPhotosPersonDataInterface *)self photosPersonManager];
    [photosPersonManager handleUpdatedSettings:createHMIExternalPersonManagerSettings];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = settingsCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Updated settings could not be converted into HMIExternalPersonManagerSettings: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchSettingsWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDHomeAIPhotosPersonDataInterface_fetchSettingsWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __66__HMDHomeAIPhotosPersonDataInterface_fetchSettingsWithCompletion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching settings", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) dataSource];
  v7 = [v6 settings];

  v8 = [v7 createHMIExternalPersonManagerSettings];
  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Fetched settings could not be converted into HMIExternalPersonManagerSettings: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = *(a1 + 40);
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(v13 + 16))(v13, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  photosPersonManager = [(HMDHomeAIPhotosPersonDataInterface *)self photosPersonManager];
  uUID = [photosPersonManager UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (HMDHomeAIPhotosPersonDataInterface)initWithPhotosPersonManager:(id)manager workQueue:(id)queue
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = HMDHomeAIPhotosPersonDataInterface;
  v8 = [(HMDHomeAIPersonDataInterface *)&v11 initWithPersonManager:managerCopy workQueue:queue];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photosPersonManager, manager);
  }

  return v9;
}

- (HMDHomeAIPhotosPersonDataInterface)initWithPersonManagerUUID:(id)d homeUUID:(id)iD workQueue:(id)queue
{
  v8 = MEMORY[0x277D14D78];
  queueCopy = queue;
  iDCopy = iD;
  dCopy = d;
  v12 = [[v8 alloc] initWithUUID:dCopy homeUUID:iDCopy];

  v13 = [(HMDHomeAIPhotosPersonDataInterface *)self initWithPhotosPersonManager:v12 workQueue:queueCopy];
  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_84583 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_84583, &__block_literal_global_84584);
  }

  v3 = logCategory__hmf_once_v1_84585;

  return v3;
}

void __49__HMDHomeAIPhotosPersonDataInterface_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_84585;
  logCategory__hmf_once_v1_84585 = v1;
}

@end