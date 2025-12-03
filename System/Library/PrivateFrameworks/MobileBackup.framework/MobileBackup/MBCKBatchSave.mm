@interface MBCKBatchSave
- (BOOL)finishWithError:(id *)error;
- (MBCKBatchSave)initWithOperationTracker:(id)tracker;
- (MBCKOperationTracker)ckOperationTracker;
- (OS_dispatch_semaphore)saveSemaphore;
- (id)_createModifyOperationForSaveInfos:(id)infos;
- (void)_finishBatchedSavesWithCompletion:(id)completion;
- (void)_flush;
- (void)_flushBatchedSaves:(unint64_t)saves;
- (void)_handleCompletionForSaveInfo:(id)info operation:(id)operation record:(id)record saveInfos:(id)infos error:(id)error;
- (void)_handleCompletionForSaveInfos:(id)infos operation:(id)operation savedRecords:(id)records operationError:(id)error;
- (void)_performCallbacksForSaveInfo:(id)info record:(id)record error:(id)error;
- (void)_saveRecordsWithCompletion:(id)completion;
- (void)_scheduleBatchSaveOperationForSaveInfos:(id)infos;
- (void)_sendBatchSaveOperationForSaveInfos:(id)infos savePolicy:(int64_t)policy batchSize:(unint64_t)size batchAssetsSize:(unint64_t)assetsSize;
- (void)cancel;
- (void)dealloc;
- (void)saveRecord:(id)record assetSize:(int64_t)size delegate:(id)delegate completion:(id)completion;
- (void)saveRecordsWithCompletion:(id)completion;
@end

@implementation MBCKBatchSave

- (MBCKBatchSave)initWithOperationTracker:(id)tracker
{
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKBatchSave initWithOperationTracker:]", "MBCKBatchSave.m", 77, "tracker");
  }

  v5 = trackerCopy;
  ckOperationPolicy = [trackerCopy ckOperationPolicy];
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKBatchSave initWithOperationTracker:]", "MBCKBatchSave.m", 79, "policy");
  }

  v7 = ckOperationPolicy;
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

