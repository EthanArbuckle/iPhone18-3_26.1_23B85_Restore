@interface HMDCloudChangeNode
+ (id)shortDescription;
- (HMDCloudChangeNode)init;
- (HMDCloudChangeNode)initWithChange:(id)change;
- (HMDCloudChangeNode)initWithCloudRecord:(id)record;
- (HMDCloudChangeNode)initWithModel:(id)model;
- (HMDCloudChangeNode)initWithRecordMapping:(id)mapping;
- (HMDCloudChangeNode)parent;
- (id)_allNodesInBranch;
- (id)_initWithUUID:(id)d parentUUID:(id)iD recordName:(id)name type:(id)type change:(id)change;
- (id)description;
- (id)shortDescription;
- (void)_markBranchOrphaned;
- (void)_updateWithChange:(id)change;
- (void)_updateWithCloudRecord:(id)record;
- (void)_updateWithModel:(id)model;
- (void)addChild:(id)child;
- (void)deleteChildren;
- (void)logChangeTreeWithIndent:(id)indent;
- (void)removeChild:(id)child;
- (void)updateRecordMapping:(id)mapping;
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
  children = [(HMDCloudChangeNode *)self children];
  v4 = [children count];

  if (v4)
  {
    children2 = [(HMDCloudChangeNode *)self children];
    objectEnumerator = [children2 objectEnumerator];

    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      v7 = nextObject;
      do
      {
        [v7 _markBranchOrphaned];
        nextObject2 = [objectEnumerator nextObject];

        v7 = nextObject2;
      }

      while (nextObject2);
    }
  }
}

