@interface HMDHomeAIPersonDataInterface
- (HMDHomeAIPersonDataInterface)initWithPersonManager:(id)a3 workQueue:(id)a4;
- (HMDPersonDataSource)dataSource;
- (void)addFaceprints:(id)a3 completion:(id)a4;
- (void)configureWithDataSource:(id)a3 home:(id)a4;
- (void)fetchAllFaceprintsWithCompletion:(id)a3;
- (void)fetchAllPersonFaceCropsWithCompletion:(id)a3;
- (void)fetchAllPersonsWithCompletion:(id)a3;
- (void)fetchFaceCropsForPersonsWithUUIDs:(id)a3 completion:(id)a4;
- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)a3 completion:(id)a4;
- (void)fetchPersonsWithUUIDs:(id)a3 completion:(id)a4;
- (void)handleRemovedFaceCropWithUUID:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleRemovedFaceprintWithUUID:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleRemovedPersonWithUUID:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleUpdatedFaceprint:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleUpdatedIsDataSyncInProgress:(BOOL)a3;
- (void)handleUpdatedPerson:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleUpdatedPersonFaceCrop:(id)a3 mirrorOutputFuture:(id)a4;
- (void)performCloudPullWithCompletion:(id)a3;
- (void)removeFaceprintsWithUUIDs:(id)a3 completion:(id)a4;
@end

@implementation HMDHomeAIPersonDataInterface

- (HMDPersonDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)handleUpdatedIsDataSyncInProgress:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v5 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDHomeAIPersonDataInterface *)self personManager];
  v7 = [v6 isPersonDataAvailableViaHomeKit];

  if (v7 == v3)
  {
    v8 = v3 ^ 1u;
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDHomeAIPersonDataInterface *)v10 personManager];
      v14 = [v13 isPersonDataAvailableViaHomeKit];
      v15 = [(HMDHomeAIPersonDataInterface *)v10 personManager];
      v18 = 138544130;
      v19 = v12;
      v20 = 1024;
      v21 = v14;
      v22 = 1024;
      v23 = v8;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating personDataAvailableViaHomeKit from %d -> %d on %@", &v18, 0x22u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [(HMDHomeAIPersonDataInterface *)v10 personManager];
    [v16 setPersonDataAvailableViaHomeKit:v8];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedFaceprintWithUUID:(id)a3 mirrorOutputFuture:(id)a4
{
  v5 = a3;
  v6 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDHomeAIPersonDataInterface *)self personManager];
  [v7 handleRemovedFaceprintWithUUID:v5];
}

- (void)handleRemovedFaceCropWithUUID:(id)a3 mirrorOutputFuture:(id)a4
{
  v5 = a3;
  v6 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDHomeAIPersonDataInterface *)self personManager];
  [v7 handleRemovedFaceCropWithUUID:v5];
}

- (void)handleRemovedPersonWithUUID:(id)a3 mirrorOutputFuture:(id)a4
{
  v5 = a3;
  v6 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDHomeAIPersonDataInterface *)self personManager];
  [v7 handleRemovedPersonWithUUID:v5];
}

- (void)handleUpdatedFaceprint:(id)a3 mirrorOutputFuture:(id)a4
{
  v5 = a3;
  v6 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v8 = [(HMDHomeAIPersonDataInterface *)self personManager];
  v7 = [v5 createHMIFaceprint];

  [v8 handleUpdatedFaceprint:v7];
}

- (void)handleUpdatedPersonFaceCrop:(id)a3 mirrorOutputFuture:(id)a4
{
  v5 = a3;
  v6 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v8 = [(HMDHomeAIPersonDataInterface *)self personManager];
  v7 = [v5 createHMIPersonFaceCrop];

  [v8 handleUpdatedPersonFaceCrop:v7];
}

- (void)handleUpdatedPerson:(id)a3 mirrorOutputFuture:(id)a4
{
  v5 = a3;
  v6 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v8 = [(HMDHomeAIPersonDataInterface *)self personManager];
  v7 = [v5 createHMIPerson];

  [v8 handleUpdatedPerson:v7];
}

