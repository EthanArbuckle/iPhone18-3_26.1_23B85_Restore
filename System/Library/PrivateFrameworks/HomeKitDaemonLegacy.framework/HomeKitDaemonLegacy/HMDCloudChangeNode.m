@interface HMDCloudChangeNode
+ (id)shortDescription;
- (HMDCloudChangeNode)init;
- (HMDCloudChangeNode)initWithChange:(id)a3;
- (HMDCloudChangeNode)initWithCloudRecord:(id)a3;
- (HMDCloudChangeNode)initWithModel:(id)a3;
- (HMDCloudChangeNode)initWithRecordMapping:(id)a3;
- (HMDCloudChangeNode)parent;
- (id)_allNodesInBranch;
- (id)_initWithUUID:(id)a3 parentUUID:(id)a4 recordName:(id)a5 type:(id)a6 change:(id)a7;
- (id)description;
- (id)shortDescription;
- (void)_markBranchOrphaned;
- (void)_updateWithChange:(id)a3;
- (void)_updateWithCloudRecord:(id)a3;
- (void)_updateWithModel:(id)a3;
- (void)addChild:(id)a3;
- (void)deleteChildren;
- (void)logChangeTreeWithIndent:(id)a3;
- (void)removeChild:(id)a3;
- (void)updateRecordMapping:(id)a3;
@end

@implementation HMDCloudChangeNode

- (HMDCloudChangeNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)_markBranchOrphaned
{
  self->_orphaned = 1;
  v3 = [(HMDCloudChangeNode *)self children];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(HMDCloudChangeNode *)self children];
    v9 = [v5 objectEnumerator];

    v6 = [v9 nextObject];
    if (v6)
    {
      v7 = v6;
      do
      {
        [v7 _markBranchOrphaned];
        v8 = [v9 nextObject];

        v7 = v8;
      }

      while (v8);
    }
  }
}

- (id)_allNodesInBranch
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HMDCloudChangeNode *)self uuid];
  [v3 addObject:v4];

  v5 = [(HMDCloudChangeNode *)self children];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(HMDCloudChangeNode *)self children];
    v8 = [v7 objectEnumerator];

    v9 = [v8 nextObject];
    if (v9)
    {
      v10 = v9;
      do
      {
        v11 = [v10 _allNodesInBranch];
        [v3 addObjectsFromArray:v11];

        v12 = [v8 nextObject];

        v10 = v12;
      }

      while (v12);
    }
  }

  v13 = [v3 allObjects];

  return v13;
}

