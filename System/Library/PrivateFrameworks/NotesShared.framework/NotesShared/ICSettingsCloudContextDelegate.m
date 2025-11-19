@interface ICSettingsCloudContextDelegate
- (BOOL)cloudContext:(id)a3 hasContextOptions:(unint64_t)a4;
- (BOOL)deleteCloudObject:(id)a3;
- (ICSettingsCloudContextDelegate)init;
- (id)accountIDsForCloudContext:(id)a3 managedObjectContext:(id)a4;
- (id)backgroundContextForCloudContext:(id)a3;
- (id)persistentStoreCoordinatorForCloudContext:(id)a3;
- (id)viewContextForCloudContext:(id)a3;
- (void)cloudContext:(id)a3 sharedZoneWasDeleted:(id)a4 accountID:(id)a5;
- (void)cloudContext:(id)a3 userDidDeleteRecordZoneWithID:(id)a4 accountID:(id)a5;
@end

@implementation ICSettingsCloudContextDelegate

- (ICSettingsCloudContextDelegate)init
{
  v3.receiver = self;
  v3.super_class = ICSettingsCloudContextDelegate;
  return [(ICSettingsCloudContextDelegate *)&v3 init];
}

- (void)cloudContext:(id)a3 userDidDeleteRecordZoneWithID:(id)a4 accountID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[ICCloudContext notesZoneID];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = +[ICNoteContext sharedContext];
    v12 = [v11 snapshotManagedObjectContext];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __87__ICSettingsCloudContextDelegate_cloudContext_userDidDeleteRecordZoneWithID_accountID___block_invoke;
    v23[3] = &unk_278194DC0;
    v13 = &v24;
    v14 = v25;
    v24 = v8;
    v25[0] = v12;
    v25[1] = self;
    v15 = v12;
    [v15 performBlockAndWait:v23];
LABEL_5:

    goto LABEL_6;
  }

  v16 = +[ICCloudContext metadataZoneID];
  v17 = [v7 isEqual:v16];

  if (v17)
  {
    v18 = +[ICNoteContext sharedContext];
    v19 = [v18 managedObjectContext];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __87__ICSettingsCloudContextDelegate_cloudContext_userDidDeleteRecordZoneWithID_accountID___block_invoke_15;
    v20[3] = &unk_278194AD8;
    v13 = &v21;
    v14 = &v22;
    v21 = v8;
    v22 = v18;
    v15 = v18;
    [v19 performBlock:v20];

    goto LABEL_5;
  }

LABEL_6:
}

void __87__ICSettingsCloudContextDelegate_cloudContext_userDidDeleteRecordZoneWithID_accountID___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [ICAccount accountWithIdentifier:*(a1 + 32) context:*(a1 + 40)];
  v4 = [v3 allChildObjects];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v9 isDeletable])
        {
          [*(a1 + 48) deleteCloudObject:v9];
        }

        else
        {
          [v9 clearServerRecords];
          [v9 setInCloud:0];
          [v9 updateChangeCountWithReason:@"User deleted record zone"];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v10 = [v3 defaultFolder];

  if (!v10)
  {
    v11 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __87__ICSettingsCloudContextDelegate_cloudContext_userDidDeleteRecordZoneWithID_accountID___block_invoke_cold_1((a1 + 32), v11);
    }
  }

  if ([*(a1 + 40) hasChanges])
  {
    v12 = *(a1 + 40);
    v16 = 0;
    v13 = [v12 save:&v16];
    v14 = v16;
    if ((v13 & 1) == 0)
    {
      v15 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __87__ICSettingsCloudContextDelegate_cloudContext_userDidDeleteRecordZoneWithID_accountID___block_invoke_cold_2(v2, v14, v15);
      }
    }
  }
}

void __87__ICSettingsCloudContextDelegate_cloudContext_userDidDeleteRecordZoneWithID_accountID___block_invoke_15(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) managedObjectContext];
  v3 = [ICAccount accountWithIdentifier:v1 context:v2];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 deviceMigrationStates];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v20 + 1) + 8 * v9++) deleteFromLocalDatabase];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v3 legacyTombstones];
  v11 = [v10 copy];

  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15++) deleteFromLocalDatabase];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }

  [ICNoteContext setLegacyNotesDisabled:0];
  [v3 setNeedsToBeFetchedFromCloud:1];
}

- (BOOL)deleteCloudObject:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 isDeleted] & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 objectsToBeDeletedBeforeThisObject];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (![(ICSettingsCloudContextDelegate *)self deleteCloudObject:*(*(&v12 + 1) + 8 * i)])
          {

            v10 = 0;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    [v4 deleteFromLocalDatabase];
  }

  v10 = 1;
