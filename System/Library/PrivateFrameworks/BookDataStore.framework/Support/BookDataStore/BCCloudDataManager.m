@interface BCCloudDataManager
- (BCCloudDataManager)initWithCloudDataSource:(id)a3 entityName:(id)a4 notificationName:(id)a5 immutableClass:(Class)a6 mutableClass:(Class)a7 syncManager:(id)a8 cloudKitController:(id)a9 dataMapper:(id)a10 privacyDelegate:(id)a11;
- (BCCloudDataPrivacyDelegate)privacyDelegate;
- (BCCloudDataSyncProvider)syncManager;
- (BCCloudKitController)cloudKitController;
- (BDSCloudDataManagerMonitor)monitor;
- (BOOL)_isTokenInvalidError:(id)a3;
- (NSManagedObjectContext)moc;
- (id)_fetchHistoryAfterToken:(id)a3 inMoc:(id)a4 error:(id *)a5;
- (id)diagnosticDirtyCloudDataInfos;
- (id)mq_cloudSyncVersions;
- (id)mq_sanitizeError:(id)a3;
- (id)mutableCloudDataWithPredicate:(id)a3 sortDescriptors:(id)a4;
- (void)_dirtyMutableCloudDataWithFetchLimit:(unint64_t)a3 synchronous:(BOOL)a4 completion:(id)a5;
- (void)_logError:(id)a3 at:(id)a4;
- (void)cloudDatasWithPredicate:(id)a3 completion:(id)a4;
- (void)cloudDatasWithPredicate:(id)a3 sortDescriptors:(id)a4 maximumResultCount:(unint64_t)a5 filter:(id)a6 completion:(id)a7;
- (void)countWithPredicate:(id)a3 completion:(id)a4;
- (void)currentCloudSyncVersions:(id)a3;
- (void)deleteCloudDataForPredicate:(id)a3 completion:(id)a4;
- (void)dirtyMutableCloudDataWithFetchLimit:(unint64_t)a3 completion:(id)a4;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3;
- (void)failedRecordIDs:(id)a3 completion:(id)a4;
- (void)fetchCloudDataIncludingDeleted:(BOOL)a3 completion:(id)a4;
- (void)getChangesSince:(id)a3 forEntityClass:(Class)a4 completion:(id)a5;
- (void)hasSaltChangedWithCompletion:(id)a3;
- (void)mq_incrementCloudVersion;
- (void)mq_signalTransactions;
- (void)mutableCloudDataWithPredicate:(id)a3 sortDescriptors:(id)a4 synchronous:(BOOL)a5 completion:(id)a6;
- (void)removeCloudDataForPredicate:(id)a3 completion:(id)a4;
- (void)resolveConflictsForRecords:(id)a3 withResolvers:(id)a4 mergers:(id)a5 completion:(id)a6;
- (void)resolvedCloudDataForCloudData:(id)a3 withResolvers:(id)a4 mergers:(id)a5 predicate:(id)a6 completion:(id)a7;
- (void)setCloudData:(id)a3 predicate:(id)a4 mergers:(id)a5 isEqualCheckIgnoringEmptySalt:(BOOL)a6 completion:(id)a7;
- (void)setCloudData:(id)a3 predicate:(id)a4 propertyIDKey:(id)a5 mergers:(id)a6 isEqualCheckIgnoringEmptySalt:(BOOL)a7 completion:(id)a8;
- (void)startSyncToCKWithSyncManager:(id)a3 completion:(id)a4;
- (void)transformedCloudDatasWithPredicate:(id)a3 transformer:(id)a4 limit:(int64_t)a5 completion:(id)a6;
- (void)updateSyncGenerationFromCloudData:(id)a3 predicate:(id)a4 propertyIDKey:(id)a5 completion:(id)a6;
@end

@implementation BCCloudDataManager

- (NSManagedObjectContext)moc
{
  WeakRetained = objc_loadWeakRetained(&self->_moc);

  return WeakRetained;
}

- (BCCloudDataPrivacyDelegate)privacyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_privacyDelegate);

  return WeakRetained;
}

