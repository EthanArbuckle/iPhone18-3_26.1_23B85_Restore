@interface BCCloudDataSource
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

- (BCCloudDataSource)initWithManagedObjectModel:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BCCloudDataSource;
  v5 = [(BCCloudDataSource *)&v12 init];
  if (v5)
  {
    v6 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v4];
    persistentStoreCoordinator = v5->_persistentStoreCoordinator;
    v5->_persistentStoreCoordinator = v6;

    v8 = v5->_persistentStoreCoordinator;
    v9 = [(BCCloudDataSource *)v5 _persistentStoreOptions];
    v10 = [(NSPersistentStoreCoordinator *)v8 addPersistentStoreWithType:NSInMemoryStoreType configuration:0 URL:0 options:v9 error:0];

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
    v18 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v12];
    v19 = *(v17 + 2);
    *(v17 + 2) = v18;

    objc_storeWeak(v17 + 3, v16);
    if ([v17 _setupPersistentStoreWithRootDirectoryURL:v13 legacyRootDirectoryURL:v14 nameOnDisk:v15] && (objc_msgSend(*(v17 + 2), "persistentStores"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v21))
    {
      [v17 _setupManagedObjectContext];
    }

    else
    {
      v22 = sub_100002660();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1001C0AD8(v17 + 2, v22);
      }
    }
  }

  kdebug_trace();

  return v17;
}

+ (void)deleteCloudDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [a1 _sharedLegacyRootDirectoryURL];
  [v5 removeItemAtURL:v6 error:0];

  v7 = +[NSFileManager defaultManager];
  v8 = [a1 _sharedRootDirectoryURL];
  v12 = 0;
  v9 = [v7 removeItemAtURL:v8 error:&v12];
  v10 = v12;

  v11 = objc_retainBlock(v4);
  if (v11)
  {
    v11[2](v11, v9, v10);
  }
}

+ (id)_sharedRootDirectoryURL
{
  v2 = [a1 _documentsDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"BCCloudData-BookDataStoreService" isDirectory:1];

  return v3;
}

+ (id)_sharedLegacyRootDirectoryURL
{
  v2 = [a1 _documentsDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"BCCloudAsset-BookDataStoreService" isDirectory:1];

  return v3;
}

- (id)_persistentStoreOptions
{
  v4[0] = NSInferMappingModelAutomaticallyOption;
  v4[1] = NSMigratePersistentStoresAutomaticallyOption;
  v5[0] = &__kCFBooleanTrue;
  v5[1] = &__kCFBooleanTrue;
  v4[2] = NSPersistentHistoryTrackingKey;
  v5[2] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (void)_logIf:(BOOL)a3 error:(id)a4 operation:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  if (v6)
  {
    v9 = sub_100002660();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0B54(v8, v7, v9);
    }
  }
}

- (BOOL)_setupPersistentStoreWithRootDirectoryURL:(id)a3 legacyRootDirectoryURL:(id)a4 nameOnDisk:(id)a5
{
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
      v13 = sub_100002660();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412290;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unable to migrate legacy database since file does not exist at URL %@", &v27, 0xCu);
      }
    }
  }

  if (!sub_10000CE48())
  {
    goto LABEL_14;
  }

  v14 = +[BUAppGroup books];
  v15 = [v14 userDefaults];

  v16 = [v15 stringForKey:@"BDSDevelopmentForceAddStoreFailureOnce"];
  if (![v16 isEqual:v9])
  {

LABEL_14:
    v18 = [(BCCloudDataSource *)self _addStoreAtURL:v11];
    v19 = 0;
    goto LABEL_15;
  }

  v17 = sub_100002660();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138543874;
    v28 = v9;
    v29 = 2160;
    v30 = 1752392040;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_setupPersistentStoreWithRootDirectoryURL -- Forcing store failure once for %{public}@, url: %{mask.hash}@", &v27, 0x20u);
  }

  [v15 removeObjectForKey:@"BDSDevelopmentForceAddStoreFailureOnce"];
  v18 = 0;
  v19 = 1;
