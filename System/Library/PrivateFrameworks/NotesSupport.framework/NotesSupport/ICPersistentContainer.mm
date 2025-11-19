@interface ICPersistentContainer
+ (BOOL)isDataProtectionError:(id)a3;
+ (BOOL)isDatabaseMissingError:(id)a3;
+ (ICExclusiveLock)databaseOpenLock;
+ (id)managedObjectModel;
+ (id)oldManagedObjectModel;
+ (id)standardStoreOptions;
+ (void)oldManagedObjectModel;
- (BOOL)allowsCoreDataMigration;
- (BOOL)isReadOnly;
- (BOOL)isTooLowOnDiskSpace;
- (BOOL)loadPersistentStore:(id *)a3 storeCreatedHandler:(id)a4;
- (BOOL)migrateFromOldDataModel:(id *)a3;
- (ICPersistentContainer)initWithStoreURL:(id)a3 storeType:(id)a4 options:(id)a5 mergePolicy:(id)a6;
- (ICPersistentContainer)initWithStoreURL:(id)a3 storeType:(id)a4 options:(id)a5 mergePolicy:(id)a6 managedObjectModel:(id)a7;
- (NSURL)backupsDirectoryURL;
- (id)newBackgroundContext;
- (id)performBlockWithDatabaseOpenLock:(id)a3;
- (void)backupPersistentStoreWithError:(id)a3;
- (void)isTooLowOnDiskSpace;
- (void)setupPersistentStoreDescriptions;
- (void)setupViewContext;
- (void)vacuumStoreWithCompletionHandler:(id)a3;
@end

@implementation ICPersistentContainer

void __43__ICPersistentContainer_managedObjectModel__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (BOOL)allowsCoreDataMigration
{
  v2 = [(ICPersistentContainer *)self storeOptions];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695D380]];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (ICExclusiveLock)databaseOpenLock
{
  if (databaseOpenLock_onceToken != -1)
  {
    +[ICPersistentContainer databaseOpenLock];
  }

  v3 = databaseOpenLock__databaseOpenLock;

  return v3;
}

+ (id)standardStoreOptions
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = MEMORY[0x1E695E118];
  [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695D318]];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E695D380]];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E695D428]];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E695D3C0]];

  return v2;
}

+ (id)managedObjectModel
{
  if (managedObjectModel_onceToken != -1)
  {
    +[ICPersistentContainer managedObjectModel];
  }

  v3 = managedObjectModel_managedObjectModel;

  return v3;
}

void __43__ICPersistentContainer_managedObjectModel__block_invoke()
{
  v0 = +[ICPaths managedObjectModelURL];
  v1 = os_log_create("com.apple.notes", "CoreData");
  v2 = v1;
  if (v0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      __43__ICPersistentContainer_managedObjectModel__block_invoke_cold_1();
    }

    v3 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v0];
    v2 = managedObjectModel_managedObjectModel;
    managedObjectModel_managedObjectModel = v3;
  }

  else if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __43__ICPersistentContainer_managedObjectModel__block_invoke_cold_2();
  }
}

- (void)setupPersistentStoreDescriptions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695D6C8]);
  v4 = [(ICPersistentContainer *)self storeURL];
  v5 = [v3 initWithURL:v4];

  v6 = [(ICPersistentContainer *)self storeType];
  [v5 setType:v6];

  v7 = [(ICPersistentContainer *)self storeOptions];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__ICPersistentContainer_setupPersistentStoreDescriptions__block_invoke;
  v10[3] = &unk_1E8485028;
  v8 = v5;
  v11 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];

  if (v8)
  {
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [(NSPersistentContainer *)self setPersistentStoreDescriptions:v9];
  }
}

void __41__ICPersistentContainer_databaseOpenLock__block_invoke()
{
  v0 = [ICExclusiveLock alloc];
  v4 = +[ICPaths applicationDocumentsURL];
  v1 = [v4 path];
  v2 = [(ICExclusiveLock *)v0 initWithName:@"com.apple.notes.databaseopen.lock" cachePath:v1];
  v3 = databaseOpenLock__databaseOpenLock;
  databaseOpenLock__databaseOpenLock = v2;
}