- (BCCloudDataManager)initWithCloudDataSource:(id)a3 entityName:(id)a4 notificationName:(id)a5 immutableClass:(Class)a6 mutableClass:(Class)a7 syncManager:(id)a8 cloudKitController:(id)a9 dataMapper:(id)a10 privacyDelegate:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a8;
  v21 = a9;
  v40 = a10;
  v22 = a11;
  v43.receiver = self;
  v43.super_class = BCCloudDataManager;
  v23 = [(BCCloudDataManager *)&v43 init];
  v24 = v23;
  if (!v23)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v23->_dataSource, a3);
  v25 = [v17 managedObjectContext];
  objc_storeWeak(&v24->_moc, v25);

  v26 = [v18 copy];
  entityName = v24->_entityName;
  v24->_entityName = v26;

  v28 = [v19 copy];
  notificationName = v24->_notificationName;
  v24->_notificationName = v28;

  v24->_immutableClass = a6;
  v24->_mutableClass = a7;
  objc_storeWeak(&v24->_syncManager, v20);
  objc_storeWeak(&v24->_cloudKitController, v21);
  objc_storeStrong(&v24->_dataMapper, a10);
  WeakRetained = objc_loadWeakRetained(&v24->_moc);

  if (!WeakRetained)
  {
    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_create("BookDataStore.DataManagerCallbackQueue", v31);
    responseQueue = v24->_responseQueue;
    v24->_responseQueue = v32;
  }

  if (BUIsRunningTests())
  {
    v34 = +[BCCloudDataNullPrivacyDelegate nullPrivacyDelegate];
    objc_storeWeak(&v24->_privacyDelegate, v34);
  }

  else
  {
    if (v22)
    {
      objc_storeWeak(&v24->_privacyDelegate, v22);
      goto LABEL_10;
    }

    v34 = objc_loadWeakRetained(&v24->_cloudKitController);
    v35 = [v34 privateCloudDatabaseController];
    objc_storeWeak(&v24->_privacyDelegate, v35);
  }

LABEL_10:
  v24->_signalDataChangedTransaction = v24->_notificationName != 0;
  v36 = objc_loadWeakRetained(&v24->_cloudKitController);
  v37 = [v36 didChangeContainer];

  if (v37)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100048584;
    v41[3] = &unk_100240FC8;
    v42 = v24;
    [(BCCloudDataManager *)v42 dissociateCloudDataFromSyncWithCompletion:v41];
  }

LABEL_12:

  return v24;
}

- (void)_logError:(id)a3 at:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0D58();
    }
  }
}

- (void)mq_incrementCloudVersion
{
  v2 = [(BCCloudDataManager *)self mq_cloudSyncVersions];
  [v2 setCloudVersion:{objc_msgSend(v2, "cloudVersion") + 1}];
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = [v2 cloudVersion];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager Incremented cloudSyncVersion to %lld", &v4, 0xCu);
  }
}

- (void)startSyncToCKWithSyncManager:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100048888;
  v8[3] = &unk_100241018;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(BCCloudDataManager *)self _dirtyMutableCloudDataWithFetchLimit:64 synchronous:0 completion:v8];
}

- (void)_dirtyMutableCloudDataWithFetchLimit:(unint64_t)a3 synchronous:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(BCCloudDataManager *)self moc];

  if (v9)
  {
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100048C20;
    v13[3] = &unk_100241040;
    objc_copyWeak(v15, &location);
    v15[1] = a3;
    v14 = v8;
    v10 = objc_retainBlock(v13);
    v11 = [(BCCloudDataManager *)self moc];
    if (v5)
    {
      [v11 performBlockAndWait:v10];
    }

    else
    {
      [v11 performBlock:v10];
    }

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100048BAC;
    block[3] = &unk_1002402E0;
    v18 = v8;
    dispatch_async(v12, block);
  }
}

