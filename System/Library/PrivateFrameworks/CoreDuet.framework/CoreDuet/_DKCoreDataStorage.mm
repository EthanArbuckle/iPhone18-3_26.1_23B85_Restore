@interface _DKCoreDataStorage
+ (id)anonymizeString:(void *)string withSalt:;
+ (uint64_t)forceCopyItemAtPath:(void *)path toPath:(uint64_t)toPath error:;
+ (unint64_t)anonymizeObjectStringsInContext:(id)context entityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors batchFetchLimit:(unint64_t)limit totalFetchLimit:(unint64_t)fetchLimit includeSubentities:(BOOL)subentities salt:(id)self0;
+ (unint64_t)anonymizeStringAttributesOfManagedObject:(id)object withSalt:(id)salt;
+ (unint64_t)countObjectsInContext:(id)context entityName:(id)name predicate:(id)predicate includeSubentities:(BOOL)subentities includePendingChanges:(BOOL)changes;
+ (unint64_t)deleteObjectsInContext:(id)context entityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit includeSubentities:(BOOL)subentities includePendingChanges:(BOOL)changes;
+ (unint64_t)deleteObjectsInContext:(id)context entityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors fetchOffset:(unint64_t)offset fetchLimit:(unint64_t)limit includeSubentities:(BOOL)subentities includePendingChanges:(BOOL)self0;
+ (unint64_t)deleteOrphanedEntitiesInContext:(id)context;
+ (unint64_t)updateObjectsInContext:(id)context entityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors batchFetchLimit:(unint64_t)limit totalFetchLimit:(unint64_t)fetchLimit includeSubentities:(BOOL)subentities updateBlock:(id)self0;
- (BOOL)_deleteDatabaseFiles:(uint64_t)files;
- (BOOL)confirmDatabaseConnectionFor:(id)for;
- (BOOL)deleteStorageFor:(id)for;
- (BOOL)isManagedObjectContextFor:(id)for equalToManagedObjectContext:(id)context;
- (BOOL)isManagedObjectModel:(id)model compatibleWithPersistentStoreAtURL:(id)l error:(id *)error;
- (BOOL)migratePersistentStoreAtURL:(id)l toManagedObjectModel:(id)model protectionClass:(id)class error:(id *)error;
- (_DKCoreDataStorageDelegate)delegate;
- (id)_descriptionForStoreWithURL:(void *)l protectionClass:(int)class sync:;
- (id)clientNeedsHelpNotification;
- (id)copyStorageFor:(id)for toDirectory:(id)directory;
- (id)databaseManagerName;
- (id)databasePathFor:(id *)for;
- (id)managedObjectContextFor:(id)for identifier:(id)identifier;
- (id)managedObjectContextForKey:(id *)key;
- (id)managedObjectContextIdentifierWithPrefix:(id *)prefix;
- (id)managedObjectModel;
- (id)managedObjectModelForVersion:(unint64_t)version;
- (id)managedObjectModelURLForVersion:(unint64_t)version;
- (id)persistentStoreCoordinatorFor:(id)for;
- (id)privateManagedObjectContextFor:(id)for;
- (int64_t)modelVersionForStoreAtURL:(id)l error:(id *)error;
- (uint64_t)_addStoresToCoordinator:(void *)coordinator protectionClass:(void *)class error:;
- (uint64_t)didAutoMigratePersistentStore:(void *)store toManagedObjectModel:(uint64_t)model havingVersion:(void *)version error:;
- (uint64_t)initWithDirectory:(void *)directory databaseName:(void *)name modelURL:(char)l readOnly:(char)only localOnly:(char)localOnly sync:;
- (uint64_t)isDataVaulted;
- (uint64_t)migratePersistentStoreAtURL:(void *)l toManagedObjectModel:(void *)model protectionClass:(unint64_t)class startVersion:(unint64_t)version endVersion:(void *)endVersion error:;
- (uint64_t)willAutoMigrateStoreAtURL:(void *)l fromManagedObjectModel:(uint64_t)model havingVersion:(void *)version error:;
- (unint64_t)managedObjectModelVersionCompatibleWithPersistentStoreAtURL:(void *)l error:;
- (unsigned)_defaultOptionsForStoreWithProtectionClass:(unsigned __int8 *)class;
- (unsigned)autoMigratePersistentStoreAtURL:(void *)l toManagedObjectModel:(void *)model protectionClass:(void *)class error:;
- (void)_registerForClientHelpNotifications;
- (void)_unregisterForClientHelpNotifications;
- (void)dealloc;
- (void)handleClientCallForHelp;
- (void)handleDataProtectionChangeFor:(int)for willBeAvailable:;
- (void)handleDatabaseErrors:(void *)errors forProtectionClass:;
- (void)invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:(void *)for;
- (void)removeManagedObjectContextForKey:(uint64_t)key;
- (void)removePersistentStoresInCoordinator:(uint64_t)coordinator;
- (void)setManagedObjectContext:(void *)context forKey:;
@end

@implementation _DKCoreDataStorage