- (void)setupViewContext
{
  v3 = [(ICPersistentContainer *)self mergePolicy];
  v4 = [(NSPersistentContainer *)self viewContext];
  [v4 setMergePolicy:v3];

  v5 = [(NSPersistentContainer *)self viewContext];
  [v5 setName:@"ViewContext"];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [MEMORY[0x1E696AE30] processInfo];
  v8 = [v6 stringWithFormat:@"%d", objc_msgSend(v7, "processIdentifier")];
  v9 = [(NSPersistentContainer *)self viewContext];
  [v9 setTransactionAuthor:v8];

  v10 = [(NSPersistentContainer *)self viewContext];
  [v10 setAutomaticallyMergesChangesFromParent:1];

  v11 = [(NSPersistentContainer *)self viewContext];
  [v11 setShouldDeleteInaccessibleFaults:1];
}

- (id)newBackgroundContext
{
  v6.receiver = self;
  v6.super_class = ICPersistentContainer;
  v3 = [(NSPersistentContainer *)&v6 newBackgroundContext];
  v4 = [(ICPersistentContainer *)self mergePolicy];
  [v3 setMergePolicy:v4];

  return v3;
}

- (ICPersistentContainer)initWithStoreURL:(id)a3 storeType:(id)a4 options:(id)a5 mergePolicy:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [objc_opt_class() managedObjectModel];
  v15 = [(ICPersistentContainer *)self initWithStoreURL:v13 storeType:v12 options:v11 mergePolicy:v10 managedObjectModel:v14];

  return v15;
}

- (ICPersistentContainer)initWithStoreURL:(id)a3 storeType:(id)a4 options:(id)a5 mergePolicy:(id)a6 managedObjectModel:(id)a7
{
  v13 = a3;
  v21 = a4;
  v20 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v13 lastPathComponent];
  v17 = [v16 stringByDeletingPathExtension];

  v22.receiver = self;
  v22.super_class = ICPersistentContainer;
  v18 = [(NSPersistentContainer *)&v22 initWithName:v17 managedObjectModel:v15];

  if (v18)
  {
    objc_storeStrong(&v18->_storeURL, a3);
    objc_storeStrong(&v18->_storeType, a4);
    objc_storeStrong(&v18->_storeOptions, a5);
    objc_storeStrong(&v18->_mergePolicy, a6);
    [(ICPersistentContainer *)v18 setupPersistentStoreDescriptions:v20];
  }

  return v18;
}

+ (id)oldManagedObjectModel
{
  v2 = +[ICPaths oldManagedObjectModelURL];
  v3 = os_log_create("com.apple.notes", "CoreData");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      +[ICPersistentContainer oldManagedObjectModel];
    }

    v5 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v2];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[ICPersistentContainer oldManagedObjectModel];
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)migrateFromOldDataModel:(id *)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  v5 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICPersistentContainer migrateFromOldDataModel:];
  }

  v6 = *MEMORY[0x1E695D380];
  v25[0] = *MEMORY[0x1E695D318];
  v25[1] = v6;
  v26[0] = MEMORY[0x1E695E118];
  v26[1] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v8 = [objc_opt_class() oldManagedObjectModel];
  v9 = [ICPersistentContainer alloc];
  v10 = [(ICPersistentContainer *)self storeURL];
  v11 = [(ICPersistentContainer *)v9 initWithStoreURL:v10 storeType:*MEMORY[0x1E695D4A8] options:v7 mergePolicy:0 managedObjectModel:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__ICPersistentContainer_migrateFromOldDataModel___block_invoke;
  v14[3] = &unk_1E8485000;
  v14[4] = &v21;
  v14[5] = &v15;
  [(NSPersistentContainer *)v11 loadPersistentStoresWithCompletionHandler:v14];
  if (a3)
  {
    *a3 = v16[5];
  }

  v12 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v12 & 1;
}

void __49__ICPersistentContainer_migrateFromOldDataModel___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = os_log_create("com.apple.notes", "CoreData");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__ICPersistentContainer_migrateFromOldDataModel___block_invoke_cold_1();
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __49__ICPersistentContainer_migrateFromOldDataModel___block_invoke_cold_2();
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (id)performBlockWithDatabaseOpenLock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v6 = [(ICPersistentContainer *)self allowsCoreDataMigration];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"ICPersistentContainerWillLockDatabaseNotification" object:self];

    v8 = [objc_opt_class() databaseOpenLock];
    [v8 lock];
  }

  v9 = v4[2](v4);
  if (v6)
  {
    v10 = [objc_opt_class() databaseOpenLock];
    [v10 unlock];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 postNotificationName:@"ICPersistentContainerDidUnlockDatabaseNotification" object:self];
  }

  objc_sync_exit(v5);

  return v9;
}