- (void)deleteChildren
{
  v25 = *MEMORY[0x277D85DE8];
  if (![(HMDCloudChangeNode *)self forceDelete])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [(HMDCloudChangeNode *)v4 shortDescription];
      v21 = 138543618;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deleting children objects %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v4->_forceDelete = 1;
    v8 = [(HMDCloudChangeNode *)v4 change];
    if (v8)
    {
      v9 = v8;
      v10 = [(HMDCloudChangeNode *)v4 change];
      v11 = [v10 isDeleted];

      if ((v11 & 1) == 0)
      {
        v12 = [(HMDCloudChangeNode *)v4 change];
        [v12 forceChangeToDelete];
      }
    }

    v13 = [(HMDCloudChangeNode *)v4 children];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [(HMDCloudChangeNode *)v4 children];
      v16 = [v15 objectEnumerator];

      v17 = [v16 nextObject];
      if (v17)
      {
        v18 = v17;
        do
        {
          [v18 deleteChildren];
          v19 = [v16 nextObject];

          v18 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithCloudRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordName];
  [(HMDCloudChangeNode *)self setRecordName:v5];

  v6 = [(HMDCloudChangeNode *)self change];

  if (v6)
  {
    v8 = [(HMDCloudChangeNode *)self change];
    [v8 updateCloudRecord:v4];
  }

  else
  {
    v7 = [[HMDCloudChange alloc] initWithCloudObjectRecord:v4];

    [(HMDCloudChangeNode *)self setChange:v7];
    if (![(HMDCloudChangeNode *)self forceDelete])
    {
      return;
    }

    v8 = [(HMDCloudChangeNode *)self change];
    [v8 forceChangeToDelete];
  }
}

- (void)_updateWithChange:(id)a3
{
  [(HMDCloudChangeNode *)self setChange:a3];
  if ([(HMDCloudChangeNode *)self forceDelete])
  {
    v3 = [(HMDCloudChangeNode *)self change];
    [v3 forceChangeToDelete];
  }

  v5 = [(HMDCloudChangeNode *)self uuid];
  if (!v5)
  {
    v3 = [(HMDCloudChangeNode *)self change];
    v10 = [v3 objectID];
    if (v10)
    {

      goto LABEL_10;
    }
  }

  v6 = [(HMDCloudChangeNode *)self uuid];
  v7 = [(HMDCloudChangeNode *)self change];
  v8 = [v7 objectID];
  v9 = [v6 isEqual:v8];

  if (v5)
  {

    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v9)
  {
LABEL_10:
    v3 = [(HMDCloudChangeNode *)self change];
    v11 = [v3 objectID];
    [(HMDCloudChangeNode *)self setUuid:v11];
  }

LABEL_11:
  v12 = [(HMDCloudChangeNode *)self parentUuid];
  if (!v12)
  {
    v3 = [(HMDCloudChangeNode *)self change];
    v17 = [v3 parentObjectID];
    if (v17)
    {

      goto LABEL_18;
    }
  }

  v13 = [(HMDCloudChangeNode *)self parentUuid];
  v14 = [(HMDCloudChangeNode *)self change];
  v15 = [v14 parentObjectID];
  v16 = [v13 isEqual:v15];

  if (v12)
  {

    if (!v16)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v16)
  {
LABEL_18:
    v3 = [(HMDCloudChangeNode *)self change];
    v18 = [v3 parentObjectID];
    [(HMDCloudChangeNode *)self setParentUuid:v18];
  }

LABEL_19:
  v19 = [(HMDCloudChangeNode *)self recordName];
  if (v19 || (-[HMDCloudChangeNode change](self, "change"), v3 = objc_claimAutoreleasedReturnValue(), [v3 recordName], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v20 = [(HMDCloudChangeNode *)self recordName];
    v21 = [(HMDCloudChangeNode *)self change];
    v22 = [v21 recordName];
    v23 = [v20 isEqual:v22];

    if (v19)
    {

      if (!v23)
      {
        return;
      }
    }

    else
    {

      if ((v23 & 1) == 0)
      {
        return;
      }
    }
  }

  else
  {
  }

  v26 = [(HMDCloudChangeNode *)self change];
  v25 = [v26 recordName];
  [(HMDCloudChangeNode *)self setRecordName:v25];
}

- (void)_updateWithModel:(id)a3
{
  v22 = a3;
  v4 = [(HMDCloudChangeNode *)self change];

  if (v4)
  {
    v5 = [(HMDCloudChangeNode *)self change];
    [(HMDCloudChange *)v5 updateWithObjectChange:v22];
  }

  else
  {
    v5 = [[HMDCloudChange alloc] initWithObjectChange:v22];
    [(HMDCloudChangeNode *)self setChange:v5];
  }

  v6 = [(HMDCloudChangeNode *)self uuid];
  if (!v6)
  {
    v5 = [(HMDCloudChangeNode *)self change];
    v11 = [(HMDCloudChange *)v5 objectID];
    if (v11)
    {

      goto LABEL_11;
    }
  }

  v7 = [(HMDCloudChangeNode *)self uuid];
  v8 = [(HMDCloudChangeNode *)self change];
  v9 = [v8 objectID];
  v10 = [v7 isEqual:v9];

  if (v6)
  {

    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v10)
  {
LABEL_11:
    v5 = [(HMDCloudChangeNode *)self change];
    v12 = [(HMDCloudChange *)v5 objectID];
    [(HMDCloudChangeNode *)self setUuid:v12];
  }

LABEL_12:
  v13 = [(HMDCloudChangeNode *)self parentUuid];
  if (!v13)
  {
    v5 = [(HMDCloudChangeNode *)self change];
    v18 = [(HMDCloudChange *)v5 parentObjectID];
    if (v18)
    {

      goto LABEL_19;
    }
  }

  v14 = [(HMDCloudChangeNode *)self parentUuid];
  v15 = [(HMDCloudChangeNode *)self change];
  v16 = [v15 parentObjectID];
  v17 = [v14 isEqual:v16];

  if (!v13)
  {

    if ((v17 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v17)
  {
LABEL_19:
    v19 = [(HMDCloudChangeNode *)self change];
    v20 = [v19 parentObjectID];
    [(HMDCloudChangeNode *)self setParentUuid:v20];
  }

LABEL_20:
  v21 = [v22 bsoType];
  [(HMDCloudChangeNode *)self setType:v21];
}

- (void)updateRecordMapping:(id)a3
{
  v28 = a3;
  v4 = [v28 recordName];
  if (v4)
  {
    v5 = v4;
    v6 = [(HMDCloudChangeNode *)self recordName];
    v7 = [v28 recordName];
    v8 = HMFEqualObjects();

    if ((v8 & 1) == 0)
    {
      v9 = [v28 recordName];
      [(HMDCloudChangeNode *)self setRecordName:v9];
    }
  }

  v10 = [v28 uuid];
  if (v10)
  {
    v11 = v10;
    v12 = [(HMDCloudChangeNode *)self uuid];
    v13 = [v28 uuid];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      v15 = [v28 uuid];
      [(HMDCloudChangeNode *)self setUuid:v15];
    }
  }

  v16 = [v28 parentUuid];
  if (v16)
  {
    v17 = v16;
    v18 = [(HMDCloudChangeNode *)self parentUuid];
    v19 = [v28 parentUuid];
    v20 = HMFEqualObjects();

    if ((v20 & 1) == 0)
    {
      v21 = [v28 uuid];
      [(HMDCloudChangeNode *)self setUuid:v21];
    }
  }

  v22 = [v28 type];
  if (v22)
  {
    v23 = v22;
    v24 = [(HMDCloudChangeNode *)self type];
    v25 = [v28 type];
    v26 = HMFEqualObjects();

    if ((v26 & 1) == 0)
    {
      v27 = [v28 type];
      [(HMDCloudChangeNode *)self setType:v27];
    }
  }
}

- (void)removeChild:(id)a3
{
  v4 = a3;
  [v4 setParent:0];
  v6 = [(HMDCloudChangeNode *)self children];
  v5 = [v4 uuid];

  [v6 removeObjectForKey:v5];
}

- (void)addChild:(id)a3
{
  v6 = a3;
  v4 = [(HMDCloudChangeNode *)self children];
  v5 = [v6 uuid];
  [v4 setObject:v6 forKey:v5];

  [v6 setParent:self];
}

- (void)logChangeTreeWithIndent:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDCloudChangeNode *)v6 shortDescription];
    *buf = 138543874;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@%@HMDCloudChangeNode<%@>:", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@  ", v4];
  v11 = [(HMDCloudChangeNode *)v6 children];
  v12 = [v11 objectEnumerator];

  v13 = [v12 nextObject];
  if (v13)
  {
    v14 = v13;
    do
    {
      [v14 logChangeTreeWithIndent:v10];
      v15 = [v12 nextObject];

      v14 = v15;
    }

    while (v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDCloudChangeNode *)self shortDescription];
  v4 = [v2 stringWithFormat:@"<%@>", v3];

  return v4;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCloudChangeNode *)self type];
  v5 = [(HMDCloudChangeNode *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [v6 substringWithRange:{0, 8}];
  v8 = [(HMDCloudChangeNode *)self recordName];
  v9 = [v8 substringWithRange:{0, 8}];
  v10 = [(HMDCloudChangeNode *)self change];
  v11 = [v3 stringWithFormat:@"Type = %@ UUID = %@ Record Name = %@ Data = change=%d/forceDelete=%d", v4, v7, v9, v10 != 0, -[HMDCloudChangeNode forceDelete](self, "forceDelete")];

  return v11;
}

- (HMDCloudChangeNode)initWithCloudRecord:(id)a3
{
  v4 = a3;
  v5 = [[HMDCloudChange alloc] initWithCloudObjectRecord:v4];

  v6 = [(HMDCloudChangeNode *)self initWithChange:v5];
  return v6;
}

- (HMDCloudChangeNode)initWithChange:(id)a3
{
  v4 = a3;
  v5 = [v4 objectChange];
  v6 = [v4 objectID];
  v7 = [v4 parentObjectID];
  v8 = [v4 recordName];
  v9 = [v5 bsoType];
  v10 = [(HMDCloudChangeNode *)self _initWithUUID:v6 parentUUID:v7 recordName:v8 type:v9 change:v4];

  return v10;
}

- (HMDCloudChangeNode)initWithModel:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HMDCloudChange alloc] initWithObjectChange:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(HMDCloudChange *)v5 objectID];
    v8 = [(HMDCloudChange *)v6 parentObjectID];
    v9 = [(HMDCloudChange *)v6 recordName];
    v10 = [v4 bsoType];
    v11 = [(HMDCloudChangeNode *)self _initWithUUID:v7 parentUUID:v8 recordName:v9 type:v10 change:v6];

    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v11 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot create cloud change node from %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HMDCloudChangeNode)initWithRecordMapping:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v4 parentUuid];
  v7 = [v4 recordName];
  v8 = [v4 type];

  v9 = [(HMDCloudChangeNode *)self _initWithUUID:v5 parentUUID:v6 recordName:v7 type:v8 change:0];
  return v9;
}

- (id)_initWithUUID:(id)a3 parentUUID:(id)a4 recordName:(id)a5 type:(id)a6 change:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = HMDCloudChangeNode;
  v18 = [(HMDCloudChangeNode *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uuid, a3);
    objc_storeStrong(&v19->_parentUuid, a4);
    objc_storeStrong(&v19->_recordName, a5);
    v20 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v16];
    type = v19->_type;
    v19->_type = v20;

    objc_storeStrong(&v19->_change, a7);
    v22 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    children = v19->_children;
    v19->_children = v22;
  }

  return v19;
}

- (HMDCloudChangeNode)init
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