- (void)dirtyMutableCloudDataWithFetchLimit:(unint64_t)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004912C;
  v7[3] = &unk_100241068;
  v8 = a4;
  v6 = v8;
  [(BCCloudDataManager *)self _dirtyMutableCloudDataWithFetchLimit:a3 synchronous:0 completion:v7];
}

- (id)mq_cloudSyncVersions
{
  v3 = [(BCCloudDataManager *)self moc];
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BCCloudSyncVersions"];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v5 = [(BCCloudDataManager *)self entityName];
  v6 = [NSPredicate predicateWithFormat:@"dataType == %@", v5];
  [v4 setPredicate:v6];

  v12 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v12];
  v8 = v12;
  [(BCCloudDataManager *)self _logError:v8 at:@"mq_cloudSyncVersions"];
  v9 = [v7 firstObject];
  if (!v9)
  {
    v9 = [NSEntityDescription insertNewObjectForEntityForName:@"BCCloudSyncVersions" inManagedObjectContext:v3];
    v10 = [(BCCloudDataManager *)self entityName];
    [v9 setDataType:v10];
  }

  return v9;
}

- (void)mq_signalTransactions
{
  v3 = [(BCCloudDataManager *)self syncManager];
  [v3 signalSyncToCK];

  if ([(BCCloudDataManager *)self signalDataChangedTransaction])
  {
    v7 = [(BCCloudDataManager *)self cloudKitController];
    v4 = [v7 transactionManager];
    v5 = [(BCCloudDataManager *)self entityName];
    v6 = [(BCCloudDataManager *)self notificationName];
    [v4 signalDataChangeTransactionForEntityName:v5 notificationName:v6];
  }
}

- (id)mq_sanitizeError:(id)a3
{
  if (a3)
  {
    v11[0] = @"CoreDataError";
    v10[0] = NSDebugDescriptionErrorKey;
    v10[1] = @"domain";
    v3 = a3;
    v4 = [v3 domain];
    v11[1] = v4;
    v10[2] = @"code";
    v5 = [v3 code];

    v6 = [NSNumber numberWithInteger:v5];
    v11[2] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

    v8 = [NSError errorWithDomain:@"BDSErrorDomain" code:1002 userInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)currentCloudSyncVersions:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudDataManager *)self moc];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(BCCloudDataManager *)self moc];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100049718;
    v8[3] = &unk_10023FE48;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [v6 performBlock:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000496A8;
    block[3] = &unk_1002402E0;
    v13 = v4;
    dispatch_async(v7, block);
  }
}

- (void)setCloudData:(id)a3 predicate:(id)a4 mergers:(id)a5 isEqualCheckIgnoringEmptySalt:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(BCCloudDataManager *)self moc];

  if (v16)
  {
    objc_initWeak(&location, self);
    v17 = [(BCCloudDataManager *)self moc];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100049B40;
    v19[3] = &unk_100241090;
    objc_copyWeak(&v25, &location);
    v20 = v12;
    v21 = v13;
    v26 = a6;
    v22 = v14;
    v23 = self;
    v24 = v15;
    [v17 performBlock:v19];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100049AC8;
    block[3] = &unk_1002402E0;
    v29 = v15;
    dispatch_async(v18, block);
  }
}

- (void)setCloudData:(id)a3 predicate:(id)a4 propertyIDKey:(id)a5 mergers:(id)a6 isEqualCheckIgnoringEmptySalt:(BOOL)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = [(BCCloudDataManager *)self moc];

  if (v19)
  {
    objc_initWeak(&location, self);
    v20 = [(BCCloudDataManager *)self moc];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10004A2D0;
    v22[3] = &unk_1002410E0;
    objc_copyWeak(&v29, &location);
    v23 = v15;
    v24 = v16;
    v25 = v14;
    v30 = a7;
    v26 = v17;
    v27 = self;
    v28 = v18;
    [v20 performBlock:v22];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    v21 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A258;
    block[3] = &unk_1002402E0;
    v33 = v18;
    dispatch_async(v21, block);
  }
}