- (id)_allNodesInBranch
{
  v3 = [MEMORY[0x277CBEB58] set];
  uuid = [(HMDCloudChangeNode *)self uuid];
  [v3 addObject:uuid];

  children = [(HMDCloudChangeNode *)self children];
  v6 = [children count];

  if (v6)
  {
    children2 = [(HMDCloudChangeNode *)self children];
    objectEnumerator = [children2 objectEnumerator];

    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      v10 = nextObject;
      do
      {
        _allNodesInBranch = [v10 _allNodesInBranch];
        [v3 addObjectsFromArray:_allNodesInBranch];

        nextObject2 = [objectEnumerator nextObject];

        v10 = nextObject2;
      }

      while (nextObject2);
    }
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)deleteChildren
{
  v25 = *MEMORY[0x277D85DE8];
  if (![(HMDCloudChangeNode *)self forceDelete])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      shortDescription = [(HMDCloudChangeNode *)selfCopy shortDescription];
      v21 = 138543618;
      v22 = v6;
      v23 = 2112;
      v24 = shortDescription;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deleting children objects %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    selfCopy->_forceDelete = 1;
    change = [(HMDCloudChangeNode *)selfCopy change];
    if (change)
    {
      v9 = change;
      change2 = [(HMDCloudChangeNode *)selfCopy change];
      isDeleted = [change2 isDeleted];

      if ((isDeleted & 1) == 0)
      {
        change3 = [(HMDCloudChangeNode *)selfCopy change];
        [change3 forceChangeToDelete];
      }
    }

    children = [(HMDCloudChangeNode *)selfCopy children];
    v14 = [children count];

    if (v14)
    {
      children2 = [(HMDCloudChangeNode *)selfCopy children];
      objectEnumerator = [children2 objectEnumerator];

      nextObject = [objectEnumerator nextObject];
      if (nextObject)
      {
        v18 = nextObject;
        do
        {
          [v18 deleteChildren];
          nextObject2 = [objectEnumerator nextObject];

          v18 = nextObject2;
        }

        while (nextObject2);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithCloudRecord:(id)record
{
  recordCopy = record;
  recordName = [recordCopy recordName];
  [(HMDCloudChangeNode *)self setRecordName:recordName];

  change = [(HMDCloudChangeNode *)self change];

  if (change)
  {
    change2 = [(HMDCloudChangeNode *)self change];
    [change2 updateCloudRecord:recordCopy];
  }

  else
  {
    v7 = [[HMDCloudChange alloc] initWithCloudObjectRecord:recordCopy];

    [(HMDCloudChangeNode *)self setChange:v7];
    if (![(HMDCloudChangeNode *)self forceDelete])
    {
      return;
    }

    change2 = [(HMDCloudChangeNode *)self change];
    [change2 forceChangeToDelete];
  }
}

- (void)_updateWithChange:(id)change
{
  [(HMDCloudChangeNode *)self setChange:change];
  if ([(HMDCloudChangeNode *)self forceDelete])
  {
    change = [(HMDCloudChangeNode *)self change];
    [change forceChangeToDelete];
  }

  uuid = [(HMDCloudChangeNode *)self uuid];
  if (!uuid)
  {
    change = [(HMDCloudChangeNode *)self change];
    objectID = [change objectID];
    if (objectID)
    {

      goto LABEL_10;
    }
  }

  uuid2 = [(HMDCloudChangeNode *)self uuid];
  change2 = [(HMDCloudChangeNode *)self change];
  objectID2 = [change2 objectID];
  v9 = [uuid2 isEqual:objectID2];

  if (uuid)
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
    change = [(HMDCloudChangeNode *)self change];
    objectID3 = [change objectID];
    [(HMDCloudChangeNode *)self setUuid:objectID3];
  }

LABEL_11:
  parentUuid = [(HMDCloudChangeNode *)self parentUuid];
  if (!parentUuid)
  {
    change = [(HMDCloudChangeNode *)self change];
    parentObjectID = [change parentObjectID];
    if (parentObjectID)
    {

      goto LABEL_18;
    }
  }

  parentUuid2 = [(HMDCloudChangeNode *)self parentUuid];
  change3 = [(HMDCloudChangeNode *)self change];
  parentObjectID2 = [change3 parentObjectID];
  v16 = [parentUuid2 isEqual:parentObjectID2];

  if (parentUuid)
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
    change = [(HMDCloudChangeNode *)self change];
    parentObjectID3 = [change parentObjectID];
    [(HMDCloudChangeNode *)self setParentUuid:parentObjectID3];
  }

LABEL_19:
  recordName = [(HMDCloudChangeNode *)self recordName];
  if (recordName || (-[HMDCloudChangeNode change](self, "change"), change = objc_claimAutoreleasedReturnValue(), [change recordName], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    recordName2 = [(HMDCloudChangeNode *)self recordName];
    change4 = [(HMDCloudChangeNode *)self change];
    recordName3 = [change4 recordName];
    v23 = [recordName2 isEqual:recordName3];

    if (recordName)
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

  change5 = [(HMDCloudChangeNode *)self change];
  recordName4 = [change5 recordName];
  [(HMDCloudChangeNode *)self setRecordName:recordName4];
}

- (void)_updateWithModel:(id)model
{
  modelCopy = model;
  change = [(HMDCloudChangeNode *)self change];

  if (change)
  {
    change2 = [(HMDCloudChangeNode *)self change];
    [(HMDCloudChange *)change2 updateWithObjectChange:modelCopy];
  }

  else
  {
    change2 = [[HMDCloudChange alloc] initWithObjectChange:modelCopy];
    [(HMDCloudChangeNode *)self setChange:change2];
  }

  uuid = [(HMDCloudChangeNode *)self uuid];
  if (!uuid)
  {
    change2 = [(HMDCloudChangeNode *)self change];
    objectID = [(HMDCloudChange *)change2 objectID];
    if (objectID)
    {

      goto LABEL_11;
    }
  }

  uuid2 = [(HMDCloudChangeNode *)self uuid];
  change3 = [(HMDCloudChangeNode *)self change];
  objectID2 = [change3 objectID];
  v10 = [uuid2 isEqual:objectID2];

  if (uuid)
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
    change2 = [(HMDCloudChangeNode *)self change];
    objectID3 = [(HMDCloudChange *)change2 objectID];
    [(HMDCloudChangeNode *)self setUuid:objectID3];
  }

LABEL_12:
  parentUuid = [(HMDCloudChangeNode *)self parentUuid];
  if (!parentUuid)
  {
    change2 = [(HMDCloudChangeNode *)self change];
    parentObjectID = [(HMDCloudChange *)change2 parentObjectID];
    if (parentObjectID)
    {

      goto LABEL_19;
    }
  }

  parentUuid2 = [(HMDCloudChangeNode *)self parentUuid];
  change4 = [(HMDCloudChangeNode *)self change];
  parentObjectID2 = [change4 parentObjectID];
  v17 = [parentUuid2 isEqual:parentObjectID2];

  if (!parentUuid)
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
    change5 = [(HMDCloudChangeNode *)self change];
    parentObjectID3 = [change5 parentObjectID];
    [(HMDCloudChangeNode *)self setParentUuid:parentObjectID3];
  }

LABEL_20:
  bsoType = [modelCopy bsoType];
  [(HMDCloudChangeNode *)self setType:bsoType];
}

- (void)updateRecordMapping:(id)mapping
{
  mappingCopy = mapping;
  recordName = [mappingCopy recordName];
  if (recordName)
  {
    v5 = recordName;
    recordName2 = [(HMDCloudChangeNode *)self recordName];
    recordName3 = [mappingCopy recordName];
    v8 = HMFEqualObjects();

    if ((v8 & 1) == 0)
    {
      recordName4 = [mappingCopy recordName];
      [(HMDCloudChangeNode *)self setRecordName:recordName4];
    }
  }

  uuid = [mappingCopy uuid];
  if (uuid)
  {
    v11 = uuid;
    uuid2 = [(HMDCloudChangeNode *)self uuid];
    uuid3 = [mappingCopy uuid];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      uuid4 = [mappingCopy uuid];
      [(HMDCloudChangeNode *)self setUuid:uuid4];
    }
  }

  parentUuid = [mappingCopy parentUuid];
  if (parentUuid)
  {
    v17 = parentUuid;
    parentUuid2 = [(HMDCloudChangeNode *)self parentUuid];
    parentUuid3 = [mappingCopy parentUuid];
    v20 = HMFEqualObjects();

    if ((v20 & 1) == 0)
    {
      uuid5 = [mappingCopy uuid];
      [(HMDCloudChangeNode *)self setUuid:uuid5];
    }
  }

  type = [mappingCopy type];
  if (type)
  {
    v23 = type;
    type2 = [(HMDCloudChangeNode *)self type];
    type3 = [mappingCopy type];
    v26 = HMFEqualObjects();

    if ((v26 & 1) == 0)
    {
      type4 = [mappingCopy type];
      [(HMDCloudChangeNode *)self setType:type4];
    }
  }
}

