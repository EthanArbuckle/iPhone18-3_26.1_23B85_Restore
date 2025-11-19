@interface HMDHomeNFCReaderKeyModel
+ (id)defaultModelForHome:(id)a3;
+ (id)modelIDForHome:(id)a3;
+ (id)properties;
- (HMDHomeNFCReaderKey)nfcReaderKey;
- (void)setNfcReaderKey:(id)a3;
@end

@implementation HMDHomeNFCReaderKeyModel

- (HMDHomeNFCReaderKey)nfcReaderKey
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(HMDHomeNFCReaderKeyModel *)self encodedNfcReaderKey];
  if (v2)
  {
    v12 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v12];
    v4 = v12;
    v5 = v4;
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (!v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543874;
        v14 = v9;
        v15 = 2112;
        v16 = v2;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode nfc reader key set on model %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  else
  {
    v3 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setNfcReaderKey:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v12];
  v6 = v12;
  if (v5)
  {
    [(HMDHomeNFCReaderKeyModel *)self setEncodedNfcReaderKey:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to set encoded nfc reader key on model %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)defaultModelForHome:(id)a3
{
  v4 = a3;
  v5 = [HMDHomeNFCReaderKeyModel alloc];
  v6 = [a1 modelIDForHome:v4];
  v7 = [v4 uuid];

  v8 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:v7];

  return v8;
}

+ (id)modelIDForHome:(id)a3
{
  v3 = a3;
  v4 = [@"HMDHomeNFCReaderKeyModel" dataUsingEncoding:4];
  v5 = MEMORY[0x277CCAD78];
  v6 = [v3 uuid];

  v7 = [v5 hmf_UUIDWithNamespace:v6 data:v4];

  return v7;
}

+ (id)properties
{
  if (properties_onceToken_403 != -1)
  {
    dispatch_once(&properties_onceToken_403, &__block_literal_global_406);
  }

  v3 = properties__properties_404;

  return v3;
}

void __38__HMDHomeNFCReaderKeyModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"encodedNfcReaderKey";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_404;
  properties__properties_404 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end