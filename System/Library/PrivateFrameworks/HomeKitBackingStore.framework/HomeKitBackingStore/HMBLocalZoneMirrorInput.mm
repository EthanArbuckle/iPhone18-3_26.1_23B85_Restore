@interface HMBLocalZoneMirrorInput
- (BOOL)stageAdditionForModel:(id)model externalID:(id)d externalData:(id)data error:(id *)error;
- (BOOL)stageRemovalForModelWithExternalID:(id)d error:(id *)error;
- (id)commitWithOptions:(id)options error:(id *)error;
@end

@implementation HMBLocalZoneMirrorInput

- (id)commitWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  [optionsCopy setShouldEnqueueMirrorOutput:0];
  v9.receiver = self;
  v9.super_class = HMBLocalZoneMirrorInput;
  v7 = [(HMBLocalZoneInput *)&v9 commitWithOptions:optionsCopy error:error];

  return v7;
}

- (BOOL)stageRemovalForModelWithExternalID:(id)d error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    hmbDescription = [dCopy hmbDescription];
    v17 = 138543618;
    v18 = v10;
    v19 = 2112;
    v20 = hmbDescription;
    _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Staging removal for model with external ID: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  inputBlock = [(HMBLocalZoneInput *)selfCopy inputBlock];
  v13 = [inputBlock updateExternalID:dCopy externalData:0 modelEncoding:0 modelData:0];

  if (v13)
  {
    if (error)
    {
      v14 = v13;
      *error = v13;
    }
  }

  else
  {
    [(HMBLocalZoneInput *)selfCopy setStagedChangesCount:[(HMBLocalZoneInput *)selfCopy stagedChangesCount]+ 1];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13 == 0;
}

- (BOOL)stageAdditionForModel:(id)model externalID:(id)d externalData:(id)data error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  dCopy = d;
  dataCopy = data;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    hmbDescription = [dCopy hmbDescription];
    hmbDescription2 = [dataCopy hmbDescription];
    *buf = 138544130;
    v39 = v16;
    v40 = 2112;
    v41 = modelCopy;
    v42 = 2112;
    v43 = hmbDescription;
    v44 = 2112;
    v45 = hmbDescription2;
    _os_log_impl(&dword_22AD27000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Staging addition for model: %@ externalID: %@ externalData: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  localZone = [(HMBLocalZoneInput *)selfCopy localZone];
  modelContainer = [localZone modelContainer];
  v21 = [modelContainer bestModelEncodingForStorageLocation:3];

  localZone2 = [(HMBLocalZoneInput *)selfCopy localZone];
  modelContainer2 = [localZone2 modelContainer];
  v37 = 0;
  v24 = [modelContainer2 dataFromModel:modelCopy encoding:v21 storageLocation:3 updatedModelIDs:0 error:&v37];
  v25 = v37;

  if (v24)
  {
    inputBlock = [(HMBLocalZoneInput *)selfCopy inputBlock];
    v27 = [inputBlock updateExternalID:dCopy externalData:dataCopy modelEncoding:v21 modelData:v24];

    v28 = v27 == 0;
    if (v27)
    {
      if (error)
      {
        v29 = v27;
        *error = v27;
      }
    }

    else
    {
      [(HMBLocalZoneInput *)selfCopy setStagedChangesCount:[(HMBLocalZoneInput *)selfCopy stagedChangesCount]+ 1];
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543874;
      v39 = v33;
      v40 = 2112;
      v41 = modelCopy;
      v42 = 2112;
      v43 = v25;
      _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode model %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v30);
    if (error)
    {
      v34 = v25;
      v28 = 0;
      *error = v25;
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