- (void)removeCloudDataForPredicate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudDataManager *)self moc];

  if (v8)
  {
    objc_initWeak(&location, self);
    v9 = [(BCCloudDataManager *)self moc];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004AF1C;
    v11[3] = &unk_100240228;
    objc_copyWeak(&v14, &location);
    v12 = v6;
    v13 = v7;
    [v9 performBlock:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AEA8;
    block[3] = &unk_1002402E0;
    v17 = v7;
    dispatch_async(v10, block);
  }
}

- (void)updateSyncGenerationFromCloudData:(id)a3 predicate:(id)a4 propertyIDKey:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(BCCloudDataManager *)self moc];

  if (v14)
  {
    objc_initWeak(&location, self);
    v15 = [(BCCloudDataManager *)self moc];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004B504;
    v17[3] = &unk_100241130;
    objc_copyWeak(&v22, &location);
    v18 = v11;
    v19 = v10;
    v20 = v12;
    v21 = v13;
    [v15 performBlock:v17];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B490;
    block[3] = &unk_1002402E0;
    v25 = v13;
    dispatch_async(v16, block);
  }
}

- (void)deleteCloudDataForPredicate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudDataManager *)self moc];

  if (v8)
  {
    objc_initWeak(&location, self);
    v9 = [(BCCloudDataManager *)self moc];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004BCC8;
    v11[3] = &unk_100240228;
    objc_copyWeak(&v14, &location);
    v12 = v6;
    v13 = v7;
    [v9 performBlock:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BC54;
    block[3] = &unk_1002402E0;
    v17 = v7;
    dispatch_async(v10, block);
  }
}

- (void)countWithPredicate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudDataManager *)self moc];

  if (v8)
  {
    if (v7)
    {
      objc_initWeak(&location, self);
      v9 = [(BCCloudDataManager *)self moc];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10004C3D8;
      v11[3] = &unk_100240228;
      objc_copyWeak(&v14, &location);
      v12 = v6;
      v13 = v7;
      [v9 performBlock:v11];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v10 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C364;
    block[3] = &unk_1002402E0;
    v17 = v7;
    dispatch_async(v10, block);
  }
}

- (id)mutableCloudDataWithPredicate:(id)a3 sortDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10004A934;
  v15 = sub_10004A944;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004C700;
  v10[3] = &unk_100241158;
  v10[4] = &v11;
  [(BCCloudDataManager *)self mutableCloudDataWithPredicate:v6 sortDescriptors:0 synchronous:1 completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)mutableCloudDataWithPredicate:(id)a3 sortDescriptors:(id)a4 synchronous:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(BCCloudDataManager *)self moc];

  if (v13)
  {
    if (v12)
    {
      objc_initWeak(&location, self);
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_10004C98C;
      v20 = &unk_100241180;
      objc_copyWeak(&v24, &location);
      v21 = v10;
      v22 = v11;
      v23 = v12;
      v14 = objc_retainBlock(&v17);
      v15 = [(BCCloudDataManager *)self moc:v17];
      if (v7)
      {
        [v15 performBlockAndWait:v14];
      }

      else
      {
        [v15 performBlock:v14];
      }

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v16 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C918;
    block[3] = &unk_1002402E0;
    v27 = v12;
    dispatch_async(v16, block);
  }
}

- (void)cloudDatasWithPredicate:(id)a3 sortDescriptors:(id)a4 maximumResultCount:(unint64_t)a5 filter:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(BCCloudDataManager *)self moc];

  if (v16)
  {
    if (v15)
    {
      objc_initWeak(&location, self);
      if (a5)
      {
        v17 = a5;
      }

      else
      {
        v17 = -1;
      }

      v18 = [(BCCloudDataManager *)self moc];

      if (v18)
      {
        v19 = [(BCCloudDataManager *)self moc];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10004CEE0;
        v21[3] = &unk_1002411A8;
        objc_copyWeak(v26, &location);
        v22 = v12;
        v23 = v13;
        v24 = v14;
        v26[1] = v17;
        v25 = v15;
        [v19 performBlock:v21];

        objc_destroyWeak(v26);
      }

      objc_destroyWeak(&location);
    }
  }

  else
  {
    v20 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004CE68;
    block[3] = &unk_1002402E0;
    v29 = v15;
    dispatch_async(v20, block);
  }
}