- (BOOL)loadPersistentStore:(id *)a3 storeCreatedHandler:(id)a4
{
  v6 = a4;
  v7 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICPersistentContainer loadPersistentStore:storeCreatedHandler:];
  }

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke;
  v16 = &unk_1E8485078;
  v17 = self;
  v19 = &v29;
  v20 = v37;
  v21 = v35;
  v22 = v33;
  v23 = &v25;
  v24 = v39;
  v8 = v6;
  v18 = v8;
  v9 = [(ICPersistentContainer *)self performBlockWithDatabaseOpenLock:&v13];
  if (*(v30 + 24) == 1)
  {
    [(ICPersistentContainer *)self setupViewContext:v13];
  }

  if (*(v26 + 24) == 1)
  {
    v12 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICPersistentContainer loadPersistentStore:storeCreatedHandler:];
    }

    exit(0);
  }

  if (a3)
  {
    v10 = v9;
    *a3 = v9;
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);

  return v9 == 0;
}

id __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke(uint64_t a1)
{
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__4;
  v57 = __Block_byref_object_dispose__4;
  v58 = 0;
  v2 = *(a1 + 32);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_2;
  v49[3] = &unk_1E8485050;
  v3 = *(a1 + 48);
  v49[4] = v2;
  v49[5] = v3;
  v50 = *(a1 + 56);
  v51 = *(a1 + 72);
  v4 = *(a1 + 88);
  v49[6] = &v53;
  v52 = v4;
  [v2 loadPersistentStoresWithCompletionHandler:v49];
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v5 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4576000, v5, OS_LOG_TYPE_INFO, "Persistent store does not exist and we're opening read only. Need to create persistent store.", buf, 2u);
    }

    v6 = [*(a1 + 32) storeOptions];
    v7 = [v6 mutableCopy];

    [v7 removeObjectForKey:*MEMORY[0x1E695D458]];
    v8 = [ICPersistentContainer alloc];
    v9 = [*(a1 + 32) storeURL];
    v10 = [*(a1 + 32) mergePolicy];
    v11 = [(ICPersistentContainer *)v8 initWithStoreURL:v9 storeType:*MEMORY[0x1E695D4A8] options:v7 mergePolicy:v10];

    v47 = 0;
    v12 = [(ICPersistentContainer *)v11 loadPersistentStore:&v47];
    v13 = v47;
    v14 = os_log_create("com.apple.notes", "CoreData");
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_cold_2();
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = [(ICPersistentContainer *)v11 newBackgroundContext];
        (*(v16 + 16))(v16, v17);
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_cold_1();
      }

      if ([ICPersistentContainer isDataProtectionError:v13])
      {
        v18 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1D4576000, v18, OS_LOG_TYPE_INFO, "Data protection prevented loading persistent store, because device has not been unlocked since boot", buf, 2u);
        }

        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1 && ([*(a1 + 32) isReadOnly] & 1) == 0)
  {
    v19 = [*(a1 + 32) storeType];
    v20 = [v19 isEqualToString:*MEMORY[0x1E695D528]];

    if (v20)
    {
      v21 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4576000, v21, OS_LOG_TYPE_INFO, "Failed to load persistent store, and we're using an XPC store. Possibly need to migrate the database", buf, 2u);
      }

      v22 = [ICPersistentContainer alloc];
      v23 = [*(a1 + 32) storeURL];
      v24 = [*(a1 + 32) storeOptions];
      v25 = [*(a1 + 32) mergePolicy];
      v26 = [(ICPersistentContainer *)v22 initWithStoreURL:v23 storeType:*MEMORY[0x1E695D4A8] options:v24 mergePolicy:v25];

      v46 = 0;
      LOBYTE(v25) = [(ICPersistentContainer *)v26 loadPersistentStore:&v46];
      v27 = v46;
      v28 = os_log_create("com.apple.notes", "CoreData");
      v29 = v28;
      if (v25)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_cold_2();
        }

        v30 = 1;
      }

      else
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_cold_3();
        }

        if (![ICPersistentContainer isDataProtectionError:v27])
        {
          goto LABEL_32;
        }

        v29 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1D4576000, v29, OS_LOG_TYPE_INFO, "Data protection prevented loading persistent store, because device has not been unlocked since boot", buf, 2u);
        }

        v30 = 0;
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
      *(*(*(a1 + 64) + 8) + 24) = v30;
