@interface MBCKBatchSave
- (BOOL)finishWithError:(id *)a3;
- (MBCKBatchSave)initWithOperationTracker:(id)a3;
- (MBCKOperationTracker)ckOperationTracker;
- (OS_dispatch_semaphore)saveSemaphore;
- (id)_createModifyOperationForSaveInfos:(id)a3;
- (void)_finishBatchedSavesWithCompletion:(id)a3;
- (void)_flush;
- (void)_flushBatchedSaves:(unint64_t)a3;
- (void)_handleCompletionForSaveInfo:(id)a3 operation:(id)a4 record:(id)a5 saveInfos:(id)a6 error:(id)a7;
- (void)_handleCompletionForSaveInfos:(id)a3 operation:(id)a4 savedRecords:(id)a5 operationError:(id)a6;
- (void)_performCallbacksForSaveInfo:(id)a3 record:(id)a4 error:(id)a5;
- (void)_saveRecordsWithCompletion:(id)a3;
- (void)_scheduleBatchSaveOperationForSaveInfos:(id)a3;
- (void)_sendBatchSaveOperationForSaveInfos:(id)a3 savePolicy:(int64_t)a4 batchSize:(unint64_t)a5 batchAssetsSize:(unint64_t)a6;
- (void)cancel;
- (void)dealloc;
- (void)saveRecord:(id)a3 assetSize:(int64_t)a4 delegate:(id)a5 completion:(id)a6;
- (void)saveRecordsWithCompletion:(id)a3;
@end

@implementation MBCKBatchSave

- (MBCKBatchSave)initWithOperationTracker:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBCKBatchSave initWithOperationTracker:]", "MBCKBatchSave.m", 77, "tracker");
  }

  v5 = v4;
  v6 = [v4 ckOperationPolicy];
  if (!v6)
  {
    __assert_rtn("[MBCKBatchSave initWithOperationTracker:]", "MBCKBatchSave.m", 79, "policy");
  }

  v7 = v6;
  v24.receiver = self;
  v24.super_class = MBCKBatchSave;
  v8 = [(MBCKBatchSave *)&v24 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_ckOperationTracker, v5);
    objc_storeStrong(&v9->_ckOperationPolicy, v7);
    *&v9->_saveIncrementally = 257;
    v10 = objc_opt_new();
    saveInfos = v9->_saveInfos;
    v9->_saveInfos = v10;

    v12 = objc_opt_new();
    saveInfosByRecordID = v9->_saveInfosByRecordID;
    v9->_saveInfosByRecordID = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_UTILITY, 0);

    v16 = dispatch_queue_create("com.apple.backupd.batchSave", v15);
    callbackQueue = v9->_callbackQueue;
    v9->_callbackQueue = v16;

    v18 = dispatch_group_create();
    saveGroup = v9->_saveGroup;
    v9->_saveGroup = v18;

    atomic_store(0, &v9->_pendingOperationsCount);
    atomic_store(0, &v9->_started);
    v20 = [[MBCKThroughputEstimator alloc] initWithSamplingPeriod:30 maximumNumberOfPeriods:60.0];
    throughputEstimator = v9->_throughputEstimator;
    v9->_throughputEstimator = v20;

    v22 = objc_opt_new();
    [(MBCKBatchSave *)v9 setTimers:v22];
  }

  return v9;
}

- (void)dealloc
{
  if ([(NSMutableOrderedSet *)self->_saveInfos count])
  {
    __assert_rtn("[MBCKBatchSave dealloc]", "MBCKBatchSave.m", 99, "_saveInfos.count == 0");
  }

  v3.receiver = self;
  v3.super_class = MBCKBatchSave;
  [(MBCKBatchSave *)&v3 dealloc];
}

- (OS_dispatch_semaphore)saveSemaphore
{
  if (qword_100421758 != -1)
  {
    dispatch_once(&qword_100421758, &stru_1003BEA60);
  }

  v3 = qword_100421750;

  return v3;
}

