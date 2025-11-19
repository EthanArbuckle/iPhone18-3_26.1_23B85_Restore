@interface CLSDBCache
+ (BOOL)locationIsValidForDatabaseAtURL:(id)a3;
+ (id)urlWithParentURL:(id)a3;
- (BOOL)_save;
- (BOOL)_saveWithError:(id *)a3;
- (BOOL)save;
- (CLSDBCache)initWithURL:(id)a3 dataModelName:(id)a4;
- (NSManagedObjectContext)managedObjectContext;
- (NSManagedObjectModel)managedObjectModel;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (id)formatVersion;
- (id)initForTesting;
- (void)_resetCoreDataStack;
- (void)_saveAsync;
- (void)invalidateDiskCaches;
- (void)invalidateMemoryCaches;
@end

@implementation CLSDBCache

- (void)invalidateMemoryCaches
{
  v3 = [(CLSDBCache *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__CLSDBCache_invalidateMemoryCaches__block_invoke;
  v4[3] = &unk_2788A8260;
  v4[4] = self;
  [v3 performBlockAndWait:v4];
}

void __36__CLSDBCache_invalidateMemoryCaches__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  [v2 refreshAllObjects];

  v3 = [*(a1 + 32) managedObjectContext];
  [v3 reset];
}

- (void)invalidateDiskCaches
{
  v3 = [(CLSDBCache *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__CLSDBCache_invalidateDiskCaches__block_invoke;
  v4[3] = &unk_2788A8260;
  v4[4] = self;
  [v3 performBlockAndWait:v4];
}

void __34__CLSDBCache_invalidateDiskCaches__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = *MEMORY[0x277CBE1D8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [v2 dictionaryWithObjectsAndKeys:{v3, v4, v5, *MEMORY[0x277CBE178], 0}];

  v7 = [*(a1 + 32) persistentStoreCoordinator];
  v8 = v7;
  if (v7)
  {
    v26 = a1;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [v7 persistentStores];
    v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    v10 = *MEMORY[0x277CBE2E8];
    if (v9)
    {
      v11 = v9;
      v12 = 0;
      v13 = *v31;
      do
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [*(*(&v30 + 1) + 8 * v14) URL];
          v29 = v15;
          v17 = [v8 destroyPersistentStoreAtURL:v16 withType:v10 options:v6 error:&v29];
          v12 = v29;

          if ((v17 & 1) == 0)
          {
            v18 = +[CLSLogging sharedLogging];
            v19 = [v18 loggingConnection];

            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v35 = v12;
              _os_log_error_impl(&dword_22F907000, v19, OS_LOG_TYPE_ERROR, "Could not destroy persistent store for DBCache, %@", buf, 0xCu);
            }
          }

          ++v14;
          v15 = v12;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v20 = [*(v26 + 32) diskCacheURL];
    v28 = v12;
    v21 = [v8 addPersistentStoreWithType:v10 configuration:0 URL:v20 options:v6 error:&v28];
    v22 = v28;

    if (!v21)
    {
      v23 = +[CLSLogging sharedLogging];
      v24 = [v23 loggingConnection];

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [v22 localizedDescription];
        *buf = 138412290;
        v35 = v25;
        _os_log_error_impl(&dword_22F907000, v24, OS_LOG_TYPE_ERROR, "An error occured creating database store: %@", buf, 0xCu);
      }

      [*(v26 + 32) _resetCoreDataStack];
    }
  }
}

- (void)_resetCoreDataStack
{
  obj = self;
  objc_sync_enter(obj);
  persistentStoreCoordinator = obj->_persistentStoreCoordinator;
  obj->_persistentStoreCoordinator = 0;

  managedObjectContext = obj->_managedObjectContext;
  obj->_managedObjectContext = 0;

  objc_sync_exit(obj);
}

- (void)_saveAsync
{
  v3 = [(CLSDBCache *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __24__CLSDBCache__saveAsync__block_invoke;
  v4[3] = &unk_2788A8260;
  v4[4] = self;
  [v3 performBlock:v4];
}

void __24__CLSDBCache__saveAsync__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 hasChanges];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _save];
  }
}

- (BOOL)save
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = [(CLSDBCache *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __18__CLSDBCache_save__block_invoke;
  v5[3] = &unk_2788A7470;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __18__CLSDBCache_save__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 hasChanges];

  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _save];
  }
}