- (id)databaseManagerName
{
  selfCopy = self;
  v11[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = +[_CDPaths knowledgeDirectory];
    stringByStandardizingPath = [v2 stringByStandardizingPath];
    v10[0] = stringByStandardizingPath;
    v11[0] = @"coreduetd";
    v4 = +[_CDPaths peopleDirectory];
    stringByStandardizingPath2 = [v4 stringByStandardizingPath];
    v10[1] = stringByStandardizingPath2;
    v11[1] = @"coreduetd";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

    stringByStandardizingPath3 = [selfCopy[9] stringByStandardizingPath];
    selfCopy = [v6 objectForKeyedSubscript:stringByStandardizingPath3];
  }

  v8 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (uint64_t)isDataVaulted
{
  if (result)
  {
    stringByStandardizingPath = [*(result + 72) stringByStandardizingPath];
    v2 = +[_CDPaths knowledgeDirectory];
    stringByStandardizingPath2 = [v2 stringByStandardizingPath];
    v4 = [stringByStandardizingPath isEqualToString:stringByStandardizingPath2];

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

- (uint64_t)initWithDirectory:(void *)directory databaseName:(void *)name modelURL:(char)l readOnly:(char)only localOnly:(char)localOnly sync:
{
  v14 = a2;
  directoryCopy = directory;
  nameCopy = name;
  if (self)
  {
    v44.receiver = self;
    v44.super_class = _DKCoreDataStorage;
    v17 = objc_msgSendSuper2(&v44, sel_init);
    self = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 9, a2);
      *(self + 67) = l;
      *(self + 68) = only;
      *(self + 69) = localOnly;
      objc_storeStrong((self + 88), directory);
      objc_storeStrong((self + 80), name);
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v19 = *(self + 48);
      *(self + 48) = defaultManager;

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v21 = *(self + 16);
      *(self + 16) = dictionary;

      v22 = *(self + 8);
      *(self + 8) = 0;

      v23 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:5];
      v24 = *(self + 24);
      *(self + 24) = v23;

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      v26 = *(self + 32);
      *(self + 32) = dictionary2;

      v27 = *(self + 72);
      selfCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v27, *(self + 88)];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.db", selfCopy, @"A"];
      [*(self + 16) setObject:v29 forKeyedSubscript:*MEMORY[0x1E696A378]];

      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.db", selfCopy, @"C"];
      [*(self + 16) setObject:v30 forKeyedSubscript:*MEMORY[0x1E696A388]];

      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.db", selfCopy, @"D"];
      [*(self + 16) setObject:v31 forKeyedSubscript:*MEMORY[0x1E696A3A8]];

      v32 = objc_alloc_init(_DKDataProtectionStateMonitor);
      v33 = *(self + 40);
      *(self + 40) = v32;

      objc_initWeak(&location, self);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __86___DKCoreDataStorage_initWithDirectory_databaseName_modelURL_readOnly_localOnly_sync___block_invoke;
      v41[3] = &unk_1E73673F0;
      objc_copyWeak(&v42, &location);
      [*(self + 40) setChangeHandler:v41];
      *(self + 66) = 0;
      databaseManagerName = [(_DKCoreDataStorage *)self databaseManagerName];
      *(self + 64) = databaseManagerName != 0;

      if (*(self + 64) == 1)
      {
        processInfo = [MEMORY[0x1E696AE30] processInfo];
        processName = [processInfo processName];

        databaseManagerName2 = [(_DKCoreDataStorage *)self databaseManagerName];
        *(self + 65) = [processName isEqualToString:databaseManagerName2];

        if ((*(self + 64) & 1) != 0 && [(_DKCoreDataStorage *)self isDataVaulted])
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

            selfCopy = self;
            self = 0;
            goto LABEL_13;
          }

          if (*(self + 65) == 1)
          {
            [(_DKCoreDataStorage *)self _registerForClientHelpNotifications];
          }
        }
      }

      else
      {
        *(self + 65) = 1;
      }

      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
LABEL_13:
    }
  }

  return self;
}

- (void)handleClientCallForHelp
{
  if (self)
  {
    obj = self;
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

- (void)handleDatabaseErrors:(void *)errors forProtectionClass:
{
  v5 = a2;
  errorsCopy = errors;
  if (self && v5)
  {
    if ([_CDErrorUtilities isCoreDataFatalError:v5])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [_DKCoreDataStorage handleDatabaseErrors:forProtectionClass:];
      }

      [self deleteStorageFor:errorsCopy];
    }

    else if ([_CDErrorUtilities isCoreDataTemporaryError:v5])
    {
      [(_DKCoreDataStorage *)self invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:errorsCopy];
    }
  }
}

- (void)invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:(void *)for
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (for)
  {
    forCopy = for;
    objc_sync_enter(forCopy);
    v13 = v3;
    v5 = [forCopy[4] objectForKeyedSubscript:v3];
    if (v5)
    {
      [forCopy[4] removeObjectForKey:v13];
    }

    [(_DKCoreDataStorage *)forCopy managedObjectContextIdentifierWithPrefix:v13];
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
          v11 = [(_DKCoreDataStorage *)forCopy managedObjectContextForKey:v10];
          if (v11)
          {
            [(_DKCoreDataStorage *)forCopy removeManagedObjectContextForKey:v10];
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

    [(_DKCoreDataStorage *)forCopy removePersistentStoresInCoordinator:v5];
    objc_sync_exit(forCopy);

    v3 = v13;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)managedObjectContextIdentifierWithPrefix:(id *)prefix
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (prefix)
  {
    v4 = prefix[3];
    objc_sync_enter(v4);
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = prefix[3];
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
            [array addObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    prefix = [array copy];
    objc_sync_exit(v4);
  }

  v11 = *MEMORY[0x1E69E9840];

  return prefix;
}

- (id)managedObjectContextForKey:(id *)key
{
  v3 = a2;
  if (key)
  {
    v4 = key[3];
    objc_sync_enter(v4);
    key = [key[3] objectForKey:v3];
    objc_sync_exit(v4);
  }

  return key;
}

- (void)removeManagedObjectContextForKey:(uint64_t)key
{
  v4 = a2;
  if (key)
  {
    v3 = *(key + 24);
    objc_sync_enter(v3);
    [*(key + 24) removeObjectForKey:v4];
    objc_sync_exit(v3);
  }
}

- (BOOL)isManagedObjectModel:(id)model compatibleWithPersistentStoreAtURL:(id)l error:(id *)error
{
  modelCopy = model;
  v8 = *MEMORY[0x1E695D4A8];
  v14 = 0;
  v9 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v8 URL:l error:&v14];
  v10 = v14;
  if (!v9)
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = [modelCopy isConfiguration:0 compatibleWithStoreMetadata:v9];
  if (error)
  {
LABEL_3:
    v12 = v10;
    *error = v10;
  }

LABEL_4:

  return v11;
}

