@interface HMDLegacyCloudZone
- (HMDLegacyCloudZone)initWithCloudDatabase:(id)a3 configuration:(id)a4 state:(id)a5;
- (id)decodeModelFromRecord:(id)a3 externalRecordFields:(id)a4 source:(unint64_t)a5 error:(id *)a6;
- (id)encodeRecordFromModel:(id)a3 existingRecord:(id)a4 encodingContext:(id)a5 error:(id *)a6;
- (void)startUpWithLocalZone:(id)a3;
@end

@implementation HMDLegacyCloudZone

- (id)encodeRecordFromModel:(id)a3 existingRecord:(id)a4 encodingContext:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28 = 0;
  v13 = [(HMBCloudZone *)self modelContainer];
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

  if (!v15)
  {
    _HMFPreconditionFailure();
LABEL_16:
    v22 = _HMFPreconditionFailure();
    return [(HMDLegacyCloudZone *)v22 decodeModelFromRecord:v23 externalRecordFields:v24 source:v25 error:v26, v27];
  }

  [v10 hmbAssociateWithContainer:v15];
  v16 = v10;
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

  if (a6)
  {
    v19 = a6;
  }

  else
  {
    v19 = &v28;
  }

  v20 = [v18 encodeWithExistingRecord:v11 cloudZone:self modelContainer:v15 error:v19];

  return v20;
}

- (id)decodeModelFromRecord:(id)a3 externalRecordFields:(id)a4 source:(unint64_t)a5 error:(id *)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [(HMBCloudZone *)self modelContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
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

  v14 = [v9 recordType];
  v15 = [v14 isEqualToString:@"HomeDataBlob"];

  if (v15)
  {
    v16 = off_278666210;
  }

  else
  {
    v17 = [v9 recordType];
    v18 = [v17 isEqualToString:@"MetadataBlob"];

    if (v18)
    {
      v16 = off_278666208;
    }

    else
    {
      v19 = [v9 recordType];
      v20 = [v19 isEqualToString:@"HomeDataBlobV3"];

      if (!v20)
      {
        goto LABEL_13;
      }

      v16 = off_278666218;
    }
  }

  v21 = [(__objc2_class *)*v16 createWithLegacyRecord:v9 modelContainer:v13 error:a6];
  if (v21)
  {
    v22 = v21;
    v23 = [(HMBCloudZone *)self modelContainer];
    [v22 hmbAssociateWithContainer:v23];

    goto LABEL_19;
  }

LABEL_13:
  v24 = objc_autoreleasePoolPush();
  v25 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    v28 = [v9 hmbDescription];
    v31 = 138543618;
    v32 = v27;
    v33 = 2112;
    v34 = v28;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode record %@ from legacy cloud zone.", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  if (a6 && !*a6)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    *a6 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_19:

  v29 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)startUpWithLocalZone:(id)a3
{
  v3.receiver = self;
  v3.super_class = HMDLegacyCloudZone;
  [(HMBCloudZone *)&v3 startUpWithLocalZone:a3];
}

- (HMDLegacyCloudZone)initWithCloudDatabase:(id)a3 configuration:(id)a4 state:(id)a5
{
  v8.receiver = self;
  v8.super_class = HMDLegacyCloudZone;
  v5 = [(HMBCloudZone *)&v8 initWithCloudDatabase:a3 configuration:a4 state:a5];
  v6 = v5;
  if (v5)
  {
    [(HMBCloudZone *)v5 setDefaultDesiredKeys:0];
  }

  return v6;
}

@end