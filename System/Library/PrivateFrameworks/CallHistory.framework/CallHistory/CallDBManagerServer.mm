@interface CallDBManagerServer
+ (id)downgradeDatabaseAtLocation:(id)location toVersion:(int64_t)version;
+ (id)getDestinationModel:(int64_t)model;
+ (id)getDestinationModelForVersion:(int64_t)version;
+ (id)getObjectIdsForAllRecords:(id)records;
+ (id)getObjectIdsForDuplicateRecordsWithUniqueIds:(id)ids andHavingObjectIds:(id)objectIds;
+ (id)getUniqueIdsForAllRecords:(id)records;
+ (int64_t)getNextVersionToDowngradeTo:(int64_t)to;
+ (int64_t)getNextVersionToDowngradeTo:(int64_t)to withSourceVersion:(int64_t)version;
+ (int64_t)getNextVersionToMigrateToCurrentVersion:(int64_t)version;
- (BOOL)createCallDBProperties;
- (BOOL)dbShouldBePrunedForVersion:(int64_t)version;
- (BOOL)handleBootUpFailure:(id)failure;
- (CallDBManagerServer)init;
- (CallDBManagerServer)initWithDeviceObserver:(id)observer;
- (id)getUUIDsOfNMostRecentRecords:(unint64_t)records fromManagedObjectContext:(id)context;
- (id)permDBLocation:(unsigned __int8 *)location;
- (id)uniqueIDsFromCallRecords:(id)records forFaceTimeCalls:(BOOL)calls;
- (void)createCallDBProperties;
- (void)createPermanent;
- (void)createTemporary;
- (void)deleteObjectsWithPredicate:(id)predicate fromManagedObjectContext:(id)context;
- (void)moveCallsFromTempDatabase;
- (void)pruneDBFromManagedContext:(id)context version:(unint64_t)version;
@end

@implementation CallDBManagerServer

+ (id)getDestinationModelForVersion:(int64_t)version
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:version];
  v5 = [v3 stringWithFormat:@"%@.%@/%@ %@", @"CallHistory", @"momd", @"CallHistory", v4];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:v5 withExtension:@"mom"];

  v8 = +[CHLogServer sharedInstance];
  v9 = [v8 logHandleForDomain:"ch.calldbm"];

  v10 = v9;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    path = [v7 path];
    *buf = 138543362;
    v15 = path;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Got destination model URL %{public}@", buf, 0xCu);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (int64_t)getNextVersionToMigrateToCurrentVersion:(int64_t)version
{
  if ((version - 5) >= 0x26)
  {
    v3 = &kCHUnknownDBVersion;
  }

  else
  {
    v3 = (&unk_1C40363C8 + 8 * version - 40);
  }

  return *v3;
}

+ (int64_t)getNextVersionToDowngradeTo:(int64_t)to
{
  if ((to - 8) > 0x22)
  {
    return 5;
  }

  else
  {
    return qword_1C40364F8[to - 8];
  }
}

+ (int64_t)getNextVersionToDowngradeTo:(int64_t)to withSourceVersion:(int64_t)version
{
  if (version == to)
  {
    return version;
  }

  else
  {
    return [CallDBManagerServer getNextVersionToDowngradeTo:version];
  }
}

+ (id)getDestinationModel:(int64_t)model
{
  v4 = [CallDBManagerServer getNextVersionToMigrateToCurrentVersion:model];

  return [self getDestinationModelForVersion:v4];
}

+ (id)downgradeDatabaseAtLocation:(id)location toVersion:(int64_t)version
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__CallDBManagerServer_downgradeDatabaseAtLocation_toVersion___block_invoke;
  v6[3] = &__block_descriptor_40_e15___NSURL_16__0q8l;
  v6[4] = version;
  v4 = [DBManager migrateDataStoreAtLocation:location withGetDestinationModel:v6 isEncrypted:0];

  return v4;
}

id __61__CallDBManagerServer_downgradeDatabaseAtLocation_toVersion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [CallDBManagerServer getNextVersionToDowngradeTo:*(a1 + 32) withSourceVersion:a2];

  return [CallDBManagerServer getDestinationModelForVersion:v2];
}

- (CallDBManagerServer)init
{
  v3 = objc_alloc_init(CHDeviceObserver);
  v4 = [(CallDBManagerServer *)self initWithDeviceObserver:v3];

  return v4;
}

