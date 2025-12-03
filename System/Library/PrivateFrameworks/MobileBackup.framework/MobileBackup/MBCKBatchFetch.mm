@interface MBCKBatchFetch
- (BOOL)_handleCompletionForFetchInfo:(id)info record:(id)record error:(id)error;
- (BOOL)finishWithError:(id *)error;
- (MBCKBatchFetch)initWithOperationTracker:(id)tracker;
- (MBCKOperationTracker)ckOperationTracker;
- (void)_fetchRecordsWithCompletion:(id)completion;
- (void)_finishBatchedFetchesWithCompletion:(id)completion;
- (void)_flush;
- (void)_flushBatchedFetches:(unint64_t)fetches;
- (void)_performCallbacksForFetchInfo:(id)info record:(id)record error:(id)error;
- (void)_scheduleBatchFetchOperationForFetchInfos:(id)infos;
- (void)_sendBatchFetchOperationForFetchInfos:(id)infos;
- (void)dealloc;
- (void)fetchRecordWithID:(id)d assetSize:(int64_t)size completion:(id)completion;
- (void)fetchRecordsWithCompletion:(id)completion;
- (void)fetchRecordsWithIDs:(id)ds progress:(id)progress completion:(id)completion;
@end

@implementation MBCKBatchFetch

- (MBCKBatchFetch)initWithOperationTracker:(id)tracker
{
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKBatchFetch initWithOperationTracker:]", "MBCKBatchFetch.m", 77, "tracker");
  }

  v5 = trackerCopy;
  ckOperationPolicy = [trackerCopy ckOperationPolicy];
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKBatchFetch initWithOperationTracker:]", "MBCKBatchFetch.m", 79, "policy");
  }

  v7 = ckOperationPolicy;
  v21.receiver = self;
  v21.super_class = MBCKBatchFetch;
  v8 = [(MBCKBatchFetch *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_ckOperationTracker, v5);
    objc_storeStrong(&v9->_ckOperationPolicy, v7);
    *&v9->_fetchIncrementally = 257;
    v9->_usePrivilegedBatchRecordFetch = 0;
    v10 = objc_opt_new();
    fetchInfos = v9->_fetchInfos;
    v9->_fetchInfos = v10;

    v12 = objc_opt_new();
    fetchInfosByRecordID = v9->_fetchInfosByRecordID;
    v9->_fetchInfosByRecordID = v12;

    v14 = dispatch_group_create();
    fetchGroup = v9->_fetchGroup;
    v9->_fetchGroup = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_UTILITY, 0);

    v18 = dispatch_queue_create("com.apple.backupd.batchFetch", v17);
    callbackQueue = v9->_callbackQueue;
    v9->_callbackQueue = v18;

    atomic_store(0, &v9->_pendingOperationsCount);
    atomic_store(0, &v9->_started);
  }

  return v9;
}

- (void)dealloc
{
  if ([(NSMutableOrderedSet *)self->_fetchInfos count])
  {
    __assert_rtn("[MBCKBatchFetch dealloc]", "MBCKBatchFetch.m", 98, "_fetchInfos.count == 0");
  }

  v3.receiver = self;
  v3.super_class = MBCKBatchFetch;
  [(MBCKBatchFetch *)&v3 dealloc];
}