LABEL_32:
    }
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v31 = *(a1 + 32);
    v45 = 0;
    v32 = [v31 migrateFromOldDataModel:&v45];
    v33 = v45;
    v34 = v45;
    if ((v32 & 1) == 0)
    {
      [ICTelemetryManager postBasicEvent:1];
      v35 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_cold_5();
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    if (v34)
    {
      objc_storeStrong(v54 + 5, v33);
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1 && ([*(a1 + 32) isReadOnly] & 1) == 0)
  {
    v36 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_cold_6();
    }

    [*(a1 + 32) backupPersistentStoreWithError:v54[5]];
    [ICTelemetryManager postBasicEvent:0];
    if ([*(a1 + 32) abortAfterReplacingDatabase])
    {
      +[ICTelemetryManager waitUntilAllPendingTelemetryHasBeenSent];
      v37 = MEMORY[0x1E695DF30];
      v38 = [*(a1 + 32) backupsDirectoryURL];
      v39 = [v38 absoluteString];
      [v37 raise:*MEMORY[0x1E695D920] format:{@"Crashing intentionally after replacing up the database. Backups can be found at %@", v39}];
    }
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v40 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_cold_7();
    }

    v41 = *(a1 + 32);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_35;
    v44[3] = &unk_1E8485000;
    v44[4] = *(a1 + 48);
    v44[5] = &v53;
    [v41 loadPersistentStoresWithCompletionHandler:v44];
  }

  v42 = v54[5];
  _Block_object_dispose(&v53, 8);

  return v42;
}

void __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.notes", "CoreData");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_2_cold_1();
    }

    if ([*(a1 + 32) isTooLowOnDiskSpace])
    {
      v9 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4576000, v9, OS_LOG_TYPE_INFO, "Low on disk space and unable to load persistent store", buf, 2u);
      }

      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.notes" code:209 userInfo:0];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    else
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
      if (![ICPersistentContainer isDataProtectionError:v6])
      {
        if ([v6 code] == 134140)
        {
          v13 = 1;
          if ([*(a1 + 32) allowsCoreDataMigration])
          {
            *(*(*(a1 + 72) + 8) + 24) = 1;
            goto LABEL_16;
          }
        }

        else
        {
          if (+[ICPersistentContainer isDatabaseMissingError:](ICPersistentContainer, "isDatabaseMissingError:", v6) && ([*(a1 + 32) isReadOnly] & 1) != 0)
          {
            v13 = 1;
            v14 = 88;
            goto LABEL_18;
          }

          v16 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_2_cold_2(v6, v16);
          }

          v13 = 1;
          [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICPersistentContainer loadPersistentStore:storeCreatedHandler:]_block_invoke" simulateCrash:1 showAlert:1 format:@"Failed to open modern notes database."];
          if ([*(a1 + 32) allowsCoreDataMigration])
          {
            *(*(*(a1 + 56) + 8) + 24) = 1;
            goto LABEL_17;
          }
        }

        v14 = 80;
        goto LABEL_18;
      }

      v15 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_1D4576000, v15, OS_LOG_TYPE_INFO, "Data protection prevented loading persistent store, because device has not been unlocked since boot", v17, 2u);
      }
    }

    v13 = 0;
LABEL_16:
    *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_17:
    v14 = 64;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_2_cold_3();
  }

  v13 = 1;
  v14 = 40;
LABEL_18:
  *(*(*(a1 + v14) + 8) + 24) = v13;
}

void __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_35(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "CoreData");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_35_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_35_cold_2();
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;
}

- (BOOL)isReadOnly
{
  v2 = [(ICPersistentContainer *)self storeOptions];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695D458]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isTooLowOnDiskSpace
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(ICPersistentContainer *)self storeURL];
  v4 = [v3 URLByDeletingPathExtension];
  v5 = [v4 URLByAppendingPathExtension:@"sqlite-wal"];

  if ([(ICPersistentContainer *)self fakeFreeDiskSpace])
  {
    v6 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(ICPersistentContainer *)self isTooLowOnDiskSpace];
    }

    v7 = [(ICPersistentContainer *)self fakeFreeDiskSpace];
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v3 URLByDeletingLastPathComponent];
    v11 = [v10 path];
    v31 = 0;
    v12 = [v9 attributesOfFileSystemForPath:v11 error:&v31];
    v8 = v31;

    if (v8)
    {
      v13 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ICPersistentContainer *)v3 isTooLowOnDiskSpace];
      }

      v7 = 0;
    }

    else
    {
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A3C0]];
      v7 = [v13 unsignedIntegerValue];
    }
  }

  v30 = 0;
  v14 = *MEMORY[0x1E695DB50];
  v29 = 0;
  v15 = [v3 getResourceValue:&v30 forKey:v14 error:&v29];
  v16 = v30;
  v17 = v29;

  if (v15)
  {
    v18 = [v16 unsignedIntegerValue];
  }

  else
  {
    v19 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ICPersistentContainer isTooLowOnDiskSpace];
    }

    v18 = 0;
  }

  v27 = 0;
  v28 = 0;
  v20 = [v5 getResourceValue:&v28 forKey:v14 error:&v27];
  v21 = v28;

  v22 = v27;
  if (v20)
  {
    v18 += [v21 unsignedIntegerValue];
  }

  else if ([v22 code] != 260)
  {
    v23 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ICPersistentContainer isTooLowOnDiskSpace];
    }
  }

  v24 = 3 * v18 + 0x100000;
  v25 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v33 = v24;
    v34 = 2048;
    v35 = v7;
    _os_log_impl(&dword_1D4576000, v25, OS_LOG_TYPE_INFO, "Minimum free space to open database: %lu, current free space: %lu", buf, 0x16u);
  }

  return v7 < v24;
}