- (CallDBManagerServer)initWithDeviceObserver:(id)observer
{
  v7.receiver = self;
  v7.super_class = CallDBManagerServer;
  v3 = [(CallDBManager *)&v7 initWithDeviceObserver:observer];
  if (v3)
  {
    v4 = objc_alloc_init(CHFeatureFlags);
    featureFlags = v3->_featureFlags;
    v3->_featureFlags = v4;
  }

  return v3;
}

- (void)createPermanent
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(CallDBManagerServer *)self permDBLocation:0];
  v4 = 42;
  v5 = +[CHLogServer sharedInstance];
  v6 = [v5 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v3;
    v15 = 2048;
    v16 = 42;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Creating permanent data store: %{public}@ for version: %ld", &v13, 0x16u);
  }

  if ([(CallDBManagerServer *)self bootUpDBAtLocationWithRecovery:v3 isEncrypted:1])
  {
    [(CallDBManager *)self handlePermanentCreated];
    if (![(CallDBManagerServer *)self createCallDBProperties])
    {
      v7 = +[CHLogServer sharedInstance];
      v8 = [v7 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Failed to create call db properties object for permanent store", &v13, 2u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = [CallDBMetaInfo alloc];
  uRLByDeletingLastPathComponent = [v3 URLByDeletingLastPathComponent];
  v11 = [(CallDBMetaInfo *)v9 initWithURL:uRLByDeletingLastPathComponent];

  [(CallDBMetaInfo *)v11 writeDatabaseVersion:v4 isTemp:0];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)createTemporary
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(CallDBManagerServer *)self tempDBLocation:0];
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v3;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "Creating temporary data store: %{public}@", &v13, 0xCu);
  }

  if ([(CallDBManagerServer *)self bootUpDBAtLocationWithRecovery:v3 isEncrypted:0])
  {
    v6 = 42;
    [(CallDBManager *)self handleTemporaryCreated];
    if (![(CallDBManagerServer *)self createCallDBProperties])
    {
      v7 = +[CHLogServer sharedInstance];
      v8 = [v7 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Failed to create call db properties object for temporary store", &v13, 2u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = [CallDBMetaInfo alloc];
  uRLByDeletingLastPathComponent = [v3 URLByDeletingLastPathComponent];
  v11 = [(CallDBMetaInfo *)v9 initWithURL:uRLByDeletingLastPathComponent];

  [(CallDBMetaInfo *)v11 writeDatabaseVersion:v6 isTemp:1];
  v12 = *MEMORY[0x1E69E9840];
}

- (id)permDBLocation:(unsigned __int8 *)location
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "CallDBManagerServer: fetching permDBURL", &v11, 2u);
  }

  v6 = [CallDBManager getDBLocationIsSandboxed:0 isTemporary:0 error:location];
  v7 = +[CHLogServer sharedInstance];
  v8 = [v7 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "CallDBManagerServer: permDBURL: %@", &v11, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)moveCallsFromTempDatabase
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"kMoveCallRecordsFromTemporaryStoreNotitification" object:self];
}

- (BOOL)handleBootUpFailure:(id)failure
{
  failureCopy = failure;
  v4 = [failureCopy URLByAppendingPathExtension:@"backup"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v4 path];
  v7 = [defaultManager fileExistsAtPath:path];

  v8 = (!v7 || [DBManager destroyDBAtLocation:v4 withModelAtLocation:0]) && [DBManager moveDBAtLocation:failureCopy toLocation:v4 withModelAtLocation:0]&& [DBManager destroyDBAtLocation:failureCopy withModelAtLocation:0];
  return v8;
}

