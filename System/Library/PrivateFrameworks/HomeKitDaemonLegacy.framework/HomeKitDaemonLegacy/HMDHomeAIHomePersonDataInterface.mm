@interface HMDHomeAIHomePersonDataInterface
+ (id)logCategory;
- (HMDHomeAIHomePersonDataInterface)initWithHomePersonManager:(id)manager workQueue:(id)queue;
- (HMDHomeAIHomePersonDataInterface)initWithPersonManagerUUID:(id)d homeUUID:(id)iD workQueue:(id)queue;
- (id)logIdentifier;
- (void)addFaceCrops:(id)crops completion:(id)completion;
- (void)addPersons:(id)persons completion:(id)completion;
- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)completion;
- (void)fetchSettingsWithCompletion:(id)completion;
- (void)handleFaceMisclassificationForFaceCropData:(id)data personUUID:(id)d;
- (void)handleUpdatedSettings:(id)settings mirrorOutputFuture:(id)future;
- (void)handleUpdatedUnassociatedFaceCrop:(id)crop mirrorOutputFuture:(id)future;
- (void)removeFaceCropsWithUUIDs:(id)ds completion:(id)completion;
- (void)removePersonsWithUUIDs:(id)ds completion:(id)completion;
@end

@implementation HMDHomeAIHomePersonDataInterface

- (void)handleFaceMisclassificationForFaceCropData:(id)data personUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_alloc(MEMORY[0x277D14DB8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  date = [MEMORY[0x277CBEAA8] date];
  v12 = [v9 initWithUUID:uUID dataRepresentation:dataCopy dateCreated:date faceBoundingBox:dCopy personUUID:{*MEMORY[0x277CCFD38], *(MEMORY[0x277CCFD38] + 8), *(MEMORY[0x277CCFD38] + 16), *(MEMORY[0x277CCFD38] + 24)}];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v16;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Notifying HomeAI home person manager of misclassified person for face crop: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  homePersonManager = [(HMDHomeAIHomePersonDataInterface *)selfCopy homePersonManager];
  [homePersonManager handleMisclassifiedPersonForFaceCrop:v12];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedSettings:(id)settings mirrorOutputFuture:(id)future
{
  v20 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  futureCopy = future;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  createHMIHomePersonManagerSettings = [settingsCopy createHMIHomePersonManagerSettings];
  if (createHMIHomePersonManagerSettings)
  {
    homePersonManager = [(HMDHomeAIHomePersonDataInterface *)self homePersonManager];
    [homePersonManager handleUpdatedSettings:createHMIHomePersonManagerSettings];
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Updated settings could not be converted into HMIHomePersonManagerSettings: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedUnassociatedFaceCrop:(id)crop mirrorOutputFuture:(id)future
{
  cropCopy = crop;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  homePersonManager = [(HMDHomeAIHomePersonDataInterface *)self homePersonManager];
  createHMIFaceCrop = [cropCopy createHMIFaceCrop];

  [homePersonManager handleUpdatedUnassociatedFaceCrop:createHMIFaceCrop];
}

- (void)removeFaceCropsWithUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDHomeAIHomePersonDataInterface_removeFaceCropsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = dsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(workQueue, block);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing face crops with UUIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) dataSource];
  v8 = [v7 removeFaceCropsWithUUIDs:*(a1 + 40)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HMDHomeAIHomePersonDataInterface_removeFaceCropsWithUUIDs_completion___block_invoke_18;
  v11[3] = &unk_279730E28;
  v12 = *(a1 + 48);
  v9 = [v8 addCompletionBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removePersonsWithUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDHomeAIHomePersonDataInterface_removePersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = dsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  dispatch_async(workQueue, block);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing persons with UUIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) dataSource];
  v8 = [v7 removePersonsWithUUIDs:*(a1 + 40)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HMDHomeAIHomePersonDataInterface_removePersonsWithUUIDs_completion___block_invoke_17;
  v11[3] = &unk_279730E28;
  v12 = *(a1 + 48);
  v9 = [v8 addCompletionBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addFaceCrops:(id)crops completion:(id)completion
{
  cropsCopy = crops;
  completionCopy = completion;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDHomeAIHomePersonDataInterface_addFaceCrops_completion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = cropsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = cropsCopy;
  dispatch_async(workQueue, block);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Adding face crops: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [a1[5] na_map:&__block_literal_global_15_114370];
  v8 = [a1[4] dataSource];
  v9 = [v8 addOrUpdateFaceCrops:v7];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__HMDHomeAIHomePersonDataInterface_addFaceCrops_completion___block_invoke_2;
  v12[3] = &unk_279730E28;
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

- (void)addPersons:(id)persons completion:(id)completion
{
  personsCopy = persons;
  completionCopy = completion;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDHomeAIHomePersonDataInterface_addPersons_completion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = personsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = personsCopy;
  dispatch_async(workQueue, block);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Adding persons: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [a1[5] na_map:&__block_literal_global_9_114375];
  v8 = [a1[4] dataSource];
  v9 = [v8 addOrUpdatePersons:v7];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HMDHomeAIHomePersonDataInterface_addPersons_completion___block_invoke_2;
  v12[3] = &unk_279730E28;
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

- (void)fetchSettingsWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDHomeAIHomePersonDataInterface_fetchSettingsWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching settings", &v16, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Fetched settings could not be converted into HMIHomePersonManagerSettings: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = *(a1 + 40);
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    (*(v13 + 16))(v13, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDHomeAIPersonDataInterface *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HMDHomeAIHomePersonDataInterface_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching all unassociated face crops", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) dataSource];
  if ([v6 isDataAvailable])
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__HMDHomeAIHomePersonDataInterface_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke_4;
    v15[3] = &unk_27972D3B0;
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
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch all unassociated face crops because data is not available", buf, 0xCu);
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
  homePersonManager = [(HMDHomeAIHomePersonDataInterface *)self homePersonManager];
  uUID = [homePersonManager UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (HMDHomeAIHomePersonDataInterface)initWithHomePersonManager:(id)manager workQueue:(id)queue
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = HMDHomeAIHomePersonDataInterface;
  v8 = [(HMDHomeAIPersonDataInterface *)&v11 initWithPersonManager:managerCopy workQueue:queue];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_homePersonManager, manager);
  }

  return v9;
}

- (HMDHomeAIHomePersonDataInterface)initWithPersonManagerUUID:(id)d homeUUID:(id)iD workQueue:(id)queue
{
  v8 = MEMORY[0x277D14D98];
  queueCopy = queue;
  iDCopy = iD;
  dCopy = d;
  v12 = [[v8 alloc] initWithUUID:dCopy homeUUID:iDCopy];

  v13 = [(HMDHomeAIHomePersonDataInterface *)self initWithHomePersonManager:v12 workQueue:queueCopy];
  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_114393 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_114393, &__block_literal_global_114394);
  }

  v3 = logCategory__hmf_once_v1_114395;

  return v3;
}

uint64_t __47__HMDHomeAIHomePersonDataInterface_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_114395;
  logCategory__hmf_once_v1_114395 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end