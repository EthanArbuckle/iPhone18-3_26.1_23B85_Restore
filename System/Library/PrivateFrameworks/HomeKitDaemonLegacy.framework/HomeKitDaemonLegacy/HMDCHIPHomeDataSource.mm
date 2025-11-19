@interface HMDCHIPHomeDataSource
+ (id)logCategory;
- (BOOL)updateKeyValueStoreWithEntries:(id)a3;
- (HMDCHIPHomeDataSource)initWithFabricID:(id)a3 home:(id)a4;
- (HMDHome)home;
- (NSDictionary)keyValueStore;
- (NSSet)allNodeIDs;
- (NSUUID)fabricUUID;
- (id)allStorageDataSourcesForDeviceWithNodeID:(id)a3;
- (id)identifier;
- (id)logIdentifier;
- (id)primaryAccessoryCategoryForNodeID:(id)a3;
- (id)storageDataSourceForDeviceWithNodeID:(id)a3;
- (void)_updateHomeModelWithLabel:(id)a3 completion:(id)a4 block:(id)a5;
- (void)updateKeyValueStore:(id)a3 completion:(id)a4;
- (void)updateKeyValueStoreWithBlock:(id)a3 completion:(id)a4;
@end

@implementation HMDCHIPHomeDataSource

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCHIPHomeDataSource *)self home];
  v5 = [v4 logIdentifier];
  v6 = [(HMDCHIPHomeDataSource *)self fabricID];
  v7 = [v3 stringWithFormat:@"%@/%@", v5, v6];

  return v7;
}

- (id)identifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDCHIPHomeDataSource *)self home];
  v4 = [v3 logIdentifier];
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

- (id)primaryAccessoryCategoryForNodeID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPHomeDataSource *)self home];
  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = [v5 matterAccessories];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__HMDCHIPHomeDataSource_primaryAccessoryCategoryForNodeID___block_invoke;
  v18[3] = &unk_27972B940;
  v11 = v4;
  v19 = v11;
  v12 = [v10 na_filter:v18];
  v13 = [v12 firstObject];
  v14 = [v13 category];

  if (v14)
  {
    v15 = [MEMORY[0x277CD1680] categoryIdentifierForCategory:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __59__HMDCHIPHomeDataSource_primaryAccessoryCategoryForNodeID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPrimary])
  {
    v4 = [v3 matterNodeID];
    v5 = [v4 isEqual:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)allStorageDataSourcesForDeviceWithNodeID:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPHomeDataSource *)self home];
  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = MEMORY[0x277CBEB98];
  v11 = [v5 matterAccessories];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__HMDCHIPHomeDataSource_allStorageDataSourcesForDeviceWithNodeID___block_invoke;
  v24[3] = &unk_27972B968;
  v12 = v4;
  v25 = v12;
  v13 = [v11 na_map:v24];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v16 = [v10 setWithArray:v15];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find accessories with Matter node ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

HMDCHIPAccessoryDataSource *__66__HMDCHIPHomeDataSource_allStorageDataSourcesForDeviceWithNodeID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 matterNodeID];
  if ([v4 isEqualToNumber:*(a1 + 32)])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [[HMDCHIPAccessoryDataSource alloc] initWithNodeID:*(a1 + 32) accessory:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)storageDataSourceForDeviceWithNodeID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPHomeDataSource *)self home];
  v6 = [v5 matterAccessories];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__HMDCHIPHomeDataSource_storageDataSourceForDeviceWithNodeID___block_invoke;
  v16[3] = &unk_27972B940;
  v7 = v4;
  v17 = v7;
  v8 = [v6 na_firstObjectPassingTest:v16];

  if (v8)
  {
    v9 = [[HMDCHIPAccessoryDataSource alloc] initWithNodeID:v7 accessory:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find accessory with CHIP node ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __62__HMDCHIPHomeDataSource_storageDataSourceForDeviceWithNodeID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 chipStorage];
  v4 = [v3 nodeID];
  v5 = [v4 isEqualToNumber:*(a1 + 32)];

  return v5;
}

- (NSSet)allNodeIDs
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCHIPHomeDataSource *)self home];
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Home reference is nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = MEMORY[0x277CBEB98];
  v9 = [v3 matterAccessories];
  v10 = [v9 na_map:&__block_literal_global_115894];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = [v8 setWithArray:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id __35__HMDCHIPHomeDataSource_allNodeIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 matterNodeID];
  if ([v3 unsignedLongValue])
  {
    v4 = [v2 matterNodeID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateKeyValueStoreWithBlock:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCHIPHomeDataSource *)self home];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating home model key-value store", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__HMDCHIPHomeDataSource_updateKeyValueStoreWithBlock_completion___block_invoke;
    v18[3] = &unk_27972B918;
    v19 = v6;
    [(HMDCHIPHomeDataSource *)v10 _updateHomeModelWithLabel:@"Update CHIP key-value store" completion:v7 block:v18];
    v14 = v19;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v15;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v14 = _Block_copy(v7);
    if (v14)
    {
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v14[2](v14, v16);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __65__HMDCHIPHomeDataSource_updateKeyValueStoreWithBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = (*(*(a1 + 32) + 16))();
  if (v8)
  {
    v9 = [v6 copy];
    [v5 setChipKeyValueStore:v9];
  }

  return v8;
}

- (BOOL)updateKeyValueStoreWithEntries:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDCHIPHomeDataSource_updateKeyValueStoreWithEntries___block_invoke;
  v7[3] = &unk_27972B8F0;
  v8 = v4;
  v5 = v4;
  [(HMDCHIPHomeDataSource *)self updateKeyValueStoreWithBlock:v7 completion:0];

  return 1;
}

