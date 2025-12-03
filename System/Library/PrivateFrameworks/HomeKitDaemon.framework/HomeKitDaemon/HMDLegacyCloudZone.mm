@interface HMDLegacyCloudZone
- (HMDLegacyCloudZone)initWithCloudDatabase:(id)database configuration:(id)configuration state:(id)state;
- (id)decodeModelFromRecord:(id)record externalRecordFields:(id)fields source:(unint64_t)source error:(id *)error;
- (id)encodeRecordFromModel:(id)model existingRecord:(id)record encodingContext:(id)context error:(id *)error;
- (void)startUpWithLocalZone:(id)zone;
@end

@implementation HMDLegacyCloudZone

- (id)encodeRecordFromModel:(id)model existingRecord:(id)record encodingContext:(id)context error:(id *)error
{
  modelCopy = model;
  recordCopy = record;
  contextCopy = context;
  v28 = 0;
  modelContainer = [(HMBCloudZone *)self modelContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = modelContainer;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (!v15)
  {
    _HMFPreconditionFailure();
LABEL_16:
    v22 = _HMFPreconditionFailure();
    return [(HMDLegacyCloudZone *)v22 decodeModelFromRecord:v23 externalRecordFields:v24 source:v25 error:v26, v27];
  }

  [modelCopy hmbAssociateWithContainer:v15];
  v16 = modelCopy;
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

  if (!v18)
  {
    goto LABEL_16;
  }

  if (error)
  {
    errorCopy = error;
  }

  else
  {
    errorCopy = &v28;
  }

  v20 = [v18 encodeWithExistingRecord:recordCopy cloudZone:self modelContainer:v15 error:errorCopy];

  return v20;
}

- (id)decodeModelFromRecord:(id)record externalRecordFields:(id)fields source:(unint64_t)source error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  fieldsCopy = fields;
  modelContainer = [(HMBCloudZone *)self modelContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = modelContainer;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    _HMFPreconditionFailure();
  }

  recordType = [recordCopy recordType];
  v15 = [recordType isEqualToString:@"HomeDataBlob"];

  if (v15)
  {
    v16 = off_278666210;
  }

  else
  {
    recordType2 = [recordCopy recordType];
    v18 = [recordType2 isEqualToString:@"MetadataBlob"];

    if (v18)
    {
      v16 = off_278666208;
    }

    else
    {
      recordType3 = [recordCopy recordType];
      v20 = [recordType3 isEqualToString:@"HomeDataBlobV3"];

      if (!v20)
      {
        goto LABEL_13;
      }

      v16 = off_278666218;
    }
  }

  v21 = [(__objc2_class *)*v16 createWithLegacyRecord:recordCopy modelContainer:v13 error:error];
  if (v21)
  {
    v22 = v21;
    modelContainer2 = [(HMBCloudZone *)self modelContainer];
    [v22 hmbAssociateWithContainer:modelContainer2];

    goto LABEL_19;
  }

LABEL_13:
  v24 = objc_autoreleasePoolPush();
  selfCopy = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    hmbDescription = [recordCopy hmbDescription];
    v31 = 138543618;
    v32 = v27;
    v33 = 2112;
    v34 = hmbDescription;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode record %@ from legacy cloud zone.", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  if (error && !*error)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_19:

  v29 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)startUpWithLocalZone:(id)zone
{
  v3.receiver = self;
  v3.super_class = HMDLegacyCloudZone;
  [(HMBCloudZone *)&v3 startUpWithLocalZone:zone];
}

- (HMDLegacyCloudZone)initWithCloudDatabase:(id)database configuration:(id)configuration state:(id)state
{
  v8.receiver = self;
  v8.super_class = HMDLegacyCloudZone;
  v5 = [(HMBCloudZone *)&v8 initWithCloudDatabase:database configuration:configuration state:state];
  v6 = v5;
  if (v5)
  {
    [(HMBCloudZone *)v5 setDefaultDesiredKeys:0];
  }

  return v6;
}

@end