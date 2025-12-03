@interface CALNNotificationRecordsDiffApplier
+ (void)applyDiff:(id)diff toNotificationManager:(id)manager;
+ (void)refreshNotificationManager:(id)manager withNotificationRecords:(id)records forSourceWithIdentifier:(id)identifier filteredBySourceClientIDs:(id)ds;
@end

@implementation CALNNotificationRecordsDiffApplier

+ (void)applyDiff:(id)diff toNotificationManager:(id)manager
{
  v57 = *MEMORY[0x277D85DE8];
  diffCopy = diff;
  managerCopy = manager;
  v7 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    removedRecords = [diffCopy removedRecords];
    v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(removedRecords, "count")}];
    v11 = MEMORY[0x277CCABB0];
    modifiedRecords = [diffCopy modifiedRecords];
    v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(modifiedRecords, "count")}];
    v14 = MEMORY[0x277CCABB0];
    addedRecords = [diffCopy addedRecords];
    v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(addedRecords, "count")}];
    *buf = 138412802;
    v52 = v10;
    v53 = 2112;
    v54 = v13;
    v55 = 2112;
    v56 = v16;
    _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Applying diff to notification manager. Removed: %@, Modified: %@, Added: %@", buf, 0x20u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  removedRecords2 = [diffCopy removedRecords];
  v18 = [removedRecords2 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(removedRecords2);
        }

        v22 = *(*(&v44 + 1) + 8 * i);
        sourceIdentifier = [v22 sourceIdentifier];
        sourceClientIdentifier = [v22 sourceClientIdentifier];
        [managerCopy removeRecordWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier];
      }

      v19 = [removedRecords2 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v19);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  modifiedRecords2 = [diffCopy modifiedRecords];
  v26 = [modifiedRecords2 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(modifiedRecords2);
        }

        [managerCopy updateRecord:*(*(&v40 + 1) + 8 * j)];
      }

      v27 = [modifiedRecords2 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v27);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  addedRecords2 = [diffCopy addedRecords];
  v31 = [addedRecords2 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v37;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v37 != v33)
        {
          objc_enumerationMutation(addedRecords2);
        }

        [managerCopy addRecord:*(*(&v36 + 1) + 8 * k)];
      }

      v32 = [addedRecords2 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v32);
  }

  v35 = *MEMORY[0x277D85DE8];
}

+ (void)refreshNotificationManager:(id)manager withNotificationRecords:(id)records forSourceWithIdentifier:(id)identifier filteredBySourceClientIDs:(id)ds
{
  dsCopy = ds;
  recordsCopy = records;
  managerCopy = manager;
  v14 = [managerCopy fetchRecordsWithSourceIdentifier:identifier];
  v13 = [CALNNotificationRecordsDiffer diffOldRecords:v14 withNewRecords:recordsCopy filteredBySourceClientIDs:dsCopy];

  [self applyDiff:v13 toNotificationManager:managerCopy];
}

@end