@interface _DKCoreDataStorage
+ (id)anonymizeString:(void *)a3 withSalt:;
+ (uint64_t)forceCopyItemAtPath:(void *)a3 toPath:(uint64_t)a4 error:;
+ (unint64_t)anonymizeObjectStringsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5 sortDescriptors:(id)a6 batchFetchLimit:(unint64_t)a7 totalFetchLimit:(unint64_t)a8 includeSubentities:(BOOL)a9 salt:(id)a10;
+ (unint64_t)anonymizeStringAttributesOfManagedObject:(id)a3 withSalt:(id)a4;
+ (unint64_t)countObjectsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5 includeSubentities:(BOOL)a6 includePendingChanges:(BOOL)a7;
+ (unint64_t)deleteObjectsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5 sortDescriptors:(id)a6 fetchLimit:(unint64_t)a7 includeSubentities:(BOOL)a8 includePendingChanges:(BOOL)a9;
+ (unint64_t)deleteObjectsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5 sortDescriptors:(id)a6 fetchOffset:(unint64_t)a7 fetchLimit:(unint64_t)a8 includeSubentities:(BOOL)a9 includePendingChanges:(BOOL)a10;
+ (unint64_t)deleteOrphanedEntitiesInContext:(id)a3;
+ (unint64_t)updateObjectsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5 sortDescriptors:(id)a6 batchFetchLimit:(unint64_t)a7 totalFetchLimit:(unint64_t)a8 includeSubentities:(BOOL)a9 updateBlock:(id)a10;
- (BOOL)_deleteDatabaseFiles:(uint64_t)a1;
- (BOOL)confirmDatabaseConnectionFor:(id)a3;
- (BOOL)deleteStorageFor:(id)a3;
- (BOOL)isManagedObjectContextFor:(id)a3 equalToManagedObjectContext:(id)a4;
- (BOOL)isManagedObjectModel:(id)a3 compatibleWithPersistentStoreAtURL:(id)a4 error:(id *)a5;
- (BOOL)migratePersistentStoreAtURL:(id)a3 toManagedObjectModel:(id)a4 protectionClass:(id)a5 error:(id *)a6;
- (_DKCoreDataStorageDelegate)delegate;
- (id)_descriptionForStoreWithURL:(void *)a3 protectionClass:(int)a4 sync:;
- (id)clientNeedsHelpNotification;
- (id)copyStorageFor:(id)a3 toDirectory:(id)a4;
- (id)databaseManagerName;
- (id)databasePathFor:(id *)a1;
- (id)managedObjectContextFor:(id)a3 identifier:(id)a4;
- (id)managedObjectContextForKey:(id *)a1;
- (id)managedObjectContextIdentifierWithPrefix:(id *)a1;
- (id)managedObjectModel;
- (id)managedObjectModelForVersion:(unint64_t)a3;
- (id)managedObjectModelURLForVersion:(unint64_t)a3;
- (id)persistentStoreCoordinatorFor:(id)a3;
- (id)privateManagedObjectContextFor:(id)a3;
- (int64_t)modelVersionForStoreAtURL:(id)a3 error:(id *)a4;
- (uint64_t)_addStoresToCoordinator:(void *)a3 protectionClass:(void *)a4 error:;
- (uint64_t)didAutoMigratePersistentStore:(void *)a3 toManagedObjectModel:(uint64_t)a4 havingVersion:(void *)a5 error:;
- (uint64_t)initWithDirectory:(void *)a3 databaseName:(void *)a4 modelURL:(char)a5 readOnly:(char)a6 localOnly:(char)a7 sync:;
- (uint64_t)isDataVaulted;
- (uint64_t)migratePersistentStoreAtURL:(void *)a3 toManagedObjectModel:(void *)a4 protectionClass:(unint64_t)a5 startVersion:(unint64_t)a6 endVersion:(void *)a7 error:;
- (uint64_t)willAutoMigrateStoreAtURL:(void *)a3 fromManagedObjectModel:(uint64_t)a4 havingVersion:(void *)a5 error:;
- (unint64_t)managedObjectModelVersionCompatibleWithPersistentStoreAtURL:(void *)a3 error:;
- (unsigned)_defaultOptionsForStoreWithProtectionClass:(unsigned __int8 *)a1;
- (unsigned)autoMigratePersistentStoreAtURL:(void *)a3 toManagedObjectModel:(void *)a4 protectionClass:(void *)a5 error:;
- (void)_registerForClientHelpNotifications;
- (void)_unregisterForClientHelpNotifications;
- (void)dealloc;
- (void)handleClientCallForHelp;
- (void)handleDataProtectionChangeFor:(int)a3 willBeAvailable:;
- (void)handleDatabaseErrors:(void *)a3 forProtectionClass:;
- (void)invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:(void *)a1;
- (void)removeManagedObjectContextForKey:(uint64_t)a1;
- (void)removePersistentStoresInCoordinator:(uint64_t)a1;
- (void)setManagedObjectContext:(void *)a3 forKey:;
@end

@implementation _DKCoreDataStorage

- (id)databaseManagerName
{
  v1 = a1;
  v11[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = +[_CDPaths knowledgeDirectory];
    v3 = [v2 stringByStandardizingPath];
    v10[0] = v3;
    v11[0] = @"coreduetd";
    v4 = +[_CDPaths peopleDirectory];
    v5 = [v4 stringByStandardizingPath];
    v10[1] = v5;
    v11[1] = @"coreduetd";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

    v7 = [v1[9] stringByStandardizingPath];
    v1 = [v6 objectForKeyedSubscript:v7];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v1;
}

- (uint64_t)isDataVaulted
{
  if (result)
  {
    v1 = [*(result + 72) stringByStandardizingPath];
    v2 = +[_CDPaths knowledgeDirectory];
    v3 = [v2 stringByStandardizingPath];
    v4 = [v1 isEqualToString:v3];

    return v4;
  }

  return result;
}

- (void)dealloc
{
  if (self->_isManagedDatabase && self->_isDatabaseManager)
  {
    [(_DKCoreDataStorage *)&self->super.isa _unregisterForClientHelpNotifications];
  }

  v3.receiver = self;
  v3.super_class = _DKCoreDataStorage;
  [(_DKCoreDataStorage *)&v3 dealloc];
}

- (id)managedObjectModel
{
  if (self->_modelURL)
  {
    if (gManagedObjectModelCacheInitialized != -1)
    {
      [_DKCoreDataStorage managedObjectModel];
    }

    v3 = gManagedObjectModelCache;
    objc_sync_enter(v3);
    if (!self->_managedObjectModel)
    {
      v4 = [gManagedObjectModelCache objectForKey:self->_modelURL];
      managedObjectModel = self->_managedObjectModel;
      self->_managedObjectModel = v4;

      if (!self->_managedObjectModel)
      {
        v6 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:self->_modelURL];
        v7 = self->_managedObjectModel;
        self->_managedObjectModel = v6;

        [gManagedObjectModelCache setObject:self->_managedObjectModel forKey:self->_modelURL];
      }
    }

    objc_sync_exit(v3);

    v8 = self->_managedObjectModel;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [_DKCoreDataStorage managedObjectModel];
    }

    v8 = 0;
  }

  return v8;
}