- (void)saveRecord:(id)a3 assetSize:(int64_t)a4 delegate:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v10 recordID];
    *buf = 138543618;
    v57 = v15;
    v58 = 2114;
    v59 = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "=ck-save= Adding a save for %{public}@ to %{public}@", buf, 0x16u);

    v52 = [v10 recordID];
    _MBLog();
  }

  if (v10)
  {
    v22 = atomic_load(&self->_started);
    v23 = v22 ^ 1;
    if (((v22 ^ 1) & 1) == 0)
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "You can't add a new recordID to an already started batch", buf, 2u);
      }
    }

    v25 = _MBAssert(v23 & 1, @"You can't add a new recordID to an already started batch", v16, v17, v18, v19, v20, v21, v52);
    if (v25)
    {
      if (v12)
      {
        v12[2](v12, v10, v25);
      }
    }

    else
    {
      v26 = self;
      objc_sync_enter(v26);
      v55 = [v10 recordID];
      v27 = [(MBCKBatchSave *)v26 saveInfosByRecordID];
      v28 = [v27 objectForKeyedSubscript:v55];

      if (v28)
      {
        v35 = MBGetDefaultLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v57 = v10;
          _os_log_fault_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, "You can't try to save the same record twice: %@", buf, 0xCu);
        }
      }

      v25 = _MBAssert(v28 == 0, @"You can't try to save the same record twice: %@", v29, v30, v31, v32, v33, v34, v10);
      if (v25)
      {
        if (v12)
        {
          v12[2](v12, 0, v25);
        }

        v36 = 1;
      }

      else
      {
        v37 = [(MBCKBatchSave *)v26 ckOperationPolicy];
        if (!v37)
        {
          __assert_rtn("[MBCKBatchSave saveRecord:assetSize:delegate:completion:]", "MBCKBatchSave.m", 146, "policy");
        }

        v54 = v37;
        v38 = [v37 recordSavePolicy];
        if (objc_opt_respondsToSelector())
        {
          v38 = [v11 savePolicy];
        }

        v39 = objc_opt_new();
        [v39 setState:0];
        [v39 setSavePolicy:v38];
        [v39 setDelegate:v11];
        [v39 setRecord:v10];
        [v39 setRecordSize:{objc_msgSend(v10, "size")}];
        [v39 setCompletion:v12];
        [v39 setUploadProgress:0.0];
        v40 = [v55 recordName];
        v53 = [v40 componentsSeparatedByString:@":"];

        if (a4)
        {
          [v39 setAssetSize:a4];
        }

        else if ([v53 count] == 5)
        {
          v41 = [v53 objectAtIndexedSubscript:0];
          v42 = [v41 isEqualToString:@"F"];

          if (v42)
          {
            v43 = [v53 objectAtIndexedSubscript:3];
            [v39 setAssetSize:{objc_msgSend(v43, "integerValue")}];
          }
        }

        v44 = [v54 maxBatchCount];
        v45 = [v54 maxBatchSize];
        v46 = [v54 maxBatchSaveAssetSize];
        if (-[MBCKBatchSave saveIncrementally](v26, "saveIncrementally") && (-[MBCKBatchSave currentBatchCount](v26, "currentBatchCount") && -[MBCKBatchSave currentBatchCount](v26, "currentBatchCount") >= v44 || -[MBCKBatchSave currentBatchSize](v26, "currentBatchSize") && (v47 = -[MBCKBatchSave currentBatchSize](v26, "currentBatchSize"), &v47[[v39 recordSize]] >= v45) || -[MBCKBatchSave currentBatchAssetSize](v26, "currentBatchAssetSize") && (v48 = objc_msgSend(v39, "assetSize"), &v48[-[MBCKBatchSave currentBatchAssetSize](v26, "currentBatchAssetSize")] >= v46)))
        {
          [(MBCKBatchSave *)v26 setCurrentBatchSize:0];
          [(MBCKBatchSave *)v26 setCurrentBatchCount:0];
          [(MBCKBatchSave *)v26 setCurrentBatchAssetSize:0];
          v36 = 0;
        }

        else
        {
          v36 = 1;
        }

        [(MBCKBatchSave *)v26 setCurrentBatchCount:[(MBCKBatchSave *)v26 currentBatchCount]+ 1];
        -[MBCKBatchSave setCurrentBatchSize:](v26, "setCurrentBatchSize:", [v39 recordSize] + -[MBCKBatchSave currentBatchSize](v26, "currentBatchSize"));
        -[MBCKBatchSave setCurrentBatchAssetSize:](v26, "setCurrentBatchAssetSize:", [v39 assetSize] + -[MBCKBatchSave currentBatchAssetSize](v26, "currentBatchAssetSize"));
        v49 = [(MBCKBatchSave *)v26 saveInfosByRecordID];
        v50 = [v10 recordID];
        [v49 setObject:v39 forKeyedSubscript:v50];

        v51 = [(MBCKBatchSave *)v26 saveInfos];
        [v51 addObject:v39];
      }

      objc_sync_exit(v26);
      if (!((v25 != 0) | v36 & 1))
      {
        [(MBCKBatchSave *)v26 _flushBatchedSaves:1];
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = [MBError errorWithCode:1 format:@"You can't save a nil record"];
    if (v11)
    {
      [v11 recordWasSaved:0 withError:v25];
    }

    if (v12)
    {
      v12[2](v12, 0, v25);
    }
  }

  objc_autoreleasePoolPop(v13);
}

- (void)_flush
{
  v3 = objc_autoreleasePoolPush();
  [(MBCKBatchSave *)self _flushBatchedSaves:-1];

  objc_autoreleasePoolPop(v3);
}