- (void)removeChild:(id)child
{
  childCopy = child;
  [childCopy setParent:0];
  children = [(HMDCloudChangeNode *)self children];
  uuid = [childCopy uuid];

  [children removeObjectForKey:uuid];
}

- (void)addChild:(id)child
{
  childCopy = child;
  children = [(HMDCloudChangeNode *)self children];
  uuid = [childCopy uuid];
  [children setObject:childCopy forKey:uuid];

  [childCopy setParent:self];
}

- (void)logChangeTreeWithIndent:(id)indent
{
  v23 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    shortDescription = [(HMDCloudChangeNode *)selfCopy shortDescription];
    *buf = 138543874;
    v18 = v8;
    v19 = 2112;
    v20 = indentCopy;
    v21 = 2112;
    v22 = shortDescription;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@%@HMDCloudChangeNode<%@>:", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  indentCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@  ", indentCopy];
  children = [(HMDCloudChangeNode *)selfCopy children];
  objectEnumerator = [children objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v14 = nextObject;
    do
    {
      [v14 logChangeTreeWithIndent:indentCopy];
      nextObject2 = [objectEnumerator nextObject];

      v14 = nextObject2;
    }

    while (nextObject2);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  shortDescription = [(HMDCloudChangeNode *)self shortDescription];
  v4 = [v2 stringWithFormat:@"<%@>", shortDescription];

  return v4;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  type = [(HMDCloudChangeNode *)self type];
  uuid = [(HMDCloudChangeNode *)self uuid];
  uUIDString = [uuid UUIDString];
  v7 = [uUIDString substringWithRange:{0, 8}];
  recordName = [(HMDCloudChangeNode *)self recordName];
  v9 = [recordName substringWithRange:{0, 8}];
  change = [(HMDCloudChangeNode *)self change];
  v11 = [v3 stringWithFormat:@"Type = %@ UUID = %@ Record Name = %@ Data = change=%d/forceDelete=%d", type, v7, v9, change != 0, -[HMDCloudChangeNode forceDelete](self, "forceDelete")];

  return v11;
}

- (HMDCloudChangeNode)initWithCloudRecord:(id)record
{
  recordCopy = record;
  v5 = [[HMDCloudChange alloc] initWithCloudObjectRecord:recordCopy];

  v6 = [(HMDCloudChangeNode *)self initWithChange:v5];
  return v6;
}

- (HMDCloudChangeNode)initWithChange:(id)change
{
  changeCopy = change;
  objectChange = [changeCopy objectChange];
  objectID = [changeCopy objectID];
  parentObjectID = [changeCopy parentObjectID];
  recordName = [changeCopy recordName];
  bsoType = [objectChange bsoType];
  v10 = [(HMDCloudChangeNode *)self _initWithUUID:objectID parentUUID:parentObjectID recordName:recordName type:bsoType change:changeCopy];

  return v10;
}

- (HMDCloudChangeNode)initWithModel:(id)model
{
  v22 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v5 = [[HMDCloudChange alloc] initWithObjectChange:modelCopy];
  v6 = v5;
  if (v5)
  {
    objectID = [(HMDCloudChange *)v5 objectID];
    parentObjectID = [(HMDCloudChange *)v6 parentObjectID];
    recordName = [(HMDCloudChange *)v6 recordName];
    bsoType = [modelCopy bsoType];
    selfCopy = [(HMDCloudChangeNode *)self _initWithUUID:objectID parentUUID:parentObjectID recordName:recordName type:bsoType change:v6];

    v12 = selfCopy;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = modelCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot create cloud change node from %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HMDCloudChangeNode)initWithRecordMapping:(id)mapping
{
  mappingCopy = mapping;
  uuid = [mappingCopy uuid];
  parentUuid = [mappingCopy parentUuid];
  recordName = [mappingCopy recordName];
  type = [mappingCopy type];

  v9 = [(HMDCloudChangeNode *)self _initWithUUID:uuid parentUUID:parentUuid recordName:recordName type:type change:0];
  return v9;
}

- (id)_initWithUUID:(id)d parentUUID:(id)iD recordName:(id)name type:(id)type change:(id)change
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  typeCopy = type;
  changeCopy = change;
  v25.receiver = self;
  v25.super_class = HMDCloudChangeNode;
  v18 = [(HMDCloudChangeNode *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uuid, d);
    objc_storeStrong(&v19->_parentUuid, iD);
    objc_storeStrong(&v19->_recordName, name);
    v20 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:typeCopy];
    type = v19->_type;
    v19->_type = v20;

    objc_storeStrong(&v19->_change, change);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    children = v19->_children;
    v19->_children = strongToStrongObjectsMapTable;
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