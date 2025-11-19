@interface BCCloudDataSource
+ (id)_documentsDirectoryURL;
+ (id)_sharedLegacyRootDirectoryURL;
+ (id)_sharedRootDirectoryURL;
+ (void)deleteCloudDataWithCompletion:(id)a3;
- (BCCloudDataSource)initWithManagedObjectModel:(id)a3;
- (BCCloudDataSource)initWithManagedObjectModel:(id)a3 nameOnDisk:(id)a4 delegate:(id)a5;
- (BCCloudDataSource)initWithManagedObjectModel:(id)a3 rootDirectoryURL:(id)a4 legacyRootDirectoryURL:(id)a5 nameOnDisk:(id)a6 delegate:(id)a7;
- (BCCloudDataSourceDelegate)delegate;
- (BOOL)_addStoreAtURL:(id)a3;
- (BOOL)_deleteDirectoryForStoreAtURL:(id)a3;
- (BOOL)_directoryExistsForStoreAtURL:(id)a3;
- (BOOL)_setupPersistentStoreWithRootDirectoryURL:(id)a3 legacyRootDirectoryURL:(id)a4 nameOnDisk:(id)a5;
- (id)_persistentStoreOptions;
- (void)_createDirectoryForStoreAtURL:(id)a3;
- (void)_logIf:(BOOL)a3 error:(id)a4 operation:(id)a5;
- (void)_migrateAndDestroyStoreAtLegacyURL:(id)a3 toModernURL:(id)a4;
- (void)_setupManagedObjectContext;
@end

@implementation BCCloudDataSource

+ (id)_sharedRootDirectoryURL
{
  v2 = [a1 _documentsDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"BCCloudData-iBooks" isDirectory:1];

  return v3;
}

+ (id)_documentsDirectoryURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = +[BDSApplication applicationDocumentsDirectory];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  return v4;
}

+ (id)_sharedLegacyRootDirectoryURL
{
  v2 = [a1 _documentsDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"BCCloudAsset-iBooks" isDirectory:1];

  return v3;
}

- (id)_persistentStoreOptions
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695D380];
  v6[0] = *MEMORY[0x1E695D318];
  v6[1] = v2;
  v7[0] = MEMORY[0x1E695E118];
  v7[1] = MEMORY[0x1E695E118];
  v6[2] = *MEMORY[0x1E695D3C0];
  v7[2] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_setupManagedObjectContext
{
  v3 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
  managedObjectContext = self->_managedObjectContext;
  self->_managedObjectContext = v3;

  [(NSManagedObjectContext *)self->_managedObjectContext setPersistentStoreCoordinator:self->_persistentStoreCoordinator];
  v5 = self->_managedObjectContext;

  MEMORY[0x1EEE66B58](v5, sel_setUndoManager_);
}

- (BCCloudDataSource)initWithManagedObjectModel:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BCCloudDataSource;
  v5 = [(BCCloudDataSource *)&v13 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v4];
    persistentStoreCoordinator = v5->_persistentStoreCoordinator;
    v5->_persistentStoreCoordinator = v6;

    v8 = v5->_persistentStoreCoordinator;
    v9 = *MEMORY[0x1E695D310];
    v10 = [(BCCloudDataSource *)v5 _persistentStoreOptions];
    v11 = [(NSPersistentStoreCoordinator *)v8 addPersistentStoreWithType:v9 configuration:0 URL:0 options:v10 error:0];

    [(BCCloudDataSource *)v5 _setupManagedObjectContext];
  }

  return v5;
}

- (BCCloudDataSource)initWithManagedObjectModel:(id)a3 nameOnDisk:(id)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[BCCloudDataSource _sharedRootDirectoryURL];
  v12 = +[BCCloudDataSource _sharedLegacyRootDirectoryURL];
  v13 = [(BCCloudDataSource *)self initWithManagedObjectModel:v10 rootDirectoryURL:v11 legacyRootDirectoryURL:v12 nameOnDisk:v9 delegate:v8];

  return v13;
}

