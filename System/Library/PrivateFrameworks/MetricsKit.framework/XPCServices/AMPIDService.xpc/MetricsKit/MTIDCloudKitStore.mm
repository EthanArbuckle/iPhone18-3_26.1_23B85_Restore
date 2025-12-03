@interface MTIDCloudKitStore
+ (BOOL)updateRecord:(id)record isSpanRecord:(BOOL)spanRecord scheme:(id)scheme expectedKey:(id)key expiration:(id)expiration reset:(BOOL)reset;
+ (id)keyOfReferenceDate:(id)date;
+ (id)recordZoneID;
+ (id)referenceDateOfRecord:(id)record;
+ (id)referenceRecordIDForScheme:(id)scheme dsId:(id)id;
+ (id)spanRecordIDForScheme:(id)scheme referenceRecordID:(id)d serialNumber:(unint64_t)number;
- (MTIDCloudKitStore)initWithContainerIdentifer:(id)identifer enableSync:(BOOL)sync;
- (MTIDSyncEngine)syncEngine;
- (id)debugInfo;
- (id)maintainSchemes:(id)schemes options:(id)options;
- (id)promiseForRecordWithID:(id)d timeout:(double)timeout qualityOfService:(int64_t)service existingOnly:(BOOL)only updateRecordMaybe:(id)maybe;
- (id)recordWithID:(id)d;
- (id)recordWithID:(id)d qualityOfService:(int64_t)service updateRecordMaybe:(id)maybe error:(id *)error;
- (id)resetSchemes:(id)schemes options:(id)options;
- (id)secretForScheme:(id)scheme options:(id)options;
- (id)syncForSchemes:(id)schemes options:(id)options;
- (void)_generateFutureRecordsForScheme:(id)scheme referenceRecord:(id)record;
- (void)accountDidChangeWithUserRecordID:(id)d;
- (void)clearLocalData;
- (void)cloudKitLocalDB:(id)b didChangeRecord:(id)record;
- (void)fetchChangesIfNeeded;
- (void)generateFutureRecordsForScheme:(id)scheme referenceRecord:(id)record;
- (void)recordWasDeleted:(id)deleted;
- (void)recordWasFailedToSave:(id)save;
- (void)recordWasFetched:(id)fetched;
- (void)recordWasSaved:(id)saved;
- (void)syncEngineDidStartWithError:(id)error;
@end

@implementation MTIDCloudKitStore

- (MTIDCloudKitStore)initWithContainerIdentifer:(id)identifer enableSync:(BOOL)sync
{
  syncCopy = sync;
  identiferCopy = identifer;
  v23.receiver = self;
  v23.super_class = MTIDCloudKitStore;
  v7 = [(MTIDCloudKitStore *)&v23 init];
  v8 = v7;
  if (v7)
  {
    [(MTIDCloudKitStore *)v7 setContainerIdentifier:identiferCopy];
    if (syncCopy)
    {
      v9 = +[MTFrameworkEnvironment sharedEnvironment];
      v10 = [v9 valueForEntitlement:@"com.apple.developer.icloud-container-identifiers"];

      -[MTIDCloudKitStore setCanSyncBetweenDevices:](v8, "setCanSyncBetweenDevices:", [v10 containsObject:identiferCopy]);
      if (![(MTIDCloudKitStore *)v8 canSyncBetweenDevices])
      {
        v11 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v25 = identiferCopy;
          v26 = 2112;
          v27 = @"com.apple.developer.icloud-container-identifiers";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MetricsKit: The application is missing container %@ in %@ entitlement.", buf, 0x16u);
        }
      }
    }

    else
    {
      [(MTIDCloudKitStore *)v8 setCanSyncBetweenDevices:0];
    }

    v12 = [identiferCopy stringByAppendingString:@".accessqueue"];
    v13 = dispatch_queue_create([v12 UTF8String], 0);
    [(MTIDCloudKitStore *)v8 setAccessQueue:v13];

    v14 = [MTIDCloudKitLocalDB alloc];
    v15 = +[MTIDCloudKitStore recordZoneID];
    v16 = [(MTIDCloudKitLocalDB *)v14 initWithContainerIdentifier:identiferCopy recordType:@"MT_IDSecret" recordZoneID:v15];

    [(MTIDCloudKitLocalDB *)v16 setDelegate:v8];
    [(MTIDCloudKitStore *)v8 setLocalDB:v16];
    v17 = +[NSMutableDictionary dictionary];
    [(MTIDCloudKitStore *)v8 setGeneratedDates:v17];

    if ([(MTIDCloudKitStore *)v8 canSyncBetweenDevices])
    {
      syncEngine = [(MTIDCloudKitStore *)v8 syncEngine];
      [syncEngine start];
    }

    v19 = [MTIDCloudKitPromiseManager alloc];
    accessQueue = [(MTIDCloudKitStore *)v8 accessQueue];
    v21 = [(MTIDCloudKitPromiseManager *)v19 initWithCallbackQueue:accessQueue];
    [(MTIDCloudKitStore *)v8 setPromiseManager:v21];
  }

  return v8;
}

