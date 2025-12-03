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
- (id)_initWithObjectChange:(id)change cloudObjectRecord:(id)record;
- (id)shortDescription;
- (void)forceChangeToDelete;
- (void)replayChange:(id)change stagedChange:(id)stagedChange;
- (void)resetRecord;
- (void)updateChangeWithRecord:(id)record;
- (void)updateCloudRecord:(id)record;
- (void)updateDeletedCloudRecord:(id)record;
- (void)updateWithObjectChange:(id)change;
@end

@implementation HMDCloudChange

- (void)replayChange:(id)change stagedChange:(id)stagedChange
{
  v49 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  stagedChangeCopy = stagedChange;
  if (stagedChangeCopy)
  {
    objectChange = [(HMDCloudChange *)self objectChange];
    isReplayable = [objectChange isReplayable];

    if (isReplayable)
    {
      if ([(HMDCloudChange *)self isAdded]|| [(HMDCloudChange *)self isUpdated])
      {
        if ([stagedChangeCopy isDeleted])
        {
          if ([(HMDCloudChange *)self isDeleted])
          {
            selfCopy5 = self;
            v11 = 2;
          }

          else
          {
            selfCopy5 = self;
            v11 = 1;
          }

          goto LABEL_9;
        }

        objectChange2 = [(HMDCloudChange *)self objectChange];
        if (changeCopy)
        {
          objectChange3 = [changeCopy objectChange];
          v42 = 0;
          [objectChange2 diff:objectChange3 differingFields:&v42];
          v14 = v42;

          if ([v14 count])
          {
            v15 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              objectChange4 = [changeCopy objectChange];
              *buf = 138543874;
              v44 = v18;
              v45 = 2112;
              v46 = objectChange4;
              v47 = 2112;
              v48 = v14;
              _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Must replay change from cloud: object %@ has diff %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v15);
            objectChange5 = [(HMDCloudChange *)selfCopy3 objectChange];
            objectChange6 = [changeCopy objectChange];
            v22 = [objectChange5 merge:objectChange6];

            if (v22)
            {
              v23 = objc_autoreleasePoolPush();
              v24 = selfCopy3;
              v25 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v26 = HMFGetLogIdentifier();
                objectChange7 = [changeCopy objectChange];
                *buf = 138543874;
                v44 = v26;
                v45 = 2112;
                v46 = objectChange7;
                v47 = 2112;
                v48 = v22;
                _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to replay: object %@ with error %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v23);
              [(HMDCloudChange *)v24 setApplyType:2];
              rowIDsSet = [(HMDCloudChange *)v24 rowIDsSet];
              rowIDs = [stagedChangeCopy rowIDs];
              [rowIDsSet addObjectsFromArray:rowIDs];
            }

            else
            {
              [(HMDCloudChange *)selfCopy3 setApplyType:3];
            }

            goto LABEL_30;
          }
        }

        else
        {
          objectChange8 = [stagedChangeCopy objectChange];
          v41 = 0;
          [objectChange2 diff:objectChange8 differingFields:&v41];
          v14 = v41;

          if ([v14 count])
          {
            v36 = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v38 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = HMFGetLogIdentifier();
              *buf = 138543874;
              v44 = v39;
              v45 = 2112;
              v46 = stagedChangeCopy;
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
        v46 = stagedChangeCopy;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Change cannot be process further, dropping changes %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
    }

    [(HMDCloudChange *)self setApplyType:2];
    rowIDsSet2 = [(HMDCloudChange *)self rowIDsSet];
    rowIDs2 = [stagedChangeCopy rowIDs];
    [rowIDsSet2 addObjectsFromArray:rowIDs2];

    goto LABEL_31;
  }

  selfCopy5 = self;
  v11 = 0;
LABEL_9:
  [(HMDCloudChange *)selfCopy5 setApplyType:v11];
LABEL_31:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)resetRecord
{
  cloudRecord = [(HMDCloudChange *)self cloudRecord];
  [cloudRecord setRecord:0];
}

- (void)updateChangeWithRecord:(id)record
{
  recordCopy = record;
  cloudRecord = [(HMDCloudChange *)self cloudRecord];
  [cloudRecord setRecord:recordCopy];
}

- (CKRecordID)recordID
{
  cloudRecord = [(HMDCloudChange *)self cloudRecord];
  recordID = [cloudRecord recordID];

  return recordID;
}

- (NSString)type
{
  objectChange = [(HMDCloudChange *)self objectChange];
  bsoType = [objectChange bsoType];

  return bsoType;
}

- (NSString)recordName
{
  cloudRecord = [(HMDCloudChange *)self cloudRecord];
  recordName = [cloudRecord recordName];

  return recordName;
}

- (CKRecord)record
{
  cloudRecord = [(HMDCloudChange *)self cloudRecord];

  if (cloudRecord && (-[HMDCloudChange cloudRecord](self, "cloudRecord"), v4 = objc_claimAutoreleasedReturnValue(), -[HMDCloudChange objectChange](self, "objectChange"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 encodeObjectChange:v5], v5, v4, v6))
  {
    cloudRecord2 = [(HMDCloudChange *)self cloudRecord];
    record = [cloudRecord2 record];
  }

  else
  {
    record = 0;
  }

  return record;
}

- (void)updateWithObjectChange:(id)change
{
  v37 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  objectChangeType = [changeCopy objectChangeType];
  v6 = objectChangeType;
  if (objectChangeType > 1)
  {
    if (objectChangeType == 3)
    {
      v8 = 0;
      v7 = 1;
      goto LABEL_11;
    }

    if (objectChangeType == 2)
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

  if (!objectChangeType)
  {
    v8 = 0;
    v7 = 0;
    v6 = 2;
    goto LABEL_11;
  }

  if (objectChangeType != 1)
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
          selfCopy6 = self;
          v13 = 1;
          goto LABEL_19;
        }

        v14 = objc_autoreleasePoolPush();
        selfCopy7 = self;
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
        selfCopy10 = self;
        v20 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        v21 = HMFGetLogIdentifier();
        *v36 = 138543618;
        *&v36[4] = v21;
        *&v36[12] = 2112;
        *&v36[14] = changeCopy;
        v22 = "%{public}@Retaining 'delete' change, cannot convert a delete to an update, %@";
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy10 = self;
        v20 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        v21 = HMFGetLogIdentifier();
        *v36 = 138543618;
        *&v36[4] = v21;
        *&v36[12] = 2112;
        *&v36[14] = changeCopy;
        v22 = "%{public}@Object is already deleted, dropping delete %@";
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy10 = self;
      v20 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      v21 = HMFGetLogIdentifier();
      *v36 = 138543618;
      *&v36[4] = v21;
      *&v36[12] = 2112;
      *&v36[14] = changeCopy;
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
      selfCopy6 = self;
      v13 = 3;
LABEL_19:
      [(HMDCloudChange *)selfCopy6 setChangeType:v13];
      [(HMDCloudChange *)self setObjectChange:changeCopy];
      goto LABEL_44;
    }

    v14 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_26:
      v17 = HMFGetLogIdentifier();
      *v36 = 138543618;
      *&v36[4] = v17;
      *&v36[12] = 2112;
      *&v36[14] = changeCopy;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Invalidating change because object change in unknown type, %@", v36, 0x16u);
    }