- (void)saveRecord:(id)record assetSize:(int64_t)size delegate:(id)delegate completion:(id)completion
{
  recordCopy = record;
  delegateCopy = delegate;
  completionCopy = completion;
  v13 = objc_autoreleasePoolPush();
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    recordID = [recordCopy recordID];
    *buf = 138543618;
    v57 = recordID;
    v58 = 2114;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "=ck-save= Adding a save for %{public}@ to %{public}@", buf, 0x16u);

    recordID2 = [recordCopy recordID];
    _MBLog();
  }

  if (recordCopy)
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

    v25 = _MBAssert(v23 & 1, @"You can't add a new recordID to an already started batch", v16, v17, v18, v19, v20, v21, recordID2);
    if (v25)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, recordCopy, v25);
      }
    }

    else
    {
      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      recordID3 = [recordCopy recordID];
      saveInfosByRecordID = [(MBCKBatchSave *)selfCopy2 saveInfosByRecordID];
      v28 = [saveInfosByRecordID objectForKeyedSubscript:recordID3];

      if (v28)
      {
        v35 = MBGetDefaultLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v57 = recordCopy;
          _os_log_fault_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, "You can't try to save the same record twice: %@", buf, 0xCu);
        }
      }

      v25 = _MBAssert(v28 == 0, @"You can't try to save the same record twice: %@", v29, v30, v31, v32, v33, v34, recordCopy);
      if (v25)
      {
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0, v25);
        }

        v36 = 1;
      }

      else
      {
        ckOperationPolicy = [(MBCKBatchSave *)selfCopy2 ckOperationPolicy];
        if (!ckOperationPolicy)
        {
          __assert_rtn("[MBCKBatchSave saveRecord:assetSize:delegate:completion:]", "MBCKBatchSave.m", 146, "policy");
        }

        v54 = ckOperationPolicy;
        recordSavePolicy = [ckOperationPolicy recordSavePolicy];
        if (objc_opt_respondsToSelector())
        {
          recordSavePolicy = [delegateCopy savePolicy];
        }

        v39 = objc_opt_new();
        [v39 setState:0];
        [v39 setSavePolicy:recordSavePolicy];
        [v39 setDelegate:delegateCopy];
        [v39 setRecord:recordCopy];
        [v39 setRecordSize:{objc_msgSend(recordCopy, "size")}];
        [v39 setCompletion:completionCopy];
        [v39 setUploadProgress:0.0];
        recordName = [recordID3 recordName];
        v53 = [recordName componentsSeparatedByString:@":"];

        if (size)
        {
          [v39 setAssetSize:size];
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

        maxBatchCount = [v54 maxBatchCount];
        maxBatchSize = [v54 maxBatchSize];
        maxBatchSaveAssetSize = [v54 maxBatchSaveAssetSize];
        if (-[MBCKBatchSave saveIncrementally](selfCopy2, "saveIncrementally") && (-[MBCKBatchSave currentBatchCount](selfCopy2, "currentBatchCount") && -[MBCKBatchSave currentBatchCount](selfCopy2, "currentBatchCount") >= maxBatchCount || -[MBCKBatchSave currentBatchSize](selfCopy2, "currentBatchSize") && (v47 = -[MBCKBatchSave currentBatchSize](selfCopy2, "currentBatchSize"), &v47[[v39 recordSize]] >= maxBatchSize) || -[MBCKBatchSave currentBatchAssetSize](selfCopy2, "currentBatchAssetSize") && (v48 = objc_msgSend(v39, "assetSize"), &v48[-[MBCKBatchSave currentBatchAssetSize](selfCopy2, "currentBatchAssetSize")] >= maxBatchSaveAssetSize)))
        {
          [(MBCKBatchSave *)selfCopy2 setCurrentBatchSize:0];
          [(MBCKBatchSave *)selfCopy2 setCurrentBatchCount:0];
          [(MBCKBatchSave *)selfCopy2 setCurrentBatchAssetSize:0];
          v36 = 0;
        }

        else
        {
          v36 = 1;
        }

        [(MBCKBatchSave *)selfCopy2 setCurrentBatchCount:[(MBCKBatchSave *)selfCopy2 currentBatchCount]+ 1];
        -[MBCKBatchSave setCurrentBatchSize:](selfCopy2, "setCurrentBatchSize:", [v39 recordSize] + -[MBCKBatchSave currentBatchSize](selfCopy2, "currentBatchSize"));
        -[MBCKBatchSave setCurrentBatchAssetSize:](selfCopy2, "setCurrentBatchAssetSize:", [v39 assetSize] + -[MBCKBatchSave currentBatchAssetSize](selfCopy2, "currentBatchAssetSize"));
        saveInfosByRecordID2 = [(MBCKBatchSave *)selfCopy2 saveInfosByRecordID];
        recordID4 = [recordCopy recordID];
        [saveInfosByRecordID2 setObject:v39 forKeyedSubscript:recordID4];

        saveInfos = [(MBCKBatchSave *)selfCopy2 saveInfos];
        [saveInfos addObject:v39];
      }

      objc_sync_exit(selfCopy2);
      if (!((v25 != 0) | v36 & 1))
      {
        [(MBCKBatchSave *)selfCopy2 _flushBatchedSaves:1];
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = [MBError errorWithCode:1 format:@"You can't save a nil record"];
    if (delegateCopy)
    {
      [delegateCopy recordWasSaved:0 withError:v25];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v25);
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

- (void)_performCallbacksForSaveInfo:(id)info record:(id)record error:(id)error
{
  infoCopy = info;
  recordCopy = record;
  errorCopy = error;
  if ([infoCopy state] == 3)
  {
    v24 = +[NSAssertionHandler currentHandler];
    record = [infoCopy record];
    recordID = [record recordID];
    v27 = +[NSThread callStackSymbols];
    [v24 handleFailureInMethod:a2 object:self file:@"MBCKBatchSave.m" lineNumber:205 description:{@"We've already finished saving record %@: %@", recordID, v27}];
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    record2 = [infoCopy record];
    recordID2 = [record2 recordID];
    *buf = 138543362;
    v37 = recordID2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "=ck-save= Performing callbacks for save of record %{public}@", buf, 0xCu);

    record3 = [infoCopy record];
    recordID3 = [record3 recordID];
    _MBLog();
  }

  [infoCopy setState:3];
  [infoCopy setError:errorCopy];
  if (!recordCopy)
  {
    recordCopy = [infoCopy record];
  }

  completion = [infoCopy completion];
  [infoCopy setCompletion:0];
  delegate = [infoCopy delegate];
  [infoCopy setDelegate:0];
  callbackQueue = [(MBCKBatchSave *)self callbackQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102ABC;
  block[3] = &unk_1003BEA88;
  v30 = errorCopy;
  v31 = infoCopy;
  selfCopy = self;
  v33 = delegate;
  v34 = recordCopy;
  v35 = completion;
  v19 = completion;
  v20 = recordCopy;
  v21 = delegate;
  v22 = infoCopy;
  v23 = errorCopy;
  dispatch_async(callbackQueue, block);
}

- (void)_handleCompletionForSaveInfo:(id)info operation:(id)operation record:(id)record saveInfos:(id)infos error:(id)error
{
  infoCopy = info;
  operationCopy = operation;
  recordCopy = record;
  infosCopy = infos;
  errorCopy = error;
  if (!infoCopy)
  {
    __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfo:operation:record:saveInfos:error:]", "MBCKBatchSave.m", 235, "saveInfo");
  }

  v17 = errorCopy;
  if (!(operationCopy | errorCopy))
  {
    __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfo:operation:record:saveInfos:error:]", "MBCKBatchSave.m", 236, "operation || error");
  }

  if (!infosCopy)
  {
    __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfo:operation:record:saveInfos:error:]", "MBCKBatchSave.m", 237, "saveInfos");
  }

  if ([infoCopy state] != 3)
  {
    record = [infoCopy record];
    recordID = [record recordID];

    saveAttempts = [infoCopy saveAttempts];
    [infoCopy setError:v17];
    if (!v17)
    {
      v36 = MBGetDefaultLog();
      v37 = v36;
      if (saveAttempts == 1)
      {
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_105;
        }

        *buf = 138543362;
        v110 = recordID;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "=ck-save= Saved record %{public}@", buf, 0xCu);
      }

      else
      {
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_105;
        }

        *buf = 138543618;
        v110 = recordID;
        v111 = 2048;
        v112 = *&saveAttempts;
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
      v110 = recordID;
      v111 = 2112;
      v112 = *&v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=ck-save= Handling save error for record %{public}@: %@", buf, 0x16u);
      v84 = recordID;
      v86 = v17;
      _MBLog();
    }

    ckOperationTracker = [(MBCKBatchSave *)self ckOperationTracker];
    if (!ckOperationTracker)
    {
      __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfo:operation:record:saveInfos:error:]", "MBCKBatchSave.m", 248, "tracker");
    }

    v23 = ckOperationTracker;
    ckOperationPolicy = [(MBCKBatchSave *)self ckOperationPolicy];
    if (!ckOperationPolicy)
    {
      __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfo:operation:record:saveInfos:error:]", "MBCKBatchSave.m", 250, "policy");
    }

    v100 = saveAttempts;
    v101 = v23;
    v102 = ckOperationPolicy;
    [ckOperationPolicy retryAfterInterval];
    v26 = fmax(v25, 1.0);
    domain = [v17 domain];
    v28 = [domain isEqualToString:CKErrorDomain];

    if (!v28)
    {
      if (([MBError isError:v17 withCode:304]& 1) == 0)
      {
        retryWhenNetworkDisconnected = [MBError isRetryableXPCError:v17];
        if (retryWhenNetworkDisconnected)
        {
          v26 = 5.0;
        }

        goto LABEL_64;
      }

      v26 = 2.0;
LABEL_63:
      retryWhenNetworkDisconnected = 1;
      goto LABEL_64;
    }

    code = [v17 code];
    retryWhenNetworkDisconnected = 0;
    if (code > 6)
    {
      if (code > 21)
      {
        if (code == 22)
        {
          v41 = MBGetDefaultLog();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
LABEL_62:

            goto LABEL_63;
          }

          *buf = 138543362;
          v110 = recordID;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "=ck-save= Save of record %{public}@ hit an atomic failure", buf, 0xCu);
          v84 = recordID;
        }

        else
        {
          if (code != 23)
          {
            if (code == 26)
            {
              selfCopy = self;
              databaseManager = [v101 databaseManager];
              if (!databaseManager)
              {
                __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfo:operation:record:saveInfos:error:]", "MBCKBatchSave.m", 287, "databaseManager");
              }

              v32 = databaseManager;
              account = [v101 account];
              ckOperationGroup = [v101 ckOperationGroup];
              xpcActivity = [v101 xpcActivity];
              v107 = 0;
              [v32 setUpSyncZoneWithAccount:account policy:v102 operationGroup:ckOperationGroup xpcActivity:xpcActivity error:&v107];

              retryWhenNetworkDisconnected = 1;
              self = selfCopy;
            }

            goto LABEL_64;
          }

          v41 = MBGetDefaultLog();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_62;
          }

          *buf = 138543362;
          v110 = recordID;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "=ck-save= Save of record %{public}@ got a zone busy error", buf, 0xCu);
          v84 = recordID;
        }

