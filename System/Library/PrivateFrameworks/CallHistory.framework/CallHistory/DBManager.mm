@interface DBManager
+ (BOOL)deleteDirectoryAtLocation:(id)a3;
+ (BOOL)destroyDBAtLocation:(id)a3 withModel:(id)a4;
+ (BOOL)destroyDBAtLocation:(id)a3 withModelAtLocation:(id)a4;
+ (BOOL)makeDatabaseAtURLClassCDataProtected:(id)a3;
+ (BOOL)moveDBAtLocation:(id)a3 toLocation:(id)a4 withModel:(id)a5;
+ (BOOL)moveDBAtLocation:(id)a3 toLocation:(id)a4 withModelAtLocation:(id)a5;
+ (BOOL)replacePersistentStore:(id)a3 withURL:(id)a4;
+ (id)entityDescriptionHavingName:(id)a3 forContext:(id)a4;
+ (id)getManagedObjectModelFromDB:(id)a3 orModelURL:(id)a4 orMetadata:(id)a5;
+ (id)getPersistentCoordinatorWithModel:(id)a3;
+ (id)getPropertyValueForKey:(id)a3 forContext:(id)a4;
+ (id)instanceWithModelURL:(id)a3;
+ (id)migrationDirectoryFromSourceURL:(id)a3;
+ (id)migrationStoreURLIn:(id)a3 fromSourceURL:(id)a4 andModelURL:(id)a5;
+ (id)persistentStoreOptionsWithURL:(id)a3 isEncrypted:(BOOL)a4;
+ (id)sourceMetadataForDBAtLocation:(id)a3 withOptions:(id)a4;
+ (int64_t)isDataStoreAtURLInitialized:(id)a3 withModelAtURL:(id)a4;
+ (int64_t)mapToDBMErrorCode:(id)a3;
+ (int64_t)versionForDBAtLocation:(id)a3;
+ (int64_t)versionForManagedObjectModel:(id)a3;
+ (void)setPropertyValue:(id)a3 forKey:(id)a4 forContext:(id)a5;
- (DBManager)init;
- (id)createManagedObjectContext;
- (void)removeDataStoreAtLocation:(id)a3;
@end

@implementation DBManager

- (id)createManagedObjectContext
{
  v3 = [(DBManager *)self fPersistentStoreCoordinator];

  if (v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695D628]);
    [v3 setPersistentStoreCoordinator:self->fPersistentStoreCoordinator];
  }

  return v3;
}

- (DBManager)init
{
  v3.receiver = self;
  v3.super_class = DBManager;
  return [(CHLogger *)&v3 initWithDomain:"ch.dbm"];
}

+ (id)persistentStoreOptionsWithURL:(id)a3 isEncrypted:(BOOL)a4
{
  v4 = a4;
  v5 = [CHPersistentStoreDescription persistentStoreDescriptionWithURL:a3];
  v6 = v5;
  v7 = MEMORY[0x1E696A3A8];
  if (v4)
  {
    v7 = MEMORY[0x1E696A388];
  }

  [v5 setOption:*v7 forKey:*MEMORY[0x1E695D3F8]];
  v8 = [v6 options];

  return v8;
}

+ (id)getManagedObjectModelFromDB:(id)a3 orModelURL:(id)a4 orMetadata:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7 && !v8 && !v9)
  {
    v11 = 0;
    goto LABEL_24;
  }

  if (!v7)
  {
    v11 = 0;
    v13 = 0;
    goto LABEL_10;
  }

  v23 = 0;
  v11 = [MEMORY[0x1E695D6B8] cachedModelForPersistentStoreWithURL:v7 options:0 error:&v23];
  v12 = v23;
  v13 = v12;
  if (!v11 || v12)
  {
LABEL_10:
    if (v8)
    {
      v14 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v8];

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
          v25 = v7;
          v26 = 2114;
          v27 = v8;
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

+ (id)getPersistentCoordinatorWithModel:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v3];
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