- (void)_performCallbacksForSaveInfo:(id)a3 record:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 state] == 3)
  {
    v24 = +[NSAssertionHandler currentHandler];
    v25 = [v9 record];
    v26 = [v25 recordID];
    v27 = +[NSThread callStackSymbols];
    [v24 handleFailureInMethod:a2 object:self file:@"MBCKBatchSave.m" lineNumber:205 description:{@"We've already finished saving record %@: %@", v26, v27}];
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v9 record];
    v14 = [v13 recordID];
    *buf = 138543362;
    v37 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "=ck-save= Performing callbacks for save of record %{public}@", buf, 0xCu);

    v15 = [v9 record];
    v28 = [v15 recordID];
    _MBLog();
  }

  [v9 setState:3];
  [v9 setError:v11];
  if (!v10)
  {
    v10 = [v9 record];
  }

  v16 = [v9 completion];
  [v9 setCompletion:0];
  v17 = [v9 delegate];
  [v9 setDelegate:0];
  v18 = [(MBCKBatchSave *)self callbackQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102ABC;
  block[3] = &unk_1003BEA88;
  v30 = v11;
  v31 = v9;
  v32 = self;
  v33 = v17;
  v34 = v10;
  v35 = v16;
  v19 = v16;
  v20 = v10;
  v21 = v17;
  v22 = v9;
  v23 = v11;
  dispatch_async(v18, block);
}

- (void)_handleCompletionForSaveInfo:(id)a3 operation:(id)a4 record:(id)a5 saveInfos:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfo:operation:record:saveInfos:error:]", "MBCKBatchSave.m", 235, "saveInfo");
  }

  v17 = v16;
  if (!(v13 | v16))
  {
    __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfo:operation:record:saveInfos:error:]", "MBCKBatchSave.m", 236, "operation || error");
  }

  if (!v15)
  {
    __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfo:operation:record:saveInfos:error:]", "MBCKBatchSave.m", 237, "saveInfos");
  }

  if ([v12 state] != 3)
  {
    v18 = [v12 record];
    v19 = [v18 recordID];

    v20 = [v12 saveAttempts];
    [v12 setError:v17];
    if (!v17)
    {
      v36 = MBGetDefaultLog();
      v37 = v36;
      if (v20 == 1)
      {
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_105;
        }

        *buf = 138543362;
        v110 = v19;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "=ck-save= Saved record %{public}@", buf, 0xCu);
      }

      else
      {
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_105;
        }

        *buf = 138543618;
        v110 = v19;
        v111 = 2048;
        v112 = *&v20;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=ck-save= Saved record %{public}@ after %lu attempts", buf, 0x16u);
      }

LABEL_104:
      _MBLog();
      goto LABEL_105;
    }

    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v110 = v19;
      v111 = 2112;
      v112 = *&v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=ck-save= Handling save error for record %{public}@: %@", buf, 0x16u);
      v84 = v19;
      v86 = v17;
      _MBLog();
    }

    v22 = [(MBCKBatchSave *)self ckOperationTracker];
    if (!v22)
    {
      __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfo:operation:record:saveInfos:error:]", "MBCKBatchSave.m", 248, "tracker");
    }

    v23 = v22;
    v24 = [(MBCKBatchSave *)self ckOperationPolicy];
    if (!v24)
    {
      __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfo:operation:record:saveInfos:error:]", "MBCKBatchSave.m", 250, "policy");
    }

    v100 = v20;
    v101 = v23;
    v102 = v24;
    [v24 retryAfterInterval];
    v26 = fmax(v25, 1.0);
    v27 = [v17 domain];
    v28 = [v27 isEqualToString:CKErrorDomain];

    if (!v28)
    {
      if (([MBError isError:v17 withCode:304]& 1) == 0)
      {
        v30 = [MBError isRetryableXPCError:v17];
        if (v30)
        {
          v26 = 5.0;
        }

        goto LABEL_64;
      }

      v26 = 2.0;
LABEL_63:
      v30 = 1;
      goto LABEL_64;
    }

    v29 = [v17 code];
    v30 = 0;
    if (v29 > 6)
    {
      if (v29 > 21)
      {
        if (v29 == 22)
        {
          v41 = MBGetDefaultLog();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
LABEL_62:

            goto LABEL_63;
          }

          *buf = 138543362;
          v110 = v19;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "=ck-save= Save of record %{public}@ hit an atomic failure", buf, 0xCu);
          v84 = v19;
        }

        else
        {
          if (v29 != 23)
          {
            if (v29 == 26)
            {
              v96 = self;
              v31 = [v101 databaseManager];
              if (!v31)
              {
                __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfo:operation:record:saveInfos:error:]", "MBCKBatchSave.m", 287, "databaseManager");
              }

              v32 = v31;
              v33 = [v101 account];
              v34 = [v101 ckOperationGroup];
              v35 = [v101 xpcActivity];
              v107 = 0;
              [v32 setUpSyncZoneWithAccount:v33 policy:v102 operationGroup:v34 xpcActivity:v35 error:&v107];

              v30 = 1;
              self = v96;
            }

            goto LABEL_64;
          }

          v41 = MBGetDefaultLog();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_62;
          }

          *buf = 138543362;
          v110 = v19;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "=ck-save= Save of record %{public}@ got a zone busy error", buf, 0xCu);
          v84 = v19;
        }

