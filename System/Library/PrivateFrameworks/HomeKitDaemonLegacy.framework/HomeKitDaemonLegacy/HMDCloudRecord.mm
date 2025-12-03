@interface HMDCloudRecord
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)encodeObjectChange:(id)change;
- (CKRecord)record;
- (CKRecordID)recordID;
- (HMDCloudRecord)init;
- (HMDCloudRecord)initWithObjectID:(id)d recordName:(id)name cloudZone:(id)zone;
- (HMDCloudZone)cloudZone;
- (id)description;
- (id)extractObjectChange;
- (id)shortDescription;
- (void)clearData;
@end

@implementation HMDCloudRecord

- (HMDCloudZone)cloudZone
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudZone);

  return WeakRetained;
}

- (void)clearData
{
  record = [(HMDCloudRecord *)self record];
  [record setObject:0 forKeyedSubscript:@"k00"];

  record2 = [(HMDCloudRecord *)self record];
  [record2 setObject:0 forKeyedSubscript:@"k01"];
}

- (CKRecord)record
{
  v20 = *MEMORY[0x277D85DE8];
  record = self->_record;
  if (!record)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      recordType = [(HMDCloudRecord *)selfCopy recordType];
      v16 = 138543618;
      v17 = v7;
      v18 = 2112;
      v19 = recordType;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Allocating new %@ record since we don't have one", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = objc_alloc(MEMORY[0x277CBC5A0]);
    recordType2 = [(HMDCloudRecord *)selfCopy recordType];
    recordID = [(HMDCloudRecord *)selfCopy recordID];
    v12 = [v9 initWithRecordType:recordType2 recordID:recordID];
    v13 = self->_record;
    self->_record = v12;

    selfCopy->_recordCreated = 1;
    record = self->_record;
  }

  v14 = *MEMORY[0x277D85DE8];

  return record;
}

- (CKRecordID)recordID
{
  recordID = self->_recordID;
  if (!recordID)
  {
    cloudZone = [(HMDCloudRecord *)self cloudZone];
    if (cloudZone)
    {
      v5 = objc_alloc(MEMORY[0x277CBC5D0]);
      recordName = [(HMDCloudRecord *)self recordName];
      v7 = [cloudZone zone];
      zoneID = [v7 zoneID];
      v9 = [v5 initWithRecordName:recordName zoneID:zoneID];
      v10 = self->_recordID;
      self->_recordID = v9;
    }

    recordID = self->_recordID;
  }

  return recordID;
}

