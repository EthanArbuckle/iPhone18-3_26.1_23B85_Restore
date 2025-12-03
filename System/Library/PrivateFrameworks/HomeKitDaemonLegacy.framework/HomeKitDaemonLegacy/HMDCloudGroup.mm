@interface HMDCloudGroup
+ (id)logCategory;
+ (id)shortDescription;
+ (void)createGroupWithRootRecordName:(id)name owner:(id)owner subscriptionName:(id)subscriptionName cloudZone:(id)zone completion:(id)completion;
- (BOOL)doRecordsExistInCache;
- (BOOL)isRootRecord:(id)record;
- (BOOL)isRootRecordName:(id)name;
- (CKRecordID)privateZoneRootRecordID;
- (HMDCloudCache)cache;
- (HMDCloudGroup)init;
- (HMDCloudGroup)initWithBackingStoreCacheGroup:(id)group cloudZone:(id)zone;
- (HMDCloudRecord)rootRecord;
- (HMDCloudZone)cloudZone;
- (NSString)description;
- (NSString)rootRecordName;
- (NSUUID)parentIdentifier;
- (NSUUID)rootRecordObjectID;
- (id)__cloudRecordWithObjectID:(id)d;
- (id)cloudRecordWithName:(id)name;
- (id)cloudRecordWithObjectID:(id)d;
- (id)logIdentifier;
- (id)rootRecordModelObject;
- (id)shortDescription;
- (void)allDescendentsCloudRecordsForParentID:(id)d completionHandler:(id)handler;
- (void)cloudRecordWithName:(id)name completionHandler:(id)handler;
- (void)cloudRecordWithNames:(id)names completionHandler:(id)handler;
- (void)cloudRecordWithObjectID:(id)d completionHandler:(id)handler;
- (void)cloudRecordWithObjectIDs:(id)ds completionHandler:(id)handler;
- (void)cloudRecordsForParentID:(id)d completionHandler:(id)handler;
- (void)deleteCloudRecord:(id)record;
- (void)deleteCloudRecordNames:(id)names;
- (void)fetchCloudRecordMap:(id)map;
- (void)rootRecordCompletionHandler:(id)handler;
- (void)updateCloudRecord:(id)record;
- (void)updateCloudRecord:(id)record completionHandler:(id)handler;
@end

@implementation HMDCloudGroup

- (HMDCloudZone)cloudZone
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudZone);

  return WeakRetained;
}

- (HMDCloudCache)cache
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);

  return WeakRetained;
}