+ (BOOL)isDataProtectionError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  v5 = [v3 domain];
  v6 = *MEMORY[0x1E695D488];
  if ([v5 isEqualToString:*MEMORY[0x1E695D488]])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  }

  else
  {
    v8 = [v3 userInfo];
    v7 = [v8 objectForKeyedSubscript:v6];
  }

  v9 = *MEMORY[0x1E696A798];
  if ([v5 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  }

  else
  {
    v11 = [v3 userInfo];
    v10 = [v11 objectForKeyedSubscript:v9];
  }

  v12 = [v7 intValue] == 23 || objc_msgSend(v10, "intValue") == 1;

  return v12;
}

+ (BOOL)isDatabaseMissingError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E696A798]] && objc_msgSend(v3, "code") == 2)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 domain];
    if ([v6 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v5 = [v3 code] == 260;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSURL)backupsDirectoryURL
{
  v2 = [(ICPersistentContainer *)self storeURL];
  v3 = [v2 URLByDeletingLastPathComponent];

  v4 = [v3 URLByAppendingPathComponent:@"Backups" isDirectory:1];

  return v4;
}

- (void)backupPersistentStoreWithError:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICPersistentContainer backupPersistentStoreWithError:];
  }

  v6 = [(ICPersistentContainer *)self storeURL];
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v7 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  v8 = [MEMORY[0x1E695DF00] date];
  v58 = v7;
  v9 = [v7 stringFromDate:v8];

  v10 = objc_opt_class();
  v11 = [v4 userInfo];
  v12 = [v11 objectForKey:*MEMORY[0x1E696AA08]];
  v13 = ICDynamicCast(v10, v12);

  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v16 = [v15 UUIDString];
  v17 = [v4 code];

  v56 = v13;
  v57 = v9;
  v18 = [v14 stringWithFormat:@"Backup-%@-%@-%ld-%ld", v9, v16, v17, objc_msgSend(v13, "code")];

  v19 = [(ICPersistentContainer *)self backupsDirectoryURL];
  v55 = v18;
  v20 = [v19 URLByAppendingPathComponent:v18 isDirectory:1];

  v21 = [v6 lastPathComponent];
  v22 = [v20 URLByAppendingPathComponent:v21 isDirectory:0];

  v23 = [MEMORY[0x1E696AC08] defaultManager];
  v63 = 0;
  LOBYTE(v14) = [v23 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v63];
  v24 = v63;

  if ((v14 & 1) == 0)
  {
    v25 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ICPersistentContainer backupPersistentStoreWithError:];
    }

    v24 = 0;
  }

  v26 = [(NSPersistentContainer *)self persistentStoreCoordinator];
  v27 = [(ICPersistentContainer *)self storeOptions];
  v28 = [(ICPersistentContainer *)self storeOptions];
  v29 = *MEMORY[0x1E695D4A8];
  v62 = v24;
  v59 = v22;
  v30 = [v26 replacePersistentStoreAtURL:v22 destinationOptions:v27 withPersistentStoreFromURL:v6 sourceOptions:v28 storeType:v29 error:&v62];
  v31 = v62;

  v32 = os_log_create("com.apple.notes", "CoreData");
  v33 = v32;
  if ((v30 & 1) == 0)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ICPersistentContainer backupPersistentStoreWithError:];
    }

    goto LABEL_26;
  }

  v34 = v59;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v65 = v6;
    v66 = 2112;
    v67 = v59;
    _os_log_impl(&dword_1D4576000, v33, OS_LOG_TYPE_INFO, "Backed up old persistent store from %@ to %@", buf, 0x16u);
  }

  v61 = v31;
  v35 = [v6 checkResourceIsReachableAndReturnError:&v61];
  v36 = v61;

  v33 = os_log_create("com.apple.notes", "CoreData");
  v37 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
  if (v35)
  {
    if (v37)
    {
      [ICPersistentContainer backupPersistentStoreWithError:];
    }

    v38 = [(NSPersistentContainer *)self persistentStoreCoordinator];
    v39 = [(ICPersistentContainer *)self storeOptions];
    v60 = v36;
    v40 = [v38 destroyPersistentStoreAtURL:v6 withType:v29 options:v39 error:&v60];
    v31 = v60;

    v41 = os_log_create("com.apple.notes", "CoreData");
    v33 = v41;
    if (v40)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        [ICPersistentContainer backupPersistentStoreWithError:];
      }

      goto LABEL_27;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [ICPersistentContainer backupPersistentStoreWithError:];
    }

    v42 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      [ICPersistentContainer backupPersistentStoreWithError:];
    }

    v43 = [MEMORY[0x1E696AC08] defaultManager];
    [v43 removeItemAtURL:v6 error:0];

    v44 = [v6 lastPathComponent];
    v45 = [v44 stringByDeletingPathExtension];
    v33 = [v45 stringByAppendingPathExtension:@"sqlite-wal"];

    v46 = [v6 URLByDeletingLastPathComponent];
    v47 = [v46 URLByAppendingPathComponent:v33 isDirectory:0];

    v48 = [MEMORY[0x1E696AC08] defaultManager];
    [v48 removeItemAtURL:v47 error:0];

    v49 = [v6 lastPathComponent];
    v50 = [v49 stringByDeletingPathExtension];
    v51 = [v50 stringByAppendingPathExtension:@"sqlite-shm"];

    v52 = [v6 URLByDeletingLastPathComponent];
    v53 = [v52 URLByAppendingPathComponent:v51 isDirectory:0];

    v54 = [MEMORY[0x1E696AC08] defaultManager];
    [v54 removeItemAtURL:v53 error:0];

