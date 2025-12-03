@interface HMIHomePersonDataSourceHomeKit
- (HMIHomePersonDataSourceHomeKit)initWithHMHomePersonManager:(id)manager;
- (id)logIdentifier;
- (void)addFaceCrops:(id)crops completion:(id)completion;
- (void)addFaceprints:(id)faceprints completion:(id)completion;
- (void)addPersonFaceCrops:(id)crops completion:(id)completion;
- (void)addPersons:(id)persons completion:(id)completion;
- (void)associateFaceCropsWithUUIDs:(id)ds toPersonWithUUID:(id)d forSource:(int64_t)source completion:(id)completion;
- (void)fetchAllFaceprintsWithCompletion:(id)completion;
- (void)fetchAllPersonFaceCropsWithCompletion:(id)completion;
- (void)fetchAllPersonsWithCompletion:(id)completion;
- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)completion;
- (void)fetchFaceCropsForPersonsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchPersonsWithUUIDs:(id)ds completion:(id)completion;
- (void)fetchSettingsWithCompletion:(id)completion;
- (void)performCloudPullWithCompletion:(id)completion;
- (void)removeFaceCropsWithUUIDs:(id)ds completion:(id)completion;
- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion;
- (void)removePersonsWithUUIDs:(id)ds completion:(id)completion;
@end

@implementation HMIHomePersonDataSourceHomeKit

- (HMIHomePersonDataSourceHomeKit)initWithHMHomePersonManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = HMIHomePersonDataSourceHomeKit;
  v6 = [(HMIHomePersonDataSourceHomeKit *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v8 = HMIDispatchQueueNameString(v6, 0);
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    workQueue = v7->_workQueue;
    v7->_workQueue = v11;

    objc_storeStrong(&v7->_homePersonManager, manager);
  }

  return v7;
}

- (void)fetchAllPersonsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@fetchAllPersonsWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HMIHomePersonDataSourceHomeKit_fetchAllPersonsWithCompletion___block_invoke;
  v11[3] = &unk_278752DF8;
  v11[4] = selfCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, v11);
}

void __64__HMIHomePersonDataSourceHomeKit_fetchAllPersonsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homePersonManager];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__HMIHomePersonDataSourceHomeKit_fetchAllPersonsWithCompletion___block_invoke_2;
  v3[3] = &unk_278752DD0;
  v4 = *(a1 + 40);
  [v2 fetchAllPersonsWithCompletion:v3];
}

void __64__HMIHomePersonDataSourceHomeKit_fetchAllPersonsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 na_map:&__block_literal_global_23];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

- (void)fetchPersonsWithUUIDs:(id)ds completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@fetchPersonsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMIHomePersonDataSourceHomeKit_fetchPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = selfCopy;
  v16 = dsCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = dsCopy;
  dispatch_async(workQueue, block);
}

void __67__HMIHomePersonDataSourceHomeKit_fetchPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homePersonManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__HMIHomePersonDataSourceHomeKit_fetchPersonsWithUUIDs_completion___block_invoke_2;
  v4[3] = &unk_278752DD0;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 fetchPersonsWithUUIDs:v3 completion:v4];
}

void __67__HMIHomePersonDataSourceHomeKit_fetchPersonsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 na_map:&__block_literal_global_4_0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

- (void)fetchAllPersonFaceCropsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@fetchAllPersonFaceCropsWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HMIHomePersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke;
  v11[3] = &unk_278752DF8;
  v11[4] = selfCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, v11);
}

void __72__HMIHomePersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homePersonManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__HMIHomePersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke_2;
  v4[3] = &unk_278752E48;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 fetchAllPersonFaceCropsWithCompletion:v4];
}

void __72__HMIHomePersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __72__HMIHomePersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke_3;
    v5[3] = &unk_278752E20;
    v5[4] = *(a1 + 32);
    v3 = [a2 na_map:v5];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