- (uint64_t)initWithDirectory:(void *)a3 databaseName:(void *)a4 modelURL:(char)a5 readOnly:(char)a6 localOnly:(char)a7 sync:
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  if (a1)
  {
    v44.receiver = a1;
    v44.super_class = _DKCoreDataStorage;
    v17 = objc_msgSendSuper2(&v44, sel_init);
    a1 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 9, a2);
      *(a1 + 67) = a5;
      *(a1 + 68) = a6;
      *(a1 + 69) = a7;
      objc_storeStrong((a1 + 88), a3);
      objc_storeStrong((a1 + 80), a4);
      v18 = [MEMORY[0x1E696AC08] defaultManager];
      v19 = *(a1 + 48);
      *(a1 + 48) = v18;

      v20 = [MEMORY[0x1E695DF90] dictionary];
      v21 = *(a1 + 16);
      *(a1 + 16) = v20;

      v22 = *(a1 + 8);
      *(a1 + 8) = 0;

      v23 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:5];
      v24 = *(a1 + 24);
      *(a1 + 24) = v23;

      v25 = [MEMORY[0x1E695DF90] dictionary];
      v26 = *(a1 + 32);
      *(a1 + 32) = v25;

      v27 = *(a1 + 72);
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v27, *(a1 + 88)];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.db", v28, @"A"];
      [*(a1 + 16) setObject:v29 forKeyedSubscript:*MEMORY[0x1E696A378]];

      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.db", v28, @"C"];
      [*(a1 + 16) setObject:v30 forKeyedSubscript:*MEMORY[0x1E696A388]];

      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.db", v28, @"D"];
      [*(a1 + 16) setObject:v31 forKeyedSubscript:*MEMORY[0x1E696A3A8]];

      v32 = objc_alloc_init(_DKDataProtectionStateMonitor);
      v33 = *(a1 + 40);
      *(a1 + 40) = v32;

      objc_initWeak(&location, a1);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __86___DKCoreDataStorage_initWithDirectory_databaseName_modelURL_readOnly_localOnly_sync___block_invoke;
      v41[3] = &unk_1E73673F0;
      objc_copyWeak(&v42, &location);
      [*(a1 + 40) setChangeHandler:v41];
      *(a1 + 66) = 0;
      v34 = [(_DKCoreDataStorage *)a1 databaseManagerName];
      *(a1 + 64) = v34 != 0;

      if (*(a1 + 64) == 1)
      {
        v35 = [MEMORY[0x1E696AE30] processInfo];
        v36 = [v35 processName];

        v37 = [(_DKCoreDataStorage *)a1 databaseManagerName];
        *(a1 + 65) = [v36 isEqualToString:v37];

        if ((*(a1 + 64) & 1) != 0 && [(_DKCoreDataStorage *)a1 isDataVaulted])
        {
          v38 = [_CDEntitlementsUtilities entitlementValueForKey:@"com.apple.rootless.storage.coreduet_knowledge_store"];
          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v38 BOOLValue] & 1) == 0)
          {
            v40 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              [_DKCoreDataStorage initWithDirectory:databaseName:modelURL:readOnly:localOnly:sync:];
            }

            objc_destroyWeak(&v42);
            objc_destroyWeak(&location);

            v28 = a1;
            a1 = 0;
            goto LABEL_13;
          }

          if (*(a1 + 65) == 1)
          {
            [(_DKCoreDataStorage *)a1 _registerForClientHelpNotifications];
          }
        }
      }

      else
      {
        *(a1 + 65) = 1;
      }

      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
LABEL_13:
    }
  }

  return a1;
}

- (void)handleClientCallForHelp
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    if (obj[66])
    {
      objc_sync_exit(obj);
    }

    else
    {
      obj[66] = 1;
      objc_sync_exit(obj);

      [(_DKCoreDataStorage *)obj _unregisterForClientHelpNotifications];
      v1 = *MEMORY[0x1E696A388];
      v2 = [obj managedObjectContextFor:*MEMORY[0x1E696A388]];
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__18;
      v16 = __Block_byref_object_dispose__18;
      v17 = 0;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __45___DKCoreDataStorage_handleClientCallForHelp__block_invoke;
      v8[3] = &unk_1E7368808;
      v3 = v2;
      v9 = v3;
      v10 = obj;
      v11 = &v12;
      [v3 performWithOptions:0 andBlock:v8];
      v4 = v13[5];
      if (v4)
      {
        [(_DKCoreDataStorage *)obj handleDatabaseErrors:v4 forProtectionClass:v1];
      }

      v5 = dispatch_time(0, 60000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45___DKCoreDataStorage_handleClientCallForHelp__block_invoke_2;
      block[3] = &unk_1E7367440;
      block[4] = obj;
      dispatch_after(v5, MEMORY[0x1E69E96A0], block);

      _Block_object_dispose(&v12, 8);
    }
  }
}

- (void)handleDatabaseErrors:(void *)a3 forProtectionClass:
{
  v5 = a2;
  v6 = a3;
  if (a1 && v5)
  {
    if ([_CDErrorUtilities isCoreDataFatalError:v5])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [_DKCoreDataStorage handleDatabaseErrors:forProtectionClass:];
      }

      [a1 deleteStorageFor:v6];
    }

    else if ([_CDErrorUtilities isCoreDataTemporaryError:v5])
    {
      [(_DKCoreDataStorage *)a1 invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:v6];
    }
  }
}

- (void)invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:(void *)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v13 = v3;
    v5 = [v4[4] objectForKeyedSubscript:v3];
    if (v5)
    {
      [v4[4] removeObjectForKey:v13];
    }

    [(_DKCoreDataStorage *)v4 managedObjectContextIdentifierWithPrefix:v13];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v6 = v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [(_DKCoreDataStorage *)v4 managedObjectContextForKey:v10];
          if (v11)
          {
            [(_DKCoreDataStorage *)v4 removeManagedObjectContextForKey:v10];
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = __85___DKCoreDataStorage_invalidateManagedObjectContextAndPersistentStoreCoordinatorFor___block_invoke;
            v14[3] = &unk_1E7367440;
            v15 = v11;
            [v15 performWithOptions:4 andBlock:v14];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [(_DKCoreDataStorage *)v4 removePersistentStoresInCoordinator:v5];
    objc_sync_exit(v4);

    v3 = v13;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)managedObjectContextIdentifierWithPrefix:(id *)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = a1[3];
    objc_sync_enter(v4);
    v5 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = a1[3];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 hasPrefix:{v3, v13}])
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    a1 = [v5 copy];
    objc_sync_exit(v4);
  }

  v11 = *MEMORY[0x1E69E9840];

  return a1;
}

- (id)managedObjectContextForKey:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[3];
    objc_sync_enter(v4);
    a1 = [a1[3] objectForKey:v3];
    objc_sync_exit(v4);
  }

  return a1;
}

- (void)removeManagedObjectContextForKey:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v3 = *(a1 + 24);
    objc_sync_enter(v3);
    [*(a1 + 24) removeObjectForKey:v4];
    objc_sync_exit(v3);
  }
}

- (BOOL)isManagedObjectModel:(id)a3 compatibleWithPersistentStoreAtURL:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = *MEMORY[0x1E695D4A8];
  v14 = 0;
  v9 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v8 URL:a4 error:&v14];
  v10 = v14;
  if (!v9)
  {
    v11 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = [v7 isConfiguration:0 compatibleWithStoreMetadata:v9];
  if (a5)
  {
LABEL_3:
    v12 = v10;
    *a5 = v10;
  }

LABEL_4:

  return v11;
}