+ (int64_t)isDataStoreAtURLInitialized:(id)a3 withModelAtURL:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = *MEMORY[0x1E695D4A8];
    v23 = 0;
    v9 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v8 URL:v5 error:&v23];
    v10 = v23;
    v11 = v10;
    if (!v9)
    {
      v16 = [v10 code];
      v17 = +[CHLogServer sharedInstance];
      v13 = [v17 logHandleForDomain:"ch.dbm"];

      if (v16 == 260)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v25 = v5;
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
        v25 = v5;
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

+ (id)instanceWithModelURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(DBManager);
    v5 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v3];
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

+ (int64_t)versionForManagedObjectModel:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [a3 versionIdentifiers];
  if ([v3 count] == 1)
  {
    v4 = [v3 anyObject];
    v5 = [v4 integerValue];
  }

  else
  {
    v6 = +[CHLogServer sharedInstance];
    v7 = [v6 logHandleForDomain:"ch.dbm"];

    v8 = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = v3;
      v13 = 2048;
      v14 = [v3 count];
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Either version indentifier set is nil (%p) or has count not equal to 1 (%lu)", &v11, 0x16u);
    }

    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)sourceMetadataForDBAtLocation:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = *MEMORY[0x1E695D4A8];
  v15 = 0;
  v7 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v6 URL:v5 options:a4 error:&v15];
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

+ (int64_t)versionForDBAtLocation:(id)a3
{
  v3 = a3;
  v4 = [DBManager sourceMetadataForDBAtLocation:v3 withOptions:0];
  v5 = [DBManager getManagedObjectModelFromDB:v3 orModelURL:0 orMetadata:v4];

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

+ (int64_t)mapToDBMErrorCode:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 code] == 134110 && (objc_msgSend(v4, "userInfo"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E696AA08]];

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

+ (id)migrationDirectoryFromSourceURL:(id)a3
{
  v3 = [a3 URLByDeletingLastPathComponent];
  v4 = [v3 URLByAppendingPathComponent:@"Migration" isDirectory:1];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v4 path];
  v12 = 0;
  [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v12];
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

+ (BOOL)deleteDirectoryAtLocation:(id)a3
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = [v3 defaultManager];
  v10 = 0;
  [v5 removeItemAtURL:v4 error:&v10];

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

+ (id)migrationStoreURLIn:(id)a3 fromSourceURL:(id)a4 andModelURL:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v7 path];
  v11 = [v10 pathExtension];

  v12 = [v11 stringByDeletingPathExtension];
  v13 = [v8 lastPathComponent];

  v14 = [v13 stringByDeletingPathExtension];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v12, v14, v11];
  v16 = [v9 URLByAppendingPathComponent:v15];

  v17 = +[CHLogServer sharedInstance];
  v18 = [v17 logHandleForDomain:"ch.dbm"];

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = v16;
    v23 = 2114;
    v24 = v7;
    v25 = 2114;
    v26 = v14;
    _os_log_impl(&dword_1C3E90000, v18, OS_LOG_TYPE_DEFAULT, "Got destinationURL %{public}@ from sourceURL %{public}@ and modelName %{public}@", buf, 0x20u);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (BOOL)destroyDBAtLocation:(id)a3 withModelAtLocation:(id)a4
{
  v5 = a3;
  v6 = [DBManager getManagedObjectModelFromDB:v5 orModelURL:a4 orMetadata:0];
  v7 = [DBManager destroyDBAtLocation:v5 withModel:v6];

  return v7;
}

+ (BOOL)destroyDBAtLocation:(id)a3 withModel:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [DBManager getPersistentCoordinatorWithModel:v6];
  if (v7)
  {
    v8 = MEMORY[0x1E695DF20];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v10 = [v8 dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x1E695D450], 0}];

    v11 = *MEMORY[0x1E695D4A8];
    v18 = 0;
    v12 = [v7 _destroyPersistentStoreAtURL:v5 withType:v11 options:v10 error:&v18];
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

+ (BOOL)moveDBAtLocation:(id)a3 toLocation:(id)a4 withModelAtLocation:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [DBManager getManagedObjectModelFromDB:v8 orModelURL:a5 orMetadata:0];
  v10 = [DBManager moveDBAtLocation:v8 toLocation:v7 withModel:v9];

  return v10;
}

