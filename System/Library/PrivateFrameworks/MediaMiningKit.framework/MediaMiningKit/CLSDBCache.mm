@interface CLSDBCache
+ (BOOL)locationIsValidForDatabaseAtURL:(id)l;
+ (id)urlWithParentURL:(id)l;
- (BOOL)_save;
- (BOOL)_saveWithError:(id *)error;
- (BOOL)save;
- (CLSDBCache)initWithURL:(id)l dataModelName:(id)name;
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
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__CLSDBCache_invalidateMemoryCaches__block_invoke;
  v4[3] = &unk_2788A8260;
  v4[4] = self;
  [managedObjectContext performBlockAndWait:v4];
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
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__CLSDBCache_invalidateDiskCaches__block_invoke;
  v4[3] = &unk_2788A8260;
  v4[4] = self;
  [managedObjectContext performBlockAndWait:v4];
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
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __24__CLSDBCache__saveAsync__block_invoke;
  v4[3] = &unk_2788A8260;
  v4[4] = self;
  [managedObjectContext performBlock:v4];
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __18__CLSDBCache_save__block_invoke;
  v5[3] = &unk_2788A7470;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
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
    loggingConnection = [v4 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v3 localizedDescription];
      *buf = 138412290;
      v10 = localizedDescription;
      _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "An error occured saving to the database: %@", buf, 0xCu);
    }
  }

  return v2;
}

- (BOOL)_saveWithError:(id *)error
{
  managedObjectContext = [(CLSDBCache *)self managedObjectContext];
  LOBYTE(error) = [managedObjectContext save:error];

  return error;
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  v54[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  persistentStoreCoordinator = selfCopy->_persistentStoreCoordinator;
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
  managedObjectModel = [(CLSDBCache *)selfCopy managedObjectModel];
  if (!managedObjectModel)
  {
    v35 = +[CLSLogging sharedLogging];
    loggingConnection = [v35 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "An error occured when we get the managedObjectModel", buf, 2u);
    }

    v27 = 0;
    v4 = 0;
    goto LABEL_26;
  }

  v9 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:managedObjectModel];
  v10 = selfCopy->_persistentStoreCoordinator;
  selfCopy->_persistentStoreCoordinator = v9;

  v11 = MEMORY[0x277CCACA8];
  dataModelName = [(CLSDBCache *)selfCopy dataModelName];
  lastPathComponent = [(NSURL *)selfCopy->_diskCacheURL lastPathComponent];
  loggingConnection = [v11 stringWithFormat:@"%@.formatVersion.%@", dataModelName, lastPathComponent];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v16 = [standardUserDefaults stringForKey:loggingConnection];
  formatVersion = [(CLSDBCache *)selfCopy formatVersion];
  v18 = [v16 isEqualToString:formatVersion];

  formatVersion2 = [(CLSDBCache *)selfCopy formatVersion];
  if (formatVersion2 && (v20 = [(CLSDBCache *)selfCopy supportsVersioning], formatVersion2, ((v18 ^ 1) & v20) == 1))
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

  v23 = selfCopy->_persistentStoreCoordinator;
  v24 = *MEMORY[0x277CBE2E8];
  diskCacheURL = selfCopy->_diskCacheURL;
  v48 = 0;
  v26 = [(NSPersistentStoreCoordinator *)v23 addPersistentStoreWithType:v24 configuration:0 URL:diskCacheURL options:v7 error:&v48];
  v27 = v48;
  if (v26)
  {
    if (v22)
    {
      [(CLSDBCache *)selfCopy invalidateDiskCaches];
      [(CLSDBCache *)selfCopy invalidateMemoryCaches];
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      formatVersion3 = [(CLSDBCache *)selfCopy formatVersion];
      [standardUserDefaults2 setObject:formatVersion3 forKey:loggingConnection];

      standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults3 synchronize];

      v31 = +[CLSLogging sharedLogging];
      loggingConnection2 = [v31 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F907000, loggingConnection2, OS_LOG_TYPE_INFO, "Core Data database successfully cleared", buf, 2u);
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
    loggingConnection3 = [v36 loggingConnection];

    if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v27;
      _os_log_error_impl(&dword_22F907000, loggingConnection3, OS_LOG_TYPE_ERROR, "Cannot initialize Core Data database: %@. Removing store", buf, 0xCu);
    }

    v38 = selfCopy->_persistentStoreCoordinator;
    v39 = selfCopy->_diskCacheURL;
    v47 = v27;
    [(NSPersistentStoreCoordinator *)v38 destroyPersistentStoreAtURL:v39 withType:v24 options:0 error:&v47];
    v40 = v47;

    v41 = selfCopy->_persistentStoreCoordinator;
    v42 = selfCopy->_diskCacheURL;
    v46 = v40;
    v26 = [(NSPersistentStoreCoordinator *)v41 addPersistentStoreWithType:v24 configuration:0 URL:v42 options:v7 error:&v46];
    v27 = v46;

    if (v26)
    {
      goto LABEL_25;
    }

    v43 = +[CLSLogging sharedLogging];
    loggingConnection4 = [v43 loggingConnection];

    if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v27;
      _os_log_error_impl(&dword_22F907000, loggingConnection4, OS_LOG_TYPE_ERROR, "Cannot initialize Core Data database even after removing store: %@.", buf, 0xCu);
    }

    v26 = 0;
    p_super = &selfCopy->_persistentStoreCoordinator->super;
    selfCopy->_persistentStoreCoordinator = 0;
  }