- (void)fetchRecordWithID:(id)d assetSize:(int64_t)size completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (!completionCopy)
  {
    __assert_rtn("[MBCKBatchFetch fetchRecordWithID:assetSize:completion:]", "MBCKBatchFetch.m", 108, "completion");
  }

  v10 = completionCopy;
  v11 = objc_autoreleasePoolPush();
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v56 = dCopy;
    v57 = 2114;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "=ck-fetch= Adding a fetch for %{public}@ to %{public}@", buf, 0x16u);
    v52 = dCopy;
    _MBLog();
  }

  if (dCopy)
  {
    v19 = atomic_load(&self->_started);
    v20 = v19 ^ 1;
    if (((v19 ^ 1) & 1) == 0)
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "You can't add a new recordID to an already started batch", buf, 2u);
      }
    }

    v22 = _MBAssert(v20 & 1, @"You can't add a new recordID to an already started batch", v13, v14, v15, v16, v17, v18, v52);
    if (v22)
    {
      (v10)[2](v10, dCopy, 0, v22);
    }

    else
    {
      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      fetchSemaphore = [(MBCKBatchFetch *)selfCopy2 fetchSemaphore];
      v25 = fetchSemaphore == 0;

      if (v25)
      {
        v26 = +[MBBehaviorOptions sharedOptions];
        v27 = [v26 maxBatchFetchConcurrentFetchRecordsOperationsWithDefaultValue:6];

        if (v27 <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        if (v27)
        {
          v29 = v28;
        }

        else
        {
          v29 = 0x7FFFFFFFLL;
        }

        if (selfCopy2->_useGlobalThreadLimit)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100109CE0;
          block[3] = &unk_1003BEC40;
          v54 = v29;
          if (qword_100421788 != -1)
          {
            dispatch_once(&qword_100421788, block);
          }

          [(MBCKBatchFetch *)selfCopy2 setFetchSemaphore:qword_100421780];
        }

        else
        {
          v30 = dispatch_semaphore_create(v29);
          [(MBCKBatchFetch *)selfCopy2 setFetchSemaphore:v30];
        }
      }

      fetchInfosByRecordID = [(MBCKBatchFetch *)selfCopy2 fetchInfosByRecordID];
      v32 = [fetchInfosByRecordID objectForKeyedSubscript:dCopy];

      if (v32)
      {
        callbacks = [v32 callbacks];
        fetchInfos = [v10 copy];
        v35 = objc_retainBlock(fetchInfos);
        [callbacks addObject:v35];

        v36 = 1;
        v37 = v32;
      }

      else
      {
        v37 = objc_opt_new();
        [v37 setState:0];
        callbacks2 = [v37 callbacks];
        v39 = [v10 copy];
        v40 = objc_retainBlock(v39);
        [callbacks2 addObject:v40];

        [v37 setRecordID:dCopy];
        if (size)
        {
          [v37 setAssetSize:size];
        }

        else
        {
          recordID = [v37 recordID];
          recordName = [recordID recordName];
          v43 = [recordName componentsSeparatedByString:@":"];

          if ([v43 count] == 5)
          {
            v44 = [v43 objectAtIndexedSubscript:0];
            v45 = [v44 isEqualToString:@"F"];

            if (v45)
            {
              v46 = [v43 objectAtIndexedSubscript:3];
              [v37 setAssetSize:{objc_msgSend(v46, "integerValue")}];
            }
          }
        }

        ckOperationPolicy = [(MBCKBatchFetch *)selfCopy2 ckOperationPolicy];
        callbacks = ckOperationPolicy;
        if (!ckOperationPolicy)
        {
          __assert_rtn("[MBCKBatchFetch fetchRecordWithID:assetSize:completion:]", "MBCKBatchFetch.m", 166, "policy");
        }

        maxBatchCount = [ckOperationPolicy maxBatchCount];
        maxBatchFetchAssetSize = [callbacks maxBatchFetchAssetSize];
        if (-[MBCKBatchFetch fetchIncrementally](selfCopy2, "fetchIncrementally") && -[MBCKBatchFetch currentBatchCount](selfCopy2, "currentBatchCount") && (-[MBCKBatchFetch currentBatchCount](selfCopy2, "currentBatchCount") >= maxBatchCount || (v50 = -[MBCKBatchFetch currentBatchAssetSize](selfCopy2, "currentBatchAssetSize"), &v50[[v37 assetSize]] >= maxBatchFetchAssetSize)))
        {
          [(MBCKBatchFetch *)selfCopy2 setCurrentBatchCount:0];
          [(MBCKBatchFetch *)selfCopy2 setCurrentBatchAssetSize:0];
          v36 = 0;
        }

        else
        {
          v36 = 1;
        }

        [(MBCKBatchFetch *)selfCopy2 setCurrentBatchCount:[(MBCKBatchFetch *)selfCopy2 currentBatchCount]+ 1];
        -[MBCKBatchFetch setCurrentBatchAssetSize:](selfCopy2, "setCurrentBatchAssetSize:", [v37 assetSize] + -[MBCKBatchFetch currentBatchAssetSize](selfCopy2, "currentBatchAssetSize"));
        fetchInfosByRecordID2 = [(MBCKBatchFetch *)selfCopy2 fetchInfosByRecordID];
        [fetchInfosByRecordID2 setObject:v37 forKeyedSubscript:dCopy];

        fetchInfos = [(MBCKBatchFetch *)selfCopy2 fetchInfos];
        [fetchInfos addObject:v37];
      }

      objc_sync_exit(selfCopy2);
      if (!((v32 != 0) | v36 & 1))
      {
        [(MBCKBatchFetch *)selfCopy2 _flushBatchedFetches:1];
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = [MBError errorWithCode:1 format:@"You can't fetch a nil recordID"];
    (v10)[2](v10, 0, 0, v22);
  }

  objc_autoreleasePoolPop(v11);
}