LABEL_13:

  return v10;
}

- (void)cloudContext:(id)a3 sharedZoneWasDeleted:(id)a4 accountID:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v8 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 ic_loggingDescription];
    *buf = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_DEFAULT, "Shared zone was deleted for account ID %@: %@", buf, 0x16u);
  }

  v10 = +[ICNoteContext sharedContext];
  v11 = [v10 snapshotManagedObjectContext];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__ICSettingsCloudContextDelegate_cloudContext_sharedZoneWasDeleted_accountID___block_invoke;
  v15[3] = &unk_278194DC0;
  v16 = v6;
  v17 = v11;
  v18 = v7;
  v12 = v7;
  v13 = v11;
  v14 = v6;
  [v13 performBlockAndWait:v15];
}

void __78__ICSettingsCloudContextDelegate_cloudContext_sharedZoneWasDeleted_accountID___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAC30];
  v3 = [*(a1 + 32) ownerName];
  v4 = [v2 predicateWithFormat:@"zoneOwnerName == %@", v3];

  v26 = v4;
  v5 = [ICCloudSyncingObject ic_objectsMatchingPredicate:v4 context:*(a1 + 40)];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v28)
  {
    v6 = "com.apple.notes";
    v7 = "Cloud";
    v8 = *v30;
    v27 = *v30;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 recordID];
        v12 = [v11 zoneID];
        v13 = [v12 isEqual:*(a1 + 32)];

        v14 = os_log_create(v6, v7);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            v16 = [v10 shortLoggingDescription];
            v17 = *(a1 + 48);
            *buf = 138412546;
            v34 = v16;
            v35 = 2112;
            v36 = v17;
            _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "Deleting shared %@ for accountID %@", buf, 0x16u);
          }

          [v10 deleteFromLocalDatabase];
        }

        else
        {
          if (v15)
          {
            v18 = [v10 shortLoggingDescription];
            v19 = [v10 recordID];
            v20 = [v19 zoneID];
            [v20 ic_loggingDescription];
            v21 = v7;
            v22 = v6;
            v24 = v23 = v5;
            v25 = *(a1 + 48);
            *buf = 138412802;
            v34 = v18;
            v35 = 2112;
            v36 = v24;
            v37 = 2112;
            v38 = v25;
            _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "Not deleting shared %@ in wrong zone %@ for account ID %@", buf, 0x20u);

            v5 = v23;
            v6 = v22;
            v7 = v21;
            v8 = v27;
          }
        }
      }

      v28 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v28);
  }

  [*(a1 + 40) ic_save];
}

- (id)accountIDsForCloudContext:(id)a3 managedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __81__ICSettingsCloudContextDelegate_accountIDsForCloudContext_managedObjectContext___block_invoke;
  v13 = &unk_278194D68;
  v7 = v6;
  v14 = v7;
  v15 = &v16;
  [v7 performBlockAndWait:&v10];
  v8 = [v17[5] copy];

  _Block_object_dispose(&v16, 8);

  return v8;
}

void __81__ICSettingsCloudContextDelegate_accountIDsForCloudContext_managedObjectContext___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [ICAccount allCloudKitAccountsInContext:*(a1 + 32)];
  if ([v2 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(*(a1 + 40) + 8) + 40);
          v9 = [*(*(&v10 + 1) + 8 * v7) identifier];
          [v8 ic_addNonNilObject:v9];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (id)persistentStoreCoordinatorForCloudContext:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 persistentStoreCoordinator];

  return v4;
}

- (id)viewContextForCloudContext:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];

  return v4;
}

- (id)backgroundContextForCloudContext:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 workerManagedObjectContext];

  return v4;
}

- (BOOL)cloudContext:(id)a3 hasContextOptions:(unint64_t)a4
{
  v5 = +[ICNoteContext sharedContext];
  LOBYTE(a4) = [v5 hasContextOptions:a4];

  return a4;
}

void __87__ICSettingsCloudContextDelegate_cloudContext_userDidDeleteRecordZoneWithID_accountID___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Error recreating default folder for CloudKit account after the user purged the zone for account ID %@", &v3, 0xCu);
}

void __87__ICSettingsCloudContextDelegate_cloudContext_userDidDeleteRecordZoneWithID_accountID___block_invoke_cold_2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Error saving after notes zone deleted by user for account ID %@: %@", &v4, 0x16u);
}

@end