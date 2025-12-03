@interface HMDCloudLegacyMetadataRecord
+ (id)legacyModelWithMetadata:(id)metadata;
- (BOOL)encodeObjectChange:(id)change;
- (id)data;
- (id)extractObjectChange;
- (void)clearData;
- (void)setData:(id)data;
@end

@implementation HMDCloudLegacyMetadataRecord

- (void)clearData
{
  record = [(HMDCloudRecord *)self record];
  [record setObject:0 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];
}

- (void)setData:(id)data
{
  dataCopy = data;
  record = [(HMDCloudRecord *)self record];
  [record setObject:dataCopy forKeyedSubscript:@"kRecordEncodedDataBlobKey"];
}

- (id)data
{
  record = [(HMDCloudRecord *)self record];
  v3 = [record objectForKeyedSubscript:@"kRecordEncodedDataBlobKey"];

  return v3;
}

- (BOOL)encodeObjectChange:(id)change
{
  v44 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = changeCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  data1 = [v6 data1];
  if (data1 && (v8 = data1, [v6 data1], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, v10))
  {
    data12 = [v6 data1];
    v12 = [data12 length];

    data13 = [v6 data1];
    record = [(HMDCloudRecord *)self record];
    [record setObject:data13 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      record2 = [(HMDCloudRecord *)selfCopy record];
      recordType = [record2 recordType];
      recordName = [(HMDCloudRecord *)selfCopy recordName];
      *buf = 138544130;
      v37 = v18;
      v38 = 2112;
      v39 = recordType;
      v40 = 2112;
      v41 = recordName;
      v42 = 2048;
      v43 = v12;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Legacy metadata record %@/%@ %lu bytes", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    v35 = 0;
    v22 = [changeCopy encodeWithEncoding:1 error:&v35];
    v23 = v35;
    [(HMDCloudRecord *)selfCopy setCachedData:v22];

    v24 = v23 == 0;
    if (v23)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
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
    selfCopy2 = self;
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
  cachedData = [(HMDCloudRecord *)self cachedData];
  if (cachedData)
  {
  }

  else if ([(HMDCloudRecord *)self isRecordCached])
  {
    record = [(HMDCloudRecord *)self record];
    v5 = [record objectForKeyedSubscript:@"kRecordEncodedDataBlobKey"];

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
      selfCopy = self;
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

    record2 = [(HMDCloudRecord *)self record];
    [record2 setObject:0 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];

    goto LABEL_17;
  }

  cachedData2 = [(HMDCloudRecord *)self cachedData];
  v30 = 0;
  v6 = [HMDBackingStoreModelObject objectFromData:cachedData2 encoding:1 error:&v30];
  v8 = v30;

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
  cachedData3 = [(HMDCloudRecord *)self cachedData];

  if (!cachedData3)
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    uuid = [v6 uuid];

    if (uuid)
    {
      uuid2 = [v6 uuid];
      [(HMDCloudRecord *)self setObjectID:uuid2];
    }
  }

  v6 = v6;
  v23 = v6;
LABEL_26:

  v28 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)legacyModelWithMetadata:(id)metadata
{
  v3 = MEMORY[0x277CCAD78];
  metadataCopy = metadata;
  v5 = [[v3 alloc] initWithUUIDString:@"457C009B-1DA4-4B71-BD69-93D344A81A8B"];
  v6 = [(HMDBackingStoreModelObject *)[HMDCloudLegacyModelObject alloc] initWithObjectChangeType:1 uuid:v5 parentUUID:0];
  [(HMDCloudLegacyModelObject *)v6 setLegacyRecordType:&unk_286629D28];
  [(HMDCloudLegacyModelObject *)v6 setData1:metadataCopy];

  return v6;
}

@end