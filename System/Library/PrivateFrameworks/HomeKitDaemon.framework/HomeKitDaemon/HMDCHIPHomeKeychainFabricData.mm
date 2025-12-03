@interface HMDCHIPHomeKeychainFabricData
+ (id)logCategory;
- (BOOL)storeFabricData:(id)data dataVersion:(id)version;
- (BOOL)storeFabricData:(id)data dataVersion:(id)version creationTime:(id)time;
- (HMDCHIPHomeKeychainFabricData)initWithHomeUUID:(id)d iCloudIdentifier:(id)identifier;
- (NSArray)fabricDataItems;
- (id)logIdentifier;
- (id)rcacFromFabricData:(id)data;
- (id)unarchiveKeyItemValue:(id)value;
@end

@implementation HMDCHIPHomeKeychainFabricData

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  homeUUID = [(HMDCHIPHomeKeychainFabricData *)self homeUUID];
  v4 = [v2 stringWithFormat:@"%@", homeUUID];

  return v4;
}

- (id)rcacFromFabricData:(id)data
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  rootCert = [dataCopy rootCert];

  if (!rootCert)
  {
    _HMFPreconditionFailure();
  }

  rootCert2 = [dataCopy rootCert];

  if (rootCert2)
  {
    v7 = MEMORY[0x277CD5230];
    rootCert3 = [dataCopy rootCert];
    v9 = [v7 convertX509Certificate:rootCert3];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v9];
      subject = [v10 subject];
      rootCACertificateID = [subject rootCACertificateID];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        rootCert4 = [dataCopy rootCert];
        shortDescription = [rootCert4 shortDescription];
        v25 = 138543618;
        v26 = v20;
        v27 = 2112;
        v28 = shortDescription;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Corrupt fabricData rootCert %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      rootCACertificateID = 0;
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
      v25 = 138543618;
      v26 = v16;
      v27 = 2112;
      v28 = dataCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@fabricData didn't contain rootCert to extract RCAC from: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    rootCACertificateID = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return rootCACertificateID;
}

- (id)unarchiveKeyItemValue:(id)value
{
  v23[3] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v5 = MEMORY[0x277CCAAC8];
  v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v7 = MEMORY[0x277CBEB98];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v23[2] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v9 = [v7 setWithArray:v8];
  v18 = 0;
  v10 = [v5 unarchivedDictionaryWithKeysOfClasses:v6 objectsOfClasses:v9 fromData:valueCopy error:&v18];
  v11 = v18;

  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive item value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSArray)fabricDataItems
{
  v22 = *MEMORY[0x277D85DE8];
  systemKeychainStore = [(HMDCHIPHomeKeychainFabricData *)self systemKeychainStore];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCHIPHomeKeychainFabricData signedOut](self, "signedOut") ^ 1}];
  v19 = 0;
  v5 = [systemKeychainStore allKeychainItemsForType:&unk_283E72470 identifier:0 syncable:v4 error:&v19];
  v6 = v19;

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to get keychain items", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    array = [MEMORY[0x277CBEA60] array];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__HMDCHIPHomeKeychainFabricData_fabricDataItems__block_invoke;
    v18[3] = &unk_278675780;
    v18[4] = self;
    v12 = [v5 na_map:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__HMDCHIPHomeKeychainFabricData_fabricDataItems__block_invoke_2;
    v17[3] = &unk_278686BA8;
    v17[4] = self;
    v13 = [v12 na_filter:v17];

    v14 = [v13 na_map:&__block_literal_global_75682];
    array = [v14 na_filter:&__block_literal_global_114_75683];
  }

  v15 = *MEMORY[0x277D85DE8];

  return array;
}

id __48__HMDCHIPHomeKeychainFabricData_fabricDataItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 valueData];
  v6 = [v4 unarchiveKeyItemValue:v5];

  if (v6)
  {
    v7 = [v6 mutableCopy];
    v8 = [v3 account];
    [v7 setObject:v8 forKeyedSubscript:@"uuid"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __48__HMDCHIPHomeKeychainFabricData_fabricDataItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"homeUUID"];
    v6 = [*(a1 + 32) homeUUID];
    v7 = [v6 UUIDString];
    if ([v5 isEqual:v7])
    {
      v8 = [v4 objectForKeyedSubscript:@"iCloudID"];
      v9 = [*(a1 + 32) iCloudIdentifier];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

HMDCHIPHomeKeychainFabricDataItem *__48__HMDCHIPHomeKeychainFabricData_fabricDataItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDCHIPHomeKeychainFabricDataItem alloc] initWithKeyItemValueDictionary:v2];

  return v3;
}

