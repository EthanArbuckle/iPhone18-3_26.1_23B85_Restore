@interface MBCKBatchDelete
- (MBCKBatchDelete)initWithOperationTracker:(id)a3;
- (MBCKOperationTracker)ckOperationTracker;
- (OS_dispatch_semaphore)deleteSemaphore;
- (void)_deleteRecordsWithCompletion:(id)a3;
- (void)_finishBatchedDeletesWithCompletion:(id)a3;
- (void)_flush;
- (void)_flushBatchedDeletes:(unint64_t)a3;
- (void)_handleCompletionForDeleteInfo:(id)a3 operation:(id)a4 error:(id)a5;
- (void)_performCallbacksForDeleteInfo:(id)a3 error:(id)a4;
- (void)_scheduleBatchDeleteOperationForDeleteInfos:(id)a3;
- (void)_sendBatchDeleteOperationForDeleteInfos:(id)a3;
- (void)dealloc;
- (void)deleteRecordWithID:(id)a3 completion:(id)a4;
- (void)deleteRecordsWithCompletion:(id)a3;
@end

@implementation MBCKBatchDelete

- (MBCKBatchDelete)initWithOperationTracker:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBCKBatchDelete initWithOperationTracker:]", "MBCKBatchDelete.m", 53, "tracker");
  }

  v5 = v4;
  v6 = [v4 ckOperationPolicy];
  if (!v6)
  {
    __assert_rtn("[MBCKBatchDelete initWithOperationTracker:]", "MBCKBatchDelete.m", 55, "policy");
  }

  v7 = v6;
  v21.receiver = self;
  v21.super_class = MBCKBatchDelete;
  v8 = [(MBCKBatchDelete *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_ckOperationTracker, v5);
    objc_storeStrong(&v9->_ckOperationPolicy, v7);
    *&v9->_deleteIncrementally = 257;
    v10 = objc_opt_new();
    deleteInfos = v9->_deleteInfos;
    v9->_deleteInfos = v10;

    v12 = objc_opt_new();
    deleteInfosByRecordID = v9->_deleteInfosByRecordID;
    v9->_deleteInfosByRecordID = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_UTILITY, 0);

    v16 = dispatch_queue_create("com.apple.backupd.batchDelete", v15);
    callbackQueue = v9->_callbackQueue;
    v9->_callbackQueue = v16;

    v18 = dispatch_group_create();
    deleteGroup = v9->_deleteGroup;
    v9->_deleteGroup = v18;

    atomic_store(0, &v9->_pendingOperationsCount);
    atomic_store(0, &v9->_started);
  }

  return v9;
}

- (void)dealloc
{
  if ([(NSMutableOrderedSet *)self->_deleteInfos count])
  {
    __assert_rtn("[MBCKBatchDelete dealloc]", "MBCKBatchDelete.m", 73, "_deleteInfos.count == 0");
  }

  v3.receiver = self;
  v3.super_class = MBCKBatchDelete;
  [(MBCKBatchDelete *)&v3 dealloc];
}

- (OS_dispatch_semaphore)deleteSemaphore
{
  if (qword_100421A18 != -1)
  {
    dispatch_once(&qword_100421A18, &stru_1003C1490);
  }

  v3 = qword_100421A10;

  return v3;
}

