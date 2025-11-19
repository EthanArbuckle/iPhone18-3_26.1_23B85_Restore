@interface ULPersistenceManager
+ (id)defaultModelsDirectory;
- (BOOL)_destroyStore;
- (BOOL)_disconnectFromStore;
- (BOOL)_isMainDatabase;
- (BOOL)_isStoreConnected;
- (BOOL)connectToStore;
- (BOOL)destroyStore;
- (BOOL)disconnectFromStore;
- (BOOL)isMainDatabase;
- (BOOL)isStoreConnected;
- (ULPersistenceManager)init;
- (id)_getDefaultStoresDirectory;
- (id)_getDefaultStoresDirectoryPathForCurrentPlatform;
- (id)_getLocalStoreURL;
- (id)createManagedObjectContext;
- (id)getLocalStoreURL;
- (void)_deleteDatabaseFilesAtPath:(id)a3;
- (void)_handleCorruptedDatabase:(id)a3;
- (void)_handleDatabaseError:(id)a3;
- (void)handleDatabaseError:(id)a3;
@end

@implementation ULPersistenceManager

uint64_t __40__ULPersistenceManager_isStoreConnected__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isStoreConnected];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isStoreConnected
{
  v2 = self;
  v3 = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(ULPersistenceManager *)v2 queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ULPersistenceManager_isStoreConnected__block_invoke;
  v6[3] = &unk_2798D4BB0;
  v6[4] = v2;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

- (BOOL)_isStoreConnected
{
  v2 = [(ULPersistenceManager *)self persistentStoreCoordinator];
  v3 = [v2 persistentStores];
  v4 = [v3 count] != 0;

  return v4;
}

- (ULPersistenceManager)init
{
  v3 = +[ULPersistenceManager defaultModelsDirectory];
  v4 = [(ULPersistenceManager *)self _getDefaultStoresDirectory];
  v5 = [(ULPersistenceManager *)self initWithModelsDirectory:v3 storesDirectory:v4 useWal:1];

  return v5;
}

void __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v3;
      v6 = "Failed to set space attribution for %@. Error: %@";
      v7 = v4;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 22;
LABEL_10:
      _os_log_impl(&dword_258FE9000, v7, v8, v6, &v13, v9);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 138412290;
      v14 = v11;
      v6 = "Set space attribution for %@";
      v7 = v10;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 12;
      goto LABEL_10;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)connectToStore
{
  v2 = self;
  v3 = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v4 = [(ULPersistenceManager *)v2 queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__ULPersistenceManager_connectToStore__block_invoke;
  v6[3] = &unk_2798D4B88;
  v6[4] = v2;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

void __38__ULPersistenceManager_connectToStore__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) _isStoreConnected] & 1) == 0)
  {
    v2 = [*(a1 + 32) _getLocalStoreURL];
    if (onceToken_MicroLocation_Default != -1)
    {
      __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [v2 path];
      *buf = 68289283;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2113;
      v20 = v5;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Connecting to store, store path:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v6 = -[ULPersistenceStore initWithURL:useWal:]([ULPersistenceStore alloc], "initWithURL:useWal:", v2, [*(a1 + 32) useWal]);
    [*(a1 + 32) setPersistenceStore:v6];

    v7 = [*(a1 + 32) persistenceStore];
    v8 = [*(a1 + 32) persistentStoreCoordinator];
    v14 = 0;
    v9 = [v7 loadWithCoordinator:v8 error:&v14];
    v10 = v14;
    *(*(*(a1 + 40) + 8) + 24) = v9;

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 67109120;
      v16 = v12;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "Connect to store result: %d", buf, 8u);
    }

    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) _handleDatabaseError:v10];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_disconnectFromStore
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(ULPersistenceManager *)self _isStoreConnected])
  {
    v3 = [(ULPersistenceManager *)self persistentStoreCoordinator];
    v4 = [v3 persistentStores];
    v5 = [v4 firstObject];

    if (onceToken_MicroLocation_Default != -1)
    {
      __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v5 URL];
      v9 = [v8 path];
      *buf = 68289283;
      *v21 = 0;
      *&v21[4] = 2082;
      *&v21[6] = "";
      *&v21[14] = 2113;
      *&v21[16] = v9;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Disconnecting from store, store path:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    v10 = [(ULPersistenceManager *)self persistentStoreCoordinator];
    v19 = 0;
    [v10 removePersistentStore:v5 error:&v19];
    v11 = v19;

    if (v11)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = [v5 URL];
        *buf = 138412546;
        *v21 = v14;
        *&v21[8] = 2112;
        *&v21[10] = v11;
        _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "Failed to disconnect from store %@ with error %@", buf, 0x16u);
      }
    }

    v15 = ![(ULPersistenceManager *)self _isStoreConnected];
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
    }

    v16 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v21 = v15;
      _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_DEFAULT, "Disconnect from store result: %d", buf, 8u);
    }
  }

  else
  {
    LOBYTE(v15) = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)disconnectFromStore
{
  v2 = self;
  v3 = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v4 = [(ULPersistenceManager *)v2 queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__ULPersistenceManager_disconnectFromStore__block_invoke;
  v6[3] = &unk_2798D4BB0;
  v6[4] = v2;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

uint64_t __43__ULPersistenceManager_disconnectFromStore__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _disconnectFromStore];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)createManagedObjectContext
{
  v3 = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__29;
  v12 = __Block_byref_object_dispose__29;
  v13 = 0;
  v4 = [(ULPersistenceManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ULPersistenceManager_createManagedObjectContext__block_invoke;
  v7[3] = &unk_2798D4B88;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __50__ULPersistenceManager_createManagedObjectContext__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isStoreConnected];
  if (result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [MEMORY[0x277CBE460] errorMergePolicy];
    [*(*(*(a1 + 40) + 8) + 40) setMergePolicy:v6];

    v7 = [*(a1 + 32) persistentStoreCoordinator];
    [*(*(*(a1 + 40) + 8) + 40) setPersistentStoreCoordinator:v7];

    v8 = [MEMORY[0x277CCAC38] processInfo];
    v9 = [v8 processName];
    [*(*(*(a1 + 40) + 8) + 40) setName:v9];

    v10 = [*(*(*(a1 + 40) + 8) + 40) name];
    [*(*(*(a1 + 40) + 8) + 40) setTransactionAuthor:v10];

    v11 = *(*(*(a1 + 40) + 8) + 40);

    return [v11 setUndoManager:0];
  }

  return result;
}

+ (id)defaultModelsDirectory
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [MEMORY[0x277CCA8D8] ULFrameworkBundle];
  v4 = [v3 pathForResource:@"milo" ofType:@"momd"];
  v5 = [v2 fileURLWithPath:v4 isDirectory:1];

  return v5;
}

