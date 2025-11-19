@interface HMBCloudZoneRecordPushResult
- (HMBCloudZoneRecordPushResult)initWithUpdatedRecords:(id)a3 deletedRecordIDs:(id)a4 conflicts:(id)a5 fatalError:(id)a6;
- (HMBCloudZoneRecordPushResult)initWithUpdatedRecords:(id)a3 deletedRecordIDs:(id)a4 error:(id)a5;
- (id)pushResultByMergingWithPushResult:(id)a3;
@end

@implementation HMBCloudZoneRecordPushResult

- (id)pushResultByMergingWithPushResult:(id)a3
{
  v4 = a3;
  v5 = [(HMBCloudZoneRecordPushResult *)self updatedRecords];
  v6 = [v4 updatedRecords];
  v7 = [v5 setByAddingObjectsFromSet:v6];

  v8 = [(HMBCloudZoneRecordPushResult *)self deletedRecordIDs];
  v9 = [v4 deletedRecordIDs];
  v10 = [v8 setByAddingObjectsFromSet:v9];

  v11 = [(HMBCloudZoneRecordPushResult *)self conflicts];
  v12 = [v4 conflicts];
  v13 = [v11 setByAddingObjectsFromSet:v12];

  v14 = [HMBCloudZoneRecordPushResult alloc];
  v15 = [(HMBCloudZoneRecordPushResult *)self fatalError];
  if (v15)
  {
    v16 = [(HMBCloudZoneRecordPushResult *)v14 initWithUpdatedRecords:v7 deletedRecordIDs:v10 conflicts:v13 fatalError:v15];
  }

  else
  {
    v17 = [v4 fatalError];
    v16 = [(HMBCloudZoneRecordPushResult *)v14 initWithUpdatedRecords:v7 deletedRecordIDs:v10 conflicts:v13 fatalError:v17];
  }

  return v16;
}

- (HMBCloudZoneRecordPushResult)initWithUpdatedRecords:(id)a3 deletedRecordIDs:(id)a4 conflicts:(id)a5 fatalError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v11)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    v25 = _HMFPreconditionFailure();
    return [(HMBCloudZoneRecordPushResult *)v25 initWithUpdatedRecords:v26 deletedRecordIDs:v27 error:v28, v29];
  }

  v14 = v13;
  v30.receiver = self;
  v30.super_class = HMBCloudZoneRecordPushResult;
  v15 = [(HMBCloudZoneRecordPushResult *)&v30 init];
  if (v15)
  {
    v16 = [v10 copy];
    updatedRecords = v15->_updatedRecords;
    v15->_updatedRecords = v16;

    v18 = [v11 copy];
    deletedRecordIDs = v15->_deletedRecordIDs;
    v15->_deletedRecordIDs = v18;

    v20 = [v12 copy];
    conflicts = v15->_conflicts;
    v15->_conflicts = v20;

    v22 = [v14 copy];
    fatalError = v15->_fatalError;
    v15->_fatalError = v22;
  }

  return v15;
}

- (HMBCloudZoneRecordPushResult)initWithUpdatedRecords:(id)a3 deletedRecordIDs:(id)a4 error:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB58] set];
  v12 = [v10 userInfo];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

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

  if (v15)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v17)
    {
      v18 = v17;
      v36 = v8;
      v37 = self;
      v34 = v10;
      v35 = v9;
      v19 = *v39;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v38 + 1) + 8 * i);
          v22 = [v16 objectForKeyedSubscript:{v21, v34}];
          if ([v22 code] != 22)
          {
            v23 = [[HMBCloudZoneRecordPushConflict alloc] initWithRecordID:v21 error:v22];
            if (!v23)
            {
              v26 = objc_autoreleasePoolPush();
              v27 = v37;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = HMFGetLogIdentifier();
                v30 = [v21 hmbDescription];
                *buf = 138543874;
                v43 = v29;
                v44 = 2112;
                v45 = v30;
                v46 = 2112;
                v47 = v22;
                _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_ERROR, "%{public}@Found fatal partial error for recordID %@: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v26);
              v10 = v34;
              v25 = v34;
              [v11 removeAllObjects];

              v9 = v35;
              v8 = v36;
              goto LABEL_20;
            }

            v24 = v23;
            [v11 addObject:v23];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v25 = 0;
      v8 = v36;
      v10 = v34;
LABEL_20:
      self = v37;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = v10;
  }

  v31 = [(HMBCloudZoneRecordPushResult *)self initWithUpdatedRecords:v8 deletedRecordIDs:v9 conflicts:v11 fatalError:v25];

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

@end