+ (id)getObjectIdsForDuplicateRecordsWithUniqueIds:(id)ids andHavingObjectIds:(id)objectIds
{
  v27 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  objectIdsCopy = objectIds;
  v7 = [objectIdsCopy count];
  if (v7 == [idsCopy count])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = idsCopy;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v23;
      v14 = -1;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          ++v14;
          if ([v16 length])
          {
            if ([v16 isEqualToString:v12])
            {
              v17 = [objectIdsCopy objectAtIndex:v14];
              [v8 addObject:v17];
            }

            else
            {
              v18 = v16;
              v17 = v12;
              v12 = v18;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v19 = +[CHLogServer sharedInstance];
    v12 = [v19 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CallDBManagerServer getObjectIdsForDuplicateRecordsWithUniqueIds:andHavingObjectIds:];
    }

    v8 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)getUniqueIdsForAllRecords:(id)records
{
  v28 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v4 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"CallRecord"];
  [v4 setResultType:2];
  v5 = MEMORY[0x1E695DEC8];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"unique_id" ascending:1];
  v7 = [v5 arrayWithObjects:{v6, 0}];
  [v4 setSortDescriptors:v7];

  v21 = [DBManager entityDescriptionHavingName:@"CallRecord" forContext:recordsCopy];
  propertiesByName = [v21 propertiesByName];
  v9 = [propertiesByName objectForKey:@"unique_id"];

  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v9, 0}];
  [v4 setPropertiesToFetch:v10];

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = recordsCopy;
  v12 = [recordsCopy executeFetchRequest:v4 error:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v23 + 1) + 8 * i) objectForKey:@"unique_id"];
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = &stru_1F438BFD8;
        }

        [v11 addObject:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)getObjectIdsForAllRecords:(id)records
{
  v3 = MEMORY[0x1E695D5E0];
  recordsCopy = records;
  v5 = [v3 fetchRequestWithEntityName:@"CallRecord"];
  v6 = MEMORY[0x1E695DEC8];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"unique_id" ascending:1];
  v8 = [v6 arrayWithObjects:{v7, 0}];
  [v5 setSortDescriptors:v8];

  [v5 setResultType:1];
  v9 = [recordsCopy executeFetchRequest:v5 error:0];

  return v9;
}

void __84__CallDBManagerServer_populateServiceProviderAndCallCategory_dbVersion_isEncrypted___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 calltype];
  v4 = [v3 integerValue];

  v5 = [CHRecentCall serviceProviderForCallType:v4];
  [v2 setService_provider:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{+[CHRecentCall categoryForCallType:](CHRecentCall, "categoryForCallType:", v4)}];
  [v2 setCall_category:v6];
}

void __88__CallDBManagerServer_populateRecentCallRemoteParticipantHandles_dbVersion_isEncrypted___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v2 = [v14 address];
  v3 = [v14 handle_type];
  v4 = [v3 integerValue];

  if (v4 && v2)
  {
    if (v4 == 2)
    {
      v5 = [CHPhoneNumber alloc];
      v6 = [v14 iso_country_code];
      v7 = [(CHPhoneNumber *)v5 initWithDigits:v2 isoCountryCode:v6];

      v8 = [(CHPhoneNumber *)v7 normalizedRepresentation];
    }

    else
    {
      v8 = 0;
    }

    v9 = MEMORY[0x1E695DFD8];
    v10 = [[CHHandle alloc] initWithType:v4 value:v2 normalizedValue:v8];
    v11 = [v9 setWithObject:v10];

    v12 = [v14 managedObjectContext];
    v13 = [CHManagedHandle managedHandlesForHandles:v11 inManagedObjectContext:v12];
    [v14 setRemoteParticipantHandles:v13];
  }
}

void __64__CallDBManagerServer_populateHandleType_dbVersion_isEncrypted___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = a2;
  v5 = [v3 address];
  v4 = [v2 numberWithInteger:{+[CHHandle handleTypeForValue:](CHHandle, "handleTypeForValue:", v5)}];
  [v3 setHandle_type:v4];
}

id __67__CallDBManagerServer_handleDatabaseMigration_isEncrypted_isRetry___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) prepareDatabaseForNextStepInMigration:*(a1 + 40) dbVersion:a2 isEncrypted:*(a1 + 48)];

  return [CallDBManagerServer getDestinationModel:a2];
}

