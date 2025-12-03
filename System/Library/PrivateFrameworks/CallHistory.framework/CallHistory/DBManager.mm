@interface DBManager
+ (BOOL)deleteDirectoryAtLocation:(id)location;
+ (BOOL)destroyDBAtLocation:(id)location withModel:(id)model;
+ (BOOL)destroyDBAtLocation:(id)location withModelAtLocation:(id)atLocation;
+ (BOOL)makeDatabaseAtURLClassCDataProtected:(id)protected;
+ (BOOL)moveDBAtLocation:(id)location toLocation:(id)toLocation withModel:(id)model;
+ (BOOL)moveDBAtLocation:(id)location toLocation:(id)toLocation withModelAtLocation:(id)atLocation;
+ (BOOL)replacePersistentStore:(id)store withURL:(id)l;
+ (id)entityDescriptionHavingName:(id)name forContext:(id)context;
+ (id)getManagedObjectModelFromDB:(id)b orModelURL:(id)l orMetadata:(id)metadata;
+ (id)getPersistentCoordinatorWithModel:(id)model;
+ (id)getPropertyValueForKey:(id)key forContext:(id)context;
+ (id)instanceWithModelURL:(id)l;
+ (id)migrationDirectoryFromSourceURL:(id)l;
+ (id)migrationStoreURLIn:(id)in fromSourceURL:(id)l andModelURL:(id)rL;
+ (id)persistentStoreOptionsWithURL:(id)l isEncrypted:(BOOL)encrypted;
+ (id)sourceMetadataForDBAtLocation:(id)location withOptions:(id)options;
+ (int64_t)isDataStoreAtURLInitialized:(id)initialized withModelAtURL:(id)l;
+ (int64_t)mapToDBMErrorCode:(id)code;
+ (int64_t)versionForDBAtLocation:(id)location;
+ (int64_t)versionForManagedObjectModel:(id)model;
+ (void)setPropertyValue:(id)value forKey:(id)key forContext:(id)context;
- (DBManager)init;
- (id)createManagedObjectContext;
- (void)removeDataStoreAtLocation:(id)location;
@end

@implementation DBManager

- (id)createManagedObjectContext
{
  fPersistentStoreCoordinator = [(DBManager *)self fPersistentStoreCoordinator];

  if (fPersistentStoreCoordinator)
  {
    fPersistentStoreCoordinator = objc_alloc_init(MEMORY[0x1E695D628]);
    [fPersistentStoreCoordinator setPersistentStoreCoordinator:self->fPersistentStoreCoordinator];
  }

  return fPersistentStoreCoordinator;
}

- (DBManager)init
{
  v3.receiver = self;
  v3.super_class = DBManager;
  return [(CHLogger *)&v3 initWithDomain:"ch.dbm"];
}

+ (id)persistentStoreOptionsWithURL:(id)l isEncrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  v5 = [CHPersistentStoreDescription persistentStoreDescriptionWithURL:l];
  v6 = v5;
  v7 = MEMORY[0x1E696A3A8];
  if (encryptedCopy)
  {
    v7 = MEMORY[0x1E696A388];
  }

  [v5 setOption:*v7 forKey:*MEMORY[0x1E695D3F8]];
  options = [v6 options];

  return options;
}