LABEL_27:

    objc_autoreleasePoolPop(v14);
    [(HMDCloudChange *)selfCopy7 setChangeType:0];
    goto LABEL_44;
  }

  objectChange = [(HMDCloudChange *)self objectChange];

  if (objectChange)
  {
    objectChange2 = [(HMDCloudChange *)self objectChange];
    v11 = [objectChange2 merge:changeCopy];

    if (!v11)
    {
      goto LABEL_39;
    }

LABEL_36:
    v27 = objc_autoreleasePoolPush();
    selfCopy8 = self;
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
    [(HMDCloudChange *)selfCopy8 setChangeType:0];

    goto LABEL_44;
  }

  if (v8)
  {
    [(HMDCloudChange *)self setObjectChange:changeCopy];
    goto LABEL_39;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy9 = self;
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
    objectChange3 = [(HMDCloudChange *)self objectChange];
    [objectChange3 setObjectChangeType:1];

    [(HMDCloudChange *)self setChangeType:1];
    v18 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      objectChange4 = [(HMDCloudChange *)selfCopy10 objectChange];
      *v36 = 138543618;
      *&v36[4] = v21;
      *&v36[12] = 2112;
      *&v36[14] = objectChange4;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Changing update change back to an add %@", v36, 0x16u);

      goto LABEL_42;
    }

LABEL_43:

    objc_autoreleasePoolPop(v18);
  }

