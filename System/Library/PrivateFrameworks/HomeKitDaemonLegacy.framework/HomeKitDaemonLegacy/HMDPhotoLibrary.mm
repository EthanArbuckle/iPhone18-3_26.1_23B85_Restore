@interface HMDPhotoLibrary
+ (id)_phPersonWithUUID:(id)d fromSuggestedPersonsFetchResult:(id)result;
+ (id)logCategory;
- (HMDPhotoLibrary)initWithWorkQueue:(id)queue;
- (HMDPhotoLibraryDelegate)delegate;
- (NSSet)persons;
- (PHPhotoLibrary)photoLibrary;
- (id)fetchFaceCropDataByUUIDForPersonUUID:(id)d;
- (id)fetchOptions;
- (void)fetchPersons;
- (void)photoLibraryDidChange:(id)change;
- (void)setDelegate:(id)delegate;
@end

@implementation HMDPhotoLibrary

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  workQueue = [(HMDPhotoLibrary *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HMDPhotoLibrary_photoLibraryDidChange___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_sync(workQueue, v7);
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
  workQueue = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  photoLibrary = [(HMDPhotoLibrary *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeNonvisibleFaces:0];

  return librarySpecificFetchOptions;
}

- (PHPhotoLibrary)photoLibrary
{
  workQueue = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  photoLibrary = self->_photoLibrary;
  if (!photoLibrary)
  {
    mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedPhotoLibrary];
    v6 = self->_photoLibrary;
    self->_photoLibrary = mEMORY[0x277CD9948];

    photoLibrary = self->_photoLibrary;
  }

  return photoLibrary;
}

- (id)fetchFaceCropDataByUUIDForPersonUUID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  workQueue = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  suggestedPersonsFetchResult = [(HMDPhotoLibrary *)self suggestedPersonsFetchResult];
  if (suggestedPersonsFetchResult)
  {
    v7 = [HMDPhotoLibrary _phPersonWithUUID:dCopy fromSuggestedPersonsFetchResult:suggestedPersonsFetchResult];
    if (v7)
    {
      fetchOptions = [(HMDPhotoLibrary *)self fetchOptions];
      [fetchOptions setFetchLimit:20];
      v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
      v23 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      [fetchOptions setSortDescriptors:v10];

      v11 = [MEMORY[0x277CD9870] fetchTransientTrainingFaceCropsForPerson:v7 options:fetchOptions];
      faceCropDataByUUID = [v11 faceCropDataByUUID];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = dCopy;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Did not find person with UUID: %@, returning empty dictionary", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      faceCropDataByUUID = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@suggestedPersonsFetchResult is nil, returning nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    faceCropDataByUUID = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return faceCropDataByUUID;
}

- (void)fetchPersons
{
  workQueue = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = MEMORY[0x277CD9938];
  fetchOptions = [(HMDPhotoLibrary *)self fetchOptions];
  v5 = [v4 fetchSuggestedPersonsForClient:1 options:fetchOptions];
  [(HMDPhotoLibrary *)self setSuggestedPersonsFetchResult:v5];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  workQueue = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_storeWeak(&self->_delegate, delegateCopy);
  photoLibrary = [(HMDPhotoLibrary *)self photoLibrary];
  v7 = photoLibrary;
  if (delegateCopy)
  {
    [photoLibrary registerChangeObserver:self];
  }

  else
  {
    [photoLibrary unregisterChangeObserver:self];
  }
}

- (HMDPhotoLibraryDelegate)delegate
{
  workQueue = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSSet)persons
{
  v18 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDPhotoLibrary *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  suggestedPersonsFetchResult = [(HMDPhotoLibrary *)self suggestedPersonsFetchResult];
  v5 = suggestedPersonsFetchResult;
  if (suggestedPersonsFetchResult)
  {
    v6 = MEMORY[0x277CBEB98];
    objects = [suggestedPersonsFetchResult objects];
    v8 = [v6 setWithArray:objects];

    v9 = [v8 na_map:&__block_literal_global_35481];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (HMDPhotoLibrary)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = HMDPhotoLibrary;
  v6 = [(HMDPhotoLibrary *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, queue);
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

+ (id)_phPersonWithUUID:(id)d fromSuggestedPersonsFetchResult:(id)result
{
  dCopy = d;
  objects = [result objects];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HMDPhotoLibrary__phPersonWithUUID_fromSuggestedPersonsFetchResult___block_invoke;
  v10[3] = &unk_2797251E0;
  v11 = dCopy;
  v7 = dCopy;
  v8 = [objects na_firstObjectPassingTest:v10];

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