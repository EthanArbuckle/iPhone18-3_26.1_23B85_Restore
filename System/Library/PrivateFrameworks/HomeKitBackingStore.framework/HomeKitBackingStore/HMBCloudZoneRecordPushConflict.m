@interface HMBCloudZoneRecordPushConflict
- (BOOL)isEqual:(id)a3;
- (HMBCloudZoneRecordPushConflict)initWithRecordID:(id)a3 clientRecord:(id)a4 serverRecord:(id)a5 ancestorRecord:(id)a6;
- (HMBCloudZoneRecordPushConflict)initWithRecordID:(id)a3 error:(id)a4;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMBCloudZoneRecordPushConflict

- (id)attributeDescriptions
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [(HMBCloudZoneRecordPushConflict *)self recordID];
  v20 = [v21 hmbDescription];
  v19 = [v3 initWithName:@"Record ID" value:v20];
  v22[0] = v19;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMBCloudZoneRecordPushConflict *)self clientRecord];
  v6 = [v5 hmbDescription];
  v7 = [v4 initWithName:@"Client Record" value:v6];
  v22[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMBCloudZoneRecordPushConflict *)self serverRecord];
  v10 = [v9 hmbDescription];
  v11 = [v8 initWithName:@"Server Record" value:v10];
  v22[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMBCloudZoneRecordPushConflict *)self ancestorRecord];
  v14 = [v13 hmbDescription];
  v15 = [v12 initWithName:@"Ancestor Record" value:v14];
  v22[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (unint64_t)hash
{
  v2 = [(HMBCloudZoneRecordPushConflict *)self recordID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
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
  if (v6)
  {
    v7 = [(HMBCloudZoneRecordPushConflict *)self recordID];
    v8 = [v6 recordID];
    if (![v7 isEqual:v8])
    {
      goto LABEL_9;
    }

    v9 = [(HMBCloudZoneRecordPushConflict *)self clientRecord];
    v10 = [v6 clientRecord];
    v11 = HMFEqualObjects();

    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = [(HMBCloudZoneRecordPushConflict *)self serverRecord];
    v13 = [v6 serverRecord];
    v14 = HMFEqualObjects();

    if (v14)
    {
      v15 = [(HMBCloudZoneRecordPushConflict *)self ancestorRecord];
      v16 = [v6 ancestorRecord];
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

- (HMBCloudZoneRecordPushConflict)initWithRecordID:(id)a3 clientRecord:(id)a4 serverRecord:(id)a5 ancestorRecord:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    v15 = v14;
    v23.receiver = self;
    v23.super_class = HMBCloudZoneRecordPushConflict;
    v16 = [(HMBCloudZoneRecordPushConflict *)&v23 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_recordID, a3);
      objc_storeStrong(&v17->_clientRecord, a4);
      objc_storeStrong(&v17->_serverRecord, a5);
      objc_storeStrong(&v17->_ancestorRecord, a6);
    }

    return v17;
  }

  else
  {
    v19 = _HMFPreconditionFailure();
    return [(HMBCloudZoneRecordPushConflict *)v19 initWithRecordID:v20 error:v21, v22];
  }
}

- (HMBCloudZoneRecordPushConflict)initWithRecordID:(id)a3 error:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![v7 hmbIsCloudKitError])
  {
    goto LABEL_18;
  }

  if ([v7 code] == 11)
  {
    self = [(HMBCloudZoneRecordPushConflict *)self initWithRecordID:v6 clientRecord:0 serverRecord:0 ancestorRecord:0];
    v8 = self;
    goto LABEL_19;
  }

  if ([v7 code] != 14)
  {
LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  v9 = [v7 userInfo];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBBFE0]];

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
    v13 = [v7 userInfo];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

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
      v17 = [v7 userInfo];
      v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277CBBFD8]];

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
        self = [(HMBCloudZoneRecordPushConflict *)self initWithRecordID:v6 clientRecord:v12 serverRecord:v16 ancestorRecord:v20];
        v8 = self;
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        self = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          v34 = [v7 userInfo];
          v35 = 138543618;
          v36 = v33;
          v37 = 2112;
          v38 = v34;
          _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_ERROR, "%{public}@Server record changed error user info does not have ancestor record: %@", &v35, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v8 = 0;
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
        v30 = [v7 userInfo];
        v35 = 138543618;
        v36 = v29;
        v37 = 2112;
        v38 = v30;
        _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_ERROR, "%{public}@Server record changed error user info does not have server record: %@", &v35, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v8 = 0;
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
      v26 = [v7 userInfo];
      v35 = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = v26;
      _os_log_impl(&dword_22AD27000, v24, OS_LOG_TYPE_ERROR, "%{public}@Server record changed error user info does not have client record: %@", &v35, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v8 = 0;
  }

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

@end