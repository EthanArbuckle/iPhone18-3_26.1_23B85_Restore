@interface HMDLegacyV0Model
+ (id)createWithLegacyRecord:(id)a3 modelContainer:(id)a4 error:(id *)a5;
+ (id)hmbProperties;
- (HMDLegacyV0Model)init;
- (id)encodeWithExistingRecord:(id)a3 cloudZone:(id)a4 modelContainer:(id)a5 error:(id *)a6;
@end

@implementation HMDLegacyV0Model

- (id)encodeWithExistingRecord:(id)a3 cloudZone:(id)a4 modelContainer:(id)a5 error:(id *)a6
{
  v69 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
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
    goto LABEL_35;
  }

  if (!v9)
  {
    v23 = [v10 zoneID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    if (v25)
    {
      v26 = objc_alloc(MEMORY[0x277CBC5D0]);
      v27 = [v25 zoneID];
      v28 = [v26 initWithRecordName:@"84968B22-8974-4102-AAA6-7B9C763A14B5" zoneID:v27];

      v9 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"HomeDataBlob" recordID:v28];
      goto LABEL_15;
    }

LABEL_35:
    _HMFPreconditionFailure();
  }

  v14 = [v9 recordID];
  v15 = [v14 recordName];
  v16 = [v15 isEqual:@"84968B22-8974-4102-AAA6-7B9C763A14B5"];

  if ((v16 & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v20 = v56 = v17;
      [v9 recordID];
      v21 = v57 = v10;
      v22 = [v21 recordName];
      *buf = 138543874;
      v64 = v20;
      v65 = 2112;
      v66 = v22;
      v67 = 2112;
      v68 = @"84968B22-8974-4102-AAA6-7B9C763A14B5";
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@UNEXPECTED RECORD NAME MISMATCH (V0) %@ != %@", buf, 0x20u);

      v10 = v57;
      v17 = v56;
    }

    objc_autoreleasePoolPop(v17);
  }

LABEL_15:
  v29 = [(HMDLegacyV0Model *)self cloudBlob];
  v62 = 0;
  v30 = [v13 encryptData:v29 compress:0 error:&v62];
  v31 = v62;

  if (v31 || !v30)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      v40 = objc_opt_class();
      NSStringFromClass(v40);
      v58 = v11;
      v41 = v13;
      v43 = v42 = v10;
      *buf = 138543874;
      v64 = v39;
      v65 = 2112;
      v66 = v43;
      v67 = 2112;
      v68 = v31;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@[%@ encodeWithExistingRecord:error:] failed encryption: %@", buf, 0x20u);

      v10 = v42;
      v13 = v41;
      v11 = v58;
    }

    objc_autoreleasePoolPop(v36);
    if (a6)
    {
      v44 = v31;
      v35 = 0;
      *a6 = v31;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    [v9 setObject:v30 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];
    v32 = [(HMDLegacyV0Model *)self cloudBlobV2];
    v61 = 0;
    v33 = [v13 encryptData:v32 compress:1 error:&v61];
    v31 = v61;

    if (v31 || !v33)
    {
      v45 = objc_autoreleasePoolPush();
      v46 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = HMFGetLogIdentifier();
        v49 = objc_opt_class();
        NSStringFromClass(v49);
        v59 = v11;
        v50 = v13;
        v52 = v51 = v10;
        *buf = 138543874;
        v64 = v48;
        v65 = 2112;
        v66 = v52;
        v67 = 2112;
        v68 = v31;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@[%@ encodeWithExistingRecord:error:] failed encryption: %@", buf, 0x20u);

        v10 = v51;
        v13 = v50;
        v11 = v59;
      }

      objc_autoreleasePoolPop(v45);
      if (a6)
      {
        v53 = v31;
        v35 = 0;
        *a6 = v31;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      [v9 setObject:v33 forKeyedSubscript:@"kRecordEncodedDataBlobVersion2Key"];
      v34 = [(HMDLegacyV0Model *)self cloudBlobsReadOnly];
      [v9 setObject:v34 forKeyedSubscript:@"kRecordReadOnly"];

      v35 = v9;
      v31 = 0;
    }

    v30 = v33;
  }

  v54 = *MEMORY[0x277D85DE8];

  return v35;
}