- (id)getUUIDsOfNMostRecentRecords:(unint64_t)records fromManagedObjectContext:(id)context
{
  v30 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"CallRecord"];
  v7 = MEMORY[0x1E695DEC8];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"date" ascending:0];
  v9 = [v7 arrayWithObjects:{v8, 0}];
  [v6 setSortDescriptors:v9];

  [v6 setFetchLimit:records];
  v24 = [DBManager entityDescriptionHavingName:@"CallRecord" forContext:contextCopy];
  propertiesByName = [v24 propertiesByName];
  v11 = [propertiesByName objectForKey:@"unique_id"];

  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v11, 0}];
  [v6 setPropertiesToFetch:v12];

  [v6 setResultType:2];
  v13 = [contextCopy executeFetchRequest:v6 error:0];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v25 + 1) + 8 * i) objectForKey:@"unique_id"];
        if (v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = &stru_1F438BFD8;
        }

        [v14 addObject:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)createCallDBProperties
{
  dbManager = [(CallDBManager *)self dbManager];
  createManagedObjectContext = [dbManager createManagedObjectContext];

  if (createManagedObjectContext)
  {
    v4 = [DBManager entityDescriptionHavingName:@"CallDBProperties" forContext:createManagedObjectContext];
    if (!v4)
    {
      v13 = +[CHLogServer sharedInstance];
      v5 = [v13 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerServer createCallDBProperties];
      }

      v11 = 0;
      goto LABEL_29;
    }

    v5 = objc_alloc_init(MEMORY[0x1E695D5E0]);
    [v5 setEntity:v4];
    v23 = 0;
    v6 = [createManagedObjectContext executeFetchRequest:v5 error:&v23];
    v7 = v23;
    if (v7)
    {
      v8 = v7;
      v9 = +[CHLogServer sharedInstance];
      v10 = [v9 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerServer createCallDBProperties];
      }

      v11 = 0;
      goto LABEL_28;
    }

    if (v6 && [v6 count])
    {
      v14 = +[CHLogServer sharedInstance];
      v8 = [v14 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Call DB properties object already exist, not creating again", buf, 2u);
      }

      v11 = 1;
      goto LABEL_28;
    }

    v15 = [[CallDBProperties alloc] initWithEntity:v4 insertIntoManagedObjectContext:createManagedObjectContext];
    if (v15)
    {
      v21 = 0;
      v16 = [createManagedObjectContext save:&v21];
      v8 = v21;
      if (v16)
      {
        v11 = 1;
LABEL_27:

LABEL_28:
LABEL_29:

        goto LABEL_30;
      }

      v19 = +[CHLogServer sharedInstance];
      v18 = [v19 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerServer createCallDBProperties];
      }
    }

    else
    {
      v17 = +[CHLogServer sharedInstance];
      v18 = [v17 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerServer createCallDBProperties];
      }

      v8 = 0;
    }

    v11 = 0;
    goto LABEL_27;
  }

  v12 = +[CHLogServer sharedInstance];
  v4 = [v12 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CallDBManagerServer createMOCForDBAtLocation:dbVersion:isEncrypted:];
  }

  v11 = 0;
LABEL_30:

  return v11;
}

- (void)pruneDBFromManagedContext:(id)context version:(unint64_t)version
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([(CallDBManagerServer *)self dbShouldBePrunedForVersion:version])
  {
    v7 = +[CHLogServer sharedInstance];
    v8 = [v7 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134217984;
      versionCopy = version;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "DB needs to be pruned for version: %lu", &v25, 0xCu);
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = [(CallDBManagerServer *)self uniqueIDsOfCallsToKeepFromManagedObjectContext:contextCopy forFaceTimeCalls:1];
    [v9 addObjectsFromArray:v10];
    v11 = +[CHLogServer sharedInstance];
    v12 = [v11 logHandleForDomain:"ch.calldbm"];

    v13 = v12;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 count];
      v25 = 134217984;
      versionCopy = v14;
      _os_log_impl(&dword_1C3E90000, v13, OS_LOG_TYPE_DEFAULT, "Calls visible in FT App to user: %lu", &v25, 0xCu);
    }

    v15 = [(CallDBManagerServer *)self uniqueIDsOfCallsToKeepFromManagedObjectContext:contextCopy forFaceTimeCalls:0];
    [v9 addObjectsFromArray:v15];
    v16 = +[CHLogServer sharedInstance];
    v17 = [v16 logHandleForDomain:"ch.calldbm"];

    v18 = v17;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v15 count];
      v25 = 134217984;
      versionCopy = v19;
      _os_log_impl(&dword_1C3E90000, v18, OS_LOG_TYPE_DEFAULT, "Calls visible in Phone App to user: %lu", &v25, 0xCu);
    }

    v20 = MEMORY[0x1E696AB28];
    v21 = [CHRecentCall predicateForCallsWithAnyUniqueIDs:v9];
    v22 = [v20 notPredicateWithSubpredicate:v21];

    [(CallDBManagerServer *)self deleteObjectsWithPredicate:v22 fromManagedObjectContext:contextCopy];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setBool:1 forKey:@"CHDBLimitIncreasedPruned"];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)uniqueIDsFromCallRecords:(id)records forFaceTimeCalls:(BOOL)calls
{
  callsCopy = calls;
  v35 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v6 = kCHCoalescingStrategyCollapseIfEqual;
  if (!callsCopy)
  {
    v6 = kCHCoalescingStrategyRecents;
  }

  v29 = *v6;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:100];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = recordsCopy;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v31;
    obj = v8;
    while (2)
    {
      v14 = 0;
      v15 = v11;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * v14);
        v17 = objc_autoreleasePoolPush();
        chRecentCall = [v16 chRecentCall];
        v19 = chRecentCall;
        if (v15)
        {
          v20 = [v15 coalescedCallWithCall:chRecentCall usingStrategy:v29];
        }

        else
        {
          v20 = chRecentCall;
        }

        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          ++v12;
          v22 = v19;
          if (v12 == 100)
          {
            v24 = v7;

            objc_autoreleasePoolPop(v17);
            v8 = obj;

            goto LABEL_20;
          }
        }

        v11 = v22;

        uniqueId = [v19 uniqueId];
        [v7 addObject:uniqueId];

        objc_autoreleasePoolPop(v17);
        ++v14;
        v15 = v11;
      }

      while (v10 != v14);
      v8 = obj;
      v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  v25 = v7;
  v15 = v11;
