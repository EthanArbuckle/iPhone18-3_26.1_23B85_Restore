@interface HMDCloudChangeTree
+ (BOOL)modelTypeCanBeOrphaned:(id)a3;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)hasValidChanges;
- (HMDCloudChangeTree)init;
- (HMDCloudChangeTree)initWithRootUUIDs:(id)a3;
- (NSArray)allTransactionStoreRowIDs;
- (NSArray)objectsWithPotentialChanges;
- (NSArray)orphans;
- (NSMutableArray)cloudChanges;
- (NSMutableArray)invalidCloudChanges;
- (id)_findNodeWithRecordMapping:(id)a3;
- (id)_objectForRecordName:(id)a3;
- (id)_objectForUUID:(id)a3;
- (id)description;
- (id)objectForRecordName:(id)a3;
- (id)objectForUUID:(id)a3;
- (id)recordMapWithFilter:(id)a3;
- (id)shortDescription;
- (void)_addNode:(id)a3;
- (void)_updateNode:(id)a3 oldRecordName:(id)a4;
- (void)findAndDeletedChildren;
- (void)findAndMarkOrphanedBranches;
- (void)logChangeTreeWithIndent:(id)a3;
- (void)removeNode:(id)a3;
- (void)updateChange:(id)a3;
- (void)updateModel:(id)a3;
- (void)updateNode:(id)a3 withCloudRecord:(id)a4;
- (void)updateRecordMapping:(id)a3;
@end

@implementation HMDCloudChangeTree