LABEL_61:
        _MBLog();
        goto LABEL_62;
      }

      if (code == 7)
      {
        v55 = MBGetDefaultLog();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v110 = recordID;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "=ck-save= Save of record %{public}@ was rate limited", buf, 0xCu);
          v84 = recordID;
          _MBLog();
        }

        if ([MBError isNetworkDisconnectedError:v17])
        {
          retryWhenNetworkDisconnected = [(MBCKBatchSave *)self retryWhenNetworkDisconnected];
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      if (code == 14)
      {
        delegate = [infoCopy delegate];
        if (objc_opt_respondsToSelector())
        {
          record2 = [infoCopy record];
          userInfo = [v17 userInfo];
          v94 = [userInfo objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

          userInfo2 = [v17 userInfo];
          v45 = [userInfo2 objectForKeyedSubscript:CKRecordChangedErrorAncestorRecordKey];

          v90 = delegate;
          v92 = v45;
          v46 = [delegate handleMergeConflictWithOperationTracker:v101 attemptedRecord:record2 serverRecord:v94 originalRecord:v45];
          retryWhenNetworkDisconnected = v46 != 0;
          v47 = MBGetDefaultLog();
          v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          if (v46)
          {
            if (v48)
            {
              *buf = 138544386;
              v110 = recordID;
              v111 = 2112;
              v112 = *&record2;
              v113 = 2112;
              v114 = v94;
              v115 = 2112;
              v116 = v92;
              v117 = 2112;
              v118 = v46;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "=ck-save= Merged record %{public}@, attemptedRecord:%@, serverRecord:%@, originalRecord:%@, mergedRecord:%@", buf, 0x34u);
              v88 = v92;
              v89 = v46;
              v86 = record2;
              v87 = v94;
              v84 = recordID;
              _MBLog();
            }

            [infoCopy setRecord:v46];
            v26 = 0.01;
          }

          else
          {
            if (v48)
            {
              *buf = 138543362;
              v110 = recordID;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "=ck-save= Save delegate didn't want to merge record %{public}@", buf, 0xCu);
              v84 = recordID;
              _MBLog();
            }
          }

          delegate = v90;
        }

        else
        {
          retryWhenNetworkDisconnected = 0;
        }
      }

