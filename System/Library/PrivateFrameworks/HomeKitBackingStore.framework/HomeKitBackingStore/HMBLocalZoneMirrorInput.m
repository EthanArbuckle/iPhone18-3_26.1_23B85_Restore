@interface HMBLocalZoneMirrorInput
- (BOOL)stageAdditionForModel:(id)a3 externalID:(id)a4 externalData:(id)a5 error:(id *)a6;
- (BOOL)stageRemovalForModelWithExternalID:(id)a3 error:(id *)a4;
- (id)commitWithOptions:(id)a3 error:(id *)a4;
@end

@implementation HMBLocalZoneMirrorInput

- (id)commitWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  [v6 setShouldEnqueueMirrorOutput:0];
  v9.receiver = self;
  v9.super_class = HMBLocalZoneMirrorInput;
  v7 = [(HMBLocalZoneInput *)&v9 commitWithOptions:v6 error:a4];

  return v7;
}

- (BOOL)stageRemovalForModelWithExternalID:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 hmbDescription];
    v17 = 138543618;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Staging removal for model with external ID: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMBLocalZoneInput *)v8 inputBlock];
  v13 = [v12 updateExternalID:v6 externalData:0 modelEncoding:0 modelData:0];

  if (v13)
  {
    if (a4)
    {
      v14 = v13;
      *a4 = v13;
    }
  }

  else
  {
    [(HMBLocalZoneInput *)v8 setStagedChangesCount:[(HMBLocalZoneInput *)v8 stagedChangesCount]+ 1];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13 == 0;
}

- (BOOL)stageAdditionForModel:(id)a3 externalID:(id)a4 externalData:(id)a5 error:(id *)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v11 hmbDescription];
    v18 = [v12 hmbDescription];
    *buf = 138544130;
    v39 = v16;
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v17;
    v44 = 2112;
    v45 = v18;
    _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Staging addition for model: %@ externalID: %@ externalData: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  v19 = [(HMBLocalZoneInput *)v14 localZone];
  v20 = [v19 modelContainer];
  v21 = [v20 bestModelEncodingForStorageLocation:3];

  v22 = [(HMBLocalZoneInput *)v14 localZone];
  v23 = [v22 modelContainer];
  v37 = 0;
  v24 = [v23 dataFromModel:v10 encoding:v21 storageLocation:3 updatedModelIDs:0 error:&v37];
  v25 = v37;

  if (v24)
  {
    v26 = [(HMBLocalZoneInput *)v14 inputBlock];
    v27 = [v26 updateExternalID:v11 externalData:v12 modelEncoding:v21 modelData:v24];

    v28 = v27 == 0;
    if (v27)
    {
      if (a6)
      {
        v29 = v27;
        *a6 = v27;
      }
    }

    else
    {
      [(HMBLocalZoneInput *)v14 setStagedChangesCount:[(HMBLocalZoneInput *)v14 stagedChangesCount]+ 1];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v14;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543874;
      v39 = v33;
      v40 = 2112;
      v41 = v10;
      v42 = 2112;
      v43 = v25;
      _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode model %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    if (a6)
    {
      v34 = v25;
      v28 = 0;
      *a6 = v25;
    }

    else
    {
      v28 = 0;
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return v28;
}

@end