+ (id)getManagedObjectModelFromDB:(id)b orModelURL:(id)l orMetadata:(id)metadata
{
  v32 = *MEMORY[0x1E69E9840];
  bCopy = b;
  lCopy = l;
  metadataCopy = metadata;
  v10 = metadataCopy;
  if (!bCopy && !lCopy && !metadataCopy)
  {
    v11 = 0;
    goto LABEL_24;
  }

  if (!bCopy)
  {
    v11 = 0;
    v13 = 0;
    goto LABEL_10;
  }

  v23 = 0;
  v11 = [MEMORY[0x1E695D6B8] cachedModelForPersistentStoreWithURL:bCopy options:0 error:&v23];
  v12 = v23;
  v13 = v12;
  if (!v11 || v12)
  {
LABEL_10:
    if (lCopy)
    {
      v14 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:lCopy];

      v11 = v14;
      if (!v14)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = 0;
LABEL_15:
        v15 = MEMORY[0x1E695DEC8];
        v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v17 = [v15 arrayWithObjects:{v16, 0}];

        v18 = [MEMORY[0x1E695D638] mergedModelFromBundles:v17 forStoreMetadata:v10];

        if (v18)
        {
          v19 = v18;

          v11 = v19;
LABEL_22:

          goto LABEL_23;
        }

LABEL_19:
        v20 = +[CHLogServer sharedInstance];
        v19 = [v20 logHandleForDomain:"ch.dbm"];

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138544130;
          v25 = bCopy;
          v26 = 2114;
          v27 = lCopy;
          v28 = 2114;
          v29 = v10;
          v30 = 2114;
          v31 = v13;
          _os_log_error_impl(&dword_1C3E90000, v19, OS_LOG_TYPE_ERROR, "Couldn't get managedObjectModel from db at %{public}@, model at %{public}@, or metadata %{public}@: %{public}@", buf, 0x2Au);
        }

        v11 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      if (v10)
      {
        goto LABEL_15;
      }

      if (!v11)
      {
        goto LABEL_19;
      }
    }

LABEL_23:
  }

LABEL_24:

  v21 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)getPersistentCoordinatorWithModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:modelCopy];
  }

  else
  {
    v5 = +[CHLogServer sharedInstance];
    v6 = [v5 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[DBManager getPersistentCoordinatorWithModel:];
    }

    v4 = 0;
  }

  return v4;
}

+ (int64_t)isDataStoreAtURLInitialized:(id)initialized withModelAtURL:(id)l
{
  v26 = *MEMORY[0x1E69E9840];
  initializedCopy = initialized;
  lCopy = l;
  v7 = lCopy;
  if (initializedCopy && lCopy)
  {
    v8 = *MEMORY[0x1E695D4A8];
    v23 = 0;
    v9 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v8 URL:initializedCopy error:&v23];
    v10 = v23;
    v11 = v10;
    if (!v9)
    {
      code = [v10 code];
      v17 = +[CHLogServer sharedInstance];
      v13 = [v17 logHandleForDomain:"ch.dbm"];

      if (code == 260)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v25 = initializedCopy;
          _os_log_impl(&dword_1C3E90000, v13, OS_LOG_TYPE_DEFAULT, "Data store at path %{public}@ does not exist", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[DBManager isDataStoreAtURLInitialized:withModelAtURL:];
      }

      v14 = 1;
      goto LABEL_23;
    }

    v12 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v7];
    v13 = v12;
    if (v12)
    {
      if (([v12 isConfiguration:0 compatibleWithStoreMetadata:v9]& 1) != 0)
      {
        v14 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v20 = +[CHLogServer sharedInstance];
      v19 = [v20 logHandleForDomain:"ch.dbm"];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = initializedCopy;
        _os_log_impl(&dword_1C3E90000, v19, OS_LOG_TYPE_DEFAULT, "Destination store at location %{public}@ is not compatible with newer version, migration required", buf, 0xCu);
      }

      v14 = 2;
    }

    else
    {
      v18 = +[CHLogServer sharedInstance];
      v19 = [v18 logHandleForDomain:"ch.dbm"];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[DBManager isDataStoreAtURLInitialized:withModelAtURL:];
      }

      v14 = 3;
    }

    goto LABEL_23;
  }

  v15 = +[CHLogServer sharedInstance];
  v11 = [v15 logHandleForDomain:"ch.dbm"];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    +[DBManager isDataStoreAtURLInitialized:withModelAtURL:];
  }

  v14 = 3;