- (id)managedObjectModelURLForVersion:(unint64_t)a3
{
  v5 = [(_DKCoreDataStorage *)self delegate];

  if (v5)
  {
    v6 = [(_DKCoreDataStorage *)self delegate];
    v7 = [v6 coreDataStorage:self needsManagedObjectModelNameForVersion:a3];

    if (v7)
    {
      v8 = [v7 stringByAppendingPathExtension:@"mom"];
      v9 = [(NSURL *)self->_modelURL URLByAppendingPathComponent:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)managedObjectModelForVersion:(unint64_t)a3
{
  v3 = [(_DKCoreDataStorage *)self managedObjectModelURLForVersion:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v3];
    if (v4)
    {
      goto LABEL_6;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [_DKCoreDataStorage managedObjectModelForVersion:];
    }
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (int64_t)modelVersionForStoreAtURL:(id)a3 error:(id *)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = *MEMORY[0x1E695D4A8];
  v21 = 0;
  v8 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v7 URL:v6 error:&v21];
  v9 = v21;
  if (!v8)
  {
LABEL_8:
    v16 = [(_DKCoreDataStorage *)self delegate];

    if (v16)
    {
      v20 = v9;
      v12 = [(_DKCoreDataStorage *)self managedObjectModelVersionCompatibleWithPersistentStoreAtURL:v6 error:&v20];
      v19 = v20;

      if (v12)
      {
LABEL_10:
        v9 = v19;
        if (!a4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v9 = v19;
    }

    v17 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23[0] = @"Store version not found.";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v19 = [v17 errorWithDomain:@"com.apple.coreduet.DKCoreDataStorage" code:2 userInfo:v18];

    v12 = 0;
    goto LABEL_10;
  }

  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695D4B0]];
  v11 = [v10 firstObject];
  if (![v11 length])
  {

    goto LABEL_8;
  }

  v12 = [v11 integerValue];

  if (!v12)
  {
    goto LABEL_8;
  }

  if (a4)
  {
LABEL_5:
    v13 = v9;
    *a4 = v9;
  }

LABEL_6:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)migratePersistentStoreAtURL:(id)a3 toManagedObjectModel:(id)a4 protectionClass:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__18;
  v44 = __Block_byref_object_dispose__18;
  v45 = 0;
  v13 = self;
  objc_sync_enter(v13);
  v14 = (v41 + 5);
  obj = v41[5];
  v15 = [(_DKCoreDataStorage *)v13 modelVersionForStoreAtURL:v10 error:&obj];
  objc_storeStrong(v14, obj);
  if (v15)
  {
    v16 = [v11 versionIdentifiers];
    v17 = [v16 anyObject];
    v18 = [v17 integerValue];

    if (v15 < v18)
    {
      v19 = [(_DKCoreDataStorage *)v13 delegate];
      v20 = v19;
      if (v19 && v15 > 0)
      {
        v21 = [v11 versionIdentifiers];
        v22 = [v21 count];

        if (v22)
        {
          v23 = v15 + 1;
          v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -15);
          v25 = dispatch_queue_create("com.apple.coreduetd.Migration", v24);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __93___DKCoreDataStorage_migratePersistentStoreAtURL_toManagedObjectModel_protectionClass_error___block_invoke;
          block[3] = &unk_1E7369D50;
          block[4] = v13;
          v32 = v10;
          v33 = v11;
          v37 = v23;
          v38 = v18;
          v34 = v12;
          v35 = &v40;
          v36 = &v46;
          dispatch_async_and_wait(v25, block);

          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    v26 = (v41 + 5);
    v30 = v41[5];
    v27 = [(_DKCoreDataStorage *)v13 autoMigratePersistentStoreAtURL:v10 toManagedObjectModel:v11 protectionClass:v12 error:&v30];
    objc_storeStrong(v26, v30);

    if (v27)
    {
      *(v47 + 24) = 1;
    }
  }

LABEL_10:
  objc_sync_exit(v13);

  if (a6)
  {
    *a6 = v41[5];
  }

  v28 = *(v47 + 24);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  return v28;
}

- (unsigned)autoMigratePersistentStoreAtURL:(void *)a3 toManagedObjectModel:(void *)a4 protectionClass:(void *)a5 error:
{
  v21[6] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [(_DKCoreDataStorage *)a1 _defaultOptionsForStoreWithProtectionClass:v11];
    v14 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v10];
    a1 = v14;
    if (v14)
    {
      v15 = *MEMORY[0x1E695D4A8];
      v21[0] = 0;
      v16 = [v14 addPersistentStoreWithType:v15 configuration:0 URL:v9 options:v13 error:v21];
      v17 = v21[0];
      if (!v16)
      {

        v16 = 0;
        a1 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    objc_autoreleasePoolPop(v12);
    if (a5)
    {
      v18 = v17;
      *a5 = v17;
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return a1;
}

- (uint64_t)willAutoMigrateStoreAtURL:(void *)a3 fromManagedObjectModel:(uint64_t)a4 havingVersion:(void *)a5 error:
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    v11 = a1;
    objc_sync_enter(v11);
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      [(_DKCoreDataStorage *)v12 willAutoMigrateStoreAtURL:v13 fromManagedObjectModel:v14 havingVersion:v15 error:v16, v17, v18, v19];
    }

    v20 = objc_autoreleasePoolPush();
    v21 = [v11 delegate];
    v34 = 0;
    v22 = [v21 coreDataStorage:v11 willAutoMigrateStoreAtURL:v9 fromManagedObjectModel:v10 havingVersion:a4 error:&v34];
    v23 = v34;

    objc_autoreleasePoolPop(v20);
    if (v22)
    {
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
      if (v24)
      {
        [(_DKCoreDataStorage *)v24 willAutoMigrateStoreAtURL:v25 fromManagedObjectModel:v26 havingVersion:v27 error:v28, v29, v30, v31];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [_DKCoreDataStorage willAutoMigrateStoreAtURL:fromManagedObjectModel:havingVersion:error:];
    }

    objc_sync_exit(v11);

    if (a5)
    {
      v32 = v23;
      *a5 = v23;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (uint64_t)didAutoMigratePersistentStore:(void *)a3 toManagedObjectModel:(uint64_t)a4 havingVersion:(void *)a5 error:
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    v11 = a1;
    objc_sync_enter(v11);
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      [(_DKCoreDataStorage *)v12 didAutoMigratePersistentStore:v13 toManagedObjectModel:v14 havingVersion:v15 error:v16, v17, v18, v19];
    }

    v20 = objc_autoreleasePoolPush();
    v21 = [v11 delegate];
    v34 = 0;
    v22 = [v21 coreDataStorage:v11 didAutoMigratePersistentStore:v9 toManagedObjectModel:v10 havingVersion:a4 error:&v34];
    v23 = v34;

    objc_autoreleasePoolPop(v20);
    if (v22)
    {
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
      if (v24)
      {
        [(_DKCoreDataStorage *)v24 didAutoMigratePersistentStore:v25 toManagedObjectModel:v26 havingVersion:v27 error:v28, v29, v30, v31];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [_DKCoreDataStorage didAutoMigratePersistentStore:toManagedObjectModel:havingVersion:error:];
    }

    objc_sync_exit(v11);

    if (a5)
    {
      v32 = v23;
      *a5 = v23;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (uint64_t)_addStoresToCoordinator:(void *)a3 protectionClass:(void *)a4 error:
{
  v74[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v17 = 0;
    goto LABEL_42;
  }

  v9 = MEMORY[0x1E695DFF8];
  v10 = [*(a1 + 16) objectForKeyedSubscript:v8];
  v11 = [v9 fileURLWithPath:v10];

  if (*(a1 + 68) == 1)
  {
    v12 = [(_DKCoreDataStorage *)a1 _defaultOptionsForStoreWithProtectionClass:v8];
    v13 = *MEMORY[0x1E695D4A8];
    v72 = 0;
    v14 = [v7 addPersistentStoreWithType:v13 configuration:0 URL:v11 options:v12 error:&v72];
    v15 = v72;

    if (v14)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    if (a4 && (v17 & 1) == 0)
    {
      v18 = v15;
      *a4 = v15;
    }

    goto LABEL_41;
  }

  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__18;
  v70 = __Block_byref_object_dispose__18;
  v71 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 1;
  v19 = dispatch_group_create();
  if ((*(a1 + 69) & 1) == 0)
  {
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      [(_DKCoreDataStorage *)v23 _addStoresToCoordinator:v24 protectionClass:v25 error:v26, v27, v28, v29, v30];
    }

    dispatch_group_enter(v19);
    v31 = [(_DKCoreDataStorage *)a1 _descriptionForStoreWithURL:v11 protectionClass:v8 sync:0];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __68___DKCoreDataStorage__addStoresToCoordinator_protectionClass_error___block_invoke;
    v58[3] = &unk_1E7369D78;
    v60 = &v62;
    v61 = &v66;
    v32 = v19;
    v59 = v32;
    [v7 addPersistentStoreWithDescription:v31 completionHandler:v58];
    if (dispatch_group_wait(v32, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [_DKCoreDataStorage _addStoresToCoordinator:protectionClass:error:];
      }

      goto LABEL_30;
    }

    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v35)
    {
      [(_DKCoreDataStorage *)v35 _addStoresToCoordinator:v36 protectionClass:v37 error:v38, v39, v40, v41, v42];
    }

LABEL_36:
    if (a4)
    {
      v51 = v67[5];
      if (v51)
      {
        *a4 = v51;
      }
    }

    v17 = *(v63 + 24);
    goto LABEL_40;
  }

  if (v11)
  {
    v20 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [_DKCoreDataStorage _addStoresToCoordinator:protectionClass:error:];
    }

    dispatch_group_enter(v19);
    v21 = [(_DKCoreDataStorage *)a1 _descriptionForStoreWithURL:v11 protectionClass:v8 sync:1];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __68___DKCoreDataStorage__addStoresToCoordinator_protectionClass_error___block_invoke_75;
    v54[3] = &unk_1E7369D78;
    v56 = &v62;
    v57 = &v66;
    v55 = v19;
    [v7 addPersistentStoreWithDescription:v21 completionHandler:v54];
    v22 = v55;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [_DKCoreDataStorage _addStoresToCoordinator:protectionClass:error:];
    }

    *(v63 + 24) = 0;
    v33 = MEMORY[0x1E696ABC0];
    v73 = *MEMORY[0x1E696A578];
    v74[0] = @"Unsupported protection class.";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];
    v34 = [v33 errorWithDomain:@"com.apple.coreduet" code:0 userInfo:v21];
    v22 = v67[5];
    v67[5] = v34;
  }

  if (!dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL))
  {
    v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v43)
    {
      [(_DKCoreDataStorage *)v43 _addStoresToCoordinator:v44 protectionClass:v45 error:v46, v47, v48, v49, v50];
    }

    goto LABEL_36;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_DKCoreDataStorage _addStoresToCoordinator:protectionClass:error:];
  }