- (void)fetchRecordsWithIDs:(id)ds progress:(id)progress completion:(id)completion
{
  dsCopy = ds;
  progressCopy = progress;
  completionCopy = completion;
  if (!dsCopy)
  {
    __assert_rtn("[MBCKBatchFetch fetchRecordsWithIDs:progress:completion:]", "MBCKBatchFetch.m", 189, "recordIDs");
  }

  if (!progressCopy)
  {
    __assert_rtn("[MBCKBatchFetch fetchRecordsWithIDs:progress:completion:]", "MBCKBatchFetch.m", 190, "progress");
  }

  if (!completionCopy)
  {
    __assert_rtn("[MBCKBatchFetch fetchRecordsWithIDs:progress:completion:]", "MBCKBatchFetch.m", 191, "completion");
  }

  v16 = completionCopy;
  v18 = progressCopy;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = [dsCopy count];
  if (v30[3])
  {
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_10010A030;
    v27[4] = sub_10010A05C;
    v28 = objc_retainBlock(v16);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = dsCopy;
    v11 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v11)
    {
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_10010A064;
          v19[3] = &unk_1003BEC68;
          v21 = v27;
          v20 = progressCopy;
          v22 = &v29;
          [(MBCKBatchFetch *)self fetchRecordWithID:v14 completion:v19];
        }

        v11 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v11);
    }

    _Block_object_dispose(v27, 8);
    v15 = v16;
  }

  else
  {
    v15 = v16;
    (*(v16 + 2))(v16, 0);
  }

  _Block_object_dispose(&v29, 8);
}

- (void)_flush
{
  v3 = objc_autoreleasePoolPush();
  [(MBCKBatchFetch *)self _flushBatchedFetches:-1];

  objc_autoreleasePoolPop(v3);
}

- (void)_performCallbacksForFetchInfo:(id)info record:(id)record error:(id)error
{
  infoCopy = info;
  recordCopy = record;
  errorCopy = error;
  if ([infoCopy state] == 3)
  {
    v20 = +[NSAssertionHandler currentHandler];
    recordID = [infoCopy recordID];
    v22 = +[NSThread callStackSymbols];
    [v20 handleFailureInMethod:a2 object:self file:@"MBCKBatchFetch.m" lineNumber:236 description:{@"We've already finished fetching record %@: %@", recordID, v22}];
  }

  recordID2 = [infoCopy recordID];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v38 = recordID2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "=ck-fetch= Performing callbacks for fetch of record %{public}@", buf, 0xCu);
    v23 = recordID2;
    _MBLog();
  }

  [infoCopy setState:3];
  callbacks = [infoCopy callbacks];
  [infoCopy setCallbacks:0];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = callbacks;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        callbackQueue = [(MBCKBatchFetch *)self callbackQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10010A518;
        block[3] = &unk_1003BEC90;
        v31 = v17;
        v28 = recordID2;
        v29 = recordCopy;
        v30 = errorCopy;
        v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        dispatch_async(callbackQueue, v19);
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }
}

