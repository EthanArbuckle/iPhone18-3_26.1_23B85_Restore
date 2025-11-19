@interface HMIExternalPersonDataSourceHomeKit
- (HMIExternalPersonDataSourceHomeKit)initWithHMPhotosPersonManager:(id)a3;
- (id)logIdentifier;
- (void)addFaceprints:(id)a3 completion:(id)a4;
- (void)fetchAllFaceprintsWithCompletion:(id)a3;
- (void)fetchAllPersonFaceCropsWithCompletion:(id)a3;
- (void)fetchAllPersonsWithCompletion:(id)a3;
- (void)fetchFaceCropsForPersonsWithUUIDs:(id)a3 completion:(id)a4;
- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)a3 completion:(id)a4;
- (void)fetchPersonsWithUUIDs:(id)a3 completion:(id)a4;
- (void)fetchSettingsWithCompletion:(id)a3;
- (void)performCloudPullWithCompletion:(id)a3;
- (void)removeFaceprintsWithUUIDs:(id)a3 completion:(id)a4;
@end

@implementation HMIExternalPersonDataSourceHomeKit

- (HMIExternalPersonDataSourceHomeKit)initWithHMPhotosPersonManager:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HMIExternalPersonDataSourceHomeKit;
  v6 = [(HMIExternalPersonDataSourceHomeKit *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v8 = HMIDispatchQueueNameString(v6, 0);
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);
    workQueue = v7->_workQueue;
    v7->_workQueue = v11;

    objc_storeStrong(&v7->_photosPersonManager, a3);
  }

  return v7;
}

- (void)fetchAllPersonsWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@fetchAllPersonsWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMIExternalPersonDataSourceHomeKit *)v6 workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HMIExternalPersonDataSourceHomeKit_fetchAllPersonsWithCompletion___block_invoke;
  v11[3] = &unk_278752DF8;
  v11[4] = v6;
  v12 = v4;
  v10 = v4;
  dispatch_async(v9, v11);
}

void __68__HMIExternalPersonDataSourceHomeKit_fetchAllPersonsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonManager];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__HMIExternalPersonDataSourceHomeKit_fetchAllPersonsWithCompletion___block_invoke_2;
  v3[3] = &unk_278752DD0;
  v4 = *(a1 + 40);
  [v2 fetchAllPersonsWithCompletion:v3];
}

void __68__HMIExternalPersonDataSourceHomeKit_fetchAllPersonsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 na_map:&__block_literal_global_5];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

- (void)fetchPersonsWithUUIDs:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@fetchPersonsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMIExternalPersonDataSourceHomeKit *)v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMIExternalPersonDataSourceHomeKit_fetchPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = v9;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(v12, block);
}

void __71__HMIExternalPersonDataSourceHomeKit_fetchPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__HMIExternalPersonDataSourceHomeKit_fetchPersonsWithUUIDs_completion___block_invoke_2;
  v4[3] = &unk_278752DD0;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 fetchPersonsWithUUIDs:v3 completion:v4];
}

void __71__HMIExternalPersonDataSourceHomeKit_fetchPersonsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 na_map:&__block_literal_global_4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

- (void)fetchAllPersonFaceCropsWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@fetchAllPersonFaceCropsWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMIExternalPersonDataSourceHomeKit *)v6 workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HMIExternalPersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke;
  v11[3] = &unk_278752DF8;
  v11[4] = v6;
  v12 = v4;
  v10 = v4;
  dispatch_async(v9, v11);
}

void __76__HMIExternalPersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__HMIExternalPersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke_2;
  v4[3] = &unk_278752E48;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 fetchAllPersonFaceCropsWithCompletion:v4];
}

void __76__HMIExternalPersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __76__HMIExternalPersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke_3;
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

HMIPersonFaceCrop *__76__HMIExternalPersonDataSourceHomeKit_fetchAllPersonFaceCropsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
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