- (HMDLegacyV0Model)init
{
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"ABE49D63-6AE9-4469-A7EF-AC020E0104B3"];
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"1CAEDC10-E3E5-41A4-BB17-A9EEBA14A938"];
  v7.receiver = self;
  v7.super_class = HMDLegacyV0Model;
  v5 = [(HMBModel *)&v7 initWithModelID:v3 parentModelID:v4];

  return v5;
}

+ (id)createWithLegacyRecord:(id)a3 modelContainer:(id)a4 error:(id *)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 recordType];
  v11 = [v10 isEqual:@"HomeDataBlob"];

  if (v11)
  {
    v12 = objc_alloc_init(HMDLegacyV0Model);
    if (!v12)
    {
      v23 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v13 = [v8 objectForKeyedSubscript:@"kRecordEncodedDataBlobKey"];
    if (v13)
    {
      v45 = 0;
      v14 = [v9 decryptData:v13 decompress:0 error:&v45];
      v15 = v45;
      if (v15)
      {
        v16 = v15;
        context = objc_autoreleasePoolPush();
        v17 = a1;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v19 = v40 = v14;
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          *buf = 138543874;
          v47 = v19;
          v48 = 2112;
          v49 = v21;
          v50 = 2112;
          v51 = v16;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@%@ unable to decrypt data: %@", buf, 0x20u);

          v14 = v40;
        }

        objc_autoreleasePoolPop(context);
        if (a5)
        {
          v22 = v16;
          *a5 = v16;
        }

        v23 = 0;
        goto LABEL_29;
      }

      if (v14)
      {
        [(HMDLegacyV0Model *)v12 setCloudBlob:v14];
      }
    }

    v24 = [v8 objectForKeyedSubscript:@"kRecordEncodedDataBlobVersion2Key"];

    if (v24)
    {
      v44 = 0;
      v25 = [v9 decryptData:v24 decompress:1 error:&v44];
      v26 = v44;
      if (v26)
      {
        v27 = v26;
        v28 = objc_autoreleasePoolPush();
        v29 = a1;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v31 = v41 = v25;
          v32 = objc_opt_class();
          NSStringFromClass(v32);
          v33 = contexta = v28;
          *buf = 138543874;
          v47 = v31;
          v48 = 2112;
          v49 = v33;
          v50 = 2112;
          v51 = v27;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@%@ unable to decrypt data: %@", buf, 0x20u);

          v28 = contexta;
          v25 = v41;
        }

        objc_autoreleasePoolPop(v28);
        if (a5)
        {
          v34 = v27;
          *a5 = v27;
        }

        v23 = 0;
        goto LABEL_28;
      }

      if (v25)
      {
        [(HMDLegacyV0Model *)v12 setCloudBlobV2:v25];
      }
    }

    v35 = MEMORY[0x277CCABB0];
    v36 = [v8 objectForKeyedSubscript:@"kRecordReadOnly"];
    v37 = [v35 numberWithBool:{objc_msgSend(v36, "BOOLValue")}];
    [(HMBModel *)v12 hmbSetProperty:v37 named:@"cloudBlobsReadOnly"];

    v23 = v12;
LABEL_28:
    v13 = v24;
LABEL_29:

    goto LABEL_30;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    *a5 = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_31:

  v38 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_169835 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_169835, &__block_literal_global_169836);
  }

  v3 = hmbProperties__properties_169837;

  return v3;
}

void __33__HMDLegacyV0Model_hmbProperties__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"cloudBlob";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[0] = v0;
  v6[1] = @"cloudBlobV2";
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[1] = v1;
  v6[2] = @"cloudBlobsReadOnly";
  v2 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = hmbProperties__properties_169837;
  hmbProperties__properties_169837 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

@end