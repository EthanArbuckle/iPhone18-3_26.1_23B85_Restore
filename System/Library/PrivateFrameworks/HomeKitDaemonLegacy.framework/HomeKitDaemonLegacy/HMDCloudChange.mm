@interface HMDCloudChange
+ (id)shortDescription;
- (CKRecord)record;
- (CKRecordID)recordID;
- (HMDCloudChange)init;
- (NSArray)rowIDs;
- (NSSet)dependentUUIDs;
- (NSString)description;
- (NSString)recordName;
- (NSString)type;
- (NSUUID)objectID;
- (NSUUID)parentObjectID;
- (NSUUID)parentUuid;
- (NSUUID)uuid;
- (id)_initWithObjectChange:(id)a3 cloudObjectRecord:(id)a4;
- (id)shortDescription;
- (void)forceChangeToDelete;
- (void)replayChange:(id)a3 stagedChange:(id)a4;
- (void)resetRecord;
- (void)updateChangeWithRecord:(id)a3;
- (void)updateCloudRecord:(id)a3;
- (void)updateDeletedCloudRecord:(id)a3;
- (void)updateWithObjectChange:(id)a3;
@end

@implementation HMDCloudChange

- (void)replayChange:(id)a3 stagedChange:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(HMDCloudChange *)self objectChange];
    v9 = [v8 isReplayable];

    if (v9)
    {
      if ([(HMDCloudChange *)self isAdded]|| [(HMDCloudChange *)self isUpdated])
      {
        if ([v7 isDeleted])
        {
          if ([(HMDCloudChange *)self isDeleted])
          {
            v10 = self;
            v11 = 2;
          }

          else
          {
            v10 = self;
            v11 = 1;
          }

          goto LABEL_9;
        }

        v12 = [(HMDCloudChange *)self objectChange];
        if (v6)
        {
          v13 = [v6 objectChange];
          v42 = 0;
          [v12 diff:v13 differingFields:&v42];
          v14 = v42;

          if ([v14 count])
          {
            v15 = objc_autoreleasePoolPush();
            v16 = self;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              v19 = [v6 objectChange];
              *buf = 138543874;
              v44 = v18;
              v45 = 2112;
              v46 = v19;
              v47 = 2112;
              v48 = v14;
              _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Must replay change from cloud: object %@ has diff %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v15);
            v20 = [(HMDCloudChange *)v16 objectChange];
            v21 = [v6 objectChange];
            v22 = [v20 merge:v21];

            if (v22)
            {
              v23 = objc_autoreleasePoolPush();
              v24 = v16;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v26 = HMFGetLogIdentifier();
                v27 = [v6 objectChange];
                *buf = 138543874;
                v44 = v26;
                v45 = 2112;
                v46 = v27;
                v47 = 2112;
                v48 = v22;
                _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to replay: object %@ with error %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v23);
              [(HMDCloudChange *)v24 setApplyType:2];
              v28 = [(HMDCloudChange *)v24 rowIDsSet];
              v29 = [v7 rowIDs];
              [v28 addObjectsFromArray:v29];
            }

            else
            {
              [(HMDCloudChange *)v16 setApplyType:3];
            }

            goto LABEL_30;
          }
        }

        else
        {
          v35 = [v7 objectChange];
          v41 = 0;
          [v12 diff:v35 differingFields:&v41];
          v14 = v41;

          if ([v14 count])
          {
            v36 = objc_autoreleasePoolPush();
            v37 = self;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = HMFGetLogIdentifier();
              *buf = 138543874;
              v44 = v39;
              v45 = 2112;
              v46 = v7;
              v47 = 2112;
              v48 = v14;
              _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Change from cloud: object %@ has diff %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v36);
          }
        }

        [(HMDCloudChange *)self setApplyType:3];
LABEL_30:

        goto LABEL_31;
      }

      v30 = objc_autoreleasePoolPush();
      self = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v32;
        v45 = 2112;
        v46 = v7;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Change cannot be process further, dropping changes %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
    }

    [(HMDCloudChange *)self setApplyType:2];
    v33 = [(HMDCloudChange *)self rowIDsSet];
    v34 = [v7 rowIDs];
    [v33 addObjectsFromArray:v34];

    goto LABEL_31;
  }

  v10 = self;
  v11 = 0;