- (BOOL)storeFabricData:(id)data dataVersion:(id)version creationTime:(id)time
{
  v80[9] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  versionCopy = version;
  timeCopy = time;
  rootKeyPair = [dataCopy rootKeyPair];
  if (rootKeyPair && (v12 = rootKeyPair, [dataCopy residentOperationalKeyPair], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    rootKeyPair2 = [dataCopy rootKeyPair];
    v15 = SecKeyCopyExternalRepresentation([rootKeyPair2 privateKey], 0);

    if (v15)
    {
      residentOperationalKeyPair = [dataCopy residentOperationalKeyPair];
      v17 = SecKeyCopyExternalRepresentation([residentOperationalKeyPair privateKey], 0);

      if (v17)
      {
        v79[0] = @"homeUUID";
        homeUUID = [(HMDCHIPHomeKeychainFabricData *)self homeUUID];
        uUIDString = [homeUUID UUIDString];
        v80[0] = uUIDString;
        v79[1] = @"iCloudID";
        iCloudIdentifier = [(HMDCHIPHomeKeychainFabricData *)self iCloudIdentifier];
        v80[1] = iCloudIdentifier;
        v80[2] = v15;
        v71 = v17;
        v72 = v15;
        v79[2] = @"rootKey";
        v79[3] = @"opKey";
        v80[3] = v17;
        v79[4] = @"fabricID";
        fabricID = [dataCopy fabricID];
        v80[4] = fabricID;
        v79[5] = @"residentNodeID";
        residentNodeID = [dataCopy residentNodeID];
        v80[5] = residentNodeID;
        v79[6] = @"ipk";
        v23 = [dataCopy ipk];
        v80[6] = v23;
        v80[7] = versionCopy;
        v70 = versionCopy;
        v79[7] = @"version";
        v79[8] = @"createTime";
        v80[8] = timeCopy;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:9];

        v25 = [(HMDCHIPHomeKeychainFabricData *)self rcacFromFabricData:dataCopy];
        v69 = v25;
        if (v25)
        {
          v26 = v25;
          v27 = [v24 mutableCopy];
          [v27 setObject:v26 forKeyedSubscript:@"rcac"];
          v28 = [v27 copy];
        }

        else
        {
          v28 = v24;
        }

        v74 = 0;
        v42 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v28 requiringSecureCoding:1 error:&v74];
        v43 = v74;
        v68 = v42;
        if (v42)
        {
          v67 = v28;
          v44 = objc_alloc_init(MEMORY[0x277CFEBC8]);
          [v44 setValueData:v42];
          [v44 setSyncable:{-[HMDCHIPHomeKeychainFabricData signedOut](self, "signedOut") ^ 1}];
          uUID = [MEMORY[0x277CCAD78] UUID];
          uUIDString2 = [uUID UUIDString];
          [v44 setAccount:uUIDString2];

          [v44 setAccessGroup:@"com.apple.hap.pairing"];
          [v44 setLabel:*MEMORY[0x277D17BB0]];
          [v44 setItemDescription:*MEMORY[0x277D17BA8]];
          [v44 setType:&unk_283E72470];
          v47 = MEMORY[0x277CFEC78];
          type = [v44 type];
          v49 = [v47 viewHintForType:type];
          [v44 setViewHint:v49];

          systemKeychainStore = [(HMDCHIPHomeKeychainFabricData *)self systemKeychainStore];
          v73 = v43;
          [systemKeychainStore updateKeychainItem:v44 createIfNeeded:1 error:&v73];
          v51 = v73;

          v33 = v51 == 0;
          v52 = objc_autoreleasePoolPush();
          selfCopy = self;
          v54 = HMFGetOSLogHandle();
          v55 = v54;
          if (v51)
          {
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v57 = v56 = v52;
              *buf = 138543618;
              v76 = v57;
              v77 = 2112;
              v78 = v51;
              _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Failed to store fabric data: %@", buf, 0x16u);

              v52 = v56;
            }
          }

          else if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v62 = HMFGetLogIdentifier();
            [v44 account];
            v63 = v66 = v52;
            *buf = 138543618;
            v76 = v62;
            v77 = 2112;
            v78 = v63;
            _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@Stored fabric data as %@", buf, 0x16u);

            v52 = v66;
          }

          objc_autoreleasePoolPop(v52);
          v15 = v72;
          v28 = v67;
        }

        else
        {
          v58 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v60 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v61 = HMFGetLogIdentifier();
            *buf = 138543618;
            v76 = v61;
            v77 = 2112;
            v78 = v43;
            _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize fabric data to store: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v58);
          v33 = 0;
          v51 = v43;
          v15 = v72;
        }

        versionCopy = v70;

        v17 = v71;
      }

      else
      {
        v38 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543362;
          v76 = v41;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Cannot store fabric data with a bad resident operational key", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v38);
        v33 = 0;
      }
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v76 = v37;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Cannot store fabric data with a bad root private key", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      v33 = 0;
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v76 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Cannot store fabric data without key pairs", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v33 = 0;
  }

  v64 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)storeFabricData:(id)data dataVersion:(id)version
{
  v6 = MEMORY[0x277D0F7F0];
  versionCopy = version;
  dataCopy = data;
  v9 = objc_alloc_init(v6);
  v10 = MEMORY[0x277CCABB0];
  [v9 timeIntervalSince1970];
  v11 = [v10 numberWithDouble:?];
  LOBYTE(self) = [(HMDCHIPHomeKeychainFabricData *)self storeFabricData:dataCopy dataVersion:versionCopy creationTime:v11];

  return self;
}

- (HMDCHIPHomeKeychainFabricData)initWithHomeUUID:(id)d iCloudIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = HMDCHIPHomeKeychainFabricData;
  v9 = [(HMDCHIPHomeKeychainFabricData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeUUID, d);
    objc_storeStrong(&v10->_iCloudIdentifier, identifier);
    v10->_signedOut = [identifierCopy isEqual:@"NOT-LOGGED-IN"];
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_75713 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_75713, &__block_literal_global_124);
  }

  v3 = logCategory__hmf_once_v20_75714;

  return v3;
}

void __44__HMDCHIPHomeKeychainFabricData_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v20_75714;
  logCategory__hmf_once_v20_75714 = v1;
}

@end