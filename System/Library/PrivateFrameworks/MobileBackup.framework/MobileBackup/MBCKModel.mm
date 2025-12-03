@interface MBCKModel
+ (void)fetchFromServerWithOperationTracker:(id)tracker childrenOfClass:(Class)class refs:(id)refs cache:(id)cache completion:(id)completion;
- (BOOL)fetchFromServerWithOperationTracker:(id)tracker error:(id *)error;
- (BOOL)saveToCacheWithError:(id *)error;
- (BOOL)saveWithOperationTracker:(id)tracker error:(id *)error;
- (CKRecordID)recordID;
- (MBCKModel)init;
- (MBCKModel)initWithCoder:(id)coder;
- (MBCKModel)initWithDictionary:(id)dictionary cache:(id)cache;
- (MBCKModel)initWithRecord:(id)record cache:(id)cache;
- (MBDebugContext)debugContext;
- (MBRetryStrategy)retryStrategy;
- (NSString)recordIDString;
- (id)recordRepresentation;
- (void)addSavesWithBatchSave:(id)save completion:(id)completion;
- (void)addSavesWithOperationTracker:(id)tracker completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)fetchFromServerWithOperationTracker:(id)tracker childrenOfClass:(Class)class refs:(id)refs completion:(id)completion;
- (void)fetchFromServerWithOperationTracker:(id)tracker completion:(id)completion;
- (void)handleSaveComplete:(id)complete withError:(id)error completion:(id)completion;
- (void)refreshWithRecord:(id)record;
- (void)saveWithBatchSave:(id)save completion:(id)completion;
- (void)saveWithOperationTracker:(id)tracker completion:(id)completion;
@end

@implementation MBCKModel

- (MBCKModel)init
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = objc_opt_class();
  [v4 handleFailureInMethod:a2 object:self file:@"MBCKModel.m" lineNumber:28 description:{@"You must call -[%s initWithRecord:cache:]", class_getName(v5)}];

  return 0;
}

- (MBCKModel)initWithRecord:(id)record cache:(id)cache
{
  recordCopy = record;
  cacheCopy = cache;
  v12.receiver = self;
  v12.super_class = MBCKModel;
  v8 = [(MBCKModel *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cache, cache);
    if (recordCopy)
    {
      creationDate = [recordCopy creationDate];

      if (creationDate)
      {
        [(MBCKModel *)v9 setIsPersistedToServer:1];
      }

      [(MBCKModel *)v9 refreshWithRecord:recordCopy];
    }
  }

  return v9;
}

- (MBCKModel)initWithDictionary:(id)dictionary cache:(id)cache
{
  dictionaryCopy = dictionary;
  v7 = [(MBCKModel *)self initWithRecord:0 cache:cache];
  v8 = v7;
  if (v7)
  {
    [(MBCKModel *)v7 refreshWithDictionary:dictionaryCopy];
  }

  return v8;
}

- (MBDebugContext)debugContext
{
  debugContext = self->_debugContext;
  if (!debugContext)
  {
    v4 = objc_alloc_init(MBDebugContext);
    v5 = self->_debugContext;
    self->_debugContext = v4;

    debugContext = self->_debugContext;
  }

  return debugContext;
}

- (MBRetryStrategy)retryStrategy
{
  retryStrategy = self->_retryStrategy;
  if (!retryStrategy)
  {
    v4 = [MBRetryStrategy alloc];
    debugContext = [(MBCKModel *)self debugContext];
    v6 = [(MBRetryStrategy *)v4 initWithDebugContext:debugContext networkAvailabilityProvider:0 engineMode:0 restoreType:0];
    v7 = self->_retryStrategy;
    self->_retryStrategy = v6;

    retryStrategy = self->_retryStrategy;
  }

  return retryStrategy;
}

- (void)fetchFromServerWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKModel fetchFromServerWithOperationTracker:completion:]", "MBCKModel.m", 62, "tracker");
  }

  v8 = completionCopy;
  if (!completionCopy)
  {
    __assert_rtn("[MBCKModel fetchFromServerWithOperationTracker:completion:]", "MBCKModel.m", 63, "completion");
  }

  [objc_opt_class() timeoutIntervalForFetch];
  v10 = v9;
  ckOperationPolicy = [trackerCopy ckOperationPolicy];
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKModel fetchFromServerWithOperationTracker:completion:]", "MBCKModel.m", 67, "policy");
  }

  v12 = ckOperationPolicy;
  if ([ckOperationPolicy fetchAssets])
  {
    [v12 timeoutIntervalForFetch];
    if (v10 == v13)
    {
      v14 = v12;
      goto LABEL_10;
    }
  }

  v14 = [v12 copy];

  [v14 setFetchAssets:1];
  [v14 setTimeoutIntervalForFetch:v10];
  v20 = 0;
  v15 = [MBCKOperationTracker operationTrackerWithParentTracker:trackerCopy policy:v14 error:&v20];
  v16 = v20;

  if (v15)
  {

    trackerCopy = v15;
LABEL_10:
    recordID = [(MBCKModel *)self recordID];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004A2B0;
    v18[3] = &unk_1003BC138;
    v18[4] = self;
    v19 = v8;
    [trackerCopy fetchRecordWithID:recordID completion:v18];

    v16 = trackerCopy;
    goto LABEL_11;
  }

  (v8)[2](v8, v16);