- (MTIDSyncEngine)syncEngine
{
  if (!self->_syncEngine && [(MTIDCloudKitStore *)self canSyncBetweenDevices])
  {
    v3 = [MTIDSyncEngine alloc];
    containerIdentifier = [(MTIDCloudKitStore *)self containerIdentifier];
    v5 = +[MTIDCloudKitStore recordZoneID];
    accessQueue = [(MTIDCloudKitStore *)self accessQueue];
    v7 = [(MTIDSyncEngine *)v3 initWithContainerIdentifier:containerIdentifier zoneID:v5 queue:accessQueue delegate:self];
    syncEngine = self->_syncEngine;
    self->_syncEngine = v7;
  }

  v9 = self->_syncEngine;

  return v9;
}

- (void)generateFutureRecordsForScheme:(id)scheme referenceRecord:(id)record
{
  schemeCopy = scheme;
  recordCopy = record;
  if ([schemeCopy lifespan] && -[MTIDCloudKitStore canSyncBetweenDevices](self, "canSyncBetweenDevices"))
  {
    objc_initWeak(&location, self);
    accessQueue = [(MTIDCloudKitStore *)self accessQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000BE90;
    v9[3] = &unk_100020B68;
    objc_copyWeak(&v12, &location);
    v10 = schemeCopy;
    v11 = recordCopy;
    dispatch_async(accessQueue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_generateFutureRecordsForScheme:(id)scheme referenceRecord:(id)record
{
  schemeCopy = scheme;
  recordCopy = record;
  v8 = &selRef_privateCloudDatabase;
  v9 = [MTIDCloudKitStore referenceDateOfRecord:recordCopy];
  if (!v9)
  {
    selfCopy = self;
    v36 = 0;
    serialNumber = 0;
    v20 = [schemeCopy storagePoolSize] - 1;
LABEL_10:
    v25 = 0;
    v26 = selfCopy;
    do
    {
      v27 = v25;
      recordID = [recordCopy recordID];
      [v8 + 399 spanRecordIDForScheme:schemeCopy referenceRecordID:recordID serialNumber:serialNumber];
      v30 = v29 = v8;

      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10000C224;
      v38[3] = &unk_100020B90;
      v39 = recordCopy;
      v41 = serialNumber;
      v40 = schemeCopy;
      v37 = v27;
      v31 = [(MTIDCloudKitStore *)v26 recordWithID:v30 qualityOfService:-1 updateRecordMaybe:v38 error:&v37];
      v25 = v37;

      v8 = v29;
      ++serialNumber;
    }

    while (serialNumber <= v20);

    v9 = v36;
    goto LABEL_13;
  }

  v10 = +[MTFrameworkEnvironment sharedEnvironment];
  date = [v10 date];

  [schemeCopy maxFutureTimeInterval];
  v12 = [date dateByAddingTimeInterval:?];
  generatedDates = [(MTIDCloudKitStore *)self generatedDates];
  idNamespace = [schemeCopy idNamespace];
  v15 = [generatedDates objectForKeyedSubscript:idNamespace];

  if (v15 && [v12 compare:v15] == -1)
  {

    goto LABEL_13;
  }

  v35 = v15;
  v34 = [MTIDSpan spanForScheme:schemeCopy date:date referenceDate:v9];
  v16 = [MTIDSpan spanForScheme:schemeCopy date:v12 referenceDate:v9];
  serialNumber = [v34 serialNumber];
  serialNumber2 = [v16 serialNumber];
  storagePoolSize = [schemeCopy storagePoolSize];
  if (serialNumber2 >= &storagePoolSize[serialNumber - 2])
  {
    v20 = &storagePoolSize[serialNumber - 2];
  }

  else
  {
    v20 = serialNumber2;
  }

  endDate = [v16 endDate];
  [(MTIDCloudKitStore *)self generatedDates];
  v22 = v33 = date;
  [schemeCopy idNamespace];
  v23 = v32 = self;
  [v22 setObject:endDate forKeyedSubscript:v23];

  if (serialNumber <= v20)
  {
    selfCopy = v32;
    v36 = v9;
    v8 = &selRef_privateCloudDatabase;
    goto LABEL_10;
  }

LABEL_13:
}

- (id)recordWithID:(id)d qualityOfService:(int64_t)service updateRecordMaybe:(id)maybe error:(id *)error
{
  dCopy = d;
  maybeCopy = maybe;
  accessQueue = [(MTIDCloudKitStore *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  localDB = [(MTIDCloudKitStore *)self localDB];
  v26 = 0;
  v14 = [localDB recordWithID:dCopy error:&v26];
  v15 = v26;
  if (v15)
  {
    v16 = v15;
    if (error)
    {
LABEL_3:
      v17 = v16;
      v18 = 0;
      *error = v16;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!v14)
  {
    v19 = [CKRecord alloc];
    recordType = [localDB recordType];
    v14 = [v19 initWithRecordType:recordType recordID:dCopy];
  }

  if (!maybeCopy[2](maybeCopy, v14))
  {
    v16 = 0;
LABEL_11:
    v14 = v14;
    v18 = v14;
    goto LABEL_14;
  }

  v25 = 0;
  v21 = [localDB writeRecord:v14 error:&v25];
  v16 = v25;
  if (v21)
  {
    if ([(MTIDCloudKitStore *)self canSyncBetweenDevices])
    {
      syncEngine = [(MTIDCloudKitStore *)self syncEngine];
      v27 = dCopy;
      v23 = [NSArray arrayWithObjects:&v27 count:1];
      [syncEngine saveRecordsWithIDs:v23 qualityOfService:service];
    }

    goto LABEL_11;
  }

  if (error)
  {
    goto LABEL_3;
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (id)promiseForRecordWithID:(id)d timeout:(double)timeout qualityOfService:(int64_t)service existingOnly:(BOOL)only updateRecordMaybe:(id)maybe
{
  dCopy = d;
  maybeCopy = maybe;
  v14 = objc_alloc_init(MTPromise);
  accessQueue = [(MTIDCloudKitStore *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C5FC;
  block[3] = &unk_100020BE0;
  block[4] = self;
  v23 = dCopy;
  v25 = maybeCopy;
  serviceCopy = service;
  v16 = v14;
  v24 = v16;
  timeoutCopy = timeout;
  onlyCopy = only;
  v17 = maybeCopy;
  v18 = dCopy;
  dispatch_async(accessQueue, block);

  v19 = v24;
  v20 = v16;

  return v16;
}

+ (id)recordZoneID
{
  v2 = [[CKRecordZoneID alloc] initWithZoneName:@"MT_IDZone" ownerName:CKCurrentUserDefaultName];

  return v2;
}

+ (id)referenceRecordIDForScheme:(id)scheme dsId:(id)id
{
  idCopy = id;
  schemeCopy = scheme;
  idNamespace = [schemeCopy idNamespace];
  idType = [schemeCopy idType];

  if (idCopy && idType == 2)
  {
    v9 = [idNamespace stringByAppendingFormat:@"_%llx", objc_msgSend(idCopy, "unsignedLongLongValue")];

    idNamespace = v9;
  }

  mt_SHA1Base62String = [idNamespace mt_SHA1Base62String];
  v11 = [@"MT_ID" stringByAppendingString:mt_SHA1Base62String];

  v12 = [CKRecordID alloc];
  v13 = +[MTIDCloudKitStore recordZoneID];
  v14 = [v12 initWithRecordName:v11 zoneID:v13];

  return v14;
}

+ (id)referenceDateOfRecord:(id)record
{
  v3 = [record objectForKeyedSubscript:@"secretKey"];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v5 = [NSDate dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)keyOfReferenceDate:(id)date
{
  if (date)
  {
    [date timeIntervalSince1970];
    v5 = [NSString stringWithFormat:@"%lld", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)spanRecordIDForScheme:(id)scheme referenceRecordID:(id)d serialNumber:(unint64_t)number
{
  schemeCopy = scheme;
  recordName = [d recordName];
  storagePoolSize = [schemeCopy storagePoolSize];

  v11 = [NSString stringWithFormat:@"%@_%02lx", recordName, number % storagePoolSize];

  v12 = [CKRecordID alloc];
  recordZoneID = [self recordZoneID];
  v14 = [v12 initWithRecordName:v11 zoneID:recordZoneID];

  return v14;
}

+ (BOOL)updateRecord:(id)record isSpanRecord:(BOOL)spanRecord scheme:(id)scheme expectedKey:(id)key expiration:(id)expiration reset:(BOOL)reset
{
  resetCopy = reset;
  spanRecordCopy = spanRecord;
  recordCopy = record;
  schemeCopy = scheme;
  keyCopy = key;
  expirationCopy = expiration;
  v16 = [recordCopy objectForKeyedSubscript:@"namespace"];
  v17 = [recordCopy objectForKeyedSubscript:@"secretKey"];
  idNamespace = [schemeCopy idNamespace];
  v30 = v16;
  LODWORD(v16) = [v16 isEqualToString:idNamespace];

  v19 = v16 ^ 1;
  if (spanRecordCopy && (v19 & 1) == 0)
  {
    if ([v17 isEqualToString:keyCopy] && !resetCopy)
    {
      goto LABEL_5;
    }

LABEL_14:
    v24 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      idNamespace2 = [schemeCopy idNamespace];
      *buf = 138412802;
      v33 = recordCopy;
      v34 = 2112;
      v35 = idNamespace2;
      v36 = 2112;
      v37 = keyCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "MetricsKit: Updating record %@ for namespace %@ key %@", buf, 0x20u);
    }

    idNamespace3 = [schemeCopy idNamespace];
    [recordCopy setObject:idNamespace3 forKeyedSubscript:@"namespace"];

    [recordCopy setObject:keyCopy forKeyedSubscript:@"secretKey"];
    v22 = expirationCopy;
    [recordCopy setObject:expirationCopy forKeyedSubscript:@"expiration"];
    v27 = +[NSUUID UUID];
    uUIDString = [v27 UUIDString];
    [recordCopy mt_setSecretValue:uUIDString];

    [recordCopy mt_setSynchronized:0];
    goto LABEL_17;
  }

  if ((v19 | resetCopy) == 1)
  {
    goto LABEL_14;
  }

LABEL_5:
  v20 = 0;
  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = !spanRecordCopy;
  }

  if (!keyCopy)
  {
    v22 = expirationCopy;
    goto LABEL_18;
  }

  v22 = expirationCopy;
  if (v21)
  {
    [recordCopy setObject:keyCopy forKeyedSubscript:@"secretKey"];
    v23 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = recordCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "MetricsKit: Updating reference record %@ with current date", buf, 0xCu);
    }

LABEL_17:
    v20 = 1;
  }

LABEL_18:

  return v20;
}

- (void)fetchChangesIfNeeded
{
  localDB = [(MTIDCloudKitStore *)self localDB];
  needsFetchRecords = [localDB needsFetchRecords];

  if (needsFetchRecords)
  {
    localDB2 = [(MTIDCloudKitStore *)self localDB];
    [localDB2 setNeedsFetchRecords:0];

    syncEngine = [(MTIDCloudKitStore *)self syncEngine];
    [syncEngine fetchAllRecords];
  }
}

- (id)syncForSchemes:(id)schemes options:(id)options
{
  schemesCopy = schemes;
  v7 = [options objectForKeyedSubscript:@"dsId"];
  v8 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = schemesCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      v14 = v8;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [MTIDCloudKitStore referenceRecordIDForScheme:*(*(&v22 + 1) + 8 * v13) dsId:v7];
        v8 = [v14 arrayByAddingObject:v15];

        v13 = v13 + 1;
        v14 = v8;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  syncEngine = [(MTIDCloudKitStore *)self syncEngine];

  if (syncEngine)
  {
    syncEngine2 = [(MTIDCloudKitStore *)self syncEngine];
    v18 = [syncEngine2 fetchRecordWithIDs:v8];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000D580;
    v21[3] = &unk_100020C58;
    v21[4] = self;
    v19 = [v18 thenWithBlock:v21];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)accountDidChangeWithUserRecordID:(id)d
{
  dCopy = d;
  accessQueue = [(MTIDCloudKitStore *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  localDB = [(MTIDCloudKitStore *)self localDB];
  recordName = [dCopy recordName];
  v8 = [localDB setUserRecordIDName:recordName];

  if (v8)
  {
    v9 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      recordName2 = [dCopy recordName];
      v11 = 138412290;
      v12 = recordName2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "MetricsKit: Updated user record with ID %@", &v11, 0xCu);
    }

    [MTInterprocessChangeNotifier notify:@"MTCloudKitAccountDidChangeNotification"];
  }
}

- (void)syncEngineDidStartWithError:(id)error
{
  errorCopy = error;
  accessQueue = [(MTIDCloudKitStore *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (errorCopy)
  {
    domain = [errorCopy domain];
    pendingRecordIDs = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%ld", domain, [errorCopy code]);

    localDB = [(MTIDCloudKitStore *)self localDB];
    [localDB setSyncStatusCode:pendingRecordIDs];

    v9 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = errorCopy;
      v10 = "MetricsKit: Error starting sync engine: %@";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
    }
  }

  else
  {
    localDB2 = [(MTIDCloudKitStore *)self localDB];
    [localDB2 setSyncStatusCode:@"Ready"];

    [(MTIDCloudKitStore *)self fetchChangesIfNeeded];
    localDB3 = [(MTIDCloudKitStore *)self localDB];
    pendingRecordIDs = [localDB3 pendingRecordIDs];

    if ([pendingRecordIDs count])
    {
      syncEngine = [(MTIDCloudKitStore *)self syncEngine];
      [syncEngine saveRecordsWithIDs:pendingRecordIDs qualityOfService:25];

      v9 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v18) = [pendingRecordIDs count];
        v10 = "MetricsKit: Started sync engine with %d unsynchronized records";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEBUG;
        v13 = 8;
        goto LABEL_9;
      }
    }

    else
    {
      v9 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v10 = "MetricsKit: Started sync engine with all records synchronized";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEBUG;
        v13 = 2;
        goto LABEL_9;
      }
    }
  }
}

- (id)recordWithID:(id)d
{
  dCopy = d;
  localDB = [(MTIDCloudKitStore *)self localDB];
  v11 = 0;
  v6 = [localDB recordWithID:dCopy error:&v11];
  v7 = v11;

  if (!v6)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      recordName = [dCopy recordName];
      *buf = 138412546;
      v13 = recordName;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to read local record data with ID %@ error %@", buf, 0x16u);
    }
  }

  return v6;
}

- (void)recordWasSaved:(id)saved
{
  savedCopy = saved;
  recordType = [savedCopy recordType];
  v6 = [recordType isEqualToString:@"MT_IDSecret"];

  if (v6)
  {
    [savedCopy mt_setSynchronized:1];
    localDB = [(MTIDCloudKitStore *)self localDB];
    v13 = 0;
    v8 = [localDB writeRecord:savedCopy error:&v13];
    v9 = v13;

    if ((v8 & 1) == 0)
    {
      v10 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        recordID = [savedCopy recordID];
        recordName = [recordID recordName];
        *buf = 138412546;
        v15 = recordName;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to save local record data with ID %@ error %@", buf, 0x16u);
      }
    }
  }
}

- (void)recordWasFailedToSave:(id)save
{
  saveCopy = save;
  recordType = [saveCopy recordType];
  v5 = [recordType isEqualToString:@"MT_IDSecret"];

  if (v5)
  {
    promiseManager = [(MTIDCloudKitStore *)self promiseManager];
    [promiseManager finishPromisesOfRecord:saveCopy];
  }
}

- (void)recordWasFetched:(id)fetched
{
  fetchedCopy = fetched;
  recordType = [fetchedCopy recordType];
  v6 = [recordType isEqualToString:@"MT_IDSecret"];

  if (v6)
  {
    recordID = [fetchedCopy recordID];
    recordName = [recordID recordName];
    v9 = [recordName hasPrefix:@"MT_ID"];

    if (v9)
    {
      [fetchedCopy mt_setSynchronized:1];
      localDB = [(MTIDCloudKitStore *)self localDB];
      v16 = 0;
      v11 = [localDB writeRecord:fetchedCopy error:&v16];
      syncEngine = v16;

      if (v11)
      {
LABEL_9:

        goto LABEL_10;
      }

      recordID3 = MTMetricsKitOSLog();
      if (!os_log_type_enabled(recordID3, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        goto LABEL_9;
      }

      recordID2 = [fetchedCopy recordID];
      recordName2 = [recordID2 recordName];
      *buf = 138412546;
      v19 = recordName2;
      v20 = 2112;
      v21 = syncEngine;
      _os_log_impl(&_mh_execute_header, recordID3, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to save local record data with ID %@ error %@", buf, 0x16u);
    }

    else
    {
      syncEngine = [(MTIDCloudKitStore *)self syncEngine];
      recordID3 = [fetchedCopy recordID];
      v17 = recordID3;
      recordID2 = [NSArray arrayWithObjects:&v17 count:1];
      [syncEngine deleteRecordsWithIDs:recordID2];
    }

    goto LABEL_8;
  }

LABEL_10:
}

- (void)recordWasDeleted:(id)deleted
{
  deletedCopy = deleted;
  localDB = [(MTIDCloudKitStore *)self localDB];
  v10 = 0;
  v6 = [localDB deleteRecordWithID:deletedCopy error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      recordName = [deletedCopy recordName];
      *buf = 138412546;
      v12 = recordName;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to delete local record data with ID %@ error %@", buf, 0x16u);
    }
  }
}

- (void)cloudKitLocalDB:(id)b didChangeRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy mt_isSynchronized])
  {
    promiseManager = [(MTIDCloudKitStore *)self promiseManager];
    [promiseManager finishPromisesOfRecord:recordCopy];

    v6 = [recordCopy objectForKeyedSubscript:@"namespace"];
    [MTInterprocessChangeNotifier notify:v6];
  }
}

- (id)secretForScheme:(id)scheme options:(id)options
{
  schemeCopy = scheme;
  optionsCopy = options;
  v8 = [optionsCopy objectForKeyedSubscript:@"appBundleID"];
  syncEngine = [(MTIDCloudKitStore *)self syncEngine];
  [syncEngine setApplicationBundleIdentifierOverrideForNetworkAttribution:v8];

  v10 = [optionsCopy objectForKeyedSubscript:@"date"];
  v11 = v10;
  if (v10)
  {
    date = v10;
  }

  else
  {
    v13 = +[MTFrameworkEnvironment sharedEnvironment];
    date = [v13 date];
  }

  v34 = [optionsCopy objectForKeyedSubscript:@"dsId"];
  v14 = [optionsCopy objectForKeyedSubscript:@"reset"];
  bOOLValue = [v14 BOOLValue];

  v16 = [optionsCopy objectForKeyedSubscript:@"syncWaitTime"];
  v17 = [optionsCopy objectForKeyedSubscript:@"existingOnly"];
  bOOLValue2 = [v17 BOOLValue];

  if (v16)
  {
    [v16 doubleValue];
  }

  else
  {
    +[MTIDSyncEngine transactionTimeout];
  }

  v20 = v19;
  v21 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    idNamespace = [schemeCopy idNamespace];
    v23 = @"NO";
    *buf = 138413058;
    *&buf[4] = idNamespace;
    if (bOOLValue2)
    {
      v23 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = date;
    *&buf[22] = 2112;
    v44 = v23;
    LOWORD(v45) = 2048;
    *(&v45 + 2) = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "MetricsKit: Secret requested for scheme %@, date: %@, existingOnly: %@, timeout: %f", buf, 0x2Au);
  }

  if (!bOOLValue2)
  {
    goto LABEL_14;
  }

  v24 = [MTIDCloudKitStore referenceRecordIDForScheme:schemeCopy dsId:v34];
  localDB = [(MTIDCloudKitStore *)self localDB];
  v42 = 0;
  v26 = [localDB recordWithID:v24 error:&v42];
  v33 = v42;

  if (v26)
  {

LABEL_14:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v44 = sub_10000E75C;
    *&v45 = sub_10000E76C;
    *(&v45 + 1) = 0;
    v27 = [(MTIDCloudKitStore *)self referenceRecordForScheme:schemeCopy dsId:v34 date:date reset:bOOLValue timeout:bOOLValue2 existingOnly:25 qualityOfService:v20];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10000E774;
    v35[3] = &unk_100020CA8;
    v36 = schemeCopy;
    selfCopy = self;
    v39 = buf;
    v37 = date;
    v40 = v20;
    v41 = bOOLValue2;
    v28 = [v27 thenWithBlock:v35];

    _Block_object_dispose(buf, 8);
    goto LABEL_15;
  }

  v30 = [[MTIDSecret alloc] initWithValue:&stru_100021530 effectiveDate:0 expirationDate:0 isSynchronize:0];
  v31 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    idNamespace2 = [schemeCopy idNamespace];
    *buf = 138412290;
    *&buf[4] = idNamespace2;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "MetricsKit: Secret doesn't exist, returning empty secret for scheme %@", buf, 0xCu);
  }

  v28 = [MTPromise promiseWithResult:v30];

LABEL_15:

  return v28;
}