- (BCCloudDataSource)initWithManagedObjectModel:(id)a3 rootDirectoryURL:(id)a4 legacyRootDirectoryURL:(id)a5 nameOnDisk:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  kdebug_trace();
  v24.receiver = self;
  v24.super_class = BCCloudDataSource;
  v17 = [(BCCloudDataSource *)&v24 init];
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v12];
    v19 = *(v17 + 2);
    *(v17 + 2) = v18;

    objc_storeWeak(v17 + 3, v16);
    if ([v17 _setupPersistentStoreWithRootDirectoryURL:v13 legacyRootDirectoryURL:v14 nameOnDisk:v15] && (objc_msgSend(*(v17 + 2), "persistentStores"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v21))
    {
      [v17 _setupManagedObjectContext];
    }

    else
    {
      v22 = BDSCloudKitLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1E47084D0(v17 + 2, v22);
      }
    }
  }

  kdebug_trace();

  return v17;
}

+ (void)deleteCloudDataWithCompletion:(id)a3
{
  v4 = MEMORY[0x1E696AC08];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [a1 _sharedLegacyRootDirectoryURL];
  [v6 removeItemAtURL:v7 error:0];

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [a1 _sharedRootDirectoryURL];
  v13 = 0;
  v10 = [v8 removeItemAtURL:v9 error:&v13];
  v11 = v13;

  v12 = _Block_copy(v5);
  if (v12)
  {
    v12[2](v12, v10, v11);
  }
}

- (void)_logIf:(BOOL)a3 error:(id)a4 operation:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  if (v6)
  {
    v9 = BDSCloudKitLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1E470854C(v8, v7, v9);
    }
  }
}

- (BOOL)_setupPersistentStoreWithRootDirectoryURL:(id)a3 legacyRootDirectoryURL:(id)a4 nameOnDisk:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [a3 URLByAppendingPathComponent:v9 isDirectory:1];
  v11 = [v10 URLByAppendingPathComponent:v9 isDirectory:0];
  if (![(BCCloudDataSource *)self _directoryExistsForStoreAtURL:v11])
  {
    v12 = [v8 URLByAppendingPathComponent:v9];
    [(BCCloudDataSource *)self _createDirectoryForStoreAtURL:v11];
    if ([(BCCloudDataSource *)self _directoryExistsForStoreAtURL:v12])
    {
      [(BCCloudDataSource *)self _migrateAndDestroyStoreAtLegacyURL:v12 toModernURL:v11];
    }

    else
    {
      v13 = BDSCloudKitLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138412290;
        v29 = v12;
        _os_log_impl(&dword_1E45E0000, v13, OS_LOG_TYPE_DEFAULT, "Unable to migrate legacy database since file does not exist at URL %@", &v28, 0xCu);
      }
    }
  }

  if (!BDSIsInternalInstall())
  {
    goto LABEL_14;
  }

  v14 = [MEMORY[0x1E698F540] books];
  v15 = [v14 userDefaults];

  v16 = [v15 stringForKey:@"BDSDevelopmentForceAddStoreFailureOnce"];
  if (![v16 isEqual:v9])
  {

LABEL_14:
    v18 = [(BCCloudDataSource *)self _addStoreAtURL:v11];
    v19 = 0;
    goto LABEL_15;
  }

  v17 = BDSCloudKitLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138543874;
    v29 = v9;
    v30 = 2160;
    v31 = 1752392040;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_1E45E0000, v17, OS_LOG_TYPE_DEFAULT, "_setupPersistentStoreWithRootDirectoryURL -- Forcing store failure once for %{public}@, url: %{mask.hash}@", &v28, 0x20u);
  }

  [v15 removeObjectForKey:@"BDSDevelopmentForceAddStoreFailureOnce"];
  v18 = 0;
  v19 = 1;