LABEL_64:
      if ([operationCopy atomic])
      {
        v93 = infosCopy;
        record3 = [infoCopy record];
        [record3 recordID];
        v57 = v98 = self;
        [v57 zoneID];
        v58 = v95 = recordCopy;
        +[CKRecordZone defaultRecordZone];
        v59 = v91 = recordID;
        zoneID = [v59 zoneID];
        v61 = [v58 isEqual:zoneID];

        recordID = v91;
        recordCopy = v95;

        self = v98;
        if (v61)
        {
LABEL_66:
          infosCopy = v93;
          if (!retryWhenNetworkDisconnected)
          {
            goto LABEL_102;
          }

          goto LABEL_89;
        }

        infosCopy = v93;
        if (!retryWhenNetworkDisconnected && [MBError isCKError:v17 withCode:14])
        {
LABEL_102:

          v37 = MBGetDefaultLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v110 = recordID;
            v111 = 2048;
            v112 = *&v100;
            v113 = 2112;
            v114 = v17;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "=ck-save= Failed to save record %{public}@ after %lu attempts, error:%@", buf, 0x20u);
            goto LABEL_104;
          }

LABEL_105:

          [(MBCKBatchSave *)self _performCallbacksForSaveInfo:infoCopy record:recordCopy error:v17];
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
              if (v69 != infoCopy)
              {
                state = [v69 state];
                if (state == 1)
                {
                  v65 = 1;
                }

                else if (state == 3)
                {
                  v66 = 1;
                }
              }
            }

            v64 = [v62 countByEnumeratingWithState:&v103 objects:v108 count:16];
          }

          while (v64);

          if (retryWhenNetworkDisconnected || (v65 & 1) == 0)
          {
            recordCopy = v95;
            self = v98;
            recordID = v91;
            if ((retryWhenNetworkDisconnected & v66) == 1)
            {
              v71 = MBGetDefaultLog();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v110 = v91;
                _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "=ck-save= Not retrying %{public}@", buf, 0xCu);
                _MBLog();
              }

              infosCopy = v93;
              goto LABEL_101;
            }

            goto LABEL_66;
          }

          v82 = MBGetDefaultLog();
          infosCopy = v93;
          recordCopy = v95;
          recordID = v91;
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

          userInfo3 = [v17 userInfo];
          v73 = [userInfo3 objectForKeyedSubscript:CKErrorRetryAfterKey];

          if (v73)
          {
            [v73 doubleValue];
            v26 = v74;
          }

          v99 = v73;
          v75 = fmax(v26, 0.0);
          delegate2 = [infoCopy delegate];
          if (objc_opt_respondsToSelector() & 1) == 0 || ([delegate2 shouldRetrySaveWithRetryAfterInterval:recordID recordID:v17 error:v75])
          {
            v77 = recordID;
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
            [infoCopy setRetryDate:v79];

            [infoCopy setState:1];
            recordID = v77;
            v53 = v99;
            goto LABEL_97;
          }

          selfCopy2 = self;
          v81 = MBGetDefaultLog();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v110 = recordID;
            v111 = 2048;
            v112 = v75;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "=ck-save= Not retrying save of record %{public}@ in %0.3fs per delegate", buf, 0x16u);
            _MBLog();
          }

          self = selfCopy2;
          v71 = v99;