HMIPersonFaceCrop *__72__HMIHomePersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 source];
  if (v4 >= 5)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v8;
      v26 = 2048;
      v27 = [v3 source];
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Received invalid HMPersonFaceCropSource: %ld", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v9 = [HMIPersonFaceCrop alloc];
  v10 = [v3 UUID];
  v11 = [v3 dataRepresentation];
  v12 = [v3 dateCreated];
  [v3 faceBoundingBox];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v3 personUUID];
  v22 = [(HMIPersonFaceCrop *)v9 initWithUUID:v10 dataRepresentation:v11 dateCreated:v12 faceBoundingBox:v21 personUUID:v4 source:v14, v16, v18, v20];

  return v22;
}

- (void)fetchFaceCropsForPersonsWithUUIDs:(id)ds completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@fetchFaceCropsForPersonsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMIHomePersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = selfCopy;
  v16 = dsCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = dsCopy;
  dispatch_async(workQueue, block);
}

void __79__HMIHomePersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homePersonManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__HMIHomePersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_2;
  v5[3] = &unk_278752E48;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 fetchFaceCropsForPersonsWithUUIDs:v3 completion:v5];
}

void __79__HMIHomePersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __79__HMIHomePersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_3;
    v5[3] = &unk_278752E20;
    v5[4] = *(a1 + 32);
    v3 = [a2 na_map:v5];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

HMIPersonFaceCrop *__79__HMIHomePersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 source];
  if (v4 >= 5)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v8;
      v26 = 2048;
      v27 = [v3 source];
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Received invalid HMPersonFaceCropSource: %ld", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v9 = [HMIPersonFaceCrop alloc];
  v10 = [v3 UUID];
  v11 = [v3 dataRepresentation];
  v12 = [v3 dateCreated];
  [v3 faceBoundingBox];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v3 personUUID];
  v22 = [(HMIPersonFaceCrop *)v9 initWithUUID:v10 dataRepresentation:v11 dateCreated:v12 faceBoundingBox:v21 personUUID:v4 source:v14, v16, v18, v20];

  return v22;
}

- (void)fetchAllFaceprintsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@fetchAllFaceprintsWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__HMIHomePersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke;
  v11[3] = &unk_278752DF8;
  v11[4] = selfCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, v11);
}

void __67__HMIHomePersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homePersonManager];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__HMIHomePersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke_2;
  v3[3] = &unk_278752DD0;
  v4 = *(a1 + 40);
  [v2 fetchAllFaceprintsWithCompletion:v3];
}

void __67__HMIHomePersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 na_map:&__block_literal_global_9_1];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

HMIFaceprint *__67__HMIHomePersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HMIFaceprint alloc];
  v4 = [v2 UUID];
  v5 = [v2 data];
  v6 = [v2 modelUUID];
  v7 = [v2 faceCropUUID];

  v8 = [(HMIFaceprint *)v3 initWithUUID:v4 data:v5 modelUUID:v6 faceCropUUID:v7];

  return v8;
}

- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)ds completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@fetchFaceprintsForFaceCropsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMIHomePersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = selfCopy;
  v16 = dsCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = dsCopy;
  dispatch_async(workQueue, block);
}

void __82__HMIHomePersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homePersonManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__HMIHomePersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke_2;
  v4[3] = &unk_278752DD0;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 fetchFaceprintsForFaceCropsWithUUIDs:v3 completion:v4];
}

void __82__HMIHomePersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 na_map:&__block_literal_global_12_0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

HMIFaceprint *__82__HMIHomePersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HMIFaceprint alloc];
  v4 = [v2 UUID];
  v5 = [v2 data];
  v6 = [v2 modelUUID];
  v7 = [v2 faceCropUUID];

  v8 = [(HMIFaceprint *)v3 initWithUUID:v4 data:v5 modelUUID:v6 faceCropUUID:v7];

  return v8;
}

- (void)fetchSettingsWithCompletion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@fetchSettingsWithCompletion", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
  completionCopy[2](completionCopy, 0, v9);
}

- (void)performCloudPullWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@performCloudPullWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HMIHomePersonDataSourceHomeKit_performCloudPullWithCompletion___block_invoke;
  v11[3] = &unk_278752DF8;
  v11[4] = selfCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, v11);
}

void __65__HMIHomePersonDataSourceHomeKit_performCloudPullWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homePersonManager];
  [v2 performCloudPullWithCompletion:*(a1 + 40)];
}

