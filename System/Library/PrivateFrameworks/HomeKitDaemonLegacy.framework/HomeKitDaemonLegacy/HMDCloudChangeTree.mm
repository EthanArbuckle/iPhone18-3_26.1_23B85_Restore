@interface HMDCloudChangeTree
+ (BOOL)modelTypeCanBeOrphaned:(id)orphaned;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)hasValidChanges;
- (HMDCloudChangeTree)init;
- (HMDCloudChangeTree)initWithRootUUIDs:(id)ds;
- (NSArray)allTransactionStoreRowIDs;
- (NSArray)objectsWithPotentialChanges;
- (NSArray)orphans;
- (NSMutableArray)cloudChanges;
- (NSMutableArray)invalidCloudChanges;
- (id)_findNodeWithRecordMapping:(id)mapping;
- (id)_objectForRecordName:(id)name;
- (id)_objectForUUID:(id)d;
- (id)description;
- (id)objectForRecordName:(id)name;
- (id)objectForUUID:(id)d;
- (id)recordMapWithFilter:(id)filter;
- (id)shortDescription;
- (void)_addNode:(id)node;
- (void)_updateNode:(id)node oldRecordName:(id)name;
- (void)findAndDeletedChildren;
- (void)findAndMarkOrphanedBranches;
- (void)logChangeTreeWithIndent:(id)indent;
- (void)removeNode:(id)node;
- (void)updateChange:(id)change;
- (void)updateModel:(id)model;
- (void)updateNode:(id)node withCloudRecord:(id)record;
- (void)updateRecordMapping:(id)mapping;
@end

@implementation HMDCloudChangeTree

- (BOOL)hasValidChanges
{
  os_unfair_lock_lock_with_options();
  objectMap = [(HMDCloudChangeTree *)self objectMap];
  objectEnumerator = [objectMap objectEnumerator];

  v5 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    change = [nextObject change];

    v5 = nextObject;
    if (change)
    {
      change2 = [nextObject change];
      isInvalid = [change2 isInvalid];

      v5 = nextObject;
      v10 = nextObject;
      if ((isInvalid & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = 0;
LABEL_7:

  os_unfair_lock_unlock(&self->_lock);
  return nextObject != 0;
}

- (id)recordMapWithFilter:(id)filter
{
  filterCopy = filter;
  v5 = MEMORY[0x277CBEB38];
  objectMap = [(HMDCloudChangeTree *)self objectMap];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(objectMap, "count")}];

  os_unfair_lock_lock_with_options();
  objectMap2 = [(HMDCloudChangeTree *)self objectMap];
  objectEnumerator = [objectMap2 objectEnumerator];
  nextObject = 0;
LABEL_2:

  v11 = nextObject;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    change = [nextObject change];
    if (change)
    {
      change2 = [nextObject change];
      isDeleted = [change2 isDeleted];

      v11 = nextObject;
      if (isDeleted)
      {
        continue;
      }
    }

    uuid = [nextObject uuid];
    objectMap2 = [uuid UUIDString];

    recordName = [nextObject recordName];
    v17 = recordName;
    if (objectMap2)
    {
      if (recordName)
      {
        [v7 setObject:recordName forKeyedSubscript:objectMap2];
      }
    }

    goto LABEL_2;
  }

  os_unfair_lock_unlock(&self->_lock);
  v18 = [v7 copy];

  return v18;
}