LABEL_20:

  v26 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)deleteObjectsWithPredicate:(id)predicate fromManagedObjectContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  predicateCopy = predicate;
  v8 = [v5 fetchRequestWithEntityName:@"CallRecord"];
  [v8 setPredicate:predicateCopy];

  v9 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v8];
  [v9 setResultType:2];
  v17 = 0;
  v10 = [contextCopy executeRequest:v9 error:&v17];

  if (v17)
  {
    v11 = +[CHLogServer sharedInstance];
    v12 = [v11 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CallDBManagerServer removeDuplicatesFromDBAtLocation:dbVersion:isEncrypted:];
    }
  }

  else
  {
    result = [v10 result];
    unsignedIntegerValue = [result unsignedIntegerValue];

    v15 = +[CHLogServer sharedInstance];
    v12 = [v15 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = unsignedIntegerValue;
      _os_log_impl(&dword_1C3E90000, v12, OS_LOG_TYPE_DEFAULT, "Deleted %ld calls from the data store.", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)dbShouldBePrunedForVersion:(int64_t)version
{
  v15 = *MEMORY[0x1E69E9840];
  if (version < 27)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [standardUserDefaults BOOLForKey:@"CHDBLimitIncreasedPruned"]^ 1;
    v7 = +[CHLogServer sharedInstance];
    v8 = [v7 logHandleForDomain:"ch.calldbm"];

    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithBool:v6];
      v13 = 138543362;
      versionCopy = v10;
      _os_log_impl(&dword_1C3E90000, v9, OS_LOG_TYPE_DEFAULT, "DB version was eligible for pruning. shouldBePruned: %{public}@", &v13, 0xCu);
    }
  }

  else
  {
    v4 = +[CHLogServer sharedInstance];
    standardUserDefaults = [v4 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(standardUserDefaults, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      versionCopy = version;
      _os_log_impl(&dword_1C3E90000, standardUserDefaults, OS_LOG_TYPE_DEFAULT, "DB does not need to be pruned as version: %lu is greater than kCHDBVersionTwentySeven", &v13, 0xCu);
    }

    LOBYTE(v6) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)bootUpDBAtLocationWithRecovery:isEncrypted:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)bootUpDBAtLocationWithRecovery:isEncrypted:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getObjectIdsForDuplicateRecordsWithUniqueIds:andHavingObjectIds:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2048;
  v5 = v0;
  _os_log_error_impl(&dword_1C3E90000, v1, OS_LOG_TYPE_ERROR, "Objects ids(%lu) and unique ids(%lu) count mismatch", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)createMOCForDBAtLocation:dbVersion:isEncrypted:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeDuplicatesFromDBAtLocation:dbVersion:isEncrypted:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)modifyCallRecordForDBAtLocation:dbVersion:isEncrypted:modifyCallRecord:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)modifyCallRecordForDBAtLocation:dbVersion:isEncrypted:modifyCallRecord:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleDatabaseMigration:isEncrypted:isRetry:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)prepareForMigrationDBAtURL:(uint8_t *)buf withModelAtURL:(_BYTE *)a2 andIsEncrypted:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C3E90000, log, OS_LOG_TYPE_ERROR, "Failed to execute the delete request", buf, 2u);
}

- (void)prepareForMigrationDBAtURL:withModelAtURL:andIsEncrypted:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createCallDBProperties
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)bootUpDBAtLocation:isEncrypted:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end