- (void)deleteCloudRecord:(id)record
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (record)
  {
    recordName = [record recordName];
    v7[0] = recordName;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [(HMDCloudGroup *)self deleteCloudRecordNames:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deleteCloudRecordNames:(id)names
{
  v32 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v5 = namesCopy;
  if (namesCopy && [namesCopy count])
  {
    objc_initWeak(&location, self);
    v6 = [HMDBackingStoreCacheDeleteRecordOperation alloc];
    backingStoreGroup = [(HMDCloudGroup *)self backingStoreGroup];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __40__HMDCloudGroup_deleteCloudRecordNames___block_invoke;
    v22[3] = &unk_2797338E8;
    objc_copyWeak(&v24, &location);
    v8 = v5;
    v23 = v8;
    v9 = [(HMDBackingStoreCacheDeleteRecordOperation *)v6 initWithGroup:backingStoreGroup recordNames:v8 resultBlock:v22];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      backingStoreGroup2 = [(HMDCloudGroup *)selfCopy backingStoreGroup];
      *buf = 138543874;
      v27 = v13;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = backingStoreGroup2;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Deleting cloud record names %@ in group %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    cache = [(HMDCloudGroup *)selfCopy cache];
    backingStore = [cache backingStore];
    [backingStore submit:v9];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Record names where not specified", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __40__HMDCloudGroup_deleteCloudRecordNames___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!v3 && WeakRetained)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([v5 isRootRecordName:{*(*(&v19 + 1) + 8 * v10), v19}])
          {
            v11 = [v5 cloudZone];
            [v11 setRecordsAvailable:0];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v31 count:16];
      }

      while (v8);
    }

    v12 = objc_autoreleasePoolPush();
    v13 = v5;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 32);
      v17 = [v13 backingStoreGroup];
      *buf = 138544130;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = 0;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Completed deleting cloud record names %@ in group %@ with error %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateCloudRecord:(id)record completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  handlerCopy = handler;
  if (recordCopy)
  {
    objc_initWeak(&location, self);
    v8 = [HMDBackingStoreCacheUpdateRecordOperation alloc];
    backingStoreGroup = [(HMDCloudGroup *)self backingStoreGroup];
    record = [recordCopy record];
    cachedData = [recordCopy cachedData];
    objectEncoding = [recordCopy objectEncoding];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __53__HMDCloudGroup_updateCloudRecord_completionHandler___block_invoke;
    v28 = &unk_2797346E0;
    objc_copyWeak(&v31, &location);
    v13 = recordCopy;
    v29 = v13;
    v30 = handlerCopy;
    v14 = [(HMDBackingStoreCacheUpdateRecordOperation *)v8 initWithGroup:backingStoreGroup record:record data:cachedData encoding:objectEncoding resultBlock:&v25];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      objectID = [v13 objectID];
      uUIDString = [objectID UUIDString];
      recordName = [v13 recordName];
      *buf = 138543874;
      v34 = v18;
      v35 = 2112;
      v36 = uUIDString;
      v37 = 2112;
      v38 = recordName;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Caching cloud record %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    cache = [(HMDCloudGroup *)selfCopy cache];
    backingStore = [cache backingStore];
    [backingStore submit:v14];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __53__HMDCloudGroup_updateCloudRecord_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = WeakRetained;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [v6 backingStoreGroup];
        v20 = 138543874;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        v24 = 2112;
        v25 = v3;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to cache cloud record in group %@ with error %@", &v20, 0x20u);
      }
    }

    else
    {
      v10 = [*(a1 + 32) recordName];
      v11 = [WeakRetained isRootRecordName:v10];

      if (v11)
      {
        v12 = [WeakRetained cloudZone];
        [v12 setRecordsAvailable:1];
      }

      v5 = objc_autoreleasePoolPush();
      v13 = WeakRetained;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 32) objectID];
        v16 = [v15 UUIDString];
        v17 = [*(a1 + 32) recordName];
        v20 = 138544130;
        v21 = v14;
        v22 = 2112;
        v23 = v16;
        v24 = 2112;
        v25 = v17;
        v26 = 2112;
        v27 = 0;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Completed caching cloud record %@/%@ with error %@", &v20, 0x2Au);
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, v3);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateCloudRecord:(id)record
{
  v37 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (recordCopy)
  {
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    objc_initWeak(&location, self);
    v6 = [HMDBackingStoreCacheUpdateRecordOperation alloc];
    backingStoreGroup = [(HMDCloudGroup *)self backingStoreGroup];
    record = [recordCopy record];
    cachedData = [recordCopy cachedData];
    objectEncoding = [recordCopy objectEncoding];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __35__HMDCloudGroup_updateCloudRecord___block_invoke;
    v26 = &unk_279731988;
    objc_copyWeak(&v29, &location);
    v11 = recordCopy;
    v27 = v11;
    v12 = v5;
    v28 = v12;
    v13 = [(HMDBackingStoreCacheUpdateRecordOperation *)v6 initWithGroup:backingStoreGroup record:record data:cachedData encoding:objectEncoding resultBlock:&v23];

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      recordName = [v11 recordName];
      backingStoreGroup2 = [(HMDCloudGroup *)selfCopy backingStoreGroup];
      *buf = 138543874;
      v32 = v17;
      v33 = 2112;
      v34 = recordName;
      v35 = 2112;
      v36 = backingStoreGroup2;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Caching cloud record %@ in group %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    cache = [(HMDCloudGroup *)selfCopy cache];
    backingStore = [cache backingStore];
    [backingStore submit:v13];

    dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __35__HMDCloudGroup_updateCloudRecord___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = WeakRetained;
      v7 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
LABEL_10:

        objc_autoreleasePoolPop(v5);
        goto LABEL_11;
      }

      v8 = HMFGetLogIdentifier();
      v9 = [v6 backingStoreGroup];
      v18 = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v3;
      v10 = "%{public}@Failed to cache cloud record in group %@ with error %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v13 = [*(a1 + 32) recordName];
      v14 = [WeakRetained isRootRecordName:v13];

      if (v14)
      {
        v15 = [WeakRetained cloudZone];
        [v15 setRecordsAvailable:1];
      }

      v5 = objc_autoreleasePoolPush();
      v16 = WeakRetained;
      v7 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      v8 = HMFGetLogIdentifier();
      v9 = [v16 backingStoreGroup];
      v18 = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = 0;
      v10 = "%{public}@Completed caching cloud record in group %@ with error %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(&dword_2531F8000, v11, v12, v10, &v18, 0x20u);

    goto LABEL_10;
  }

