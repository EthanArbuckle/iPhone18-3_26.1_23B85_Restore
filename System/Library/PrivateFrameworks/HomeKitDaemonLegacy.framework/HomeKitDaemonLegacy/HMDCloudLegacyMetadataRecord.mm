@interface HMDCloudLegacyMetadataRecord
+ (id)legacyModelWithMetadata:(id)a3;
- (BOOL)encodeObjectChange:(id)a3;
- (id)data;
- (id)extractObjectChange;
- (void)clearData;
- (void)setData:(id)a3;
@end

@implementation HMDCloudLegacyMetadataRecord

- (void)clearData
{
  v2 = [(HMDCloudRecord *)self record];
  [v2 setObject:0 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];
}

- (void)setData:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudRecord *)self record];
  [v5 setObject:v4 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];
}

- (id)data
{
  v2 = [(HMDCloudRecord *)self record];
  v3 = [v2 objectForKeyedSubscript:@"kRecordEncodedDataBlobKey"];

  return v3;
}

- (BOOL)encodeObjectChange:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
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

  v7 = [v6 data1];
  if (v7 && (v8 = v7, [v6 data1], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, v10))
  {
    v11 = [v6 data1];
    v12 = [v11 length];

    v13 = [v6 data1];
    v14 = [(HMDCloudRecord *)self record];
    [v14 setObject:v13 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMDCloudRecord *)v16 record];
      v20 = [v19 recordType];
      v21 = [(HMDCloudRecord *)v16 recordName];
      *buf = 138544130;
      v37 = v18;
      v38 = 2112;
      v39 = v20;
      v40 = 2112;
      v41 = v21;
      v42 = 2048;
      v43 = v12;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Legacy metadata record %@/%@ %lu bytes", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    v35 = 0;
    v22 = [v4 encodeWithEncoding:1 error:&v35];
    v23 = v35;
    [(HMDCloudRecord *)v16 setCachedData:v22];

    v24 = v23 == 0;
    if (v23)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v16;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v28;
        v38 = 2112;
        v39 = v23;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode object change with %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v32;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@No data to encode into the legacy metadata record", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v24 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)extractObjectChange
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCloudRecord *)self cachedData];
  if (v3)
  {
  }

  else if ([(HMDCloudRecord *)self isRecordCached])
  {
    v4 = [(HMDCloudRecord *)self record];
    v5 = [v4 objectForKeyedSubscript:@"kRecordEncodedDataBlobKey"];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [HMDCloudLegacyMetadataRecord legacyModelWithMetadata:v5];
    }

    else
    {
      v6 = 0;
    }

    v31 = 0;
    v13 = [v6 encodeWithEncoding:1 error:&v31];
    v14 = v31;
    [(HMDCloudRecord *)self setCachedData:v13];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v18;
        v34 = 2112;
        v35 = v14;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode object change with %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }

    v19 = [(HMDCloudRecord *)self record];
    [v19 setObject:0 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];

    goto LABEL_17;
  }

  v7 = [(HMDCloudRecord *)self cachedData];
  v30 = 0;
  v6 = [HMDBackingStoreModelObject objectFromData:v7 encoding:1 error:&v30];
  v8 = v30;

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v12;
      v34 = 2112;
      v35 = v8;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode object change with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
LABEL_25:
    v23 = 0;
    goto LABEL_26;
  }

LABEL_17:
  v20 = [(HMDCloudRecord *)self cachedData];

  if (!v20)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Cloud legacy metadata record was not loaded from disk or fetch from cloud, no cached data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    goto LABEL_25;
  }

  if (v6)
  {
    v21 = [v6 uuid];

    if (v21)
    {
      v22 = [v6 uuid];
      [(HMDCloudRecord *)self setObjectID:v22];
    }
  }

  v6 = v6;
  v23 = v6;
LABEL_26:

  v28 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)legacyModelWithMetadata:(id)a3
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"457C009B-1DA4-4B71-BD69-93D344A81A8B"];
  v6 = [(HMDBackingStoreModelObject *)[HMDCloudLegacyModelObject alloc] initWithObjectChangeType:1 uuid:v5 parentUUID:0];
  [(HMDCloudLegacyModelObject *)v6 setLegacyRecordType:&unk_286629D28];
  [(HMDCloudLegacyModelObject *)v6 setData1:v4];

  return v6;
}

@end