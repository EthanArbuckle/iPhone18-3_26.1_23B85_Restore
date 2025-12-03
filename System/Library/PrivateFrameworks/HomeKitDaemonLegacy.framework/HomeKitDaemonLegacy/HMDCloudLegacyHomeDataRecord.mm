@interface HMDCloudLegacyHomeDataRecord
+ (id)legacyModelWithHomeDataV0:(id)v0 homeDataV2:(id)v2;
- (BOOL)encodeObjectChange:(id)change;
- (NSData)dataVersion2;
- (id)data;
- (id)extractObjectChange;
- (void)clearData;
- (void)setData:(id)data;
- (void)setDataVersion2:(id)version2;
@end

@implementation HMDCloudLegacyHomeDataRecord

- (void)clearData
{
  record = [(HMDCloudRecord *)self record];
  [record setObject:0 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];

  record2 = [(HMDCloudRecord *)self record];
  [record2 setObject:0 forKeyedSubscript:@"kRecordEncodedDataBlobVersion2Key"];
}

- (void)setDataVersion2:(id)version2
{
  version2Copy = version2;
  record = [(HMDCloudRecord *)self record];
  [record setObject:version2Copy forKeyedSubscript:@"kRecordEncodedDataBlobVersion2Key"];
}

- (NSData)dataVersion2
{
  record = [(HMDCloudRecord *)self record];
  v3 = [record objectForKeyedSubscript:@"kRecordEncodedDataBlobVersion2Key"];

  return v3;
}

- (void)setData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  record = [(HMDCloudRecord *)self record];
  [record setObject:dataCopy forKeyedSubscript:@"kRecordEncodedDataBlobKey"];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Set read only field to NO", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  record2 = [(HMDCloudRecord *)selfCopy record];
  [record2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"kRecordReadOnly"];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)data
{
  record = [(HMDCloudRecord *)self record];
  v3 = [record objectForKeyedSubscript:@"kRecordEncodedDataBlobKey"];

  return v3;
}

