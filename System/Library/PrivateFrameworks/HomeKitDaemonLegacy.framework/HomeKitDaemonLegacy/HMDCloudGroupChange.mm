@interface HMDCloudGroupChange
+ (id)shortDescription;
- (BOOL)doRecordsExistInCache;
- (BOOL)hasValidChanges;
- (BOOL)isRootRecord:(id)record;
- (BOOL)isRootRecordName:(id)name;
- (BOOL)isRootRecordRequired;
- (BOOL)moreChangesToProcess;
- (HMDCloudGroup)cloudGroup;
- (HMDCloudGroupChange)changeWithObjectID:(id)d;
- (HMDCloudGroupChange)changeWithRecordName:(id)name;
- (HMDCloudGroupChange)init;
- (HMDCloudGroupChange)initWithGroup:(id)group temporaryCache:(BOOL)cache metricsDispatcher:(id)dispatcher;
- (NSArray)allTransactionStoreRowIDs;
- (NSArray)objectChanges;
- (NSArray)processedTransactionStoreRowIDs;
- (id)cachedCloudRecordWithObjectID:(id)d;
- (id)cloudRecordWithName:(id)name;
- (id)cloudRecordWithObjectID:(id)d;
- (id)description;
- (id)rootRecordModelObject;
- (id)shortDescription;
- (void)_addChangeWithDeletedCloudRecord:(id)record;
- (void)_initializeCloudChanges;
- (void)_loadTreeWithRecordMapping:(id)mapping;
- (void)_removeChange:(id)change;
- (void)addChange:(id)change setAsProcessing:(BOOL)processing;
- (void)addChangeWithDeletedRecordID:(id)d;
- (void)addChangeWithObjectChange:(id)change;
- (void)addChangeWithRecord:(id)record;
- (void)addRootRecordChange;
- (void)cachedCloudRecordWithObjectID:(id)d completionHandler:(id)handler;
- (void)collectRecordsForBatch;
- (void)fetchBatchToUpload:(id)upload;
- (void)flushAllChangesToCache;
- (void)loadCloudChangeTreeFromCache:(id)cache;
- (void)loadCloudRecordsAndDetermineDeletesFromCache:(id)cache;
- (void)loadCloudRecordsFromCache:(id)cache;
- (void)removeChangeWithObjectID:(id)d;
- (void)resetRecordWithRecordID:(id)d;
- (void)setAllChangedAsProcessed;
- (void)setAsProcessedChange:(id)change;
- (void)setDeleteAsProcessedWithRecordID:(id)d;
- (void)setSaveAsProcessedWithRecord:(id)record;
@end

@implementation HMDCloudGroupChange

- (HMDCloudGroup)cloudGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudGroup);

  return WeakRetained;
}

- (NSArray)objectChanges
{
  [(HMDCloudGroupChange *)self _initializeCloudChanges];
  cloudChanges = [(HMDCloudGroupChange *)self cloudChanges];
  [HMDBackingStoreTransactionBlock sort:cloudChanges];

  cloudChanges2 = [(HMDCloudGroupChange *)self cloudChanges];
  v5 = [cloudChanges2 copy];

  return v5;
}

- (BOOL)isRootRecord:(id)record
{
  if (!record)
  {
    return 0;
  }

  recordName = [record recordName];
  LOBYTE(self) = [(HMDCloudGroupChange *)self isRootRecordName:recordName];

  return self;
}

- (BOOL)isRootRecordName:(id)name
{
  nameCopy = name;
  cloudGroup = [(HMDCloudGroupChange *)self cloudGroup];
  v6 = [cloudGroup isRootRecordName:nameCopy];

  return v6;
}

- (void)flushAllChangesToCache
{
  v20 = *MEMORY[0x277D85DE8];
  cloudGroup = [(HMDCloudGroupChange *)self cloudGroup];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  cloudChanges = [(HMDCloudGroupChange *)self cloudChanges];
  v5 = [cloudChanges copy];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isDeleted])
        {
          cloudRecord = [v10 cloudRecord];
          [cloudGroup deleteCloudRecord:cloudRecord];
        }

        else
        {
          if ([v10 isInvalid])
          {
            goto LABEL_13;
          }

          deletedCloudRecord = [v10 deletedCloudRecord];

          if (deletedCloudRecord)
          {
            deletedCloudRecord2 = [v10 deletedCloudRecord];
            [cloudGroup deleteCloudRecord:deletedCloudRecord2];
          }

          cloudRecord = [v10 cloudRecord];
          [cloudGroup updateCloudRecord:cloudRecord];
        }