- (id)_getDefaultStoresDirectoryPathForCurrentPlatform
{
  v2 = [MEMORY[0x277CCAA00] userLibraryDirectoryPath];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringByAppendingPathComponent:@"com.apple.milod"];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_ERROR, "Failed to resolve Cache Directory in User Space", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)_getDefaultStoresDirectory
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(ULPersistenceManager *)self _getDefaultStoresDirectoryPathForCurrentPlatform];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if ((v4 & 1) != 0 || (([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), v13 = 0, v6 = objc_msgSend(v5, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v2, 1, 0, &v13), v7 = v13, v5, v6) ? (v8 = v7 == 0) : (v8 = 0), v8))
  {
    v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2 isDirectory:1];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v2;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "Failed to create %@, error, %@", buf, 0x16u);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_getLocalStoreURL
{
  v2 = [(ULPersistenceManager *)self storesDirectory];
  v3 = +[ULPersistenceManager defaultLocalStoreFilename];
  v4 = [v2 URLByAppendingPathComponent:v3];

  return v4;
}

- (id)getLocalStoreURL
{
  v3 = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__29;
  v12 = __Block_byref_object_dispose__29;
  v13 = 0;
  v4 = [(ULPersistenceManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ULPersistenceManager_getLocalStoreURL__block_invoke;
  v7[3] = &unk_2798D4BB0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__ULPersistenceManager_getLocalStoreURL__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getLocalStoreURL];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)_isMainDatabase
{
  v3 = [(ULPersistenceManager *)self _getDefaultStoresDirectory];
  v4 = +[ULPersistenceManager defaultLocalStoreFilename];
  v5 = [v3 URLByAppendingPathComponent:v4];

  v6 = [(ULPersistenceManager *)self _getLocalStoreURL];
  LOBYTE(v3) = [v6 isEqual:v5];

  return v3;
}

- (BOOL)isMainDatabase
{
  v2 = self;
  v3 = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(ULPersistenceManager *)v2 queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__ULPersistenceManager_isMainDatabase__block_invoke;
  v6[3] = &unk_2798D4BB0;
  v6[4] = v2;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

uint64_t __38__ULPersistenceManager_isMainDatabase__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isMainDatabase];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)destroyStore
{
  v2 = self;
  v3 = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(ULPersistenceManager *)v2 queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__ULPersistenceManager_destroyStore__block_invoke;
  v6[3] = &unk_2798D4BB0;
  v6[4] = v2;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v2) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

