@interface HMBLocalZoneLocalInput
- (BOOL)stageAdditionForModel:(id)model error:(id *)error;
- (id)commitWithOptions:(id)options error:(id *)error;
@end

@implementation HMBLocalZoneLocalInput

- (id)commitWithOptions:(id)options error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  additionConstraint = [(HMBLocalZoneLocalInput *)self additionConstraint];
  if (additionConstraint == 2)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2048;
      additionConstraint2 = [(HMBLocalZoneLocalInput *)selfCopy additionConstraint];
      _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_INFO, "%{public}@Setting disallowsModelCreation to YES because addition constraint is %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [optionsCopy setDisallowsModelCreation:1];
  }

  else if (additionConstraint == 1)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v11;
      v22 = 2048;
      additionConstraint2 = [(HMBLocalZoneLocalInput *)selfCopy2 additionConstraint];
      _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@Setting requiresModelCreation to YES because addition constraint is %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [optionsCopy setRequiresModelCreation:1];
  }

  v19.receiver = self;
  v19.super_class = HMBLocalZoneLocalInput;
  v16 = [(HMBLocalZoneInput *)&v19 commitWithOptions:optionsCopy error:error];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)stageAdditionForModel:(id)model error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v10;
    v34 = 2112;
    v35 = modelCopy;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@Staging addition for model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  localZone = [(HMBLocalZoneInput *)selfCopy localZone];
  modelContainer = [localZone modelContainer];
  v13 = [modelContainer bestModelEncodingForStorageLocation:3];

  localZone2 = [(HMBLocalZoneInput *)selfCopy localZone];
  modelContainer2 = [localZone2 modelContainer];
  v31 = 0;
  v16 = [modelContainer2 dataFromModel:modelCopy encoding:v13 storageLocation:3 updatedModelIDs:0 error:&v31];
  v17 = v31;

  if (v16)
  {
    inputBlock = [(HMBLocalZoneInput *)selfCopy inputBlock];
    uUID = [MEMORY[0x277CCAD78] UUID];
    data = [uUID data];
    v21 = [inputBlock updateExternalID:data externalData:0 modelEncoding:v13 modelData:v16];

    v22 = v21 == 0;
    if (v21)
    {
      if (error)
      {
        v23 = v21;
        *error = v21;
      }
    }

    else
    {
      [(HMBLocalZoneInput *)selfCopy setStagedChangesCount:[(HMBLocalZoneInput *)selfCopy stagedChangesCount]+ 1];
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v27;
      v34 = 2112;
      v35 = modelCopy;
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&dword_22AD27000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode model %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    if (error)
    {
      v28 = v17;
      v22 = 0;
      *error = v17;
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