LABEL_11:
  dispatch_group_leave(*(a1 + 40));

  v17 = *MEMORY[0x277D85DE8];
}

- (id)__cloudRecordWithObjectID:(id)d
{
  v27[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    cache = [(HMDCloudGroup *)self cache];
    backingStore = [cache backingStore];
    backingStoreGroup = [(HMDCloudGroup *)self backingStoreGroup];
    v27[0] = dCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    v20 = 0;
    v9 = [backingStore __fetchWithGroup:backingStoreGroup uuids:v8 error:&v20];
    v10 = v20;

    if (v10 || ![v9 count])
    {
      v11 = 0;
    }

    else
    {
      firstObject = [v9 firstObject];
      if (firstObject)
      {
        cloudZone = [(HMDCloudGroup *)self cloudZone];
        v11 = [cloudZone createCloudRecordWithFetchResult:firstObject];
      }

      else
      {
        v11 = 0;
      }
    }

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = dCopy;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Completed fetch cloud record for ID %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v11 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)cloudRecordWithObjectID:(id)d
{
  v40[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__59239;
  v34 = __Block_byref_object_dispose__59240;
  v35 = 0;
  if (dCopy)
  {
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v6 = [HMDBackingStoreCacheFetchRecords alloc];
    backingStoreGroup = [(HMDCloudGroup *)self backingStoreGroup];
    v40[0] = dCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __41__HMDCloudGroup_cloudRecordWithObjectID___block_invoke;
    v25 = &unk_279727F18;
    v29 = &v30;
    selfCopy = self;
    v9 = dCopy;
    v27 = v9;
    v10 = v5;
    v28 = v10;
    v11 = [(HMDBackingStoreCacheFetchRecords *)v6 initWithGroup:backingStoreGroup uuids:v8 fetchResult:&v22];

    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v15;
      v38 = 2112;
      v39 = v9;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Fetching cloud record for ID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [(HMDCloudGroup *)selfCopy2 cache:v22];
    backingStore = [v16 backingStore];
    [backingStore submit:v11];

    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v18 = v31[5];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  _Block_object_dispose(&v30, 8);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __41__HMDCloudGroup_cloudRecordWithObjectID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if ([v5 count])
    {
      v7 = [v5 firstObject];
      if (v7)
      {
        v8 = [*(a1 + 32) cloudZone];
        v9 = [v8 createCloudRecordWithFetchResult:v7];
        v10 = *(*(a1 + 56) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }
    }

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      v18 = 138543874;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = 0;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Completed fetch cloud record for ID %@ with error %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  dispatch_group_leave(*(a1 + 48));

  v17 = *MEMORY[0x277D85DE8];
}

- (id)cloudRecordWithName:(id)name
{
  v40[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__59239;
  v34 = __Block_byref_object_dispose__59240;
  v35 = 0;
  if (nameCopy)
  {
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v6 = [HMDBackingStoreCacheFetchRecords alloc];
    backingStoreGroup = [(HMDCloudGroup *)self backingStoreGroup];
    v40[0] = nameCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __37__HMDCloudGroup_cloudRecordWithName___block_invoke;
    v25 = &unk_279727F18;
    v29 = &v30;
    selfCopy = self;
    v9 = nameCopy;
    v27 = v9;
    v10 = v5;
    v28 = v10;
    v11 = [(HMDBackingStoreCacheFetchRecords *)v6 initWithGroup:backingStoreGroup records:v8 fetchResult:&v22];

    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v15;
      v38 = 2112;
      v39 = v9;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Fetching cloud record for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [(HMDCloudGroup *)selfCopy2 cache:v22];
    backingStore = [v16 backingStore];
    [backingStore submit:v11];

    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v18 = v31[5];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  _Block_object_dispose(&v30, 8);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __37__HMDCloudGroup_cloudRecordWithName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if ([v5 count])
    {
      v7 = [v5 firstObject];
      if (v7)
      {
        v8 = [*(a1 + 32) cloudZone];
        v9 = [v8 createCloudRecordWithFetchResult:v7];
        v10 = *(*(a1 + 56) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }
    }

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      v18 = 138543874;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = 0;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Completed fetch cloud record for %@ with error %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  dispatch_group_leave(*(a1 + 48));

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)doRecordsExistInCache
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_doRecordsExistInCache)
  {
    v2 = 1;
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v5 = [HMDBackingStoreCacheFetchGroupInformation alloc];
    backingStoreGroup = [(HMDCloudGroup *)self backingStoreGroup];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __38__HMDCloudGroup_doRecordsExistInCache__block_invoke;
    v17[3] = &unk_279727EF0;
    v20 = &v21;
    v7 = v4;
    v18 = v7;
    selfCopy = self;
    v8 = [(HMDBackingStoreCacheFetchGroupInformation *)v5 initWithGroup:backingStoreGroup fetchResult:v17];

    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Fetching cloud group information", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    cache = [(HMDCloudGroup *)selfCopy2 cache];
    backingStore = [cache backingStore];
    [backingStore submit:v8];

    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v2 = *(v22 + 24);
    self->_doRecordsExistInCache = v2;

    _Block_object_dispose(&v21, 8);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2 & 1;
}

void __38__HMDCloudGroup_doRecordsExistInCache__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2 >= 1 && !v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Completed fetch cloud group information with error %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

- (HMDCloudRecord)rootRecord
{
  rootRecordName = [(HMDCloudGroup *)self rootRecordName];
  v4 = [(HMDCloudGroup *)self cloudRecordWithName:rootRecordName];

  if (!v4)
  {
    v5 = [HMDCloudRecord alloc];
    rootRecordObjectID = [(HMDCloudGroup *)self rootRecordObjectID];
    rootRecordName2 = [(HMDCloudGroup *)self rootRecordName];
    cloudZone = [(HMDCloudGroup *)self cloudZone];
    v4 = [(HMDCloudRecord *)v5 initWithObjectID:rootRecordObjectID recordName:rootRecordName2 cloudZone:cloudZone];
  }

  return v4;
}

- (void)rootRecordCompletionHandler:(id)handler
{
  handlerCopy = handler;
  rootRecordName = [(HMDCloudGroup *)self rootRecordName];
  [(HMDCloudGroup *)self cloudRecordWithName:rootRecordName completionHandler:handlerCopy];
}

- (void)allDescendentsCloudRecordsForParentID:(id)d completionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (d)
  {
    dCopy = d;
    v7 = MEMORY[0x277CBEA60];
    dCopy2 = d;
    v9 = [v7 arrayWithObjects:&dCopy count:1];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  [(HMDCloudGroup *)self _cloudRecordsForParentIDs:v9 recursive:1 completionHandler:handlerCopy, dCopy, v12];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cloudRecordsForParentID:(id)d completionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (d)
  {
    dCopy = d;
    v7 = MEMORY[0x277CBEA60];
    dCopy2 = d;
    v9 = [v7 arrayWithObjects:&dCopy count:1];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  [(HMDCloudGroup *)self _cloudRecordsForParentIDs:v9 recursive:0 completionHandler:handlerCopy, dCopy, v12];

  v10 = *MEMORY[0x277D85DE8];
}

void __71__HMDCloudGroup__cloudRecordsForParentIDs_recursive_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  v9 = 0;
  if (!v6 && WeakRetained)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * v14);
          v16 = [v8 cloudZone];
          v17 = [v16 createCloudRecordWithFetchResult:v15];

          if (v17)
          {
            [v9 addObject:v17];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v12);
    }

    v5 = v24;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = v8;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = HMFGetLogIdentifier();
    v22 = *(a1 + 32);
    *buf = 138543618;
    v30 = v21;
    v31 = 2112;
    v32 = v22;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Completed fetching child cloud records for parents %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  (*(*(a1 + 40) + 16))();

  v23 = *MEMORY[0x277D85DE8];
}

- (void)cloudRecordWithObjectID:(id)d completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (dCopy)
  {
    v14[0] = dCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__HMDCloudGroup_cloudRecordWithObjectID_completionHandler___block_invoke;
    v11[3] = &unk_279727EC8;
    v12 = dCopy;
    v13 = v8;
    [(HMDCloudGroup *)self cloudRecordWithObjectIDs:v9 completionHandler:v11];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __59__HMDCloudGroup_cloudRecordWithObjectID_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  if ([v9 count])
  {
    v7 = [v9 objectForKeyedSubscript:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v6);
  }
}

- (void)cloudRecordWithObjectIDs:(id)ds completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  handlerCopy = handler;
  if ([dsCopy count])
  {
    objc_initWeak(&location, self);
    v8 = [HMDBackingStoreCacheFetchRecords alloc];
    backingStoreGroup = [(HMDCloudGroup *)self backingStoreGroup];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __60__HMDCloudGroup_cloudRecordWithObjectIDs_completionHandler___block_invoke;
    v21 = &unk_27972B4E0;
    objc_copyWeak(&v24, &location);
    v23 = handlerCopy;
    v22 = dsCopy;
    v10 = [(HMDBackingStoreCacheFetchRecords *)v8 initWithGroup:backingStoreGroup uuids:v22 fetchResult:&v18];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Fetching cloud records from cache", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [(HMDCloudGroup *)selfCopy cache:v18];
    backingStore = [v15 backingStore];
    [backingStore submit:v10];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC10], MEMORY[0x277CBEBF8], 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __60__HMDCloudGroup_cloudRecordWithObjectIDs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v9 = [MEMORY[0x277CBEB18] arrayWithArray:*(a1 + 32)];
    v10 = v9;
    if (!v6)
    {
      v29 = v9;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = v5;
      v11 = v5;
      v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v32;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v32 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v31 + 1) + 8 * i);
            v17 = objc_autoreleasePoolPush();
            v18 = [WeakRetained cloudZone];
            v19 = [v18 createCloudRecordWithFetchResult:v16];

            if (v19)
            {
              v20 = [v19 objectID];
              [v8 setObject:v19 forKeyedSubscript:v20];
            }

            objc_autoreleasePoolPop(v17);
          }

          v13 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v13);
      }

      v21 = [v8 allKeys];
      v10 = v29;
      [v29 removeObjectsInArray:v21];

      v6 = 0;
      v5 = v30;
    }

    v22 = objc_autoreleasePoolPush();
    v23 = WeakRetained;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Completed fetching cloud records from cache with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = *(a1 + 40);
    if (v26)
    {
      (*(v26 + 16))(v26, v8, v10, v6);
    }
  }

  else
  {
    v27 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    (*(v27 + 16))(v27, 0, 0, v8);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)cloudRecordWithName:(id)name completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (nameCopy)
  {
    v14[0] = nameCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__HMDCloudGroup_cloudRecordWithName_completionHandler___block_invoke;
    v11[3] = &unk_279727EC8;
    v12 = nameCopy;
    v13 = v8;
    [(HMDCloudGroup *)self cloudRecordWithNames:v9 completionHandler:v11];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __55__HMDCloudGroup_cloudRecordWithName_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  if ([v9 count])
  {
    v7 = [v9 objectForKeyedSubscript:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v6);
  }
}