uint64_t __36__ULPersistenceManager_destroyStore__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _destroyStore];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_destroyStore
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(ULPersistenceManager *)self persistenceStore];
  v4 = [v3 storeDescription];

  if (onceToken_MicroLocation_Default != -1)
  {
    __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = [v4 URL];
    v8 = [v7 path];
    *buf = 68289283;
    *&buf[4] = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2113;
    v30 = v8;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Destroying local store, store path:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
  }

  v9 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    v10 = v9;
    v11 = [v4 URL];
    v12 = [v11 path];
    *buf = 68289283;
    *&buf[4] = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2113;
    v30 = v12;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Destroying local store", "{msg%{public}.0s:Destroying local store, store path:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  if ([(ULPersistenceManager *)self _disconnectFromStore])
  {
    v13 = objc_alloc(MEMORY[0x277CBE4D8]);
    v14 = [(ULPersistenceManager *)self managedObjectModel];
    v15 = [v13 initWithManagedObjectModel:v14];

    v16 = [v4 URL];
    v17 = [v4 type];
    v18 = [v4 options];
    v25 = 0;
    v19 = [v15 destroyPersistentStoreAtURL:v16 withType:v17 options:v18 error:&v25];
    v20 = v25;

    if ((v19 & 1) == 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
      }

      v21 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289282;
        v27 = 2082;
        v28 = "";
        v29 = 2114;
        v30 = v20;
        _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Destroy store failed with error, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
      }

      v22 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        *buf = 68289282;
        v27 = 2082;
        v28 = "";
        v29 = 2114;
        v30 = v20;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Destroy store failed with error", "{msg%{public}.0s:Destroy store failed with error, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)handleDatabaseError:(id)a3
{
  v4 = a3;
  v5 = [(ULPersistenceManager *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(ULPersistenceManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ULPersistenceManager_handleDatabaseError___block_invoke;
  v8[3] = &unk_2798D4280;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)_handleDatabaseError:(id)a3
{
  v13 = a3;
  v4 = [(ULPersistenceManager *)self _isMainDatabase];
  v5 = v13;
  if (v4)
  {
    v6 = [v13 domain];
    v7 = *MEMORY[0x277CBE2C8];
    v8 = [v6 isEqualToString:*MEMORY[0x277CBE2C8]];

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "code")}];
    }

    else
    {
      v10 = [v13 userInfo];
      v9 = [v10 objectForKeyedSubscript:v7];
    }

    v11 = [v9 intValue];
    if (v11 == 26 || v11 == 11)
    {
      [(ULPersistenceManager *)self _handleCorruptedDatabase:v13];
      [(ULPersistenceManager *)self _exitProcessWithFailureCode];
    }

    v5 = v13;
  }
}

- (void)_handleCorruptedDatabase:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULPersistenceManager *)self _getLocalStoreURL];
  if (onceToken_MicroLocation_Default != -1)
  {
    __90__ULPersistenceManager_initWithModelsDirectory_storesDirectory_managedObjectModel_useWal___block_invoke_cold_1();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
  {
    v7 = v6;
    v8 = [v5 path];
    v13 = 68289539;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2114;
    v18 = v4;
    v19 = 2113;
    v20 = v8;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Sqlite returned error indicating database corruption. deleting database and exiting, error:%{public, location:escape_only}@, store path:%{private, location:escape_only}@}", &v13, 0x26u);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
  }

  v9 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    v10 = v9;
    v11 = [v5 path];
    v13 = 68289539;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2114;
    v18 = v4;
    v19 = 2113;
    v20 = v11;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Sqlite returned error indicating database corruption. deleting database and exiting", "{msg%{public}.0s:Sqlite returned error indicating database corruption. deleting database and exiting, error:%{public, location:escape_only}@, store path:%{private, location:escape_only}@}", &v13, 0x26u);
  }

  if ([(ULPersistenceManager *)self _disconnectFromStore]&& ![(ULPersistenceManager *)self _destroyStore])
  {
    [(ULPersistenceManager *)self _deleteDatabaseFilesAtPath:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_deleteDatabaseFilesAtPath:(id)a3
{
  v39[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v39[0] = v5;
  v6 = [v3 path];
  v7 = [v6 stringByAppendingString:@"-wal"];
  v39[1] = v7;
  v24 = v3;
  v8 = [v3 path];
  v9 = [v8 stringByAppendingString:@"-shm"];
  v39[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
  }

  v11 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_INFO))
  {
    *buf = 68289283;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2113;
    v35 = v10;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Deleting store files, store files:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v26 + 1) + 8 * v17);
        if ([v4 fileExistsAtPath:v18])
        {
          v25 = v15;
          v19 = [v4 removeItemAtPath:v18 error:&v25];
          v20 = v25;

          if ((v19 & 1) == 0)
          {
            if (onceToken_MicroLocation_Default != -1)
            {
              [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
            }

            v21 = logObject_MicroLocation_Default;
            if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
            {
              *buf = 68289539;
              v31 = 0;
              v32 = 2082;
              v33 = "";
              v34 = 2113;
              v35 = v18;
              v36 = 2114;
              v37 = v20;
              _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Failed to delete file, filePath:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
            }

            if (onceToken_MicroLocation_Default != -1)
            {
              [ULPersistenceManager initWithModelsDirectory:storesDirectory:managedObjectModel:useWal:];
            }

            v22 = logObject_MicroLocation_Default;
            if (os_signpost_enabled(logObject_MicroLocation_Default))
            {
              *buf = 68289539;
              v31 = 0;
              v32 = 2082;
              v33 = "";
              v34 = 2113;
              v35 = v18;
              v36 = 2114;
              v37 = v20;
              _os_signpost_emit_with_name_impl(&dword_258FE9000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to delete file", "{msg%{public}.0s:Failed to delete file, filePath:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
            }
          }

          v15 = v20;
        }

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end