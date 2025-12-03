@interface HMDCoreDataCloudStoreTransactionLogEvent
+ (id)eventForUpdates:(id)updates inserts:(id)inserts deletes:(id)deletes transactionAuthor:(id)author;
+ (void)countMKFCKEntitiesInChangeSet:(id)set entitiesCount:(id)count;
+ (void)trimChangeSetForUnchangedValues:(id)values;
- (HMDCoreDataCloudStoreTransactionLogEvent)initWithChangeSet:(id)set transactionAuthor:(id)author;
@end

@implementation HMDCoreDataCloudStoreTransactionLogEvent

- (HMDCoreDataCloudStoreTransactionLogEvent)initWithChangeSet:(id)set transactionAuthor:(id)author
{
  setCopy = set;
  authorCopy = author;
  v12.receiver = self;
  v12.super_class = HMDCoreDataCloudStoreTransactionLogEvent;
  v9 = [(HMMLogEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reasons, set);
    objc_storeStrong(&v10->_transactionAuthor, author);
  }

  return v10;
}

+ (id)eventForUpdates:(id)updates inserts:(id)inserts deletes:(id)deletes transactionAuthor:(id)author
{
  authorCopy = author;
  v10 = MEMORY[0x277CCA940];
  deletesCopy = deletes;
  insertsCopy = inserts;
  updatesCopy = updates;
  v14 = objc_alloc_init(v10);
  v15 = [updatesCopy mutableCopy];

  [objc_opt_class() trimChangeSetForUnchangedValues:v15];
  [objc_opt_class() countMKFCKEntitiesInChangeSet:v15 entitiesCount:v14];
  [objc_opt_class() countMKFCKEntitiesInChangeSet:insertsCopy entitiesCount:v14];

  [objc_opt_class() countMKFCKEntitiesInChangeSet:deletesCopy entitiesCount:v14];
  if ([v14 count])
  {
    v16 = [[HMDCoreDataCloudStoreTransactionLogEvent alloc] initWithChangeSet:v14 transactionAuthor:authorCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)countMKFCKEntitiesInChangeSet:(id)set entitiesCount:(id)count
{
  v37 = *MEMORY[0x277D85DE8];
  setCopy = set;
  countCopy = count;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = setCopy;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v29;
    *&v9 = 138543618;
    v25 = v9;
    selfCopy = self;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v7);
        }

        entity = [*(*(&v28 + 1) + 8 * i) entity];
        name = [entity name];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && name)
        {
          [countCopy addObject:name];
          goto LABEL_17;
        }

        if (name)
        {
          v15 = +[MKFCloudSyncMetadata entityName];
          v16 = [name isEqualToString:v15];

          if (v16)
          {
            goto LABEL_17;
          }

          v17 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = HMFGetLogIdentifier();
            *buf = v25;
            v33 = v20;
            v34 = 2112;
            v35 = name;
            v21 = v19;
            v22 = "%{public}@NSManagedObject not of type MKFCKModel, name: %@";
            v23 = 22;
LABEL_15:
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, v22, buf, v23);

            self = selfCopy;
          }
        }

        else
        {
          v17 = objc_autoreleasePoolPush();
          selfCopy3 = self;
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

+ (void)trimChangeSetForUnchangedValues:(id)values
{
  v35 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v5 = [MEMORY[0x277CBEB58] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = valuesCopy;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v27;
    *&v8 = 138543618;
    v23 = v8;
    selfCopy = self;
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
          selfCopy2 = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = HMFGetLogIdentifier();
            entity = [v12 entity];
            [entity name];
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

            self = selfCopy;
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