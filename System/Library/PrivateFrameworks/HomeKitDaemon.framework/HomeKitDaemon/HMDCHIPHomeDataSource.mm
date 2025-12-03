@interface HMDCHIPHomeDataSource
+ (id)logCategory;
- (BOOL)updateKeyValueStoreWithEntries:(id)entries;
- (HMDCHIPHomeDataSource)initWithFabricID:(id)d home:(id)home;
- (HMDHome)home;
- (NSDictionary)keyValueStore;
- (NSSet)allNodeIDs;
- (NSUUID)fabricUUID;
- (id)allStorageDataSourcesForDeviceWithNodeID:(id)d;
- (id)identifier;
- (id)logIdentifier;
- (id)primaryAccessoryCategoryForNodeID:(id)d;
- (id)storageDataSourceForDeviceWithNodeID:(id)d;
- (void)_updateHomeModelWithLabel:(id)label completion:(id)completion block:(id)block;
- (void)updateKeyValueStore:(id)store completion:(id)completion;
- (void)updateKeyValueStoreWithBlock:(id)block completion:(id)completion;
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
  home = [(HMDCHIPHomeDataSource *)self home];
  logIdentifier = [home logIdentifier];
  fabricID = [(HMDCHIPHomeDataSource *)self fabricID];
  v7 = [v3 stringWithFormat:@"%@/%@", logIdentifier, fabricID];

  return v7;
}

- (id)identifier
{
  v2 = MEMORY[0x277CCACA8];
  home = [(HMDCHIPHomeDataSource *)self home];
  logIdentifier = [home logIdentifier];
  v5 = [v2 stringWithFormat:@"%@", logIdentifier];

  return v5;
}

- (id)primaryAccessoryCategoryForNodeID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  home = [(HMDCHIPHomeDataSource *)self home];
  if (!home)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  matterAccessories = [home matterAccessories];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__HMDCHIPHomeDataSource_primaryAccessoryCategoryForNodeID___block_invoke;
  v18[3] = &unk_278681CA8;
  v11 = dCopy;
  v19 = v11;
  v12 = [matterAccessories na_filter:v18];
  firstObject = [v12 firstObject];
  category = [firstObject category];

  if (category)
  {
    v15 = [MEMORY[0x277CD1680] categoryIdentifierForCategory:category];
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

- (id)allStorageDataSourcesForDeviceWithNodeID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  home = [(HMDCHIPHomeDataSource *)self home];
  if (!home)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = MEMORY[0x277CBEB98];
  matterAccessories = [home matterAccessories];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__HMDCHIPHomeDataSource_allStorageDataSourcesForDeviceWithNodeID___block_invoke;
  v24[3] = &unk_278672310;
  v12 = dCopy;
  v25 = v12;
  v13 = [matterAccessories na_map:v24];
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
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find accessories with Matter node ID: %@", buf, 0x16u);
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

- (id)storageDataSourceForDeviceWithNodeID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  home = [(HMDCHIPHomeDataSource *)self home];
  matterAccessories = [home matterAccessories];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__HMDCHIPHomeDataSource_storageDataSourceForDeviceWithNodeID___block_invoke;
  v16[3] = &unk_278681CA8;
  v7 = dCopy;
  v17 = v7;
  v8 = [matterAccessories na_firstObjectPassingTest:v16];

  if (v8)
  {
    v9 = [[HMDCHIPAccessoryDataSource alloc] initWithNodeID:v7 accessory:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find accessory with CHIP node ID: %@", buf, 0x16u);
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
  home = [(HMDCHIPHomeDataSource *)self home];
  if (!home)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Home reference is nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = MEMORY[0x277CBEB98];
  matterAccessories = [home matterAccessories];
  v10 = [matterAccessories na_map:&__block_literal_global_33570];
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

- (void)updateKeyValueStoreWithBlock:(id)block completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionCopy = completion;
  home = [(HMDCHIPHomeDataSource *)self home];
  v9 = home;
  if (!home)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = _Block_copy(completionCopy);
    if (!v18)
    {
      goto LABEL_24;
    }

    array = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v18[2](v18, array);
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  if (([home isCurrentDevicePrimaryResident] & 1) == 0 && (!isFeatureMatteriPhoneOnlyPairingControlEnabled() || (objc_msgSend(v9, "isPrimaryResidentNodeReachable") & 1) != 0 || !objc_msgSend(v9, "isOwnerUser")))
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Remotely updating home model key-value store", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    keyValueStore = [(HMDCHIPHomeDataSource *)selfCopy2 keyValueStore];
    v25 = [keyValueStore mutableCopy];
    v26 = v25;
    if (v25)
    {
      dictionary = v25;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v18 = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    if (blockCopy[2](blockCopy, v18, array))
    {
      [v9 remotelyUpdateHomeModelWithCHIPKeyValueStore:v18 removedKeys:array completion:completionCopy];
    }

    else
    {
      v28 = _Block_copy(completionCopy);
      v29 = v28;
      if (v28)
      {
        (*(v28 + 2))(v28, 0);
      }
    }

    goto LABEL_23;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Locally updating home model key-value store", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __65__HMDCHIPHomeDataSource_updateKeyValueStoreWithBlock_completion___block_invoke;
  v31[3] = &unk_2786722E8;
  v31[4] = selfCopy3;
  v32 = blockCopy;
  [(HMDCHIPHomeDataSource *)selfCopy3 _updateHomeModelWithLabel:@"Update CHIP key-value store" completion:completionCopy block:v31];

LABEL_25:
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __65__HMDCHIPHomeDataSource_updateKeyValueStoreWithBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) fabricID];
  [v5 setChipFabricID:v7];

  v8 = [*(a1 + 32) fabricID];
  [v5 setChipFabricIndex:v8];

  v9 = [MEMORY[0x277CBEB18] array];
  v10 = (*(*(a1 + 40) + 16))();
  if (v10)
  {
    v11 = [v6 copy];
    [v5 setChipKeyValueStore:v11];
  }

  return v10;
}

- (BOOL)updateKeyValueStoreWithEntries:(id)entries
{
  entriesCopy = entries;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDCHIPHomeDataSource_updateKeyValueStoreWithEntries___block_invoke;
  v7[3] = &unk_2786722C0;
  v8 = entriesCopy;
  v5 = entriesCopy;
  [(HMDCHIPHomeDataSource *)self updateKeyValueStoreWithBlock:v7 completion:0];

  return 1;
}

- (void)updateKeyValueStore:(id)store completion:(id)completion
{
  storeCopy = store;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HMDCHIPHomeDataSource_updateKeyValueStore_completion___block_invoke;
  v8[3] = &unk_2786722C0;
  v9 = storeCopy;
  v7 = storeCopy;
  [(HMDCHIPHomeDataSource *)self updateKeyValueStoreWithBlock:v8 completion:completion];
}

uint64_t __56__HMDCHIPHomeDataSource_updateKeyValueStore_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__HMDCHIPHomeDataSource_updateKeyValueStore_completion___block_invoke_2;
  v11[3] = &unk_278672298;
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
  home = [(HMDCHIPHomeDataSource *)self home];
  chipStorage = [home chipStorage];
  keyValueStore = [chipStorage keyValueStore];

  return keyValueStore;
}