LABEL_9:
  [(HMDCloudChange *)v10 setApplyType:v11];
LABEL_31:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)resetRecord
{
  v2 = [(HMDCloudChange *)self cloudRecord];
  [v2 setRecord:0];
}

- (void)updateChangeWithRecord:(id)a3
{
  v4 = a3;
  v5 = [(HMDCloudChange *)self cloudRecord];
  [v5 setRecord:v4];
}

- (CKRecordID)recordID
{
  v2 = [(HMDCloudChange *)self cloudRecord];
  v3 = [v2 recordID];

  return v3;
}

- (NSString)type
{
  v2 = [(HMDCloudChange *)self objectChange];
  v3 = [v2 bsoType];

  return v3;
}

- (NSString)recordName
{
  v2 = [(HMDCloudChange *)self cloudRecord];
  v3 = [v2 recordName];

  return v3;
}

- (CKRecord)record
{
  v3 = [(HMDCloudChange *)self cloudRecord];

  if (v3 && (-[HMDCloudChange cloudRecord](self, "cloudRecord"), v4 = objc_claimAutoreleasedReturnValue(), -[HMDCloudChange objectChange](self, "objectChange"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 encodeObjectChange:v5], v5, v4, v6))
  {
    v7 = [(HMDCloudChange *)self cloudRecord];
    v8 = [v7 record];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateWithObjectChange:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectChangeType];
  v6 = v5;
  if (v5 > 1)
  {
    if (v5 == 3)
    {
      v8 = 0;
      v7 = 1;
      goto LABEL_11;
    }

    if (v5 == 2)
    {
      v8 = 0;
      v7 = 0;
      goto LABEL_11;
    }

LABEL_8:
    v8 = 0;
    v7 = 0;
    v6 = 0;
    goto LABEL_11;
  }

  if (!v5)
  {
    v8 = 0;
    v7 = 0;
    v6 = 2;
    goto LABEL_11;
  }

  if (v5 != 1)
  {
    goto LABEL_8;
  }

  v7 = 0;
  v8 = 1;
LABEL_11:
  if (![(HMDCloudChange *)self isAdded]&& ![(HMDCloudChange *)self isUpdated])
  {
    if ([(HMDCloudChange *)self isDeleted])
    {
      if (v6 <= 1)
      {
        if (v6)
        {
          v12 = self;
          v13 = 1;
          goto LABEL_19;
        }

        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      if (v6 == 2)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = self;
        v20 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        v21 = HMFGetLogIdentifier();
        *v36 = 138543618;
        *&v36[4] = v21;
        *&v36[12] = 2112;
        *&v36[14] = v4;
        v22 = "%{public}@Retaining 'delete' change, cannot convert a delete to an update, %@";
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        v19 = self;
        v20 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        v21 = HMFGetLogIdentifier();
        *v36 = 138543618;
        *&v36[4] = v21;
        *&v36[12] = 2112;
        *&v36[14] = v4;
        v22 = "%{public}@Object is already deleted, dropping delete %@";
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      v21 = HMFGetLogIdentifier();
      *v36 = 138543618;
      *&v36[4] = v21;
      *&v36[12] = 2112;
      *&v36[14] = v4;
      v22 = "%{public}@Change has already be invalidated, dropping further changes %@";
    }

    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, v22, v36, 0x16u);
LABEL_42:

    goto LABEL_43;
  }

  if ((v6 - 1) > 1)
  {
    if (v7)
    {
      v12 = self;
      v13 = 3;
LABEL_19:
      [(HMDCloudChange *)v12 setChangeType:v13];
      [(HMDCloudChange *)self setObjectChange:v4];
      goto LABEL_44;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_26:
      v17 = HMFGetLogIdentifier();
      *v36 = 138543618;
      *&v36[4] = v17;
      *&v36[12] = 2112;
      *&v36[14] = v4;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Invalidating change because object change in unknown type, %@", v36, 0x16u);
    }

LABEL_27:

    objc_autoreleasePoolPop(v14);
    [(HMDCloudChange *)v15 setChangeType:0];
    goto LABEL_44;
  }

  v9 = [(HMDCloudChange *)self objectChange];

  if (v9)
  {
    v10 = [(HMDCloudChange *)self objectChange];
    v11 = [v10 merge:v4];

    if (!v11)
    {
      goto LABEL_39;
    }

LABEL_36:
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *v36 = 138543618;
      *&v36[4] = v30;
      *&v36[12] = 2112;
      *&v36[14] = v11;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalidating change because merge object change fail with error %@", v36, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    [(HMDCloudChange *)v28 setChangeType:0];

    goto LABEL_44;
  }

  if (v8)
  {
    [(HMDCloudChange *)self setObjectChange:v4];
    goto LABEL_39;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    *v36 = 138543362;
    *&v36[4] = v26;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot merge updated change into an add because object change does not exist", v36, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
  if (v11)
  {
    goto LABEL_36;
  }

LABEL_39:
  if ((v8 & [(HMDCloudChange *)self isUpdated]) == 1)
  {
    v31 = [(HMDCloudChange *)self objectChange];
    [v31 setObjectChangeType:1];

    [(HMDCloudChange *)self setChangeType:1];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v32 = [(HMDCloudChange *)v19 objectChange];
      *v36 = 138543618;
      *&v36[4] = v21;
      *&v36[12] = 2112;
      *&v36[14] = v32;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Changing update change back to an add %@", v36, 0x16u);

      goto LABEL_42;
    }

LABEL_43:

    objc_autoreleasePoolPop(v18);
  }

LABEL_44:
  v33 = [(HMDCloudChange *)self rowIDsSet:*v36];
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "bsoLogRowID")}];
  [v33 addObject:v34];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)updateDeletedCloudRecord:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_deletedCloudRecord, a3);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Cannot update deleted cloud record without cloudRecord", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateCloudRecord:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_cloudRecord, a3);
    if (![(HMDCloudChange *)self isDeleted])
    {
      v6 = [v5 extractObjectChange];
      if (v6)
      {
        v7 = [(HMDCloudChange *)self objectChange];
        v8 = [(HMDCloudChange *)v6 diff:v7 differingFields:0];

        if (v8)
        {
          v9 = [(HMDCloudChange *)self objectChange];
          v10 = [(HMDCloudChange *)v6 merge:v9];

          if (v10)
          {
            v11 = objc_autoreleasePoolPush();
            v12 = self;
            v13 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = HMFGetLogIdentifier();
              v32 = 138543618;
              v33 = v14;
              v34 = 2112;
              v35 = v10;
              _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalidating change, merge object change with cached object change fail with error %@", &v32, 0x16u);
            }

            objc_autoreleasePoolPop(v11);
            v15 = [(HMDCloudChange *)v12 objectChange];
            -[HMDCloudChange setObjectChangeType:](v6, "setObjectChangeType:", [v15 objectChangeType]);

            [(HMDCloudChange *)v12 setObjectChange:v6];
            [(HMDCloudChange *)v12 setChangeType:0];
          }

          else
          {
            v30 = [(HMDCloudChange *)self objectChange];
            -[HMDCloudChange setObjectChangeType:](v6, "setObjectChangeType:", [v30 objectChangeType]);

            [(HMDCloudChange *)self setObjectChange:v6];
          }

          goto LABEL_22;
        }

        v25 = objc_autoreleasePoolPush();
        v26 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          v32 = 138543618;
          v33 = v28;
          v34 = 2112;
          v35 = v6;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Local changes will not modify cloud record, dropping local changes: %@", &v32, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v29 = [(HMDCloudChange *)v26 objectChange];
        -[HMDCloudChange setObjectChangeType:](v6, "setObjectChangeType:", [v29 objectChangeType]);

        [(HMDCloudChange *)v26 setObjectChange:v6];
        v24 = v26;
      }

      else
      {
        if ([(HMDCloudChange *)self isAdded])
        {
LABEL_22:

          goto LABEL_23;
        }

        v20 = objc_autoreleasePoolPush();
        v21 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          v32 = 138543618;
          v33 = v23;
          v34 = 2112;
          v35 = v21;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalidating change, cannot add a new record unless the change type is added, %@", &v32, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        v24 = v21;
      }

      [(HMDCloudChange *)v24 setChangeType:0];
      goto LABEL_22;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot update cloud record without cloudRecord", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