LABEL_101:

          goto LABEL_102;
        }

        self = v98;
      }

      if (!retryWhenNetworkDisconnected)
      {
        goto LABEL_102;
      }

      goto LABEL_89;
    }

    if (code <= 3)
    {
      if (code == 2)
      {
        selfCopy3 = self;
        userInfo4 = [v17 userInfo];
        v51 = [userInfo4 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
        v52 = [v51 objectForKeyedSubscript:recordID];

        v53 = v52;
        if (v52)
        {
          [(MBCKBatchSave *)selfCopy3 _handleCompletionForSaveInfo:infoCopy operation:operationCopy record:recordCopy saveInfos:infosCopy error:v52];
LABEL_97:

LABEL_106:
          goto LABEL_107;
        }

        v83 = MBGetDefaultLog();
        self = selfCopy3;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v110 = recordID;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "=ck-save= No partial error found for record %{public}@", buf, 0xCu);
          v84 = recordID;
          _MBLog();
        }
      }

      else
      {
        if (code != 3)
        {
          goto LABEL_64;
        }

        v38 = MBGetDefaultLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v110 = recordID;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "=ck-save= Save of record %{public}@ hit a network unavailable error", buf, 0xCu);
          v84 = recordID;
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

      retryWhenNetworkDisconnected = 0;
      goto LABEL_64;
    }

    if (code != 4)
    {
      if (code != 6)
      {
        goto LABEL_64;
      }

      v41 = MBGetDefaultLog();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_62;
      }

      *buf = 138543362;
      v110 = recordID;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "=ck-save= Save of record %{public}@ hit a service unavailable error", buf, 0xCu);
      v84 = recordID;
      goto LABEL_61;
    }

    v54 = MBGetDefaultLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v110 = recordID;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "=ck-save= Save of record %{public}@ hit a network failure error", buf, 0xCu);
      v84 = recordID;
      _MBLog();
    }

    v39 = arc4random_uniform(5u);
    v40 = 1.0;
    goto LABEL_52;
  }

LABEL_107:
}

- (void)_finishBatchedSavesWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  saveInfos = [(MBCKBatchSave *)selfCopy saveInfos];
  v7 = [saveInfos count];

  objc_sync_exit(selfCopy);
  if (v7)
  {
    [(MBCKBatchSave *)selfCopy _saveRecordsWithCompletion:completionCopy];
  }

  else
  {
    if ([(MBCKBatchSave *)selfCopy canceled])
    {
      [MBError errorWithCode:202 format:@"Batch save canceled"];
    }

    else
    {
      [(MBCKBatchSave *)selfCopy saveError];
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
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ck-save= Failed %{public}@: %@", buf, 0x16u);
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = selfCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=ck-save= Finished %{public}@", buf, 0xCu);
      _MBLog();
    }

    if (completionCopy)
    {
      callbackQueue = [(MBCKBatchSave *)selfCopy callbackQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100103E74;
      block[3] = &unk_1003BE9A8;
      v15 = completionCopy;
      v14 = v8;
      v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(callbackQueue, v12);
    }
  }
}

- (id)_createModifyOperationForSaveInfos:(id)infos
{
  infosCopy = infos;
  v5 = [infosCopy valueForKey:@"record"];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v5 count];
    v8 = [v5 valueForKey:@"recordID"];
    *buf = 134218498;
    v19 = v7;
    v20 = 2114;
    selfCopy = self;
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
  v10 = infosCopy;
  v14 = v10;
  [v9 setPerRecordSaveBlock:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  return v9;
}

