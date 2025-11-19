@interface MTIDCloudKitStore
+ (BOOL)updateRecord:(id)a3 isSpanRecord:(BOOL)a4 scheme:(id)a5 expectedKey:(id)a6 expiration:(id)a7 reset:(BOOL)a8;
+ (id)keyOfReferenceDate:(id)a3;
+ (id)recordZoneID;
+ (id)referenceDateOfRecord:(id)a3;
+ (id)referenceRecordIDForScheme:(id)a3 dsId:(id)a4;
+ (id)spanRecordIDForScheme:(id)a3 referenceRecordID:(id)a4 serialNumber:(unint64_t)a5;
- (MTIDCloudKitStore)initWithContainerIdentifer:(id)a3 enableSync:(BOOL)a4;
- (MTIDSyncEngine)syncEngine;
- (id)debugInfo;
- (id)maintainSchemes:(id)a3 options:(id)a4;
- (id)promiseForRecordWithID:(id)a3 timeout:(double)a4 qualityOfService:(int64_t)a5 existingOnly:(BOOL)a6 updateRecordMaybe:(id)a7;
- (id)recordWithID:(id)a3;
- (id)recordWithID:(id)a3 qualityOfService:(int64_t)a4 updateRecordMaybe:(id)a5 error:(id *)a6;
- (id)resetSchemes:(id)a3 options:(id)a4;
- (id)secretForScheme:(id)a3 options:(id)a4;
- (id)syncForSchemes:(id)a3 options:(id)a4;
- (void)_generateFutureRecordsForScheme:(id)a3 referenceRecord:(id)a4;
- (void)accountDidChangeWithUserRecordID:(id)a3;
- (void)clearLocalData;
- (void)cloudKitLocalDB:(id)a3 didChangeRecord:(id)a4;
- (void)fetchChangesIfNeeded;
- (void)generateFutureRecordsForScheme:(id)a3 referenceRecord:(id)a4;
- (void)recordWasDeleted:(id)a3;
- (void)recordWasFailedToSave:(id)a3;
- (void)recordWasFetched:(id)a3;
- (void)recordWasSaved:(id)a3;
- (void)syncEngineDidStartWithError:(id)a3;
@end

@implementation MTIDCloudKitStore