LABEL_15:
  v20 = sub_100002660();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412546;
    v28 = v11;
    v29 = 1024;
    LODWORD(v30) = v18;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "_setupPersistentStoreWithRootDirectoryURL: %@, storeAdded: %d", &v27, 0x12u);
  }

  if (v18)
  {
    goto LABEL_26;
  }

  v21 = sub_100002660();
  v22 = v21;
  if (v19)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0C64(v22);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    sub_1001C0C20(v22);
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
    v25 = sub_100002660();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1001C0CA8(v25);
    }

    v24 = 0;
  }

  return v24;
}

- (void)_setupManagedObjectContext
{
  v3 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  managedObjectContext = self->_managedObjectContext;
  self->_managedObjectContext = v3;

  [(NSManagedObjectContext *)self->_managedObjectContext setPersistentStoreCoordinator:self->_persistentStoreCoordinator];
  v5 = self->_managedObjectContext;

  [(NSManagedObjectContext *)v5 setUndoManager:0];
}

- (BOOL)_directoryExistsForStoreAtURL:(id)a3
{
  v3 = [a3 URLByDeletingLastPathComponent];
  v4 = [v3 checkResourceIsReachableAndReturnError:0];

  return v4;
}

- (void)_createDirectoryForStoreAtURL:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v4 URLByDeletingLastPathComponent];

  v8 = 0;
  LODWORD(v4) = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v8];
  v7 = v8;

  [(BCCloudDataSource *)self _logIf:v4 ^ 1 error:v7 operation:@"creating directory for store"];
}

- (BOOL)_deleteDirectoryForStoreAtURL:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v4 URLByDeletingLastPathComponent];

  v9 = 0;
  LODWORD(v4) = [v5 removeItemAtURL:v6 error:&v9];
  v7 = v9;

  [(BCCloudDataSource *)self _logIf:v4 ^ 1 error:v7 operation:@"deleting directory for store"];
  return v4;
}

- (void)_migrateAndDestroyStoreAtLegacyURL:(id)a3 toModernURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Migrating legacy cloud data source from %@ to %@", buf, 0x16u);
  }

  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  v10 = [(BCCloudDataSource *)self _persistentStoreOptions];
  v11 = [(BCCloudDataSource *)self _persistentStoreOptions];
  v19 = 0;
  v12 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator replacePersistentStoreAtURL:v7 destinationOptions:v10 withPersistentStoreFromURL:v6 sourceOptions:v11 storeType:NSSQLiteStoreType error:&v19];
  v13 = v19;

  [(BCCloudDataSource *)self _logIf:v12 ^ 1 error:v13 operation:@"[MIGRATE] migrate legacy store"];
  v14 = sub_100002660();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Destroying legacy cloud data source at %@", buf, 0xCu);
  }

  v15 = self->_persistentStoreCoordinator;
  v18 = 0;
  v16 = [(NSPersistentStoreCoordinator *)v15 destroyPersistentStoreAtURL:v6 withType:NSSQLiteStoreType options:0 error:&v18];
  v17 = v18;
  [(BCCloudDataSource *)self _logIf:v16 ^ 1 error:v17 operation:@"[MIGRATE] destroy legacy store"];
}

- (BOOL)_addStoreAtURL:(id)a3
{
  v4 = a3;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 lastPathComponent];
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Adding cloud data source persistent store for %@", buf, 0xCu);
  }

  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  v8 = [(BCCloudDataSource *)self _persistentStoreOptions];
  v17 = 0;
  v9 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v4 options:v8 error:&v17];
  v10 = v17;

  if ([v9 isReadOnly])
  {
    v11 = self->_persistentStoreCoordinator;
    v16 = 0;
    v12 = [(NSPersistentStoreCoordinator *)v11 removePersistentStore:v9 error:&v16];
    v13 = v16;
    [(BCCloudDataSource *)self _logIf:v12 ^ 1 error:v13 operation:@"removing read-only cloud data source persistent store"];

    v14 = [NSError errorWithDomain:@"BDSErrorDomain" code:1002 userInfo:0];

    v9 = 0;
    v10 = v14;
  }

  [(BCCloudDataSource *)self _logIf:v9 == 0 error:v10 operation:@"adding cloud data source persistent store"];

  return v9 != 0;
}

- (BCCloudDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end