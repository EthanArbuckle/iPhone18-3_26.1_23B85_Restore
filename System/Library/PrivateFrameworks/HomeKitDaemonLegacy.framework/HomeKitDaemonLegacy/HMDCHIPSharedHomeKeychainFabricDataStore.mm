@interface HMDCHIPSharedHomeKeychainFabricDataStore
+ (id)logCategory;
- (BOOL)storeFabricData:(id)a3;
- (BOOL)storeNewKeychainItemWithFabricData:(id)a3;
- (HMDCHIPSharedHomeKeychainFabricDataStore)initWithHomeUUID:(id)a3 iCloudIdentifier:(id)a4;
- (HMMTROperationalFabricData)fabricData;
- (id)keychainItemIdentifier;
- (id)logIdentifier;
- (id)unarchiveKeyItemValue:(id)a3;
- (void)removeFabricData;
@end

@implementation HMDCHIPSharedHomeKeychainFabricDataStore

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDCHIPSharedHomeKeychainFabricDataStore *)self homeUUID];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (BOOL)storeNewKeychainItemWithFabricData:(id)a3
{
  v49[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 operationalKeyPair];
  v6 = SecKeyCopyExternalRepresentation([v5 privateKey], 0);

  if (v6)
  {
    v49[0] = v6;
    v48[0] = @"opKey";
    v48[1] = @"rootCert";
    v7 = [v4 rootCert];
    v49[1] = v7;
    v48[2] = @"opCert";
    v8 = [v4 operationalCert];
    v49[2] = v8;
    v48[3] = @"residentNodeID";
    v9 = [v4 residentNodeID];
    v49[3] = v9;
    v48[4] = @"ipk";
    v10 = [v4 ipk];
    v49[4] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:5];

    v43 = 0;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v43];
    v13 = v43;
    if (v12)
    {
      v41 = v11;
      v14 = objc_alloc_init(MEMORY[0x277CFEBC8]);
      [v14 setValueData:v12];
      [v14 setSyncable:0];
      v15 = [(HMDCHIPSharedHomeKeychainFabricDataStore *)self keychainItemIdentifier];
      [v14 setAccount:v15];

      [v14 setAccessGroup:@"com.apple.hap.pairing"];
      [v14 setLabel:@"com.apple.hmmtr.shareduser"];
      [v14 setItemDescription:*MEMORY[0x277D17BA8]];
      [v14 setType:&unk_286628318];
      v16 = MEMORY[0x277CFEC78];
      v17 = [v14 type];
      v18 = [v16 viewHintForType:v17];
      [v14 setViewHint:v18];

      v19 = [(HMDCHIPSharedHomeKeychainFabricDataStore *)self systemKeychainStore];
      v42 = v13;
      [v19 updateKeychainItem:v14 createIfNeeded:1 error:&v42];
      v20 = v42;

      v21 = v20 == 0;
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      v25 = v24;
      if (v20)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v26 = v39 = v22;
          *buf = 138543618;
          v45 = v26;
          v46 = 2112;
          v47 = v20;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to store fabric data: %@", buf, 0x16u);

          v22 = v39;
        }
      }

      else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        [v14 account];
        v35 = v40 = v22;
        *buf = 138543618;
        v45 = v38;
        v46 = 2112;
        v47 = v35;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Stored fabric data as %@", buf, 0x16u);

        v22 = v40;
      }

      objc_autoreleasePoolPop(v22);
      v11 = v41;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v34;
        v46 = 2112;
        v47 = v13;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize fabric data to store: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v21 = 0;
      v20 = v13;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot store fabric data with a bad operational key", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v21 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)unarchiveKeyItemValue:(id)a3
{
  v23[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCAAC8];
  v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v7 = MEMORY[0x277CBEB98];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v23[2] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v9 = [v7 setWithArray:v8];
  v18 = 0;
  v10 = [v5 unarchivedDictionaryWithKeysOfClasses:v6 objectsOfClasses:v9 fromData:v4 error:&v18];
  v11 = v18;

  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive item value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)keychainItemIdentifier
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = [@"mtrS" dataUsingEncoding:4];
  v4 = [v3 mutableCopy];

  v14[0] = 0;
  v14[1] = 0;
  v5 = [(HMDCHIPSharedHomeKeychainFabricDataStore *)self homeUUID];
  [v5 getUUIDBytes:v14];

  [v4 appendBytes:v14 length:16];
  v6 = [(HMDCHIPSharedHomeKeychainFabricDataStore *)self iCloudIdentifier];
  v7 = [v6 dataUsingEncoding:4];
  [v4 appendData:v7];

  CC_SHA256([v4 bytes], objc_msgSend(v4, "length"), md);
  v8 = [MEMORY[0x277CCAB68] stringWithCapacity:32];
  for (i = 0; i != 16; ++i)
  {
    [v8 appendFormat:@"%02x", md[i]];
  }

  v10 = [v8 copy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)removeFabricData
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCHIPSharedHomeKeychainFabricDataStore *)self systemKeychainStore];
  v4 = [(HMDCHIPSharedHomeKeychainFabricDataStore *)self keychainItemIdentifier];
  v25 = 0;
  v5 = [v3 allKeychainItemsForType:&unk_286628318 identifier:v4 syncable:MEMORY[0x277CBEC28] error:&v25];
  v6 = v25;

  if (!v6)
  {
    v18 = v5;
    [v5 na_filter:&__block_literal_global_29_62244];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v24 = 0u;
    v7 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v6 = 0;
      v9 = *v22;
      do
      {
        v10 = 0;
        v11 = v6;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v21 + 1) + 8 * v10);
          v20 = v11;
          [v3 deleteKeychainItem:v12 error:&v20];
          v6 = v20;

          if (v6)
          {
            v13 = objc_autoreleasePoolPush();
            v14 = self;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = HMFGetLogIdentifier();
              *buf = 138543618;
              v27 = v16;
              v28 = 2112;
              v29 = v6;
              _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove existing key %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v13);
          }

          ++v10;
          v11 = v6;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v8);
    }

    else
    {
      v6 = 0;
    }

    v5 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __60__HMDCHIPSharedHomeKeychainFabricDataStore_removeFabricData__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 label];
  v3 = [v2 isEqual:@"com.apple.hmmtr.shareduser"];

  return v3;
}

