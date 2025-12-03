@interface ICPersistentContainer
+ (BOOL)isDataProtectionError:(id)error;
+ (BOOL)isDatabaseMissingError:(id)error;
+ (ICExclusiveLock)databaseOpenLock;
+ (id)managedObjectModel;
+ (id)oldManagedObjectModel;
+ (id)standardStoreOptions;
+ (void)oldManagedObjectModel;
- (BOOL)allowsCoreDataMigration;
- (BOOL)isReadOnly;
- (BOOL)isTooLowOnDiskSpace;
- (BOOL)loadPersistentStore:(id *)store storeCreatedHandler:(id)handler;
- (BOOL)migrateFromOldDataModel:(id *)model;
- (ICPersistentContainer)initWithStoreURL:(id)l storeType:(id)type options:(id)options mergePolicy:(id)policy;
- (ICPersistentContainer)initWithStoreURL:(id)l storeType:(id)type options:(id)options mergePolicy:(id)policy managedObjectModel:(id)model;
- (NSURL)backupsDirectoryURL;
- (id)newBackgroundContext;
- (id)performBlockWithDatabaseOpenLock:(id)lock;
- (void)backupPersistentStoreWithError:(id)error;
- (void)isTooLowOnDiskSpace;
- (void)setupPersistentStoreDescriptions;
- (void)setupViewContext;
- (void)vacuumStoreWithCompletionHandler:(id)handler;
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
  storeOptions = [(ICPersistentContainer *)self storeOptions];
  v3 = [storeOptions objectForKeyedSubscript:*MEMORY[0x1E695D380]];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695D318]];
  [dictionary setObject:v3 forKeyedSubscript:*MEMORY[0x1E695D380]];
  [dictionary setObject:v3 forKeyedSubscript:*MEMORY[0x1E695D428]];
  [dictionary setObject:v3 forKeyedSubscript:*MEMORY[0x1E695D3C0]];

  return dictionary;
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
  storeURL = [(ICPersistentContainer *)self storeURL];
  v5 = [v3 initWithURL:storeURL];

  storeType = [(ICPersistentContainer *)self storeType];
  [v5 setType:storeType];

  storeOptions = [(ICPersistentContainer *)self storeOptions];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__ICPersistentContainer_setupPersistentStoreDescriptions__block_invoke;
  v10[3] = &unk_1E8485028;
  v8 = v5;
  v11 = v8;
  [storeOptions enumerateKeysAndObjectsUsingBlock:v10];

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
  mergePolicy = [(ICPersistentContainer *)self mergePolicy];
  viewContext = [(NSPersistentContainer *)self viewContext];
  [viewContext setMergePolicy:mergePolicy];

  viewContext2 = [(NSPersistentContainer *)self viewContext];
  [viewContext2 setName:@"ViewContext"];

  v6 = MEMORY[0x1E696AEC0];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v8 = [v6 stringWithFormat:@"%d", objc_msgSend(processInfo, "processIdentifier")];
  viewContext3 = [(NSPersistentContainer *)self viewContext];
  [viewContext3 setTransactionAuthor:v8];

  viewContext4 = [(NSPersistentContainer *)self viewContext];
  [viewContext4 setAutomaticallyMergesChangesFromParent:1];

  viewContext5 = [(NSPersistentContainer *)self viewContext];
  [viewContext5 setShouldDeleteInaccessibleFaults:1];
}

- (id)newBackgroundContext
{
  v6.receiver = self;
  v6.super_class = ICPersistentContainer;
  newBackgroundContext = [(NSPersistentContainer *)&v6 newBackgroundContext];
  mergePolicy = [(ICPersistentContainer *)self mergePolicy];
  [newBackgroundContext setMergePolicy:mergePolicy];

  return newBackgroundContext;
}

- (ICPersistentContainer)initWithStoreURL:(id)l storeType:(id)type options:(id)options mergePolicy:(id)policy
{
  policyCopy = policy;
  optionsCopy = options;
  typeCopy = type;
  lCopy = l;
  managedObjectModel = [objc_opt_class() managedObjectModel];
  v15 = [(ICPersistentContainer *)self initWithStoreURL:lCopy storeType:typeCopy options:optionsCopy mergePolicy:policyCopy managedObjectModel:managedObjectModel];

  return v15;
}