LABEL_11:
}

- (BOOL)fetchFromServerWithOperationTracker:(id)tracker error:(id *)error
{
  trackerCopy = tracker;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10004A564;
  v18 = sub_10004A574;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004A57C;
  v11[3] = &unk_1003BC160;
  v13 = &v14;
  v7 = dispatch_semaphore_create(0);
  v12 = v7;
  [(MBCKModel *)self fetchFromServerWithOperationTracker:trackerCopy completion:v11];
  MBSemaphoreWaitForever();
  v8 = v15[5];
  if (error && v8)
  {
    v8 = v8;
    *error = v8;
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

+ (void)fetchFromServerWithOperationTracker:(id)tracker childrenOfClass:(Class)class refs:(id)refs cache:(id)cache completion:(id)completion
{
  trackerCopy = tracker;
  refsCopy = refs;
  cacheCopy = cache;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]", "MBCKModel.m", 109, "tracker");
  }

  if (!class)
  {
    __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]", "MBCKModel.m", 110, "childClass");
  }

  if (!refsCopy)
  {
    __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]", "MBCKModel.m", 111, "refs");
  }

  if (!completionCopy)
  {
    __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]", "MBCKModel.m", 112, "completion");
  }

  v30 = completionCopy;
  classCopy = class;
  [(objc_class *)class timeoutIntervalForFetch];
  v14 = v13;
  ckOperationPolicy = [trackerCopy ckOperationPolicy];
  v16 = ckOperationPolicy;
  if (!ckOperationPolicy)
  {
    __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]", "MBCKModel.m", 116, "policy");
  }

  if ([ckOperationPolicy fetchAssets] && (objc_msgSend(v16, "timeoutIntervalForFetch"), v14 == v17))
  {
    v29 = v16;
    v31 = trackerCopy;
  }

  else
  {
    v18 = [v16 copy];

    [v18 setFetchAssets:1];
    [v18 setTimeoutIntervalForFetch:v14];
    v54 = 0;
    v29 = v18;
    v31 = [MBCKOperationTracker operationTrackerWithParentTracker:trackerCopy policy:v18 error:&v54];
    v19 = v54;

    if (!v31)
    {
      (v30)[2](v30, 0, 0, v19);
      goto LABEL_20;
    }
  }

  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = sub_10004A564;
  v52[4] = sub_10004A574;
  v53 = 0;
  v20 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(refsCopy, "count")}];
  v21 = objc_opt_new();
  startBatchFetch = [v31 startBatchFetch];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = refsCopy;
  v23 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v23)
  {
    v24 = *v49;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(obj);
        }

        recordID = [*(*(&v48 + 1) + 8 * i) recordID];
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10004AAE8;
        v42[3] = &unk_1003BC188;
        v43 = v21;
        v46 = v52;
        v47 = classCopy;
        v44 = cacheCopy;
        v45 = v20;
        [startBatchFetch fetchRecordWithID:recordID completion:v42];
      }

      v23 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v23);
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10004AC60;
  v36[3] = &unk_1003BC1B0;
  v41 = v52;
  v27 = v20;
  v37 = v27;
  v28 = v21;
  v38 = v28;
  v39 = obj;
  v40 = v30;
  [v31 finishBatchFetch:startBatchFetch completion:v36];

  _Block_object_dispose(v52, 8);
  v19 = v31;
LABEL_20:
}

- (void)fetchFromServerWithOperationTracker:(id)tracker childrenOfClass:(Class)class refs:(id)refs completion:(id)completion
{
  completionCopy = completion;
  refsCopy = refs;
  trackerCopy = tracker;
  v13 = objc_opt_class();
  cache = [(MBCKModel *)self cache];
  [v13 fetchFromServerWithOperationTracker:trackerCopy childrenOfClass:class refs:refsCopy cache:cache completion:completionCopy];
}

