@interface CALNNotificationRecordsDiffApplier
+ (void)applyDiff:(id)a3 toNotificationManager:(id)a4;
+ (void)refreshNotificationManager:(id)a3 withNotificationRecords:(id)a4 forSourceWithIdentifier:(id)a5 filteredBySourceClientIDs:(id)a6;
@end

@implementation CALNNotificationRecordsDiffApplier

+ (void)applyDiff:(id)a3 toNotificationManager:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[CALNLogSubsystem defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = [v5 removedRecords];
    v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
    v11 = MEMORY[0x277CCABB0];
    v12 = [v5 modifiedRecords];
    v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
    v14 = MEMORY[0x277CCABB0];
    v15 = [v5 addedRecords];
    v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
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
  v17 = [v5 removedRecords];
  v18 = [v17 countByEnumeratingWithState:&v44 objects:v50 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v44 + 1) + 8 * i);
        v23 = [v22 sourceIdentifier];
        v24 = [v22 sourceClientIdentifier];
        [v6 removeRecordWithSourceIdentifier:v23 sourceClientIdentifier:v24];
      }

      v19 = [v17 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v19);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = [v5 modifiedRecords];
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v49 count:16];
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
          objc_enumerationMutation(v25);
        }

        [v6 updateRecord:*(*(&v40 + 1) + 8 * j)];
      }

      v27 = [v25 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v27);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = [v5 addedRecords];
  v31 = [v30 countByEnumeratingWithState:&v36 objects:v48 count:16];
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
          objc_enumerationMutation(v30);
        }

        [v6 addRecord:*(*(&v36 + 1) + 8 * k)];
      }

      v32 = [v30 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v32);
  }

  v35 = *MEMORY[0x277D85DE8];
}

+ (void)refreshNotificationManager:(id)a3 withNotificationRecords:(id)a4 forSourceWithIdentifier:(id)a5 filteredBySourceClientIDs:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v14 = [v12 fetchRecordsWithSourceIdentifier:a5];
  v13 = [CALNNotificationRecordsDiffer diffOldRecords:v14 withNewRecords:v11 filteredBySourceClientIDs:v10];

  [a1 applyDiff:v13 toNotificationManager:v12];
}

@end