+ (BOOL)moveDBAtLocation:(id)a3 toLocation:(id)a4 withModel:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [DBManager getPersistentCoordinatorWithModel:v9];
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
  v13 = [v10 _replacePersistentStoreAtURL:v8 destinationOptions:0 withPersistentStoreFromURL:v7 sourceOptions:0 storeType:v12 error:&v21];
  v14 = v21;
  if ((v13 & 1) == 0)
  {
    v18 = +[CHLogServer sharedInstance];
    v17 = [v18 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v23 = v7;
      v24 = 2114;
      v25 = v8;
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

- (void)removeDataStoreAtLocation:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(DBManager *)self fPersistentStoreCoordinator];
    v6 = [v5 persistentStoreForURL:v4];

    if (v6)
    {
      v7 = [(DBManager *)self fPersistentStoreCoordinator];
      v12 = 0;
      v8 = [v7 removePersistentStore:v6 error:&v12];
      v9 = v12;

      if ((v8 & 1) == 0)
      {
        v10 = [(CHLogger *)self logHandle];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [DBManager removeDataStoreAtLocation:];
        }
      }
    }

    else
    {
      v9 = [(CHLogger *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v14 = v4;
        _os_log_impl(&dword_1C3E90000, v9, OS_LOG_TYPE_DEFAULT, "Persistent store at URL %{public}@ is not present", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DBManager addDataStoreAtLocation:isEncrypted:];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)entityDescriptionHavingName:(id)a3 forContext:(id)a4
{
  v5 = a3;
  v6 = [a4 persistentStoreCoordinator];
  v7 = [v6 managedObjectModel];

  if (v7)
  {
    v8 = [v7 entitiesByName];
    v9 = [v8 objectForKey:v5];
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

+ (void)setPropertyValue:(id)a3 forKey:(id)a4 forContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 persistentStoreCoordinator];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 persistentStores];
    v12 = [v11 firstObject];

    if (v12)
    {
      v13 = [v10 metadataForPersistentStore:v12];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 mutableCopy];
        [v15 setObject:v7 forKey:v8];
        [v10 setMetadata:v15 forPersistentStore:v12];
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
    v12 = [v16 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[DBManager setPropertyValue:forKey:forContext:];
    }
  }
}

+ (id)getPropertyValueForKey:(id)a3 forContext:(id)a4
{
  v5 = a3;
  v6 = [a4 persistentStoreCoordinator];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 persistentStores];
    v9 = [v8 firstObject];

    if (v9)
    {
      v10 = [v7 metadataForPersistentStore:v9];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 valueForKey:v5];
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
  v9 = [v13 logHandleForDomain:"ch.dbm"];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[DBManager setPropertyValue:forKey:forContext:];
  }

  v12 = 0;
LABEL_15:

  return v12;
}

+ (BOOL)makeDatabaseAtURLClassCDataProtected:(id)a3
{
  v3 = a3;
  v4 = [DBManager sourceMetadataForDBAtLocation:v3 withOptions:0];
  v5 = [DBManager getManagedObjectModelFromDB:v3 orModelURL:0 orMetadata:v4];
  if (v5)
  {
    v6 = objc_alloc_init(DBManager);
    v7 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v5];
    [(DBManager *)v6 setFPersistentStoreCoordinator:v7];

    v8 = [(DBManager *)v6 addDataStoreAtLocation:v3 isEncrypted:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)replacePersistentStore:(id)a3 withURL:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = *MEMORY[0x1E695D4A8];
  v15 = 0;
  v9 = [v7 _replacePersistentStoreAtURL:v5 destinationOptions:0 withPersistentStoreFromURL:v6 sourceOptions:0 storeType:v8 error:&v15];
  v10 = v15;
  if ((v9 & 1) == 0)
  {
    v11 = +[CHLogServer sharedInstance];
    v12 = [v11 logHandleForDomain:"ch.dbm"];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v17 = v5;
      v18 = 2114;
      v19 = v6;
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