LABEL_26:
    v34 = v59;
    goto LABEL_27;
  }

  if (v37)
  {
    [ICPersistentContainer backupPersistentStoreWithError:];
  }

  v31 = v36;
LABEL_27:
}

- (void)vacuumStoreWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(NSPersistentContainer *)self viewContext];
  v6 = [(ICPersistentContainer *)self storeURL];
  v7 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICPersistentContainer vacuumStoreWithCompletionHandler:];
  }

  [v5 setShouldPerformSecureOperation:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__ICPersistentContainer_vacuumStoreWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E84850A0;
  v12 = v5;
  v13 = v6;
  v14 = v4;
  v8 = v4;
  v9 = v6;
  v10 = v5;
  [v10 performBlock:v11];
}

uint64_t __58__ICPersistentContainer_vacuumStoreWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_save];
  v3 = os_log_create("com.apple.notes", "CoreData");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __58__ICPersistentContainer_vacuumStoreWithCompletionHandler___block_invoke_cold_2();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__ICPersistentContainer_vacuumStoreWithCompletionHandler___block_invoke_cold_1(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __43__ICPersistentContainer_managedObjectModel__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)oldManagedObjectModel
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)migrateFromOldDataModel:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__ICPersistentContainer_migrateFromOldDataModel___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadPersistentStore:storeCreatedHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_2_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1D4576000, v1, OS_LOG_TYPE_ERROR, "Error loading persistent store %@: %@", v2, 0x16u);
}

void __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_2_cold_2(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 userInfo];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_fault_impl(&dword_1D4576000, a2, OS_LOG_TYPE_FAULT, "Unexpected error while opening database %@, %@", &v5, 0x16u);
}

void __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__ICPersistentContainer_loadPersistentStore_storeCreatedHandler___block_invoke_35_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isTooLowOnDiskSpace
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 path];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1D4576000, a3, OS_LOG_TYPE_ERROR, "Error getting free space for filesystem at path: %@, error: %@", v6, 0x16u);
}

- (void)backupPersistentStoreWithError:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)backupPersistentStoreWithError:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)backupPersistentStoreWithError:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)backupPersistentStoreWithError:.cold.7()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)backupPersistentStoreWithError:.cold.8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)vacuumStoreWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end