- (void)_handleCompletionForSaveInfos:(id)infos operation:(id)operation savedRecords:(id)records operationError:(id)error
{
  infosCopy = infos;
  operationCopy = operation;
  recordsCopy = records;
  errorCopy = error;
  v34 = operationCopy;
  operationID = [operationCopy operationID];
  v35 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(infosCopy, "count")}];
  v33 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(infosCopy, "count")}];
  obj = self;
  objc_sync_enter(obj);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = infosCopy;
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
          if (!errorCopy)
          {
            if (MBIsInternalInstall())
            {
              if (!operationID)
              {
                __assert_rtn("[MBCKBatchSave _handleCompletionForSaveInfos:operation:savedRecords:operationError:]", "MBCKBatchSave.m", 493, "operationID");
              }

              v20 = MBGetDefaultLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
              {
                *buf = 138413058;
                v44 = operationID;
                v45 = 2112;
                v46 = v19;
                v47 = 2112;
                v48 = v14;
                v49 = 2112;
                v50 = recordsCopy;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "=ck-save= Received unexpected completion for operationID:%@, saveInfo:%@, saveInfos:%@, savedRecords:%@", buf, 0x2Au);
                _MBLog();
              }

              v41[0] = @"operationID";
              v41[1] = @"recordID";
              v42[0] = operationID;
              record = [v19 record];
              recordID = [record recordID];
              v42[1] = recordID;
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
              v44 = operationID;
              v45 = 2112;
              v46 = v19;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=ck-save= Received unexpected completion for operationID:%@, saveInfo:%@", buf, 0x16u);
              _MBLog();
            }

            errorCopy = [MBError errorWithCode:304 format:@"Unexpected nil error for operation %@", operationID];
          }

          [(MBCKBatchSave *)obj _handleCompletionForSaveInfo:v19 operation:v34 record:0 saveInfos:v14 error:errorCopy];
          if ([v19 state] == 3)
          {
            record2 = [v19 record];
            recordID2 = [record2 recordID];
            [v33 addObject:recordID2];
          }
        }

        if ([v19 state] == 3)
        {
          error = [v19 error];
          [v35 addObject:v19];
          if (error)
          {
            if (errorCopy)
            {
              v28 = errorCopy;
            }

            else
            {
              v28 = error;
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

  saveInfosByRecordID = [(MBCKBatchSave *)obj saveInfosByRecordID];
  [saveInfosByRecordID removeObjectsForKeys:v33];

  saveInfos = [(MBCKBatchSave *)obj saveInfos];
  [saveInfos removeObjectsInArray:v35];

  objc_sync_exit(obj);
}

- (void)_sendBatchSaveOperationForSaveInfos:(id)infos savePolicy:(int64_t)policy batchSize:(unint64_t)size batchAssetsSize:(unint64_t)assetsSize
{
  infosCopy = infos;
  ckOperationTracker = [(MBCKBatchSave *)self ckOperationTracker];
  if (!ckOperationTracker)
  {
    __assert_rtn("[MBCKBatchSave _sendBatchSaveOperationForSaveInfos:savePolicy:batchSize:batchAssetsSize:]", "MBCKBatchSave.m", 525, "tracker");
  }

  ckOperationPolicy = [(MBCKBatchSave *)self ckOperationPolicy];
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKBatchSave _sendBatchSaveOperationForSaveInfos:savePolicy:batchSize:batchAssetsSize:]", "MBCKBatchSave.m", 527, "policy");
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    selfCopy = self;
    v37 = 2048;
    selfCopy2 = policy;
    v39 = 2048;
    v40 = [infosCopy count];
    v41 = 2048;
    sizeCopy = size;
    v43 = 2048;
    assetsSizeCopy = assetsSize;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=ck-save= Saving a batch for %{public}@, sp:%ld, c:%lu, sz:%lu(%llu)", buf, 0x34u);
    [infosCopy count];
    _MBLog();
  }

  v14 = [(MBCKBatchSave *)self _createModifyOperationForSaveInfos:infosCopy];
  objc_initWeak(&location, v14);
  [v14 setSavePolicy:policy];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001051BC;
  v31[3] = &unk_1003BEB28;
  objc_copyWeak(&v33, &location);
  v31[4] = self;
  v15 = infosCopy;
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
      operationID = [v14 operationID];
      *buf = 138543874;
      selfCopy = operationID;
      v37 = 2114;
      selfCopy2 = self;
      v39 = 2048;
      v40 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=ck-save= Created operation %{public}@ for %{public}@, o:%ld", buf, 0x20u);
    }

    operationID2 = [v14 operationID];
    _MBLog();
  }

  saveGroup = [(MBCKBatchSave *)self saveGroup];
  dispatch_group_enter(saveGroup);

  callbackQueue = [(MBCKBatchSave *)self callbackQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001053E8;
  block[3] = &unk_1003BC5B8;
  block[4] = self;
  v28 = ckOperationTracker;
  v29 = v14;
  v30 = ckOperationPolicy;
  v23 = ckOperationPolicy;
  v24 = v14;
  v25 = ckOperationTracker;
  dispatch_async(callbackQueue, block);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

- (void)_scheduleBatchSaveOperationForSaveInfos:(id)infos
{
  infosCopy = infos;
  if (![infosCopy count])
  {
    __assert_rtn("[MBCKBatchSave _scheduleBatchSaveOperationForSaveInfos:]", "MBCKBatchSave.m", 567, "saveInfos.count");
  }

  selfCopy = self;
  saveGroup = [(MBCKBatchSave *)self saveGroup];
  dispatch_group_enter(saveGroup);

  v36 = +[NSDate now];
  saveSemaphore = [(MBCKBatchSave *)selfCopy saveSemaphore];
  dispatch_semaphore_wait(saveSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  v7 = +[NSDate now];
  [v7 timeIntervalSinceDate:v36];
  v9 = v8;

  firstObject = [infosCopy firstObject];
  savePolicy = [firstObject savePolicy];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = infosCopy;
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
        if (savePolicy != [v18 savePolicy])
        {
          __assert_rtn("[MBCKBatchSave _scheduleBatchSaveOperationForSaveInfos:]", "MBCKBatchSave.m", 580, "savePolicy == saveInfo.savePolicy");
        }

        retryDate = [v18 retryDate];
        v20 = retryDate;
        if (retryDate)
        {
          if (v14)
          {
            v21 = [v14 laterDate:retryDate];

            v14 = v21;
          }

          else
          {
            v14 = retryDate;
          }
        }

        recordSize = [v18 recordSize];
        assetSize = [v18 assetSize];

        v13 = &v13[recordSize];
        v12 = &v12[assetSize];
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
    v47 = selfCopy;
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
      v47 = selfCopy;
      v48 = 2048;
      v49 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=ck-save= Scheduling a batch for %{public}@ in %0.3fs", buf, 0x16u);
      _MBLog();
    }

    v30 = [MBOneShotTimer alloc];
    v31 = dispatch_get_global_queue(17, 0);
    saveGroup2 = [(MBOneShotTimer *)v30 initWithSeconds:v31 queue:v29];

    objc_initWeak(buf, saveGroup2);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100105A80;
    v39[3] = &unk_1003BEB50;
    objc_copyWeak(v41, buf);
    v39[4] = selfCopy;
    v40 = obj;
    v41[1] = savePolicy;
    v41[2] = v13;
    v41[3] = v12;
    [saveGroup2 setHandler:v39];
    v33 = selfCopy;
    objc_sync_enter(v33);
    timers = [(MBCKBatchSave *)v33 timers];
    [timers addObject:saveGroup2];

    throughputEstimator = [(MBCKBatchSave *)v33 throughputEstimator];
    [throughputEstimator incrementRetryCount];

    [saveGroup2 resume];
    objc_sync_exit(v33);

    if ([(MBCKBatchSave *)v33 canceled])
    {
      [saveGroup2 cancel];
    }

    objc_destroyWeak(v41);
    objc_destroyWeak(buf);
  }

  else
  {
    [(MBCKBatchSave *)selfCopy _sendBatchSaveOperationForSaveInfos:obj savePolicy:savePolicy batchSize:v13 batchAssetsSize:v12];
    saveGroup2 = [(MBCKBatchSave *)selfCopy saveGroup];
    dispatch_group_leave(saveGroup2);
  }
}