- (void)cloudRecordWithNames:(id)names completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  handlerCopy = handler;
  if ([namesCopy count])
  {
    objc_initWeak(&location, self);
    v8 = [HMDBackingStoreCacheFetchRecords alloc];
    backingStoreGroup = [(HMDCloudGroup *)self backingStoreGroup];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __56__HMDCloudGroup_cloudRecordWithNames_completionHandler___block_invoke;
    v21 = &unk_27972B4E0;
    objc_copyWeak(&v24, &location);
    v23 = handlerCopy;
    v22 = namesCopy;
    v10 = [(HMDBackingStoreCacheFetchRecords *)v8 initWithGroup:backingStoreGroup records:v22 fetchResult:&v18];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Fetching cloud records from cache", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [(HMDCloudGroup *)selfCopy cache:v18];
    backingStore = [v15 backingStore];
    [backingStore submit:v10];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC10], MEMORY[0x277CBEBF8], 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __56__HMDCloudGroup_cloudRecordWithNames_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    if (!v6)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v27 = v5;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            v15 = [WeakRetained cloudZone];
            v16 = [v15 createCloudRecordWithFetchResult:v14];

            if (v16)
            {
              v17 = [v16 recordName];
              [v8 setObject:v16 forKeyedSubscript:v17];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v11);
      }

      v5 = v27;
    }

    v18 = [MEMORY[0x277CBEB18] arrayWithArray:*(a1 + 32)];
    v19 = [v8 allKeys];
    [v18 removeObjectsInArray:v19];

    v20 = objc_autoreleasePoolPush();
    v21 = WeakRetained;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v23;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Completed fetching cloud records from cache with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = *(a1 + 40);
    if (v24)
    {
      (*(v24 + 16))(v24, v8, v18, v6);
    }
  }

  else
  {
    v25 = *(a1 + 40);
    v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    (*(v25 + 16))(v25, 0, 0, v8);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)fetchCloudRecordMap:(id)map
{
  mapCopy = map;
  v5 = [HMDBackingStoreCacheFetchRecordMappings alloc];
  backingStoreGroup = [(HMDCloudGroup *)self backingStoreGroup];
  v9 = [(HMDBackingStoreCacheFetchRecordMappings *)v5 initWithGroup:backingStoreGroup fetchResult:mapCopy];

  cache = [(HMDCloudGroup *)self cache];
  backingStore = [cache backingStore];
  [backingStore submit:v9];
}

