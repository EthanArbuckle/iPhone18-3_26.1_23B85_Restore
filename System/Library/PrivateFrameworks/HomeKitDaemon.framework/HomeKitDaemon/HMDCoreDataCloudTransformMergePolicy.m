@interface HMDCoreDataCloudTransformMergePolicy
- (BOOL)resolveOptimisticLockingVersionConflicts:(id)a3 error:(id *)a4;
- (HMDCoreDataCloudTransformMergePolicy)init;
@end

@implementation HMDCoreDataCloudTransformMergePolicy

- (BOOL)resolveOptimisticLockingVersionConflicts:(id)a3 error:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v13 = [v12 sourceObject];
        v14 = [v13 isDeleted];

        if (v14)
        {
          v15 = [v12 sourceObject];
          [v6 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v9);
  }

  v38.receiver = self;
  v38.super_class = HMDCoreDataCloudTransformMergePolicy;
  v16 = [(NSMergePolicy *)&v38 resolveOptimisticLockingVersionConflicts:v7 error:a4];
  v17 = v16;
  if (v16)
  {
    v30 = v16;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = v6;
    obj = v6;
    v18 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v34 + 1) + 8 * j);
          v23 = [v22 managedObjectContext];
          [v23 refreshObject:v22 mergeChanges:0];
          [v23 deleteObject:v22];
          v24 = objc_autoreleasePoolPush();
          v25 = self;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543618;
            v44 = v27;
            v45 = 2112;
            v46 = v22;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Delete trumps other changes for %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
        }

        v19 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v19);
    }

    v6 = v31;
    v17 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v17;
}

- (HMDCoreDataCloudTransformMergePolicy)init
{
  v3.receiver = self;
  v3.super_class = HMDCoreDataCloudTransformMergePolicy;
  return [(NSMergePolicy *)&v3 initWithMergeType:1];
}

@end