- (MTIDCloudKitStore)initWithContainerIdentifer:(id)a3 enableSync:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v23.receiver = self;
  v23.super_class = MTIDCloudKitStore;
  v7 = [(MTIDCloudKitStore *)&v23 init];
  v8 = v7;
  if (v7)
  {
    [(MTIDCloudKitStore *)v7 setContainerIdentifier:v6];
    if (v4)
    {
      v9 = +[MTFrameworkEnvironment sharedEnvironment];
      v10 = [v9 valueForEntitlement:@"com.apple.developer.icloud-container-identifiers"];

      -[MTIDCloudKitStore setCanSyncBetweenDevices:](v8, "setCanSyncBetweenDevices:", [v10 containsObject:v6]);
      if (![(MTIDCloudKitStore *)v8 canSyncBetweenDevices])
      {
        v11 = MTMetricsKitOSLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v25 = v6;
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

    v12 = [v6 stringByAppendingString:@".accessqueue"];
    v13 = dispatch_queue_create([v12 UTF8String], 0);
    [(MTIDCloudKitStore *)v8 setAccessQueue:v13];

    v14 = [MTIDCloudKitLocalDB alloc];
    v15 = +[MTIDCloudKitStore recordZoneID];
    v16 = [(MTIDCloudKitLocalDB *)v14 initWithContainerIdentifier:v6 recordType:@"MT_IDSecret" recordZoneID:v15];

    [(MTIDCloudKitLocalDB *)v16 setDelegate:v8];
    [(MTIDCloudKitStore *)v8 setLocalDB:v16];
    v17 = +[NSMutableDictionary dictionary];
    [(MTIDCloudKitStore *)v8 setGeneratedDates:v17];

    if ([(MTIDCloudKitStore *)v8 canSyncBetweenDevices])
    {
      v18 = [(MTIDCloudKitStore *)v8 syncEngine];
      [v18 start];
    }

    v19 = [MTIDCloudKitPromiseManager alloc];
    v20 = [(MTIDCloudKitStore *)v8 accessQueue];
    v21 = [(MTIDCloudKitPromiseManager *)v19 initWithCallbackQueue:v20];
    [(MTIDCloudKitStore *)v8 setPromiseManager:v21];
  }

  return v8;
}

- (MTIDSyncEngine)syncEngine
{
  if (!self->_syncEngine && [(MTIDCloudKitStore *)self canSyncBetweenDevices])
  {
    v3 = [MTIDSyncEngine alloc];
    v4 = [(MTIDCloudKitStore *)self containerIdentifier];
    v5 = +[MTIDCloudKitStore recordZoneID];
    v6 = [(MTIDCloudKitStore *)self accessQueue];
    v7 = [(MTIDSyncEngine *)v3 initWithContainerIdentifier:v4 zoneID:v5 queue:v6 delegate:self];
    syncEngine = self->_syncEngine;
    self->_syncEngine = v7;
  }

  v9 = self->_syncEngine;

  return v9;
}

- (void)generateFutureRecordsForScheme:(id)a3 referenceRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 lifespan] && -[MTIDCloudKitStore canSyncBetweenDevices](self, "canSyncBetweenDevices"))
  {
    objc_initWeak(&location, self);
    v8 = [(MTIDCloudKitStore *)self accessQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000BE90;
    v9[3] = &unk_100020B68;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
    dispatch_async(v8, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)_generateFutureRecordsForScheme:(id)a3 referenceRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = &selRef_privateCloudDatabase;
  v9 = [MTIDCloudKitStore referenceDateOfRecord:v7];
  if (!v9)
  {
    v24 = self;
    v36 = 0;
    v17 = 0;
    v20 = [v6 storagePoolSize] - 1;
LABEL_10:
    v25 = 0;
    v26 = v24;
    do
    {
      v27 = v25;
      v28 = [v7 recordID];
      [v8 + 399 spanRecordIDForScheme:v6 referenceRecordID:v28 serialNumber:v17];
      v30 = v29 = v8;

      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10000C224;
      v38[3] = &unk_100020B90;
      v39 = v7;
      v41 = v17;
      v40 = v6;
      v37 = v27;
      v31 = [(MTIDCloudKitStore *)v26 recordWithID:v30 qualityOfService:-1 updateRecordMaybe:v38 error:&v37];
      v25 = v37;

      v8 = v29;
      ++v17;
    }

    while (v17 <= v20);

    v9 = v36;
    goto LABEL_13;
  }

  v10 = +[MTFrameworkEnvironment sharedEnvironment];
  v11 = [v10 date];

  [v6 maxFutureTimeInterval];
  v12 = [v11 dateByAddingTimeInterval:?];
  v13 = [(MTIDCloudKitStore *)self generatedDates];
  v14 = [v6 idNamespace];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (v15 && [v12 compare:v15] == -1)
  {

    goto LABEL_13;
  }

  v35 = v15;
  v34 = [MTIDSpan spanForScheme:v6 date:v11 referenceDate:v9];
  v16 = [MTIDSpan spanForScheme:v6 date:v12 referenceDate:v9];
  v17 = [v34 serialNumber];
  v18 = [v16 serialNumber];
  v19 = [v6 storagePoolSize];
  if (v18 >= &v19[v17 - 2])
  {
    v20 = &v19[v17 - 2];
  }

  else
  {
    v20 = v18;
  }

  v21 = [v16 endDate];
  [(MTIDCloudKitStore *)self generatedDates];
  v22 = v33 = v11;
  [v6 idNamespace];
  v23 = v32 = self;
  [v22 setObject:v21 forKeyedSubscript:v23];

  if (v17 <= v20)
  {
    v24 = v32;
    v36 = v9;
    v8 = &selRef_privateCloudDatabase;
    goto LABEL_10;
  }

LABEL_13:
}

- (id)recordWithID:(id)a3 qualityOfService:(int64_t)a4 updateRecordMaybe:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [(MTIDCloudKitStore *)self accessQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(MTIDCloudKitStore *)self localDB];
  v26 = 0;
  v14 = [v13 recordWithID:v10 error:&v26];
  v15 = v26;
  if (v15)
  {
    v16 = v15;
    if (a6)
    {
LABEL_3:
      v17 = v16;
      v18 = 0;
      *a6 = v16;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!v14)
  {
    v19 = [CKRecord alloc];
    v20 = [v13 recordType];
    v14 = [v19 initWithRecordType:v20 recordID:v10];
  }

  if (!v11[2](v11, v14))
  {
    v16 = 0;
LABEL_11:
    v14 = v14;
    v18 = v14;
    goto LABEL_14;
  }

  v25 = 0;
  v21 = [v13 writeRecord:v14 error:&v25];
  v16 = v25;
  if (v21)
  {
    if ([(MTIDCloudKitStore *)self canSyncBetweenDevices])
    {
      v22 = [(MTIDCloudKitStore *)self syncEngine];
      v27 = v10;
      v23 = [NSArray arrayWithObjects:&v27 count:1];
      [v22 saveRecordsWithIDs:v23 qualityOfService:a4];
    }

    goto LABEL_11;
  }

  if (a6)
  {
    goto LABEL_3;
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (id)promiseForRecordWithID:(id)a3 timeout:(double)a4 qualityOfService:(int64_t)a5 existingOnly:(BOOL)a6 updateRecordMaybe:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = objc_alloc_init(MTPromise);
  v15 = [(MTIDCloudKitStore *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C5FC;
  block[3] = &unk_100020BE0;
  block[4] = self;
  v23 = v12;
  v25 = v13;
  v26 = a5;
  v16 = v14;
  v24 = v16;
  v27 = a4;
  v28 = a6;
  v17 = v13;
  v18 = v12;
  dispatch_async(v15, block);

  v19 = v24;
  v20 = v16;

  return v16;
}

+ (id)recordZoneID
{
  v2 = [[CKRecordZoneID alloc] initWithZoneName:@"MT_IDZone" ownerName:CKCurrentUserDefaultName];

  return v2;
}

+ (id)referenceRecordIDForScheme:(id)a3 dsId:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 idNamespace];
  v8 = [v6 idType];

  if (v5 && v8 == 2)
  {
    v9 = [v7 stringByAppendingFormat:@"_%llx", objc_msgSend(v5, "unsignedLongLongValue")];

    v7 = v9;
  }

  v10 = [v7 mt_SHA1Base62String];
  v11 = [@"MT_ID" stringByAppendingString:v10];

  v12 = [CKRecordID alloc];
  v13 = +[MTIDCloudKitStore recordZoneID];
  v14 = [v12 initWithRecordName:v11 zoneID:v13];

  return v14;
}

+ (id)referenceDateOfRecord:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"secretKey"];
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

+ (id)keyOfReferenceDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSince1970];
    v5 = [NSString stringWithFormat:@"%lld", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)spanRecordIDForScheme:(id)a3 referenceRecordID:(id)a4 serialNumber:(unint64_t)a5
{
  v8 = a3;
  v9 = [a4 recordName];
  v10 = [v8 storagePoolSize];

  v11 = [NSString stringWithFormat:@"%@_%02lx", v9, a5 % v10];

  v12 = [CKRecordID alloc];
  v13 = [a1 recordZoneID];
  v14 = [v12 initWithRecordName:v11 zoneID:v13];

  return v14;
}