- (id)managedObjectModelURLForVersion:(unint64_t)version
{
  delegate = [(_DKCoreDataStorage *)self delegate];

  if (delegate)
  {
    delegate2 = [(_DKCoreDataStorage *)self delegate];
    v7 = [delegate2 coreDataStorage:self needsManagedObjectModelNameForVersion:version];

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

- (id)managedObjectModelForVersion:(unint64_t)version
{
  v3 = [(_DKCoreDataStorage *)self managedObjectModelURLForVersion:version];
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

- (int64_t)modelVersionForStoreAtURL:(id)l error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = *MEMORY[0x1E695D4A8];
  v21 = 0;
  v8 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v7 URL:lCopy error:&v21];
  v9 = v21;
  if (!v8)
  {
LABEL_8:
    delegate = [(_DKCoreDataStorage *)self delegate];

    if (delegate)
    {
      v20 = v9;
      integerValue = [(_DKCoreDataStorage *)self managedObjectModelVersionCompatibleWithPersistentStoreAtURL:lCopy error:&v20];
      v19 = v20;

      if (integerValue)
      {
LABEL_10:
        v9 = v19;
        if (!error)
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

    integerValue = 0;
    goto LABEL_10;
  }

  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695D4B0]];
  firstObject = [v10 firstObject];
  if (![firstObject length])
  {

    goto LABEL_8;
  }

  integerValue = [firstObject integerValue];

  if (!integerValue)
  {
    goto LABEL_8;
  }

  if (error)
  {
LABEL_5:
    v13 = v9;
    *error = v9;
  }

LABEL_6:

  v14 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (BOOL)migratePersistentStoreAtURL:(id)l toManagedObjectModel:(id)model protectionClass:(id)class error:(id *)error
{
  lCopy = l;
  modelCopy = model;
  classCopy = class;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = (v41 + 5);
  obj = v41[5];
  v15 = [(_DKCoreDataStorage *)selfCopy modelVersionForStoreAtURL:lCopy error:&obj];
  objc_storeStrong(v14, obj);
  if (v15)
  {
    versionIdentifiers = [modelCopy versionIdentifiers];
    anyObject = [versionIdentifiers anyObject];
    integerValue = [anyObject integerValue];

    if (v15 < integerValue)
    {
      delegate = [(_DKCoreDataStorage *)selfCopy delegate];
      v20 = delegate;
      if (delegate && v15 > 0)
      {
        versionIdentifiers2 = [modelCopy versionIdentifiers];
        v22 = [versionIdentifiers2 count];

        if (v22)
        {
          v23 = v15 + 1;
          v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -15);
          v25 = dispatch_queue_create("com.apple.coreduetd.Migration", v24);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __93___DKCoreDataStorage_migratePersistentStoreAtURL_toManagedObjectModel_protectionClass_error___block_invoke;
          block[3] = &unk_1E7369D50;
          block[4] = selfCopy;
          v32 = lCopy;
          v33 = modelCopy;
          v37 = v23;
          v38 = integerValue;
          v34 = classCopy;
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
    v27 = [(_DKCoreDataStorage *)selfCopy autoMigratePersistentStoreAtURL:lCopy toManagedObjectModel:modelCopy protectionClass:classCopy error:&v30];
    objc_storeStrong(v26, v30);

    if (v27)
    {
      *(v47 + 24) = 1;
    }
  }

LABEL_10:
  objc_sync_exit(selfCopy);

  if (error)
  {
    *error = v41[5];
  }

  v28 = *(v47 + 24);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  return v28;
}

- (unsigned)autoMigratePersistentStoreAtURL:(void *)l toManagedObjectModel:(void *)model protectionClass:(void *)class error:
{
  v21[6] = *MEMORY[0x1E69E9840];
  v9 = a2;
  lCopy = l;
  modelCopy = model;
  if (self)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [(_DKCoreDataStorage *)self _defaultOptionsForStoreWithProtectionClass:modelCopy];
    v14 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:lCopy];
    self = v14;
    if (v14)
    {
      v15 = *MEMORY[0x1E695D4A8];
      v21[0] = 0;
      v16 = [v14 addPersistentStoreWithType:v15 configuration:0 URL:v9 options:v13 error:v21];
      v17 = v21[0];
      if (!v16)
      {

        v16 = 0;
        self = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    objc_autoreleasePoolPop(v12);
    if (class)
    {
      v18 = v17;
      *class = v17;
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return self;
}

- (uint64_t)willAutoMigrateStoreAtURL:(void *)l fromManagedObjectModel:(uint64_t)model havingVersion:(void *)version error:
{
  v9 = a2;
  lCopy = l;
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      [(_DKCoreDataStorage *)v12 willAutoMigrateStoreAtURL:v13 fromManagedObjectModel:v14 havingVersion:v15 error:v16, v17, v18, v19];
    }

    v20 = objc_autoreleasePoolPush();
    delegate = [selfCopy delegate];
    v34 = 0;
    v22 = [delegate coreDataStorage:selfCopy willAutoMigrateStoreAtURL:v9 fromManagedObjectModel:lCopy havingVersion:model error:&v34];
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

    objc_sync_exit(selfCopy);

    if (version)
    {
      v32 = v23;
      *version = v23;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (uint64_t)didAutoMigratePersistentStore:(void *)store toManagedObjectModel:(uint64_t)model havingVersion:(void *)version error:
{
  v9 = a2;
  storeCopy = store;
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      [(_DKCoreDataStorage *)v12 didAutoMigratePersistentStore:v13 toManagedObjectModel:v14 havingVersion:v15 error:v16, v17, v18, v19];
    }

    v20 = objc_autoreleasePoolPush();
    delegate = [selfCopy delegate];
    v34 = 0;
    v22 = [delegate coreDataStorage:selfCopy didAutoMigratePersistentStore:v9 toManagedObjectModel:storeCopy havingVersion:model error:&v34];
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

    objc_sync_exit(selfCopy);

    if (version)
    {
      v32 = v23;
      *version = v23;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (uint64_t)_addStoresToCoordinator:(void *)coordinator protectionClass:(void *)class error:
{
  v74[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  coordinatorCopy = coordinator;
  if (!self)
  {
    v17 = 0;
    goto LABEL_42;
  }

  v9 = MEMORY[0x1E695DFF8];
  v10 = [*(self + 16) objectForKeyedSubscript:coordinatorCopy];
  v11 = [v9 fileURLWithPath:v10];

  if (*(self + 68) == 1)
  {
    v12 = [(_DKCoreDataStorage *)self _defaultOptionsForStoreWithProtectionClass:coordinatorCopy];
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
    if (class && (v17 & 1) == 0)
    {
      v18 = v15;
      *class = v15;
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
  if ((*(self + 69) & 1) == 0)
  {
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      [(_DKCoreDataStorage *)v23 _addStoresToCoordinator:v24 protectionClass:v25 error:v26, v27, v28, v29, v30];
    }

    dispatch_group_enter(v19);
    v31 = [(_DKCoreDataStorage *)self _descriptionForStoreWithURL:v11 protectionClass:coordinatorCopy sync:0];
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
    if (class)
    {
      v51 = v67[5];
      if (v51)
      {
        *class = v51;
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
    v21 = [(_DKCoreDataStorage *)self _descriptionForStoreWithURL:v11 protectionClass:coordinatorCopy sync:1];
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

- (id)persistentStoreCoordinatorFor:(id)for
{
  v62 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v5 = [(_DKDataProtectionStateMonitor *)self->_dataProtectionMonitor isDataAvailableFor:forCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSMutableDictionary *)selfCopy->_persistentStoreCoordinators objectForKeyedSubscript:forCopy];
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      p_directory = &selfCopy->_directory;
      if ([(NSFileManager *)selfCopy->_fm fileExistsAtPath:selfCopy->_directory])
      {
        if (!selfCopy->_isManagedDatabase)
        {
          goto LABEL_37;
        }

        isDataVaulted = [(_DKCoreDataStorage *)selfCopy isDataVaulted];
        v11 = *p_directory;
        if (isDataVaulted)
        {
          [v11 UTF8String];
          if (rootless_check_datavault_flag() == 1)
          {
            if (selfCopy->_isDatabaseManager)
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
            clientNeedsHelpNotification = [(_DKCoreDataStorage *)&selfCopy->super.isa clientNeedsHelpNotification];
            CFNotificationCenterPostNotification(DarwinNotifyCenter, clientNeedsHelpNotification, 0, 0, 1u);
          }

LABEL_37:
          v18 = 0;
LABEL_38:
          v31 = [(_DKCoreDataStorage *)selfCopy _defaultOptionsForStoreWithProtectionClass:forCopy];
          v32 = [v31 mutableCopy];

          managedObjectModel = [(_DKCoreDataStorage *)selfCopy managedObjectModel];
          if (managedObjectModel)
          {
            v34 = MEMORY[0x1E695DFF8];
            v35 = [(NSMutableDictionary *)selfCopy->_paths objectForKeyedSubscript:forCopy];
            v36 = [v34 fileURLWithPath:v35];

            if (![(_DKCoreDataStorage *)selfCopy requiresManualMigration]|| selfCopy->_readOnly)
            {
              v37 = v18;
              goto LABEL_42;
            }

            v56 = v18;
            v44 = [(_DKCoreDataStorage *)selfCopy isManagedObjectModel:managedObjectModel compatibleWithPersistentStoreAtURL:v36 error:&v56];
            v37 = v56;

            if (v37)
            {
              if ([_CDErrorUtilities isCoreDataFatalError:v37])
              {
                [(_DKCoreDataStorage *)selfCopy handleDatabaseErrors:v37 forProtectionClass:forCopy];
                [(_DKCoreDataStorage *)selfCopy removePersistentStoresInCoordinator:?];
                goto LABEL_42;
              }
            }

            else if (!v44)
            {
              if (!selfCopy->_isDatabaseManager)
              {
                v46 = +[_CDLogging knowledgeChannel];
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  [_DKCoreDataStorage persistentStoreCoordinatorFor:];
                }

                v47 = CFNotificationCenterGetDarwinNotifyCenter();
                clientNeedsHelpNotification2 = [(_DKCoreDataStorage *)&selfCopy->super.isa clientNeedsHelpNotification];
                CFNotificationCenterPostNotification(v47, clientNeedsHelpNotification2, 0, 0, 1u);
                v41 = 0;
                v39 = 0;
                v8 = 0;
LABEL_55:

                if (v41)
                {
                  goto LABEL_56;
                }

LABEL_50:
                objc_sync_exit(selfCopy);

                v40 = 0;
                goto LABEL_57;
              }

              v55 = 0;
              v45 = [(_DKCoreDataStorage *)selfCopy migratePersistentStoreAtURL:v36 toManagedObjectModel:managedObjectModel protectionClass:forCopy error:&v55];
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

                [(_DKCoreDataStorage *)selfCopy deleteStorageFor:forCopy];
                [(_DKCoreDataStorage *)selfCopy removePersistentStoresInCoordinator:?];
              }

LABEL_42:
              v8 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:managedObjectModel];

              v54 = 0;
              v38 = [(_DKCoreDataStorage *)selfCopy _addStoresToCoordinator:v8 protectionClass:forCopy error:&v54];
              v39 = v54;
              if (v38)
              {
                if (v8)
                {
                  [(NSMutableDictionary *)selfCopy->_persistentStoreCoordinators setObject:v8 forKeyedSubscript:forCopy];
                }
              }

              else
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  [_DKCoreDataStorage persistentStoreCoordinatorFor:];
                }

                [(_DKCoreDataStorage *)selfCopy handleDatabaseErrors:v39 forProtectionClass:forCopy];
                [(_DKCoreDataStorage *)selfCopy removePersistentStoresInCoordinator:v8];

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
            [_DKCoreDataStorage persistentStoreCoordinatorFor:selfCopy];
          }

          goto LABEL_48;
        }

        [v11 UTF8String];
        if (rootless_check_datavault_flag())
        {
          goto LABEL_37;
        }

        if (!selfCopy->_isDatabaseManager)
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

        fm = selfCopy->_fm;
        directory = selfCopy->_directory;
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

        v51 = selfCopy->_fm;
        v52 = selfCopy->_directory;
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

        [(_DKCoreDataStorage *)selfCopy removePersistentStoresInCoordinator:?];
      }

      else
      {
        v12 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [_DKCoreDataStorage persistentStoreCoordinatorFor:?];
        }

        if (!selfCopy->_isDatabaseManager)
        {
          v19 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [_DKCoreDataStorage persistentStoreCoordinatorFor:];
          }

          goto LABEL_24;
        }

        if (selfCopy->_isManagedDatabase && (v13 = [(_DKCoreDataStorage *)selfCopy isDataVaulted], ![(_DKCoreDataStorage *)v13 persistentStoreCoordinatorFor:?]))
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

          [(_DKCoreDataStorage *)selfCopy removePersistentStoresInCoordinator:?];
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

          v15 = selfCopy->_fm;
          v16 = selfCopy->_directory;
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

          [(_DKCoreDataStorage *)selfCopy removePersistentStoresInCoordinator:?];
        }
      }

LABEL_48:

      goto LABEL_49;
    }
  }

  else if (v7)
  {

    [(_DKCoreDataStorage *)selfCopy invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:forCopy];
LABEL_49:
    v8 = 0;
    goto LABEL_50;
  }

LABEL_56:
  objc_sync_exit(selfCopy);

  v8 = v8;
  v40 = v8;
LABEL_57:

  v42 = *MEMORY[0x1E69E9840];

  return v40;
}

- (void)setManagedObjectContext:(void *)context forKey:
{
  v7 = a2;
  contextCopy = context;
  if (self)
  {
    v6 = *(self + 24);
    objc_sync_enter(v6);
    [*(self + 24) setObject:v7 forKey:contextCopy];
    objc_sync_exit(v6);
  }
}

- (id)managedObjectContextFor:(id)for identifier:(id)identifier
{
  v24[2] = *MEMORY[0x1E69E9840];
  forCopy = for;
  identifierCopy = identifier;
  v8 = [(_DKDataProtectionStateMonitor *)self->_dataProtectionMonitor isDataAvailableFor:forCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (identifierCopy)
  {
    v24[0] = forCopy;
    v24[1] = identifierCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v11 = [v10 componentsJoinedByString:@":"];
  }

  else
  {
    v11 = forCopy;
  }

  v12 = [(_DKCoreDataStorage *)&selfCopy->super.isa managedObjectContextForKey:v11];
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

  v13 = [(_DKCoreDataStorage *)selfCopy persistentStoreCoordinatorFor:forCopy];
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
    [(_DKCoreDataStorage *)selfCopy setManagedObjectContext:v16 forKey:v11];

    goto LABEL_11;
  }

  v14 = 0;
  v16 = 0;
  v15 = 0;
LABEL_13:

  objc_sync_exit(selfCopy);
  if (!v15)
  {
LABEL_16:
    v19 = 0;
    goto LABEL_18;
  }

  if (v14)
  {
    [(_DKCoreDataStorage *)selfCopy invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:forCopy];
    goto LABEL_16;
  }

  v19 = v16;
LABEL_18:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)privateManagedObjectContextFor:(id)for
{
  forCopy = for;
  if ([(_DKDataProtectionStateMonitor *)self->_dataProtectionMonitor isDataAvailableFor:forCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(_DKCoreDataStorage *)selfCopy persistentStoreCoordinatorFor:forCopy];
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

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isManagedObjectContextFor:(id)for equalToManagedObjectContext:(id)context
{
  contextCopy = context;
  v7 = [(_DKCoreDataStorage *)&self->super.isa managedObjectContextForKey:for];

  return v7 == contextCopy;
}

- (BOOL)confirmDatabaseConnectionFor:(id)for
{
  v3 = [(_DKCoreDataStorage *)self managedObjectContextFor:for];
  v4 = v3 != 0;

  return v4;
}

+ (unint64_t)deleteObjectsInContext:(id)context entityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors fetchLimit:(unint64_t)limit includeSubentities:(BOOL)subentities includePendingChanges:(BOOL)changes
{
  BYTE1(v10) = changes;
  LOBYTE(v10) = subentities;
  return [self deleteObjectsInContext:context entityName:name predicate:predicate sortDescriptors:descriptors fetchOffset:0 fetchLimit:limit includeSubentities:v10 includePendingChanges:?];
}

+ (unint64_t)deleteObjectsInContext:(id)context entityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors fetchOffset:(unint64_t)offset fetchLimit:(unint64_t)limit includeSubentities:(BOOL)subentities includePendingChanges:(BOOL)self0
{
  contextCopy = context;
  nameCopy = name;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  if (contextCopy)
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
    _cdknowledge_signpost_delete_begin(nameCopy);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __146___DKCoreDataStorage_deleteObjectsInContext_entityName_predicate_sortDescriptors_fetchOffset_fetchLimit_includeSubentities_includePendingChanges___block_invoke;
    v22[3] = &unk_1E7369DA0;
    v23 = nameCopy;
    v24 = contextCopy;
    limitCopy = limit;
    offsetCopy = offset;
    subentitiesCopy = subentities;
    changesCopy = changes;
    v25 = predicateCopy;
    v26 = descriptorsCopy;
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

+ (unint64_t)countObjectsInContext:(id)context entityName:(id)name predicate:(id)predicate includeSubentities:(BOOL)subentities includePendingChanges:(BOOL)changes
{
  contextCopy = context;
  nameCopy = name;
  predicateCopy = predicate;
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
  _cdknowledge_signpost_count_begin(nameCopy);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __106___DKCoreDataStorage_countObjectsInContext_entityName_predicate_includeSubentities_includePendingChanges___block_invoke;
  v23 = &unk_1E7369DC8;
  v14 = nameCopy;
  v24 = v14;
  v15 = contextCopy;
  v25 = v15;
  subentitiesCopy = subentities;
  changesCopy = changes;
  v16 = predicateCopy;
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

+ (unint64_t)deleteOrphanedEntitiesInContext:(id)context
{
  v3 = MEMORY[0x1E696AE18];
  contextCopy = context;
  v5 = [v3 predicateWithFormat:@"ANY event == NULL"];
  LOBYTE(v11) = 1;
  v6 = [_DKCoreDataStorage deleteObjectsInContext:contextCopy entityName:@"StructuredMetadata" predicate:v5 sortDescriptors:0 fetchLimit:0 includeSubentities:0 includePendingChanges:v11];
  LOBYTE(v12) = 1;
  v7 = [_DKCoreDataStorage deleteObjectsInContext:contextCopy entityName:@"CustomMetadata" predicate:v5 sortDescriptors:0 fetchLimit:0 includeSubentities:0 includePendingChanges:v12]+ v6;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY product == NULL"];
  LOBYTE(v13) = 1;
  v9 = [_DKCoreDataStorage deleteObjectsInContext:contextCopy entityName:@"Source" predicate:v8 sortDescriptors:0 fetchLimit:0 includeSubentities:0 includePendingChanges:v13];

  return v7 + v9;
}

- (BOOL)deleteStorageFor:(id)for
{
  v31 = *MEMORY[0x1E69E9840];
  forCopy = for;
  if (self->_isDatabaseManager)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(_DKCoreDataStorage *)&selfCopy->super.isa databasePathFor:forCopy];
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v7 path];
    v10 = [defaultManager fileExistsAtPath:path];

    if (v10)
    {
      v11 = [(NSMutableDictionary *)selfCopy->_persistentStoreCoordinators objectForKeyedSubscript:forCopy];
      if (!v11)
      {
        v12 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [_DKCoreDataStorage deleteStorageFor:];
        }

        v13 = objc_alloc(MEMORY[0x1E695D6C0]);
        managedObjectModel = [(_DKCoreDataStorage *)selfCopy managedObjectModel];
        v11 = [v13 initWithManagedObjectModel:managedObjectModel];
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
          v28 = forCopy;
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
          v28 = forCopy;
          v29 = 2112;
          v30 = v17;
          _os_log_fault_impl(&dword_191750000, v18, OS_LOG_TYPE_FAULT, "Failed to truncate data storage in %@ for protection class %@: %@", buf, 0x20u);
        }
      }

      [(_DKCoreDataStorage *)selfCopy invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:forCopy];
      if (v17)
      {
        [(_DKCoreDataStorage *)selfCopy _deleteDatabaseFiles:v6];
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

    objc_sync_exit(selfCopy);
  }

  else
  {
    v19 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_DKCoreDataStorage deleteStorageFor:];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    clientNeedsHelpNotification = [(_DKCoreDataStorage *)&self->super.isa clientNeedsHelpNotification];
    CFNotificationCenterPostNotification(DarwinNotifyCenter, clientNeedsHelpNotification, 0, 0, 1u);
  }

  v22 = *MEMORY[0x1E69E9840];
  return 1;
}

+ (uint64_t)forceCopyItemAtPath:(void *)path toPath:(uint64_t)toPath error:
{
  v6 = a2;
  pathCopy = path;
  objc_opt_self();
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:pathCopy])
  {
    [defaultManager removeItemAtPath:pathCopy error:0];
  }

  [defaultManager copyItemAtPath:v6 toPath:pathCopy error:toPath];

  return 1;
}

- (id)copyStorageFor:(id)for toDirectory:(id)directory
{
  forCopy = for;
  directoryCopy = directory;
  v8 = [(_DKCoreDataStorage *)self managedObjectContextFor:forCopy];
  if (v8)
  {
    v9 = [[_DKCoreDataStorage alloc] initWithDirectory:directoryCopy databaseName:self->_databaseName modelURL:self->_modelURL readOnly:0 localOnly:self->_localOnly];
    v10 = [(_DKCoreDataStorage *)v9 managedObjectContextFor:forCopy];

    if (v10)
    {
      [(_DKCoreDataStorage *)v9 invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:forCopy];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __49___DKCoreDataStorage_copyStorageFor_toDirectory___block_invoke;
      v15[3] = &unk_1E7369DF0;
      v16 = v8;
      selfCopy = self;
      v18 = forCopy;
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

+ (unint64_t)updateObjectsInContext:(id)context entityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors batchFetchLimit:(unint64_t)limit totalFetchLimit:(unint64_t)fetchLimit includeSubentities:(BOOL)subentities updateBlock:(id)self0
{
  contextCopy = context;
  nameCopy = name;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  blockCopy = block;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __145___DKCoreDataStorage_updateObjectsInContext_entityName_predicate_sortDescriptors_batchFetchLimit_totalFetchLimit_includeSubentities_updateBlock___block_invoke;
  v27[3] = &unk_1E7369E18;
  v19 = contextCopy;
  v28 = v19;
  v20 = nameCopy;
  v29 = v20;
  fetchLimitCopy = fetchLimit;
  limitCopy = limit;
  subentitiesCopy = subentities;
  v21 = predicateCopy;
  v30 = v21;
  v22 = descriptorsCopy;
  v31 = v22;
  v23 = blockCopy;
  v32 = v23;
  v33 = &v37;
  [v19 performWithOptions:4 andBlock:v27];
  v24 = v38[3];

  _Block_object_dispose(&v37, 8);
  return v24;
}

+ (id)anonymizeString:(void *)string withSalt:
{
  stringCopy = string;
  v5 = a2;
  objc_opt_self();
  stringCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v5, stringCopy];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(stringCopy, "hash")}];
  v9 = [v7 stringWithFormat:@"%@", v8];

  return v9;
}

+ (unint64_t)anonymizeStringAttributesOfManagedObject:(id)object withSalt:(id)salt
{
  v41 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  saltCopy = salt;
  entity = [objectCopy entity];
  attributesByName = [entity attributesByName];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = [attributesByName countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v37;
    v31 = objectCopy;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(attributesByName);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        v13 = [attributesByName objectForKeyedSubscript:v12];
        attributeValueClassName = [v13 attributeValueClassName];
        v15 = [attributeValueClassName isEqualToString:@"NSString"];

        if (v15)
        {
          v16 = [objectCopy valueForKey:v12];
          v17 = v16;
          if (v16 && [v16 length])
          {
            v18 = [(_DKCoreDataStorage *)self anonymizeString:v17 withSalt:saltCopy];
            [objectCopy setValue:v18 forKey:v12];

            ++v9;
          }
        }

        else
        {
          attributeValueClassName2 = [v13 attributeValueClassName];
          v20 = [attributeValueClassName2 isEqualToString:@"NSURL"];

          if (!v20)
          {
            goto LABEL_17;
          }

          v21 = [objectCopy valueForKey:v12];
          v17 = v21;
          if (v21)
          {
            absoluteString = [v21 absoluteString];
            if (absoluteString)
            {
              v23 = absoluteString;
              v33 = v9;
              absoluteString2 = [v17 absoluteString];
              v25 = [absoluteString2 length];

              if (v25)
              {
                absoluteString3 = [v17 absoluteString];
                v26 = [(_DKCoreDataStorage *)self anonymizeString:absoluteString3 withSalt:saltCopy];
                v27 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v26];
                objectCopy = v31;
                [v31 setValue:v27 forKey:v12];

                v9 = v33 + 1;
              }

              else
              {
                objectCopy = v31;
                v9 = v33;
              }
            }
          }
        }

LABEL_17:
      }

      v8 = [attributesByName countByEnumeratingWithState:&v36 objects:v40 count:16];
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

+ (unint64_t)anonymizeObjectStringsInContext:(id)context entityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors batchFetchLimit:(unint64_t)limit totalFetchLimit:(unint64_t)fetchLimit includeSubentities:(BOOL)subentities salt:(id)self0
{
  saltCopy = salt;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __147___DKCoreDataStorage_anonymizeObjectStringsInContext_entityName_predicate_sortDescriptors_batchFetchLimit_totalFetchLimit_includeSubentities_salt___block_invoke;
  v26[3] = &unk_1E7369E40;
  v27 = saltCopy;
  v17 = saltCopy;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  nameCopy = name;
  contextCopy = context;
  v22 = MEMORY[0x193B00C50](v26);
  LOBYTE(v25) = subentities;
  v23 = [_DKCoreDataStorage updateObjectsInContext:contextCopy entityName:nameCopy predicate:predicateCopy sortDescriptors:descriptorsCopy batchFetchLimit:limit totalFetchLimit:fetchLimit includeSubentities:v25 updateBlock:v22];

  return v23;
}

- (_DKCoreDataStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleDataProtectionChangeFor:(int)for willBeAvailable:
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412546;
      v8 = v5;
      v9 = 1024;
      forCopy = for;
      _os_log_debug_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Data protection availability changed for %@ to %d", &v7, 0x12u);
      if (for)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if ((for & 1) == 0)
    {
LABEL_4:
      [(_DKCoreDataStorage *)self invalidateManagedObjectContextAndPersistentStoreCoordinatorFor:v5];
    }
  }

LABEL_5:

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_registerForClientHelpNotifications
{
  if (self)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    clientNeedsHelpNotification = [(_DKCoreDataStorage *)self clientNeedsHelpNotification];

    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _clientNeedsHelpCallback, clientNeedsHelpNotification, 0, 0);
  }
}

- (void)_unregisterForClientHelpNotifications
{
  if (self)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    clientNeedsHelpNotification = [(_DKCoreDataStorage *)self clientNeedsHelpNotification];

    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, clientNeedsHelpNotification, 0);
  }
}