LABEL_30:
  v17 = 0;
LABEL_40:

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);

LABEL_41:
LABEL_42:

  v52 = *MEMORY[0x1E69E9840];
  return v17 & 1;
}

- (id)persistentStoreCoordinatorFor:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_DKDataProtectionStateMonitor *)self->_dataProtectionMonitor isDataAvailableFor:v4];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)v6->_persistentStoreCoordinators objectForKeyedSubscript:v4];
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      p_directory = &v6->_directory;
      if ([(NSFileManager *)v6->_fm fileExistsAtPath:v6->_directory])
      {
        if (!v6->_isManagedDatabase)
        {
          goto LABEL_37;
        }

        v10 = [(_DKCoreDataStorage *)v6 isDataVaulted];
        v11 = *p_directory;
        if (v10)
        {
          [v11 UTF8String];
          if (rootless_check_datavault_flag() == 1)
          {
            if (v6->_isDatabaseManager)
            {
              [*p_directory UTF8String];
              rootless_convert_to_datavault();
              goto LABEL_37;
            }

            v19 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [_DKCoreDataStorage persistentStoreCoordinatorFor:];
            }

LABEL_24:

            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            v21 = [(_DKCoreDataStorage *)&v6->super.isa clientNeedsHelpNotification];
            CFNotificationCenterPostNotification(DarwinNotifyCenter, v21, 0, 0, 1u);
          }

LABEL_37:
          v18 = 0;
LABEL_38:
          v31 = [(_DKCoreDataStorage *)v6 _defaultOptionsForStoreWithProtectionClass:v4];
          v32 = [v31 mutableCopy];

          v33 = [(_DKCoreDataStorage *)v6 managedObjectModel];
          if (v33)
          {
            v34 = MEMORY[0x1E695DFF8];
            v35 = [(NSMutableDictionary *)v6->_paths objectForKeyedSubscript:v4];
            v36 = [v34 fileURLWithPath:v35];

            if (![(_DKCoreDataStorage *)v6 requiresManualMigration]|| v6->_readOnly)
            {
              v37 = v18;
              goto LABEL_42;
            }

            v56 = v18;
            v44 = [(_DKCoreDataStorage *)v6 isManagedObjectModel:v33 compatibleWithPersistentStoreAtURL:v36 error:&v56];
            v37 = v56;

            if (v37)
            {
              if ([_CDErrorUtilities isCoreDataFatalError:v37])
              {
                [(_DKCoreDataStorage *)v6 handleDatabaseErrors:v37 forProtectionClass:v4];
                [(_DKCoreDataStorage *)v6 removePersistentStoresInCoordinator:?];
                goto LABEL_42;
              }
            }

            else if (!v44)
            {
              if (!v6->_isDatabaseManager)
              {
                v46 = +[_CDLogging knowledgeChannel];
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  [_DKCoreDataStorage persistentStoreCoordinatorFor:];
                }

                v47 = CFNotificationCenterGetDarwinNotifyCenter();
                v48 = [(_DKCoreDataStorage *)&v6->super.isa clientNeedsHelpNotification];
                CFNotificationCenterPostNotification(v47, v48, 0, 0, 1u);
                v41 = 0;
                v39 = 0;
                v8 = 0;
LABEL_55:

                if (v41)
                {
                  goto LABEL_56;
                }

LABEL_50:
                objc_sync_exit(v6);

                v40 = 0;
                goto LABEL_57;
              }

              v55 = 0;
              v45 = [(_DKCoreDataStorage *)v6 migratePersistentStoreAtURL:v36 toManagedObjectModel:v33 protectionClass:v4 error:&v55];
              v37 = v55;
              if (v45)
              {
                [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695D480]];
                [v32 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695D490]];
              }

              else
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  [_DKCoreDataStorage persistentStoreCoordinatorFor:];
                }

                [(_DKCoreDataStorage *)v6 deleteStorageFor:v4];
                [(_DKCoreDataStorage *)v6 removePersistentStoresInCoordinator:?];
              }