LABEL_23:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)forceChangeToDelete
{
  [(HMDCloudChange *)self setChangeType:3];
  v3 = [(HMDCloudChange *)self objectChange];
  if (v3)
  {
    v8 = v3;
    v4 = objc_alloc(objc_opt_class());
    v5 = [v8 uuid];
    v6 = [v8 parentUUID];
    v7 = [v4 initWithObjectChangeType:3 uuid:v5 parentUUID:v6];

    [(HMDCloudChange *)self setObjectChange:v7];
    v3 = v8;
  }
}

- (NSArray)rowIDs
{
  v2 = [(HMDCloudChange *)self rowIDsSet];
  v3 = [v2 allObjects];

  return v3;
}

- (NSUUID)uuid
{
  v2 = [(HMDCloudChange *)self objectChange];
  v3 = [v2 uuid];

  return v3;
}

- (NSUUID)objectID
{
  v2 = [(HMDCloudChange *)self objectChange];
  v3 = [v2 uuid];

  return v3;
}

- (NSUUID)parentUuid
{
  v2 = [(HMDCloudChange *)self objectChange];
  v3 = [v2 parentUUID];

  return v3;
}

- (NSUUID)parentObjectID
{
  v2 = [(HMDCloudChange *)self objectChange];
  v3 = [v2 parentUUID];

  return v3;
}