- (void)_finishBatchedFetchesWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fetchInfos = [(MBCKBatchFetch *)selfCopy fetchInfos];
  v7 = [fetchInfos count];

  objc_sync_exit(selfCopy);
  if (v7)
  {
    [(MBCKBatchFetch *)selfCopy _fetchRecordsWithCompletion:completionCopy];
  }

  else
  {
    if ([(MBCKBatchFetch *)selfCopy canceled])
    {
      [MBError errorWithCode:202 format:@"Batch fetch canceled"];
    }

    else
    {
      [(MBCKBatchFetch *)selfCopy fetchError];
    }
    v8 = ;
    v9 = MBGetDefaultLog();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v17 = selfCopy;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ck-fetch= Failed %{public}@: %@", buf, 0x16u);
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = selfCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=ck-fetch= Finished %{public}@", buf, 0xCu);
      _MBLog();
    }

    if (completionCopy)
    {
      callbackQueue = [(MBCKBatchFetch *)selfCopy callbackQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10010A7BC;
      block[3] = &unk_1003BE9A8;
      v15 = completionCopy;
      v14 = v8;
      v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(callbackQueue, v12);
    }
  }
}

- (BOOL)_handleCompletionForFetchInfo:(id)info record:(id)record error:(id)error
{
  infoCopy = info;
  recordCopy = record;
  errorCopy = error;
  if (!infoCopy)
  {
    __assert_rtn("[MBCKBatchFetch _handleCompletionForFetchInfo:record:error:]", "MBCKBatchFetch.m", 275, "fetchInfo");
  }

  v11 = errorCopy;
  if ([infoCopy state] != 3)
  {
    recordID = [infoCopy recordID];
    fetchAttempts = [infoCopy fetchAttempts];
    if (!v11)
    {
      [infoCopy setError:0];
      v32 = MBGetDefaultLog();
      v33 = v32;
      if (fetchAttempts == 1)
      {
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_50;
        }

        *buf = 138543362;
        v54 = recordID;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "=ck-fetch= Fetched record %{public}@", buf, 0xCu);
      }

      else
      {
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        *buf = 138543618;
        v54 = recordID;
        v55 = 2048;
        v56 = *&fetchAttempts;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "=ck-fetch= Fetched record %{public}@ after %lu attempts", buf, 0x16u);
      }

LABEL_49:
      _MBLog();
      goto LABEL_50;
    }

    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v54 = recordID;
      v55 = 2112;
      v56 = *&v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "=ck-fetch= Handling fetch error for record %{public}@: %@", buf, 0x16u);
      v49 = recordID;
      v51 = v11;
      _MBLog();
    }

    ckOperationTracker = [(MBCKBatchFetch *)self ckOperationTracker];
    if (!ckOperationTracker)
    {
      __assert_rtn("[MBCKBatchFetch _handleCompletionForFetchInfo:record:error:]", "MBCKBatchFetch.m", 285, "tracker");
    }

    v17 = ckOperationTracker;
    ckOperationPolicy = [(MBCKBatchFetch *)self ckOperationPolicy];
    if (!ckOperationPolicy)
    {
      __assert_rtn("[MBCKBatchFetch _handleCompletionForFetchInfo:record:error:]", "MBCKBatchFetch.m", 287, "policy");
    }

    v19 = ckOperationPolicy;
    v52 = fetchAttempts;
    v20 = v17;
    [ckOperationPolicy retryAfterInterval];
    v22 = v21;
    domain = [v11 domain];
    v24 = [domain isEqualToString:CKErrorDomain];

    if (v24)
    {
      v25 = fmax(v22, 1.0);
      code = [v11 code];
      if (code > 5)
      {
        if (code == 6)
        {
          v38 = MBGetDefaultLog();
          v27 = v17;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v54 = recordID;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "=ck-fetch= Fetch of record %{public}@ hit a service unavailable error", buf, 0xCu);
            v49 = recordID;
            _MBLog();
          }

          v28 = v52;
          goto LABEL_46;
        }

        v27 = v17;
        if (code != 7)
        {
          v28 = v52;
          if (code != 23)
          {
            goto LABEL_47;
          }

          v34 = MBGetDefaultLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v54 = recordID;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "=ck-fetch= Fetch of record %{public}@ got a zone busy error", buf, 0xCu);
            v49 = recordID;
            _MBLog();
          }

          goto LABEL_46;
        }

        v40 = MBGetDefaultLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v54 = recordID;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "=ck-fetch= Fetch of record %{public}@ was rate limited", buf, 0xCu);
          v49 = recordID;
          _MBLog();
        }

        v28 = v52;
        if (![MBError isNetworkDisconnectedError:v11]|| [(MBCKBatchFetch *)self retryWhenNetworkDisconnected])
        {
LABEL_46:
          if (v28 > [v19 maxRetryAttempts])
          {
            goto LABEL_47;
          }

          userInfo = [v11 userInfo];
          v37 = [userInfo objectForKeyedSubscript:CKErrorRetryAfterKey];

          if (v37)
          {
            [v37 doubleValue];
            v25 = v42;
          }

          v43 = fmax(v25, 0.0);
          v44 = MBGetDefaultLog();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            recordID2 = [infoCopy recordID];
            *buf = 138543874;
            v54 = recordID2;
            v55 = 2048;
            v56 = v43;
            v57 = 2048;
            v58 = v28;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "=ck-fetch= Retrying fetch of record %{public}@ after %0.3fs and %lu attempts", buf, 0x20u);

            recordID3 = [infoCopy recordID];
            _MBLog();
          }

          v46 = [NSDate dateWithTimeIntervalSinceNow:v43];
          [infoCopy setRetryDate:v46];

          [infoCopy setState:1];
          v12 = 0;