- (void)_flushBatchedSaves:(unint64_t)saves
{
  if (!saves)
  {
    __assert_rtn("[MBCKBatchSave _flushBatchedSaves:]", "MBCKBatchSave.m", 623, "flushCount");
  }

  savesCopy = saves;
  ckOperationPolicy = [(MBCKBatchSave *)self ckOperationPolicy];
  v42 = ckOperationPolicy;
  v6 = ckOperationPolicy;
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKBatchSave _flushBatchedSaves:]", "MBCKBatchSave.m", 628, "policy");
  }

  maxBatchCount = [ckOperationPolicy maxBatchCount];
  maxBatchSize = [v6 maxBatchSize];
  maxBatchSaveAssetSize = [v6 maxBatchSaveAssetSize];
  saveIncrementally = [(MBCKBatchSave *)self saveIncrementally];
  v44 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  saveInfos = [(MBCKBatchSave *)selfCopy saveInfos];
  array = [saveInfos array];

  v39 = array;
  v41 = [array sortedArrayWithOptions:16 usingComparator:&stru_1003BEB70];
  recordSavePolicy = [v42 recordSavePolicy];
  objectEnumerator = [v41 objectEnumerator];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v48 = 0;
  v49 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    v14 = [v12 count];
    v15 = v14;
    if (!nextObject && !v14)
    {
      nextObject = 0;
      zoneID = v11;
      goto LABEL_44;
    }

    if (!nextObject)
    {
      assetSize = 0;
      recordSize = 0;
      record = 0;
      zoneID = v11;
      goto LABEL_10;
    }

    if ([nextObject state])
    {
      record = 0;
      zoneID = v11;
      goto LABEL_33;
    }

    record = [nextObject record];
    recordID = [record recordID];
    zoneID = [recordID zoneID];

    recordSize = [nextObject recordSize];
    assetSize = [nextObject assetSize];
    savePolicy = [nextObject savePolicy];
    if (!v15)
    {
      recordSavePolicy = savePolicy;
      goto LABEL_26;
    }

    if (recordSavePolicy != savePolicy)
    {
      break;
    }

    if (v11)
    {
      v24 = [v11 isEqual:zoneID];
      if ((v24 & saveIncrementally & 1) == 0)
      {
        if ((v24 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_26;
      }
    }

    else if (!saveIncrementally)
    {
      goto LABEL_26;
    }

    if (v15 >= maxBatchCount || recordSize + v49 > maxBatchSize)
    {
      goto LABEL_10;
    }

    if (v48)
    {
      if (assetSize + v48 > maxBatchSaveAssetSize)
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
        recordID2 = [record recordID];
        *buf = 138543362;
        v56 = recordID2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "=ck-save= Adding record %{public}@ to save batch", buf, 0xCu);
      }

      recordID3 = [record recordID];
      _MBLog();
    }

    [nextObject setState:2];
    [nextObject setSaveAttempts:{objc_msgSend(nextObject, "saveAttempts") + 1}];
    [nextObject setUploadProgress:0.0];
    if (!v12)
    {
      v12 = objc_opt_new();
    }

    [v12 addObject:{nextObject, recordID3, v35}];
    v49 += recordSize;
    v48 += assetSize;