- (BOOL)encodeObjectChange:(id)change
{
  v59 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = changeCopy;
  if (self)
  {
    v6 = changeCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      downloadSize = [v8 downloadSize];
      if (downloadSize)
      {
        v10 = downloadSize;
        downloadSize2 = [v8 downloadSize];
        v12 = [downloadSize2 isEqual:&unk_286629D10];

        if (v12)
        {
          v13 = objc_autoreleasePoolPush();
          selfCopy = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = HMFGetLogIdentifier();
            *buf = 138543618;
            v56 = v16;
            v57 = 2112;
            v58 = v8;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode software update model object change for cloud due to invalid download size %@ - This change will not go to the cloud", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          v17 = objc_autoreleasePoolPush();
          v18 = selfCopy;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543618;
            v56 = v20;
            v57 = 2112;
            v58 = v6;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Model object is blocked from being pushed to the cloud %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
LABEL_18:
          v27 = 0;
          goto LABEL_28;
        }
      }
    }
  }

  v50 = 0;
  v21 = [v5 encodeWithEncoding:1 error:&v50];
  v22 = v50;
  [(HMDCloudRecord *)self setCachedData:v21];

  if (v22)
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v26;
      v57 = 2112;
      v58 = v22;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode object change with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    goto LABEL_18;
  }

  cachedData = [(HMDCloudRecord *)self cachedData];
  hmd_compressedData = [cachedData hmd_compressedData];

  v49 = 0;
  v30 = [HMDPersistentStore encryptDataWithControllerKey:hmd_compressedData error:&v49];
  v31 = v49;
  v27 = v30 != 0;
  if (v30)
  {
    v32 = +[HMDBackingStore currentDevice];

    if (v32)
    {
      v53[0] = @"HM.encoding";
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCloudRecord objectEncoding](self, "objectEncoding")}];
      v53[1] = @"HM.device";
      v54[0] = v33;
      v34 = +[HMDBackingStore currentDevice];
      [v34 identifier];
      v48 = hmd_compressedData;
      v36 = v35 = v31;
      uUIDString = [v36 UUIDString];
      v54[1] = uUIDString;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];

      v31 = v35;
      hmd_compressedData = v48;
    }

    else
    {
      v51[0] = @"HM.encoding";
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCloudRecord objectEncoding](self, "objectEncoding")}];
      v51[1] = @"HM.device";
      v52[0] = v33;
      v52[1] = @"<unknown device>";
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
    }

    v43 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v38 requiringSecureCoding:1 error:0];
    record = [(HMDCloudRecord *)self record];
    [record setObject:v43 forKeyedSubscript:@"k00"];

    record2 = [(HMDCloudRecord *)self record];
    [record2 setObject:v30 forKeyedSubscript:@"k01"];
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v42;
      v57 = 2112;
      v58 = v31;
      _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to encrypt object change data with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    [(HMDCloudRecord *)selfCopy3 setEncryptionFailed:1];
  }

LABEL_28:
  v46 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)extractObjectChange
{
  v82[3] = *MEMORY[0x277D85DE8];
  cachedData = [(HMDCloudRecord *)self cachedData];
  if (cachedData)
  {

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  if (![(HMDCloudRecord *)self isRecordCached])
  {
    goto LABEL_17;
  }

  v4 = MEMORY[0x277CCAAC8];
  v5 = MEMORY[0x277CBEB98];
  v82[0] = objc_opt_class();
  v82[1] = objc_opt_class();
  v82[2] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:3];
  v7 = [v5 setWithArray:v6];
  record = [(HMDCloudRecord *)self record];
  v9 = [record objectForKeyedSubscript:@"k00"];
  v71 = 0;
  v10 = [v4 unarchivedObjectOfClasses:v7 fromData:v9 error:&v71];
  v11 = v71;

  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v73 = v15;
      v74 = 2114;
      v75 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive cloud record version dictionary from record data: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

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

  record2 = [(HMDCloudRecord *)self record];
  v20 = [record2 objectForKeyedSubscript:@"k01"];

  if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v54 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = HMFGetLogIdentifier();
      *buf = 138543362;
      v73 = v57;
      _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@Cannot find data in record", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v54);
    goto LABEL_38;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [v20 length];
    *buf = 138543618;
    v73 = v24;
    v74 = 2048;
    v75 = v25;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@[HomeKit Data Usage Metric Log] Object changed record encrypted data size (extractObjectChange): %lu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v70 = 0;
  v26 = [HMDPersistentStore decryptDataWithControllerKey:v20 totalKeysFound:0 deleteExtraKeys:0 allowControllerIdentifierToChange:0 controllerIdentifierChanged:0 successfulKeyUserName:0 error:&v70];
  v27 = v70;
  if (v26)
  {
    hmd_uncompressedData = [v26 hmd_uncompressedData];
    [(HMDCloudRecord *)selfCopy3 setCachedData:hmd_uncompressedData];

    record3 = [(HMDCloudRecord *)selfCopy3 record];
    [record3 setObject:0 forKeyedSubscript:@"k00"];

    record4 = [(HMDCloudRecord *)selfCopy3 record];
    [record4 setObject:0 forKeyedSubscript:@"k01"];
  }

  else
  {
    v60 = objc_autoreleasePoolPush();
    v61 = selfCopy3;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v63 = v68 = v27;
      [v68 shortDescription];
      v64 = v66 = v60;
      *buf = 138543618;
      v73 = v63;
      v74 = 2112;
      v75 = v64;
      _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Failed to decrypt data in object record due to error: %@", buf, 0x16u);

      v60 = v66;
      v27 = v68;
    }

    objc_autoreleasePoolPop(v60);
    [(HMDCloudRecord *)v61 setDecryptionFailed:1];
  }

  if (!v26)
  {
LABEL_38:
    v40 = 0;
    goto LABEL_39;
  }