- (void)cloudDatasWithPredicate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudDataManager *)self moc];

  if (v8)
  {
    if (v7)
    {
      objc_initWeak(&location, self);
      v9 = [(BCCloudDataManager *)self moc];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10004D560;
      v11[3] = &unk_100240228;
      objc_copyWeak(&v14, &location);
      v12 = v6;
      v13 = v7;
      [v9 performBlock:v11];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v10 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D4E8;
    block[3] = &unk_1002402E0;
    v17 = v7;
    dispatch_async(v10, block);
  }
}

- (void)transformedCloudDatasWithPredicate:(id)a3 transformer:(id)a4 limit:(int64_t)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(BCCloudDataManager *)self moc];

  if (v12)
  {
    if (v11)
    {
      objc_initWeak(&location, self);
      v13 = [(BCCloudDataManager *)self moc];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10004DB28;
      v15[3] = &unk_1002411D0;
      objc_copyWeak(&v19, &location);
      v16 = v9;
      v17 = v10;
      v18 = v11;
      [v13 performBlock:v15];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v14 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DAB4;
    block[3] = &unk_1002402E0;
    v22 = v11;
    dispatch_async(v14, block);
  }
}

- (void)resolvedCloudDataForCloudData:(id)a3 withResolvers:(id)a4 mergers:(id)a5 predicate:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(BCCloudDataManager *)self moc];

  if (v17)
  {
    v18 = [(BCCloudDataManager *)self privacyDelegate];
    [v12 setPrivacyDelegate:v18];

    v19 = [v12 systemFields];
    v20 = [v19 recordID];

    if (v20)
    {
      objc_initWeak(&location, self);
      v21 = [(BCCloudDataManager *)self syncManager];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10004E150;
      v25[3] = &unk_100241220;
      objc_copyWeak(&v31, &location);
      v26 = v15;
      v27 = v13;
      v28 = self;
      v29 = v14;
      v30 = v16;
      [v21 fetchRecordForRecordID:v20 completion:v25];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    else
    {
      v23 = objc_retainBlock(v16);
      v24 = v23;
      if (v23)
      {
        (*(v23 + 2))(v23, 0, 0);
      }
    }
  }

  else
  {
    v22 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004E0DC;
    block[3] = &unk_1002402E0;
    v34 = v16;
    dispatch_async(v22, block);

    v20 = v34;
  }
}

- (void)resolveConflictsForRecords:(id)a3 withResolvers:(id)a4 mergers:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(BCCloudDataManager *)self moc];

  if (v14)
  {
    objc_initWeak(&location, self);
    v15 = [(BCCloudDataManager *)self moc];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004EB68;
    v17[3] = &unk_100241270;
    objc_copyWeak(&v23, &location);
    v18 = v10;
    v19 = v11;
    v20 = self;
    v21 = v12;
    v22 = v13;
    [v15 performBlock:v17];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004EAF0;
    block[3] = &unk_1002402E0;
    v26 = v13;
    dispatch_async(v16, block);
  }
}

- (void)failedRecordIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCCloudDataManager *)self moc];

  if (v8)
  {
    objc_initWeak(&location, self);
    v9 = [(BCCloudDataManager *)self moc];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004FB48;
    v11[3] = &unk_100240228;
    objc_copyWeak(&v14, &location);
    v12 = v6;
    v13 = v7;
    [v9 performBlock:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004FAD4;
    block[3] = &unk_1002402E0;
    v17 = v7;
    dispatch_async(v10, block);
  }
}

- (void)fetchCloudDataIncludingDeleted:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    [NSPredicate predicateWithValue:1];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"deletedFlag == NO"];
  }
  v7 = ;
  [(BCCloudDataManager *)self cloudDatasWithPredicate:v7 completion:v6];
}