- (NSUUID)fabricUUID
{
  home = [(HMDCHIPHomeDataSource *)self home];
  targetFabricUUID = [home targetFabricUUID];

  return targetFabricUUID;
}

- (void)_updateHomeModelWithLabel:(id)label completion:(id)completion block:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  completionCopy = completion;
  blockCopy = block;
  home = [(HMDCHIPHomeDataSource *)self home];
  v12 = home;
  if (home)
  {
    v13 = [home emptyModelObjectWithChangeType:2];
    lock = [(HMDCHIPHomeDataSource *)self lock];
    [lock lock];

    pendingKeyValueStore = [(HMDCHIPHomeDataSource *)self pendingKeyValueStore];

    if (!pendingKeyValueStore)
    {
      keyValueStore = [(HMDCHIPHomeDataSource *)self keyValueStore];
      if (keyValueStore)
      {
        keyValueStore2 = [(HMDCHIPHomeDataSource *)self keyValueStore];
        v18 = [keyValueStore2 mutableCopy];
        [(HMDCHIPHomeDataSource *)self setPendingKeyValueStore:v18];
      }

      else
      {
        keyValueStore2 = [MEMORY[0x277CBEB38] dictionary];
        [(HMDCHIPHomeDataSource *)self setPendingKeyValueStore:keyValueStore2];
      }
    }

    [(HMDCHIPHomeDataSource *)self setPendingKeyValueStoreTransactionsCount:[(HMDCHIPHomeDataSource *)self pendingKeyValueStoreTransactionsCount]+ 1];
    pendingKeyValueStore2 = [(HMDCHIPHomeDataSource *)self pendingKeyValueStore];
    v25 = (*(blockCopy + 2))(blockCopy, v13, pendingKeyValueStore2);

    if (v25)
    {
      backingStore = [v12 backingStore];
      v27 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v28 = [backingStore transaction:labelCopy options:v27];

      [v28 add:v13];
      if (v28)
      {
        v34 = MEMORY[0x277D85DD0];
        v35 = 3221225472;
        v36 = __68__HMDCHIPHomeDataSource__updateHomeModelWithLabel_completion_block___block_invoke;
        v37 = &unk_278689A68;
        selfCopy = self;
        v39 = completionCopy;
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

    lock2 = [(HMDCHIPHomeDataSource *)self lock];
    [lock2 unlock];

    v32 = _Block_copy(completionCopy);
    v23 = v32;
    if (v32)
    {
      (*(v32 + 2))(v32, 0);
    }

LABEL_18:

    goto LABEL_19;
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v22;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Home reference is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v13 = _Block_copy(completionCopy);
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

- (HMDCHIPHomeDataSource)initWithFabricID:(id)d home:(id)home
{
  dCopy = d;
  homeCopy = home;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = homeCopy;
  if (!homeCopy)
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
    objc_storeStrong(&v10->_fabricID, d);
    objc_storeWeak(&v11->_home, v9);
    v12 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v11->_lock;
    v11->_lock = v12;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_33599 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_33599, &__block_literal_global_38_33600);
  }

  v3 = logCategory__hmf_once_v15_33601;

  return v3;
}

void __36__HMDCHIPHomeDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_33601;
  logCategory__hmf_once_v15_33601 = v1;
}

@end