- (void)deleteRecordWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v36 = v6;
    v37 = 2114;
    v38 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Adding a delete for %{public}@ to %{public}@", buf, 0x16u);
    v34 = v6;
    _MBLog();
  }

  if (v6)
  {
    v16 = atomic_load(&self->_started);
    v17 = v16 ^ 1;
    if (((v16 ^ 1) & 1) == 0)
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "You can't add a new recordID to an already started batch", buf, 2u);
      }
    }

    v19 = _MBAssert(v17 & 1, @"You can't add a new recordID to an already started batch", v10, v11, v12, v13, v14, v15, v34);
    if (v19)
    {
      if (v7)
      {
        v7[2](v7, v6, v19);
      }

      goto LABEL_29;
    }

    v20 = self;
    objc_sync_enter(v20);
    v21 = [(MBCKBatchDelete *)v20 deleteInfosByRecordID];
    v22 = [v21 objectForKeyedSubscript:v6];

    if (v22)
    {
      if (!v7)
      {
        v26 = 1;
        v27 = v22;
        goto LABEL_26;
      }

      v23 = [v22 callbacks];
      v24 = [v7 copy];
      v25 = objc_retainBlock(v24);
      [v23 addObject:v25];

      v26 = 1;
      v27 = v22;
    }

    else
    {
      v27 = objc_opt_new();
      [v27 setState:0];
      if (v7)
      {
        v28 = [v27 callbacks];
        v29 = [v7 copy];
        v30 = objc_retainBlock(v29);
        [v28 addObject:v30];
      }

      [v27 setRecordID:v6];
      v31 = [(MBCKBatchDelete *)v20 ckOperationPolicy];
      v23 = v31;
      if (!v31)
      {
        __assert_rtn("[MBCKBatchDelete deleteRecordWithID:completion:]", "MBCKBatchDelete.m", 125, "policy");
      }

      v32 = [v31 maxBatchCount];
      if ([(MBCKBatchDelete *)v20 deleteIncrementally]&& [(MBCKBatchDelete *)v20 currentBatchCount]&& [(MBCKBatchDelete *)v20 currentBatchCount]>= v32)
      {
        [(MBCKBatchDelete *)v20 setCurrentBatchCount:0];
        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      [(MBCKBatchDelete *)v20 setCurrentBatchCount:[(MBCKBatchDelete *)v20 currentBatchCount]+ 1];
      v33 = [(MBCKBatchDelete *)v20 deleteInfosByRecordID];
      [v33 setObject:v27 forKeyedSubscript:v6];

      v24 = [(MBCKBatchDelete *)v20 deleteInfos];
      [v24 addObject:v27];
    }

LABEL_26:
    objc_sync_exit(v20);

    if (!((v22 != 0) | v26 & 1))
    {
      [(MBCKBatchDelete *)v20 _flushBatchedDeletes:1];
    }

    v19 = 0;
    goto LABEL_29;
  }

  if (v7)
  {
    v19 = [MBError errorWithCode:1 format:@"You can't delete a nil recordID"];
    v7[2](v7, 0, v19);
LABEL_29:
  }

  objc_autoreleasePoolPop(v8);
}

- (void)_flush
{
  v3 = objc_autoreleasePoolPush();
  [(MBCKBatchDelete *)self _flushBatchedDeletes:-1];

  objc_autoreleasePoolPop(v3);
}

- (void)_performCallbacksForDeleteInfo:(id)a3 error:(id)a4
{
  v6 = a3;
  v23 = a4;
  if ([v6 state] == 3)
  {
    v18 = +[NSAssertionHandler currentHandler];
    v19 = [v6 recordID];
    v20 = +[NSThread callStackSymbols];
    [v18 handleFailureInMethod:a2 object:self file:@"MBCKBatchDelete.m" lineNumber:151 description:{@"We've already finished Deleting record %@: %@", v19, v20}];
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v6 recordID];
    *buf = 138543362;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Performing callbacks for delete of record %{public}@", buf, 0xCu);

    v21 = [v6 recordID];
    _MBLog();
  }

  [v6 setState:3];
  [v6 setError:v23];
  v9 = [v6 callbacks];
  [v6 setCallbacks:0];
  v10 = [v6 recordID];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [(MBCKBatchDelete *)self callbackQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001E7C58;
        block[3] = &unk_1003C14B8;
        v27 = v16;
        v25 = v10;
        v26 = v23;
        dispatch_async(v17, block);
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }
}

- (void)_finishBatchedDeletesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MBCKBatchDelete *)v5 deleteInfos];
  v7 = [v6 count];

  objc_sync_exit(v5);
  if (v7)
  {
    [(MBCKBatchDelete *)v5 _deleteRecordsWithCompletion:v4];
  }

  else
  {
    if ([(MBCKBatchDelete *)v5 canceled])
    {
      [MBError errorWithCode:202 format:@"Batch delete canceled"];
    }

    else
    {
      [(MBCKBatchDelete *)v5 deleteError];
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
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed %{public}@: %@", buf, 0x16u);
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finished %{public}@", buf, 0xCu);
      _MBLog();
    }

    if (v4)
    {
      v11 = [(MBCKBatchDelete *)v5 callbackQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001E7EFC;
      block[3] = &unk_1003BE9A8;
      v15 = v4;
      v14 = v8;
      v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v11, v12);
    }
  }
}

- (void)_handleCompletionForDeleteInfo:(id)a3 operation:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    __assert_rtn("[MBCKBatchDelete _handleCompletionForDeleteInfo:operation:error:]", "MBCKBatchDelete.m", 191, "deleteInfo");
  }

  if (!v9)
  {
    __assert_rtn("[MBCKBatchDelete _handleCompletionForDeleteInfo:operation:error:]", "MBCKBatchDelete.m", 192, "operation");
  }

  v11 = v10;
  if ([v8 state] != 3)
  {
    v12 = [v8 recordID];
    v13 = [v8 deleteAttempts];
    [v8 setError:v11];
    if (!v11)
    {
      v26 = MBGetDefaultLog();
      v27 = v26;
      if (v13 == 1)
      {
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_49;
        }

        *buf = 138543362;
        v43 = v12;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Deleted record %{public}@", buf, 0xCu);
      }

      else
      {
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_49;
        }

        *buf = 138543618;
        v43 = v12;
        v44 = 2048;
        v45 = *&v13;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Deleted record %{public}@ after %lu attempts", buf, 0x16u);
      }

