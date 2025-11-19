@interface HMBLocalZoneLocalInput
- (BOOL)stageAdditionForModel:(id)a3 error:(id *)a4;
- (id)commitWithOptions:(id)a3 error:(id *)a4;
@end

@implementation HMBLocalZoneLocalInput

- (id)commitWithOptions:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMBLocalZoneLocalInput *)self additionConstraint];
  if (v7 == 2)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2048;
      v23 = [(HMBLocalZoneLocalInput *)v13 additionConstraint];
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_INFO, "%{public}@Setting disallowsModelCreation to YES because addition constraint is %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [v6 setDisallowsModelCreation:1];
  }

  else if (v7 == 1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v11;
      v22 = 2048;
      v23 = [(HMBLocalZoneLocalInput *)v9 additionConstraint];
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Setting requiresModelCreation to YES because addition constraint is %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v6 setRequiresModelCreation:1];
  }

  v19.receiver = self;
  v19.super_class = HMBLocalZoneLocalInput;
  v16 = [(HMBLocalZoneInput *)&v19 commitWithOptions:v6 error:a4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)stageAdditionForModel:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v10;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@Staging addition for model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMBLocalZoneInput *)v8 localZone];
  v12 = [v11 modelContainer];
  v13 = [v12 bestModelEncodingForStorageLocation:3];

  v14 = [(HMBLocalZoneInput *)v8 localZone];
  v15 = [v14 modelContainer];
  v31 = 0;
  v16 = [v15 dataFromModel:v6 encoding:v13 storageLocation:3 updatedModelIDs:0 error:&v31];
  v17 = v31;

  if (v16)
  {
    v18 = [(HMBLocalZoneInput *)v8 inputBlock];
    v19 = [MEMORY[0x277CCAD78] UUID];
    v20 = [v19 data];
    v21 = [v18 updateExternalID:v20 externalData:0 modelEncoding:v13 modelData:v16];

    v22 = v21 == 0;
    if (v21)
    {
      if (a4)
      {
        v23 = v21;
        *a4 = v21;
      }
    }

    else
    {
      [(HMBLocalZoneInput *)v8 setStagedChangesCount:[(HMBLocalZoneInput *)v8 stagedChangesCount]+ 1];
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v8;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v27;
      v34 = 2112;
      v35 = v6;
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode model %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    if (a4)
    {
      v28 = v17;
      v22 = 0;
      *a4 = v17;
    }

    else
    {
      v22 = 0;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

@end