LABEL_56:

          goto LABEL_57;
        }
      }

      else if (code == 2)
      {
        userInfo2 = [v11 userInfo];
        v36 = [userInfo2 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
        v37 = [v36 objectForKeyedSubscript:recordID];

        if (v37)
        {
          v12 = [(MBCKBatchFetch *)self _handleCompletionForFetchInfo:infoCopy record:recordCopy error:v37];
          v27 = v20;
          goto LABEL_56;
        }

        v48 = MBGetDefaultLog();
        v27 = v20;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v54 = recordID;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "=ck-fetch= No partial error found for record %{public}@", buf, 0xCu);
          _MBLog();
        }

        v28 = v52;
      }

      else
      {
        if (code != 3)
        {
          v27 = v17;
          v28 = v52;
          if (code != 4)
          {
            goto LABEL_47;
          }

          v29 = MBGetDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v54 = recordID;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "=ck-fetch= Fetch of record %{public}@ hit a network failure error", buf, 0xCu);
            v49 = recordID;
            _MBLog();
          }

          v30 = arc4random_uniform(5u);
          v31 = 1.0;
          goto LABEL_41;
        }

        v39 = MBGetDefaultLog();
        v27 = v17;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v54 = recordID;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "=ck-fetch= Fetch of record %{public}@ hit a network unavailable error", buf, 0xCu);
          v49 = recordID;
          _MBLog();
        }

        v28 = v52;
        if (![MBError isNetworkDisconnectedError:v11]|| [(MBCKBatchFetch *)self retryWhenNetworkDisconnected])
        {
          v30 = arc4random_uniform(5u);
          v31 = 10.0;
LABEL_41:
          v25 = fmax(v25, v30 + v31);
          goto LABEL_46;
        }
      }
    }

    else
    {
      v25 = 2.0;
      v27 = v17;
      v28 = v52;
      if (([MBError isError:v11 withCode:304]& 1) != 0)
      {
        goto LABEL_46;
      }

      v25 = 5.0;
      if ([MBError isRetryableXPCError:v11])
      {
        goto LABEL_46;
      }
    }

LABEL_47:

    [infoCopy setError:v11];
    v33 = MBGetDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v54 = recordID;
      v55 = 2048;
      v56 = *&v28;
      v57 = 2112;
      v58 = v11;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=ck-fetch= Failed to fetch record %{public}@ after %lu attempts, error:%@", buf, 0x20u);
      goto LABEL_49;
    }

LABEL_50:

    [(MBCKBatchFetch *)self _performCallbacksForFetchInfo:infoCopy record:recordCopy error:v11];
    v12 = 1;
LABEL_57:

    goto LABEL_58;
  }

  v12 = 1;
LABEL_58:

  return v12;
}