LABEL_48:
      _MBLog();
      goto LABEL_49;
    }

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v43 = v12;
      v44 = 2112;
      v45 = *&v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Handling delete error for record %{public}@: %@", buf, 0x16u);
      v40 = v12;
      v41 = v11;
      _MBLog();
    }

    v15 = [(MBCKBatchDelete *)self ckOperationPolicy];
    if (!v15)
    {
      __assert_rtn("[MBCKBatchDelete _handleCompletionForDeleteInfo:operation:error:]", "MBCKBatchDelete.m", 203, "policy");
    }

    v16 = v15;
    [v15 retryAfterInterval];
    v18 = v17;
    v19 = [v11 domain];
    v20 = [v19 isEqualToString:CKErrorDomain];

    if (!v20)
    {
      if (([v9 atomic] & 1) == 0)
      {
        v21 = 5.0;
        if ([MBError isRetryableXPCError:v11])
        {
          goto LABEL_45;
        }
      }

      goto LABEL_46;
    }

    v21 = fmax(v18, 1.0);
    v22 = [v11 code];
    if (v22 <= 5)
    {
      switch(v22)
      {
        case 2:
          v29 = [v11 userInfo];
          v30 = [v29 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
          v31 = [v30 objectForKeyedSubscript:v12];

          if (v31)
          {
            [(MBCKBatchDelete *)self _handleCompletionForDeleteInfo:v8 operation:v9 error:v31];
            goto LABEL_57;
          }

          v39 = MBGetDefaultLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v43 = v12;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "No partial error found for record %{public}@", buf, 0xCu);
            _MBLog();
          }

          break;
        case 3:
          v32 = MBGetDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v43 = v12;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Delete of record %{public}@ hit a network unavailable error", buf, 0xCu);
            v40 = v12;
            _MBLog();
          }

          if (![MBError isNetworkDisconnectedError:v11]|| [(MBCKBatchDelete *)self retryWhenNetworkDisconnected])
          {
            v24 = arc4random_uniform(5u);
            v25 = 10.0;
LABEL_40:
            v21 = fmax(v21, v24 + v25);
            goto LABEL_45;
          }

          break;
        case 4:
          v23 = MBGetDefaultLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v43 = v12;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Delete of record %{public}@ hit a network failure error", buf, 0xCu);
            v40 = v12;
            _MBLog();
          }

          v24 = arc4random_uniform(5u);
          v25 = 1.0;
          goto LABEL_40;
        default:
          break;
      }

LABEL_46:

      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v43 = v12;
        v44 = 2048;
        v45 = *&v13;
        v46 = 2112;
        v47 = v11;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to delete record %{public}@ after %lu attempts, error:%@", buf, 0x20u);
        goto LABEL_48;
      }

LABEL_49:

      [(MBCKBatchDelete *)self _performCallbacksForDeleteInfo:v8 error:v11];
LABEL_50:

      goto LABEL_51;
    }

    switch(v22)
    {
      case 6:
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v43 = v12;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Delete of record %{public}@ hit a service unavailable error", buf, 0xCu);
          v40 = v12;
          goto LABEL_33;
        }

        break;
      case 7:
        v33 = MBGetDefaultLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v43 = v12;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Delete of record %{public}@ was rate limited", buf, 0xCu);
          v40 = v12;
          _MBLog();
        }

        if (![MBError isNetworkDisconnectedError:v11]|| [(MBCKBatchDelete *)self retryWhenNetworkDisconnected])
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      case 23:
        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v43 = v12;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Delete of record %{public}@ got a zone busy error", buf, 0xCu);
          v40 = v12;
LABEL_33:
          _MBLog();
        }

        break;
      default:
        goto LABEL_46;
    }

LABEL_45:
    if (v13 > [v16 maxRetryAttempts])
    {
      goto LABEL_46;
    }

    v34 = [v11 userInfo];
    v31 = [v34 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v31)
    {
      [v31 doubleValue];
      v21 = v35;
    }

    v36 = fmax(v21, 0.0);
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v43 = v12;
      v44 = 2048;
      v45 = v36;
      v46 = 2048;
      v47 = v13;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Retrying delete of record %{public}@ in %0.3fs after %lu attempts", buf, 0x20u);
      _MBLog();
    }

    v38 = [NSDate dateWithTimeIntervalSinceNow:v36];
    [v8 setRetryDate:v38];

    [v8 setState:1];
