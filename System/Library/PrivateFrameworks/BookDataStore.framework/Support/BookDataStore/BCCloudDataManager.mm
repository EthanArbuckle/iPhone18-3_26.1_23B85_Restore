@interface BCCloudDataManager
- (BCCloudDataManager)initWithCloudDataSource:(id)source entityName:(id)name notificationName:(id)notificationName immutableClass:(Class)class mutableClass:(Class)mutableClass syncManager:(id)manager cloudKitController:(id)controller dataMapper:(id)self0 privacyDelegate:(id)self1;
- (BCCloudDataPrivacyDelegate)privacyDelegate;
- (BCCloudDataSyncProvider)syncManager;
- (BCCloudKitController)cloudKitController;
- (BDSCloudDataManagerMonitor)monitor;
- (BOOL)_isTokenInvalidError:(id)error;
- (NSManagedObjectContext)moc;
- (id)_fetchHistoryAfterToken:(id)token inMoc:(id)moc error:(id *)error;
- (id)diagnosticDirtyCloudDataInfos;
- (id)mq_cloudSyncVersions;
- (id)mq_sanitizeError:(id)error;
- (id)mutableCloudDataWithPredicate:(id)predicate sortDescriptors:(id)descriptors;
- (void)_dirtyMutableCloudDataWithFetchLimit:(unint64_t)limit synchronous:(BOOL)synchronous completion:(id)completion;
- (void)_logError:(id)error at:(id)at;
- (void)cloudDatasWithPredicate:(id)predicate completion:(id)completion;
- (void)cloudDatasWithPredicate:(id)predicate sortDescriptors:(id)descriptors maximumResultCount:(unint64_t)count filter:(id)filter completion:(id)completion;
- (void)countWithPredicate:(id)predicate completion:(id)completion;
- (void)currentCloudSyncVersions:(id)versions;
- (void)deleteCloudDataForPredicate:(id)predicate completion:(id)completion;
- (void)dirtyMutableCloudDataWithFetchLimit:(unint64_t)limit completion:(id)completion;
- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion;
- (void)failedRecordIDs:(id)ds completion:(id)completion;
- (void)fetchCloudDataIncludingDeleted:(BOOL)deleted completion:(id)completion;
- (void)getChangesSince:(id)since forEntityClass:(Class)class completion:(id)completion;
- (void)hasSaltChangedWithCompletion:(id)completion;
- (void)mq_incrementCloudVersion;
- (void)mq_signalTransactions;
- (void)mutableCloudDataWithPredicate:(id)predicate sortDescriptors:(id)descriptors synchronous:(BOOL)synchronous completion:(id)completion;
- (void)removeCloudDataForPredicate:(id)predicate completion:(id)completion;
- (void)resolveConflictsForRecords:(id)records withResolvers:(id)resolvers mergers:(id)mergers completion:(id)completion;
- (void)resolvedCloudDataForCloudData:(id)data withResolvers:(id)resolvers mergers:(id)mergers predicate:(id)predicate completion:(id)completion;
- (void)setCloudData:(id)data predicate:(id)predicate mergers:(id)mergers isEqualCheckIgnoringEmptySalt:(BOOL)salt completion:(id)completion;
- (void)setCloudData:(id)data predicate:(id)predicate propertyIDKey:(id)key mergers:(id)mergers isEqualCheckIgnoringEmptySalt:(BOOL)salt completion:(id)completion;
- (void)startSyncToCKWithSyncManager:(id)manager completion:(id)completion;
- (void)transformedCloudDatasWithPredicate:(id)predicate transformer:(id)transformer limit:(int64_t)limit completion:(id)completion;
- (void)updateSyncGenerationFromCloudData:(id)data predicate:(id)predicate propertyIDKey:(id)key completion:(id)completion;
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

