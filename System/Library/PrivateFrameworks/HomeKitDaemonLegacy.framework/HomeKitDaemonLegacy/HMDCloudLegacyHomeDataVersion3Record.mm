@interface HMDCloudLegacyHomeDataVersion3Record
+ (id)legacyModelWithHomeDataV3:(id)v3;
- (BOOL)encodeObjectChange:(id)change;
- (id)data;
- (id)extractObjectChange;
- (void)clearData;
- (void)setData:(id)data;
@end

@implementation HMDCloudLegacyHomeDataVersion3Record

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
  v52 = *MEMORY[0x277D85DE8];
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
  if (data1)
  {
    v8 = data1;
    data12 = [v6 data1];
    v10 = [data12 length];

    if (v10)
    {
      data13 = [v6 data1];
      hmd_compressedData = [data13 hmd_compressedData];

      v43 = 0;
      v13 = [HMDPersistentStore encryptDataWithControllerKey:hmd_compressedData error:&v43];
      v14 = v43;
      v15 = [v13 length];
      if (v13 && (v16 = v15, [v13 length]))
      {
        v41 = hmd_compressedData;
        record = [(HMDCloudRecord *)self record];
        [record setObject:v13 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];

        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v21 = v39 = v14;
          record2 = [(HMDCloudRecord *)selfCopy record];
          [record2 recordType];
          v22 = v40 = v18;
          recordName = [(HMDCloudRecord *)selfCopy recordName];
          *buf = 138544130;
          v45 = v21;
          v46 = 2112;
          v47 = v22;
          v48 = 2112;
          v49 = recordName;
          v50 = 2048;
          v51 = v16;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Legacy homeData record %@/%@ v3: %lu bytes", buf, 0x2Au);

          v18 = v40;
          v14 = v39;
        }

        objc_autoreleasePoolPop(v18);
        v42 = 0;
        v24 = 1;
        v25 = [changeCopy encodeWithEncoding:1 error:&v42];
        v14 = v42;
        [(HMDCloudRecord *)selfCopy setCachedData:v25];

        if (!v14)
        {
          hmd_compressedData = v41;
          goto LABEL_20;
        }

        v26 = objc_autoreleasePoolPush();
        v27 = selfCopy;
        v28 = HMFGetOSLogHandle();
        hmd_compressedData = v41;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v45 = v29;
          v46 = 2112;
          v47 = v14;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode object change with %@", buf, 0x16u);
LABEL_18:
        }
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          shortDescription = [v14 shortDescription];
          *buf = 138543618;
          v45 = v29;
          v46 = 2112;
          v47 = shortDescription;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Failed to encrypt home data v3 record due to error: %@", buf, 0x16u);

          goto LABEL_18;
        }
      }

      objc_autoreleasePoolPop(v26);
      v24 = 0;
LABEL_20:

      goto LABEL_21;
    }
  }

  v30 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138543362;
    v45 = v33;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@No data to encode into the legacy home data record", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v30);
  v24 = 0;
LABEL_21:

  v36 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)extractObjectChange
{
  v54 = *MEMORY[0x277D85DE8];
  cachedData = [(HMDCloudRecord *)self cachedData];
  if (cachedData)
  {

    goto LABEL_11;
  }

  if ([(HMDCloudRecord *)self isRecordCached])
  {
    v49 = 0;
    record = [(HMDCloudRecord *)self record];
    v5 = [record objectForKeyedSubscript:@"kRecordEncodedDataBlobKey"];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = v5;
      if ([v6 length])
      {
        v48 = 0;
        v7 = [HMDPersistentStore decryptDataWithControllerKey:v6 totalKeysFound:0 deleteExtraKeys:1 allowControllerIdentifierToChange:1 controllerIdentifierChanged:&v49 successfulKeyUserName:0 error:&v48];
        v8 = v48;
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle();
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
        if (v7)
        {
          if (v12)
          {
            v13 = HMFGetLogIdentifier();
            *buf = 138543362;
            v51 = v13;
            _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully decrypted data version 3", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v9);
          goto LABEL_20;
        }

        if (v12)
        {
          v44 = HMFGetLogIdentifier();
          shortDescription = [v8 shortDescription];
          *buf = 138543618;
          v51 = v44;
          v52 = 2112;
          v53 = shortDescription;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed to decrypt data cachedData from the cloud due to error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        v25 = selfCopy;
LABEL_19:
        [(HMDCloudRecord *)v25 setDecryptionFailed:1];
        v7 = 0;
LABEL_20:
        if (v49 == 1)
        {
          [(HMDCloudRecord *)self setControllerIdentifierChanged:1];
        }

        v15 = [HMDCloudLegacyHomeDataVersion3Record legacyModelWithHomeDataV3:v7];
        v47 = 0;
        v26 = [v15 encodeWithEncoding:1 error:&v47];
        v27 = v47;
        [(HMDCloudRecord *)self setCachedData:v26];

        if (v27)
        {
          v28 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            *buf = 138543618;
            v51 = v31;
            v52 = 2112;
            v53 = v27;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode object change with %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
        }

        record2 = [(HMDCloudRecord *)self record];
        [record2 setObject:0 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];

        record3 = [(HMDCloudRecord *)self record];
        [record3 setObject:0 forKeyedSubscript:@"kRecordEncodedDataBlobVersion2Key"];

        goto LABEL_27;
      }
    }

    else
    {
      v6 = 0;
    }

    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@The record exists but cachedData data is not present, marking decryption as failed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = selfCopy3;
    goto LABEL_19;
  }

LABEL_11:
  cachedData2 = [(HMDCloudRecord *)self cachedData];
  v46 = 0;
  v15 = [HMDBackingStoreModelObject objectFromData:cachedData2 encoding:1 error:&v46];
  v16 = v46;

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v20;
      v52 = 2112;
      v53 = v16;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode object change with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
LABEL_35:
    v37 = 0;
    goto LABEL_36;
  }

LABEL_27:
  cachedData3 = [(HMDCloudRecord *)self cachedData];

  if (!cachedData3)
  {
    v38 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543362;
      v51 = v41;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Cloud legacy home data version3 record was not loaded from disk or fetch from cloud, no cached data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v38);
    goto LABEL_35;
  }

  if (v15)
  {
    uuid = [v15 uuid];

    if (uuid)
    {
      uuid2 = [v15 uuid];
      [(HMDCloudRecord *)self setObjectID:uuid2];
    }
  }

  v15 = v15;
  v37 = v15;
LABEL_36:

  v42 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (id)legacyModelWithHomeDataV3:(id)v3
{
  v3 = MEMORY[0x277CCAD78];
  v3Copy = v3;
  v5 = [[v3 alloc] initWithUUIDString:@"5E034157-5CED-4502-9C16-9428C798883A"];
  v6 = [(HMDBackingStoreModelObject *)[HMDCloudLegacyModelObject alloc] initWithObjectChangeType:1 uuid:v5 parentUUID:0];
  [(HMDCloudLegacyModelObject *)v6 setLegacyRecordType:&unk_286629D58];
  [(HMDCloudLegacyModelObject *)v6 setData1:v3Copy];

  return v6;
}

@end