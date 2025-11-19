@interface HMBStreamingAsset
+ (id)hmbDecodeData:(id)a3 fromStorageLocation:(unint64_t)a4 error:(id *)a5;
+ (void)applyNativeCKValue:(id)a3 fromSource:(unint64_t)a4 associatingWith:(id)a5 toModel:(id)a6 propertyNamed:(id)a7;
- (HMBStreamingAsset)initWithCoder:(id)a3;
- (HMBStreamingAsset)initWithUploadStreamingAsset:(id)a3 downloadStreamingAsset:(id)a4;
- (id)attributeDescriptions;
- (id)hmbObjectByMergingFromObject:(id)a3;
- (id)nativeCKValueWithEncodingContext:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMBStreamingAsset

- (id)nativeCKValueWithEncodingContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = [(HMBStreamingAsset *)self uploadStreamingAsset];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CBC6D0]) initWithExpectedSizeBytes:1];
    }

    v10 = v9;

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(HMBStreamingAsset *)v12 hmbObjectByMergingFromObject:v13, v14];
  }
}

- (id)hmbObjectByMergingFromObject:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 uploadStreamingAsset];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [(HMBStreamingAsset *)self uploadStreamingAsset];
    }

    v16 = v9;

    v17 = [v6 downloadStreamingAsset];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [(HMBStreamingAsset *)self downloadStreamingAsset];
    }

    v20 = v19;

    v15 = [[HMBStreamingAsset alloc] initWithUploadStreamingAsset:v16 downloadStreamingAsset:v20];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v23 = 138543874;
      v24 = v13;
      v25 = 2112;
      v26 = objc_opt_class();
      v27 = 2112;
      v28 = v4;
      v14 = v26;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_ERROR, "%{public}@Asked to merge from unexpected object of class %@: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = v11;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMBStreamingAsset *)self uploadStreamingAsset];
  [v4 encodeObject:v5 forKey:@"HMB.u"];

  v6 = [(HMBStreamingAsset *)self downloadStreamingAsset];
  [v4 encodeObject:v6 forKey:@"HMB.d"];
}

- (HMBStreamingAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMB.u"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMB.d"];

  v7 = [(HMBStreamingAsset *)self initWithUploadStreamingAsset:v5 downloadStreamingAsset:v6];
  return v7;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMBStreamingAsset *)self uploadStreamingAsset];
  v5 = [v3 initWithName:@"Upload Streaming Asset" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMBStreamingAsset *)self downloadStreamingAsset];
  v8 = [v6 initWithName:@"Download Streaming Asset" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMBStreamingAsset)initWithUploadStreamingAsset:(id)a3 downloadStreamingAsset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMBStreamingAsset;
  v9 = [(HMBStreamingAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uploadStreamingAsset, a3);
    objc_storeStrong(&v10->_downloadStreamingAsset, a4);
  }

  return v10;
}

+ (void)applyNativeCKValue:(id)a3 fromSource:(unint64_t)a4 associatingWith:(id)a5 toModel:(id)a6 propertyNamed:(id)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    v16 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v18)
    {
      v19 = [v14 hmbPropertyNamed:v15];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v19;
      if (!v20)
      {
        v21 = objc_alloc_init(HMBStreamingAsset);
      }

      if (a4 == 4 || a4 == 2)
      {
        [(HMBStreamingAsset *)v21 setDownloadStreamingAsset:v18];
      }

      else if (a4 == 1)
      {
        [(HMBStreamingAsset *)v21 setUploadStreamingAsset:v18];
      }

      [v14 hmbSetProperty:v21 named:v15];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = a1;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        [v14 hmbDescription];
        v26 = v28 = v22;
        *buf = 138544130;
        v30 = v25;
        v31 = 2112;
        v32 = v16;
        v33 = 2112;
        v34 = v26;
        v35 = 2112;
        v36 = v15;
        _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly found %@ in CKRecord field for wrapped model value %@/%@ which we expected to be a CKStreamingAsset (ignoring).", buf, 0x2Au);

        v22 = v28;
      }

      objc_autoreleasePoolPop(v22);
    }
  }

  else
  {
    [v14 hmbSetProperty:0 named:v15];
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (id)hmbDecodeData:(id)a3 fromStorageLocation:(unint64_t)a4 error:(id *)a5
{
  v6 = a3;
  if (hmbDecodeData_fromStorageLocation_error__onceToken != -1)
  {
    dispatch_once(&hmbDecodeData_fromStorageLocation_error__onceToken, &__block_literal_global_2365);
  }

  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:hmbDecodeData_fromStorageLocation_error__allowedClasses fromData:v6 error:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    v12 = v7;
  }

  else
  {
    v13 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v12 = [[HMBStreamingAsset alloc] initWithUploadStreamingAsset:v15 downloadStreamingAsset:v15];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

void __61__HMBStreamingAsset_hmbDecodeData_fromStorageLocation_error___block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = hmbDecodeData_fromStorageLocation_error__allowedClasses;
  hmbDecodeData_fromStorageLocation_error__allowedClasses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end