LABEL_13:
        [(HMDCloudGroupChange *)self setAsProcessedChange:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setDeleteAsProcessedWithRecordID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  recordName = [dCopy recordName];
  v6 = [(HMDCloudGroupChange *)self changeWithRecordName:recordName];

  if (v6)
  {
    cloudGroup = [(HMDCloudGroupChange *)self cloudGroup];
    cloudRecord = [v6 cloudRecord];
    [cloudGroup deleteCloudRecord:cloudRecord];

    [(HMDCloudGroupChange *)self setAsProcessedChange:v6];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      recordName2 = [dCopy recordName];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = recordName2;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to find deleted change for recordID %@, cannot update cloud cache", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)resetRecordWithRecordID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  recordName = [dCopy recordName];
  v6 = [(HMDCloudGroupChange *)self changeWithRecordName:recordName];

  if (v6)
  {
    [v6 resetRecord];
    cloudGroup = [(HMDCloudGroupChange *)self cloudGroup];
    cloudRecord = [v6 cloudRecord];
    [cloudGroup updateCloudRecord:cloudRecord];

    [(HMDCloudGroupChange *)self setAsProcessedChange:v6];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      recordName2 = [dCopy recordName];
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = recordName2;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to find change for record %@, cannot reset cloud cache", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setSaveAsProcessedWithRecord:(id)record
{
  v21 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v7 = [(HMDCloudGroupChange *)self changeWithRecordName:recordName];

  if (v7)
  {
    [v7 updateChangeWithRecord:recordCopy];
    cloudGroup = [(HMDCloudGroupChange *)self cloudGroup];
    cloudRecord = [v7 cloudRecord];
    [cloudGroup updateCloudRecord:cloudRecord];

    [(HMDCloudGroupChange *)self setAsProcessedChange:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      recordID2 = [recordCopy recordID];
      recordName2 = [recordID2 recordName];
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = recordName2;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to find change for record %@, cannot update cloud cache", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)fetchBatchToUpload:(id)upload
{
  v33 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  [(HMDCloudGroupChange *)self collectRecordsForBatch];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  processingCloudChanges = [(HMDCloudGroupChange *)self processingCloudChanges];
  v7 = [processingCloudChanges countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = v7;
  v9 = *v25;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(processingCloudChanges);
      }

      v11 = *(*(&v24 + 1) + 8 * i);
      if ([v11 isDeleted])
      {
        recordID = [v11 recordID];
        if (!recordID)
        {
          goto LABEL_14;
        }

        v13 = array2;
        goto LABEL_11;
      }

      record = [v11 record];
      if (record)
      {
        recordID = record;
        v13 = array;
LABEL_11:
        [v13 addObject:recordID];
        goto LABEL_14;
      }

      cloudRecord = [v11 cloudRecord];
      encryptionFailed = [cloudRecord encryptionFailed];

      if (encryptionFailed)
      {
        v17 = objc_autoreleasePoolPush();
        selfCopy = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v29 = v20;
          v30 = 2112;
          v31 = v11;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to encrypt %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        [(HMDCloudGroupChange *)selfCopy setEncryptionFailed:1];
        goto LABEL_20;
      }

      recordID = 0;
LABEL_14:
    }

    v8 = [processingCloudChanges countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_20:

  if (uploadCopy)
  {
    if ([(HMDCloudGroupChange *)self encryptionFailed])
    {
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (*(uploadCopy + 2))(uploadCopy, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], v21);
    }

    else
    {
      (*(uploadCopy + 2))(uploadCopy, array, array2, 0);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)removeChangeWithObjectID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v5 = [(HMDCloudGroupChange *)self changeWithObjectID:dCopy];
    if (v5)
    {
      [(HMDCloudGroupChange *)self _removeChange:v5];
    }
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@ObjectID not specified", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_removeChange:(id)change
{
  v51 = *MEMORY[0x277D85DE8];
  objectID = [change objectID];
  if (objectID)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    cloudChanges = [(HMDCloudGroupChange *)self cloudChanges];
    v6 = [cloudChanges copy];

    v7 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v45;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v44 + 1) + 8 * i);
          objectID2 = [v11 objectID];
          v13 = [objectID isEqual:objectID2];

          if (v13)
          {
            cloudChanges2 = [(HMDCloudGroupChange *)self cloudChanges];
            [cloudChanges2 removeObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v8);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    processingCloudChanges = [(HMDCloudGroupChange *)self processingCloudChanges];
    v16 = [processingCloudChanges copy];

    v17 = [v16 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v41;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v40 + 1) + 8 * j);
          objectID3 = [v21 objectID];
          v23 = [objectID isEqual:objectID3];

          if (v23)
          {
            processingCloudChanges2 = [(HMDCloudGroupChange *)self processingCloudChanges];
            [processingCloudChanges2 removeObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v18);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    processedCloudChanges = [(HMDCloudGroupChange *)self processedCloudChanges];
    v26 = [processedCloudChanges copy];

    v27 = [v26 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v37;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v36 + 1) + 8 * k);
          objectID4 = [v31 objectID];
          v33 = [objectID isEqual:objectID4];

          if (v33)
          {
            processedCloudChanges2 = [(HMDCloudGroupChange *)self processedCloudChanges];
            [processedCloudChanges2 removeObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v28);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)addChange:(id)change setAsProcessing:(BOOL)processing
{
  processingCopy = processing;
  v17 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (changeCopy)
  {
    [(HMDCloudGroupChange *)self _removeChange:changeCopy];
    if ([changeCopy isInvalid])
    {
      processedCloudChanges = [(HMDCloudGroupChange *)self processedCloudChanges];
    }

    else
    {
      if (processingCopy)
      {
        [(HMDCloudGroupChange *)self processingCloudChanges];
      }

      else
      {
        [(HMDCloudGroupChange *)self cloudChanges];
      }
      processedCloudChanges = ;
    }

    v12 = processedCloudChanges;
    [processedCloudChanges addObject:changeCopy];

    cloudChangeTree = [(HMDCloudGroupChange *)self cloudChangeTree];
    [cloudChangeTree updateChange:changeCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Change not specified", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)collectRecordsForBatch
{
  v32 = *MEMORY[0x277D85DE8];
  processingCloudChanges = [(HMDCloudGroupChange *)self processingCloudChanges];
  v4 = [processingCloudChanges count];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      processingCloudChanges2 = [(HMDCloudGroupChange *)selfCopy processingCloudChanges];
      *buf = 138543618;
      v29 = v8;
      v30 = 2112;
      v31 = processingCloudChanges2;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Changes already marked as processing when determining batch, added to next batch, %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  cloudChanges = [(HMDCloudGroupChange *)self cloudChanges];
  v11 = [cloudChanges copy];

  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
LABEL_7:
    v15 = 0;
    while (1)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v23 + 1) + 8 * v15);
      processingCloudChanges3 = [(HMDCloudGroupChange *)self processingCloudChanges];
      v18 = [processingCloudChanges3 count];
      v19 = cloudPushBatchLimit;

      if (v18 >= v19)
      {
        break;
      }

      cloudChanges2 = [(HMDCloudGroupChange *)self cloudChanges];
      [cloudChanges2 removeObject:v16];

      if ([v16 isInvalid])
      {
        [(HMDCloudGroupChange *)self processedCloudChanges];
      }

      else
      {
        [(HMDCloudGroupChange *)self processingCloudChanges];
      }
      v21 = ;
      [v21 addObject:v16];

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v13)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  if ([(HMDCloudGroupChange *)self isRootRecordRequired])
  {
    [(HMDCloudGroupChange *)self addRootRecordChange];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)addRootRecordChange
{
  v15 = *MEMORY[0x277D85DE8];
  rootRecordModelObject = [(HMDCloudGroupChange *)self rootRecordModelObject];
  if (rootRecordModelObject)
  {
    v4 = [[HMDCloudChange alloc] initWithObjectChange:rootRecordModelObject];
    uuid = [rootRecordModelObject uuid];
    v6 = [(HMDCloudGroupChange *)self cloudRecordWithObjectID:uuid];

    if (v6 || (-[HMDCloudGroupChange cloudGroup](self, "cloudGroup"), v7 = objc_claimAutoreleasedReturnValue(), [v7 rootRecord], v6 = objc_claimAutoreleasedReturnValue(), v7, v6))
    {
      [(HMDCloudChange *)v4 updateCloudRecord:v6];
    }

    [(HMDCloudGroupChange *)self addChange:v4 setAsProcessing:1];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine root record object change model", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)rootRecordModelObject
{
  cloudGroup = [(HMDCloudGroupChange *)self cloudGroup];
  rootRecordModelObject = [cloudGroup rootRecordModelObject];

  cloudChangeTree = [(HMDCloudGroupChange *)self cloudChangeTree];
  v6 = [cloudChangeTree recordMapWithFilter:0];
  [rootRecordModelObject setObjectIDToRecordNameMap:v6];

  return rootRecordModelObject;
}

- (BOOL)isRootRecordRequired
{
  v21 = *MEMORY[0x277D85DE8];
  cloudGroup = [(HMDCloudGroupChange *)self cloudGroup];
  cloudZone = [cloudGroup cloudZone];
  zoneRootRecordName = [cloudZone zoneRootRecordName];
  v6 = [zoneRootRecordName isEqualToString:@"DONOTUPLOAD"];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    processingCloudChanges = [(HMDCloudGroupChange *)self processingCloudChanges];
    v9 = [processingCloudChanges countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(processingCloudChanges);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 isAdded] & 1) != 0 || (objc_msgSend(v13, "isDeleted"))
          {
            v7 = 1;
            goto LABEL_15;
          }
        }

        v10 = [processingCloudChanges countByEnumeratingWithState:&v16 objects:v20 count:16];
        v7 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_15:
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)setAllChangedAsProcessed
{
  [(HMDCloudGroupChange *)self _initializeCloudChanges];
  processedCloudChanges = [(HMDCloudGroupChange *)self processedCloudChanges];
  processingCloudChanges = [(HMDCloudGroupChange *)self processingCloudChanges];
  [processedCloudChanges addObjectsFromArray:processingCloudChanges];

  processingCloudChanges2 = [(HMDCloudGroupChange *)self processingCloudChanges];
  [processingCloudChanges2 removeAllObjects];

  processedCloudChanges2 = [(HMDCloudGroupChange *)self processedCloudChanges];
  cloudChanges = [(HMDCloudGroupChange *)self cloudChanges];
  [processedCloudChanges2 addObjectsFromArray:cloudChanges];

  cloudChanges2 = [(HMDCloudGroupChange *)self cloudChanges];
  [cloudChanges2 removeAllObjects];
}

- (void)setAsProcessedChange:(id)change
{
  changeCopy = change;
  processingCloudChanges = [(HMDCloudGroupChange *)self processingCloudChanges];
  v5 = [processingCloudChanges containsObject:changeCopy];

  if (v5)
  {
    processingCloudChanges2 = [(HMDCloudGroupChange *)self processingCloudChanges];
  }

  else
  {
    cloudChanges = [(HMDCloudGroupChange *)self cloudChanges];
    v8 = [cloudChanges containsObject:changeCopy];

    if (!v8)
    {
      goto LABEL_6;
    }

    processingCloudChanges2 = [(HMDCloudGroupChange *)self cloudChanges];
  }

  v9 = processingCloudChanges2;
  [processingCloudChanges2 removeObject:changeCopy];

LABEL_6:
  processedCloudChanges = [(HMDCloudGroupChange *)self processedCloudChanges];
  v11 = [processedCloudChanges containsObject:changeCopy];

  if ((v11 & 1) == 0)
  {
    processedCloudChanges2 = [(HMDCloudGroupChange *)self processedCloudChanges];
    [processedCloudChanges2 addObject:changeCopy];
  }
}

- (BOOL)moreChangesToProcess
{
  cloudChanges = [(HMDCloudGroupChange *)self cloudChanges];
  v3 = [cloudChanges count];

  return v3 != 0;
}

- (void)loadCloudRecordsAndDetermineDeletesFromCache:(id)cache
{
  cacheCopy = cache;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HMDCloudGroupChange_loadCloudRecordsAndDetermineDeletesFromCache___block_invoke;
  v6[3] = &unk_279734508;
  objc_copyWeak(&v8, &location);
  v5 = cacheCopy;
  v7 = v5;
  [(HMDCloudGroupChange *)self loadCloudChangeTreeFromCache:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __68__HMDCloudGroupChange_loadCloudRecordsAndDetermineDeletesFromCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__HMDCloudGroupChange_loadCloudRecordsAndDetermineDeletesFromCache___block_invoke_2;
    v6[3] = &unk_279735558;
    v7 = *(a1 + 32);
    [WeakRetained loadCloudRecordsFromCache:v6];
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, v3);
    }
  }
}

uint64_t __68__HMDCloudGroupChange_loadCloudRecordsAndDetermineDeletesFromCache___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadCloudRecordsFromCache:(id)cache
{
  cacheCopy = cache;
  cloudChangeTree = [(HMDCloudGroupChange *)self cloudChangeTree];
  [cloudChangeTree findAndDeletedChildren];

  cloudChangeTree2 = [(HMDCloudGroupChange *)self cloudChangeTree];
  [cloudChangeTree2 findAndMarkOrphanedBranches];

  objc_initWeak(&location, self);
  cloudGroup = [(HMDCloudGroupChange *)self cloudGroup];
  cloudChangeTree3 = [(HMDCloudGroupChange *)self cloudChangeTree];
  objectsWithPotentialChanges = [cloudChangeTree3 objectsWithPotentialChanges];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__HMDCloudGroupChange_loadCloudRecordsFromCache___block_invoke;
  v11[3] = &unk_279732250;
  v10 = cacheCopy;
  v12 = v10;
  objc_copyWeak(&v13, &location);
  [cloudGroup cloudRecordWithObjectIDs:objectsWithPotentialChanges completionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __49__HMDCloudGroupChange_loadCloudRecordsFromCache___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v97 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, v9);
    }

    goto LABEL_60;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_57;
  }

  v74 = a1;
  v75 = 0;
  v76 = v7;
  v77 = v8;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
  if (v12)
  {
    v13 = v12;
    v79 = *v88;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v88 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v87 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [WeakRetained cloudChangeTree];
        v18 = [v17 objectForUUID:v15];

        if (v18)
        {
          if (![v18 orphaned])
          {
            goto LABEL_14;
          }

          v19 = [v18 type];
          v20 = [HMDCloudChangeTree modelTypeCanBeOrphaned:v19];

          if (v20)
          {
            [v18 deleteChildren];
LABEL_14:
            v21 = [WeakRetained cloudChangeTree];
            v22 = [obj objectForKeyedSubscript:v15];
            [v21 updateNode:v18 withCloudRecord:v22];

            goto LABEL_22;
          }

          v28 = objc_autoreleasePoolPush();
          v29 = WeakRetained;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            v32 = [v18 shortDescription];
            *buf = 138543618;
            v93 = v31;
            v94 = 2112;
            v95 = v32;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Record appears to be orphaned ignoring %@", buf, 0x16u);
          }

          v27 = v28;
        }

        else
        {
          v23 = objc_autoreleasePoolPush();
          v24 = WeakRetained;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v93 = v26;
            v94 = 2112;
            v95 = v15;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@loadCloudRecordsFromCache skipping node of founded records no longer in tree %@", buf, 0x16u);
          }

          v27 = v23;
        }

        objc_autoreleasePoolPop(v27);
LABEL_22:

        objc_autoreleasePoolPop(v16);
      }

      v13 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
    }

    while (v13);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v78 = v77;
  obja = [v78 countByEnumeratingWithState:&v83 objects:v91 count:16];
  if (!obja)
  {
    goto LABEL_56;
  }

  v80 = *v84;
  do
  {
    v33 = 0;
    do
    {
      if (*v84 != v80)
      {
        objc_enumerationMutation(v78);
      }

      v34 = *(*(&v83 + 1) + 8 * v33);
      v35 = objc_autoreleasePoolPush();
      v36 = [WeakRetained cloudChangeTree];
      v37 = [v36 objectForUUID:v34];

      if (v37)
      {
        v38 = [v37 change];
        if ([v38 isAdded])
        {
          v39 = [v37 orphaned];

          if ((v39 & 1) == 0)
          {
            v40 = [WeakRetained cloudGroup];
            v41 = [v40 cloudZone];
            v42 = [v37 uuid];
            v43 = [v37 recordName];
            v44 = [v41 createCloudRecordWithObjectID:v42 recordName:v43];

            if (v44)
            {
              v45 = [WeakRetained cloudChangeTree];
              [v45 updateNode:v37 withCloudRecord:v44];
            }

            else
            {
              v65 = objc_autoreleasePoolPush();
              v66 = WeakRetained;
              v67 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                v68 = HMFGetLogIdentifier();
                *buf = 138543618;
                v93 = v68;
                v94 = 2112;
                v95 = v34;
                _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_ERROR, "%{public}@loadCloudRecordsFromCache failed to create record for %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v65);
            }

LABEL_49:

            goto LABEL_50;
          }
        }

        else
        {
        }

        v50 = [v37 orphaned];
        v51 = objc_autoreleasePoolPush();
        v52 = WeakRetained;
        v53 = HMFGetOSLogHandle();
        v54 = v53;
        if (v50)
        {
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v55 = HMFGetLogIdentifier();
            v56 = [v37 uuid];
            *buf = 138543618;
            v93 = v55;
            v94 = 2112;
            v95 = v56;
            _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Changes has been orphaned before it can be pushed to the cloud %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v51);
        }

        else
        {
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v57 = HMFGetLogIdentifier();
            v58 = [v37 change];
            *buf = 138543618;
            v93 = v57;
            v94 = 2112;
            v95 = v58;
            _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Cannot create a new record for non-added change, %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v51);
          v59 = [v52 metricsDispatcher];
          v60 = [v37 change];
          v61 = [v60 type];
          v62 = v61;
          if (v61)
          {
            v63 = v61;
          }

          else
          {
            v63 = @"unknown";
          }

          v64 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
          [v59 submitFailureEventWithModelType:v63 failureCode:1 error:v64];
        }

        v44 = [v37 change];
        [v44 forceChangeToInvalid];
        goto LABEL_49;
      }

      v46 = objc_autoreleasePoolPush();
      v47 = WeakRetained;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543618;
        v93 = v49;
        v94 = 2112;
        v95 = v34;
        _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@loadCloudRecordsFromCache skipping node no longer in tree %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v46);