- (void)configureWithDataSource:(id)a3 home:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring HomeAI person data interface", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDHomeAIPersonDataInterface *)v10 setDataSource:v6];
  v13 = [(HMDHomeAIPersonDataInterface *)v10 personManager];
  [v13 setDataSource:v10];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeFaceprintsWithUUIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDHomeAIPersonDataInterface_removeFaceprintsWithUUIDs_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __69__HMDHomeAIPersonDataInterface_removeFaceprintsWithUUIDs_completion___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Removing faceprints with UUIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) dataSource];
  v8 = [v7 removeFaceprintsWithUUIDs:*(a1 + 40)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HMDHomeAIPersonDataInterface_removeFaceprintsWithUUIDs_completion___block_invoke_23;
  v11[3] = &unk_278687BA8;
  v12 = *(a1 + 48);
  v9 = [v8 addCompletionBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addFaceprints:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeAIPersonDataInterface *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDHomeAIPersonDataInterface_addFaceprints_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __57__HMDHomeAIPersonDataInterface_addFaceprints_completion___block_invoke(id *a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Adding faceprints: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [a1[5] na_map:&__block_literal_global_21];
  v8 = [a1[4] dataSource];
  v9 = [v8 addOrUpdateFaceprints:v7];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__HMDHomeAIPersonDataInterface_addFaceprints_completion___block_invoke_2;
  v12[3] = &unk_278687BA8;
  v13 = a1[6];
  v10 = [v9 addCompletionBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

id __57__HMDHomeAIPersonDataInterface_addFaceprints_completion___block_invoke_18(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1A38];
  v3 = a2;
  v4 = [[v2 alloc] initWithHMIFaceprint:v3];

  return v4;
}

- (void)performCloudPullWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Performing cloud pull", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDHomeAIPersonDataInterface *)v6 workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HMDHomeAIPersonDataInterface_performCloudPullWithCompletion___block_invoke;
  v12[3] = &unk_27868A7A0;
  v12[4] = v6;
  v13 = v4;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __63__HMDHomeAIPersonDataInterface_performCloudPullWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 performCloudPull];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__HMDHomeAIPersonDataInterface_performCloudPullWithCompletion___block_invoke_2;
  v5[3] = &unk_278687BA8;
  v6 = *(a1 + 40);
  v4 = [v3 addCompletionBlock:v5];
}

- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching faceprints for face crops with UUIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDHomeAIPersonDataInterface *)v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDHomeAIPersonDataInterface_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke;
  block[3] = &unk_278689F98;
  v17 = v6;
  v18 = v7;
  block[4] = v9;
  v13 = v6;
  v14 = v7;
  dispatch_async(v12, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeAIPersonDataInterface_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  if ([v2 isDataAvailable])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v4 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __80__HMDHomeAIPersonDataInterface_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke_16;
    v12[3] = &unk_27867F760;
    v13 = v3;
    v5 = v3;
    [v2 enumerateFaceprintsForFaceCropsWithUUIDs:v4 usingBlock:v12];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch faceprints for face crops because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 48);
    v5 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v10 + 16))(v10, 0, v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeAIPersonDataInterface_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 createHMIFaceprint];
  [v2 addObject:v3];
}

- (void)fetchAllFaceprintsWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching all faceprints", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDHomeAIPersonDataInterface *)v6 workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HMDHomeAIPersonDataInterface_fetchAllFaceprintsWithCompletion___block_invoke;
  v12[3] = &unk_27868A7A0;
  v12[4] = v6;
  v13 = v4;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __65__HMDHomeAIPersonDataInterface_fetchAllFaceprintsWithCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  if ([v2 isDataAvailable])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__HMDHomeAIPersonDataInterface_fetchAllFaceprintsWithCompletion___block_invoke_14;
    v11[3] = &unk_27867F760;
    v12 = v3;
    v4 = v3;
    [v2 enumerateFaceprintsUsingBlock:v11];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch all faceprints because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v9 + 16))(v9, 0, v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __65__HMDHomeAIPersonDataInterface_fetchAllFaceprintsWithCompletion___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 createHMIFaceprint];
  [v2 addObject:v3];
}