- (void)addFaceCrops:(id)crops completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  cropsCopy = crops;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = cropsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@addFaceCrops:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMIHomePersonDataSourceHomeKit_addFaceCrops_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v16 = cropsCopy;
  v17 = selfCopy;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = cropsCopy;
  dispatch_async(workQueue, block);
}

void __58__HMIHomePersonDataSourceHomeKit_addFaceCrops_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) na_map:&__block_literal_global_16_0];
  v2 = [*(a1 + 40) homePersonManager];
  [v2 addOrUpdateFaceCrops:v3 completion:*(a1 + 48)];
}

id __58__HMIHomePersonDataSourceHomeKit_addFaceCrops_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1A30];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 UUID];
  v6 = [v3 dataRepresentation];
  v7 = [v3 dateCreated];
  [v3 faceBoundingBox];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v4 initWithUUID:v5 dataRepresentation:v6 dateCreated:v7 faceBoundingBox:{v9, v11, v13, v15}];

  return v16;
}

- (void)addFaceprints:(id)faceprints completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  faceprintsCopy = faceprints;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = faceprintsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@addFaceprints:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMIHomePersonDataSourceHomeKit_addFaceprints_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v16 = faceprintsCopy;
  v17 = selfCopy;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = faceprintsCopy;
  dispatch_async(workQueue, block);
}

void __59__HMIHomePersonDataSourceHomeKit_addFaceprints_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) na_map:&__block_literal_global_20_0];
  v2 = [*(a1 + 40) homePersonManager];
  [v2 addOrUpdateFaceprints:v3 completion:*(a1 + 48)];
}

id __59__HMIHomePersonDataSourceHomeKit_addFaceprints_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1A38];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 UUID];
  v6 = [v3 data];
  v7 = [v3 modelUUID];
  v8 = [v3 faceCropUUID];

  v9 = [v4 initWithUUID:v5 data:v6 modelUUID:v7 faceCropUUID:v8];

  return v9;
}

- (void)addPersonFaceCrops:(id)crops completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  cropsCopy = crops;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = cropsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@addPersonFaceCrops:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMIHomePersonDataSourceHomeKit_addPersonFaceCrops_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v16 = cropsCopy;
  v17 = selfCopy;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = cropsCopy;
  dispatch_async(workQueue, block);
}

void __64__HMIHomePersonDataSourceHomeKit_addPersonFaceCrops_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__HMIHomePersonDataSourceHomeKit_addPersonFaceCrops_completion___block_invoke_2;
  v5[3] = &unk_278754920;
  v5[4] = *(a1 + 40);
  v3 = [v2 na_map:v5];
  v4 = [*(a1 + 40) homePersonManager];
  [v4 addOrUpdateFaceCrops:v3 completion:*(a1 + 48)];
}

id __64__HMIHomePersonDataSourceHomeKit_addPersonFaceCrops_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 source];
  if (v4 >= 5)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v8;
      v27 = 2048;
      v28 = [v3 source];
      _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_ERROR, "%{public}@Received invalid HMIPersonFaceCropSource: %ld", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v9 = objc_alloc(MEMORY[0x277CD1C78]);
  v10 = [v3 UUID];
  v11 = [v3 dataRepresentation];
  v12 = [v3 dateCreated];
  [v3 faceBoundingBox];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v3 personUUID];
  v22 = [v9 initWithUUID:v10 dataRepresentation:v11 dateCreated:v12 faceBoundingBox:v21 personUUID:{v14, v16, v18, v20}];

  [v22 setSource:v4];
  v23 = [v22 copy];

  return v23;
}

- (void)addPersons:(id)persons completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  personsCopy = persons;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = personsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@addPersons:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMIHomePersonDataSourceHomeKit_addPersons_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v16 = personsCopy;
  v17 = selfCopy;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = personsCopy;
  dispatch_async(workQueue, block);
}

void __56__HMIHomePersonDataSourceHomeKit_addPersons_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) na_map:&__block_literal_global_26];
  v2 = [*(a1 + 40) homePersonManager];
  [v2 addOrUpdatePersons:v3 completion:*(a1 + 48)];
}

id __56__HMIHomePersonDataSourceHomeKit_addPersons_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1C70];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 UUID];
  v6 = [v4 initWithUUID:v5];

  v7 = [v3 name];

  [v6 setName:v7];

  return v6;
}