LABEL_42:
              v8 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v33];

              v54 = 0;
              v38 = [(_DKCoreDataStorage *)v6 _addStoresToCoordinator:v8 protectionClass:v4 error:&v54];
              v39 = v54;
              if (v38)
              {
                if (v8)
                {
                  [(NSMutableDictionary *)v6->_persistentStoreCoordinators setObject:v8 forKeyedSubscript:v4];
                }
              }

              else
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  [_DKCoreDataStorage persistentStoreCoordinatorFor:];
                }

                [(_DKCoreDataStorage *)v6 handleDatabaseErrors:v39 forProtectionClass:v4];
                [(_DKCoreDataStorage *)v6 removePersistentStoresInCoordinator:v8];

                v8 = 0;
              }

              v41 = 1;
              goto LABEL_55;
            }

            v37 = 0;
            goto LABEL_42;
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [_DKCoreDataStorage persistentStoreCoordinatorFor:v6];
          }

          goto LABEL_48;
        }

        [v11 UTF8String];
        if (rootless_check_datavault_flag())
        {
          goto LABEL_37;
        }

        if (!v6->_isDatabaseManager)
        {
          v19 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [_DKCoreDataStorage persistentStoreCoordinatorFor:];
          }

          goto LABEL_24;
        }

        v22 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *p_directory;
          *buf = 138412290;
          v61 = v23;
          _os_log_impl(&dword_191750000, v22, OS_LOG_TYPE_DEFAULT, "Removing datavault directory %@", buf, 0xCu);
        }

        fm = v6->_fm;
        directory = v6->_directory;
        v58 = 0;
        [(NSFileManager *)fm removeItemAtPath:directory error:&v58];
        v18 = v58;
        if (v18)
        {
          v26 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [_DKCoreDataStorage persistentStoreCoordinatorFor:?];
          }

          goto LABEL_38;
        }

        v49 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_191750000, v49, OS_LOG_TYPE_DEFAULT, "Succesfully removed datavault directory.", buf, 2u);
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v50 = *p_directory;
          *buf = 138412290;
          v61 = v50;
          _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Creating directory at %@", buf, 0xCu);
        }

        v51 = v6->_fm;
        v52 = v6->_directory;
        v57 = 0;
        v53 = [(NSFileManager *)v51 createDirectoryAtPath:v52 withIntermediateDirectories:1 attributes:0 error:&v57];
        v18 = v57;
        if (v53)
        {
          goto LABEL_38;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [_DKCoreDataStorage persistentStoreCoordinatorFor:];
        }

        [(_DKCoreDataStorage *)v6 removePersistentStoresInCoordinator:?];
      }

      else
      {
        v12 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [_DKCoreDataStorage persistentStoreCoordinatorFor:?];
        }

        if (!v6->_isDatabaseManager)
        {
          v19 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [_DKCoreDataStorage persistentStoreCoordinatorFor:];
          }

          goto LABEL_24;
        }

        if (v6->_isManagedDatabase && (v13 = [(_DKCoreDataStorage *)v6 isDataVaulted], ![(_DKCoreDataStorage *)v13 persistentStoreCoordinatorFor:?]))
        {
          [*p_directory UTF8String];
          v27 = rootless_mkdir_datavault();
          if (!v27)
          {
            goto LABEL_37;
          }

          v28 = MEMORY[0x1E69E9C10];
          v29 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v30 = __error();
            [(_DKCoreDataStorage *)v30 persistentStoreCoordinatorFor:buf, v27];
          }

          [(_DKCoreDataStorage *)v6 removePersistentStoresInCoordinator:?];
          v18 = 0;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v14 = *p_directory;
            *buf = 138412290;
            v61 = v14;
            _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Creating directory at %@", buf, 0xCu);
          }

          v15 = v6->_fm;
          v16 = v6->_directory;
          v59 = 0;
          v17 = [(NSFileManager *)v15 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v59];
          v18 = v59;
          if (v17)
          {
            goto LABEL_38;
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [_DKCoreDataStorage persistentStoreCoordinatorFor:];
          }

          [(_DKCoreDataStorage *)v6 removePersistentStoresInCoordinator:?];
        }
      }

LABEL_48:

      goto LABEL_49;
    }
  }

  else if (v7)
  {

    [(_DKCoreDataStorage *)v6 invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:v4];
LABEL_49:
    v8 = 0;
    goto LABEL_50;
  }

LABEL_56:
  objc_sync_exit(v6);

  v8 = v8;
  v40 = v8;
LABEL_57:

  v42 = *MEMORY[0x1E69E9840];

  return v40;
}

- (void)setManagedObjectContext:(void *)a3 forKey:
{
  v7 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 24);
    objc_sync_enter(v6);
    [*(a1 + 24) setObject:v7 forKey:v5];
    objc_sync_exit(v6);
  }
}

- (id)managedObjectContextFor:(id)a3 identifier:(id)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_DKDataProtectionStateMonitor *)self->_dataProtectionMonitor isDataAvailableFor:v6];
  v9 = self;
  objc_sync_enter(v9);
  if (v7)
  {
    v24[0] = v6;
    v24[1] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v11 = [v10 componentsJoinedByString:@":"];
  }

  else
  {
    v11 = v6;
  }

  v12 = [(_DKCoreDataStorage *)&v9->super.isa managedObjectContextForKey:v11];
  v13 = v12;
  if (!v8)
  {
    v16 = 0;
    if (!v12)
    {
      v14 = 0;
LABEL_12:
      v15 = 1;
      goto LABEL_13;
    }

LABEL_11:

    v14 = !v8;
    goto LABEL_12;
  }

  if (v12)
  {
    v14 = 0;
    v15 = 1;
    v16 = v12;
    goto LABEL_13;
  }

  v13 = [(_DKCoreDataStorage *)v9 persistentStoreCoordinatorFor:v6];
  if (v13)
  {
    v17 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
    [v17 setPersistentStoreCoordinator:v13];
    [v17 setMergePolicy:*MEMORY[0x1E695D370]];
    [v17 setUndoManager:0];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.coreduet.knowledge %@", v11];
    [v17 setName:v18];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __57___DKCoreDataStorage_managedObjectContextFor_identifier___block_invoke;
    v22[3] = &unk_1E7367440;
    v16 = v17;
    v23 = v16;
    [v16 performWithOptions:4 andBlock:v22];
    [(_DKCoreDataStorage *)v9 setManagedObjectContext:v16 forKey:v11];

    goto LABEL_11;
  }

  v14 = 0;
  v16 = 0;
  v15 = 0;
LABEL_13:

  objc_sync_exit(v9);
  if (!v15)
  {
LABEL_16:
    v19 = 0;
    goto LABEL_18;
  }

  if (v14)
  {
    [(_DKCoreDataStorage *)v9 invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:v6];
    goto LABEL_16;
  }

  v19 = v16;
LABEL_18:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)privateManagedObjectContextFor:(id)a3
{
  v4 = a3;
  if ([(_DKDataProtectionStateMonitor *)self->_dataProtectionMonitor isDataAvailableFor:v4])
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(_DKCoreDataStorage *)v5 persistentStoreCoordinatorFor:v4];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
      [v7 setPersistentStoreCoordinator:v6];
      [v7 setMergePolicy:*MEMORY[0x1E695D370]];
      [v7 setUndoManager:0];
    }

    else
    {
      v7 = 0;
    }

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isManagedObjectContextFor:(id)a3 equalToManagedObjectContext:(id)a4
{
  v6 = a4;
  v7 = [(_DKCoreDataStorage *)&self->super.isa managedObjectContextForKey:a3];

  return v7 == v6;
}

