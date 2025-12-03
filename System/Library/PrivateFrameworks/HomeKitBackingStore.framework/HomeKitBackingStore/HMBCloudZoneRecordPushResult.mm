@interface HMBCloudZoneRecordPushResult
- (HMBCloudZoneRecordPushResult)initWithUpdatedRecords:(id)records deletedRecordIDs:(id)ds conflicts:(id)conflicts fatalError:(id)error;
- (HMBCloudZoneRecordPushResult)initWithUpdatedRecords:(id)records deletedRecordIDs:(id)ds error:(id)error;
- (id)pushResultByMergingWithPushResult:(id)result;
@end

@implementation HMBCloudZoneRecordPushResult

- (id)pushResultByMergingWithPushResult:(id)result
{
  resultCopy = result;
  updatedRecords = [(HMBCloudZoneRecordPushResult *)self updatedRecords];
  updatedRecords2 = [resultCopy updatedRecords];
  v7 = [updatedRecords setByAddingObjectsFromSet:updatedRecords2];

  deletedRecordIDs = [(HMBCloudZoneRecordPushResult *)self deletedRecordIDs];
  deletedRecordIDs2 = [resultCopy deletedRecordIDs];
  v10 = [deletedRecordIDs setByAddingObjectsFromSet:deletedRecordIDs2];

  conflicts = [(HMBCloudZoneRecordPushResult *)self conflicts];
  conflicts2 = [resultCopy conflicts];
  v13 = [conflicts setByAddingObjectsFromSet:conflicts2];

  v14 = [HMBCloudZoneRecordPushResult alloc];
  fatalError = [(HMBCloudZoneRecordPushResult *)self fatalError];
  if (fatalError)
  {
    v16 = [(HMBCloudZoneRecordPushResult *)v14 initWithUpdatedRecords:v7 deletedRecordIDs:v10 conflicts:v13 fatalError:fatalError];
  }

  else
  {
    fatalError2 = [resultCopy fatalError];
    v16 = [(HMBCloudZoneRecordPushResult *)v14 initWithUpdatedRecords:v7 deletedRecordIDs:v10 conflicts:v13 fatalError:fatalError2];
  }

  return v16;
}

- (HMBCloudZoneRecordPushResult)initWithUpdatedRecords:(id)records deletedRecordIDs:(id)ds conflicts:(id)conflicts fatalError:(id)error
{
  recordsCopy = records;
  dsCopy = ds;
  conflictsCopy = conflicts;
  errorCopy = error;
  if (!recordsCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!dsCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!conflictsCopy)
  {
LABEL_9:
    v25 = _HMFPreconditionFailure();
    return [(HMBCloudZoneRecordPushResult *)v25 initWithUpdatedRecords:v26 deletedRecordIDs:v27 error:v28, v29];
  }

  v14 = errorCopy;
  v30.receiver = self;
  v30.super_class = HMBCloudZoneRecordPushResult;
  v15 = [(HMBCloudZoneRecordPushResult *)&v30 init];
  if (v15)
  {
    v16 = [recordsCopy copy];
    updatedRecords = v15->_updatedRecords;
    v15->_updatedRecords = v16;

    v18 = [dsCopy copy];
    deletedRecordIDs = v15->_deletedRecordIDs;
    v15->_deletedRecordIDs = v18;

    v20 = [conflictsCopy copy];
    conflicts = v15->_conflicts;
    v15->_conflicts = v20;

    v22 = [v14 copy];
    fatalError = v15->_fatalError;
    v15->_fatalError = v22;
  }

  return v15;
}

- (HMBCloudZoneRecordPushResult)initWithUpdatedRecords:(id)records deletedRecordIDs:(id)ds error:(id)error
{
  v49 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dsCopy = ds;
  errorCopy = error;
  v11 = [MEMORY[0x277CBEB58] set];
  userInfo = [errorCopy userInfo];
  v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

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
      v36 = recordsCopy;
      selfCopy = self;
      v34 = errorCopy;
      v35 = dsCopy;
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
              v27 = selfCopy;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = HMFGetLogIdentifier();
                hmbDescription = [v21 hmbDescription];
                *buf = 138543874;
                v43 = v29;
                v44 = 2112;
                v45 = hmbDescription;
                v46 = 2112;
                v47 = v22;
                _os_log_impl(&dword_22AD27000, v28, OS_LOG_TYPE_ERROR, "%{public}@Found fatal partial error for recordID %@: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v26);
              errorCopy = v34;
              v25 = v34;
              [v11 removeAllObjects];

              dsCopy = v35;
              recordsCopy = v36;
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
      recordsCopy = v36;
      errorCopy = v34;
LABEL_20:
      self = selfCopy;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = errorCopy;
  }

  v31 = [(HMBCloudZoneRecordPushResult *)self initWithUpdatedRecords:recordsCopy deletedRecordIDs:dsCopy conflicts:v11 fatalError:v25];

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

@end