LABEL_61:
        _MBLog();
        goto LABEL_62;
      }

      if (v29 == 7)
      {
        v55 = MBGetDefaultLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v110 = v19;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "=ck-save= Save of record %{public}@ was rate limited", buf, 0xCu);
          v84 = v19;
          _MBLog();
        }

        if ([MBError isNetworkDisconnectedError:v17])
        {
          v30 = [(MBCKBatchSave *)self retryWhenNetworkDisconnected];
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      if (v29 == 14)
      {
        v42 = [v12 delegate];
        if (objc_opt_respondsToSelector())
        {
          v97 = [v12 record];
          v43 = [v17 userInfo];
          v94 = [v43 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

          v44 = [v17 userInfo];
          v45 = [v44 objectForKeyedSubscript:CKRecordChangedErrorAncestorRecordKey];

          v90 = v42;
          v92 = v45;
          v46 = [v42 handleMergeConflictWithOperationTracker:v101 attemptedRecord:v97 serverRecord:v94 originalRecord:v45];
          v30 = v46 != 0;
          v47 = MBGetDefaultLog();
          v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          if (v46)
          {
            if (v48)
            {
              *buf = 138544386;
              v110 = v19;
              v111 = 2112;
              v112 = *&v97;
              v113 = 2112;
              v114 = v94;
              v115 = 2112;
              v116 = v92;
              v117 = 2112;
              v118 = v46;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "=ck-save= Merged record %{public}@, attemptedRecord:%@, serverRecord:%@, originalRecord:%@, mergedRecord:%@", buf, 0x34u);
              v88 = v92;
              v89 = v46;
              v86 = v97;
              v87 = v94;
              v84 = v19;
              _MBLog();
            }

            [v12 setRecord:v46];
            v26 = 0.01;
          }

          else
          {
            if (v48)
            {
              *buf = 138543362;
              v110 = v19;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "=ck-save= Save delegate didn't want to merge record %{public}@", buf, 0xCu);
              v84 = v19;
              _MBLog();
            }
          }

          v42 = v90;
        }

        else
        {
          v30 = 0;
        }
      }

LABEL_64:
      if ([v13 atomic])
      {
        v93 = v15;
        v56 = [v12 record];
        [v56 recordID];
        v57 = v98 = self;
        [v57 zoneID];
        v58 = v95 = v14;
        +[CKRecordZone defaultRecordZone];
        v59 = v91 = v19;
        v60 = [v59 zoneID];
        v61 = [v58 isEqual:v60];

        v19 = v91;
        v14 = v95;

        self = v98;
        if (v61)
        {
LABEL_66:
          v15 = v93;
          if (!v30)
          {
            goto LABEL_102;
          }

          goto LABEL_89;
        }

        v15 = v93;
        if (!v30 && [MBError isCKError:v17 withCode:14])
        {
LABEL_102:

          v37 = MBGetDefaultLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v110 = v19;
            v111 = 2048;
            v112 = *&v100;
            v113 = 2112;
            v114 = v17;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "=ck-save= Failed to save record %{public}@ after %lu attempts, error:%@", buf, 0x20u);
            goto LABEL_104;
          }

LABEL_105:

          [(MBCKBatchSave *)self _performCallbacksForSaveInfo:v12 record:v14 error:v17];
          goto LABEL_106;
        }

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v62 = v93;
        v63 = [v62 countByEnumeratingWithState:&v103 objects:v108 count:16];
        if (v63)
        {
          v64 = v63;
          v65 = 0;
          v66 = 0;
          v67 = *v104;
          do
          {
            for (i = 0; i != v64; i = i + 1)
            {
              if (*v104 != v67)
              {
                objc_enumerationMutation(v62);
              }

              v69 = *(*(&v103 + 1) + 8 * i);
              if (v69 != v12)
              {
                v70 = [v69 state];
                if (v70 == 1)
                {
                  v65 = 1;
                }

                else if (v70 == 3)
                {
                  v66 = 1;
                }
              }
            }

            v64 = [v62 countByEnumeratingWithState:&v103 objects:v108 count:16];
          }

          while (v64);

          if (v30 || (v65 & 1) == 0)
          {
            v14 = v95;
            self = v98;
            v19 = v91;
            if ((v30 & v66) == 1)
            {
              v71 = MBGetDefaultLog();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v110 = v91;
                _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "=ck-save= Not retrying %{public}@", buf, 0xCu);
                _MBLog();
              }

              v15 = v93;
              goto LABEL_101;
            }

            goto LABEL_66;
          }

          v82 = MBGetDefaultLog();
          v15 = v93;
          v14 = v95;
          v19 = v91;
          self = v98;
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v110 = v91;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "=ck-save= Forcing retry for %{public}@", buf, 0xCu);
            v85 = v91;
            _MBLog();
          }