LABEL_57:

    goto LABEL_50;
  }

LABEL_51:
}

- (void)_sendBatchDeleteOperationForDeleteInfos:(id)a3
{
  v4 = a3;
  v5 = [(MBCKBatchDelete *)self ckOperationTracker];
  if (!v5)
  {
    __assert_rtn("[MBCKBatchDelete _sendBatchDeleteOperationForDeleteInfos:]", "MBCKBatchDelete.m", 269, "tracker");
  }

  v6 = [(MBCKBatchDelete *)self ckOperationPolicy];
  if (!v6)
  {
    __assert_rtn("[MBCKBatchDelete _sendBatchDeleteOperationForDeleteInfos:]", "MBCKBatchDelete.m", 271, "policy");
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v32 = self;
    v33 = 2048;
    v34 = [v4 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deleting a batch for %{public}@, c:%lu", buf, 0x16u);
    [v4 count];
    _MBLog();
  }

  v8 = [v4 valueForKey:@"recordID"];
  v9 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:0 recordIDsToDelete:v8];
  objc_initWeak(&location, v9);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001E8B68;
  v27[3] = &unk_1003BEB28;
  objc_copyWeak(&v29, &location);
  v27[4] = self;
  v10 = v4;
  v28 = v10;
  [v9 setModifyRecordsCompletionBlock:v27];
  pendingOperationsCount = self->_pendingOperationsCount;
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = pendingOperationsCount;
    v14 = v12;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v9 operationID];
      v16 = [v8 count];
      *buf = 138544130;
      v32 = v15;
      v33 = 2114;
      v34 = self;
      v35 = 2048;
      v36 = v16;
      v37 = 2048;
      v38 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Created operation %{public}@ for %{public}@, c:%lu, o:%ld", buf, 0x2Au);
    }

    v17 = [v9 operationID];
    [v8 count];
    _MBLog();
  }

  v18 = [(MBCKBatchDelete *)self deleteGroup];
  dispatch_group_enter(v18);

  v19 = [(MBCKBatchDelete *)self callbackQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E904C;
  block[3] = &unk_1003BC5B8;
  block[4] = self;
  v24 = v5;
  v25 = v9;
  v26 = v6;
  v20 = v6;
  v21 = v9;
  v22 = v5;
  dispatch_async(v19, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)_scheduleBatchDeleteOperationForDeleteInfos:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    __assert_rtn("[MBCKBatchDelete _scheduleBatchDeleteOperationForDeleteInfos:]", "MBCKBatchDelete.m", 336, "deleteInfos.count");
  }

  v5 = [(MBCKBatchDelete *)self deleteGroup];
  dispatch_group_enter(v5);

  v6 = +[NSDate now];
  v7 = [(MBCKBatchDelete *)self deleteSemaphore];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

  v8 = +[NSDate now];
  [v8 timeIntervalSinceDate:v6];
  v10 = v9;

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v37 = self;
    v38 = 2048;
    v39 = COERCE_DOUBLE([v4 count]);
    v40 = 2048;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Preparing to delete a batch for %{public}@, c:%lu, tq:%.3fs", buf, 0x20u);
    v28 = v10;
    v26 = self;
    v27 = [v4 count];
    _MBLog();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v13)
  {

LABEL_20:
    [(MBCKBatchDelete *)self _sendBatchDeleteOperationForDeleteInfos:v12, v26, v27];
    v15 = [(MBCKBatchDelete *)self deleteGroup];
    dispatch_group_leave(v15);
    goto LABEL_21;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v32;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v32 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = [*(*(&v31 + 1) + 8 * i) retryDate];
      v19 = v18;
      if (v18)
      {
        if (v15)
        {
          v20 = [v15 laterDate:v18];

          v15 = v20;
        }

        else
        {
          v15 = v18;
        }
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v14);

  if (!v15)
  {
    goto LABEL_20;
  }

  [v15 timeIntervalSinceNow];
  v22 = fmax(v21, 0.0);
  v23 = MBGetDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v37 = self;
    v38 = 2048;
    v39 = v22;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Scheduling a batch for %{public}@ in %0.3fs", buf, 0x16u);
    _MBLog();
  }

  v24 = dispatch_time(0, (v22 * 1000000000.0));
  v25 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E9544;
  block[3] = &unk_1003BC060;
  block[4] = self;
  v30 = v12;
  dispatch_after(v24, v25, block);