LABEL_50:

      objc_autoreleasePoolPop(v35);
      v33 = v33 + 1;
    }

    while (obja != v33);
    v69 = [v78 countByEnumeratingWithState:&v83 objects:v91 count:16];
    obja = v69;
  }

  while (v69);
LABEL_56:

  v70 = [WeakRetained cloudChangeTree];
  [v70 logChangeTreeWithIndent:&stru_286509E58];

  [WeakRetained _initializeCloudChanges];
  v71 = [WeakRetained cloudChanges];
  [HMDBackingStoreTransactionBlock sort:v71];

  v7 = v76;
  v8 = v77;
  a1 = v74;
  v9 = v75;
LABEL_57:
  v72 = *(a1 + 32);
  if (v72)
  {
    (*(v72 + 16))(v72, 0);
  }

LABEL_60:
  v73 = *MEMORY[0x277D85DE8];
}

- (void)_initializeCloudChanges
{
  cloudChangeTree = [(HMDCloudGroupChange *)self cloudChangeTree];
  cloudChanges = [cloudChangeTree cloudChanges];
  [(HMDCloudGroupChange *)self setCloudChanges:cloudChanges];

  cloudChangeTree2 = [(HMDCloudGroupChange *)self cloudChangeTree];
  invalidCloudChanges = [cloudChangeTree2 invalidCloudChanges];
  [(HMDCloudGroupChange *)self setProcessedCloudChanges:invalidCloudChanges];
}