- (void)_sendBatchFetchOperationForFetchInfos:(id)infos
{
  infosCopy = infos;
  ckOperationTracker = [(MBCKBatchFetch *)self ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKBatchFetch _sendBatchFetchOperationForFetchInfos:]", "MBCKBatchFetch.m", 361, "tracker");
  }

  ckOperationPolicy = [(MBCKBatchFetch *)self ckOperationPolicy];
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKBatchFetch _sendBatchFetchOperationForFetchInfos:]", "MBCKBatchFetch.m", 363, "policy");
  }

  v37 = [infosCopy valueForKey:@"recordID"];
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v58 = 0;
  if (self->_usePrivilegedBatchRecordFetch)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [infosCopy count];
        *buf = 138412802;
        *&buf[4] = @"PrivilegedBatchRecordFetch";
        *&buf[12] = 2114;
        *&buf[14] = self;
        *&buf[22] = 2048;
        v60 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ck-fetch= Performing a %@ for %{public}@, c:%lu", buf, 0x20u);
      }

      [infosCopy count];
      _MBLog();
    }

    v9 = [NSPredicate predicateWithFormat:@"recordID IN %@", v37];
    v10 = [[CKQuery alloc] initWithRecordType:@"PrivilegedBatchRecordFetch" predicate:v9];
    v11 = [[CKQueryOperation alloc] initWithQuery:v10];
    if ([ckOperationPolicy fetchAssets])
    {
      v12 = objc_opt_new();
      [v12 setSparseAware:&__kCFBooleanTrue];
      v62 = @"contents";
      v63 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      [v11 setAssetTransferOptionsByKey:v13];
    }
  }

  else
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [infosCopy count];
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=ck-fetch= Fetching a batch for %{public}@, c:%lu", buf, 0x16u);
      }

      [infosCopy count];
      _MBLog();
    }

    v11 = [[CKFetchRecordsOperation alloc] initWithRecordIDs:v37];
    if ([ckOperationPolicy fetchAssets])
    {
      [v11 setShouldFetchAssetContent:{objc_msgSend(ckOperationPolicy, "fetchAssets")}];
    }
  }

  objc_initWeak(&location, v11);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10010B928;
  v52[3] = &unk_1003BECB8;
  v54 = v57;
  v52[4] = self;
  objc_copyWeak(&v55, &location);
  v17 = infosCopy;
  v53 = v17;
  v18 = objc_retainBlock(v52);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10010BB7C;
  v48[3] = &unk_1003BECE0;
  v50 = v57;
  objc_copyWeak(&v51, &location);
  v48[4] = self;
  v19 = v17;
  v49 = v19;
  v20 = objc_retainBlock(v48);
  if (self->_usePrivilegedBatchRecordFetch)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v60 = sub_10010C37C;
    *&v61 = sub_10010C38C;
    *(&v61 + 1) = objc_opt_new();
    v21 = v11;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10010C394;
    v45[3] = &unk_1003BED08;
    v47 = buf;
    v46 = v18;
    [v21 setRecordMatchedBlock:v45];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10010C440;
    v42[3] = &unk_1003BED30;
    v43 = v20;
    v44 = buf;
    [v21 setQueryCompletionBlock:v42];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22 = v11;
    [v22 setPerRecordCompletionBlock:v18];
    [v22 setFetchRecordsCompletionBlock:v20];
  }

  pendingOperationsCount = self->_pendingOperationsCount;
  v24 = MBGetDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = pendingOperationsCount;
    v26 = v24;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      operationID = [v11 operationID];
      v28 = [v37 count];
      *buf = 138544130;
      *&buf[4] = operationID;
      *&buf[12] = 2114;
      *&buf[14] = self;
      *&buf[22] = 2048;
      v60 = v28;
      LOWORD(v61) = 2048;
      *(&v61 + 2) = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=ck-fetch= Created operation %{public}@ for %{public}@, c:%lu, o:%ld", buf, 0x2Au);
    }

    operationID2 = [v11 operationID];
    [v37 count];
    _MBLog();
  }

  fetchGroup = [(MBCKBatchFetch *)self fetchGroup];
  dispatch_group_enter(fetchGroup);

  callbackQueue = [(MBCKBatchFetch *)self callbackQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C45C;
  block[3] = &unk_1003BC5B8;
  block[4] = self;
  v39 = ckOperationTracker;
  v40 = v11;
  v41 = ckOperationPolicy;
  v32 = ckOperationPolicy;
  v33 = v11;
  v34 = ckOperationTracker;
  v35 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(callbackQueue, v35);

  objc_destroyWeak(&v51);
  objc_destroyWeak(&v55);

  objc_destroyWeak(&location);
  _Block_object_dispose(v57, 8);
}