LABEL_44:
  v33 = [(HMDCloudChange *)self rowIDsSet:*v36];
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(changeCopy, "bsoLogRowID")}];
  [v33 addObject:v34];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)updateDeletedCloudRecord:(id)record
{
  v13 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (recordCopy)
  {
    objc_storeStrong(&self->_deletedCloudRecord, record);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)updateCloudRecord:(id)record
{
  v36 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (recordCopy)
  {
    objc_storeStrong(&self->_cloudRecord, record);
    if (![(HMDCloudChange *)self isDeleted])
    {
      extractObjectChange = [recordCopy extractObjectChange];
      if (extractObjectChange)
      {
        objectChange = [(HMDCloudChange *)self objectChange];
        v8 = [(HMDCloudChange *)extractObjectChange diff:objectChange differingFields:0];

        if (v8)
        {
          objectChange2 = [(HMDCloudChange *)self objectChange];
          v10 = [(HMDCloudChange *)extractObjectChange merge:objectChange2];

          if (v10)
          {
            v11 = objc_autoreleasePoolPush();
            selfCopy = self;
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
            objectChange3 = [(HMDCloudChange *)selfCopy objectChange];
            -[HMDCloudChange setObjectChangeType:](extractObjectChange, "setObjectChangeType:", [objectChange3 objectChangeType]);

            [(HMDCloudChange *)selfCopy setObjectChange:extractObjectChange];
            [(HMDCloudChange *)selfCopy setChangeType:0];
          }

          else
          {
            objectChange4 = [(HMDCloudChange *)self objectChange];
            -[HMDCloudChange setObjectChangeType:](extractObjectChange, "setObjectChangeType:", [objectChange4 objectChangeType]);

            [(HMDCloudChange *)self setObjectChange:extractObjectChange];
          }

          goto LABEL_22;
        }

        v25 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          v32 = 138543618;
          v33 = v28;
          v34 = 2112;
          v35 = extractObjectChange;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Local changes will not modify cloud record, dropping local changes: %@", &v32, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        objectChange5 = [(HMDCloudChange *)selfCopy2 objectChange];
        -[HMDCloudChange setObjectChangeType:](extractObjectChange, "setObjectChangeType:", [objectChange5 objectChangeType]);

        [(HMDCloudChange *)selfCopy2 setObjectChange:extractObjectChange];
        v24 = selfCopy2;
      }

      else
      {
        if ([(HMDCloudChange *)self isAdded])
        {
LABEL_22:

          goto LABEL_23;
        }

        v20 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          v32 = 138543618;
          v33 = v23;
          v34 = 2112;
          v35 = selfCopy3;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalidating change, cannot add a new record unless the change type is added, %@", &v32, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        v24 = selfCopy3;
      }

      [(HMDCloudChange *)v24 setChangeType:0];
      goto LABEL_22;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy4 = self;
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
  objectChange = [(HMDCloudChange *)self objectChange];
  if (objectChange)
  {
    v8 = objectChange;
    v4 = objc_alloc(objc_opt_class());
    uuid = [v8 uuid];
    parentUUID = [v8 parentUUID];
    v7 = [v4 initWithObjectChangeType:3 uuid:uuid parentUUID:parentUUID];

    [(HMDCloudChange *)self setObjectChange:v7];
    objectChange = v8;
  }
}

- (NSArray)rowIDs
{
  rowIDsSet = [(HMDCloudChange *)self rowIDsSet];
  allObjects = [rowIDsSet allObjects];

  return allObjects;
}

- (NSUUID)uuid
{
  objectChange = [(HMDCloudChange *)self objectChange];
  uuid = [objectChange uuid];

  return uuid;
}

- (NSUUID)objectID
{
  objectChange = [(HMDCloudChange *)self objectChange];
  uuid = [objectChange uuid];

  return uuid;
}

- (NSUUID)parentUuid
{
  objectChange = [(HMDCloudChange *)self objectChange];
  parentUUID = [objectChange parentUUID];

  return parentUUID;
}

- (NSUUID)parentObjectID
{
  objectChange = [(HMDCloudChange *)self objectChange];
  parentUUID = [objectChange parentUUID];

  return parentUUID;
}

- (NSSet)dependentUUIDs
{
  objectChange = [(HMDCloudChange *)self objectChange];
  dependentUUIDs = [objectChange dependentUUIDs];

  return dependentUUIDs;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  shortDescription = [(HMDCloudChange *)self shortDescription];
  v4 = [v2 stringWithFormat:@"<%@>", shortDescription];

  return v4;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  changeType = [(HMDCloudChange *)self changeType];
  if (changeType > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_27972C0A0[changeType];
  }

  cloudRecord = [(HMDCloudChange *)self cloudRecord];
  v8 = [v3 stringWithFormat:@"%@, Type = %@, Cloud Record = %@", shortDescription, v6, cloudRecord];

  return v8;
}

- (id)_initWithObjectChange:(id)change cloudObjectRecord:(id)record
{
  v31 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  recordCopy = record;
  v8 = recordCopy;
  if ((changeCopy == 0) != (recordCopy != 0))
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

  if (recordCopy)
  {
    extractObjectChange = [recordCopy extractObjectChange];

    changeCopy = extractObjectChange;
  }

  if (!changeCopy)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

  objectChangeType = [changeCopy objectChangeType];
  if (objectChangeType > 3)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_253D4BF28[objectChangeType];
  }

  v28.receiver = self;
  v28.super_class = HMDCloudChange;
  v20 = [(HMDCloudChange *)&v28 init];
  v21 = v20;
  if (v20)
  {
    v20->_changeType = v15;
    objc_storeStrong(&v20->_cloudRecord, record);
    v22 = [MEMORY[0x277CBEB58] set];
    rowIDsSet = v21->_rowIDsSet;
    v21->_rowIDsSet = v22;

    objc_storeStrong(&v21->_objectChange, changeCopy);
    if (!v8)
    {
      rowIDsSet = [(HMDCloudChange *)v21 rowIDsSet];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(changeCopy, "bsoLogRowID")}];
      [rowIDsSet addObject:v25];
    }
  }

  selfCopy2 = v21;

  v19 = selfCopy2;
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