LABEL_24:

  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)instanceWithModelURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = objc_alloc_init(DBManager);
    v5 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:lCopy];
    v6 = [DBManager getPersistentCoordinatorWithModel:v5];
    if (v6)
    {
      [(DBManager *)v4 setFPersistentStoreCoordinator:v6];
      v7 = v4;
    }

    else
    {
      v9 = +[CHLogServer sharedInstance];
      v10 = [v9 logHandleForDomain:"ch.dbm"];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[DBManager instanceWithModelURL:];
      }

      v7 = 0;
    }
  }

  else
  {
    v8 = +[CHLogServer sharedInstance];
    v4 = [v8 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(&v4->super.super, OS_LOG_TYPE_ERROR))
    {
      +[DBManager instanceWithModelURL:];
    }

    v7 = 0;
  }

  return v7;
}

+ (int64_t)versionForManagedObjectModel:(id)model
{
  v15 = *MEMORY[0x1E69E9840];
  versionIdentifiers = [model versionIdentifiers];
  if ([versionIdentifiers count] == 1)
  {
    anyObject = [versionIdentifiers anyObject];
    integerValue = [anyObject integerValue];
  }

  else
  {
    v6 = +[CHLogServer sharedInstance];
    v7 = [v6 logHandleForDomain:"ch.dbm"];

    v8 = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = versionIdentifiers;
      v13 = 2048;
      v14 = [versionIdentifiers count];
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Either version indentifier set is nil (%p) or has count not equal to 1 (%lu)", &v11, 0x16u);
    }

    integerValue = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return integerValue;
}

+ (id)sourceMetadataForDBAtLocation:(id)location withOptions:(id)options
{
  locationCopy = location;
  v6 = *MEMORY[0x1E695D4A8];
  v15 = 0;
  v7 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v6 URL:locationCopy options:options error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v13 = v7;
  }

  else
  {
    v11 = +[CHLogServer sharedInstance];
    v12 = [v11 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[DBManager sourceMetadataForDBAtLocation:withOptions:];
    }

    v13 = 0;
  }

  return v13;
}