+ (BOOL)updateRecord:(id)a3 isSpanRecord:(BOOL)a4 scheme:(id)a5 expectedKey:(id)a6 expiration:(id)a7 reset:(BOOL)a8
{
  v8 = a8;
  v12 = a4;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v31 = a7;
  v16 = [v13 objectForKeyedSubscript:@"namespace"];
  v17 = [v13 objectForKeyedSubscript:@"secretKey"];
  v18 = [v14 idNamespace];
  v30 = v16;
  LODWORD(v16) = [v16 isEqualToString:v18];

  v19 = v16 ^ 1;
  if (v12 && (v19 & 1) == 0)
  {
    if ([v17 isEqualToString:v15] && !v8)
    {
      goto LABEL_5;
    }

LABEL_14:
    v24 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v14 idNamespace];
      *buf = 138412802;
      v33 = v13;
      v34 = 2112;
      v35 = v25;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "MetricsKit: Updating record %@ for namespace %@ key %@", buf, 0x20u);
    }

    v26 = [v14 idNamespace];
    [v13 setObject:v26 forKeyedSubscript:@"namespace"];

    [v13 setObject:v15 forKeyedSubscript:@"secretKey"];
    v22 = v31;
    [v13 setObject:v31 forKeyedSubscript:@"expiration"];
    v27 = +[NSUUID UUID];
    v28 = [v27 UUIDString];
    [v13 mt_setSecretValue:v28];

    [v13 mt_setSynchronized:0];
    goto LABEL_17;
  }

  if ((v19 | v8) == 1)
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
    v21 = !v12;
  }

  if (!v15)
  {
    v22 = v31;
    goto LABEL_18;
  }

  v22 = v31;
  if (v21)
  {
    [v13 setObject:v15 forKeyedSubscript:@"secretKey"];
    v23 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = v13;
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
  v3 = [(MTIDCloudKitStore *)self localDB];
  v4 = [v3 needsFetchRecords];

  if (v4)
  {
    v5 = [(MTIDCloudKitStore *)self localDB];
    [v5 setNeedsFetchRecords:0];

    v6 = [(MTIDCloudKitStore *)self syncEngine];
    [v6 fetchAllRecords];
  }
}