- (BOOL)confirmDatabaseConnectionFor:(id)a3
{
  v3 = [(_DKCoreDataStorage *)self managedObjectContextFor:a3];
  v4 = v3 != 0;

  return v4;
}

+ (unint64_t)deleteObjectsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5 sortDescriptors:(id)a6 fetchLimit:(unint64_t)a7 includeSubentities:(BOOL)a8 includePendingChanges:(BOOL)a9
{
  BYTE1(v10) = a9;
  LOBYTE(v10) = a8;
  return [a1 deleteObjectsInContext:a3 entityName:a4 predicate:a5 sortDescriptors:a6 fetchOffset:0 fetchLimit:a7 includeSubentities:v10 includePendingChanges:?];
}

+ (unint64_t)deleteObjectsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5 sortDescriptors:(id)a6 fetchOffset:(unint64_t)a7 fetchLimit:(unint64_t)a8 includeSubentities:(BOOL)a9 includePendingChanges:(BOOL)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if (v15)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__18;
    v37 = __Block_byref_object_dispose__18;
    v38 = 0;
    kdebug_trace();
    _cdknowledge_signpost_delete_begin(v16);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __146___DKCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit_includeSubentities_includePendingChanges___block_invoke;
    v22[3] = &unk_1E7369DA0;
    v23 = v16;
    v24 = v15;
    v29 = a8;
    v30 = a7;
    v31 = a9;
    v32 = a10;
    v25 = v17;
    v26 = v18;
    v27 = &v33;
    v28 = &v39;
    [v24 performWithOptions:4 andBlock:v22];
    v19 = v40[3];
    [v34[5] code];
    kdebug_trace();
    _cdknowledge_signpost_delete_end(v40[3], [v34[5] code]);
    v20 = v40[3];

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (unint64_t)countObjectsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5 includeSubentities:(BOOL)a6 includePendingChanges:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__18;
  v35 = __Block_byref_object_dispose__18;
  v36 = 0;
  kdebug_trace();
  _cdknowledge_signpost_count_begin(v12);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __106___DKCoreDataStorage_countObjectsInContext_entityName_predicate_includeSubentities_includePendingChanges___block_invoke;
  v23 = &unk_1E7369DC8;
  v14 = v12;
  v24 = v14;
  v15 = v11;
  v25 = v15;
  v29 = a6;
  v30 = a7;
  v16 = v13;
  v26 = v16;
  v27 = &v37;
  v28 = &v31;
  [v15 performWithOptions:4 andBlock:&v20];
  v17 = v38[3];
  [v32[5] code];
  kdebug_trace();
  _cdknowledge_signpost_count_end(v38[3], [v32[5] code]);
  v18 = v38[3];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v18;
}

+ (unint64_t)deleteOrphanedEntitiesInContext:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"ANY event == NULL"];
  LOBYTE(v11) = 1;
  v6 = [_DKCoreDataStorage deleteObjectsInContext:v4 entityName:@"StructuredMetadata" predicate:v5 sortDescriptors:0 fetchLimit:0 includeSubentities:0 includePendingChanges:v11];
  LOBYTE(v12) = 1;
  v7 = [_DKCoreDataStorage deleteObjectsInContext:v4 entityName:@"CustomMetadata" predicate:v5 sortDescriptors:0 fetchLimit:0 includeSubentities:0 includePendingChanges:v12]+ v6;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY product == NULL"];
  LOBYTE(v13) = 1;
  v9 = [_DKCoreDataStorage deleteObjectsInContext:v4 entityName:@"Source" predicate:v8 sortDescriptors:0 fetchLimit:0 includeSubentities:0 includePendingChanges:v13];

  return v7 + v9;
}

- (BOOL)deleteStorageFor:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_isDatabaseManager)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(_DKCoreDataStorage *)&v5->super.isa databasePathFor:v4];
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v7 path];
    v10 = [v8 fileExistsAtPath:v9];

    if (v10)
    {
      v11 = [(NSMutableDictionary *)v5->_persistentStoreCoordinators objectForKeyedSubscript:v4];
      if (!v11)
      {
        v12 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [_DKCoreDataStorage deleteStorageFor:];
        }

        v13 = objc_alloc(MEMORY[0x1E695D6C0]);
        v14 = [(_DKCoreDataStorage *)v5 managedObjectModel];
        v11 = [v13 initWithManagedObjectModel:v14];
      }

      v15 = *MEMORY[0x1E695D4A8];
      v24 = 0;
      v16 = [v11 destroyPersistentStoreAtURL:v7 withType:v15 options:0 error:&v24];
      v17 = v24;
      if (v16)
      {
        v18 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v26 = v6;
          v27 = 2112;
          v28 = v4;
          _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_DEFAULT, "Succesfully truncated data storage in %@ for protection class %@.", buf, 0x16u);
        }
      }

      else
      {
        v18 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          v26 = v6;
          v27 = 2112;
          v28 = v4;
          v29 = 2112;
          v30 = v17;
          _os_log_fault_impl(&dword_191750000, v18, OS_LOG_TYPE_FAULT, "Failed to truncate data storage in %@ for protection class %@: %@", buf, 0x20u);
        }
      }

      [(_DKCoreDataStorage *)v5 invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:v4];
      if (v17)
      {
        [(_DKCoreDataStorage *)v5 _deleteDatabaseFiles:v6];
      }
    }

    else
    {
      v11 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_DEFAULT, "-deleteStorageFor: called on non-existent storage.", buf, 2u);
      }
    }

    objc_sync_exit(v5);
  }

  else
  {
    v19 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_DKCoreDataStorage deleteStorageFor:];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v21 = [(_DKCoreDataStorage *)&self->super.isa clientNeedsHelpNotification];
    CFNotificationCenterPostNotification(DarwinNotifyCenter, v21, 0, 0, 1u);
  }

  v22 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (uint64_t)forceCopyItemAtPath:(void *)a3 toPath:(uint64_t)a4 error:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v8 fileExistsAtPath:v7])
  {
    [v8 removeItemAtPath:v7 error:0];
  }

  [v8 copyItemAtPath:v6 toPath:v7 error:a4];

  return 1;
}

