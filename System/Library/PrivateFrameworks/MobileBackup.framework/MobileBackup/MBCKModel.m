@interface MBCKModel
+ (void)fetchFromServerWithOperationTracker:(id)a3 childrenOfClass:(Class)a4 refs:(id)a5 cache:(id)a6 completion:(id)a7;
- (BOOL)fetchFromServerWithOperationTracker:(id)a3 error:(id *)a4;
- (BOOL)saveToCacheWithError:(id *)a3;
- (BOOL)saveWithOperationTracker:(id)a3 error:(id *)a4;
- (CKRecordID)recordID;
- (MBCKModel)init;
- (MBCKModel)initWithCoder:(id)a3;
- (MBCKModel)initWithDictionary:(id)a3 cache:(id)a4;
- (MBCKModel)initWithRecord:(id)a3 cache:(id)a4;
- (MBDebugContext)debugContext;
- (MBRetryStrategy)retryStrategy;
- (NSString)recordIDString;
- (id)recordRepresentation;
- (void)addSavesWithBatchSave:(id)a3 completion:(id)a4;
- (void)addSavesWithOperationTracker:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)fetchFromServerWithOperationTracker:(id)a3 childrenOfClass:(Class)a4 refs:(id)a5 completion:(id)a6;
- (void)fetchFromServerWithOperationTracker:(id)a3 completion:(id)a4;
- (void)handleSaveComplete:(id)a3 withError:(id)a4 completion:(id)a5;
- (void)refreshWithRecord:(id)a3;
- (void)saveWithBatchSave:(id)a3 completion:(id)a4;
- (void)saveWithOperationTracker:(id)a3 completion:(id)a4;
@end

@implementation MBCKModel

- (MBCKModel)init
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = objc_opt_class();
  [v4 handleFailureInMethod:a2 object:self file:@"MBCKModel.m" lineNumber:28 description:{@"You must call -[%s initWithRecord:cache:]", class_getName(v5)}];

  return 0;
}

- (MBCKModel)initWithRecord:(id)a3 cache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MBCKModel;
  v8 = [(MBCKModel *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cache, a4);
    if (v6)
    {
      v10 = [v6 creationDate];

      if (v10)
      {
        [(MBCKModel *)v9 setIsPersistedToServer:1];
      }

      [(MBCKModel *)v9 refreshWithRecord:v6];
    }
  }

  return v9;
}

- (MBCKModel)initWithDictionary:(id)a3 cache:(id)a4
{
  v6 = a3;
  v7 = [(MBCKModel *)self initWithRecord:0 cache:a4];
  v8 = v7;
  if (v7)
  {
    [(MBCKModel *)v7 refreshWithDictionary:v6];
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
    v5 = [(MBCKModel *)self debugContext];
    v6 = [(MBRetryStrategy *)v4 initWithDebugContext:v5 networkAvailabilityProvider:0 engineMode:0 restoreType:0];
    v7 = self->_retryStrategy;
    self->_retryStrategy = v6;

    retryStrategy = self->_retryStrategy;
  }

  return retryStrategy;
}

- (void)fetchFromServerWithOperationTracker:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKModel fetchFromServerWithOperationTracker:completion:]", "MBCKModel.m", 62, "tracker");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBCKModel fetchFromServerWithOperationTracker:completion:]", "MBCKModel.m", 63, "completion");
  }

  [objc_opt_class() timeoutIntervalForFetch];
  v10 = v9;
  v11 = [v6 ckOperationPolicy];
  if (!v11)
  {
    __assert_rtn("[MBCKModel fetchFromServerWithOperationTracker:completion:]", "MBCKModel.m", 67, "policy");
  }

  v12 = v11;
  if ([v11 fetchAssets])
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
  v15 = [MBCKOperationTracker operationTrackerWithParentTracker:v6 policy:v14 error:&v20];
  v16 = v20;

  if (v15)
  {

    v6 = v15;
LABEL_10:
    v17 = [(MBCKModel *)self recordID];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004A2B0;
    v18[3] = &unk_1003BC138;
    v18[4] = self;
    v19 = v8;
    [v6 fetchRecordWithID:v17 completion:v18];

    v16 = v6;
    goto LABEL_11;
  }

  (v8)[2](v8, v16);
LABEL_11:
}