- (void)loadCloudChangeTreeFromCache:(id)cache
{
  v21 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    cloudGroup = [(HMDCloudGroupChange *)selfCopy cloudGroup];
    identifier = [cloudGroup identifier];
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = identifier;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Fetching cloud change tree info for group %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  objc_initWeak(buf, selfCopy);
  cloudGroup2 = [(HMDCloudGroupChange *)selfCopy cloudGroup];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__HMDCloudGroupChange_loadCloudChangeTreeFromCache___block_invoke;
  v14[3] = &unk_279731300;
  objc_copyWeak(&v16, buf);
  v12 = cacheCopy;
  v15 = v12;
  [cloudGroup2 fetchCloudRecordMap:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];
}

void __52__HMDCloudGroupChange_loadCloudChangeTreeFromCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_17:
      v10();
    }
  }

  else
  {
    if (WeakRetained)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v5;
      v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            v17 = objc_autoreleasePoolPush();
            [v8 _loadTreeWithRecordMapping:{v16, v26}];
            objc_autoreleasePoolPop(v17);
          }

          v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v13);
      }

      v18 = objc_autoreleasePoolPush();
      v19 = v8;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [v19 cloudGroup];
        v23 = [v22 identifier];
        *buf = 138543618;
        v31 = v21;
        v32 = 2112;
        v33 = v23;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Fetching cloud change tree info completed for group %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
    }

    v24 = *(a1 + 32);
    if (v24)
    {
      v10 = *(v24 + 16);
      goto LABEL_17;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_loadTreeWithRecordMapping:(id)mapping
{
  mappingCopy = mapping;
  cloudChangeTree = [(HMDCloudGroupChange *)self cloudChangeTree];
  [cloudChangeTree updateRecordMapping:mappingCopy];
}

- (void)addChangeWithDeletedRecordID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (dCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      recordName = [dCopy recordName];
      v19 = 138543618;
      v20 = v9;
      v21 = 2112;
      v22 = recordName;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Processing deleted CKRecordID %@ for group change", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    recordName2 = [dCopy recordName];
    v12 = [(HMDCloudGroupChange *)selfCopy cloudRecordWithName:recordName2];

    if (v12)
    {
      [(HMDCloudGroupChange *)selfCopy _addChangeWithDeletedCloudRecord:v12];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = selfCopy;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v17;
        v21 = 2112;
        v22 = dCopy;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Object does not exist in cache, dropping delete %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v13;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@RecordID not specified", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_addChangeWithDeletedCloudRecord:(id)record
{
  v30 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (recordCopy)
  {
    v5 = [[HMDCloudChange alloc] initWithCloudObjectRecord:recordCopy];
    if (v5)
    {
      cloudChangeTree = [(HMDCloudGroupChange *)self cloudChangeTree];
      objectID = [(HMDCloudChange *)v5 objectID];
      v8 = [cloudChangeTree objectForUUID:objectID];

      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          objectID2 = [(HMDCloudChange *)v5 objectID];
          change = [v8 change];
          cloudRecord = [change cloudRecord];
          v22 = 138544130;
          v23 = v12;
          v24 = 2112;
          v25 = objectID2;
          v26 = 2112;
          v27 = recordCopy;
          v28 = 2112;
          v29 = cloudRecord;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Duplicate records for the object ID %@, deleting record %@ but keeping %@", &v22, 0x2Au);
        }

        objc_autoreleasePoolPop(v9);
        change2 = [v8 change];
        [change2 updateDeletedCloudRecord:recordCopy];
      }

      else
      {
        [(HMDCloudChange *)v5 forceChangeToDelete];
        change2 = [(HMDCloudGroupChange *)self cloudChangeTree];
        [change2 updateChange:v5];
      }
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@cloudRecord not specified, cannot create delete change", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addChangeWithRecord:(id)record
{
  v68 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (!recordCopy)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v61 = v14;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Record not specified", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    recordID = [recordCopy recordID];
    *buf = 138543618;
    v61 = v9;
    v62 = 2112;
    v63 = recordID;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Processing CKRecord %@ for group change", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (![(HMDCloudGroupChange *)selfCopy decryptionFailed])
  {
    cloudGroup = [(HMDCloudGroupChange *)selfCopy cloudGroup];
    cloudZone = [cloudGroup cloudZone];

    if (![(HMDCloudGroupChange *)selfCopy isTemporaryCache])
    {
      recordID2 = [recordCopy recordID];
      recordName = [recordID2 recordName];
      v19 = [(HMDCloudGroupChange *)selfCopy cloudRecordWithName:recordName];

      if (v19)
      {
        recordChangeTag = [recordCopy recordChangeTag];
        record = [v19 record];
        recordChangeTag2 = [record recordChangeTag];
        v23 = [recordChangeTag isEqualToString:recordChangeTag2];

        if (v23)
        {
          v24 = objc_autoreleasePoolPush();
          v25 = selfCopy;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = HMFGetLogIdentifier();
            recordID3 = [recordCopy recordID];
            *buf = 138543618;
            v61 = v27;
            v62 = 2112;
            v63 = recordID3;
            _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Already have current record in cache, dropping %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
          goto LABEL_38;
        }
      }
    }

    recordID4 = [recordCopy recordID];
    recordName2 = [recordID4 recordName];
    v19 = [cloudZone createCloudRecordWithObjectID:0 recordName:recordName2];

    [v19 setRecord:recordCopy];
    v31 = [[HMDCloudChange alloc] initWithCloudObjectRecord:v19];
    if (([cloudZone doesProcessChangeEvenIfDecryptionFails] & 1) != 0 || !objc_msgSend(v19, "decryptionFailed"))
    {
      if (v31)
      {
        cloudChangeTree = [(HMDCloudGroupChange *)selfCopy cloudChangeTree];
        objectID = [(HMDCloudChange *)v31 objectID];
        v42 = [cloudChangeTree objectForUUID:objectID];

        if (v42)
        {
          v43 = objc_autoreleasePoolPush();
          v44 = selfCopy;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v57 = HMFGetLogIdentifier();
            objectID2 = [(HMDCloudChange *)v31 objectID];
            change = [v42 change];
            [change cloudRecord];
            v46 = v59 = v43;
            cloudRecord = [(HMDCloudChange *)v31 cloudRecord];
            *buf = 138544130;
            v61 = v57;
            v62 = 2112;
            v63 = objectID2;
            v64 = 2112;
            v65 = v46;
            v66 = 2112;
            v67 = cloudRecord;
            _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@Duplicate records for the object ID %@, deleting record %@ replacing with %@", buf, 0x2Au);

            v43 = v59;
          }

          objc_autoreleasePoolPop(v43);
          change2 = [v42 change];
          cloudRecord2 = [change2 cloudRecord];
          [(HMDCloudChange *)v31 updateDeletedCloudRecord:cloudRecord2];

          cloudChangeTree2 = [(HMDCloudGroupChange *)v44 cloudChangeTree];
          [cloudChangeTree2 removeNode:v42];
        }

        cloudChangeTree3 = [(HMDCloudGroupChange *)selfCopy cloudChangeTree];
        [cloudChangeTree3 updateChange:v31];

        goto LABEL_37;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v52 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v52;
      v62 = 2112;
      v63 = recordCopy;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not create object change object for record %@", buf, 0x16u);
    }

    else
    {
      v32 = [(HMDCloudGroupChange *)selfCopy isRootRecord:v19];
      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
      if (v32)
      {
        if (v36)
        {
          v37 = HMFGetLogIdentifier();
          recordID5 = [recordCopy recordID];
          recordName3 = [recordID5 recordName];
          *buf = 138543618;
          v61 = v37;
          v62 = 2112;
          v63 = recordName3;
          _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Decryption has failed for root record %@, cannot process zone further", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        [(HMDCloudGroupChange *)v34 setDecryptionFailed:1];
        goto LABEL_37;
      }

      if (!v36)
      {
LABEL_36:

        objc_autoreleasePoolPop(v33);
LABEL_37:

LABEL_38:
        goto LABEL_39;
      }

      v52 = HMFGetLogIdentifier();
      recordID6 = [recordCopy recordID];
      recordName4 = [recordID6 recordName];
      *buf = 138543618;
      v61 = v52;
      v62 = 2112;
      v63 = recordName4;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Decryption has failed for record %@, dropping record but continuing to process zone", buf, 0x16u);
    }

    goto LABEL_36;
  }

  v5 = objc_autoreleasePoolPush();
  v11 = selfCopy;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v61 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Decryption has already failed, do not process further", buf, 0xCu);
  }

LABEL_11:
  objc_autoreleasePoolPop(v5);
LABEL_39:

  v55 = *MEMORY[0x277D85DE8];
}

- (void)addChangeWithObjectChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = changeCopy;
  if (changeCopy && ([changeCopy uuid], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Processing object change %@ for group change", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    cloudChangeTree = [(HMDCloudGroupChange *)selfCopy cloudChangeTree];
    [cloudChangeTree updateModel:v5];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Object change not specified", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)cloudRecordWithName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (nameCopy)
  {
    v5 = [(HMDCloudGroupChange *)self changeWithRecordName:nameCopy];
    cloudRecord = [v5 cloudRecord];
    if (!cloudRecord)
    {
      cloudGroup = [(HMDCloudGroupChange *)self cloudGroup];
      cloudRecord = [cloudGroup cloudRecordWithName:nameCopy];
    }

    v8 = cloudRecord;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@RecordName not specified", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMDCloudGroupChange)changeWithRecordName:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (nameCopy)
  {
    cloudChangeTree = [(HMDCloudGroupChange *)self cloudChangeTree];
    v6 = [cloudChangeTree objectForRecordName:nameCopy];

    change = [v6 change];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@RecordName not specified", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    change = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return change;
}

- (BOOL)doRecordsExistInCache
{
  cloudGroup = [(HMDCloudGroupChange *)self cloudGroup];
  doRecordsExistInCache = [cloudGroup doRecordsExistInCache];

  return doRecordsExistInCache;
}

- (id)cachedCloudRecordWithObjectID:(id)d
{
  dCopy = d;
  cloudGroup = [(HMDCloudGroupChange *)self cloudGroup];
  v6 = [cloudGroup cloudRecordWithObjectID:dCopy];

  return v6;
}

- (void)cachedCloudRecordWithObjectID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  cloudGroup = [(HMDCloudGroupChange *)self cloudGroup];
  [cloudGroup cloudRecordWithObjectID:dCopy completionHandler:handlerCopy];
}

- (id)cloudRecordWithObjectID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v5 = [(HMDCloudGroupChange *)self changeWithObjectID:dCopy];
    cloudRecord = [v5 cloudRecord];
    v7 = cloudRecord;
    if (cloudRecord)
    {
      v8 = cloudRecord;
    }

    else
    {
      v8 = [(HMDCloudGroupChange *)self cachedCloudRecordWithObjectID:dCopy];
    }

    v13 = v8;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@ObjectID not specified", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMDCloudGroupChange)changeWithObjectID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    cloudChangeTree = [(HMDCloudGroupChange *)self cloudChangeTree];
    v6 = [cloudChangeTree objectForUUID:dCopy];

    change = [v6 change];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@ObjectID not specified", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    change = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return change;
}

- (BOOL)hasValidChanges
{
  cloudChangeTree = [(HMDCloudGroupChange *)self cloudChangeTree];
  hasValidChanges = [cloudChangeTree hasValidChanges];

  return hasValidChanges;
}

- (NSArray)processedTransactionStoreRowIDs
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  processedCloudChanges = [(HMDCloudGroupChange *)self processedCloudChanges];
  v5 = [processedCloudChanges countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(processedCloudChanges);
        }

        rowIDs = [*(*(&v13 + 1) + 8 * i) rowIDs];
        [v3 addObjectsFromArray:rowIDs];
      }

      v6 = [processedCloudChanges countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  v11 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (NSArray)allTransactionStoreRowIDs
{
  cloudChangeTree = [(HMDCloudGroupChange *)self cloudChangeTree];
  allTransactionStoreRowIDs = [cloudChangeTree allTransactionStoreRowIDs];

  return allTransactionStoreRowIDs;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [(HMDCloudGroupChange *)self shortDescription];
  cloudChanges = [(HMDCloudGroupChange *)self cloudChanges];
  processingCloudChanges = [(HMDCloudGroupChange *)self processingCloudChanges];
  processedCloudChanges = [(HMDCloudGroupChange *)self processedCloudChanges];
  v8 = [v3 stringWithFormat:@"<%@, Pending = %@, Processing = %@, Processed = %@>", shortDescription, cloudChanges, processingCloudChanges, processedCloudChanges];

  return v8;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  cloudGroup = [(HMDCloudGroupChange *)self cloudGroup];
  shortDescription2 = [cloudGroup shortDescription];
  v7 = [v3 stringWithFormat:@"%@ Group = <%@>", shortDescription, shortDescription2];

  return v7;
}

- (HMDCloudGroupChange)initWithGroup:(id)group temporaryCache:(BOOL)cache metricsDispatcher:(id)dispatcher
{
  groupCopy = group;
  dispatcherCopy = dispatcher;
  if (dispatcherCopy)
  {
    v10 = dispatcherCopy;
    v35.receiver = self;
    v35.super_class = HMDCloudGroupChange;
    v11 = [(HMDCloudGroupChange *)&v35 init];
    v12 = v11;
    if (v11)
    {
      objc_storeWeak(&v11->_cloudGroup, groupCopy);
      v12->_temporaryCache = cache;
      objc_storeStrong(&v12->_metricsDispatcher, dispatcher);
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
      v14 = objc_alloc(MEMORY[0x277CCAD78]);
      v15 = [v14 initWithUUIDString:*MEMORY[0x277CD23C8]];
      if (v15)
      {
        [v13 addObject:v15];
      }

      v16 = objc_alloc(MEMORY[0x277CCAD78]);
      cloudZone = [groupCopy cloudZone];
      v18 = [cloudZone zone];
      zoneID = [v18 zoneID];
      zoneName = [zoneID zoneName];
      v21 = [v16 initWithUUIDString:zoneName];

      if (v21)
      {
        [v13 addObject:v21];
      }

      v22 = [[HMDCloudChangeTree alloc] initWithRootUUIDs:v13];
      cloudChangeTree = v12->_cloudChangeTree;
      v12->_cloudChangeTree = v22;

      array = [MEMORY[0x277CBEB18] array];
      cloudChanges = v12->_cloudChanges;
      v12->_cloudChanges = array;

      array2 = [MEMORY[0x277CBEB18] array];
      processingCloudChanges = v12->_processingCloudChanges;
      v12->_processingCloudChanges = array2;

      array3 = [MEMORY[0x277CBEB18] array];
      processedCloudChanges = v12->_processedCloudChanges;
      v12->_processedCloudChanges = array3;
    }

    return v12;
  }

  else
  {
    v31 = _HMFPreconditionFailure();
    return [(HMDCloudGroupChange *)v31 initWithGroup:v32 temporaryCache:v33, v34];
  }
}

- (HMDCloudGroupChange)init
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