- (void)fetchFaceCropsForPersonsWithUUIDs:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching face crops for persons with UUIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDHomeAIPersonDataInterface *)v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDHomeAIPersonDataInterface_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_278689F98;
  v17 = v6;
  v18 = v7;
  block[4] = v9;
  v13 = v6;
  v14 = v7;
  dispatch_async(v12, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __77__HMDHomeAIPersonDataInterface_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  if ([v2 isDataAvailable])
  {
    v3 = [v2 fetchFaceCropsForPersonsWithUUIDs:*(a1 + 40)];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__HMDHomeAIPersonDataInterface_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_8;
    v15[3] = &unk_27866F630;
    v16 = *(a1 + 48);
    v4 = [v3 addSuccessBlock:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__HMDHomeAIPersonDataInterface_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_3;
    v13[3] = &unk_278688DD0;
    v14 = *(a1 + 48);
    v5 = [v4 addFailureBlock:v13];

    v6 = v16;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch face crops for persons because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *(a1 + 48);
    v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v11 + 16))(v11, 0, v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __77__HMDHomeAIPersonDataInterface_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = [a2 na_map:&__block_literal_global_11];
  (*(*(a1 + 32) + 16))();
}

- (void)fetchAllPersonFaceCropsWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching all person face crops", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDHomeAIPersonDataInterface *)v6 workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HMDHomeAIPersonDataInterface_fetchAllPersonFaceCropsWithCompletion___block_invoke;
  v12[3] = &unk_27868A7A0;
  v12[4] = v6;
  v13 = v4;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __70__HMDHomeAIPersonDataInterface_fetchAllPersonFaceCropsWithCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  if ([v2 isDataAvailable])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__HMDHomeAIPersonDataInterface_fetchAllPersonFaceCropsWithCompletion___block_invoke_6;
    v11[3] = &unk_27867F738;
    v12 = v3;
    v4 = v3;
    [v2 enumeratePersonFaceCropsUsingBlock:v11];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch all person face crops because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v9 + 16))(v9, 0, v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __70__HMDHomeAIPersonDataInterface_fetchAllPersonFaceCropsWithCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 createHMIPersonFaceCrop];
  [v2 addObject:v3];
}

- (void)fetchPersonsWithUUIDs:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching persons with UUIDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDHomeAIPersonDataInterface *)v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDHomeAIPersonDataInterface_fetchPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_278689F98;
  v17 = v6;
  v18 = v7;
  block[4] = v9;
  v13 = v6;
  v14 = v7;
  dispatch_async(v12, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __65__HMDHomeAIPersonDataInterface_fetchPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  if ([v2 isDataAvailable])
  {
    v3 = [v2 personsWithUUIDs:*(a1 + 40)];
    v4 = [v3 na_map:&__block_literal_global_13368];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch persons with UUIDs because data is not available", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(a1 + 48);
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v9 + 16))(v9, 0, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllPersonsWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching all persons", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDHomeAIPersonDataInterface *)v6 workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__HMDHomeAIPersonDataInterface_fetchAllPersonsWithCompletion___block_invoke;
  v12[3] = &unk_27868A7A0;
  v12[4] = v6;
  v13 = v4;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __62__HMDHomeAIPersonDataInterface_fetchAllPersonsWithCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  if ([v2 isDataAvailable])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__HMDHomeAIPersonDataInterface_fetchAllPersonsWithCompletion___block_invoke_2;
    v11[3] = &unk_27867F6E8;
    v12 = v3;
    v4 = v3;
    [v2 enumeratePersonsUsingBlock:v11];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch all persons because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (*(v9 + 16))(v9, 0, v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __62__HMDHomeAIPersonDataInterface_fetchAllPersonsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 createHMIPerson];
  [v2 addObject:v3];
}

- (HMDHomeAIPersonDataInterface)initWithPersonManager:(id)a3 workQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDHomeAIPersonDataInterface;
  v9 = [(HMDHomeAIPersonDataInterface *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, a4);
    objc_storeStrong(&v10->_personManager, a3);
  }

  return v10;
}

@end