- (BOOL)fetchFromServerWithOperationTracker:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  [(MBCKModel *)self fetchFromServerWithOperationTracker:v6 completion:v11];
  MBSemaphoreWaitForever();
  v8 = v15[5];
  if (a4 && v8)
  {
    v8 = v8;
    *a4 = v8;
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

+ (void)fetchFromServerWithOperationTracker:(id)a3 childrenOfClass:(Class)a4 refs:(id)a5 cache:(id)a6 completion:(id)a7
{
  v11 = a3;
  v32 = a5;
  v35 = a6;
  v12 = a7;
  if (!v11)
  {
    __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]", "MBCKModel.m", 109, "tracker");
  }

  if (!a4)
  {
    __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]", "MBCKModel.m", 110, "childClass");
  }

  if (!v32)
  {
    __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]", "MBCKModel.m", 111, "refs");
  }

  if (!v12)
  {
    __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]", "MBCKModel.m", 112, "completion");
  }

  v30 = v12;
  v34 = a4;
  [(objc_class *)a4 timeoutIntervalForFetch];
  v14 = v13;
  v15 = [v11 ckOperationPolicy];
  v16 = v15;
  if (!v15)
  {
    __assert_rtn("+[MBCKModel fetchFromServerWithOperationTracker:childrenOfClass:refs:cache:completion:]", "MBCKModel.m", 116, "policy");
  }

  if ([v15 fetchAssets] && (objc_msgSend(v16, "timeoutIntervalForFetch"), v14 == v17))
  {
    v29 = v16;
    v31 = v11;
  }

  else
  {
    v18 = [v16 copy];

    [v18 setFetchAssets:1];
    [v18 setTimeoutIntervalForFetch:v14];
    v54 = 0;
    v29 = v18;
    v31 = [MBCKOperationTracker operationTrackerWithParentTracker:v11 policy:v18 error:&v54];
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
  v20 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v32, "count")}];
  v21 = objc_opt_new();
  v22 = [v31 startBatchFetch];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v32;
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

        v26 = [*(*(&v48 + 1) + 8 * i) recordID];
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10004AAE8;
        v42[3] = &unk_1003BC188;
        v43 = v21;
        v46 = v52;
        v47 = v34;
        v44 = v35;
        v45 = v20;
        [v22 fetchRecordWithID:v26 completion:v42];
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
  [v31 finishBatchFetch:v22 completion:v36];

  _Block_object_dispose(v52, 8);
  v19 = v31;
LABEL_20:
}

- (void)fetchFromServerWithOperationTracker:(id)a3 childrenOfClass:(Class)a4 refs:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_opt_class();
  v14 = [(MBCKModel *)self cache];
  [v13 fetchFromServerWithOperationTracker:v12 childrenOfClass:a4 refs:v11 cache:v14 completion:v10];
}

- (void)addSavesWithOperationTracker:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKModel addSavesWithOperationTracker:completion:]", "MBCKModel.m", 171, "tracker");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBCKModel addSavesWithOperationTracker:completion:]", "MBCKModel.m", 172, "completion");
  }

  v9 = [(MBCKModel *)self recordRepresentation];
  v10 = MBGetDefaultLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v9 recordID];
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Saving record %{public}@ to server", buf, 0xCu);

      v14 = [v9 recordID];
      _MBLog();
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10004B054;
    v15[3] = &unk_1003BC1D8;
    v15[4] = self;
    v16 = v8;
    [v6 saveRecord:v9 delegate:self completion:v15];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch the record representation for %@", buf, 0xCu);
      _MBLog();
    }

    v13 = [MBError errorWithCode:10 format:@"CloudKit record representation is nil for %@", self];
    (v8)[2](v8, v13);
  }
}

- (void)saveWithOperationTracker:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKModel saveWithOperationTracker:completion:]", "MBCKModel.m", 188, "tracker");
  }

  v8 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004B154;
  v11[3] = &unk_1003BC200;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v8;
  [(MBCKModel *)self prepareForSaveWithOperationTracker:v9 completion:v11];
}

- (BOOL)saveWithOperationTracker:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  [(MBCKModel *)self saveWithOperationTracker:v6 completion:v11];
  MBSemaphoreWaitForever();
  v8 = v15[5];
  if (a4 && v8)
  {
    v8 = v8;
    *a4 = v8;
  }

  v9 = v8 == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (void)addSavesWithBatchSave:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKModel addSavesWithBatchSave:completion:]", "MBCKModel.m", 215, "batchSave");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBCKModel addSavesWithBatchSave:completion:]", "MBCKModel.m", 216, "completion");
  }

  v9 = [(MBCKModel *)self recordRepresentation];
  if (v9)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v9 recordID];
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Saving record %{public}@ to server", buf, 0xCu);

      v13 = [v9 recordID];
      _MBLog();
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10004B628;
    v14[3] = &unk_1003BC1D8;
    v14[4] = self;
    v15 = v8;
    [v6 saveRecord:v9 delegate:self completion:v14];
  }

  else
  {
    v12 = [MBError errorWithCode:10 format:@"CloudKit record representation is nil for %@", self];
    (v8)[2](v8, v12);
  }
}

- (void)saveWithBatchSave:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKModel saveWithBatchSave:completion:]", "MBCKModel.m", 232, "batchedSave");
  }

  v8 = v7;
  v9 = [v6 ckOperationTracker];
  if (!v9)
  {
    __assert_rtn("[MBCKModel saveWithBatchSave:completion:]", "MBCKModel.m", 234, "tracker");
  }

  v10 = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004B760;
  v13[3] = &unk_1003BC200;
  v14 = v6;
  v15 = v8;
  v13[4] = self;
  v11 = v6;
  v12 = v8;
  [(MBCKModel *)self prepareForSaveWithOperationTracker:v10 completion:v13];
}

