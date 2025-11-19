@interface HMDHomeAIPhotosPersonDataInterface
+ (id)logCategory;
- (HMDHomeAIPhotosPersonDataInterface)initWithPersonManagerUUID:(id)a3 homeUUID:(id)a4 workQueue:(id)a5;
- (HMDHomeAIPhotosPersonDataInterface)initWithPhotosPersonManager:(id)a3 workQueue:(id)a4;
- (id)logIdentifier;
- (void)fetchSettingsWithCompletion:(id)a3;
- (void)handleUpdatedSettings:(id)a3 mirrorOutputFuture:(id)a4;
@end

@implementation HMDHomeAIPhotosPersonDataInterface

- (void)handleUpdatedSettings:(id)a3 mirrorOutputFuture:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 createHMIExternalPersonManagerSettings];
  if (v9)
  {
    v10 = [(HMDHomeAIPhotosPersonDataInterface *)self photosPersonManager];
    [v10 handleUpdatedSettings:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Updated settings could not be converted into HMIExternalPersonManagerSettings: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchSettingsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDHomeAIPhotosPersonDataInterface_fetchSettingsWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching settings", &v16, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Fetched settings could not be converted into HMIExternalPersonManagerSettings: %@", &v16, 0x16u);
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
  v2 = [(HMDHomeAIPhotosPersonDataInterface *)self photosPersonManager];
  v3 = [v2 UUID];
  v4 = [v3 UUIDString];

  return v4;
}

- (HMDHomeAIPhotosPersonDataInterface)initWithPhotosPersonManager:(id)a3 workQueue:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMDHomeAIPhotosPersonDataInterface;
  v8 = [(HMDHomeAIPersonDataInterface *)&v11 initWithPersonManager:v7 workQueue:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photosPersonManager, a3);
  }

  return v9;
}

- (HMDHomeAIPhotosPersonDataInterface)initWithPersonManagerUUID:(id)a3 homeUUID:(id)a4 workQueue:(id)a5
{
  v8 = MEMORY[0x277D14D78];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithUUID:v11 homeUUID:v10];

  v13 = [(HMDHomeAIPhotosPersonDataInterface *)self initWithPhotosPersonManager:v12 workQueue:v9];
  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_52878 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_52878, &__block_literal_global_52879);
  }

  v3 = logCategory__hmf_once_v1_52880;

  return v3;
}

uint64_t __49__HMDHomeAIPhotosPersonDataInterface_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_52880;
  logCategory__hmf_once_v1_52880 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end