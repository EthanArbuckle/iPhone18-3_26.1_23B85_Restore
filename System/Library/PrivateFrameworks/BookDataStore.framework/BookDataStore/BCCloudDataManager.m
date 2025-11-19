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
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1E4646498;
    v41[3] = &unk_1E875ABE8;
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
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4709238();
    }
  }
}

- (void)mq_incrementCloudVersion
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(BCCloudDataManager *)self mq_cloudSyncVersions];
  [v2 setCloudVersion:{objc_msgSend(v2, "cloudVersion") + 1}];
  v3 = BDSCloudKitLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = [v2 cloudVersion];
    _os_log_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager Incremented cloudSyncVersion to %lld", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)startSyncToCKWithSyncManager:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E464679C;
  v10[3] = &unk_1E875B2A0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(BCCloudDataManager *)self _dirtyMutableCloudDataWithFetchLimit:64 synchronous:0 completion:v10];
}

- (void)_dirtyMutableCloudDataWithFetchLimit:(unint64_t)a3 synchronous:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(BCCloudDataManager *)self moc];

  if (v9)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1E4646B34;
    aBlock[3] = &unk_1E875B2C8;
    objc_copyWeak(v15, &location);
    v15[1] = a3;
    v14 = v8;
    v10 = _Block_copy(aBlock);
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4646AC0;
    block[3] = &unk_1E875A2E0;
    v18 = v8;
    dispatch_async(v12, block);
  }
}

- (void)dirtyMutableCloudDataWithFetchLimit:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E4647040;
  v8[3] = &unk_1E875B2F0;
  v9 = v6;
  v7 = v6;
  [(BCCloudDataManager *)self _dirtyMutableCloudDataWithFetchLimit:a3 synchronous:0 completion:v8];
}

- (id)mq_cloudSyncVersions
{
  v3 = [(BCCloudDataManager *)self moc];
  v4 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"BCCloudSyncVersions"];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v5 = MEMORY[0x1E696AE18];
  v6 = [(BCCloudDataManager *)self entityName];
  v7 = [v5 predicateWithFormat:@"dataType == %@", v6];
  [v4 setPredicate:v7];

  v13 = 0;
  v8 = [v3 executeFetchRequest:v4 error:&v13];
  v9 = v13;
  [(BCCloudDataManager *)self _logError:v9 at:@"mq_cloudSyncVersions"];
  v10 = [v8 firstObject];
  if (!v10)
  {
    v10 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"BCCloudSyncVersions" inManagedObjectContext:v3];
    v11 = [(BCCloudDataManager *)self entityName];
    [v10 setDataType:v11];
  }

  return v10;
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
  v14[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = *MEMORY[0x1E696A278];
    v14[0] = @"CoreDataError";
    v13[0] = v3;
    v13[1] = @"domain";
    v4 = a3;
    v5 = [v4 domain];
    v14[1] = v5;
    v13[2] = @"code";
    v6 = MEMORY[0x1E696AD98];
    v7 = [v4 code];

    v8 = [v6 numberWithInteger:v7];
    v14[2] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1002 userInfo:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)currentCloudSyncVersions:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudDataManager *)self moc];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(BCCloudDataManager *)self moc];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E464762C;
    v8[3] = &unk_1E87596B0;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [v6 performBlock:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [(BCCloudDataManager *)self responseQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E46475BC;
    block[3] = &unk_1E875A2E0;
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
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E4647A54;
    v19[3] = &unk_1E875B318;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E46479DC;
    block[3] = &unk_1E875A2E0;
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
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1E46481E4;
    v22[3] = &unk_1E875B368;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E464816C;
    block[3] = &unk_1E875A2E0;
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
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E4648E30;
    v11[3] = &unk_1E875A268;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4648DBC;
    block[3] = &unk_1E875A2E0;
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
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E4649418;
    v17[3] = &unk_1E875B3B8;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E46493A4;
    block[3] = &unk_1E875A2E0;
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
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E4649BDC;
    v11[3] = &unk_1E875A268;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E4649B68;
    block[3] = &unk_1E875A2E0;
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
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1E464A2EC;
      v11[3] = &unk_1E875A268;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E464A278;
    block[3] = &unk_1E875A2E0;
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
  v14 = sub_1E4648848;
  v15 = sub_1E4648858;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E464A614;
  v10[3] = &unk_1E875B3E0;
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
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = sub_1E464A8A0;
      v20 = &unk_1E875B408;
      objc_copyWeak(&v24, &location);
      v21 = v10;
      v22 = v11;
      v23 = v12;
      v14 = _Block_copy(&v17);
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E464A82C;
    block[3] = &unk_1E875A2E0;
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
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = sub_1E464ADF4;
        v21[3] = &unk_1E875B430;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E464AD7C;
    block[3] = &unk_1E875A2E0;
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
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1E464B474;
      v11[3] = &unk_1E875A268;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E464B3FC;
    block[3] = &unk_1E875A2E0;
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
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1E464BA3C;
      v15[3] = &unk_1E875B458;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E464B9C8;
    block[3] = &unk_1E875A2E0;
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
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_1E464C064;
      v25[3] = &unk_1E875B4A8;
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
      v23 = _Block_copy(v16);
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E464BFF0;
    block[3] = &unk_1E875A2E0;
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
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E464CA7C;
    v17[3] = &unk_1E875B4F8;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E464CA04;
    block[3] = &unk_1E875A2E0;
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
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E464DA5C;
    v11[3] = &unk_1E875A268;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E464D9E8;
    block[3] = &unk_1E875A2E0;
    v17 = v7;
    dispatch_async(v10, block);
  }
}