LABEL_15:
  v20 = BDSCloudKitLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412546;
    v29 = v11;
    v30 = 1024;
    LODWORD(v31) = v18;
    _os_log_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_DEFAULT, "_setupPersistentStoreWithRootDirectoryURL: %@, storeAdded: %d", &v28, 0x12u);
  }

  if (v18)
  {
    goto LABEL_26;
  }

  v21 = BDSCloudKitLog();
  v22 = v21;
  if (v19)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1E470865C(v22);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    sub_1E4708618(v22);
  }

  if ([(BCCloudDataSource *)self _deleteDirectoryForStoreAtURL:v11])
  {
    [(BCCloudDataSource *)self _createDirectoryForStoreAtURL:v11];
    v23 = [(BCCloudDataSource *)self delegate];
    [v23 dataSource:self storeDidReset:v9];
  }

  if ([(BCCloudDataSource *)self _addStoreAtURL:v11])
  {
LABEL_26:
    v24 = 1;
  }

  else
  {
    v25 = BDSCloudKitLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1E47086A0(v25);
    }

    v24 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)_directoryExistsForStoreAtURL:(id)a3
{
  v3 = [a3 URLByDeletingLastPathComponent];
  v4 = [v3 checkResourceIsReachableAndReturnError:0];

  return v4;
}

- (void)_createDirectoryForStoreAtURL:(id)a3
{
  v4 = MEMORY[0x1E696AC08];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [v5 URLByDeletingLastPathComponent];

  v9 = 0;
  LODWORD(v5) = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v9];
  v8 = v9;

  [(BCCloudDataSource *)self _logIf:v5 ^ 1 error:v8 operation:@"creating directory for store"];
}

- (BOOL)_deleteDirectoryForStoreAtURL:(id)a3
{
  v4 = MEMORY[0x1E696AC08];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [v5 URLByDeletingLastPathComponent];

  v10 = 0;
  LODWORD(v5) = [v6 removeItemAtURL:v7 error:&v10];
  v8 = v10;

  [(BCCloudDataSource *)self _logIf:v5 ^ 1 error:v8 operation:@"deleting directory for store"];
  return v5;
}

- (void)_migrateAndDestroyStoreAtLegacyURL:(id)a3 toModernURL:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = BDSCloudKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_INFO, "Migrating legacy cloud data source from %@ to %@", buf, 0x16u);
  }

  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  v10 = [(BCCloudDataSource *)self _persistentStoreOptions];
  v11 = [(BCCloudDataSource *)self _persistentStoreOptions];
  v12 = *MEMORY[0x1E695D4A8];
  v21 = 0;
  v13 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator replacePersistentStoreAtURL:v7 destinationOptions:v10 withPersistentStoreFromURL:v6 sourceOptions:v11 storeType:v12 error:&v21];
  v14 = v21;

  [(BCCloudDataSource *)self _logIf:!v13 error:v14 operation:@"[MIGRATE] migrate legacy store"];
  v15 = BDSCloudKitLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&dword_1E45E0000, v15, OS_LOG_TYPE_INFO, "Destroying legacy cloud data source at %@", buf, 0xCu);
  }

  v16 = self->_persistentStoreCoordinator;
  v20 = 0;
  v17 = [(NSPersistentStoreCoordinator *)v16 destroyPersistentStoreAtURL:v6 withType:v12 options:0 error:&v20];
  v18 = v20;
  [(BCCloudDataSource *)self _logIf:!v17 error:v18 operation:@"[MIGRATE] destroy legacy store"];

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)_addStoreAtURL:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = BDSCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 lastPathComponent];
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_INFO, "Adding cloud data source persistent store for %@", buf, 0xCu);
  }

  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  v8 = *MEMORY[0x1E695D4A8];
  v9 = [(BCCloudDataSource *)self _persistentStoreOptions];
  v19 = 0;
  v10 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator addPersistentStoreWithType:v8 configuration:0 URL:v4 options:v9 error:&v19];
  v11 = v19;

  if ([v10 isReadOnly])
  {
    v12 = self->_persistentStoreCoordinator;
    v18 = 0;
    v13 = [(NSPersistentStoreCoordinator *)v12 removePersistentStore:v10 error:&v18];
    v14 = v18;
    [(BCCloudDataSource *)self _logIf:!v13 error:v14 operation:@"removing read-only cloud data source persistent store"];

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1002 userInfo:0];

    v10 = 0;
    v11 = v15;
  }

  [(BCCloudDataSource *)self _logIf:v10 == 0 error:v11 operation:@"adding cloud data source persistent store"];

  v16 = *MEMORY[0x1E69E9840];
  return v10 != 0;
}

- (BCCloudDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end