- (void)fetchAllUnassociatedFaceCropsWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@fetchAllUnassociatedFaceCropsWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HMIHomePersonDataSourceHomeKit_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke;
  v11[3] = &unk_278752DF8;
  v11[4] = selfCopy;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, v11);
}

void __78__HMIHomePersonDataSourceHomeKit_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homePersonManager];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__HMIHomePersonDataSourceHomeKit_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke_2;
  v3[3] = &unk_278752DD0;
  v4 = *(a1 + 40);
  [v2 fetchAllUnassociatedFaceCropsWithCompletion:v3];
}

void __78__HMIHomePersonDataSourceHomeKit_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 na_map:&__block_literal_global_30];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

HMIFaceCrop *__78__HMIHomePersonDataSourceHomeKit_fetchAllUnassociatedFaceCropsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HMIFaceCrop alloc];
  v4 = [v2 UUID];
  v5 = [v2 dataRepresentation];
  v6 = [v2 dateCreated];
  [v2 faceBoundingBox];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(HMIFaceCrop *)v3 initWithUUID:v4 dataRepresentation:v5 dateCreated:v6 faceBoundingBox:v8, v10, v12, v14];

  return v15;
}

- (void)removeFaceCropsWithUUIDs:(id)ds completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@removeFaceCropsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMIHomePersonDataSourceHomeKit_removeFaceCropsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = selfCopy;
  v16 = dsCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = dsCopy;
  dispatch_async(workQueue, block);
}

void __70__HMIHomePersonDataSourceHomeKit_removeFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homePersonManager];
  [v2 removeFaceCropsWithUUIDs:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)removeFaceprintsWithUUIDs:(id)ds completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@removeFaceprintsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMIHomePersonDataSourceHomeKit_removeFaceprintsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = selfCopy;
  v16 = dsCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = dsCopy;
  dispatch_async(workQueue, block);
}

void __71__HMIHomePersonDataSourceHomeKit_removeFaceprintsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homePersonManager];
  [v2 removeFaceprintsWithUUIDs:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)removePersonsWithUUIDs:(id)ds completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = dsCopy;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@removePersonsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMIHomePersonDataSourceHomeKit_removePersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = selfCopy;
  v16 = dsCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = dsCopy;
  dispatch_async(workQueue, block);
}

void __68__HMIHomePersonDataSourceHomeKit_removePersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) homePersonManager];
  [v2 removePersonsWithUUIDs:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)associateFaceCropsWithUUIDs:(id)ds toPersonWithUUID:(id)d forSource:(int64_t)source completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  completionCopy = completion;
  if (!source)
  {
    [HMIHomePersonDataSourceHomeKit associateFaceCropsWithUUIDs:toPersonWithUUID:forSource:completion:];
  }

  v13 = completionCopy;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543874;
    v28 = v17;
    v29 = 2112;
    v30 = dsCopy;
    v31 = 2112;
    v32 = dCopy;
    _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_DEBUG, "%{public}@associateFaceCropsWithUUIDs:%@ toPersonWithUUID:%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  workQueue = [(HMIHomePersonDataSourceHomeKit *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__HMIHomePersonDataSourceHomeKit_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke;
  block[3] = &unk_278754988;
  v25 = v13;
  sourceCopy = source;
  block[4] = selfCopy;
  v23 = dsCopy;
  v24 = dCopy;
  v19 = v13;
  v20 = dCopy;
  v21 = dsCopy;
  dispatch_async(workQueue, block);
}

void __100__HMIHomePersonDataSourceHomeKit_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  if (v2 >= 5)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 64);
      v9 = 138543618;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_ERROR, "%{public}@Received invalid HMIPersonFaceCropSource: %ld", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v2 = 0;
  }

  v8 = [*(a1 + 32) homePersonManager];
  [v8 associateFaceCropsWithUUIDs:*(a1 + 40) toPersonWithUUID:*(a1 + 48) forSource:v2 completion:*(a1 + 56)];
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  homePersonManager = [(HMIHomePersonDataSourceHomeKit *)self homePersonManager];
  uUID = [homePersonManager UUID];
  v5 = [v2 stringWithFormat:@"%@", uUID];

  return v5;
}

@end