- (BOOL)isRootRecord:(id)record
{
  recordID = [record recordID];
  recordName = [recordID recordName];
  LOBYTE(self) = [(HMDCloudGroup *)self isRootRecordName:recordName];

  return self;
}

- (BOOL)isRootRecordName:(id)name
{
  nameCopy = name;
  rootRecordName = [(HMDCloudGroup *)self rootRecordName];
  v6 = [rootRecordName isEqualToString:nameCopy];

  return v6;
}

- (CKRecordID)privateZoneRootRecordID
{
  v3 = objc_alloc(MEMORY[0x277CBC5D0]);
  rootRecordName = [(HMDCloudGroup *)self rootRecordName];
  cloudZone = [(HMDCloudGroup *)self cloudZone];
  v6 = [cloudZone zone];
  zoneID = [v6 zoneID];
  v8 = [v3 initWithRecordName:rootRecordName zoneID:zoneID];

  return v8;
}

- (id)rootRecordModelObject
{
  v3 = [HMDCloudGroupRootRecordModelObject alloc];
  rootRecordObjectID = [(HMDCloudGroup *)self rootRecordObjectID];
  parentIdentifier = [(HMDCloudGroup *)self parentIdentifier];
  v6 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:1 uuid:rootRecordObjectID parentUUID:parentIdentifier];

  return v6;
}