- (void)updateKeyValueStore:(id)a3 completion:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HMDCHIPHomeDataSource_updateKeyValueStore_completion___block_invoke;
  v8[3] = &unk_27972B8F0;
  v9 = v6;
  v7 = v6;
  [(HMDCHIPHomeDataSource *)self updateKeyValueStoreWithBlock:v8 completion:a4];
}

uint64_t __56__HMDCHIPHomeDataSource_updateKeyValueStore_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HMDCHIPHomeDataSource_updateKeyValueStore_completion___block_invoke_2;
  v11[3] = &unk_27972B8C8;
  v12 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v7 keysOfEntriesPassingTest:v11];
  v9 = [v8 allObjects];
  [v6 addObjectsFromArray:v9];

  [v7 setDictionary:*(a1 + 32)];
  return 1;
}

BOOL __56__HMDCHIPHomeDataSource_updateKeyValueStore_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = v2 == 0;

  return v3;
}

- (NSDictionary)keyValueStore
{
  v2 = [(HMDCHIPHomeDataSource *)self home];
  v3 = [v2 chipStorage];
  v4 = [v3 keyValueStore];

  return v4;
}

- (NSUUID)fabricUUID
{
  v2 = [(HMDCHIPHomeDataSource *)self home];
  v3 = [v2 targetFabricUUID];

  return v3;
}

- (void)_updateHomeModelWithLabel:(id)a3 completion:(id)a4 block:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCHIPHomeDataSource *)self home];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 emptyModelObjectWithChangeType:2];
    v14 = [(HMDCHIPHomeDataSource *)self lock];
    [v14 lock];

    v15 = [(HMDCHIPHomeDataSource *)self pendingKeyValueStore];

    if (!v15)
    {
      v16 = [(HMDCHIPHomeDataSource *)self keyValueStore];
      if (v16)
      {
        v17 = [(HMDCHIPHomeDataSource *)self keyValueStore];
        v18 = [v17 mutableCopy];
        [(HMDCHIPHomeDataSource *)self setPendingKeyValueStore:v18];
      }

      else
      {
        v17 = [MEMORY[0x277CBEB38] dictionary];
        [(HMDCHIPHomeDataSource *)self setPendingKeyValueStore:v17];
      }
    }

    [(HMDCHIPHomeDataSource *)self setPendingKeyValueStoreTransactionsCount:[(HMDCHIPHomeDataSource *)self pendingKeyValueStoreTransactionsCount]+ 1];
    v24 = [(HMDCHIPHomeDataSource *)self pendingKeyValueStore];
    v25 = (*(v10 + 2))(v10, v13, v24);

    if (v25)
    {
      v26 = [v12 backingStore];
      v27 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v28 = [v26 transaction:v8 options:v27];

      [v28 add:v13];
      if (v28)
      {
        v34 = MEMORY[0x277D85DD0];
        v35 = 3221225472;
        v36 = __68__HMDCHIPHomeDataSource__updateHomeModelWithLabel_completion_block___block_invoke;
        v37 = &unk_279733F30;
        v38 = self;
        v39 = v9;
        [v28 run:&v34];
        v29 = [(HMDCHIPHomeDataSource *)self lock:v34];
        [v29 unlock];

        goto LABEL_19;
      }
    }

    else
    {
      v30 = [(HMDCHIPHomeDataSource *)self pendingKeyValueStoreTransactionsCount]- 1;
      [(HMDCHIPHomeDataSource *)self setPendingKeyValueStoreTransactionsCount:v30];
      if (!v30)
      {
        [(HMDCHIPHomeDataSource *)self setPendingKeyValueStore:0];
      }
    }

    v31 = [(HMDCHIPHomeDataSource *)self lock];
    [v31 unlock];

    v32 = _Block_copy(v9);
    v23 = v32;
    if (v32)
    {
      (*(v32 + 2))(v32, 0);
    }

LABEL_18:

    goto LABEL_19;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v22;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Home reference is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v13 = _Block_copy(v9);
  if (v13)
  {
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (v13)[2](v13, v23);
    goto LABEL_18;
  }

LABEL_19:

  v33 = *MEMORY[0x277D85DE8];
}

void __68__HMDCHIPHomeDataSource__updateHomeModelWithLabel_completion_block___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) pendingKeyValueStore];
  v4 = [*(a1 + 32) home];
  v5 = [v4 chipStorage];
  [v5 setKeyValueStore:v3];

  v6 = [*(a1 + 32) lock];
  [v6 lock];

  v7 = *(a1 + 32);
  v8 = [v7 pendingKeyValueStoreTransactionsCount] - 1;
  [v7 setPendingKeyValueStoreTransactionsCount:v8];
  if (!v8)
  {
    [*(a1 + 32) setPendingKeyValueStore:0];
  }

  v9 = [*(a1 + 32) lock];
  [v9 unlock];

  v10 = _Block_copy(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v12);
  }
}

- (HMDCHIPHomeDataSource)initWithFabricID:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return +[(HMDCHIPHomeDataSource *)v15];
  }

  v17.receiver = self;
  v17.super_class = HMDCHIPHomeDataSource;
  v10 = [(HMDCHIPHomeDataSource *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fabricID, a3);
    objc_storeWeak(&v11->_home, v9);
    v12 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v11->_lock;
    v11->_lock = v12;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_115922 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_115922, &__block_literal_global_38_115923);
  }

  v3 = logCategory__hmf_once_v13_115924;

  return v3;
}

uint64_t __36__HMDCHIPHomeDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_115924;
  logCategory__hmf_once_v13_115924 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end