LABEL_18:
  cachedData2 = [(HMDCloudRecord *)self cachedData];

  if (!cachedData2)
  {
    v41 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543362;
      v73 = v44;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Cloud record was not loaded from disk or fetch from cloud, no cached data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v41);
    goto LABEL_38;
  }

  cachedData3 = [(HMDCloudRecord *)self cachedData];
  v69 = 0;
  v33 = [HMDBackingStoreModelObject objectFromData:cachedData3 encoding:1 error:&v69];
  v34 = v69;

  v35 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v37 = HMFGetOSLogHandle();
  v38 = v37;
  if (v34)
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v73 = v39;
      v74 = 2112;
      v75 = v34;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode object change with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v40 = 0;
  }

  else
  {
    v67 = v18;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v45 = HMFGetLogIdentifier();
      record5 = [(HMDCloudRecord *)selfCopy5 record];
      v46 = [record5 size];
      record6 = [(HMDCloudRecord *)selfCopy5 record];
      recordID = [record6 recordID];
      v49 = [v67 hmf_stringForKey:@"HM.device"];
      v50 = v49;
      *buf = 138544386;
      v51 = @"<UNKNOWN>";
      v73 = v45;
      if (v49)
      {
        v51 = v49;
      }

      v74 = 2048;
      v75 = v46;
      v76 = 2112;
      v77 = recordID;
      v78 = 2112;
      v79 = v33;
      v80 = 2112;
      v81 = v51;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@fetched cloud record (%lu bytes) %@ (%@) from %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v35);
    if (v33)
    {
      uuid = [v33 uuid];

      if (uuid)
      {
        uuid2 = [v33 uuid];
        [(HMDCloudRecord *)selfCopy5 setObjectID:uuid2];
      }
    }

    v40 = v33;
    v18 = v67;
  }

LABEL_39:
  v58 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  shortDescription = [(HMDCloudRecord *)self shortDescription];
  v4 = [v2 stringWithFormat:@"<%@>", shortDescription];

  return v4;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  objectID = [(HMDCloudRecord *)self objectID];
  uUIDString = [objectID UUIDString];
  recordName = [(HMDCloudRecord *)self recordName];
  v8 = [v3 stringWithFormat:@"%@ %@ %@", shortDescription, uUIDString, recordName];

  return v8;
}

- (HMDCloudRecord)initWithObjectID:(id)d recordName:(id)name cloudZone:(id)zone
{
  dCopy = d;
  nameCopy = name;
  zoneCopy = zone;
  v15.receiver = self;
  v15.super_class = HMDCloudRecord;
  v11 = [(HMDCloudRecord *)&v15 init];
  if (v11)
  {
    uUID = dCopy;
    if (!dCopy)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    objc_storeStrong(&v11->_objectID, uUID);
    if (!dCopy)
    {
    }

    objc_storeWeak(&v11->_cloudZone, zoneCopy);
    uUIDString = nameCopy;
    if (!nameCopy)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
    }

    objc_storeStrong(&v11->_recordName, uUIDString);
    if (!nameCopy)
    {
    }
  }

  return v11;
}

- (HMDCloudRecord)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_155456 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_155456, &__block_literal_global_155457);
  }

  v3 = logCategory__hmf_once_v1_155458;

  return v3;
}

uint64_t __29__HMDCloudRecord_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_155458;
  logCategory__hmf_once_v1_155458 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end