- (void)_scheduleBatchFetchOperationForFetchInfos:(id)infos
{
  infosCopy = infos;
  if (![infosCopy count])
  {
    __assert_rtn("[MBCKBatchFetch _scheduleBatchFetchOperationForFetchInfos:]", "MBCKBatchFetch.m", 502, "fetchInfos.count");
  }

  fetchGroup = [(MBCKBatchFetch *)self fetchGroup];
  dispatch_group_enter(fetchGroup);

  v6 = +[NSDate now];
  fetchSemaphore = [(MBCKBatchFetch *)self fetchSemaphore];
  dispatch_semaphore_wait(fetchSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  v8 = +[NSDate now];
  v30 = v6;
  [v8 timeIntervalSinceDate:v6];
  v10 = v9;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = infosCopy;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v34;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        retryDate = [v18 retryDate];
        v20 = retryDate;
        if (retryDate)
        {
          if (v15)
          {
            v21 = [v15 laterDate:retryDate];

            v15 = v21;
          }

          else
          {
            v15 = retryDate;
          }
        }

        v14 += [v18 assetSize];
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v11 count];
    *buf = 138544130;
    selfCopy2 = self;
    v39 = 2048;
    v40 = *&v23;
    v41 = 2048;
    v42 = v14;
    v43 = 2048;
    v44 = v10;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "=ck-fetch= Preparing to fetch a batch for %{public}@, c:%lu, sz:%llu, tq:%.3fs", buf, 0x2Au);
    [v11 count];
    _MBLog();
  }

  if (v15)
  {
    [v15 timeIntervalSinceNow];
    v25 = fmax(v24, 0.0);
    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v39 = 2048;
      v40 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=ck-fetch= Scheduling a batch for %{public}@ in %0.3fs", buf, 0x16u);
      _MBLog();
    }

    v27 = dispatch_time(0, (v25 * 1000000000.0));
    v28 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010C984;
    block[3] = &unk_1003BC060;
    block[4] = self;
    v32 = v11;
    dispatch_after(v27, v28, block);
  }

  else
  {
    [(MBCKBatchFetch *)self _sendBatchFetchOperationForFetchInfos:v11];
    fetchGroup2 = [(MBCKBatchFetch *)self fetchGroup];
    dispatch_group_leave(fetchGroup2);
  }
}