- (void)addSavesWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKModel addSavesWithOperationTracker:completion:]", "MBCKModel.m", 171, "tracker");
  }

  v8 = completionCopy;
  if (!completionCopy)
  {
    __assert_rtn("[MBCKModel addSavesWithOperationTracker:completion:]", "MBCKModel.m", 172, "completion");
  }

  recordRepresentation = [(MBCKModel *)self recordRepresentation];
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (recordRepresentation)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      recordID = [recordRepresentation recordID];
      *buf = 138543362;
      selfCopy = recordID;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Saving record %{public}@ to server", buf, 0xCu);

      recordID2 = [recordRepresentation recordID];
      _MBLog();
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004B054;
    v15[3] = &unk_1003BC1D8;
    v15[4] = self;
    v16 = v8;
    [trackerCopy saveRecord:recordRepresentation delegate:self completion:v15];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch the record representation for %@", buf, 0xCu);
      _MBLog();
    }

    v13 = [MBError errorWithCode:10 format:@"CloudKit record representation is nil for %@", self];
    (v8)[2](v8, v13);
  }
}

- (void)saveWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKModel saveWithOperationTracker:completion:]", "MBCKModel.m", 188, "tracker");
  }

  v8 = completionCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004B154;
  v11[3] = &unk_1003BC200;
  v12 = trackerCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = trackerCopy;
  v10 = v8;
  [(MBCKModel *)self prepareForSaveWithOperationTracker:v9 completion:v11];
}

- (BOOL)saveWithOperationTracker:(id)tracker error:(id *)error
{
  trackerCopy = tracker;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10004A564;
  v18 = sub_10004A574;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004B3AC;
  v11[3] = &unk_1003BC160;
  v13 = &v14;
  v7 = dispatch_semaphore_create(0);
  v12 = v7;
  [(MBCKModel *)self saveWithOperationTracker:trackerCopy completion:v11];
  MBSemaphoreWaitForever();
  v8 = v15[5];
  if (error && v8)
  {
    v8 = v8;
    *error = v8;
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (void)addSavesWithBatchSave:(id)save completion:(id)completion
{
  saveCopy = save;
  completionCopy = completion;
  if (!saveCopy)
  {
    __assert_rtn("[MBCKModel addSavesWithBatchSave:completion:]", "MBCKModel.m", 215, "batchSave");
  }

  v8 = completionCopy;
  if (!completionCopy)
  {
    __assert_rtn("[MBCKModel addSavesWithBatchSave:completion:]", "MBCKModel.m", 216, "completion");
  }

  recordRepresentation = [(MBCKModel *)self recordRepresentation];
  if (recordRepresentation)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      recordID = [recordRepresentation recordID];
      *buf = 138543362;
      v17 = recordID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Saving record %{public}@ to server", buf, 0xCu);

      recordID2 = [recordRepresentation recordID];
      _MBLog();
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10004B628;
    v14[3] = &unk_1003BC1D8;
    v14[4] = self;
    v15 = v8;
    [saveCopy saveRecord:recordRepresentation delegate:self completion:v14];
  }

  else
  {
    v12 = [MBError errorWithCode:10 format:@"CloudKit record representation is nil for %@", self];
    (v8)[2](v8, v12);
  }
}

- (void)saveWithBatchSave:(id)save completion:(id)completion
{
  saveCopy = save;
  completionCopy = completion;
  if (!saveCopy)
  {
    __assert_rtn("[MBCKModel saveWithBatchSave:completion:]", "MBCKModel.m", 232, "batchedSave");
  }

  v8 = completionCopy;
  ckOperationTracker = [saveCopy ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKModel saveWithBatchSave:completion:]", "MBCKModel.m", 234, "tracker");
  }

  v10 = ckOperationTracker;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004B760;
  v13[3] = &unk_1003BC200;
  v14 = saveCopy;
  v15 = v8;
  v13[4] = self;
  v11 = saveCopy;
  v12 = v8;
  [(MBCKModel *)self prepareForSaveWithOperationTracker:v10 completion:v13];
}

- (CKRecordID)recordID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_recordID)
  {
    _getRecordIDString = [(MBCKModel *)selfCopy _getRecordIDString];
    recordName = [(CKRecordID *)selfCopy->_recordID recordName];
    v5 = [recordName isEqualToString:_getRecordIDString];

    if ((v5 & 1) == 0)
    {
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          recordName2 = [(CKRecordID *)selfCopy->_recordID recordName];
          *buf = 138543618;
          v24 = recordName2;
          v25 = 2114;
          v26 = _getRecordIDString;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "RecordID string has changed: %{public}@ -> %{public}@", buf, 0x16u);
        }

        recordName3 = [(CKRecordID *)selfCopy->_recordID recordName];
        _MBLog();
      }

      objc_storeStrong(&selfCopy->_recordIDString, _getRecordIDString);
      v9 = [CKRecordID alloc];
      v10 = [MBCKDatabaseManager zoneIDOfType:[(MBCKModel *)selfCopy recordZone]];
      v11 = [v9 initWithRecordName:_getRecordIDString zoneID:v10];
      recordID = selfCopy->_recordID;
      selfCopy->_recordID = v11;
    }
  }

  else
  {
    v13 = selfCopy->_recordIDString;
    if (!v13)
    {
      _getRecordIDString2 = [(MBCKModel *)selfCopy _getRecordIDString];
      recordIDString = selfCopy->_recordIDString;
      selfCopy->_recordIDString = _getRecordIDString2;

      v13 = _getRecordIDString2;
    }

    v16 = [CKRecordID alloc];
    v17 = [MBCKDatabaseManager zoneIDOfType:[(MBCKModel *)selfCopy recordZone]];
    v18 = [v16 initWithRecordName:v13 zoneID:v17];
    v19 = selfCopy->_recordID;
    selfCopy->_recordID = v18;
  }

  v20 = selfCopy->_recordID;
  objc_sync_exit(selfCopy);

  return v20;
}