- (id)syncForSchemes:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:@"dsId"];
  v8 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v6;
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

  v16 = [(MTIDCloudKitStore *)self syncEngine];

  if (v16)
  {
    v17 = [(MTIDCloudKitStore *)self syncEngine];
    v18 = [v17 fetchRecordWithIDs:v8];

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

- (void)accountDidChangeWithUserRecordID:(id)a3
{
  v4 = a3;
  v5 = [(MTIDCloudKitStore *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MTIDCloudKitStore *)self localDB];
  v7 = [v4 recordName];
  v8 = [v6 setUserRecordIDName:v7];

  if (v8)
  {
    v9 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v4 recordName];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "MetricsKit: Updated user record with ID %@", &v11, 0xCu);
    }

    [MTInterprocessChangeNotifier notify:@"MTCloudKitAccountDidChangeNotification"];
  }
}

- (void)syncEngineDidStartWithError:(id)a3
{
  v4 = a3;
  v5 = [(MTIDCloudKitStore *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [v4 domain];
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%ld", v6, [v4 code]);

    v8 = [(MTIDCloudKitStore *)self localDB];
    [v8 setSyncStatusCode:v7];

    v9 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v4;
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
    v14 = [(MTIDCloudKitStore *)self localDB];
    [v14 setSyncStatusCode:@"Ready"];

    [(MTIDCloudKitStore *)self fetchChangesIfNeeded];
    v15 = [(MTIDCloudKitStore *)self localDB];
    v7 = [v15 pendingRecordIDs];

    if ([v7 count])
    {
      v16 = [(MTIDCloudKitStore *)self syncEngine];
      [v16 saveRecordsWithIDs:v7 qualityOfService:25];

      v9 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v18) = [v7 count];
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

- (id)recordWithID:(id)a3
{
  v4 = a3;
  v5 = [(MTIDCloudKitStore *)self localDB];
  v11 = 0;
  v6 = [v5 recordWithID:v4 error:&v11];
  v7 = v11;

  if (!v6)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 recordName];
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to read local record data with ID %@ error %@", buf, 0x16u);
    }
  }

  return v6;
}

- (void)recordWasSaved:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [v5 isEqualToString:@"MT_IDSecret"];

  if (v6)
  {
    [v4 mt_setSynchronized:1];
    v7 = [(MTIDCloudKitStore *)self localDB];
    v13 = 0;
    v8 = [v7 writeRecord:v4 error:&v13];
    v9 = v13;

    if ((v8 & 1) == 0)
    {
      v10 = MTMetricsKitOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v4 recordID];
        v12 = [v11 recordName];
        *buf = 138412546;
        v15 = v12;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to save local record data with ID %@ error %@", buf, 0x16u);
      }
    }
  }
}

- (void)recordWasFailedToSave:(id)a3
{
  v7 = a3;
  v4 = [v7 recordType];
  v5 = [v4 isEqualToString:@"MT_IDSecret"];

  if (v5)
  {
    v6 = [(MTIDCloudKitStore *)self promiseManager];
    [v6 finishPromisesOfRecord:v7];
  }
}

- (void)recordWasFetched:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [v5 isEqualToString:@"MT_IDSecret"];

  if (v6)
  {
    v7 = [v4 recordID];
    v8 = [v7 recordName];
    v9 = [v8 hasPrefix:@"MT_ID"];

    if (v9)
    {
      [v4 mt_setSynchronized:1];
      v10 = [(MTIDCloudKitStore *)self localDB];
      v16 = 0;
      v11 = [v10 writeRecord:v4 error:&v16];
      v12 = v16;

      if (v11)
      {
LABEL_9:

        goto LABEL_10;
      }

      v13 = MTMetricsKitOSLog();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        goto LABEL_9;
      }

      v14 = [v4 recordID];
      v15 = [v14 recordName];
      *buf = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to save local record data with ID %@ error %@", buf, 0x16u);
    }

    else
    {
      v12 = [(MTIDCloudKitStore *)self syncEngine];
      v13 = [v4 recordID];
      v17 = v13;
      v14 = [NSArray arrayWithObjects:&v17 count:1];
      [v12 deleteRecordsWithIDs:v14];
    }

    goto LABEL_8;
  }

LABEL_10:
}

- (void)recordWasDeleted:(id)a3
{
  v4 = a3;
  v5 = [(MTIDCloudKitStore *)self localDB];
  v10 = 0;
  v6 = [v5 deleteRecordWithID:v4 error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    v8 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v4 recordName];
      *buf = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to delete local record data with ID %@ error %@", buf, 0x16u);
    }
  }
}

