@interface HMBCloudZoneRecordPushConflict
- (BOOL)isEqual:(id)equal;
- (HMBCloudZoneRecordPushConflict)initWithRecordID:(id)d clientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord;
- (HMBCloudZoneRecordPushConflict)initWithRecordID:(id)d error:(id)error;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMBCloudZoneRecordPushConflict

- (id)attributeDescriptions
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  recordID = [(HMBCloudZoneRecordPushConflict *)self recordID];
  hmbDescription = [recordID hmbDescription];
  v19 = [v3 initWithName:@"Record ID" value:hmbDescription];
  v22[0] = v19;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  clientRecord = [(HMBCloudZoneRecordPushConflict *)self clientRecord];
  hmbDescription2 = [clientRecord hmbDescription];
  v7 = [v4 initWithName:@"Client Record" value:hmbDescription2];
  v22[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  serverRecord = [(HMBCloudZoneRecordPushConflict *)self serverRecord];
  hmbDescription3 = [serverRecord hmbDescription];
  v11 = [v8 initWithName:@"Server Record" value:hmbDescription3];
  v22[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  ancestorRecord = [(HMBCloudZoneRecordPushConflict *)self ancestorRecord];
  hmbDescription4 = [ancestorRecord hmbDescription];
  v15 = [v12 initWithName:@"Ancestor Record" value:hmbDescription4];
  v22[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (unint64_t)hash
{
  recordID = [(HMBCloudZoneRecordPushConflict *)self recordID];
  v3 = [recordID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    recordID = [(HMBCloudZoneRecordPushConflict *)self recordID];
    recordID2 = [v6 recordID];
    if (![recordID isEqual:recordID2])
    {
      goto LABEL_9;
    }

    clientRecord = [(HMBCloudZoneRecordPushConflict *)self clientRecord];
    clientRecord2 = [v6 clientRecord];
    v11 = HMFEqualObjects();

    if (!v11)
    {
      goto LABEL_9;
    }

    serverRecord = [(HMBCloudZoneRecordPushConflict *)self serverRecord];
    serverRecord2 = [v6 serverRecord];
    v14 = HMFEqualObjects();

    if (v14)
    {
      ancestorRecord = [(HMBCloudZoneRecordPushConflict *)self ancestorRecord];
      ancestorRecord2 = [v6 ancestorRecord];
      v17 = HMFEqualObjects();
    }

    else
    {
LABEL_9:
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (HMBCloudZoneRecordPushConflict)initWithRecordID:(id)d clientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord
{
  dCopy = d;
  recordCopy = record;
  serverRecordCopy = serverRecord;
  ancestorRecordCopy = ancestorRecord;
  if (dCopy)
  {
    v15 = ancestorRecordCopy;
    v23.receiver = self;
    v23.super_class = HMBCloudZoneRecordPushConflict;
    v16 = [(HMBCloudZoneRecordPushConflict *)&v23 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_recordID, d);
      objc_storeStrong(&v17->_clientRecord, record);
      objc_storeStrong(&v17->_serverRecord, serverRecord);
      objc_storeStrong(&v17->_ancestorRecord, ancestorRecord);
    }

    return v17;
  }

  else
  {
    v19 = _HMFPreconditionFailure();
    return [(HMBCloudZoneRecordPushConflict *)v19 initWithRecordID:v20 error:v21, v22];
  }
}

- (HMBCloudZoneRecordPushConflict)initWithRecordID:(id)d error:(id)error
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
  if (![errorCopy hmbIsCloudKitError])
  {
    goto LABEL_18;
  }

  if ([errorCopy code] == 11)
  {
    self = [(HMBCloudZoneRecordPushConflict *)self initWithRecordID:dCopy clientRecord:0 serverRecord:0 ancestorRecord:0];
    selfCopy2 = self;
    goto LABEL_19;
  }

  if ([errorCopy code] != 14)
  {
LABEL_18:
    selfCopy2 = 0;
    goto LABEL_19;
  }

  userInfo = [errorCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFE0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    userInfo2 = [errorCopy userInfo];
    v14 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      userInfo3 = [errorCopy userInfo];
      v18 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CBBFD8]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      if (v20)
      {
        self = [(HMBCloudZoneRecordPushConflict *)self initWithRecordID:dCopy clientRecord:v12 serverRecord:v16 ancestorRecord:v20];
        selfCopy2 = self;
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        self = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          userInfo4 = [errorCopy userInfo];
          v35 = 138543618;
          v36 = v33;
          v37 = 2112;
          v38 = userInfo4;
          _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_ERROR, "%{public}@Server record changed error user info does not have ancestor record: %@", &v35, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        selfCopy2 = 0;
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      self = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        userInfo5 = [errorCopy userInfo];
        v35 = 138543618;
        v36 = v29;
        v37 = 2112;
        v38 = userInfo5;
        _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_ERROR, "%{public}@Server record changed error user info does not have server record: %@", &v35, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      selfCopy2 = 0;
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    self = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      userInfo6 = [errorCopy userInfo];
      v35 = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = userInfo6;
      _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_ERROR, "%{public}@Server record changed error user info does not have client record: %@", &v35, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    selfCopy2 = 0;
  }

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

@end