+ (int64_t)versionForDBAtLocation:(id)location
{
  locationCopy = location;
  v4 = [DBManager sourceMetadataForDBAtLocation:locationCopy withOptions:0];
  v5 = [DBManager getManagedObjectModelFromDB:locationCopy orModelURL:0 orMetadata:v4];

  if (v5)
  {
    v6 = [DBManager versionForManagedObjectModel:v5];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

+ (int64_t)mapToDBMErrorCode:(id)code
{
  codeCopy = code;
  v4 = codeCopy;
  if (codeCopy && [codeCopy code] == 134110 && (objc_msgSend(v4, "userInfo"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    userInfo = [v4 userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

    if (v7)
    {
      if ([v7 code] == 134111)
      {
        v8 = 4;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 3;
  }

  return v8;
}

+ (id)migrationDirectoryFromSourceURL:(id)l
{
  uRLByDeletingLastPathComponent = [l URLByDeletingLastPathComponent];
  v4 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"Migration" isDirectory:1];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v4 path];
  v12 = 0;
  [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v12];
  v7 = v12;

  if (v7)
  {
    v8 = +[CHLogServer sharedInstance];
    v9 = [v8 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[DBManager migrationDirectoryFromSourceURL:];
    }

    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

+ (BOOL)deleteDirectoryAtLocation:(id)location
{
  v3 = MEMORY[0x1E696AC08];
  locationCopy = location;
  defaultManager = [v3 defaultManager];
  v10 = 0;
  [defaultManager removeItemAtURL:locationCopy error:&v10];

  v6 = v10;
  if (v6)
  {
    v7 = +[CHLogServer sharedInstance];
    v8 = [v7 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[DBManager deleteDirectoryAtLocation:];
    }
  }

  return v6 == 0;
}

+ (id)migrationStoreURLIn:(id)in fromSourceURL:(id)l andModelURL:(id)rL
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  inCopy = in;
  path = [lCopy path];
  pathExtension = [path pathExtension];

  stringByDeletingPathExtension = [pathExtension stringByDeletingPathExtension];
  lastPathComponent = [rLCopy lastPathComponent];

  stringByDeletingPathExtension2 = [lastPathComponent stringByDeletingPathExtension];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", stringByDeletingPathExtension, stringByDeletingPathExtension2, pathExtension];
  v16 = [inCopy URLByAppendingPathComponent:v15];

  v17 = +[CHLogServer sharedInstance];
  v18 = [v17 logHandleForDomain:"ch.dbm"];

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = v16;
    v23 = 2114;
    v24 = lCopy;
    v25 = 2114;
    v26 = stringByDeletingPathExtension2;
    _os_log_impl(&dword_1C3E90000, v18, OS_LOG_TYPE_DEFAULT, "Got destinationURL %{public}@ from sourceURL %{public}@ and modelName %{public}@", buf, 0x20u);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (BOOL)destroyDBAtLocation:(id)location withModelAtLocation:(id)atLocation
{
  locationCopy = location;
  v6 = [DBManager getManagedObjectModelFromDB:locationCopy orModelURL:atLocation orMetadata:0];
  v7 = [DBManager destroyDBAtLocation:locationCopy withModel:v6];

  return v7;
}

+ (BOOL)destroyDBAtLocation:(id)location withModel:(id)model
{
  locationCopy = location;
  modelCopy = model;
  v7 = [DBManager getPersistentCoordinatorWithModel:modelCopy];
  if (v7)
  {
    v8 = MEMORY[0x1E695DF20];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v10 = [v8 dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x1E695D450], 0}];

    v11 = *MEMORY[0x1E695D4A8];
    v18 = 0;
    v12 = [v7 _destroyPersistentStoreAtURL:locationCopy withType:v11 options:v10 error:&v18];
    v13 = v18;
    if ((v12 & 1) == 0)
    {
      v14 = +[CHLogServer sharedInstance];
      v15 = [v14 logHandleForDomain:"ch.dbm"];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[DBManager destroyDBAtLocation:withModel:];
      }
    }
  }

  else
  {
    v16 = +[CHLogServer sharedInstance];
    v13 = [v16 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[DBManager destroyDBAtLocation:withModel:];
    }

    v12 = 0;
  }

  return v12;
}

+ (BOOL)moveDBAtLocation:(id)location toLocation:(id)toLocation withModelAtLocation:(id)atLocation
{
  toLocationCopy = toLocation;
  locationCopy = location;
  v9 = [DBManager getManagedObjectModelFromDB:locationCopy orModelURL:atLocation orMetadata:0];
  v10 = [DBManager moveDBAtLocation:locationCopy toLocation:toLocationCopy withModel:v9];

  return v10;
}

+ (BOOL)moveDBAtLocation:(id)location toLocation:(id)toLocation withModel:(id)model
{
  v28 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  toLocationCopy = toLocation;
  modelCopy = model;
  v10 = [DBManager getPersistentCoordinatorWithModel:modelCopy];
  v11 = v10;
  if (!v10)
  {
    v16 = +[CHLogServer sharedInstance];
    v17 = [v16 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[DBManager moveDBAtLocation:toLocation:withModel:];
    }

    v14 = 0;
    goto LABEL_9;
  }

  v12 = *MEMORY[0x1E695D4A8];
  v21 = 0;
  v13 = [v10 _replacePersistentStoreAtURL:toLocationCopy destinationOptions:0 withPersistentStoreFromURL:locationCopy sourceOptions:0 storeType:v12 error:&v21];
  v14 = v21;
  if ((v13 & 1) == 0)
  {
    v18 = +[CHLogServer sharedInstance];
    v17 = [v18 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v23 = locationCopy;
      v24 = 2114;
      v25 = toLocationCopy;
      v26 = 2114;
      v27 = v14;
      _os_log_error_impl(&dword_1C3E90000, v17, OS_LOG_TYPE_ERROR, "Failed to copy data store src: %{public}@ dst: %{public}@ error: %{public}@", buf, 0x20u);
    }

LABEL_9:

    v15 = 0;
    goto LABEL_10;
  }

  v15 = 1;
LABEL_10:

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)removeDataStoreAtLocation:(id)location
{
  v15 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  if (locationCopy)
  {
    fPersistentStoreCoordinator = [(DBManager *)self fPersistentStoreCoordinator];
    logHandle3 = [fPersistentStoreCoordinator persistentStoreForURL:locationCopy];

    if (logHandle3)
    {
      fPersistentStoreCoordinator2 = [(DBManager *)self fPersistentStoreCoordinator];
      v12 = 0;
      v8 = [fPersistentStoreCoordinator2 removePersistentStore:logHandle3 error:&v12];
      logHandle2 = v12;

      if ((v8 & 1) == 0)
      {
        logHandle = [(CHLogger *)self logHandle];
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          [DBManager removeDataStoreAtLocation:];
        }
      }
    }

    else
    {
      logHandle2 = [(CHLogger *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = locationCopy;
        _os_log_impl(&dword_1C3E90000, logHandle2, OS_LOG_TYPE_DEFAULT, "Persistent store at URL %{public}@ is not present", buf, 0xCu);
      }
    }
  }

  else
  {
    logHandle3 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_ERROR))
    {
      [DBManager addDataStoreAtLocation:isEncrypted:];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)entityDescriptionHavingName:(id)name forContext:(id)context
{
  nameCopy = name;
  persistentStoreCoordinator = [context persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];

  if (managedObjectModel)
  {
    entitiesByName = [managedObjectModel entitiesByName];
    v9 = [entitiesByName objectForKey:nameCopy];
  }

  else
  {
    v10 = +[CHLogServer sharedInstance];
    v11 = [v10 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[DBManager entityDescriptionHavingName:forContext:];
    }

    v9 = 0;
  }

  return v9;
}

+ (void)setPropertyValue:(id)value forKey:(id)key forContext:(id)context
{
  valueCopy = value;
  keyCopy = key;
  persistentStoreCoordinator = [context persistentStoreCoordinator];
  v10 = persistentStoreCoordinator;
  if (persistentStoreCoordinator)
  {
    persistentStores = [persistentStoreCoordinator persistentStores];
    firstObject = [persistentStores firstObject];

    if (firstObject)
    {
      v13 = [v10 metadataForPersistentStore:firstObject];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 mutableCopy];
        [v15 setObject:valueCopy forKey:keyCopy];
        [v10 setMetadata:v15 forPersistentStore:firstObject];
      }

      else
      {
        v18 = +[CHLogServer sharedInstance];
        v15 = [v18 logHandleForDomain:"ch.dbm"];

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          +[DBManager setPropertyValue:forKey:forContext:];
        }
      }
    }

    else
    {
      v17 = +[CHLogServer sharedInstance];
      v14 = [v17 logHandleForDomain:"ch.dbm"];

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[DBManager setPropertyValue:forKey:forContext:];
      }
    }
  }

  else
  {
    v16 = +[CHLogServer sharedInstance];
    firstObject = [v16 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      +[DBManager setPropertyValue:forKey:forContext:];
    }
  }
}