- (id)clientNeedsHelpNotification
{
  if (self)
  {
    databaseManagerName = [(_DKCoreDataStorage *)self databaseManagerName];
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"com.apple.coreduet.client-needs-help.", databaseManagerName];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)removePersistentStoresInCoordinator:(uint64_t)coordinator
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (coordinator)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    persistentStores = [v3 persistentStores];
    v6 = [persistentStores countByEnumeratingWithState:&v19 objects:v25 count:16];
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
            objc_enumerationMutation(persistentStores);
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
        v8 = [persistentStores countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v8);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (unint64_t)managedObjectModelVersionCompatibleWithPersistentStoreAtURL:(void *)l error:
{
  v5 = a2;
  if (self)
  {
    v6 = 1;
    while (1)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [self managedObjectModelForVersion:v6];
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
      v9 = [self isManagedObjectModel:v8 compatibleWithPersistentStoreAtURL:v5 error:&v14];
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
    if (l)
    {
      v12 = v11;
      *l = v11;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)migratePersistentStoreAtURL:(void *)l toManagedObjectModel:(void *)model protectionClass:(unint64_t)class startVersion:(unint64_t)version endVersion:(void *)endVersion error:
{
  v56 = *MEMORY[0x1E69E9840];
  v13 = a2;
  lCopy = l;
  modelCopy = model;
  if (!self)
  {
    v21 = 0;
    goto LABEL_7;
  }

  endVersionCopy = endVersion;
  v44 = lCopy;
  if (class > version)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown or illegal model version identifier(s): start:%lu end:%lu", class, version];
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
  classCopy = class;
  while (1)
  {
    delegate = [self delegate];
    v26 = [delegate coreDataStorage:self shouldCallDelegateAfterAutoMigrationToManagedObjectModelHavingVersion:classCopy];

    if (version != classCopy && !v26)
    {
      goto LABEL_24;
    }

    v27 = [self managedObjectModelForVersion:classCopy];
    if (!v27)
    {
      break;
    }

    v28 = v27;
    delegate2 = [self delegate];
    classCopy2 = class;
    v31 = [delegate2 coreDataStorage:self shouldCallDelegateBeforeAutoMigrationFromManagedObjectModelHavingVersion:class];

    if (v31)
    {
      v32 = [self managedObjectModelForVersion:classCopy2];
      v33 = classCopy2;
      if (!v32 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:classCopy2];
        *buf = 138412290;
        v55 = v41;
        _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to find model version %@, will attempt to recover...", buf, 0xCu);

        v33 = classCopy2;
      }

      v50 = v47;
      [(_DKCoreDataStorage *)self willAutoMigrateStoreAtURL:v13 fromManagedObjectModel:v32 havingVersion:v33 error:&v50];
      v34 = v50;

      v46 = classCopy;
    }

    else
    {
      v46 = classCopy2;
      v34 = v47;
    }

    v49 = v34;
    [(_DKCoreDataStorage *)self autoMigratePersistentStoreAtURL:v13 toManagedObjectModel:v28 protectionClass:modelCopy error:&v49];
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
      persistentStores = [v36 persistentStores];
      firstObject = [persistentStores firstObject];

      v48 = v37;
      LODWORD(persistentStores) = [(_DKCoreDataStorage *)self didAutoMigratePersistentStore:firstObject toManagedObjectModel:v28 havingVersion:classCopy error:&v48];
      v47 = v48;

      if (!persistentStores)
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

    class = v46;
LABEL_24:
    v19 |= version == classCopy++;
    if (classCopy > version)
    {
      goto LABEL_4;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:classCopy];
    *buf = 138412290;
    v55 = v42;
    _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to find model version %@, unable to migrate", buf, 0xCu);
  }

LABEL_4:
  v20 = v47;
  if (endVersionCopy)
  {
    v20 = v47;
    *endVersionCopy = v20;
  }

  v51 = v19 & 1;

  v21 = v51;
  lCopy = v44;
LABEL_7:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (unsigned)_defaultOptionsForStoreWithProtectionClass:(unsigned __int8 *)class
{
  classCopy = class;
  v14[4] = *MEMORY[0x1E69E9840];
  if (class)
  {
    v13[0] = *MEMORY[0x1E695D380];
    v3 = MEMORY[0x1E696AD98];
    v4 = class[67];
    v5 = a2;
    v6 = [v3 numberWithInt:v4 ^ 1u];
    v14[0] = v6;
    v13[1] = *MEMORY[0x1E695D318];
    v7 = [MEMORY[0x1E696AD98] numberWithInt:classCopy[67] ^ 1u];
    v8 = *MEMORY[0x1E695D3F8];
    v14[1] = v7;
    v14[2] = v5;
    v9 = *MEMORY[0x1E695D458];
    v13[2] = v8;
    v13[3] = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithBool:classCopy[67]];
    v14[3] = v10;
    classCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  }

  v11 = *MEMORY[0x1E69E9840];

  return classCopy;
}

- (id)_descriptionForStoreWithURL:(void *)l protectionClass:(int)class sync:
{
  v31 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (self)
  {
    v8 = [MEMORY[0x1E695D6C8] persistentStoreDescriptionWithURL:a2];
    v9 = [(_DKCoreDataStorage *)self _defaultOptionsForStoreWithProtectionClass:lCopy];
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
    if (class)
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
      v23 = *(self + 56);
      *(self + 56) = v22;

      [v8 setOption:*(self + 56) forMirroringKey:*MEMORY[0x1E695D408]];
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

- (BOOL)_deleteDatabaseFiles:(uint64_t)files
{
  if (files)
  {
    v3 = *(files + 48);
    v4 = a2;
    [v3 removeItemAtPath:v4 error:0];
    v5 = *(files + 48);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-wal", v4];
    [v5 removeItemAtPath:v6 error:0];

    v7 = *(files + 48);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-shm", v4];

    [v7 removeItemAtPath:v8 error:0];
  }

  return files != 0;
}

- (id)databasePathFor:(id *)for
{
  if (for)
  {
    for = [for[2] objectForKeyedSubscript:a2];
    v2 = vars8;
  }

  return for;
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