- (BOOL)storeFabricData:(id)a3
{
  v4 = a3;
  [(HMDCHIPSharedHomeKeychainFabricDataStore *)self removeFabricData];
  LOBYTE(self) = [(HMDCHIPSharedHomeKeychainFabricDataStore *)self storeNewKeychainItemWithFabricData:v4];

  return self;
}

- (HMMTROperationalFabricData)fabricData
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCHIPSharedHomeKeychainFabricDataStore *)self systemKeychainStore];
  v4 = [(HMDCHIPSharedHomeKeychainFabricDataStore *)self keychainItemIdentifier];
  v54 = 0;
  v5 = [v3 allKeychainItemsForType:&unk_286628318 identifier:v4 syncable:MEMORY[0x277CBEC28] error:&v54];
  v6 = v54;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v56 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to get keychain item", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = 0;
  }

  else
  {
    v12 = [v5 na_filter:&__block_literal_global_62249];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __54__HMDCHIPSharedHomeKeychainFabricDataStore_fabricData__block_invoke_2;
    v53[3] = &unk_27972A888;
    v53[4] = self;
    v13 = [v12 na_map:v53];
    v14 = [v13 na_firstObjectPassingTest:&__block_literal_global_24_62250];

    if (v14)
    {
      v49 = v5;
      v15 = [v14 objectForKeyedSubscript:@"rootCert"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      v18 = [v14 objectForKeyedSubscript:@"ipk"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v52 = v19;

      v20 = [v14 objectForKeyedSubscript:@"residentNodeID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v51 = v21;

      v22 = [v14 objectForKeyedSubscript:@"opCert"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      v25 = v24;
      v26 = [v14 objectForKeyedSubscript:@"opKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v28 = v27;

      v48 = v28;
      v29 = [objc_alloc(MEMORY[0x277D17B20]) initWithPrivateKeyExternalRepresentation:v28];
      context = objc_autoreleasePoolPush();
      v30 = self;
      v31 = HMFGetOSLogHandle();
      v32 = v31;
      v33 = v17;
      v50 = v25;
      if (v17 && v52 && v51 && v25 && v29)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v34 = v45 = v17;
          *buf = 138543618;
          v56 = v34;
          v57 = 2112;
          v58 = v4;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Found key chain item with identifier %@", buf, 0x16u);

          v33 = v45;
        }

        objc_autoreleasePoolPop(context);
        v35 = v51;
        v36 = v52;
        v37 = v50;
        v11 = [objc_alloc(MEMORY[0x277D17B58]) initWithRootCert:v33 ipk:v52 residentNodeID:v51 operationalCert:v50 operationalKeyPair:v29];
      }

      else
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v42 = v46 = v17;
          *buf = 138543362;
          v56 = v42;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Found key chain item didn't contain required fields", buf, 0xCu);

          v33 = v46;
        }

        objc_autoreleasePoolPop(context);
        v11 = 0;
        v35 = v51;
        v36 = v52;
        v37 = v50;
      }

      v5 = v49;
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v56 = v41;
        _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Found key chain item is not unpacked", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
      v11 = 0;
    }
  }

  v43 = *MEMORY[0x277D85DE8];

  return v11;
}

id __54__HMDCHIPSharedHomeKeychainFabricDataStore_fabricData__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 valueData];
  v4 = [v2 unarchiveKeyItemValue:v3];

  return v4;
}

uint64_t __54__HMDCHIPSharedHomeKeychainFabricDataStore_fabricData__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 label];
  v3 = [v2 isEqual:@"com.apple.hmmtr.shareduser"];

  return v3;
}

- (HMDCHIPSharedHomeKeychainFabricDataStore)initWithHomeUUID:(id)a3 iCloudIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDCHIPSharedHomeKeychainFabricDataStore;
  v9 = [(HMDCHIPSharedHomeKeychainFabricDataStore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeUUID, a3);
    objc_storeStrong(&v10->_iCloudIdentifier, a4);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15_62266 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15_62266, &__block_literal_global_47_62267);
  }

  v3 = logCategory__hmf_once_v16_62268;

  return v3;
}

uint64_t __55__HMDCHIPSharedHomeKeychainFabricDataStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v16_62268;
  logCategory__hmf_once_v16_62268 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end