- (BOOL)encodeObjectChange:(id)change
{
  v67 = *MEMORY[0x277D85DE8];
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
    if ([data12 length] && (objc_msgSend(v6, "data2"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v10;
      data2 = [v6 data2];
      v13 = [data2 length];

      if (v13)
      {
        data13 = [v6 data1];
        v54 = 0;
        v15 = [HMDPersistentStore encryptDataWithControllerKey:data13 error:&v54];
        v16 = v54;

        v17 = [v15 length];
        data22 = [v6 data2];
        hmd_compressedData = [data22 hmd_compressedData];

        v53 = v16;
        v51 = hmd_compressedData;
        v20 = [HMDPersistentStore encryptDataWithControllerKey:hmd_compressedData error:&v53];
        v21 = v53;

        v22 = [v20 length];
        if (v15 && (v23 = v22, [v15 length]) && v20 && objc_msgSend(v20, "length"))
        {
          record = [(HMDCloudRecord *)self record];
          [record setObject:v15 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];

          record2 = [(HMDCloudRecord *)self record];
          [record2 setObject:v20 forKeyedSubscript:@"kRecordEncodedDataBlobVersion2Key"];

          context = objc_autoreleasePoolPush();
          selfCopy = self;
          log = HMFGetOSLogHandle();
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v48 = HMFGetLogIdentifier();
            record3 = [(HMDCloudRecord *)selfCopy record];
            recordType = [record3 recordType];
            recordName = [(HMDCloudRecord *)selfCopy recordName];
            *buf = 138544642;
            v56 = v48;
            v57 = 2112;
            v58 = recordType;
            v59 = 2112;
            v60 = recordName;
            v28 = recordName;
            v61 = 2048;
            v62 = v17;
            v63 = 2048;
            v64 = v23;
            v65 = 2048;
            v66 = v23 + v17;
            _os_log_impl(&dword_2531F8000, log, OS_LOG_TYPE_INFO, "%{public}@Legacy homeData record %@/%@ v1: %lu bytes v2: %lu bytes total: %lu bytes", buf, 0x3Eu);
          }

          objc_autoreleasePoolPop(context);
          v52 = v21;
          v29 = 1;
          v30 = [changeCopy encodeWithEncoding:1 error:&v52];
          v31 = v52;

          [(HMDCloudRecord *)selfCopy setCachedData:v30];
          if (!v31)
          {
            goto LABEL_26;
          }

          v32 = v31;
          v33 = objc_autoreleasePoolPush();
          v34 = selfCopy;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v56 = v36;
            v57 = 2112;
            v58 = v32;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode object change with %@", buf, 0x16u);
          }

          v21 = v32;
        }

        else
        {
          v33 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v44 = HMFGetLogIdentifier();
            shortDescription = [v21 shortDescription];
            *buf = 138543618;
            v56 = v44;
            v57 = 2112;
            v58 = shortDescription;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Failed to encrypt home data v1/v2 record due to error: %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v33);
        v29 = 0;
LABEL_26:

        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v37 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = HMFGetLogIdentifier();
    *buf = 138543362;
    v56 = v40;
    _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@No data to encode into the legacy home data record", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v37);
  v29 = 0;
LABEL_22:

  v41 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)extractObjectChange
{
  v79 = *MEMORY[0x277D85DE8];
  cachedData = [(HMDCloudRecord *)self cachedData];
  if (cachedData)
  {

    goto LABEL_10;
  }

  if ([(HMDCloudRecord *)self isRecordCached])
  {
    v74 = 0;
    record = [(HMDCloudRecord *)self record];
    v5 = [record objectForKeyedSubscript:@"kRecordEncodedDataBlobKey"];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = v5;
      if ([v6 length])
      {
        v73 = 0;
        v7 = [HMDPersistentStore decryptDataWithControllerKey:v6 totalKeysFound:0 deleteExtraKeys:1 allowControllerIdentifierToChange:1 controllerIdentifierChanged:&v74 + 1 successfulKeyUserName:0 error:&v73];
        v8 = v73;
        v9 = v7 == 0;
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
        if (v7)
        {
          if (v13)
          {
            HMFGetLogIdentifier();
            v14 = v66 = v10;
            *buf = 138543362;
            v76 = v14;
            _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Successfully decrypted data version 1", buf, 0xCu);

            v10 = v66;
          }
        }

        else if (v13)
        {
          v64 = HMFGetLogIdentifier();
          v67 = v8;
          shortDescription = [v8 shortDescription];
          *buf = 138543618;
          v76 = v64;
          v77 = 2112;
          v78 = shortDescription;
          v24 = shortDescription;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Failed to decrypt data v1 from the cloud due to error: %@", buf, 0x16u);

          v8 = v67;
        }

        objc_autoreleasePoolPop(v10);
        v22 = 1;
      }

      else
      {
        v22 = 0;
        v9 = 0;
        v7 = 0;
      }
    }

    else
    {
      v22 = 0;
      v9 = 0;
      v7 = 0;
      v6 = 0;
    }

    record2 = [(HMDCloudRecord *)self record];
    v26 = [record2 objectForKeyedSubscript:@"kRecordEncodedDataBlobVersion2Key"];

    if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v27 = v26;

      if ([v27 length])
      {
        v72 = 0;
        v68 = v27;
        v28 = [HMDPersistentStore decryptDataWithControllerKey:v27 totalKeysFound:0 deleteExtraKeys:1 allowControllerIdentifierToChange:1 controllerIdentifierChanged:&v74 successfulKeyUserName:0 error:&v72];
        v29 = v72;
        v30 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v32 = HMFGetOSLogHandle();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
        if (v28)
        {
          if (v33)
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543362;
            v76 = v34;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Successfully decrypted data version 2", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v30);
          if (v22)
          {
            v27 = v68;
            if ((v74 & 0x100) == 0 && (v74 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v27 = v68;
            if ((v74 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          goto LABEL_34;
        }

        if (v33)
        {
          v65 = HMFGetLogIdentifier();
          shortDescription2 = [v29 shortDescription];
          *buf = 138543618;
          v76 = v65;
          v77 = 2112;
          v78 = shortDescription2;
          v62 = shortDescription2;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Failed to decrypt data v2 from the cloud due to error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        if ((v22 & 1) == 0)
        {
          v63 = v74;
          [(HMDCloudRecord *)selfCopy2 setDecryptionFailed:1];
          v28 = 0;
          v27 = v68;
          if ((v63 & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }

        v35 = HIBYTE(v74) | v74;
        v27 = v68;
        if (!v9)
        {
LABEL_33:
          v28 = 0;
          if ((v35 & 1) == 0)
          {
LABEL_38:
            v16 = [HMDCloudLegacyHomeDataRecord legacyModelWithHomeDataV0:v7 homeDataV2:v28];
            v71 = 0;
            v40 = [v16 encodeWithEncoding:1 error:&v71];
            v41 = v71;
            [(HMDCloudRecord *)self setCachedData:v40];

            if (v41)
            {
              v69 = v28;
              v42 = v26;
              v43 = v7;
              v44 = v27;
              v45 = objc_autoreleasePoolPush();
              selfCopy3 = self;
              v47 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                v48 = HMFGetLogIdentifier();
                *buf = 138543618;
                v76 = v48;
                v77 = 2112;
                v78 = v41;
                _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode object change with %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v45);
              v27 = v44;
              v7 = v43;
              v26 = v42;
              v28 = v69;
            }

            record3 = [(HMDCloudRecord *)self record];
            [record3 setObject:0 forKeyedSubscript:@"kRecordEncodedDataBlobKey"];

            record4 = [(HMDCloudRecord *)self record];
            [record4 setObject:0 forKeyedSubscript:@"kRecordEncodedDataBlobVersion2Key"];

            goto LABEL_43;
          }

LABEL_34:
          [(HMDCloudRecord *)self setControllerIdentifierChanged:1];
          goto LABEL_38;
        }

LABEL_32:
        [(HMDCloudRecord *)self setDecryptionFailed:1];
        goto LABEL_33;
      }
    }

    else
    {
      v27 = v6;
    }

    if ((v22 & 1) == 0)
    {
      v36 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v76 = v39;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@The record exists but neither v1 or v2 data is present, marking decryption as failed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v36);
      [(HMDCloudRecord *)selfCopy4 setDecryptionFailed:1];
      v28 = 0;
      goto LABEL_38;
    }

    v35 = HIBYTE(v74);
    if (!v9)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_10:
  cachedData2 = [(HMDCloudRecord *)self cachedData];
  v70 = 0;
  v16 = [HMDBackingStoreModelObject objectFromData:cachedData2 encoding:1 error:&v70];
  v17 = v70;

  if (v17)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v76 = v21;
      v77 = 2112;
      v78 = v17;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode object change with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
LABEL_51:
    v54 = 0;
    goto LABEL_52;
  }

LABEL_43:
  cachedData3 = [(HMDCloudRecord *)self cachedData];

  if (!cachedData3)
  {
    v55 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = HMFGetLogIdentifier();
      *buf = 138543362;
      v76 = v58;
      _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@Cloud legacy home data record was not loaded from disk or fetch from cloud, no cached data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v55);
    goto LABEL_51;
  }

  if (v16)
  {
    uuid = [v16 uuid];

    if (uuid)
    {
      uuid2 = [v16 uuid];
      [(HMDCloudRecord *)self setObjectID:uuid2];
    }
  }

  v16 = v16;
  v54 = v16;
LABEL_52:

  v59 = *MEMORY[0x277D85DE8];

  return v54;
}

+ (id)legacyModelWithHomeDataV0:(id)v0 homeDataV2:(id)v2
{
  v5 = MEMORY[0x277CCAD78];
  v2Copy = v2;
  v0Copy = v0;
  v8 = [[v5 alloc] initWithUUIDString:@"ABE49D63-6AE9-4469-A7EF-AC020E0104B3"];
  v9 = [(HMDBackingStoreModelObject *)[HMDCloudLegacyModelObject alloc] initWithObjectChangeType:1 uuid:v8 parentUUID:0];
  [(HMDCloudLegacyModelObject *)v9 setLegacyRecordType:&unk_286629D40];
  [(HMDCloudLegacyModelObject *)v9 setData1:v0Copy];

  [(HMDCloudLegacyModelObject *)v9 setData2:v2Copy];

  return v9;
}

@end