- (void)_flushBatchedFetches:(unint64_t)fetches
{
  if (!fetches)
  {
    __assert_rtn("[MBCKBatchFetch _flushBatchedFetches:]", "MBCKBatchFetch.m", 537, "flushCount");
  }

  fetchesCopy = fetches;
  ckOperationPolicy = [(MBCKBatchFetch *)self ckOperationPolicy];
  v34 = ckOperationPolicy;
  v6 = ckOperationPolicy;
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKBatchFetch _flushBatchedFetches:]", "MBCKBatchFetch.m", 539, "policy");
  }

  maxBatchCount = [ckOperationPolicy maxBatchCount];
  maxBatchFetchAssetSize = [v6 maxBatchFetchAssetSize];
  fetchIncrementally = [(MBCKBatchFetch *)self fetchIncrementally];
  v37 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fetchInfos = [(MBCKBatchFetch *)selfCopy fetchInfos];
  objectEnumerator = [fetchInfos objectEnumerator];

  v10 = 0;
  v11 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];
    v13 = [v10 count];
    v14 = v13;
    if (!nextObject && !v13)
    {
      nextObject = 0;
      goto LABEL_37;
    }

    if (!nextObject)
    {
      integerValue = 0;
      goto LABEL_12;
    }

    if ([nextObject state])
    {
      goto LABEL_33;
    }

    recordID = [nextObject recordID];
    recordName = [recordID recordName];
    v17 = [recordName componentsSeparatedByString:@":"];

    if ([v17 count] == 5 && (objc_msgSend(v17, "objectAtIndexedSubscript:", 0), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"F"), v18, v19))
    {
      v20 = [v17 objectAtIndexedSubscript:3];
      integerValue = [v20 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    if (((v14 != 0) & fetchIncrementally) != 1)
    {
LABEL_25:

      goto LABEL_26;
    }

    if (v14 >= maxBatchCount)
    {
      break;
    }

    if (!v11)
    {
      goto LABEL_25;
    }

    if (integerValue + v11 >= maxBatchFetchAssetSize)
    {
      goto LABEL_12;
    }

LABEL_26:
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = v24;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        recordID2 = [nextObject recordID];
        *buf = 138543362;
        v44 = recordID2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "=ck-fetch= Adding record %{public}@ to fetch batch", buf, 0xCu);
      }

      recordID3 = [nextObject recordID];
      _MBLog();
    }

    [nextObject setState:2];
    [nextObject setFetchAttempts:{objc_msgSend(nextObject, "fetchAttempts") + 1}];
    if (!v10)
    {
      v10 = objc_opt_new();
    }

    [v10 addObject:{nextObject, recordID3}];
    v11 += integerValue;
LABEL_33:
  }

LABEL_12:
  if (!v10 || !v14)
  {
    __assert_rtn("[MBCKBatchFetch _flushBatchedFetches:]", "MBCKBatchFetch.m", 576, "batch && batchCount");
  }

  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v44 = v14;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "=ck-fetch= Flushing %lu batched fetches", buf, 0xCu);
    recordID3 = v14;
    _MBLog();
  }

  [v37 addObject:v10];
  fetchGroup = [(MBCKBatchFetch *)selfCopy fetchGroup];
  dispatch_group_enter(fetchGroup);

  if (--fetchesCopy)
  {
    v11 = 0;
    v10 = 0;
    if (!nextObject)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v10 = 0;
LABEL_37:

  if ([v10 count])
  {
    __assert_rtn("[MBCKBatchFetch _flushBatchedFetches:]", "MBCKBatchFetch.m", 595, "!batch.count");
  }

  objc_sync_exit(selfCopy);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v27 = v37;
  v28 = [v27 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v28)
  {
    v29 = *v39;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v27);
        }

        [(MBCKBatchFetch *)selfCopy _scheduleBatchFetchOperationForFetchInfos:*(*(&v38 + 1) + 8 * i), recordID3];
        fetchGroup2 = [(MBCKBatchFetch *)selfCopy fetchGroup];
        dispatch_group_leave(fetchGroup2);
      }

      v28 = [v27 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v28);
  }
}

- (void)_fetchRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MBCKBatchFetch *)self _flush];
  fetchGroup = [(MBCKBatchFetch *)self fetchGroup];
  v6 = dispatch_get_global_queue(17, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10010D054;
  v9[3] = &unk_1003BD478;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
  dispatch_group_notify(fetchGroup, v6, v8);
}

- (void)fetchRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  if (atomic_exchange(&self->_started, 1u))
  {
    __assert_rtn("[MBCKBatchFetch fetchRecordsWithCompletion:]", "MBCKBatchFetch.m", 615, "!started && can't start a batch twice");
  }

  v5 = v4;
  [(MBCKBatchFetch *)self _fetchRecordsWithCompletion:completionCopy];
  objc_autoreleasePoolPop(v5);
}

- (BOOL)finishWithError:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10010C37C;
  v15 = sub_10010C38C;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010D26C;
  v8[3] = &unk_1003BC160;
  v10 = &v11;
  v5 = dispatch_semaphore_create(0);
  v9 = v5;
  [(MBCKBatchFetch *)self fetchRecordsWithCompletion:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v12[5];
  }

  v6 = v12[5] == 0;

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (MBCKOperationTracker)ckOperationTracker
{
  WeakRetained = objc_loadWeakRetained(&self->_ckOperationTracker);

  return WeakRetained;
}

@end