- (id)copyStorageFor:(id)a3 toDirectory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DKCoreDataStorage *)self managedObjectContextFor:v6];
  if (v8)
  {
    v9 = [[_DKCoreDataStorage alloc] initWithDirectory:v7 databaseName:self->_databaseName modelURL:self->_modelURL readOnly:0 localOnly:self->_localOnly];
    v10 = [(_DKCoreDataStorage *)v9 managedObjectContextFor:v6];

    if (v10)
    {
      [(_DKCoreDataStorage *)v9 invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:v6];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __49___DKCoreDataStorage_copyStorageFor_toDirectory___block_invoke;
      v15[3] = &unk_1E7369DF0;
      v16 = v8;
      v17 = self;
      v18 = v6;
      v11 = v9;
      v19 = v11;
      v20 = &v21;
      [v16 performWithOptions:4 andBlock:v15];
      if (*(v22 + 24))
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      _Block_object_dispose(&v21, 8);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [_DKCoreDataStorage copyStorageFor:toDirectory:];
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (unint64_t)updateObjectsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5 sortDescriptors:(id)a6 batchFetchLimit:(unint64_t)a7 totalFetchLimit:(unint64_t)a8 includeSubentities:(BOOL)a9 updateBlock:(id)a10
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a10;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __145___DKCoreDataStorage_updateObjectsInContext_entityName_predicate_sortDescriptors_batchFetchLimit_totalFetchLimit_includeSubentities_updateBlock___block_invoke;
  v27[3] = &unk_1E7369E18;
  v19 = v14;
  v28 = v19;
  v20 = v15;
  v29 = v20;
  v34 = a8;
  v35 = a7;
  v36 = a9;
  v21 = v16;
  v30 = v21;
  v22 = v17;
  v31 = v22;
  v23 = v18;
  v32 = v23;
  v33 = &v37;
  [v19 performWithOptions:4 andBlock:v27];
  v24 = v38[3];

  _Block_object_dispose(&v37, 8);
  return v24;
}

+ (id)anonymizeString:(void *)a3 withSalt:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v5, v4];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "hash")}];
  v9 = [v7 stringWithFormat:@"%@", v8];

  return v9;
}

+ (unint64_t)anonymizeStringAttributesOfManagedObject:(id)a3 withSalt:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v35 = a4;
  v30 = [v5 entity];
  v6 = [v30 attributesByName];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v37;
    v31 = v5;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:v12];
        v14 = [v13 attributeValueClassName];
        v15 = [v14 isEqualToString:@"NSString"];

        if (v15)
        {
          v16 = [v5 valueForKey:v12];
          v17 = v16;
          if (v16 && [v16 length])
          {
            v18 = [(_DKCoreDataStorage *)a1 anonymizeString:v17 withSalt:v35];
            [v5 setValue:v18 forKey:v12];

            ++v9;
          }
        }

        else
        {
          v19 = [v13 attributeValueClassName];
          v20 = [v19 isEqualToString:@"NSURL"];

          if (!v20)
          {
            goto LABEL_17;
          }

          v21 = [v5 valueForKey:v12];
          v17 = v21;
          if (v21)
          {
            v22 = [v21 absoluteString];
            if (v22)
            {
              v23 = v22;
              v33 = v9;
              v24 = [v17 absoluteString];
              v25 = [v24 length];

              if (v25)
              {
                v32 = [v17 absoluteString];
                v26 = [(_DKCoreDataStorage *)a1 anonymizeString:v32 withSalt:v35];
                v27 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v26];
                v5 = v31;
                [v31 setValue:v27 forKey:v12];

                v9 = v33 + 1;
              }

              else
              {
                v5 = v31;
                v9 = v33;
              }
            }
          }
        }

LABEL_17:
      }

      v8 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v8)
      {
        goto LABEL_21;
      }
    }
  }

  v9 = 0;
LABEL_21:

  v28 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (unint64_t)anonymizeObjectStringsInContext:(id)a3 entityName:(id)a4 predicate:(id)a5 sortDescriptors:(id)a6 batchFetchLimit:(unint64_t)a7 totalFetchLimit:(unint64_t)a8 includeSubentities:(BOOL)a9 salt:(id)a10
{
  v16 = a10;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __147___DKCoreDataStorage_anonymizeObjectStringsInContext_entityName_predicate_sortDescriptors_batchFetchLimit_totalFetchLimit_includeSubentities_salt___block_invoke;
  v26[3] = &unk_1E7369E40;
  v27 = v16;
  v17 = v16;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = MEMORY[0x193B00C50](v26);
  LOBYTE(v25) = a9;
  v23 = [_DKCoreDataStorage updateObjectsInContext:v21 entityName:v20 predicate:v19 sortDescriptors:v18 batchFetchLimit:a7 totalFetchLimit:a8 includeSubentities:v25 updateBlock:v22];

  return v23;
}

- (_DKCoreDataStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleDataProtectionChangeFor:(int)a3 willBeAvailable:
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412546;
      v8 = v5;
      v9 = 1024;
      v10 = a3;
      _os_log_debug_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Data protection availability changed for %@ to %d", &v7, 0x12u);
      if (a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if ((a3 & 1) == 0)
    {
LABEL_4:
      [(_DKCoreDataStorage *)a1 invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:v5];
    }
  }

LABEL_5:

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_registerForClientHelpNotifications
{
  if (a1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v3 = [(_DKCoreDataStorage *)a1 clientNeedsHelpNotification];

    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, _clientNeedsHelpCallback, v3, 0, 0);
  }
}

- (void)_unregisterForClientHelpNotifications
{
  if (a1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v3 = [(_DKCoreDataStorage *)a1 clientNeedsHelpNotification];

    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, v3, 0);
  }
}