- (NSUUID)rootRecordObjectID
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  rootRecordName = [(HMDCloudGroup *)self rootRecordName];
  uUID = [v3 initWithUUIDString:rootRecordName];

  if (!uUID)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Root record objectID cannot be determined, generating a random", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  cloudZone = [(HMDCloudGroup *)self cloudZone];
  v11 = [cloudZone zone];
  zoneID = [v11 zoneID];
  zoneName = [zoneID zoneName];

  v14 = MEMORY[0x277CCAD78];
  v19 = zoneName;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v16 = [v14 hm_deriveUUIDFromBaseUUID:uUID identifierSalt:0 withSalts:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (NSUUID)parentIdentifier
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  cloudZone = [(HMDCloudGroup *)self cloudZone];
  v5 = [cloudZone zone];
  zoneID = [v5 zoneID];
  zoneName = [zoneID zoneName];
  uUID = [v3 initWithUUIDString:zoneName];

  if (!uUID)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  return uUID;
}

- (NSString)rootRecordName
{
  backingStoreGroup = [(HMDCloudGroup *)self backingStoreGroup];
  rootRecordName = [backingStoreGroup rootRecordName];

  return rootRecordName;
}

- (id)logIdentifier
{
  rootRecordName = [(HMDCloudGroup *)self rootRecordName];
  v3 = rootRecordName;
  if (rootRecordName)
  {
    v4 = rootRecordName;
  }

  else
  {
    v4 = @"UnknownRoot";
  }

  v5 = v4;

  return v4;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  shortDescription = [(HMDCloudGroup *)self shortDescription];
  v4 = [v2 stringWithFormat:@"<%@>", shortDescription];

  return v4;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  rootRecordName = [(HMDCloudGroup *)self rootRecordName];
  v6 = [v3 stringWithFormat:@"%@ Root Record = %@", shortDescription, rootRecordName];

  return v6;
}