- (id)resetSchemes:(id)schemes options:(id)options
{
  schemesCopy = schemes;
  optionsCopy = options;
  v8 = [optionsCopy objectForKeyedSubscript:@"appBundleID"];
  syncEngine = [(MTIDCloudKitStore *)self syncEngine];
  [syncEngine setApplicationBundleIdentifierOverrideForNetworkAttribution:v8];

  v10 = [optionsCopy objectForKeyedSubscript:@"dsId"];
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [schemesCopy count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = schemesCopy;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(MTIDCloudKitStore *)self referenceRecordForScheme:*(*(&v21 + 1) + 8 * i) dsId:v10 date:0 reset:1 timeout:0 existingOnly:25 qualityOfService:0.0, v21];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [MTPromise promiseWithAll:v11];
  v19 = [v18 thenWithBlock:&stru_100020CE8];

  return v19;
}

- (id)maintainSchemes:(id)schemes options:(id)options
{
  schemesCopy = schemes;
  optionsCopy = options;
  v8 = [optionsCopy objectForKeyedSubscript:@"appBundleID"];
  syncEngine = [(MTIDCloudKitStore *)self syncEngine];
  [syncEngine setApplicationBundleIdentifierOverrideForNetworkAttribution:v8];

  if ([(MTIDCloudKitStore *)self canSyncBetweenDevices])
  {
    v10 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v22 = [schemesCopy count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MetricsKit: Performing maintenance on %d ID schemes", buf, 8u);
    }

    v11 = objc_alloc_init(MTPromise);
    accessQueue = [(MTIDCloudKitStore *)self accessQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000F210;
    v17[3] = &unk_100020D60;
    v17[4] = self;
    v18 = optionsCopy;
    v19 = schemesCopy;
    v13 = v11;
    v20 = v13;
    dispatch_async(accessQueue, v17);

    v14 = v20;
    v15 = v13;
  }

  else
  {
    v15 = [MTPromise promiseWithResult:&__kCFBooleanTrue];
  }

  return v15;
}

- (void)clearLocalData
{
  localDB = [(MTIDCloudKitStore *)self localDB];
  [localDB clearData];
}

- (id)debugInfo
{
  localDB = [(MTIDCloudKitStore *)self localDB];
  allRecords = [localDB allRecords];

  v11[0] = @"container";
  containerIdentifier = [(MTIDCloudKitStore *)self containerIdentifier];
  v6 = containerIdentifier;
  if (containerIdentifier)
  {
    v7 = containerIdentifier;
  }

  else
  {
    v7 = &stru_100021530;
  }

  v11[1] = @"secrets";
  v12[0] = v7;
  v8 = [allRecords mt_map:&stru_100020DA0];
  v12[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end