- (BCCloudDataManager)initWithCloudDataSource:(id)source entityName:(id)name notificationName:(id)notificationName immutableClass:(Class)class mutableClass:(Class)mutableClass syncManager:(id)manager cloudKitController:(id)controller dataMapper:(id)self0 privacyDelegate:(id)self1
{
  sourceCopy = source;
  nameCopy = name;
  notificationNameCopy = notificationName;
  managerCopy = manager;
  controllerCopy = controller;
  mapperCopy = mapper;
  delegateCopy = delegate;
  v43.receiver = self;
  v43.super_class = BCCloudDataManager;
  v23 = [(BCCloudDataManager *)&v43 init];
  v24 = v23;
  if (!v23)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v23->_dataSource, source);
  managedObjectContext = [sourceCopy managedObjectContext];
  objc_storeWeak(&v24->_moc, managedObjectContext);

  v26 = [nameCopy copy];
  entityName = v24->_entityName;
  v24->_entityName = v26;

  v28 = [notificationNameCopy copy];
  notificationName = v24->_notificationName;
  v24->_notificationName = v28;

  v24->_immutableClass = class;
  v24->_mutableClass = mutableClass;
  objc_storeWeak(&v24->_syncManager, managerCopy);
  objc_storeWeak(&v24->_cloudKitController, controllerCopy);
  objc_storeStrong(&v24->_dataMapper, mapper);
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
    if (delegateCopy)
    {
      objc_storeWeak(&v24->_privacyDelegate, delegateCopy);
      goto LABEL_10;
    }

    v34 = objc_loadWeakRetained(&v24->_cloudKitController);
    privateCloudDatabaseController = [v34 privateCloudDatabaseController];
    objc_storeWeak(&v24->_privacyDelegate, privateCloudDatabaseController);
  }

LABEL_10:
  v24->_signalDataChangedTransaction = v24->_notificationName != 0;
  v36 = objc_loadWeakRetained(&v24->_cloudKitController);
  didChangeContainer = [v36 didChangeContainer];

  if (didChangeContainer)
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

- (void)_logError:(id)error at:(id)at
{
  errorCopy = error;
  atCopy = at;
  if (errorCopy)
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
  mq_cloudSyncVersions = [(BCCloudDataManager *)self mq_cloudSyncVersions];
  [mq_cloudSyncVersions setCloudVersion:{objc_msgSend(mq_cloudSyncVersions, "cloudVersion") + 1}];
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    cloudVersion = [mq_cloudSyncVersions cloudVersion];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager Incremented cloudSyncVersion to %lld", &v4, 0xCu);
  }
}

- (void)startSyncToCKWithSyncManager:(id)manager completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100048888;
  v8[3] = &unk_100241018;
  managerCopy = manager;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = managerCopy;
  [(BCCloudDataManager *)self _dirtyMutableCloudDataWithFetchLimit:64 synchronous:0 completion:v8];
}

- (void)_dirtyMutableCloudDataWithFetchLimit:(unint64_t)limit synchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  completionCopy = completion;
  v9 = [(BCCloudDataManager *)self moc];

  if (v9)
  {
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100048C20;
    v13[3] = &unk_100241040;
    objc_copyWeak(v15, &location);
    v15[1] = limit;
    v14 = completionCopy;
    v10 = objc_retainBlock(v13);
    v11 = [(BCCloudDataManager *)self moc];
    if (synchronousCopy)
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
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100048BAC;
    block[3] = &unk_1002402E0;
    v18 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)dirtyMutableCloudDataWithFetchLimit:(unint64_t)limit completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004912C;
  v7[3] = &unk_100241068;
  completionCopy = completion;
  v6 = completionCopy;
  [(BCCloudDataManager *)self _dirtyMutableCloudDataWithFetchLimit:limit synchronous:0 completion:v7];
}

- (id)mq_cloudSyncVersions
{
  v3 = [(BCCloudDataManager *)self moc];
  v4 = [[NSFetchRequest alloc] initWithEntityName:@"BCCloudSyncVersions"];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  entityName = [(BCCloudDataManager *)self entityName];
  v6 = [NSPredicate predicateWithFormat:@"dataType == %@", entityName];
  [v4 setPredicate:v6];

  v12 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v12];
  v8 = v12;
  [(BCCloudDataManager *)self _logError:v8 at:@"mq_cloudSyncVersions"];
  firstObject = [v7 firstObject];
  if (!firstObject)
  {
    firstObject = [NSEntityDescription insertNewObjectForEntityForName:@"BCCloudSyncVersions" inManagedObjectContext:v3];
    entityName2 = [(BCCloudDataManager *)self entityName];
    [firstObject setDataType:entityName2];
  }

  return firstObject;
}