LABEL_89:
          if (v100 > [v102 maxRetryAttempts])
          {
            goto LABEL_102;
          }

          v72 = [v17 userInfo];
          v73 = [v72 objectForKeyedSubscript:CKErrorRetryAfterKey];

          if (v73)
          {
            [v73 doubleValue];
            v26 = v74;
          }

          v99 = v73;
          v75 = fmax(v26, 0.0);
          v76 = [v12 delegate];
          if (objc_opt_respondsToSelector() & 1) == 0 || ([v76 shouldRetrySaveWithRetryAfterInterval:v19 recordID:v17 error:v75])
          {
            v77 = v19;
            v78 = MBGetDefaultLog();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v110 = v77;
              v111 = 2048;
              v112 = v75;
              v113 = 2048;
              v114 = v100;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "=ck-save= Retrying save of record %{public}@ in %0.3fs after %lu attempts", buf, 0x20u);
              _MBLog();
            }

            v79 = [NSDate dateWithTimeIntervalSinceNow:v75];
            [v12 setRetryDate:v79];

            [v12 setState:1];
            v19 = v77;
            v53 = v99;
            goto LABEL_97;
          }

          v80 = self;
          v81 = MBGetDefaultLog();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v110 = v19;
            v111 = 2048;
            v112 = v75;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "=ck-save= Not retrying save of record %{public}@ in %0.3fs per delegate", buf, 0x16u);
            _MBLog();
          }

          self = v80;
          v71 = v99;
LABEL_101:

          goto LABEL_102;
        }

        self = v98;
      }

      if (!v30)
      {
        goto LABEL_102;
      }

      goto LABEL_89;
    }

    if (v29 <= 3)
    {
      if (v29 == 2)
      {
        v49 = self;
        v50 = [v17 userInfo];
        v51 = [v50 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
        v52 = [v51 objectForKeyedSubscript:v19];

        v53 = v52;
        if (v52)
        {
          [(MBCKBatchSave *)v49 _handleCompletionForSaveInfo:v12 operation:v13 record:v14 saveInfos:v15 error:v52];
LABEL_97:

LABEL_106:
          goto LABEL_107;
        }

        v83 = MBGetDefaultLog();
        self = v49;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v110 = v19;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "=ck-save= No partial error found for record %{public}@", buf, 0xCu);
          v84 = v19;
          _MBLog();
        }
      }

      else
      {
        if (v29 != 3)
        {
          goto LABEL_64;
        }

        v38 = MBGetDefaultLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v110 = v19;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "=ck-save= Save of record %{public}@ hit a network unavailable error", buf, 0xCu);
          v84 = v19;
          _MBLog();
        }

        if (![MBError isNetworkDisconnectedError:v17]|| [(MBCKBatchSave *)self retryWhenNetworkDisconnected])
        {
          v39 = arc4random_uniform(5u);
          v40 = 10.0;
LABEL_52:
          v26 = fmax(v26, v39 + v40);
          goto LABEL_63;
        }
      }

      v30 = 0;
      goto LABEL_64;
    }

    if (v29 != 4)
    {
      if (v29 != 6)
      {
        goto LABEL_64;
      }

      v41 = MBGetDefaultLog();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_62;
      }

      *buf = 138543362;
      v110 = v19;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "=ck-save= Save of record %{public}@ hit a service unavailable error", buf, 0xCu);
      v84 = v19;
      goto LABEL_61;
    }

    v54 = MBGetDefaultLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v110 = v19;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "=ck-save= Save of record %{public}@ hit a network failure error", buf, 0xCu);
      v84 = v19;
      _MBLog();
    }

    v39 = arc4random_uniform(5u);
    v40 = 1.0;
    goto LABEL_52;
  }

LABEL_107:
}

- (void)_finishBatchedSavesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MBCKBatchSave *)v5 saveInfos];
  v7 = [v6 count];

  objc_sync_exit(v5);
  if (v7)
  {
    [(MBCKBatchSave *)v5 _saveRecordsWithCompletion:v4];
  }

  else
  {
    if ([(MBCKBatchSave *)v5 canceled])
    {
      [MBError errorWithCode:202 format:@"Batch save canceled"];
    }

    else
    {
      [(MBCKBatchSave *)v5 saveError];
    }
    v8 = ;
    v9 = MBGetDefaultLog();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v17 = v5;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ck-save= Failed %{public}@: %@", buf, 0x16u);
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=ck-save= Finished %{public}@", buf, 0xCu);
      _MBLog();
    }

    if (v4)
    {
      v11 = [(MBCKBatchSave *)v5 callbackQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100103E74;
      block[3] = &unk_1003BE9A8;
      v15 = v4;
      v14 = v8;
      v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v11, v12);
    }
  }
}

