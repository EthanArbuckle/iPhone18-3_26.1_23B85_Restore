@interface HMDCoreDataCloudStoreTransactionLogEvent
+ (id)eventForUpdates:(id)a3 inserts:(id)a4 deletes:(id)a5 transactionAuthor:(id)a6;
+ (void)countMKFCKEntitiesInChangeSet:(id)a3 entitiesCount:(id)a4;
+ (void)trimChangeSetForUnchangedValues:(id)a3;
- (HMDCoreDataCloudStoreTransactionLogEvent)initWithChangeSet:(id)a3 transactionAuthor:(id)a4;
@end

@implementation HMDCoreDataCloudStoreTransactionLogEvent

- (HMDCoreDataCloudStoreTransactionLogEvent)initWithChangeSet:(id)a3 transactionAuthor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDCoreDataCloudStoreTransactionLogEvent;
  v9 = [(HMMLogEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reasons, a3);
    objc_storeStrong(&v10->_transactionAuthor, a4);
  }

  return v10;
}

+ (id)eventForUpdates:(id)a3 inserts:(id)a4 deletes:(id)a5 transactionAuthor:(id)a6
{
  v9 = a6;
  v10 = MEMORY[0x277CCA940];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v10);
  v15 = [v13 mutableCopy];

  [objc_opt_class() trimChangeSetForUnchangedValues:v15];
  [objc_opt_class() countMKFCKEntitiesInChangeSet:v15 entitiesCount:v14];
  [objc_opt_class() countMKFCKEntitiesInChangeSet:v12 entitiesCount:v14];

  [objc_opt_class() countMKFCKEntitiesInChangeSet:v11 entitiesCount:v14];
  if ([v14 count])
  {
    v16 = [[HMDCoreDataCloudStoreTransactionLogEvent alloc] initWithChangeSet:v14 transactionAuthor:v9];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)countMKFCKEntitiesInChangeSet:(id)a3 entitiesCount:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v27 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v29;
    *&v9 = 138543618;
    v25 = v9;
    v26 = a1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v28 + 1) + 8 * i) entity];
        v14 = [v13 name];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v14)
        {
          [v27 addObject:v14];
          goto LABEL_17;
        }

        if (v14)
        {
          v15 = +[MKFCloudSyncMetadata entityName];
          v16 = [v14 isEqualToString:v15];

          if (v16)
          {
            goto LABEL_17;
          }

          v17 = objc_autoreleasePoolPush();
          v18 = a1;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = HMFGetLogIdentifier();
            *buf = v25;
            v33 = v20;
            v34 = 2112;
            v35 = v14;
            v21 = v19;
            v22 = "%{public}@NSManagedObject not of type MKFCKModel, name: %@";
            v23 = 22;
LABEL_15:
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, v22, buf, v23);

            a1 = v26;
          }
        }

        else
        {
          v17 = objc_autoreleasePoolPush();
          v18 = a1;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543362;
            v33 = v20;
            v21 = v19;
            v22 = "%{public}@NSManagedObject entity has no name";
            v23 = 12;
            goto LABEL_15;
          }
        }

        objc_autoreleasePoolPop(v17);
LABEL_17:
      }

      v10 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v10);
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (void)trimChangeSetForUnchangedValues:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v27;
    *&v8 = 138543618;
    v23 = v8;
    v24 = a1;
    v25 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if (([v12 hasPersistentChangedValues] & 1) == 0)
        {
          [v5 addObject:v12];
          v13 = objc_autoreleasePoolPush();
          v14 = a1;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = HMFGetLogIdentifier();
            v17 = [v12 entity];
            [v17 name];
            v18 = v9;
            v19 = v6;
            v21 = v20 = v5;
            *buf = v23;
            v31 = v16;
            v32 = 2112;
            v33 = v21;
            _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Trimmed: NSManagedObject %@ has no changes to process", buf, 0x16u);

            v5 = v20;
            v6 = v19;
            v9 = v18;

            a1 = v24;
            v10 = v25;
          }

          objc_autoreleasePoolPop(v13);
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v9);
  }

  [v6 minusSet:v5];
  v22 = *MEMORY[0x277D85DE8];
}

@end