- (HMDCloudGroup)initWithBackingStoreCacheGroup:(id)group cloudZone:(id)zone
{
  groupCopy = group;
  zoneCopy = zone;
  v13.receiver = self;
  v13.super_class = HMDCloudGroup;
  v9 = [(HMDCloudGroup *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backingStoreGroup, group);
    objc_storeWeak(&v10->_cloudZone, zoneCopy);
    cache = [zoneCopy cache];
    objc_storeWeak(&v10->_cache, cache);
  }

  return v10;
}

- (HMDCloudGroup)init
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

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_59288 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_59288, &__block_literal_global_33_59289);
  }

  v3 = logCategory__hmf_once_v2_59290;

  return v3;
}

uint64_t __28__HMDCloudGroup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_59290;
  logCategory__hmf_once_v2_59290 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (void)createGroupWithRootRecordName:(id)name owner:(id)owner subscriptionName:(id)subscriptionName cloudZone:(id)zone completion:(id)completion
{
  nameCopy = name;
  zoneCopy = zone;
  completionCopy = completion;
  subscriptionNameCopy = subscriptionName;
  ownerCopy = owner;
  v17 = [HMDBackingStoreCacheCreateGroupOperation alloc];
  backingStoreZone = [zoneCopy backingStoreZone];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __91__HMDCloudGroup_createGroupWithRootRecordName_owner_subscriptionName_cloudZone_completion___block_invoke;
  v28 = &unk_279727EA0;
  v29 = nameCopy;
  v30 = zoneCopy;
  v31 = completionCopy;
  selfCopy = self;
  v19 = completionCopy;
  v20 = zoneCopy;
  v21 = nameCopy;
  v22 = [(HMDBackingStoreCacheCreateGroupOperation *)v17 initWithZone:backingStoreZone owner:ownerCopy rootRecord:v21 subscriptionName:subscriptionNameCopy subscription:0 creationBlock:&v25];

  cache = [v20 cache];
  backingStore = [cache backingStore];
  [backingStore submit:v22];
}

void __91__HMDCloudGroup_createGroupWithRootRecordName_owner_subscriptionName_cloudZone_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 56);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v16 = 138543874;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create group %@ with error %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = 0;
  }

  else
  {
    v13 = *(a1 + 56);
    v12 = [objc_alloc(objc_opt_class()) initWithBackingStoreCacheGroup:v5 cloudZone:*(a1 + 40)];
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, v12, v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end