- (id)_createModifyOperationForSaveInfos:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKey:@"record"];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v5 count];
    v8 = [v5 valueForKey:@"recordID"];
    *buf = 134218498;
    v19 = v7;
    v20 = 2114;
    v21 = self;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "=ck-save= Creating batch of %lu records for %{public}@, recordIDs:%{public}@", buf, 0x20u);

    [v5 count];
    v12 = [v5 valueForKey:@"recordID"];
    _MBLog();
  }

  v9 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v5 recordIDsToDelete:0];
  objc_initWeak(buf, v9);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100104178;
  v17[3] = &unk_1003BEAB0;
  v17[4] = self;
  [v9 setPerRecordProgressBlock:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001044D0;
  v16[3] = &unk_1003BEAD8;
  v16[4] = self;
  [v9 setRecordsInFlightBlock:v16];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100104718;
  v13[3] = &unk_1003BEB00;
  objc_copyWeak(&v15, buf);
  v13[4] = self;
  v10 = v4;
  v14 = v10;
  [v9 setPerRecordSaveBlock:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  return v9;
}

- (void)_handleCompletionForSaveInfos:(id)a3 operation:(id)a4 savedRecords:(id)a5 operationError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v32 = a5;
  v12 = a6;
  v34 = v11;
  v13 = [v11 operationID];
  v35 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  v33 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  obj = self;
  objc_sync_enter(obj);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v15)
  {
    v16 = 0;
    v17 = *v38;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        if ([v19 state] == 2)
        {
          if (!v12)
          {
            if (MBIsInternalInstall())
            {
              if (!v13)
              {
                __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfos:operation:savedRecords:operationError:]", "MBCKBatchSave.m", 493, "operationID");
              }

              v20 = MBGetDefaultLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
              {
                *buf = 138413058;
                v44 = v13;
                v45 = 2112;
                v46 = v19;
                v47 = 2112;
                v48 = v14;
                v49 = 2112;
                v50 = v32;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "=ck-save= Received unexpected completion for operationID:%@, saveInfo:%@, saveInfos:%@, savedRecords:%@", buf, 0x2Au);
                _MBLog();
              }

              v41[0] = @"operationID";
              v41[1] = @"recordID";
              v42[0] = v13;
              v21 = [v19 record];
              v22 = [v21 recordID];
              v42[1] = v22;
              v23 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];

              if (!dword_100421748 && !atomic_fetch_add_explicit(&dword_100421748, 1u, memory_order_relaxed))
              {
                _MBCreateDiagnosticReport(@"CKModifyRecordsOperation completed successfully without invoking perRecordCompletionBlock", v23);
              }
            }

            v24 = MBGetDefaultLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v44 = v13;
              v45 = 2112;
              v46 = v19;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=ck-save= Received unexpected completion for operationID:%@, saveInfo:%@", buf, 0x16u);
              _MBLog();
            }

            v12 = [MBError errorWithCode:304 format:@"Unexpected nil error for operation %@", v13];
          }

          [(MBCKBatchSave *)obj _handleCompletionForSaveInfo:v19 operation:v34 record:0 saveInfos:v14 error:v12];
          if ([v19 state] == 3)
          {
            v25 = [v19 record];
            v26 = [v25 recordID];
            [v33 addObject:v26];
          }
        }

        if ([v19 state] == 3)
        {
          v27 = [v19 error];
          [v35 addObject:v19];
          if (v27)
          {
            if (v12)
            {
              v28 = v12;
            }

            else
            {
              v28 = v27;
            }

            v29 = v28;

            v16 = v29;
          }
        }

        else if ([v19 state] == 1)
        {
          [v19 setState:0];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v15);

    if (v16)
    {
      [(MBCKBatchSave *)obj setSaveError:v16];
    }
  }

  else
  {

    v16 = 0;
  }

  v30 = [(MBCKBatchSave *)obj saveInfosByRecordID];
  [v30 removeObjectsForKeys:v33];

  v31 = [(MBCKBatchSave *)obj saveInfos];
  [v31 removeObjectsInArray:v35];

  objc_sync_exit(obj);
}