LABEL_21:
}

- (void)_flushBatchedDeletes:(unint64_t)a3
{
  if (!a3)
  {
    __assert_rtn("[MBCKBatchDelete _flushBatchedDeletes:]", "MBCKBatchDelete.m", 369, "flushCount");
  }

  v3 = a3;
  v5 = [(MBCKBatchDelete *)self ckOperationPolicy];
  v33 = v5;
  if (!v5)
  {
    __assert_rtn("[MBCKBatchDelete _flushBatchedDeletes:]", "MBCKBatchDelete.m", 371, "policy");
  }

  v35 = [v5 maxBatchCount];
  v34 = [(MBCKBatchDelete *)self deleteIncrementally];
  v36 = objc_opt_new();
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(MBCKBatchDelete *)v6 deleteInfos];
  v8 = [v7 array];

  v32 = v8;
  v31 = [v8 sortedArrayWithOptions:16 usingComparator:&stru_1003C14D8];
  v9 = [v31 objectEnumerator];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = [v9 nextObject];

    v14 = [v12 count];
    v15 = v14;
    if (!v13 && !v14)
    {
      break;
    }

    v16 = v11;
    if (v13)
    {
      if ([v13 state])
      {
        v16 = v11;
        goto LABEL_30;
      }

      v17 = [v13 recordID];
      v16 = [v17 zoneID];

      if (!v15)
      {
LABEL_27:
        [v13 setState:{2, v29, v30}];
        [v13 setDeleteAttempts:{objc_msgSend(v13, "deleteAttempts") + 1}];
        if (!v12)
        {
          v12 = objc_opt_new();
        }

        [v12 addObject:v13];
        goto LABEL_30;
      }

      if (v11)
      {
        v18 = [v11 isEqual:v16];
        if (v15 >= v35)
        {
          v19 = v34;
        }

        else
        {
          v19 = 0;
        }

        if (v18 && (v19 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v15 >= v35)
        {
          v20 = v34;
        }

        else
        {
          v20 = 0;
        }

        if (v20 != 1)
        {
          goto LABEL_27;
        }
      }
    }

    if (!v12 || !v15)
    {
      __assert_rtn("[MBCKBatchDelete _flushBatchedDeletes:]", "MBCKBatchDelete.m", 413, "batch && batchCount");
    }

    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v43 = v15;
      v44 = 2114;
      v45 = v11;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Flushing %lu batched deletes, zoneID:%{public}@", buf, 0x16u);
      v29 = v15;
      v30 = v11;
      _MBLog();
    }

    [v36 addObject:v12];
    v22 = [(MBCKBatchDelete *)v6 deleteGroup];
    dispatch_group_enter(v22);

    v12 = 0;
    if (!--v3)
    {
      goto LABEL_32;
    }

    if (v13)
    {
      goto LABEL_27;
    }

LABEL_30:
    v23 = v16;

    v10 = v13;
    v11 = v23;
  }

  v13 = 0;
  v16 = v11;
LABEL_32:
  if ([v12 count])
  {
    __assert_rtn("[MBCKBatchDelete _flushBatchedDeletes:]", "MBCKBatchDelete.m", 429, "!batch.count");
  }

  objc_sync_exit(v6);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = v36;
  v25 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v25)
  {
    v26 = *v38;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v24);
        }

        [(MBCKBatchDelete *)v6 _scheduleBatchDeleteOperationForDeleteInfos:*(*(&v37 + 1) + 8 * i)];
        v28 = [(MBCKBatchDelete *)v6 deleteGroup];
        dispatch_group_leave(v28);
      }

      v25 = [v24 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v25);
  }
}

- (void)_deleteRecordsWithCompletion:(id)a3
{
  v4 = a3;
  [(MBCKBatchDelete *)self _flush];
  v5 = [(MBCKBatchDelete *)self deleteGroup];
  v6 = dispatch_get_global_queue(17, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E9BC4;
  v9[3] = &unk_1003BD478;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
  dispatch_group_notify(v5, v6, v8);
}

- (void)deleteRecordsWithCompletion:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  if (atomic_exchange(&self->_started, 1u))
  {
    __assert_rtn("[MBCKBatchDelete deleteRecordsWithCompletion:]", "MBCKBatchDelete.m", 449, "!started && can't start a batch twice");
  }

  v5 = v4;
  [(MBCKBatchDelete *)self _deleteRecordsWithCompletion:v6];
  objc_autoreleasePoolPop(v5);
}

- (MBCKOperationTracker)ckOperationTracker
{
  WeakRetained = objc_loadWeakRetained(&self->_ckOperationTracker);

  return WeakRetained;
}

@end