- (CKRecordID)recordID
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_recordID)
  {
    v3 = [(MBCKModel *)v2 _getRecordIDString];
    v4 = [(CKRecordID *)v2->_recordID recordName];
    v5 = [v4 isEqualToString:v3];

    if ((v5 & 1) == 0)
    {
      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [(CKRecordID *)v2->_recordID recordName];
          *buf = 138543618;
          v24 = v8;
          v25 = 2114;
          v26 = v3;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "RecordID string has changed: %{public}@ -> %{public}@", buf, 0x16u);
        }

        v22 = [(CKRecordID *)v2->_recordID recordName];
        _MBLog();
      }

      objc_storeStrong(&v2->_recordIDString, v3);
      v9 = [CKRecordID alloc];
      v10 = [MBCKDatabaseManager zoneIDOfType:[(MBCKModel *)v2 recordZone]];
      v11 = [v9 initWithRecordName:v3 zoneID:v10];
      recordID = v2->_recordID;
      v2->_recordID = v11;
    }
  }

  else
  {
    v13 = v2->_recordIDString;
    if (!v13)
    {
      v14 = [(MBCKModel *)v2 _getRecordIDString];
      recordIDString = v2->_recordIDString;
      v2->_recordIDString = v14;

      v13 = v14;
    }

    v16 = [CKRecordID alloc];
    v17 = [MBCKDatabaseManager zoneIDOfType:[(MBCKModel *)v2 recordZone]];
    v18 = [v16 initWithRecordName:v13 zoneID:v17];
    v19 = v2->_recordID;
    v2->_recordID = v18;
  }

  v20 = v2->_recordID;
  objc_sync_exit(v2);

  return v20;
}

- (NSString)recordIDString
{
  v2 = self;
  objc_sync_enter(v2);
  recordIDString = v2->_recordIDString;
  if (!recordIDString)
  {
    v4 = [(MBCKModel *)v2 _getRecordIDString];
    v5 = v2->_recordIDString;
    v2->_recordIDString = v4;

    recordIDString = v2->_recordIDString;
  }

  v6 = recordIDString;
  objc_sync_exit(v2);

  return v6;
}

- (id)recordRepresentation
{
  v3 = [(MBCKModel *)self systemFieldData];

  if (v3)
  {
    v4 = [NSKeyedUnarchiver alloc];
    v5 = [(MBCKModel *)self systemFieldData];
    v6 = [v4 initForReadingFromData:v5 error:0];

    v7 = [[CKRecord alloc] initWithCoder:v6];
  }

  else
  {
    v8 = [CKRecord alloc];
    v6 = [(MBCKModel *)self recordType];
    v9 = [(MBCKModel *)self recordID];
    v7 = [v8 initWithRecordType:v6 recordID:v9];
  }

  return v7;
}

- (void)handleSaveComplete:(id)a3 withError:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MBGetDefaultLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = objc_opt_class();
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to save a record for %{public}@: %@", buf, 0x16u);
      objc_opt_class();
      _MBLog();
    }

    v10[2](v10, v9);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = [v8 recordType];
      v14 = [v8 recordID];
      v15 = [v14 recordName];
      *buf = 138543618;
      v20 = v13;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@ record %{public}@ saved to server successfully", buf, 0x16u);

      v16 = [v8 recordType];
      v17 = [v8 recordID];
      v18 = [v17 recordName];
      _MBLog();
    }

    [(MBCKModel *)self refreshWithRecord:v8];
    [(MBCKModel *)self saveToCacheWithCompletion:v10];
  }
}

- (void)refreshWithRecord:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v8 encodeSystemFieldsWithCoder:v4];
    v5 = [v8 creationDate];

    if (v5)
    {
      [(MBCKModel *)self setIsPersistedToServer:1];
    }

    if (v4)
    {
      v6 = [v4 encodedData];

      if (v6)
      {
        v7 = [v4 encodedData];
        [(MBCKModel *)self setSystemFieldData:v7];
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (BOOL)saveToCacheWithError:(id *)a3
{
  v5 = [(MBCKModel *)self cache];

  if (v5)
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
    if (a3 && v7)
    {
      *a3 = v7;
    }

    _Block_object_dispose(&v13, 8);
  }

  else if (a3)
  {
    [MBError errorWithCode:100 format:@"Attempting to save to cache without a cache"];
    *a3 = v8 = 0;
  }

  else
  {
    return 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(MBCKModel *)self systemFieldData];
  [v6 encodeObject:v5 forKey:@"SystemFields"];

  objc_autoreleasePoolPop(v4);
}

- (MBCKModel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(MBCKModel *)self initWithRecord:0 cache:0];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SystemFields"];
    systemFieldData = v6->_systemFieldData;
    v6->_systemFieldData = v7;
  }

  v9 = v6;
  objc_autoreleasePoolPop(v5);

  return v9;
}

@end