- (NSMutableArray)invalidCloudChanges
{
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  objectMap = [(HMDCloudChangeTree *)self objectMap];
  objectEnumerator = [objectMap objectEnumerator];
  nextObject = 0;
LABEL_2:

  v7 = nextObject;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    change = [nextObject change];

    v7 = nextObject;
    if (change)
    {
      change2 = [nextObject change];
      isInvalid = [change2 isInvalid];

      v7 = nextObject;
      if (isInvalid)
      {
        objectMap = [nextObject change];
        [array addObject:objectMap];
        goto LABEL_2;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return array;
}

- (NSMutableArray)cloudChanges
{
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  objectMap = [(HMDCloudChangeTree *)self objectMap];
  objectEnumerator = [objectMap objectEnumerator];
  nextObject = 0;
LABEL_2:

  v7 = nextObject;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    change = [nextObject change];

    v7 = nextObject;
    if (change)
    {
      change2 = [nextObject change];
      isInvalid = [change2 isInvalid];

      v7 = nextObject;
      if ((isInvalid & 1) == 0)
      {
        objectMap = [nextObject change];
        [array addObject:objectMap];
        goto LABEL_2;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return array;
}

- (NSArray)orphans
{
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  objectMap = [(HMDCloudChangeTree *)self objectMap];
  objectEnumerator = [objectMap objectEnumerator];

  v6 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v6 = nextObject;
    if ([nextObject orphaned])
    {
      [array addObject:nextObject];
      v6 = nextObject;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = [array copy];

  return v8;
}

- (NSArray)allTransactionStoreRowIDs
{
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  objectMap = [(HMDCloudChangeTree *)self objectMap];
  objectEnumerator = [objectMap objectEnumerator];
  nextObject = 0;
LABEL_2:

  v7 = nextObject;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    change = [nextObject change];

    v7 = nextObject;
    if (change)
    {
      objectMap = [nextObject change];
      rowIDs = [objectMap rowIDs];
      [v3 addObjectsFromArray:rowIDs];

      goto LABEL_2;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  allObjects = [v3 allObjects];

  return allObjects;
}

- (NSArray)objectsWithPotentialChanges
{
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  objectMap = [(HMDCloudChangeTree *)self objectMap];
  objectEnumerator = [objectMap objectEnumerator];

  nextObject = 0;
  while (1)
  {
    v7 = nextObject;
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v8 = objc_autoreleasePoolPush();
    if ([nextObject forceDelete] || (objc_msgSend(nextObject, "change"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9) && (objc_msgSend(nextObject, "change"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isInvalid"), v10, (v11 & 1) == 0))
    {
      uuid = [nextObject uuid];
      [v3 addObject:uuid];
    }

    objc_autoreleasePoolPop(v8);
  }

  branchMap = [(HMDCloudChangeTree *)self branchMap];
  objectEnumerator2 = [branchMap objectEnumerator];

  nextObject2 = 0;
  while (1)
  {
    v16 = nextObject2;
    nextObject2 = [objectEnumerator2 nextObject];

    if (!nextObject2)
    {
      break;
    }

    v17 = objc_autoreleasePoolPush();
    parentUuid = [nextObject2 parentUuid];
    if (parentUuid)
    {
      validRootUUIDs = [(HMDCloudChangeTree *)self validRootUUIDs];
      parentUuid2 = [nextObject2 parentUuid];
      v21 = [validRootUUIDs containsObject:parentUuid2];

      if ((v21 & 1) == 0)
      {
        _allNodesInBranch = [nextObject2 _allNodesInBranch];
        [v3 addObjectsFromArray:_allNodesInBranch];
      }
    }

    objc_autoreleasePoolPop(v17);
  }

  os_unfair_lock_unlock(&self->_lock);
  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)findAndMarkOrphanedBranches
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  branchMap = [(HMDCloudChangeTree *)self branchMap];
  objectEnumerator = [branchMap objectEnumerator];

  v5 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    parentUuid = [nextObject parentUuid];
    v5 = nextObject;
    if (parentUuid)
    {
      validRootUUIDs = [(HMDCloudChangeTree *)self validRootUUIDs];
      parentUuid2 = [nextObject parentUuid];
      v10 = [validRootUUIDs containsObject:parentUuid2];

      v5 = nextObject;
      if ((v10 & 1) == 0)
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v15 = [nextObject description];
          *buf = 138543618;
          v18 = v14;
          v19 = 2112;
          v20 = v15;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Orphaned Branch %@, marking all children as deleted", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v11);
        [nextObject _markBranchOrphaned];
        v5 = nextObject;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)findAndDeletedChildren
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Determining child records to delete", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  objectMap = [(HMDCloudChangeTree *)selfCopy objectMap];
  objectEnumerator = [objectMap objectEnumerator];

  v9 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    change = [nextObject change];

    v9 = nextObject;
    if (change)
    {
      change2 = [nextObject change];
      isDeleted = [change2 isDeleted];

      v9 = nextObject;
      if (isDeleted)
      {
        [nextObject deleteChildren];
        v9 = nextObject;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateNode:(id)node withCloudRecord:(id)record
{
  nodeCopy = node;
  recordCopy = record;
  os_unfair_lock_lock_with_options();
  recordName = [nodeCopy recordName];
  [nodeCopy _updateWithCloudRecord:recordCopy];
  [(HMDCloudChangeTree *)self _updateNode:nodeCopy oldRecordName:recordName];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateChange:(id)change
{
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCloudChangeTree *)self _findNodeWithRecordMapping:changeCopy];
  v6 = v5;
  if (v5)
  {
    recordName = [(HMDCloudChangeNode *)v5 recordName];
    [(HMDCloudChangeNode *)v6 _updateWithChange:changeCopy];
LABEL_5:
    [(HMDCloudChangeTree *)self _updateNode:v6 oldRecordName:recordName];
    goto LABEL_6;
  }

  v6 = [[HMDCloudChangeNode alloc] initWithChange:changeCopy];
  if (v6)
  {
    [(HMDCloudChangeTree *)self _addNode:v6];
    recordName = 0;
    goto LABEL_5;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = changeCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not create object change node for change %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  recordName = 0;
  v6 = 0;
LABEL_6:

  os_unfair_lock_unlock(&self->_lock);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateModel:(id)model
{
  v16 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  os_unfair_lock_lock_with_options();
  uuid = [modelCopy uuid];
  v6 = [(HMDCloudChangeTree *)self _objectForUUID:uuid];

  if (v6)
  {
    [(HMDCloudChangeNode *)v6 _updateWithModel:modelCopy];
LABEL_5:
    [(HMDCloudChangeTree *)self _updateNode:v6 oldRecordName:0];
    goto LABEL_6;
  }

  v6 = [[HMDCloudChangeNode alloc] initWithModel:modelCopy];
  if (v6)
  {
    [(HMDCloudChangeTree *)self _addNode:v6];
    goto LABEL_5;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = modelCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not create object change node for model %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v6 = 0;
LABEL_6:

  os_unfair_lock_unlock(&self->_lock);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateRecordMapping:(id)mapping
{
  v20 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCloudChangeTree *)self _findNodeWithRecordMapping:mappingCopy];
  v6 = v5;
  if (v5)
  {
    [(HMDCloudChangeNode *)v5 updateRecordMapping:mappingCopy];
LABEL_5:
    [(HMDCloudChangeTree *)self _updateNode:v6 oldRecordName:0];
    goto LABEL_6;
  }

  v6 = [[HMDCloudChangeNode alloc] initWithRecordMapping:mappingCopy];
  if (v6)
  {
    [(HMDCloudChangeTree *)self _addNode:v6];
    goto LABEL_5;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    uuid = [mappingCopy uuid];
    recordName = [mappingCopy recordName];
    v14 = 138543874;
    v15 = v11;
    v16 = 2112;
    v17 = uuid;
    v18 = 2112;
    v19 = recordName;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not create object change node for record mapping %@/%@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v6 = 0;
LABEL_6:

  os_unfair_lock_unlock(&self->_lock);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeNode:(id)node
{
  nodeCopy = node;
  os_unfair_lock_lock_with_options();
  parent = [nodeCopy parent];
  [parent removeChild:nodeCopy];
  children = [nodeCopy children];
  objectEnumerator = [children objectEnumerator];
  for (i = 0; ; i = nextObject)
  {

    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    children = [(HMDCloudChangeTree *)self branchMap];
    uuid = [nextObject uuid];
    [children setObject:nextObject forKey:uuid];
  }

  children2 = [nodeCopy children];
  [children2 removeAllObjects];

  recordName = [nodeCopy recordName];

  if (recordName)
  {
    recordMap = [(HMDCloudChangeTree *)self recordMap];
    recordName2 = [nodeCopy recordName];
    [recordMap removeObjectForKey:recordName2];
  }

  uuid2 = [nodeCopy uuid];

  if (uuid2)
  {
    objectMap = [(HMDCloudChangeTree *)self objectMap];
    uuid3 = [nodeCopy uuid];
    [objectMap removeObjectForKey:uuid3];
  }

  objects = [(HMDCloudChangeTree *)self objects];
  [objects removeObject:nodeCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addNode:(id)node
{
  nodeCopy = node;
  os_unfair_lock_assert_owner(&self->_lock);
  objects = [(HMDCloudChangeTree *)self objects];
  [objects addObject:nodeCopy];

  [(HMDCloudChangeTree *)self _updateNode:nodeCopy oldRecordName:0];
}

- (void)_updateNode:(id)node oldRecordName:(id)name
{
  v55 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  nameCopy = name;
  os_unfair_lock_assert_owner(&self->_lock);
  uuid = [nodeCopy uuid];
  if (uuid)
  {
    v9 = uuid;
    objectMap = [(HMDCloudChangeTree *)self objectMap];
    uuid2 = [nodeCopy uuid];
    v12 = [objectMap objectForKey:uuid2];

    if (!v12)
    {
      array = [MEMORY[0x277CBEB18] array];
      branchMap = [(HMDCloudChangeTree *)self branchMap];
      objectEnumerator = [branchMap objectEnumerator];

      nextObject = [objectEnumerator nextObject];
      if (nextObject)
      {
        v17 = nextObject;
        do
        {
          v18 = objc_autoreleasePoolPush();
          parentUuid = [v17 parentUuid];
          uuid3 = [nodeCopy uuid];
          v21 = [parentUuid isEqual:uuid3];

          if (v21)
          {
            [array addObject:v17];
            [nodeCopy addChild:v17];
            [v17 setParent:nodeCopy];
          }

          objc_autoreleasePoolPop(v18);
          nextObject2 = [objectEnumerator nextObject];

          v17 = nextObject2;
        }

        while (nextObject2);
      }

      if ([array count])
      {
        v48 = array;
        v49 = nameCopy;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v23 = array;
        v24 = [v23 countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v51;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v51 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v50 + 1) + 8 * i);
              v29 = objc_autoreleasePoolPush();
              branchMap2 = [(HMDCloudChangeTree *)self branchMap];
              uuid4 = [v28 uuid];
              [branchMap2 removeObjectForKey:uuid4];

              objc_autoreleasePoolPop(v29);
            }

            v25 = [v23 countByEnumeratingWithState:&v50 objects:v54 count:16];
          }

          while (v25);
        }

        array = v48;
        nameCopy = v49;
      }

      parentUuid2 = [nodeCopy parentUuid];

      if (parentUuid2)
      {
        objectMap2 = [(HMDCloudChangeTree *)self objectMap];
        parentUuid3 = [nodeCopy parentUuid];
        branchMap4 = [objectMap2 objectForKey:parentUuid3];

        if (branchMap4)
        {
          [branchMap4 addChild:nodeCopy];
          [nodeCopy setParent:branchMap4];
        }

        else
        {
          branchMap3 = [(HMDCloudChangeTree *)self branchMap];
          uuid5 = [nodeCopy uuid];
          [branchMap3 setObject:nodeCopy forKey:uuid5];

          branchMap4 = 0;
        }
      }

      else
      {
        branchMap4 = [(HMDCloudChangeTree *)self branchMap];
        uuid6 = [nodeCopy uuid];
        [branchMap4 setObject:nodeCopy forKey:uuid6];
      }

      objectMap3 = [(HMDCloudChangeTree *)self objectMap];
      uuid7 = [nodeCopy uuid];
      [objectMap3 setObject:nodeCopy forKey:uuid7];
    }
  }

  recordName = [nodeCopy recordName];

  if (recordName)
  {
    if (nameCopy)
    {
      recordName2 = [nodeCopy recordName];
      v43 = [nameCopy isEqualToString:recordName2];

      if ((v43 & 1) == 0)
      {
        recordMap = [(HMDCloudChangeTree *)self recordMap];
        [recordMap removeObjectForKey:nameCopy];
      }
    }

    recordMap2 = [(HMDCloudChangeTree *)self recordMap];
    recordName3 = [nodeCopy recordName];
    [recordMap2 setObject:nodeCopy forKey:recordName3];
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (id)_findNodeWithRecordMapping:(id)mapping
{
  mappingCopy = mapping;
  os_unfair_lock_assert_owner(&self->_lock);
  uuid = [mappingCopy uuid];

  if (uuid)
  {
    uuid2 = [mappingCopy uuid];
    v7 = [(HMDCloudChangeTree *)self _objectForUUID:uuid2];
LABEL_5:
    v9 = v7;

    goto LABEL_6;
  }

  recordName = [mappingCopy recordName];

  if (recordName)
  {
    uuid2 = [mappingCopy recordName];
    v7 = [(HMDCloudChangeTree *)self _objectForRecordName:uuid2];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)objectForRecordName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCloudChangeTree *)self _objectForRecordName:nameCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_objectForRecordName:(id)name
{
  nameCopy = name;
  os_unfair_lock_assert_owner(&self->_lock);
  recordMap = [(HMDCloudChangeTree *)self recordMap];
  v6 = [recordMap objectForKey:nameCopy];

  return v6;
}

- (id)objectForUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCloudChangeTree *)self _objectForUUID:dCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_objectForUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_assert_owner(&self->_lock);
  objectMap = [(HMDCloudChangeTree *)self objectMap];
  v6 = [objectMap objectForKey:dCopy];

  return v6;
}

- (void)logChangeTreeWithIndent:(id)indent
{
  v27 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  os_unfair_lock_lock_with_options();
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  selfCopy2 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    shortDescription = [(HMDCloudChangeTree *)selfCopy2 shortDescription];
    *buf = 138543874;
    v22 = v7;
    v23 = 2112;
    v24 = indentCopy;
    v25 = 2112;
    v26 = shortDescription;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@%@HMDCloudChangeNode<%@>:", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  indentCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@  ", indentCopy];
  branchMap = [(HMDCloudChangeTree *)selfCopy2 branchMap];
  objectEnumerator = [branchMap objectEnumerator];

  for (i = 0; ; [i logChangeTreeWithIndent:indentCopy])
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    i = nextObject;
    if ([nextObject orphaned])
    {
      v14 = objc_autoreleasePoolPush();
      v15 = selfCopy2;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v17;
        v23 = 2112;
        v24 = indentCopy;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@%@Orphaned Branch", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v18 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  shortDescription = [(HMDCloudChangeTree *)self shortDescription];
  v4 = [v2 stringWithFormat:@"<%@>", shortDescription];

  return v4;
}

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  v4 = [v2 stringWithFormat:@"%@", shortDescription];

  return v4;
}

- (HMDCloudChangeTree)initWithRootUUIDs:(id)ds
{
  dsCopy = ds;
  v20.receiver = self;
  v20.super_class = HMDCloudChangeTree;
  v5 = [(HMDCloudChangeTree *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x277CBEB18] array];
    objects = v6->_objects;
    v6->_objects = array;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    objectMap = v6->_objectMap;
    v6->_objectMap = strongToWeakObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    recordMap = v6->_recordMap;
    v6->_recordMap = strongToWeakObjectsMapTable2;

    strongToWeakObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    branchMap = v6->_branchMap;
    v6->_branchMap = strongToWeakObjectsMapTable3;

    v15 = [MEMORY[0x277CBEB58] setWithArray:dsCopy];
    zeroUUID = [MEMORY[0x277CCAD78] zeroUUID];
    [v15 addObject:zeroUUID];

    v17 = [v15 copy];
    validRootUUIDs = v6->_validRootUUIDs;
    v6->_validRootUUIDs = v17;
  }

  return v6;
}

- (HMDCloudChangeTree)init
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

+ (BOOL)modelTypeCanBeOrphaned:(id)orphaned
{
  orphanedCopy = orphaned;
  if (isInternalBuild())
  {
    if (modelTypeCanBeOrphaned__pred != -1)
    {
      dispatch_once(&modelTypeCanBeOrphaned__pred, &__block_literal_global_100);
    }

    v4 = [modelTypeCanBeOrphaned___models containsObject:orphanedCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __45__HMDCloudChangeTree_modelTypeCanBeOrphaned___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_286626D10];
  v1 = modelTypeCanBeOrphaned___models;
  modelTypeCanBeOrphaned___models = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_23587 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_23587, &__block_literal_global_23588);
  }

  v3 = logCategory__hmf_once_v4_23589;

  return v3;
}

uint64_t __33__HMDCloudChangeTree_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_23589;
  logCategory__hmf_once_v4_23589 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end