- (BOOL)hasValidChanges
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMDCloudChangeTree *)self objectMap];
  v4 = [v3 objectEnumerator];

  v5 = 0;
  while (1)
  {
    v6 = [v4 nextObject];

    if (!v6)
    {
      break;
    }

    v7 = [v6 change];

    v5 = v6;
    if (v7)
    {
      v8 = [v6 change];
      v9 = [v8 isInvalid];

      v5 = v6;
      v10 = v6;
      if ((v9 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = 0;
LABEL_7:

  os_unfair_lock_unlock(&self->_lock);
  return v6 != 0;
}

- (id)recordMapWithFilter:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB38];
  v6 = [(HMDCloudChangeTree *)self objectMap];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];

  os_unfair_lock_lock_with_options();
  v8 = [(HMDCloudChangeTree *)self objectMap];
  v9 = [v8 objectEnumerator];
  v10 = 0;
LABEL_2:

  v11 = v10;
  while (1)
  {
    v10 = [v9 nextObject];

    if (!v10)
    {
      break;
    }

    v12 = [v10 change];
    if (v12)
    {
      v13 = [v10 change];
      v14 = [v13 isDeleted];

      v11 = v10;
      if (v14)
      {
        continue;
      }
    }

    v15 = [v10 uuid];
    v8 = [v15 UUIDString];

    v16 = [v10 recordName];
    v17 = v16;
    if (v8)
    {
      if (v16)
      {
        [v7 setObject:v16 forKeyedSubscript:v8];
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
  v3 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  v4 = [(HMDCloudChangeTree *)self objectMap];
  v5 = [v4 objectEnumerator];
  v6 = 0;
LABEL_2:

  v7 = v6;
  while (1)
  {
    v6 = [v5 nextObject];

    if (!v6)
    {
      break;
    }

    v8 = [v6 change];

    v7 = v6;
    if (v8)
    {
      v9 = [v6 change];
      v10 = [v9 isInvalid];

      v7 = v6;
      if (v10)
      {
        v4 = [v6 change];
        [v3 addObject:v4];
        goto LABEL_2;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSMutableArray)cloudChanges
{
  v3 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  v4 = [(HMDCloudChangeTree *)self objectMap];
  v5 = [v4 objectEnumerator];
  v6 = 0;
LABEL_2:

  v7 = v6;
  while (1)
  {
    v6 = [v5 nextObject];

    if (!v6)
    {
      break;
    }

    v8 = [v6 change];

    v7 = v6;
    if (v8)
    {
      v9 = [v6 change];
      v10 = [v9 isInvalid];

      v7 = v6;
      if ((v10 & 1) == 0)
      {
        v4 = [v6 change];
        [v3 addObject:v4];
        goto LABEL_2;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)orphans
{
  v3 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  v4 = [(HMDCloudChangeTree *)self objectMap];
  v5 = [v4 objectEnumerator];

  v6 = 0;
  while (1)
  {
    v7 = [v5 nextObject];

    if (!v7)
    {
      break;
    }

    v6 = v7;
    if ([v7 orphaned])
    {
      [v3 addObject:v7];
      v6 = v7;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = [v3 copy];

  return v8;
}

- (NSArray)allTransactionStoreRowIDs
{
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  v4 = [(HMDCloudChangeTree *)self objectMap];
  v5 = [v4 objectEnumerator];
  v6 = 0;
LABEL_2:

  v7 = v6;
  while (1)
  {
    v6 = [v5 nextObject];

    if (!v6)
    {
      break;
    }

    v8 = [v6 change];

    v7 = v6;
    if (v8)
    {
      v4 = [v6 change];
      v9 = [v4 rowIDs];
      [v3 addObjectsFromArray:v9];

      goto LABEL_2;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = [v3 allObjects];

  return v10;
}

- (NSArray)objectsWithPotentialChanges
{
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock_with_options();
  v4 = [(HMDCloudChangeTree *)self objectMap];
  v5 = [v4 objectEnumerator];

  v6 = 0;
  while (1)
  {
    v7 = v6;
    v6 = [v5 nextObject];

    if (!v6)
    {
      break;
    }

    v8 = objc_autoreleasePoolPush();
    if ([v6 forceDelete] || (objc_msgSend(v6, "change"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9) && (objc_msgSend(v6, "change"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isInvalid"), v10, (v11 & 1) == 0))
    {
      v12 = [v6 uuid];
      [v3 addObject:v12];
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = [(HMDCloudChangeTree *)self branchMap];
  v14 = [v13 objectEnumerator];

  v15 = 0;
  while (1)
  {
    v16 = v15;
    v15 = [v14 nextObject];

    if (!v15)
    {
      break;
    }

    v17 = objc_autoreleasePoolPush();
    v18 = [v15 parentUuid];
    if (v18)
    {
      v19 = [(HMDCloudChangeTree *)self validRootUUIDs];
      v20 = [v15 parentUuid];
      v21 = [v19 containsObject:v20];

      if ((v21 & 1) == 0)
      {
        v22 = [v15 _allNodesInBranch];
        [v3 addObjectsFromArray:v22];
      }
    }

    objc_autoreleasePoolPop(v17);
  }

  os_unfair_lock_unlock(&self->_lock);
  v23 = [v3 allObjects];

  return v23;
}

- (void)findAndMarkOrphanedBranches
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [(HMDCloudChangeTree *)self branchMap];
  v4 = [v3 objectEnumerator];

  v5 = 0;
  while (1)
  {
    v6 = [v4 nextObject];

    if (!v6)
    {
      break;
    }

    v7 = [v6 parentUuid];
    v5 = v6;
    if (v7)
    {
      v8 = [(HMDCloudChangeTree *)self validRootUUIDs];
      v9 = [v6 parentUuid];
      v10 = [v8 containsObject:v9];

      v5 = v6;
      if ((v10 & 1) == 0)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          v15 = [v6 description];
          *buf = 138543618;
          v18 = v14;
          v19 = 2112;
          v20 = v15;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Orphaned Branch %@, marking all children as deleted", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v11);
        [v6 _markBranchOrphaned];
        v5 = v6;
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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Determining child records to delete", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCloudChangeTree *)v4 objectMap];
  v8 = [v7 objectEnumerator];

  v9 = 0;
  while (1)
  {
    v10 = [v8 nextObject];

    if (!v10)
    {
      break;
    }

    v11 = [v10 change];

    v9 = v10;
    if (v11)
    {
      v12 = [v10 change];
      v13 = [v12 isDeleted];

      v9 = v10;
      if (v13)
      {
        [v10 deleteChildren];
        v9 = v10;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateNode:(id)a3 withCloudRecord:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [v8 recordName];
  [v8 _updateWithCloudRecord:v6];
  [(HMDCloudChangeTree *)self _updateNode:v8 oldRecordName:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateChange:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCloudChangeTree *)self _findNodeWithRecordMapping:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(HMDCloudChangeNode *)v5 recordName];
    [(HMDCloudChangeNode *)v6 _updateWithChange:v4];
LABEL_5:
    [(HMDCloudChangeTree *)self _updateNode:v6 oldRecordName:v7];
    goto LABEL_6;
  }

  v6 = [[HMDCloudChangeNode alloc] initWithChange:v4];
  if (v6)
  {
    [(HMDCloudChangeTree *)self _addNode:v6];
    v7 = 0;
    goto LABEL_5;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v12;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not create object change node for change %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v7 = 0;
  v6 = 0;
LABEL_6:

  os_unfair_lock_unlock(&self->_lock);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateModel:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [v4 uuid];
  v6 = [(HMDCloudChangeTree *)self _objectForUUID:v5];

  if (v6)
  {
    [(HMDCloudChangeNode *)v6 _updateWithModel:v4];
LABEL_5:
    [(HMDCloudChangeTree *)self _updateNode:v6 oldRecordName:0];
    goto LABEL_6;
  }

  v6 = [[HMDCloudChangeNode alloc] initWithModel:v4];
  if (v6)
  {
    [(HMDCloudChangeTree *)self _addNode:v6];
    goto LABEL_5;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v11;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not create object change node for model %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v6 = 0;
LABEL_6:

  os_unfair_lock_unlock(&self->_lock);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateRecordMapping:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCloudChangeTree *)self _findNodeWithRecordMapping:v4];
  v6 = v5;
  if (v5)
  {
    [(HMDCloudChangeNode *)v5 updateRecordMapping:v4];
LABEL_5:
    [(HMDCloudChangeTree *)self _updateNode:v6 oldRecordName:0];
    goto LABEL_6;
  }

  v6 = [[HMDCloudChangeNode alloc] initWithRecordMapping:v4];
  if (v6)
  {
    [(HMDCloudChangeTree *)self _addNode:v6];
    goto LABEL_5;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v4 uuid];
    v13 = [v4 recordName];
    v14 = 138543874;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not create object change node for record mapping %@/%@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v6 = 0;
LABEL_6:

  os_unfair_lock_unlock(&self->_lock);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeNode:(id)a3
{
  v18 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v18 parent];
  [v4 removeChild:v18];
  v5 = [v18 children];
  v6 = [v5 objectEnumerator];
  for (i = 0; ; i = v8)
  {

    v8 = [v6 nextObject];

    if (!v8)
    {
      break;
    }

    v5 = [(HMDCloudChangeTree *)self branchMap];
    v9 = [v8 uuid];
    [v5 setObject:v8 forKey:v9];
  }

  v10 = [v18 children];
  [v10 removeAllObjects];

  v11 = [v18 recordName];

  if (v11)
  {
    v12 = [(HMDCloudChangeTree *)self recordMap];
    v13 = [v18 recordName];
    [v12 removeObjectForKey:v13];
  }

  v14 = [v18 uuid];

  if (v14)
  {
    v15 = [(HMDCloudChangeTree *)self objectMap];
    v16 = [v18 uuid];
    [v15 removeObjectForKey:v16];
  }

  v17 = [(HMDCloudChangeTree *)self objects];
  [v17 removeObject:v18];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addNode:(id)a3
{
  v5 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v4 = [(HMDCloudChangeTree *)self objects];
  [v4 addObject:v5];

  [(HMDCloudChangeTree *)self _updateNode:v5 oldRecordName:0];
}

- (void)_updateNode:(id)a3 oldRecordName:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = [v6 uuid];
  if (v8)
  {
    v9 = v8;
    v10 = [(HMDCloudChangeTree *)self objectMap];
    v11 = [v6 uuid];
    v12 = [v10 objectForKey:v11];

    if (!v12)
    {
      v13 = [MEMORY[0x277CBEB18] array];
      v14 = [(HMDCloudChangeTree *)self branchMap];
      v15 = [v14 objectEnumerator];

      v16 = [v15 nextObject];
      if (v16)
      {
        v17 = v16;
        do
        {
          v18 = objc_autoreleasePoolPush();
          v19 = [v17 parentUuid];
          v20 = [v6 uuid];
          v21 = [v19 isEqual:v20];

          if (v21)
          {
            [v13 addObject:v17];
            [v6 addChild:v17];
            [v17 setParent:v6];
          }

          objc_autoreleasePoolPop(v18);
          v22 = [v15 nextObject];

          v17 = v22;
        }

        while (v22);
      }

      if ([v13 count])
      {
        v48 = v13;
        v49 = v7;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v23 = v13;
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
              v30 = [(HMDCloudChangeTree *)self branchMap];
              v31 = [v28 uuid];
              [v30 removeObjectForKey:v31];

              objc_autoreleasePoolPop(v29);
            }

            v25 = [v23 countByEnumeratingWithState:&v50 objects:v54 count:16];
          }

          while (v25);
        }

        v13 = v48;
        v7 = v49;
      }

      v32 = [v6 parentUuid];

      if (v32)
      {
        v33 = [(HMDCloudChangeTree *)self objectMap];
        v34 = [v6 parentUuid];
        v35 = [v33 objectForKey:v34];

        if (v35)
        {
          [v35 addChild:v6];
          [v6 setParent:v35];
        }

        else
        {
          v37 = [(HMDCloudChangeTree *)self branchMap];
          v38 = [v6 uuid];
          [v37 setObject:v6 forKey:v38];

          v35 = 0;
        }
      }

      else
      {
        v35 = [(HMDCloudChangeTree *)self branchMap];
        v36 = [v6 uuid];
        [v35 setObject:v6 forKey:v36];
      }

      v39 = [(HMDCloudChangeTree *)self objectMap];
      v40 = [v6 uuid];
      [v39 setObject:v6 forKey:v40];
    }
  }

  v41 = [v6 recordName];

  if (v41)
  {
    if (v7)
    {
      v42 = [v6 recordName];
      v43 = [v7 isEqualToString:v42];

      if ((v43 & 1) == 0)
      {
        v44 = [(HMDCloudChangeTree *)self recordMap];
        [v44 removeObjectForKey:v7];
      }
    }

    v45 = [(HMDCloudChangeTree *)self recordMap];
    v46 = [v6 recordName];
    [v45 setObject:v6 forKey:v46];
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (id)_findNodeWithRecordMapping:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [v4 uuid];

  if (v5)
  {
    v6 = [v4 uuid];
    v7 = [(HMDCloudChangeTree *)self _objectForUUID:v6];
LABEL_5:
    v9 = v7;

    goto LABEL_6;
  }

  v8 = [v4 recordName];

  if (v8)
  {
    v6 = [v4 recordName];
    v7 = [(HMDCloudChangeTree *)self _objectForRecordName:v6];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)objectForRecordName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCloudChangeTree *)self _objectForRecordName:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_objectForRecordName:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(HMDCloudChangeTree *)self recordMap];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)objectForUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCloudChangeTree *)self _objectForUUID:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)_objectForUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(HMDCloudChangeTree *)self objectMap];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)logChangeTreeWithIndent:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = a3;
  os_unfair_lock_lock_with_options();
  v4 = objc_autoreleasePoolPush();
  v19 = self;
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [(HMDCloudChangeTree *)v5 shortDescription];
    *buf = 138543874;
    v22 = v7;
    v23 = 2112;
    v24 = v20;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@%@HMDCloudChangeNode<%@>:", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@  ", v20];
  v10 = [(HMDCloudChangeTree *)v5 branchMap];
  v11 = [v10 objectEnumerator];

  for (i = 0; ; [i logChangeTreeWithIndent:v9])
  {
    v13 = [v11 nextObject];

    if (!v13)
    {
      break;
    }

    i = v13;
    if ([v13 orphaned])
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v5;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v17;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@%@Orphaned Branch", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  os_unfair_lock_unlock(&v19->_lock);
  v18 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDCloudChangeTree *)self shortDescription];
  v4 = [v2 stringWithFormat:@"<%@>", v3];

  return v4;
}

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [objc_opt_class() shortDescription];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (HMDCloudChangeTree)initWithRootUUIDs:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = HMDCloudChangeTree;
  v5 = [(HMDCloudChangeTree *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [MEMORY[0x277CBEB18] array];
    objects = v6->_objects;
    v6->_objects = v7;

    v9 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    objectMap = v6->_objectMap;
    v6->_objectMap = v9;

    v11 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    recordMap = v6->_recordMap;
    v6->_recordMap = v11;

    v13 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    branchMap = v6->_branchMap;
    v6->_branchMap = v13;

    v15 = [MEMORY[0x277CBEB58] setWithArray:v4];
    v16 = [MEMORY[0x277CCAD78] zeroUUID];
    [v15 addObject:v16];

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

+ (BOOL)modelTypeCanBeOrphaned:(id)a3
{
  v3 = a3;
  if (isInternalBuild())
  {
    if (modelTypeCanBeOrphaned__pred != -1)
    {
      dispatch_once(&modelTypeCanBeOrphaned__pred, &__block_literal_global_100);
    }

    v4 = [modelTypeCanBeOrphaned___models containsObject:v3];
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