LABEL_33:

    v28 = zoneID;
    v10 = nextObject;
    v11 = v28;
  }

  recordSavePolicy = savePolicy;
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

    recordID3 = [v12 count];
    v35 = v11;
    _MBLog();
  }

  [v44 addObject:v12];
  saveGroup = [(MBCKBatchSave *)selfCopy saveGroup];
  dispatch_group_enter(saveGroup);

  if (--savesCopy)
  {
    v48 = 0;
    v49 = 0;
    v12 = 0;
    if (!nextObject)
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

  objc_sync_exit(selfCopy);
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

        [(MBCKBatchSave *)selfCopy _scheduleBatchSaveOperationForSaveInfos:*(*(&v50 + 1) + 8 * i)];
        saveGroup2 = [(MBCKBatchSave *)selfCopy saveGroup];
        dispatch_group_leave(saveGroup2);
      }

      v30 = [v29 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v30);
  }
}

- (void)_saveRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MBCKBatchSave *)self _flush];
  saveGroup = [(MBCKBatchSave *)self saveGroup];
  v6 = dispatch_get_global_queue(17, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001063E8;
  v9[3] = &unk_1003BD478;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
  dispatch_group_notify(saveGroup, v6, v8);
}

- (void)saveRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_autoreleasePoolPush();
  if (atomic_exchange(&self->_started, 1u))
  {
    __assert_rtn("[MBCKBatchSave saveRecordsWithCompletion:]", "MBCKBatchSave.m", 732, "!started && can't start a batch twice");
  }

  v5 = v4;
  [(MBCKBatchSave *)self _saveRecordsWithCompletion:completionCopy];
  objc_autoreleasePoolPop(v5);
}

- (void)cancel
{
  [(MBCKBatchSave *)self setCanceled:1];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  timers = [(MBCKBatchSave *)selfCopy timers];
  v5 = [timers copy];

  objc_sync_exit(selfCopy);
  [v5 enumerateObjectsUsingBlock:&stru_1003BEBB0];
}

- (BOOL)finishWithError:(id *)error
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