- (ICPersistentContainer)initWithStoreURL:(id)l storeType:(id)type options:(id)options mergePolicy:(id)policy managedObjectModel:(id)model
{
  lCopy = l;
  typeCopy = type;
  optionsCopy = options;
  policyCopy = policy;
  modelCopy = model;
  lastPathComponent = [lCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  v22.receiver = self;
  v22.super_class = ICPersistentContainer;
  v18 = [(NSPersistentContainer *)&v22 initWithName:stringByDeletingPathExtension managedObjectModel:modelCopy];

  if (v18)
  {
    objc_storeStrong(&v18->_storeURL, l);
    objc_storeStrong(&v18->_storeType, type);
    objc_storeStrong(&v18->_storeOptions, options);
    objc_storeStrong(&v18->_mergePolicy, policy);
    [(ICPersistentContainer *)v18 setupPersistentStoreDescriptions:optionsCopy];
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

- (BOOL)migrateFromOldDataModel:(id *)model
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
  oldManagedObjectModel = [objc_opt_class() oldManagedObjectModel];
  v9 = [ICPersistentContainer alloc];
  storeURL = [(ICPersistentContainer *)self storeURL];
  v11 = [(ICPersistentContainer *)v9 initWithStoreURL:storeURL storeType:*MEMORY[0x1E695D4A8] options:v7 mergePolicy:0 managedObjectModel:oldManagedObjectModel];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__ICPersistentContainer_migrateFromOldDataModel___block_invoke;
  v14[3] = &unk_1E8485000;
  v14[4] = &v21;
  v14[5] = &v15;
  [(NSPersistentContainer *)v11 loadPersistentStoresWithCompletionHandler:v14];
  if (model)
  {
    *model = v16[5];
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

- (id)performBlockWithDatabaseOpenLock:(id)lock
{
  lockCopy = lock;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  allowsCoreDataMigration = [(ICPersistentContainer *)self allowsCoreDataMigration];
  if (allowsCoreDataMigration)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"ICPersistentContainerWillLockDatabaseNotification" object:self];

    databaseOpenLock = [objc_opt_class() databaseOpenLock];
    [databaseOpenLock lock];
  }

  v9 = lockCopy[2](lockCopy);
  if (allowsCoreDataMigration)
  {
    databaseOpenLock2 = [objc_opt_class() databaseOpenLock];
    [databaseOpenLock2 unlock];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"ICPersistentContainerDidUnlockDatabaseNotification" object:self];
  }

  objc_sync_exit(v5);

  return v9;
}

- (BOOL)loadPersistentStore:(id *)store storeCreatedHandler:(id)handler
{
  handlerCopy = handler;
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
  selfCopy = self;
  v19 = &v29;
  v20 = v37;
  v21 = v35;
  v22 = v33;
  v23 = &v25;
  v24 = v39;
  v8 = handlerCopy;
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

  if (store)
  {
    v10 = v9;
    *store = v9;
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
  storeOptions = [(ICPersistentContainer *)self storeOptions];
  v3 = [storeOptions objectForKeyedSubscript:*MEMORY[0x1E695D458]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isTooLowOnDiskSpace
{
  v36 = *MEMORY[0x1E69E9840];
  storeURL = [(ICPersistentContainer *)self storeURL];
  uRLByDeletingPathExtension = [storeURL URLByDeletingPathExtension];
  v5 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"sqlite-wal"];

  if ([(ICPersistentContainer *)self fakeFreeDiskSpace])
  {
    v6 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(ICPersistentContainer *)self isTooLowOnDiskSpace];
    }

    fakeFreeDiskSpace = [(ICPersistentContainer *)self fakeFreeDiskSpace];
    v8 = 0;
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    uRLByDeletingLastPathComponent = [storeURL URLByDeletingLastPathComponent];
    path = [uRLByDeletingLastPathComponent path];
    v31 = 0;
    v12 = [defaultManager attributesOfFileSystemForPath:path error:&v31];
    v8 = v31;

    if (v8)
    {
      v13 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ICPersistentContainer *)storeURL isTooLowOnDiskSpace];
      }

      fakeFreeDiskSpace = 0;
    }

    else
    {
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A3C0]];
      fakeFreeDiskSpace = [v13 unsignedIntegerValue];
    }
  }

  v30 = 0;
  v14 = *MEMORY[0x1E695DB50];
  v29 = 0;
  v15 = [storeURL getResourceValue:&v30 forKey:v14 error:&v29];
  v16 = v30;
  v17 = v29;

  if (v15)
  {
    unsignedIntegerValue = [v16 unsignedIntegerValue];
  }

  else
  {
    v19 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ICPersistentContainer isTooLowOnDiskSpace];
    }

    unsignedIntegerValue = 0;
  }

  v27 = 0;
  v28 = 0;
  v20 = [v5 getResourceValue:&v28 forKey:v14 error:&v27];
  v21 = v28;

  v22 = v27;
  if (v20)
  {
    unsignedIntegerValue += [v21 unsignedIntegerValue];
  }

  else if ([v22 code] != 260)
  {
    v23 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ICPersistentContainer isTooLowOnDiskSpace];
    }
  }

  v24 = 3 * unsignedIntegerValue + 0x100000;
  v25 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v33 = v24;
    v34 = 2048;
    v35 = fakeFreeDiskSpace;
    _os_log_impl(&dword_1D4576000, v25, OS_LOG_TYPE_INFO, "Minimum free space to open database: %lu, current free space: %lu", buf, 0x16u);
  }

  return fakeFreeDiskSpace < v24;
}

