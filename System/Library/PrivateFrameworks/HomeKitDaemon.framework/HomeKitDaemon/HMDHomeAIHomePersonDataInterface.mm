@interface HMDHomeAIHomePersonDataInterface
+ (id)logCategory;
- (HMDHomeAIHomePersonDataInterface)initWithHomePersonManager:(id)a3 workQueue:(id)a4;
- (HMDHomeAIHomePersonDataInterface)initWithPersonManagerUUID:(id)a3 homeUUID:(id)a4 workQueue:(id)a5;
- (id)logIdentifier;
- (void)addFaceCrops:(id)a3 completion:(id)a4;
- (void)addPersons:(id)a3 completion:(id)a4;
- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)a3;
- (void)fetchSettingsWithCompletion:(id)a3;
- (void)handleFaceMisclassificationForFaceCropData:(id)a3 personUUID:(id)a4;
- (void)handleUpdatedSettings:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleUpdatedUnassociatedFaceCrop:(id)a3 mirrorOutputFuture:(id)a4;
- (void)removeFaceCropsWithUUIDs:(id)a3 completion:(id)a4;
- (void)removePersonsWithUUIDs:(id)a3 completion:(id)a4;
@end

@implementation HMDHomeAIHomePersonDataInterface

- (void)handleFaceMisclassificationForFaceCropData:(id)a3 personUUID:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_alloc(MEMORY[0x277D14DB8]);
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = [v9 initWithUUID:v10 dataRepresentation:v6 dateCreated:v11 faceBoundingBox:v7 personUUID:{*MEMORY[0x277CCFD38], *(MEMORY[0x277CCFD38] + 8), *(MEMORY[0x277CCFD38] + 16), *(MEMORY[0x277CCFD38] + 24)}];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v16;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Notifying HomeAI home person manager of misclassified person for face crop: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [(HMDHomeAIHomePersonDataInterface *)v14 homePersonManager];
  [v17 handleMisclassifiedPersonForFaceCrop:v12];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedSettings:(id)a3 mirrorOutputFuture:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 createHMIHomePersonManagerSettings];
  if (v9)
  {
    v10 = [(HMDHomeAIHomePersonDataInterface *)self homePersonManager];
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Updated settings could not be converted into HMIHomePersonManagerSettings: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedUnassociatedFaceCrop:(id)a3 mirrorOutputFuture:(id)a4
{
  v5 = a3;
  v6 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v8 = [(HMDHomeAIHomePersonDataInterface *)self homePersonManager];
  v7 = [v5 createHMIFaceCrop];

  [v8 handleUpdatedUnassociatedFaceCrop:v7];
}

- (void)removeFaceCropsWithUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDHomeAIHomePersonDataInterface_removeFaceCropsWithUUIDs_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __72__HMDHomeAIHomePersonDataInterface_removeFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing face crops with UUIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) dataSource];
  v8 = [v7 removeFaceCropsWithUUIDs:*(a1 + 40)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HMDHomeAIHomePersonDataInterface_removeFaceCropsWithUUIDs_completion___block_invoke_18;
  v11[3] = &unk_278687BA8;
  v12 = *(a1 + 48);
  v9 = [v8 addCompletionBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removePersonsWithUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDHomeAIHomePersonDataInterface_removePersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __70__HMDHomeAIHomePersonDataInterface_removePersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing persons with UUIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) dataSource];
  v8 = [v7 removePersonsWithUUIDs:*(a1 + 40)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HMDHomeAIHomePersonDataInterface_removePersonsWithUUIDs_completion___block_invoke_17;
  v11[3] = &unk_278687BA8;
  v12 = *(a1 + 48);
  v9 = [v8 addCompletionBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addFaceCrops:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDHomeAIHomePersonDataInterface_addFaceCrops_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __60__HMDHomeAIHomePersonDataInterface_addFaceCrops_completion___block_invoke(id *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = a1[5];
    *buf = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Adding face crops: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [a1[5] na_map:&__block_literal_global_15_172710];
  v8 = [a1[4] dataSource];
  v9 = [v8 addOrUpdateFaceCrops:v7];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HMDHomeAIHomePersonDataInterface_addFaceCrops_completion___block_invoke_2;
  v12[3] = &unk_278687BA8;
  v13 = a1[6];
  v10 = [v9 addCompletionBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

id __60__HMDHomeAIHomePersonDataInterface_addFaceCrops_completion___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1A30];
  v3 = a2;
  v4 = [[v2 alloc] initWithHMIFaceCrop:v3];

  return v4;
}

- (void)addPersons:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDHomeAIHomePersonDataInterface_addPersons_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __58__HMDHomeAIHomePersonDataInterface_addPersons_completion___block_invoke(id *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = a1[5];
    *buf = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Adding persons: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [a1[5] na_map:&__block_literal_global_9_172715];
  v8 = [a1[4] dataSource];
  v9 = [v8 addOrUpdatePersons:v7];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HMDHomeAIHomePersonDataInterface_addPersons_completion___block_invoke_2;
  v12[3] = &unk_278687BA8;
  v13 = a1[6];
  v10 = [v9 addCompletionBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

id __58__HMDHomeAIHomePersonDataInterface_addPersons_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1CD0];
  v3 = a2;
  v4 = [[v2 alloc] initWithHMIPerson:v3];

  return v4;
}

- (void)fetchSettingsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDHomeAIHomePersonDataInterface_fetchSettingsWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __64__HMDHomeAIHomePersonDataInterface_fetchSettingsWithCompletion___block_invoke(uint64_t a1)
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

  v8 = [v7 createHMIHomePersonManagerSettings];
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Fetched settings could not be converted into HMIHomePersonManagerSettings: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = *(a1 + 40);
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(v13 + 16))(v13, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HMDHomeAIHomePersonDataInterface_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __80__HMDHomeAIHomePersonDataInterface_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching all unassociated face crops", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) dataSource];
  if ([v6 isDataAvailable])
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__HMDHomeAIHomePersonDataInterface_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke_4;
    v15[3] = &unk_27867F710;
    v16 = v7;
    v8 = v7;
    [v6 enumerateUnassociatedFaceCropsUsingBlock:v15];
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
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch all unassociated face crops because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v13 + 16))(v13, 0, v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeAIHomePersonDataInterface_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 createHMIFaceCrop];
  [v2 addObject:v3];
}

- (id)logIdentifier
{
  v2 = [(HMDHomeAIHomePersonDataInterface *)self homePersonManager];
  v3 = [v2 UUID];
  v4 = [v3 UUIDString];

  return v4;
}

- (HMDHomeAIHomePersonDataInterface)initWithHomePersonManager:(id)a3 workQueue:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMDHomeAIHomePersonDataInterface;
  v8 = [(HMDHomeAIPersonDataInterface *)&v11 initWithPersonManager:v7 workQueue:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_homePersonManager, a3);
  }

  return v9;
}

- (HMDHomeAIHomePersonDataInterface)initWithPersonManagerUUID:(id)a3 homeUUID:(id)a4 workQueue:(id)a5
{
  v8 = MEMORY[0x277D14D98];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithUUID:v11 homeUUID:v10];

  v13 = [(HMDHomeAIHomePersonDataInterface *)self initWithHomePersonManager:v12 workQueue:v9];
  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_172733 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_172733, &__block_literal_global_172734);
  }

  v3 = logCategory__hmf_once_v1_172735;

  return v3;
}

void __47__HMDHomeAIHomePersonDataInterface_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_172735;
  logCategory__hmf_once_v1_172735 = v1;
}

@end