- (BOOL)_save
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [(CLSDBCache *)self _saveWithError:&v8];
  v3 = v8;
  if (!v2)
  {
    v4 = +[CLSLogging sharedLogging];
    v5 = [v4 loggingConnection];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 localizedDescription];
      *buf = 138412290;
      v10 = v7;
      _os_log_error_impl(&dword_22F907000, v5, OS_LOG_TYPE_ERROR, "An error occured saving to the database: %@", buf, 0xCu);
    }
  }

  return v2;
}

- (BOOL)_saveWithError:(id *)a3
{
  v4 = [(CLSDBCache *)self managedObjectContext];
  LOBYTE(a3) = [v4 save:a3];

  return a3;
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  v54[2] = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  persistentStoreCoordinator = v2->_persistentStoreCoordinator;
  if (persistentStoreCoordinator)
  {
    v4 = persistentStoreCoordinator;
    goto LABEL_27;
  }

  v5 = MEMORY[0x277CBEC38];
  v6 = *MEMORY[0x277CBE178];
  v53[0] = *MEMORY[0x277CBE1D8];
  v53[1] = v6;
  v54[0] = MEMORY[0x277CBEC38];
  v54[1] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v8 = [(CLSDBCache *)v2 managedObjectModel];
  if (!v8)
  {
    v35 = +[CLSLogging sharedLogging];
    v14 = [v35 loggingConnection];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F907000, v14, OS_LOG_TYPE_ERROR, "An error occured when we get the managedObjectModel", buf, 2u);
    }

    v27 = 0;
    v4 = 0;
    goto LABEL_26;
  }

  v9 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v8];
  v10 = v2->_persistentStoreCoordinator;
  v2->_persistentStoreCoordinator = v9;

  v11 = MEMORY[0x277CCACA8];
  v12 = [(CLSDBCache *)v2 dataModelName];
  v13 = [(NSURL *)v2->_diskCacheURL lastPathComponent];
  v14 = [v11 stringWithFormat:@"%@.formatVersion.%@", v12, v13];

  v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v16 = [v15 stringForKey:v14];
  v17 = [(CLSDBCache *)v2 formatVersion];
  v18 = [v16 isEqualToString:v17];

  v19 = [(CLSDBCache *)v2 formatVersion];
  if (v19 && (v20 = [(CLSDBCache *)v2 supportsVersioning], v19, ((v18 ^ 1) & v20) == 1))
  {
    v51 = *MEMORY[0x277CBE168];
    v52 = v5;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];

    v22 = 1;
    v7 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v2->_persistentStoreCoordinator;
  v24 = *MEMORY[0x277CBE2E8];
  diskCacheURL = v2->_diskCacheURL;
  v48 = 0;
  v26 = [(NSPersistentStoreCoordinator *)v23 addPersistentStoreWithType:v24 configuration:0 URL:diskCacheURL options:v7 error:&v48];
  v27 = v48;
  if (v26)
  {
    if (v22)
    {
      [(CLSDBCache *)v2 invalidateDiskCaches];
      [(CLSDBCache *)v2 invalidateMemoryCaches];
      v28 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v29 = [(CLSDBCache *)v2 formatVersion];
      [v28 setObject:v29 forKey:v14];

      v30 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v30 synchronize];

      v31 = +[CLSLogging sharedLogging];
      v32 = [v31 loggingConnection];

      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F907000, v32, OS_LOG_TYPE_INFO, "Core Data database successfully cleared", buf, 2u);
      }
    }

    v33 = +[CLSLogging sharedLogging];
    p_super = [v33 loggingConnection];

    if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F907000, p_super, OS_LOG_TYPE_INFO, "Core Data database successfully initialized", buf, 2u);
    }
  }

  else
  {
    v36 = +[CLSLogging sharedLogging];
    v37 = [v36 loggingConnection];

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v27;
      _os_log_error_impl(&dword_22F907000, v37, OS_LOG_TYPE_ERROR, "Cannot initialize Core Data database: %@. Removing store", buf, 0xCu);
    }

    v38 = v2->_persistentStoreCoordinator;
    v39 = v2->_diskCacheURL;
    v47 = v27;
    [(NSPersistentStoreCoordinator *)v38 destroyPersistentStoreAtURL:v39 withType:v24 options:0 error:&v47];
    v40 = v47;

    v41 = v2->_persistentStoreCoordinator;
    v42 = v2->_diskCacheURL;
    v46 = v40;
    v26 = [(NSPersistentStoreCoordinator *)v41 addPersistentStoreWithType:v24 configuration:0 URL:v42 options:v7 error:&v46];
    v27 = v46;

    if (v26)
    {
      goto LABEL_25;
    }

    v43 = +[CLSLogging sharedLogging];
    v44 = [v43 loggingConnection];

    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v27;
      _os_log_error_impl(&dword_22F907000, v44, OS_LOG_TYPE_ERROR, "Cannot initialize Core Data database even after removing store: %@.", buf, 0xCu);
    }

    v26 = 0;
    p_super = &v2->_persistentStoreCoordinator->super;
    v2->_persistentStoreCoordinator = 0;
  }