- (void)_sendBatchSaveOperationForSaveInfos:(id)a3 savePolicy:(int64_t)a4 batchSize:(unint64_t)a5 batchAssetsSize:(unint64_t)a6
{
  v10 = a3;
  v11 = [(MBCKBatchSave *)self ckOperationTracker];
  if (!v11)
  {
    __assert_rtn("[MBCKBatchSave _sendBatchSaveOperationForSaveInfos:savePolicy:batchSize:batchAssetsSize:]", "MBCKBatchSave.m", 525, "tracker");
  }

  v12 = [(MBCKBatchSave *)self ckOperationPolicy];
  if (!v12)
  {
    __assert_rtn("[MBCKBatchSave _sendBatchSaveOperationForSaveInfos:savePolicy:batchSize:batchAssetsSize:]", "MBCKBatchSave.m", 527, "policy");
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    v36 = self;
    v37 = 2048;
    v38 = a4;
    v39 = 2048;
    v40 = [v10 count];
    v41 = 2048;
    v42 = a5;
    v43 = 2048;
    v44 = a6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=ck-save= Saving a batch for %{public}@, sp:%ld, c:%lu, sz:%lu(%llu)", buf, 0x34u);
    [v10 count];
    _MBLog();
  }

  v14 = [(MBCKBatchSave *)self _createModifyOperationForSaveInfos:v10];
  objc_initWeak(&location, v14);
  [v14 setSavePolicy:a4];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001051BC;
  v31[3] = &unk_1003BEB28;
  objc_copyWeak(&v33, &location);
  v31[4] = self;
  v15 = v10;
  v32 = v15;
  [v14 setModifyRecordsCompletionBlock:v31];
  pendingOperationsCount = self->_pendingOperationsCount;
  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = pendingOperationsCount;
    v19 = v17;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v14 operationID];
      *buf = 138543874;
      v36 = v20;
      v37 = 2114;
      v38 = self;
      v39 = 2048;
      v40 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=ck-save= Created operation %{public}@ for %{public}@, o:%ld", buf, 0x20u);
    }

    v26 = [v14 operationID];
    _MBLog();
  }

  v21 = [(MBCKBatchSave *)self saveGroup];
  dispatch_group_enter(v21);

  v22 = [(MBCKBatchSave *)self callbackQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001053E8;
  block[3] = &unk_1003BC5B8;
  block[4] = self;
  v28 = v11;
  v29 = v14;
  v30 = v12;
  v23 = v12;
  v24 = v14;
  v25 = v11;
  dispatch_async(v22, block);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

- (void)_scheduleBatchSaveOperationForSaveInfos:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    __assert_rtn("[MBCKBatchSave _scheduleBatchSaveOperationForSaveInfos:]", "MBCKBatchSave.m", 567, "saveInfos.count");
  }

  v37 = self;
  v5 = [(MBCKBatchSave *)self saveGroup];
  dispatch_group_enter(v5);

  v36 = +[NSDate now];
  v6 = [(MBCKBatchSave *)v37 saveSemaphore];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  v7 = +[NSDate now];
  [v7 timeIntervalSinceDate:v36];
  v9 = v8;

  v10 = [v4 firstObject];
  v11 = [v10 savePolicy];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v4;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (v15)
  {
    v16 = *v43;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v42 + 1) + 8 * i);
        if (v11 != [v18 savePolicy])
        {
          __assert_rtn("[MBCKBatchSave _scheduleBatchSaveOperationForSaveInfos:]", "MBCKBatchSave.m", 580, "savePolicy == saveInfo.savePolicy");
        }

        v19 = [v18 retryDate];
        v20 = v19;
        if (v19)
        {
          if (v14)
          {
            v21 = [v14 laterDate:v19];

            v14 = v21;
          }

          else
          {
            v14 = v19;
          }
        }

        v22 = [v18 recordSize];
        v23 = [v18 assetSize];

        v13 = &v13[v22];
        v12 = &v12[v23];
      }

      v15 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
    }

    while (v15);
  }

  v24 = MBGetDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [obj count];
    *buf = 138544386;
    v47 = v37;
    v48 = 2048;
    v49 = *&v25;
    v50 = 2048;
    v51 = v13;
    v52 = 2048;
    v53 = v12;
    v54 = 2048;
    v55 = v9;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=ck-save= Preparing to save a batch for %{public}@, c:%lu, sz:%lu(%llu), tq:%.3fs", buf, 0x34u);
    [obj count];
    _MBLog();
  }

  if (v14)
  {
    [v14 timeIntervalSinceNow];
    v27 = v26;
    v28 = MBGetDefaultLog();
    v29 = fmax(v27, 0.0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v47 = v37;
      v48 = 2048;
      v49 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=ck-save= Scheduling a batch for %{public}@ in %0.3fs", buf, 0x16u);
      _MBLog();
    }

    v30 = [MBOneShotTimer alloc];
    v31 = dispatch_get_global_queue(17, 0);
    v32 = [(MBOneShotTimer *)v30 initWithSeconds:v31 queue:v29];

    objc_initWeak(buf, v32);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100105A80;
    v39[3] = &unk_1003BEB50;
    objc_copyWeak(v41, buf);
    v39[4] = v37;
    v40 = obj;
    v41[1] = v11;
    v41[2] = v13;
    v41[3] = v12;
    [v32 setHandler:v39];
    v33 = v37;
    objc_sync_enter(v33);
    v34 = [(MBCKBatchSave *)v33 timers];
    [v34 addObject:v32];

    v35 = [(MBCKBatchSave *)v33 throughputEstimator];
    [v35 incrementRetryCount];

    [v32 resume];
    objc_sync_exit(v33);

    if ([(MBCKBatchSave *)v33 canceled])
    {
      [v32 cancel];
    }

    objc_destroyWeak(v41);
    objc_destroyWeak(buf);
  }

  else
  {
    [(MBCKBatchSave *)v37 _sendBatchSaveOperationForSaveInfos:obj savePolicy:v11 batchSize:v13 batchAssetsSize:v12];
    v32 = [(MBCKBatchSave *)v37 saveGroup];
    dispatch_group_leave(v32);
  }
}