- (void)mq_signalTransactions
{
  syncManager = [(BCCloudDataManager *)self syncManager];
  [syncManager signalSyncToCK];

  if ([(BCCloudDataManager *)self signalDataChangedTransaction])
  {
    cloudKitController = [(BCCloudDataManager *)self cloudKitController];
    transactionManager = [cloudKitController transactionManager];
    entityName = [(BCCloudDataManager *)self entityName];
    notificationName = [(BCCloudDataManager *)self notificationName];
    [transactionManager signalDataChangeTransactionForEntityName:entityName notificationName:notificationName];
  }
}

- (id)mq_sanitizeError:(id)error
{
  if (error)
  {
    v11[0] = @"CoreDataError";
    v10[0] = NSDebugDescriptionErrorKey;
    v10[1] = @"domain";
    errorCopy = error;
    domain = [errorCopy domain];
    v11[1] = domain;
    v10[2] = @"code";
    code = [errorCopy code];

    v6 = [NSNumber numberWithInteger:code];
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

- (void)currentCloudSyncVersions:(id)versions
{
  versionsCopy = versions;
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
    v9 = versionsCopy;
    [v6 performBlock:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000496A8;
    block[3] = &unk_1002402E0;
    v13 = versionsCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)setCloudData:(id)data predicate:(id)predicate mergers:(id)mergers isEqualCheckIgnoringEmptySalt:(BOOL)salt completion:(id)completion
{
  dataCopy = data;
  predicateCopy = predicate;
  mergersCopy = mergers;
  completionCopy = completion;
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
    v20 = dataCopy;
    v21 = predicateCopy;
    saltCopy = salt;
    v22 = mergersCopy;
    selfCopy = self;
    v24 = completionCopy;
    [v17 performBlock:v19];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100049AC8;
    block[3] = &unk_1002402E0;
    v29 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)setCloudData:(id)data predicate:(id)predicate propertyIDKey:(id)key mergers:(id)mergers isEqualCheckIgnoringEmptySalt:(BOOL)salt completion:(id)completion
{
  dataCopy = data;
  predicateCopy = predicate;
  keyCopy = key;
  mergersCopy = mergers;
  completionCopy = completion;
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
    v23 = predicateCopy;
    v24 = keyCopy;
    v25 = dataCopy;
    saltCopy = salt;
    v26 = mergersCopy;
    selfCopy = self;
    v28 = completionCopy;
    [v20 performBlock:v22];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A258;
    block[3] = &unk_1002402E0;
    v33 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)removeCloudDataForPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
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
    v12 = predicateCopy;
    v13 = completionCopy;
    [v9 performBlock:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AEA8;
    block[3] = &unk_1002402E0;
    v17 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)updateSyncGenerationFromCloudData:(id)data predicate:(id)predicate propertyIDKey:(id)key completion:(id)completion
{
  dataCopy = data;
  predicateCopy = predicate;
  keyCopy = key;
  completionCopy = completion;
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
    v18 = predicateCopy;
    v19 = dataCopy;
    v20 = keyCopy;
    v21 = completionCopy;
    [v15 performBlock:v17];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B490;
    block[3] = &unk_1002402E0;
    v25 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)deleteCloudDataForPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
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
    v12 = predicateCopy;
    v13 = completionCopy;
    [v9 performBlock:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BC54;
    block[3] = &unk_1002402E0;
    v17 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)countWithPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  v8 = [(BCCloudDataManager *)self moc];

  if (v8)
  {
    if (completionCopy)
    {
      objc_initWeak(&location, self);
      v9 = [(BCCloudDataManager *)self moc];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10004C3D8;
      v11[3] = &unk_100240228;
      objc_copyWeak(&v14, &location);
      v12 = predicateCopy;
      v13 = completionCopy;
      [v9 performBlock:v11];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C364;
    block[3] = &unk_1002402E0;
    v17 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (id)mutableCloudDataWithPredicate:(id)predicate sortDescriptors:(id)descriptors
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
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
  [(BCCloudDataManager *)self mutableCloudDataWithPredicate:predicateCopy sortDescriptors:0 synchronous:1 completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)mutableCloudDataWithPredicate:(id)predicate sortDescriptors:(id)descriptors synchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  completionCopy = completion;
  v13 = [(BCCloudDataManager *)self moc];

  if (v13)
  {
    if (completionCopy)
    {
      objc_initWeak(&location, self);
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_10004C98C;
      v20 = &unk_100241180;
      objc_copyWeak(&v24, &location);
      v21 = predicateCopy;
      v22 = descriptorsCopy;
      v23 = completionCopy;
      v14 = objc_retainBlock(&v17);
      v15 = [(BCCloudDataManager *)self moc:v17];
      if (synchronousCopy)
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
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C918;
    block[3] = &unk_1002402E0;
    v27 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)cloudDatasWithPredicate:(id)predicate sortDescriptors:(id)descriptors maximumResultCount:(unint64_t)count filter:(id)filter completion:(id)completion
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  filterCopy = filter;
  completionCopy = completion;
  v16 = [(BCCloudDataManager *)self moc];

  if (v16)
  {
    if (completionCopy)
    {
      objc_initWeak(&location, self);
      if (count)
      {
        countCopy = count;
      }

      else
      {
        countCopy = -1;
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
        v22 = predicateCopy;
        v23 = descriptorsCopy;
        v24 = filterCopy;
        v26[1] = countCopy;
        v25 = completionCopy;
        [v19 performBlock:v21];

        objc_destroyWeak(v26);
      }

      objc_destroyWeak(&location);
    }
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004CE68;
    block[3] = &unk_1002402E0;
    v29 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)cloudDatasWithPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  v8 = [(BCCloudDataManager *)self moc];

  if (v8)
  {
    if (completionCopy)
    {
      objc_initWeak(&location, self);
      v9 = [(BCCloudDataManager *)self moc];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10004D560;
      v11[3] = &unk_100240228;
      objc_copyWeak(&v14, &location);
      v12 = predicateCopy;
      v13 = completionCopy;
      [v9 performBlock:v11];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D4E8;
    block[3] = &unk_1002402E0;
    v17 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)transformedCloudDatasWithPredicate:(id)predicate transformer:(id)transformer limit:(int64_t)limit completion:(id)completion
{
  predicateCopy = predicate;
  transformerCopy = transformer;
  completionCopy = completion;
  v12 = [(BCCloudDataManager *)self moc];

  if (v12)
  {
    if (completionCopy)
    {
      objc_initWeak(&location, self);
      v13 = [(BCCloudDataManager *)self moc];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10004DB28;
      v15[3] = &unk_1002411D0;
      objc_copyWeak(&v19, &location);
      v16 = predicateCopy;
      v17 = transformerCopy;
      v18 = completionCopy;
      [v13 performBlock:v15];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004DAB4;
    block[3] = &unk_1002402E0;
    v22 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)resolvedCloudDataForCloudData:(id)data withResolvers:(id)resolvers mergers:(id)mergers predicate:(id)predicate completion:(id)completion
{
  dataCopy = data;
  resolversCopy = resolvers;
  mergersCopy = mergers;
  predicateCopy = predicate;
  completionCopy = completion;
  v17 = [(BCCloudDataManager *)self moc];

  if (v17)
  {
    privacyDelegate = [(BCCloudDataManager *)self privacyDelegate];
    [dataCopy setPrivacyDelegate:privacyDelegate];

    systemFields = [dataCopy systemFields];
    recordID = [systemFields recordID];

    if (recordID)
    {
      objc_initWeak(&location, self);
      syncManager = [(BCCloudDataManager *)self syncManager];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10004E150;
      v25[3] = &unk_100241220;
      objc_copyWeak(&v31, &location);
      v26 = predicateCopy;
      v27 = resolversCopy;
      selfCopy = self;
      v29 = mergersCopy;
      v30 = completionCopy;
      [syncManager fetchRecordForRecordID:recordID completion:v25];

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
    }

    else
    {
      v23 = objc_retainBlock(completionCopy);
      v24 = v23;
      if (v23)
      {
        (*(v23 + 2))(v23, 0, 0);
      }
    }
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004E0DC;
    block[3] = &unk_1002402E0;
    v34 = completionCopy;
    dispatch_async(responseQueue, block);

    recordID = v34;
  }
}

- (void)resolveConflictsForRecords:(id)records withResolvers:(id)resolvers mergers:(id)mergers completion:(id)completion
{
  recordsCopy = records;
  resolversCopy = resolvers;
  mergersCopy = mergers;
  completionCopy = completion;
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
    v18 = recordsCopy;
    v19 = resolversCopy;
    selfCopy = self;
    v21 = mergersCopy;
    v22 = completionCopy;
    [v15 performBlock:v17];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004EAF0;
    block[3] = &unk_1002402E0;
    v26 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)failedRecordIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
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
    v12 = dsCopy;
    v13 = completionCopy;
    [v9 performBlock:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004FAD4;
    block[3] = &unk_1002402E0;
    v17 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)fetchCloudDataIncludingDeleted:(BOOL)deleted completion:(id)completion
{
  completionCopy = completion;
  if (deleted)
  {
    [NSPredicate predicateWithValue:1];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"deletedFlag == NO"];
  }
  v7 = ;
  [(BCCloudDataManager *)self cloudDatasWithPredicate:v7 completion:completionCopy];
}

- (id)_fetchHistoryAfterToken:(id)token inMoc:(id)moc error:(id *)error
{
  tokenCopy = token;
  mocCopy = moc;
  v10 = sub_100002660();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    entityName = [(BCCloudDataManager *)self entityName];
    *buf = 138543618;
    v18 = entityName;
    v19 = 2114;
    v20 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "BCCloudDataManager %{public}@ getChangesSince _fetchHistoryAfterToken: %{public}@", buf, 0x16u);
  }

  v12 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:tokenCopy];
  [v12 setResultType:5];
  [v12 setFetchBatchSize:1024];
  v16 = 0;
  v13 = [mocCopy executeRequest:v12 error:&v16];

  v14 = v16;
  if (error)
  {
    v14 = v14;
    *error = v14;
  }

  return v13;
}

- (BOOL)_isTokenInvalidError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  v5 = code == 134501 || code == 134301;
  v8 = 0;
  if (v5)
  {
    domain = [errorCopy domain];
    v7 = [domain isEqualToString:NSCocoaErrorDomain];

    if (v7)
    {
      v8 = 1;
    }
  }

  return v8;
}

- (void)getChangesSince:(id)since forEntityClass:(Class)class completion:(id)completion
{
  sinceCopy = since;
  completionCopy = completion;
  v10 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v10 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v12 = sub_10000DB80();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      entityName = [(BCCloudDataManager *)self entityName];
      *buf = 138412546;
      v26 = entityName;
      v27 = 2112;
      v28 = sinceCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %@ getChangesSince cloudSyncVersions:%@\\"", buf, 0x16u);
    }
  }

  v14 = [(BCCloudDataManager *)self moc];
  v15 = v14 == 0;

  if (v15)
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050354;
    block[3] = &unk_10023FED8;
    block[4] = self;
    v24 = completionCopy;
    dispatch_async(responseQueue, block);
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
    v19 = sinceCopy;
    selfCopy = self;
    v22[1] = class;
    v21 = completionCopy;
    [v16 performBlock:v18];

    objc_destroyWeak(v22);
    objc_destroyWeak(buf);
  }
}

- (void)dissociateCloudDataFromSyncWithCompletion:(id)completion
{
  completionCopy = completion;
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
    v9 = completionCopy;
    [v6 performBlock:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050E34;
    block[3] = &unk_1002402E0;
    v13 = completionCopy;
    dispatch_async(responseQueue, block);
  }
}

- (void)hasSaltChangedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002660();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    entityName = [(BCCloudDataManager *)self entityName];
    *buf = 138412290;
    v17 = entityName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %@ #hasSaltChangedWithCompletion", buf, 0xCu);
  }

  v7 = [(BCCloudDataManager *)self moc];
  v8 = v7 == 0;

  if (v8)
  {
    responseQueue = [(BCCloudDataManager *)self responseQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100051600;
    block[3] = &unk_1002402E0;
    v15 = completionCopy;
    dispatch_async(responseQueue, block);
  }

  else if (completionCopy)
  {
    objc_initWeak(buf, self);
    v9 = [(BCCloudDataManager *)self moc];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000516C4;
    v11[3] = &unk_10023FE48;
    objc_copyWeak(&v13, buf);
    v12 = completionCopy;
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