- (id)_fetchHistoryAfterToken:(id)a3 inMoc:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = sub_100002660();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [(BCCloudDataManager *)self entityName];
    *buf = 138543618;
    v18 = v11;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "BCCloudDataManager %{public}@ getChangesSince _fetchHistoryAfterToken: %{public}@", buf, 0x16u);
  }

  v12 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:v8];
  [v12 setResultType:5];
  [v12 setFetchBatchSize:1024];
  v16 = 0;
  v13 = [v9 executeRequest:v12 error:&v16];

  v14 = v16;
  if (a5)
  {
    v14 = v14;
    *a5 = v14;
  }

  return v13;
}

- (BOOL)_isTokenInvalidError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  v5 = v4 == 134501 || v4 == 134301;
  v8 = 0;
  if (v5)
  {
    v6 = [v3 domain];
    v7 = [v6 isEqualToString:NSCocoaErrorDomain];

    if (v7)
    {
      v8 = 1;
    }
  }

  return v8;
}

- (void)getChangesSince:(id)a3 forEntityClass:(Class)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[BULogUtilities shared];
  v11 = [v10 verboseLoggingEnabled];

  if (v11)
  {
    v12 = sub_10000DB80();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(BCCloudDataManager *)self entityName];
      *buf = 138412546;
      v26 = v13;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %@ getChangesSince cloudSyncVersions:%@\\"", buf, 0x16u);
    }
  }

  v14 = [(BCCloudDataManager *)self moc];
  v15 = v14 == 0;

  if (v15)
  {
    v17 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050354;
    block[3] = &unk_10023FED8;
    block[4] = self;
    v24 = v9;
    dispatch_async(v17, block);
  }

  else
  {
    objc_initWeak(buf, self);
    v16 = [(BCCloudDataManager *)self moc];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000503D8;
    v18[3] = &unk_100241298;
    objc_copyWeak(v22, buf);
    v19 = v8;
    v20 = self;
    v22[1] = a4;
    v21 = v9;
    [v16 performBlock:v18];

    objc_destroyWeak(v22);
    objc_destroyWeak(buf);
  }
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudDataManager *)self moc];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(BCCloudDataManager *)self moc];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100050EA8;
    v8[3] = &unk_10023FE48;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [v6 performBlock:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050E34;
    block[3] = &unk_1002402E0;
    v13 = v4;
    dispatch_async(v7, block);
  }
}

- (void)hasSaltChangedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BCCloudDataManager *)self entityName];
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %@ #hasSaltChangedWithCompletion", buf, 0xCu);
  }

  v7 = [(BCCloudDataManager *)self moc];
  v8 = v7 == 0;

  if (v8)
  {
    v10 = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100051600;
    block[3] = &unk_1002402E0;
    v15 = v4;
    dispatch_async(v10, block);
  }

  else if (v4)
  {
    objc_initWeak(buf, self);
    v9 = [(BCCloudDataManager *)self moc];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000516C4;
    v11[3] = &unk_10023FE48;
    objc_copyWeak(&v13, buf);
    v12 = v4;
    [v9 performBlock:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (id)diagnosticDirtyCloudDataInfos
{
  v3 = [(BCCloudDataManager *)self moc];

  if (v3)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_10004A934;
    v15 = sub_10004A944;
    v16 = objc_alloc_init(NSMutableArray);
    objc_initWeak(&location, self);
    v4 = [(BCCloudDataManager *)self moc];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100051C34;
    v8[3] = &unk_1002412E8;
    objc_copyWeak(&v9, &location);
    v8[4] = &v11;
    [v4 performBlockAndWait:v8];

    v5 = v12[5];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0DDC();
    }

    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (BDSCloudDataManagerMonitor)monitor
{
  WeakRetained = objc_loadWeakRetained(&self->_monitor);

  return WeakRetained;
}

- (BCCloudDataSyncProvider)syncManager
{
  WeakRetained = objc_loadWeakRetained(&self->_syncManager);

  return WeakRetained;
}

- (BCCloudKitController)cloudKitController
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitController);

  return WeakRetained;
}

@end