- (NSSet)dependentUUIDs
{
  v2 = [(HMDCloudChange *)self objectChange];
  v3 = [v2 dependentUUIDs];

  return v3;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDCloudChange *)self shortDescription];
  v4 = [v2 stringWithFormat:@"<%@>", v3];

  return v4;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDCloudChange *)self changeType];
  if (v5 > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_27972C0A0[v5];
  }

  v7 = [(HMDCloudChange *)self cloudRecord];
  v8 = [v3 stringWithFormat:@"%@, Type = %@, Cloud Record = %@", v4, v6, v7];

  return v8;
}

- (id)_initWithObjectChange:(id)a3 cloudObjectRecord:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if ((v6 == 0) != (v7 != 0))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Either objectChange or cloudObjectRecord must be specified, not both", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
LABEL_13:
    v19 = 0;
    goto LABEL_19;
  }

  if (v7)
  {
    v13 = [v7 extractObjectChange];

    v6 = v13;
  }

  if (!v6)
  {
    v16 = objc_autoreleasePoolPush();
    v10 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Could not create the object change for the given record", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_13;
  }

  v14 = [v6 objectChangeType];
  if (v14 > 3)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_253D4BF28[v14];
  }

  v28.receiver = self;
  v28.super_class = HMDCloudChange;
  v20 = [(HMDCloudChange *)&v28 init];
  v21 = v20;
  if (v20)
  {
    v20->_changeType = v15;
    objc_storeStrong(&v20->_cloudRecord, a4);
    v22 = [MEMORY[0x277CBEB58] set];
    rowIDsSet = v21->_rowIDsSet;
    v21->_rowIDsSet = v22;

    objc_storeStrong(&v21->_objectChange, v6);
    if (!v8)
    {
      v24 = [(HMDCloudChange *)v21 rowIDsSet];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "bsoLogRowID")}];
      [v24 addObject:v25];
    }
  }

  v10 = v21;

  v19 = v10;
LABEL_19:

  v26 = *MEMORY[0x277D85DE8];
  return v19;
}

- (HMDCloudChange)init
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

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end