+ (id)getPropertyValueForKey:(id)key forContext:(id)context
{
  keyCopy = key;
  persistentStoreCoordinator = [context persistentStoreCoordinator];
  v7 = persistentStoreCoordinator;
  if (persistentStoreCoordinator)
  {
    persistentStores = [persistentStoreCoordinator persistentStores];
    firstObject = [persistentStores firstObject];

    if (firstObject)
    {
      v10 = [v7 metadataForPersistentStore:firstObject];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 valueForKey:keyCopy];
LABEL_14:

        goto LABEL_15;
      }

      v15 = +[CHLogServer sharedInstance];
      v16 = [v15 logHandleForDomain:"ch.dbm"];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[DBManager setPropertyValue:forKey:forContext:];
      }
    }

    else
    {
      v14 = +[CHLogServer sharedInstance];
      v11 = [v14 logHandleForDomain:"ch.dbm"];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[DBManager setPropertyValue:forKey:forContext:];
      }
    }

    v12 = 0;
    goto LABEL_14;
  }

  v13 = +[CHLogServer sharedInstance];
  firstObject = [v13 logHandleForDomain:"ch.dbm"];

  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
  {
    +[DBManager setPropertyValue:forKey:forContext:];
  }

  v12 = 0;
LABEL_15:

  return v12;
}