- (void)cloudKitLocalDB:(id)a3 didChangeRecord:(id)a4
{
  v7 = a4;
  if ([v7 mt_isSynchronized])
  {
    v5 = [(MTIDCloudKitStore *)self promiseManager];
    [v5 finishPromisesOfRecord:v7];

    v6 = [v7 objectForKeyedSubscript:@"namespace"];
    [MTInterprocessChangeNotifier notify:v6];
  }
}

- (id)secretForScheme:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"appBundleID"];
  v9 = [(MTIDCloudKitStore *)self syncEngine];
  [v9 setApplicationBundleIdentifierOverrideForNetworkAttribution:v8];

  v10 = [v7 objectForKeyedSubscript:@"date"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = +[MTFrameworkEnvironment sharedEnvironment];
    v12 = [v13 date];
  }

  v34 = [v7 objectForKeyedSubscript:@"dsId"];
  v14 = [v7 objectForKeyedSubscript:@"reset"];
  v15 = [v14 BOOLValue];

  v16 = [v7 objectForKeyedSubscript:@"syncWaitTime"];
  v17 = [v7 objectForKeyedSubscript:@"existingOnly"];
  v18 = [v17 BOOLValue];

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
    v22 = [v6 idNamespace];
    v23 = @"NO";
    *buf = 138413058;
    *&buf[4] = v22;
    if (v18)
    {
      v23 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v44 = v23;
    LOWORD(v45) = 2048;
    *(&v45 + 2) = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "MetricsKit: Secret requested for scheme %@, date: %@, existingOnly: %@, timeout: %f", buf, 0x2Au);
  }

  if (!v18)
  {
    goto LABEL_14;
  }

  v24 = [MTIDCloudKitStore referenceRecordIDForScheme:v6 dsId:v34];
  v25 = [(MTIDCloudKitStore *)self localDB];
  v42 = 0;
  v26 = [v25 recordWithID:v24 error:&v42];
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
    v27 = [(MTIDCloudKitStore *)self referenceRecordForScheme:v6 dsId:v34 date:v12 reset:v15 timeout:v18 existingOnly:25 qualityOfService:v20];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10000E774;
    v35[3] = &unk_100020CA8;
    v36 = v6;
    v38 = self;
    v39 = buf;
    v37 = v12;
    v40 = v20;
    v41 = v18;
    v28 = [v27 thenWithBlock:v35];

    _Block_object_dispose(buf, 8);
    goto LABEL_15;
  }

  v30 = [[MTIDSecret alloc] initWithValue:&stru_100021530 effectiveDate:0 expirationDate:0 isSynchronize:0];
  v31 = MTMetricsKitOSLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v6 idNamespace];
    *buf = 138412290;
    *&buf[4] = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "MetricsKit: Secret doesn't exist, returning empty secret for scheme %@", buf, 0xCu);
  }

  v28 = [MTPromise promiseWithResult:v30];

LABEL_15:

  return v28;
}

- (id)resetSchemes:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"appBundleID"];
  v9 = [(MTIDCloudKitStore *)self syncEngine];
  [v9 setApplicationBundleIdentifierOverrideForNetworkAttribution:v8];

  v10 = [v7 objectForKeyedSubscript:@"dsId"];
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v6;
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

- (id)maintainSchemes:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"appBundleID"];
  v9 = [(MTIDCloudKitStore *)self syncEngine];
  [v9 setApplicationBundleIdentifierOverrideForNetworkAttribution:v8];

  if ([(MTIDCloudKitStore *)self canSyncBetweenDevices])
  {
    v10 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v22 = [v6 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MetricsKit: Performing maintenance on %d ID schemes", buf, 8u);
    }

    v11 = objc_alloc_init(MTPromise);
    v12 = [(MTIDCloudKitStore *)self accessQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000F210;
    v17[3] = &unk_100020D60;
    v17[4] = self;
    v18 = v7;
    v19 = v6;
    v13 = v11;
    v20 = v13;
    dispatch_async(v12, v17);

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
  v2 = [(MTIDCloudKitStore *)self localDB];
  [v2 clearData];
}

- (id)debugInfo
{
  v3 = [(MTIDCloudKitStore *)self localDB];
  v4 = [v3 allRecords];

  v11[0] = @"container";
  v5 = [(MTIDCloudKitStore *)self containerIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_100021530;
  }

  v11[1] = @"secrets";
  v12[0] = v7;
  v8 = [v4 mt_map:&stru_100020DA0];
  v12[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end