LABEL_25:
  v4 = v2->_persistentStoreCoordinator;

LABEL_26:
LABEL_27:
  objc_sync_exit(v2);

  return v4;
}

- (NSManagedObjectModel)managedObjectModel
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  managedObjectModel = v2->_managedObjectModel;
  if (managedObjectModel)
  {
    v4 = managedObjectModel;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [(CLSDBCache *)v2 dataModelName];
    v7 = [v5 pathForResource:v6 ofType:@"momd"];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CBE450]);
      v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
      v10 = [v8 initWithContentsOfURL:v9];
      v11 = v2->_managedObjectModel;
      v2->_managedObjectModel = v10;
    }

    else
    {
      v12 = +[CLSLogging sharedLogging];
      v13 = [v12 loggingConnection];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = [(CLSDBCache *)v2 dataModelName];
        v16 = 138412290;
        v17 = v15;
        _os_log_error_impl(&dword_22F907000, v13, OS_LOG_TYPE_ERROR, "Failed to load a bundle containing %@.", &v16, 0xCu);
      }
    }

    v4 = v2->_managedObjectModel;
  }

  objc_sync_exit(v2);

  return v4;
}

- (NSManagedObjectContext)managedObjectContext
{
  v2 = self;
  objc_sync_enter(v2);
  managedObjectContext = v2->_managedObjectContext;
  if (managedObjectContext)
  {
    v4 = managedObjectContext;
  }

  else
  {
    v5 = [(CLSDBCache *)v2 persistentStoreCoordinator];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
      v7 = v2->_managedObjectContext;
      v2->_managedObjectContext = v6;

      [(NSManagedObjectContext *)v2->_managedObjectContext setUndoManager:0];
      [(NSManagedObjectContext *)v2->_managedObjectContext setPersistentStoreCoordinator:v5];
    }

    v4 = v2->_managedObjectContext;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)formatVersion
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(CLSDBCache *)self dataModelName];
  v4 = [v2 stringWithFormat:@"%@Version", v3];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 infoDictionary];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (CLSDBCache)initWithURL:(id)a3 dataModelName:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([objc_opt_class() locationIsValidForDatabaseAtURL:v7])
  {
    v12.receiver = self;
    v12.super_class = CLSDBCache;
    v9 = [(CLSDBCache *)&v12 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_diskCacheURL, a3);
      objc_storeStrong(&v10->_dataModelName, a4);
    }
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (id)initForTesting
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = NSTemporaryDirectory();
  v5 = [v3 fileURLWithPath:v4];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 URLByAppendingPathComponent:v7];
  v9 = [(CLSDBCache *)self initWithURL:v8 dataModelName:0];

  return v9;
}

+ (BOOL)locationIsValidForDatabaseAtURL:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v15 = 0;
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v15];

  if (v6)
  {
    if (v15 != 1)
    {
      v9 = 1;
      goto LABEL_13;
    }

    v7 = +[CLSLogging sharedLogging];
    v8 = [v7 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v3;
      _os_log_error_impl(&dword_22F907000, v8, OS_LOG_TYPE_ERROR, "Path %@ specified for database already exists as a directory", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v10 = [v3 URLByDeletingLastPathComponent];
    v14 = 0;
    v9 = [v4 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v14];
    v8 = v14;
    if ((v9 & 1) == 0)
    {
      v11 = +[CLSLogging sharedLogging];
      v12 = [v11 loggingConnection];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = v3;
        v18 = 2112;
        v19 = v8;
        _os_log_error_impl(&dword_22F907000, v12, OS_LOG_TYPE_ERROR, "Failed to create intermediate cache directories %@: %@", buf, 0x16u);
      }
    }
  }

LABEL_13:
  return v9;
}

+ (id)urlWithParentURL:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [a1 defaultCacheName];
  v6 = [v5 pathComponents];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v8 = v4;
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    v8 = v4;
    do
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v8 = [v12 URLByAppendingPathComponent:*(*(&v15 + 1) + 8 * v11)];

        ++v11;
        v12 = v8;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v8 URLByAppendingPathExtension:@"sqlite"];

  return v13;
}

@end