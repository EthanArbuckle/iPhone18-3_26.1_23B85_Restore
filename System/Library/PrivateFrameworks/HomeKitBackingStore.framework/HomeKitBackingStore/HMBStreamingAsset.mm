@interface HMBStreamingAsset
+ (id)hmbDecodeData:(id)data fromStorageLocation:(unint64_t)location error:(id *)error;
+ (void)applyNativeCKValue:(id)value fromSource:(unint64_t)source associatingWith:(id)with toModel:(id)model propertyNamed:(id)named;
- (HMBStreamingAsset)initWithCoder:(id)coder;
- (HMBStreamingAsset)initWithUploadStreamingAsset:(id)asset downloadStreamingAsset:(id)streamingAsset;
- (id)attributeDescriptions;
- (id)hmbObjectByMergingFromObject:(id)object;
- (id)nativeCKValueWithEncodingContext:(id)context error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMBStreamingAsset

- (id)nativeCKValueWithEncodingContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (contextCopy)
  {
    v6 = contextCopy;
    uploadStreamingAsset = [(HMBStreamingAsset *)self uploadStreamingAsset];
    v8 = uploadStreamingAsset;
    if (uploadStreamingAsset)
    {
      v9 = uploadStreamingAsset;
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

- (id)hmbObjectByMergingFromObject:(id)object
{
  v29 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    uploadStreamingAsset = [v6 uploadStreamingAsset];
    v8 = uploadStreamingAsset;
    if (uploadStreamingAsset)
    {
      uploadStreamingAsset2 = uploadStreamingAsset;
    }

    else
    {
      uploadStreamingAsset2 = [(HMBStreamingAsset *)self uploadStreamingAsset];
    }

    v16 = uploadStreamingAsset2;

    downloadStreamingAsset = [v6 downloadStreamingAsset];
    v18 = downloadStreamingAsset;
    if (downloadStreamingAsset)
    {
      downloadStreamingAsset2 = downloadStreamingAsset;
    }

    else
    {
      downloadStreamingAsset2 = [(HMBStreamingAsset *)self downloadStreamingAsset];
    }

    v20 = downloadStreamingAsset2;

    v15 = [[HMBStreamingAsset alloc] initWithUploadStreamingAsset:v16 downloadStreamingAsset:v20];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v23 = 138543874;
      v24 = v13;
      v25 = 2112;
      v26 = objc_opt_class();
      v27 = 2112;
      v28 = objectCopy;
      v14 = v26;
      _os_log_impl(&dword_22AD27000, v12, OS_LOG_TYPE_ERROR, "%{public}@Asked to merge from unexpected object of class %@: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = selfCopy;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uploadStreamingAsset = [(HMBStreamingAsset *)self uploadStreamingAsset];
  [coderCopy encodeObject:uploadStreamingAsset forKey:@"HMB.u"];

  downloadStreamingAsset = [(HMBStreamingAsset *)self downloadStreamingAsset];
  [coderCopy encodeObject:downloadStreamingAsset forKey:@"HMB.d"];
}

- (HMBStreamingAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMB.u"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMB.d"];

  v7 = [(HMBStreamingAsset *)self initWithUploadStreamingAsset:v5 downloadStreamingAsset:v6];
  return v7;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uploadStreamingAsset = [(HMBStreamingAsset *)self uploadStreamingAsset];
  v5 = [v3 initWithName:@"Upload Streaming Asset" value:uploadStreamingAsset];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  downloadStreamingAsset = [(HMBStreamingAsset *)self downloadStreamingAsset];
  v8 = [v6 initWithName:@"Download Streaming Asset" value:downloadStreamingAsset];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMBStreamingAsset)initWithUploadStreamingAsset:(id)asset downloadStreamingAsset:(id)streamingAsset
{
  assetCopy = asset;
  streamingAssetCopy = streamingAsset;
  v12.receiver = self;
  v12.super_class = HMBStreamingAsset;
  v9 = [(HMBStreamingAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uploadStreamingAsset, asset);
    objc_storeStrong(&v10->_downloadStreamingAsset, streamingAsset);
  }

  return v10;
}

+ (void)applyNativeCKValue:(id)value fromSource:(unint64_t)source associatingWith:(id)with toModel:(id)model propertyNamed:(id)named
{
  v37 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  withCopy = with;
  modelCopy = model;
  namedCopy = named;
  if (valueCopy)
  {
    v16 = valueCopy;
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
      v19 = [modelCopy hmbPropertyNamed:namedCopy];
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

      if (source == 4 || source == 2)
      {
        [(HMBStreamingAsset *)v21 setDownloadStreamingAsset:v18];
      }

      else if (source == 1)
      {
        [(HMBStreamingAsset *)v21 setUploadStreamingAsset:v18];
      }

      [modelCopy hmbSetProperty:v21 named:namedCopy];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        [modelCopy hmbDescription];
        v26 = v28 = v22;
        *buf = 138544130;
        v30 = v25;
        v31 = 2112;
        v32 = v16;
        v33 = 2112;
        v34 = v26;
        v35 = 2112;
        v36 = namedCopy;
        _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly found %@ in CKRecord field for wrapped model value %@/%@ which we expected to be a CKStreamingAsset (ignoring).", buf, 0x2Au);

        v22 = v28;
      }

      objc_autoreleasePoolPop(v22);
    }
  }

  else
  {
    [modelCopy hmbSetProperty:0 named:namedCopy];
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (id)hmbDecodeData:(id)data fromStorageLocation:(unint64_t)location error:(id *)error
{
  dataCopy = data;
  if (hmbDecodeData_fromStorageLocation_error__onceToken != -1)
  {
    dispatch_once(&hmbDecodeData_fromStorageLocation_error__onceToken, &__block_literal_global_2365);
  }

  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:hmbDecodeData_fromStorageLocation_error__allowedClasses fromData:dataCopy error:error];
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