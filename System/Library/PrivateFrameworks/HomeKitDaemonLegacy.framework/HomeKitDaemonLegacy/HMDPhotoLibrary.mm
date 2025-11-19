@interface HMDPhotoLibrary
+ (id)_phPersonWithUUID:(id)a3 fromSuggestedPersonsFetchResult:(id)a4;
+ (id)logCategory;
- (HMDPhotoLibrary)initWithWorkQueue:(id)a3;
- (HMDPhotoLibraryDelegate)delegate;
- (NSSet)persons;
- (PHPhotoLibrary)photoLibrary;
- (id)fetchFaceCropDataByUUIDForPersonUUID:(id)a3;
- (id)fetchOptions;
- (void)fetchPersons;
- (void)photoLibraryDidChange:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation HMDPhotoLibrary

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v5 = [(HMDPhotoLibrary *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HMDPhotoLibrary_photoLibraryDidChange___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __41__HMDPhotoLibrary_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Photo Library did change", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 40) changedLocalIdentifiersForEntityClass:objc_opt_class()];
  v7 = *MEMORY[0x277CD9C18];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD9C18]];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:v7];
    v10 = [v9 hmf_isEmpty] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) suggestedPersonsFetchResult];
  v13 = [v11 changeDetailsForFetchResult:v12];

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 32);
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    v18 = HMFBooleanToString();
    v26 = 138543874;
    v27 = v17;
    v28 = 2112;
    v29 = v18;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@anyPersonWasAdded: %@, changeDetails: %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v10;
  }

  if (v19 == 1)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Found changes for photo library persons", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [*(a1 + 32) delegate];
    [v24 photoLibraryPersonsDidChange];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)fetchOptions
{
  v3 = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDPhotoLibrary *)self photoLibrary];
  v5 = [v4 librarySpecificFetchOptions];

  [v5 setIncludeNonvisibleFaces:0];

  return v5;
}

- (PHPhotoLibrary)photoLibrary
{
  v3 = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(v3);

  photoLibrary = self->_photoLibrary;
  if (!photoLibrary)
  {
    v5 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
    v6 = self->_photoLibrary;
    self->_photoLibrary = v5;

    photoLibrary = self->_photoLibrary;
  }

  return photoLibrary;
}

- (id)fetchFaceCropDataByUUIDForPersonUUID:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDPhotoLibrary *)self suggestedPersonsFetchResult];
  if (v6)
  {
    v7 = [HMDPhotoLibrary _phPersonWithUUID:v4 fromSuggestedPersonsFetchResult:v6];
    if (v7)
    {
      v8 = [(HMDPhotoLibrary *)self fetchOptions];
      [v8 setFetchLimit:20];
      v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
      v23 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      [v8 setSortDescriptors:v10];

      v11 = [MEMORY[0x277CD9870] fetchTransientTrainingFaceCropsForPerson:v7 options:v8];
      v12 = [v11 faceCropDataByUUID];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = v4;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Did not find person with UUID: %@, returning empty dictionary", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v12 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@suggestedPersonsFetchResult is nil, returning nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)fetchPersons
{
  v3 = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = MEMORY[0x277CD9938];
  v6 = [(HMDPhotoLibrary *)self fetchOptions];
  v5 = [v4 fetchSuggestedPersonsForClient:1 options:v6];
  [(HMDPhotoLibrary *)self setSuggestedPersonsFetchResult:v5];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(v5);

  objc_storeWeak(&self->_delegate, v4);
  v6 = [(HMDPhotoLibrary *)self photoLibrary];
  v7 = v6;
  if (v4)
  {
    [v6 registerChangeObserver:self];
  }

  else
  {
    [v6 unregisterChangeObserver:self];
  }
}

- (HMDPhotoLibraryDelegate)delegate
{
  v3 = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(v3);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSSet)persons
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDPhotoLibrary *)self suggestedPersonsFetchResult];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = [v4 objects];
    v8 = [v6 setWithArray:v7];

    v9 = [v8 na_map:&__block_literal_global_35481];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@suggestedPersonsFetchResult is nil, returning nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDPhotoLibrary)initWithWorkQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDPhotoLibrary;
  v6 = [(HMDPhotoLibrary *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_35492 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_35492, &__block_literal_global_358);
  }

  v3 = logCategory__hmf_once_v7_35493;

  return v3;
}

uint64_t __30__HMDPhotoLibrary_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_35493;
  logCategory__hmf_once_v7_35493 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)_phPersonWithUUID:(id)a3 fromSuggestedPersonsFetchResult:(id)a4
{
  v5 = a3;
  v6 = [a4 objects];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HMDPhotoLibrary__phPersonWithUUID_fromSuggestedPersonsFetchResult___block_invoke;
  v10[3] = &unk_2797251E0;
  v11 = v5;
  v7 = v5;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __69__HMDPhotoLibrary__phPersonWithUUID_fromSuggestedPersonsFetchResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

@end