- (void)fetchFaceCropsForPersonsWithUUIDs:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@fetchFaceCropsForPersonsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMIExternalPersonDataSourceHomeKit *)v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMIExternalPersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = v9;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(v12, block);
}

void __83__HMIExternalPersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83__HMIExternalPersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_2;
  v5[3] = &unk_278752E48;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 fetchFaceCropsForPersonsWithUUIDs:v3 completion:v5];
}

void __83__HMIExternalPersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __83__HMIExternalPersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_3;
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

HMIPersonFaceCrop *__83__HMIExternalPersonDataSourceHomeKit_fetchFaceCropsForPersonsWithUUIDs_completion___block_invoke_3(uint64_t a1, void *a2)
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

- (void)fetchAllFaceprintsWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@fetchAllFaceprintsWithCompletion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMIExternalPersonDataSourceHomeKit *)v6 workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__HMIExternalPersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke;
  v11[3] = &unk_278752DF8;
  v11[4] = v6;
  v12 = v4;
  v10 = v4;
  dispatch_async(v9, v11);
}

void __71__HMIExternalPersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonManager];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__HMIExternalPersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke_2;
  v3[3] = &unk_278752DD0;
  v4 = *(a1 + 40);
  [v2 fetchAllFaceprintsWithCompletion:v3];
}

void __71__HMIExternalPersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 na_map:&__block_literal_global_9];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

HMIFaceprint *__71__HMIExternalPersonDataSourceHomeKit_fetchAllFaceprintsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
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

- (void)fetchFaceprintsForFaceCropsWithUUIDs:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@fetchFaceprintsForFaceCropsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMIExternalPersonDataSourceHomeKit *)v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__HMIExternalPersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = v9;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(v12, block);
}

void __86__HMIExternalPersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__HMIExternalPersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke_2;
  v4[3] = &unk_278752DD0;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 fetchFaceprintsForFaceCropsWithUUIDs:v3 completion:v4];
}

void __86__HMIExternalPersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 na_map:&__block_literal_global_12];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

HMIFaceprint *__86__HMIExternalPersonDataSourceHomeKit_fetchFaceprintsForFaceCropsWithUUIDs_completion___block_invoke_3(uint64_t a1, void *a2)
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

- (void)fetchSettingsWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
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
  v4[2](v4, 0, v9);
}

- (void)performCloudPullWithCompletion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_DEBUG, "%{public}@performCloudPullWithCompletion", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
  v4[2](v4, v9);
}

- (void)addFaceprints:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@addFaceprints:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMIExternalPersonDataSourceHomeKit *)v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMIExternalPersonDataSourceHomeKit_addFaceprints_completion___block_invoke;
  block[3] = &unk_2787526C0;
  v16 = v6;
  v17 = v9;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(v12, block);
}

void __63__HMIExternalPersonDataSourceHomeKit_addFaceprints_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) na_map:&__block_literal_global_16];
  v2 = [*(a1 + 40) photosPersonManager];
  [v2 addOrUpdateFaceprints:v3 completion:*(a1 + 48)];
}

id __63__HMIExternalPersonDataSourceHomeKit_addFaceprints_completion___block_invoke_2(uint64_t a1, void *a2)
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

- (void)removeFaceprintsWithUUIDs:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@removeFaceprintsWithUUIDs:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMIExternalPersonDataSourceHomeKit *)v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMIExternalPersonDataSourceHomeKit_removeFaceprintsWithUUIDs_completion___block_invoke;
  block[3] = &unk_2787526C0;
  block[4] = v9;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(v12, block);
}

void __75__HMIExternalPersonDataSourceHomeKit_removeFaceprintsWithUUIDs_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosPersonManager];
  [v2 removeFaceprintsWithUUIDs:*(a1 + 40) completion:*(a1 + 48)];
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMIExternalPersonDataSourceHomeKit *)self photosPersonManager];
  v4 = [v3 UUID];
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

@end