+ (BOOL)isDataProtectionError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  domain = [errorCopy domain];
  v6 = *MEMORY[0x1E695D488];
  if ([domain isEqualToString:*MEMORY[0x1E695D488]])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:v6];
  }

  v9 = *MEMORY[0x1E696A798];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  }

  else
  {
    userInfo2 = [errorCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:v9];
  }

  v12 = [v7 intValue] == 23 || objc_msgSend(v10, "intValue") == 1;

  return v12;
}

+ (BOOL)isDatabaseMissingError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]] && objc_msgSend(errorCopy, "code") == 2)
  {
    v5 = 1;
  }

  else
  {
    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v5 = [errorCopy code] == 260;
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
  storeURL = [(ICPersistentContainer *)self storeURL];
  uRLByDeletingLastPathComponent = [storeURL URLByDeletingLastPathComponent];

  v4 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"Backups" isDirectory:1];

  return v4;
}

- (void)backupPersistentStoreWithError:(id)error
{
  v68 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICPersistentContainer backupPersistentStoreWithError:];
  }

  storeURL = [(ICPersistentContainer *)self storeURL];
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v7 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  date = [MEMORY[0x1E695DF00] date];
  v58 = v7;
  v9 = [v7 stringFromDate:date];

  v10 = objc_opt_class();
  userInfo = [errorCopy userInfo];
  v12 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];
  v13 = ICDynamicCast(v10, v12);

  v14 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  code = [errorCopy code];

  v56 = v13;
  v57 = v9;
  v18 = [v14 stringWithFormat:@"Backup-%@-%@-%ld-%ld", v9, uUIDString, code, objc_msgSend(v13, "code")];

  backupsDirectoryURL = [(ICPersistentContainer *)self backupsDirectoryURL];
  v55 = v18;
  v20 = [backupsDirectoryURL URLByAppendingPathComponent:v18 isDirectory:1];

  lastPathComponent = [storeURL lastPathComponent];
  v22 = [v20 URLByAppendingPathComponent:lastPathComponent isDirectory:0];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v63 = 0;
  LOBYTE(v14) = [defaultManager createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v63];
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

  persistentStoreCoordinator = [(NSPersistentContainer *)self persistentStoreCoordinator];
  storeOptions = [(ICPersistentContainer *)self storeOptions];
  storeOptions2 = [(ICPersistentContainer *)self storeOptions];
  v29 = *MEMORY[0x1E695D4A8];
  v62 = v24;
  v59 = v22;
  v30 = [persistentStoreCoordinator replacePersistentStoreAtURL:v22 destinationOptions:storeOptions withPersistentStoreFromURL:storeURL sourceOptions:storeOptions2 storeType:v29 error:&v62];
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
    v65 = storeURL;
    v66 = 2112;
    v67 = v59;
    _os_log_impl(&dword_1D4576000, v33, OS_LOG_TYPE_INFO, "Backed up old persistent store from %@ to %@", buf, 0x16u);
  }

  v61 = v31;
  v35 = [storeURL checkResourceIsReachableAndReturnError:&v61];
  v36 = v61;

  v33 = os_log_create("com.apple.notes", "CoreData");
  v37 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
  if (v35)
  {
    if (v37)
    {
      [ICPersistentContainer backupPersistentStoreWithError:];
    }

    persistentStoreCoordinator2 = [(NSPersistentContainer *)self persistentStoreCoordinator];
    storeOptions3 = [(ICPersistentContainer *)self storeOptions];
    v60 = v36;
    v40 = [persistentStoreCoordinator2 destroyPersistentStoreAtURL:storeURL withType:v29 options:storeOptions3 error:&v60];
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

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager2 removeItemAtURL:storeURL error:0];

    lastPathComponent2 = [storeURL lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent2 stringByDeletingPathExtension];
    v33 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"sqlite-wal"];

    uRLByDeletingLastPathComponent = [storeURL URLByDeletingLastPathComponent];
    v47 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v33 isDirectory:0];

    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager3 removeItemAtURL:v47 error:0];

    lastPathComponent3 = [storeURL lastPathComponent];
    stringByDeletingPathExtension2 = [lastPathComponent3 stringByDeletingPathExtension];
    v51 = [stringByDeletingPathExtension2 stringByAppendingPathExtension:@"sqlite-shm"];

    uRLByDeletingLastPathComponent2 = [storeURL URLByDeletingLastPathComponent];
    v53 = [uRLByDeletingLastPathComponent2 URLByAppendingPathComponent:v51 isDirectory:0];

    defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager4 removeItemAtURL:v53 error:0];

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

- (void)vacuumStoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  viewContext = [(NSPersistentContainer *)self viewContext];
  storeURL = [(ICPersistentContainer *)self storeURL];
  v7 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICPersistentContainer vacuumStoreWithCompletionHandler:];
  }

  [viewContext setShouldPerformSecureOperation:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__ICPersistentContainer_vacuumStoreWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E84850A0;
  v12 = viewContext;
  v13 = storeURL;
  v14 = handlerCopy;
  v8 = handlerCopy;
  v9 = storeURL;
  v10 = viewContext;
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
  path = [self path];
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