- (id)clientNeedsHelpNotification
{
  if (a1)
  {
    v1 = [(_DKCoreDataStorage *)a1 databaseManagerName];
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"com.apple.coreduet.client-needs-help.", v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)removePersistentStoresInCoordinator:(uint64_t)a1
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [v3 persistentStores];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v20;
      v10 = MEMORY[0x1E69E9C10];
      *&v7 = 138412290;
      v17 = v7;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v18 = 0;
          v13 = [v4 removePersistentStore:v12 error:{&v18, v17}];
          v14 = v18;
          v15 = v14;
          if ((!v13 || v14) && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v24 = v15;
            _os_log_error_impl(&dword_191750000, v10, OS_LOG_TYPE_ERROR, "Error removing persistent store: %@", buf, 0xCu);
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v8);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (unint64_t)managedObjectModelVersionCompatibleWithPersistentStoreAtURL:(void *)a3 error:
{
  v5 = a2;
  if (a1)
  {
    v6 = 1;
    while (1)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [a1 managedObjectModelForVersion:v6];
      if (!v8)
      {
        v11 = 0;
LABEL_9:

        objc_autoreleasePoolPop(v7);
LABEL_10:
        v6 = 0;
        goto LABEL_11;
      }

      v14 = 0;
      v9 = [a1 isManagedObjectModel:v8 compatibleWithPersistentStoreAtURL:v5 error:&v14];
      v10 = v14;
      v11 = v10;
      if (v9)
      {
        break;
      }

      if (v10)
      {
        goto LABEL_9;
      }

      objc_autoreleasePoolPop(v7);
      if (++v6 == 9)
      {
        v11 = 0;
        goto LABEL_10;
      }
    }

    objc_autoreleasePoolPop(v7);
    if (v6 >= 9)
    {
      goto LABEL_10;
    }

LABEL_11:
    if (a3)
    {
      v12 = v11;
      *a3 = v11;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)migratePersistentStoreAtURL:(void *)a3 toManagedObjectModel:(void *)a4 protectionClass:(unint64_t)a5 startVersion:(unint64_t)a6 endVersion:(void *)a7 error:
{
  v56 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v45 = a4;
  if (!a1)
  {
    v21 = 0;
    goto LABEL_7;
  }

  v43 = a7;
  v44 = v14;
  if (a5 > a6)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown or illegal model version identifier(s): start:%lu end:%lu", a5, a6];
    v16 = v15 = v13;
    v17 = MEMORY[0x1E696ABC0];
    v52 = *MEMORY[0x1E696A578];
    v53 = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v47 = [v17 errorWithDomain:@"com.apple.coreduet.DKCoreDataStorage" code:1 userInfo:v18];

    v13 = v15;
    v19 = 0;
    goto LABEL_4;
  }

  v19 = 0;
  v47 = 0;
  v24 = a5;
  while (1)
  {
    v25 = [a1 delegate];
    v26 = [v25 coreDataStorage:a1 shouldCallDelegateAfterAutoMigrationToManagedObjectModelHavingVersion:v24];

    if (a6 != v24 && !v26)
    {
      goto LABEL_24;
    }

    v27 = [a1 managedObjectModelForVersion:v24];
    if (!v27)
    {
      break;
    }

    v28 = v27;
    v29 = [a1 delegate];
    v30 = a5;
    v31 = [v29 coreDataStorage:a1 shouldCallDelegateBeforeAutoMigrationFromManagedObjectModelHavingVersion:a5];

    if (v31)
    {
      v32 = [a1 managedObjectModelForVersion:v30];
      v33 = v30;
      if (!v32 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
        *buf = 138412290;
        v55 = v41;
        _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to find model version %@, will attempt to recover...", buf, 0xCu);

        v33 = v30;
      }

      v50 = v47;
      [(_DKCoreDataStorage *)a1 willAutoMigrateStoreAtURL:v13 fromManagedObjectModel:v32 havingVersion:v33 error:&v50];
      v34 = v50;

      v46 = v24;
    }

    else
    {
      v46 = v30;
      v34 = v47;
    }

    v49 = v34;
    [(_DKCoreDataStorage *)a1 autoMigratePersistentStoreAtURL:v13 toManagedObjectModel:v28 protectionClass:v45 error:&v49];
    v36 = v35 = v34;
    v37 = v49;

    if (!v36)
    {

      v47 = v37;
      goto LABEL_4;
    }

    if (v26)
    {
      v38 = v13;
      v39 = [v36 persistentStores];
      v40 = [v39 firstObject];

      v48 = v37;
      LODWORD(v39) = [(_DKCoreDataStorage *)a1 didAutoMigratePersistentStore:v40 toManagedObjectModel:v28 havingVersion:v24 error:&v48];
      v47 = v48;

      if (!v39)
      {

        v13 = v38;
        goto LABEL_4;
      }

      v13 = v38;
    }

    else
    {
      v47 = v37;
    }

    a5 = v46;
LABEL_24:
    v19 |= a6 == v24++;
    if (v24 > a6)
    {
      goto LABEL_4;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
    *buf = 138412290;
    v55 = v42;
    _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to find model version %@, unable to migrate", buf, 0xCu);
  }

LABEL_4:
  v20 = v47;
  if (v43)
  {
    v20 = v47;
    *v43 = v20;
  }

  v51 = v19 & 1;

  v21 = v51;
  v14 = v44;
LABEL_7:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (unsigned)_defaultOptionsForStoreWithProtectionClass:(unsigned __int8 *)a1
{
  v2 = a1;
  v14[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v13[0] = *MEMORY[0x1E695D380];
    v3 = MEMORY[0x1E696AD98];
    v4 = a1[67];
    v5 = a2;
    v6 = [v3 numberWithInt:v4 ^ 1u];
    v14[0] = v6;
    v13[1] = *MEMORY[0x1E695D318];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:v2[67] ^ 1u];
    v8 = *MEMORY[0x1E695D3F8];
    v14[1] = v7;
    v14[2] = v5;
    v9 = *MEMORY[0x1E695D458];
    v13[2] = v8;
    v13[3] = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v2[67]];
    v14[3] = v10;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)_descriptionForStoreWithURL:(void *)a3 protectionClass:(int)a4 sync:
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a1)
  {
    v8 = [MEMORY[0x1E695D6C8] persistentStoreDescriptionWithURL:a2];
    v9 = [(_DKCoreDataStorage *)a1 _defaultOptionsForStoreWithProtectionClass:v7];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [v9 objectForKeyedSubscript:v14];
          [v8 setOption:v15 forKey:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    [v8 setType:*MEMORY[0x1E695D4A8]];
    if (a4)
    {
      v16 = objc_opt_new();
      [v16 setUseZoneWidePCS:1];
      v17 = objc_alloc_init(MEMORY[0x1E695D578]);
      [v17 setUseDeviceToDeviceEncryption:1];
      v18 = MEMORY[0x1E696AD98];
      v19 = +[_DKSyncPolicy policy];
      v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "assetThresholdInBytes")}];
      [v17 setCkAssetThresholdBytes:v20];

      v21 = +[_DKCloudUtilities containerIdentifier];
      [v17 setContainerIdentifier:v21];

      [v17 setContainerOptions:v16];
      v22 = [objc_alloc(MEMORY[0x1E695D570]) initWithOptions:v17];
      v23 = *(a1 + 56);
      *(a1 + 56) = v22;

      [v8 setOption:*(a1 + 56) forMirroringKey:*MEMORY[0x1E695D408]];
      [v8 setConfiguration:@"CloudKit"];
    }

    else
    {
      [v8 setConfiguration:@"Local"];
    }
  }

  else
  {
    v8 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)_deleteDatabaseFiles:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 48);
    v4 = a2;
    [v3 removeItemAtPath:v4 error:0];
    v5 = *(a1 + 48);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-wal", v4];
    [v5 removeItemAtPath:v6 error:0];

    v7 = *(a1 + 48);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-shm", v4];

    [v7 removeItemAtPath:v8 error:0];
  }

  return a1 != 0;
}

- (id)databasePathFor:(id *)a1
{
  if (a1)
  {
    a1 = [a1[2] objectForKeyedSubscript:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)managedObjectModelForVersion:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Unable to load model: '%@'", v1, 0xCu);
  v0 = *MEMORY[0x1E69E9840];
}

- (void)autoMigratePersistentStoreAtURL:(void *)a1 toManagedObjectModel:(uint8_t *)buf protectionClass:error:.cold.1(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Caught exception during migration: %@", buf, 0xCu);
}

- (void)willAutoMigrateStoreAtURL:fromManagedObjectModel:havingVersion:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)didAutoMigratePersistentStore:toManagedObjectModel:havingVersion:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_addStoresToCoordinator:protectionClass:error:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)persistentStoreCoordinatorFor:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)persistentStoreCoordinatorFor:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (BOOL)persistentStoreCoordinatorFor:(char)a1 .cold.3(char a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
    if (result)
    {
      v4 = *a2;
      OUTLINED_FUNCTION_6_1();
      _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Creating datavault at %@", v6, 0xCu);
      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)persistentStoreCoordinatorFor:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)persistentStoreCoordinatorFor:(int)a3 .cold.5(int *a1, uint8_t *buf, int a3)
{
  v3 = *a1;
  *buf = 67109376;
  *(buf + 1) = a3;
  *(buf + 4) = 1024;
  *(buf + 10) = v3;
  _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Datavault does not exist and could not be created. Status: %d; errno: %d", buf, 0xEu);
}

- (void)persistentStoreCoordinatorFor:.cold.6()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)persistentStoreCoordinatorFor:(uint64_t *)a1 .cold.7(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0(&dword_191750000, v2, v3, "Error trying to delete datavault at %@: %@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)persistentStoreCoordinatorFor:.cold.8()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)persistentStoreCoordinatorFor:.cold.9()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)persistentStoreCoordinatorFor:.cold.10()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)persistentStoreCoordinatorFor:.cold.11()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)persistentStoreCoordinatorFor:.cold.12()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)persistentStoreCoordinatorFor:(uint64_t)a1 .cold.13(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 80);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)deleteStorageFor:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyStorageFor:toDirectory:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end