- (void)_flushBatchedSaves:(unint64_t)a3
{
  if (!a3)
  {
    __assert_rtn("[MBCKBatchSave _flushBatchedSaves:]", "MBCKBatchSave.m", 623, "flushCount");
  }

  v3 = a3;
  v5 = [(MBCKBatchSave *)self ckOperationPolicy];
  v42 = v5;
  v6 = v5;
  if (!v5)
  {
    __assert_rtn("[MBCKBatchSave _flushBatchedSaves:]", "MBCKBatchSave.m", 628, "policy");
  }

  v38 = [v5 maxBatchCount];
  v37 = [v6 maxBatchSize];
  v36 = [v6 maxBatchSaveAssetSize];
  v40 = [(MBCKBatchSave *)self saveIncrementally];
  v44 = objc_opt_new();
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(MBCKBatchSave *)v7 saveInfos];
  v9 = [v8 array];

  v39 = v9;
  v41 = [v9 sortedArrayWithOptions:16 usingComparator:&stru_1003BEB70];
  v43 = [v42 recordSavePolicy];
  v47 = [v41 objectEnumerator];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v48 = 0;
  v49 = 0;
  while (1)
  {
    v13 = [v47 nextObject];

    v14 = [v12 count];
    v15 = v14;
    if (!v13 && !v14)
    {
      v13 = 0;
      v17 = v11;
      goto LABEL_44;
    }

    if (!v13)
    {
      v45 = 0;
      v46 = 0;
      v16 = 0;
      v17 = v11;
      goto LABEL_10;
    }

    if ([v13 state])
    {
      v16 = 0;
      v17 = v11;
      goto LABEL_33;
    }

    v16 = [v13 record];
    v22 = [v16 recordID];
    v17 = [v22 zoneID];

    v46 = [v13 recordSize];
    v45 = [v13 assetSize];
    v23 = [v13 savePolicy];
    if (!v15)
    {
      v43 = v23;
      goto LABEL_26;
    }

    if (v43 != v23)
    {
      break;
    }

    if (v11)
    {
      v24 = [v11 isEqual:v17];
      if ((v24 & v40 & 1) == 0)
      {
        if ((v24 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_26;
      }
    }

    else if (!v40)
    {
      goto LABEL_26;
    }

    if (v15 >= v38 || v46 + v49 > v37)
    {
      goto LABEL_10;
    }

    if (v48)
    {
      if (v45 + v48 > v36)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v48 = 0;
    }

LABEL_26:
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = v25;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [v16 recordID];
        *buf = 138543362;
        v56 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "=ck-save= Adding record %{public}@ to save batch", buf, 0xCu);
      }

      v34 = [v16 recordID];
      _MBLog();
    }

    [v13 setState:2];
    [v13 setSaveAttempts:{objc_msgSend(v13, "saveAttempts") + 1}];
    [v13 setUploadProgress:0.0];
    if (!v12)
    {
      v12 = objc_opt_new();
    }

    [v12 addObject:{v13, v34, v35}];
    v49 += v46;
    v48 += v45;
LABEL_33:

    v28 = v17;
    v10 = v13;
    v11 = v28;
  }

  v43 = v23;
LABEL_10:
  if (!v12 || !v15)
  {
    __assert_rtn("[MBCKBatchSave _flushBatchedSaves:]", "MBCKBatchSave.m", 688, "batch && batchCount");
  }

  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v12 count];
      *buf = 134218242;
      v56 = v20;
      v57 = 2112;
      v58 = v11;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "=ck-save= Flushing %lu batched saves, zoneID:%@", buf, 0x16u);
    }

    v34 = [v12 count];
    v35 = v11;
    _MBLog();
  }

  [v44 addObject:v12];
  v21 = [(MBCKBatchSave *)v7 saveGroup];
  dispatch_group_enter(v21);

  if (--v3)
  {
    v48 = 0;
    v49 = 0;
    v12 = 0;
    if (!v13)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_44:
  if ([v12 count])
  {
    __assert_rtn("[MBCKBatchSave _flushBatchedSaves:]", "MBCKBatchSave.m", 711, "!batch.count");
  }

  objc_sync_exit(v7);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v29 = v44;
  v30 = [v29 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v30)
  {
    v31 = *v51;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(v29);
        }

        [(MBCKBatchSave *)v7 _scheduleBatchSaveOperationForSaveInfos:*(*(&v50 + 1) + 8 * i)];
        v33 = [(MBCKBatchSave *)v7 saveGroup];
        dispatch_group_leave(v33);
      }

      v30 = [v29 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v30);
  }
}

- (void)_saveRecordsWithCompletion:(id)a3
{
  v4 = a3;
  [(MBCKBatchSave *)self _flush];
  v5 = [(MBCKBatchSave *)self saveGroup];
  v6 = dispatch_get_global_queue(17, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001063E8;
  v9[3] = &unk_1003BD478;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
  dispatch_group_notify(v5, v6, v8);
}

- (void)saveRecordsWithCompletion:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  if (atomic_exchange(&self->_started, 1u))
  {
    __assert_rtn("[MBCKBatchSave saveRecordsWithCompletion:]", "MBCKBatchSave.m", 732, "!started && can't start a batch twice");
  }

  v5 = v4;
  [(MBCKBatchSave *)self _saveRecordsWithCompletion:v6];
  objc_autoreleasePoolPop(v5);
}

- (void)cancel
{
  [(MBCKBatchSave *)self setCanceled:1];
  v3 = self;
  objc_sync_enter(v3);
  v4 = [(MBCKBatchSave *)v3 timers];
  v5 = [v4 copy];

  objc_sync_exit(v3);
  [v5 enumerateObjectsUsingBlock:&stru_1003BEBB0];
}

- (BOOL)finishWithError:(id *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1001066C4;
  v15 = sub_1001066D4;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001066DC;
  v8[3] = &unk_1003BC160;
  v10 = &v11;
  v5 = dispatch_semaphore_create(0);
  v9 = v5;
  [(MBCKBatchSave *)self saveRecordsWithCompletion:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    *a3 = v12[5];
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