+ (BOOL)makeDatabaseAtURLClassCDataProtected:(id)protected
{
  protectedCopy = protected;
  v4 = [DBManager sourceMetadataForDBAtLocation:protectedCopy withOptions:0];
  v5 = [DBManager getManagedObjectModelFromDB:protectedCopy orModelURL:0 orMetadata:v4];
  if (v5)
  {
    v6 = objc_alloc_init(DBManager);
    v7 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v5];
    [(DBManager *)v6 setFPersistentStoreCoordinator:v7];

    v8 = [(DBManager *)v6 addDataStoreAtLocation:protectedCopy isEncrypted:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)replacePersistentStore:(id)store withURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  lCopy = l;
  v7 = objc_opt_new();
  v8 = *MEMORY[0x1E695D4A8];
  v15 = 0;
  v9 = [v7 _replacePersistentStoreAtURL:storeCopy destinationOptions:0 withPersistentStoreFromURL:lCopy sourceOptions:0 storeType:v8 error:&v15];
  v10 = v15;
  if ((v9 & 1) == 0)
  {
    v11 = +[CHLogServer sharedInstance];
    v12 = [v11 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v17 = storeCopy;
      v18 = 2114;
      v19 = lCopy;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_1C3E90000, v12, OS_LOG_TYPE_ERROR, "Could not replace persistent data store at %{public}@ with %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (void)getPersistentCoordinatorWithModel:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)isDataStoreAtURLInitialized:withModelAtURL:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)isDataStoreAtURLInitialized:withModelAtURL:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Unexpected error: %{public}@ when querying meta data for database: %{public}@, treating as data store not initialized");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)isDataStoreAtURLInitialized:withModelAtURL:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Invalid value dbURL: %{public}@ or modelURL: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)instanceWithModelURL:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)instanceWithModelURL:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)sourceMetadataForDBAtLocation:withOptions:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Failed to get metadata for source datastore at %{public}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)migrateDataStoreAtLocation:withGetDestinationModel:isEncrypted:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Failed to delete data store at path: %{public}@. Error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)migrateDataStoreAtLocation:withGetDestinationModel:isEncrypted:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Failed to migrate the store at location: %{public}@ with error %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)migrateDataStoreAtLocation:withGetDestinationModel:isEncrypted:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)migrateDataStoreAtLocation:withGetDestinationModel:isEncrypted:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)migrateDataStoreAtLocation:withGetDestinationModel:isEncrypted:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)migrateDataStoreAtLocation:withGetDestinationModel:isEncrypted:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)migrateDataStoreAtLocation:withGetDestinationModel:isEncrypted:.cold.7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)performMigrationFrom:sourceModel:toDestinationURL:destinationModel:mappingModel:isEncrypted:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Failed to copy data store src: %{public}@ dst: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)migrationDirectoryFromSourceURL:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)deleteDirectoryAtLocation:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)destroyDBAtLocation:withModel:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Failed to remove store at URL: %{public}@ with error %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)destroyDBAtLocation:withModel:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Couldn't get the coordinator for db at %{public}@ and model at %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)moveDBAtLocation:toLocation:withModel:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Couldn't get the coordinator for source db at %{public}@ and model at %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)addDataStoreAtLocation:isEncrypted:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addDataStoreAtLocation:isEncrypted:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Failed to add the store at location %{public}@ with error %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)addDataStoreAtLocation:isEncrypted:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeDataStoreAtLocation:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1(&dword_1C3E90000, v0, v1, "Failed to remove persistent store at URL: %{public}@ with error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)entityDescriptionHavingName:forContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)setPropertyValue:forKey:forContext:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)setPropertyValue:forKey:forContext:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)setPropertyValue:forKey:forContext:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end