LABEL_25:
  v4 = selfCopy->_persistentStoreCoordinator;

LABEL_26:
LABEL_27:
  objc_sync_exit(selfCopy);

  return v4;
}

- (NSManagedObjectModel)managedObjectModel
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  managedObjectModel = selfCopy->_managedObjectModel;
  if (managedObjectModel)
  {
    v4 = managedObjectModel;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    dataModelName = [(CLSDBCache *)selfCopy dataModelName];
    v7 = [v5 pathForResource:dataModelName ofType:@"momd"];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x277CBE450]);
      v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
      v10 = [v8 initWithContentsOfURL:v9];
      v11 = selfCopy->_managedObjectModel;
      selfCopy->_managedObjectModel = v10;
    }

    else
    {
      v12 = +[CLSLogging sharedLogging];
      loggingConnection = [v12 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        dataModelName2 = [(CLSDBCache *)selfCopy dataModelName];
        v16 = 138412290;
        v17 = dataModelName2;
        _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to load a bundle containing %@.", &v16, 0xCu);
      }
    }

    v4 = selfCopy->_managedObjectModel;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (NSManagedObjectContext)managedObjectContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  managedObjectContext = selfCopy->_managedObjectContext;
  if (managedObjectContext)
  {
    v4 = managedObjectContext;
  }

  else
  {
    persistentStoreCoordinator = [(CLSDBCache *)selfCopy persistentStoreCoordinator];
    if (persistentStoreCoordinator)
    {
      v6 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
      v7 = selfCopy->_managedObjectContext;
      selfCopy->_managedObjectContext = v6;

      [(NSManagedObjectContext *)selfCopy->_managedObjectContext setUndoManager:0];
      [(NSManagedObjectContext *)selfCopy->_managedObjectContext setPersistentStoreCoordinator:persistentStoreCoordinator];
    }

    v4 = selfCopy->_managedObjectContext;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)formatVersion
{
  v2 = MEMORY[0x277CCACA8];
  dataModelName = [(CLSDBCache *)self dataModelName];
  v4 = [v2 stringWithFormat:@"%@Version", dataModelName];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  infoDictionary = [v5 infoDictionary];
  v7 = [infoDictionary objectForKeyedSubscript:v4];

  return v7;
}

- (CLSDBCache)initWithURL:(id)l dataModelName:(id)name
{
  lCopy = l;
  nameCopy = name;
  if ([objc_opt_class() locationIsValidForDatabaseAtURL:lCopy])
  {
    v12.receiver = self;
    v12.super_class = CLSDBCache;
    v9 = [(CLSDBCache *)&v12 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_diskCacheURL, l);
      objc_storeStrong(&v10->_dataModelName, name);
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
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v8 = [v5 URLByAppendingPathComponent:uUIDString];
  v9 = [(CLSDBCache *)self initWithURL:v8 dataModelName:0];

  return v9;
}

+ (BOOL)locationIsValidForDatabaseAtURL:(id)l
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v15 = 0;
  path = [lCopy path];
  v6 = [v4 fileExistsAtPath:path isDirectory:&v15];

  if (v6)
  {
    if (v15 != 1)
    {
      v9 = 1;
      goto LABEL_13;
    }

    v7 = +[CLSLogging sharedLogging];
    loggingConnection = [v7 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = lCopy;
      _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "Path %@ specified for database already exists as a directory", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    v14 = 0;
    v9 = [v4 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v14];
    loggingConnection = v14;
    if ((v9 & 1) == 0)
    {
      v11 = +[CLSLogging sharedLogging];
      loggingConnection2 = [v11 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = lCopy;
        v18 = 2112;
        v19 = loggingConnection;
        _os_log_error_impl(&dword_22F907000, loggingConnection2, OS_LOG_TYPE_ERROR, "Failed to create intermediate cache directories %@: %@", buf, 0x16u);
      }
    }
  }

LABEL_13:
  return v9;
}

+ (id)urlWithParentURL:(id)l
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  defaultCacheName = [self defaultCacheName];
  pathComponents = [defaultCacheName pathComponents];

  v7 = [pathComponents countByEnumeratingWithState:&v15 objects:v19 count:16];
  v8 = lCopy;
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    v8 = lCopy;
    do
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(pathComponents);
        }

        v8 = [v12 URLByAppendingPathComponent:*(*(&v15 + 1) + 8 * v11)];

        ++v11;
        v12 = v8;
      }

      while (v9 != v11);
      v9 = [pathComponents countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v8 URLByAppendingPathExtension:@"sqlite"];

  return v13;
}

@end