- (void)fetchCloudDataIncludingDeleted:(BOOL)a3 completion:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  if (a3)
  {
    [v6 predicateWithValue:1];
  }

  else
  {
    [v6 predicateWithFormat:@"deletedFlag == NO"];
  }
  v8 = ;
  [(BCCloudDataManager *)self cloudDatasWithPredicate:v8 completion:v7];
}

- (id)_fetchHistoryAfterToken:(id)a3 inMoc:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = BDSCloudKitLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [(BCCloudDataManager *)self entityName];
    *buf = 138543618;
    v19 = v11;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_INFO, "BCCloudDataManager %{public}@ getChangesSince _fetchHistoryAfterToken: %{public}@", buf, 0x16u);
  }

  v12 = [MEMORY[0x1E695D698] fetchHistoryAfterToken:v8];
  [v12 setResultType:5];
  [v12 setFetchBatchSize:1024];
  v17 = 0;
  v13 = [v9 executeRequest:v12 error:&v17];

  v14 = v17;
  if (a5)
  {
    v14 = v14;
    *a5 = v14;
  }

  v15 = *MEMORY[0x1E69E9840];

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
    v7 = [v6 isEqualToString:*MEMORY[0x1E696A250]];

    if (v7)
    {
      v8 = 1;
    }
  }

  return v8;
}

- (void)getChangesSince:(id)a3 forEntityClass:(Class)a4 completion:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E698F550] shared];
  v11 = [v10 verboseLoggingEnabled];

  if (v11)
  {
    v12 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(BCCloudDataManager *)self entityName];
      *buf = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_1E45E0000, v12, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %@ getChangesSince cloudSyncVersions:%@\\"", buf, 0x16u);
    }
  }

  v14 = [(BCCloudDataManager *)self moc];
  v15 = v14 == 0;

  if (v15)
  {
    v17 = [(BCCloudDataManager *)self responseQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E464E268;
    block[3] = &unk_1E875A3D0;
    block[4] = self;
    v25 = v9;
    dispatch_async(v17, block);
  }

  else
  {
    objc_initWeak(buf, self);
    v16 = [(BCCloudDataManager *)self moc];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E464E2EC;
    v19[3] = &unk_1E875B520;
    objc_copyWeak(v23, buf);
    v20 = v8;
    v21 = self;
    v23[1] = a4;
    v22 = v9;
    [v16 performBlock:v19];

    objc_destroyWeak(v23);
    objc_destroyWeak(buf);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BCCloudDataManager *)self moc];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(BCCloudDataManager *)self moc];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E464EDBC;
    v8[3] = &unk_1E87596B0;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [v6 performBlock:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [(BCCloudDataManager *)self responseQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E464ED48;
    block[3] = &unk_1E875A2E0;
    v13 = v4;
    dispatch_async(v7, block);
  }
}

- (void)hasSaltChangedWithCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = BDSCloudKitLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BCCloudDataManager *)self entityName];
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %@ #hasSaltChangedWithCompletion", buf, 0xCu);
  }

  v7 = [(BCCloudDataManager *)self moc];
  v8 = v7 == 0;

  if (v8)
  {
    v10 = [(BCCloudDataManager *)self responseQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E464F514;
    block[3] = &unk_1E875A2E0;
    v16 = v4;
    dispatch_async(v10, block);
  }

  else if (v4)
  {
    objc_initWeak(buf, self);
    v9 = [(BCCloudDataManager *)self moc];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E464F5D8;
    v12[3] = &unk_1E87596B0;
    objc_copyWeak(&v14, buf);
    v13 = v4;
    [v9 performBlock:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)diagnosticDirtyCloudDataInfos
{
  v3 = [(BCCloudDataManager *)self moc];

  if (v3)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_1E4648848;
    v15 = sub_1E4648858;
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(&location, self);
    v4 = [(BCCloudDataManager *)self moc];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E464FB48;
    v8[3] = &unk_1E875B570;
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
    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1E47092BC();
    }

    v5 = MEMORY[0x1E695E0F0];
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