- (NSString)recordIDString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  recordIDString = selfCopy->_recordIDString;
  if (!recordIDString)
  {
    _getRecordIDString = [(MBCKModel *)selfCopy _getRecordIDString];
    v5 = selfCopy->_recordIDString;
    selfCopy->_recordIDString = _getRecordIDString;

    recordIDString = selfCopy->_recordIDString;
  }

  v6 = recordIDString;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)recordRepresentation
{
  systemFieldData = [(MBCKModel *)self systemFieldData];

  if (systemFieldData)
  {
    v4 = [NSKeyedUnarchiver alloc];
    systemFieldData2 = [(MBCKModel *)self systemFieldData];
    recordType = [v4 initForReadingFromData:systemFieldData2 error:0];

    v7 = [[CKRecord alloc] initWithCoder:recordType];
  }

  else
  {
    v8 = [CKRecord alloc];
    recordType = [(MBCKModel *)self recordType];
    recordID = [(MBCKModel *)self recordID];
    v7 = [v8 initWithRecordType:recordType recordID:recordID];
  }

  return v7;
}

- (void)handleSaveComplete:(id)complete withError:(id)error completion:(id)completion
{
  completeCopy = complete;
  errorCopy = error;
  completionCopy = completion;
  v11 = MBGetDefaultLog();
  v12 = v11;
  if (errorCopy)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = errorCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to save a record for %{public}@: %@", buf, 0x16u);
      objc_opt_class();
      _MBLog();
    }

    completionCopy[2](completionCopy, errorCopy);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      recordType = [completeCopy recordType];
      recordID = [completeCopy recordID];
      recordName = [recordID recordName];
      *buf = 138543618;
      v20 = recordType;
      v21 = 2114;
      v22 = recordName;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@ record %{public}@ saved to server successfully", buf, 0x16u);

      recordType2 = [completeCopy recordType];
      recordID2 = [completeCopy recordID];
      recordName2 = [recordID2 recordName];
      _MBLog();
    }

    [(MBCKModel *)self refreshWithRecord:completeCopy];
    [(MBCKModel *)self saveToCacheWithCompletion:completionCopy];
  }
}

- (void)refreshWithRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [recordCopy encodeSystemFieldsWithCoder:v4];
    creationDate = [recordCopy creationDate];

    if (creationDate)
    {
      [(MBCKModel *)self setIsPersistedToServer:1];
    }

    if (v4)
    {
      encodedData = [v4 encodedData];

      if (encodedData)
      {
        encodedData2 = [v4 encodedData];
        [(MBCKModel *)self setSystemFieldData:encodedData2];
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (BOOL)saveToCacheWithError:(id *)error
{
  cache = [(MBCKModel *)self cache];

  if (cache)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10004A564;
    v17 = sub_10004A574;
    v18 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004C19C;
    v10[3] = &unk_1003BC160;
    v12 = &v13;
    v6 = dispatch_semaphore_create(0);
    v11 = v6;
    [(MBCKModel *)self saveToCacheWithCompletion:v10];
    MBSemaphoreWaitForever();
    v7 = v14[5];
    v8 = v7 == 0;
    if (error && v7)
    {
      *error = v7;
    }

    _Block_object_dispose(&v13, 8);
  }

  else if (error)
  {
    [MBError errorWithCode:100 format:@"Attempting to save to cache without a cache"];
    *error = v8 = 0;
  }

  else
  {
    return 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  systemFieldData = [(MBCKModel *)self systemFieldData];
  [coderCopy encodeObject:systemFieldData forKey:@"SystemFields"];

  objc_autoreleasePoolPop(v4);
}

- (MBCKModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [(MBCKModel *)self initWithRecord:0 cache:0];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SystemFields"];
    systemFieldData = v6->_systemFieldData;
    v6->_systemFieldData = v7;
  }

  v9 = v6;
  objc_autoreleasePoolPop(v5);

  return v9;
}

@end