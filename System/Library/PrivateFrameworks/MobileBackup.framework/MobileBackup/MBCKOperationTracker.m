@interface MBCKOperationTracker
+ (MBCKOperationTracker)operationTrackerWithParentTracker:(id)a3 policy:(id)a4 error:(id *)a5;
+ (id)_operationTrackerWithAccount:(id)a3 databaseManager:(id)a4 policy:(id)a5 group:(id)a6 parentTracker:(id)a7 error:(id *)a8;
- (BOOL)saveRecord:(id)a3 delegate:(id)a4 error:(id *)a5;
- (NSArray)engines;
- (NSArray)operations;
- (NSArray)trackers;
- (id)_initWithAccount:(id)a3 databaseManager:(id)a4 policy:(id)a5 group:(id)a6 parentTracker:(id)a7;
- (id)description;
- (id)fetchRecordWithID:(id)a3 error:(id *)a4;
- (id)startBatchDelete;
- (id)startBatchFetch;
- (id)startBatchSave;
- (void)_addTracker:(id)a3;
- (void)_associateMetricsWithOperation:(id)a3;
- (void)_cancel:(BOOL)a3;
- (void)_drainWithCompletion:(id)a3;
- (void)_removeTracker:(id)a3;
- (void)_replenishRetryTokens;
- (void)_submitMetrics;
- (void)addCKMetric:(id)a3;
- (void)addDatabaseOperation:(id)a3;
- (void)addDatabaseOperation:(id)a3 policy:(id)a4;
- (void)addEngine:(id)a3;
- (void)dealloc;
- (void)drain;
- (void)fetchRecordWithID:(id)a3 completion:(id)a4;
- (void)finishBatchDelete:(id)a3 completion:(id)a4;
- (void)finishBatchFetch:(id)a3 completion:(id)a4;
- (void)finishBatchSave:(id)a3 completion:(id)a4;
- (void)removeEngine:(id)a3;
- (void)saveRecord:(id)a3 delegate:(id)a4 completion:(id)a5;
- (void)setGroupNamePrefix:(id)a3;
@end

@implementation MBCKOperationTracker

+ (id)_operationTrackerWithAccount:(id)a3 databaseManager:(id)a4 policy:(id)a5 group:(id)a6 parentTracker:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!a8)
  {
    __assert_rtn("+[MBCKOperationTracker _operationTrackerWithAccount:databaseManager:policy:group:parentTracker:error:]", "MBCKOperationTracker.m", 160, "error");
  }

  v18 = v17;
  v19 = [[MBCKOperationTracker alloc] _initWithAccount:v13 databaseManager:v14 policy:v15 group:v16 parentTracker:v17];

  return v19;
}

+ (MBCKOperationTracker)operationTrackerWithParentTracker:(id)a3 policy:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    __assert_rtn("+[MBCKOperationTracker operationTrackerWithParentTracker:policy:error:]", "MBCKOperationTracker.m", 173, "parentTracker");
  }

  v9 = v8;
  v10 = [v7 account];
  v11 = [v7 databaseManager];
  v12 = [MBCKOperationTracker _operationTrackerWithAccount:v10 databaseManager:v11 policy:v9 group:0 parentTracker:v7 error:a5];

  return v12;
}

- (id)_initWithAccount:(id)a3 databaseManager:(id)a4 policy:(id)a5 group:(id)a6 parentTracker:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v13)
  {
    __assert_rtn("[MBCKOperationTracker _initWithAccount:databaseManager:policy:group:parentTracker:]", "MBCKOperationTracker.m", 178, "account");
  }

  if (!v14)
  {
    __assert_rtn("[MBCKOperationTracker _initWithAccount:databaseManager:policy:group:parentTracker:]", "MBCKOperationTracker.m", 179, "databaseManager");
  }

  if (!v15)
  {
    __assert_rtn("[MBCKOperationTracker _initWithAccount:databaseManager:policy:group:parentTracker:]", "MBCKOperationTracker.m", 180, "policy");
  }

  v18 = v17;
  v31.receiver = self;
  v31.super_class = MBCKOperationTracker;
  v19 = [(MBCKOperationTracker *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_account, a3);
    objc_storeStrong(&v20->_databaseManager, a4);
    v21 = dispatch_group_create();
    dispatchGroup = v20->_dispatchGroup;
    v20->_dispatchGroup = v21;

    objc_storeStrong(&v20->_ckOperationPolicy, a5);
    if (v16)
    {
      v23 = v16;
    }

    else
    {
      v23 = [v18 ckOperationGroup];
    }

    ckOperationGroup = v20->_ckOperationGroup;
    v20->_ckOperationGroup = v23;

    groupNamePrefix = v20->_groupNamePrefix;
    v20->_groupNamePrefix = &stru_1003C3430;

    [(MBCKOperationTracker *)v20 setParentTracker:v18];
    v26 = [v18 engines];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100217878;
    v29[3] = &unk_1003C1DE8;
    v27 = v20;
    v30 = v27;
    [v26 enumerateObjectsUsingBlock:v29];
    [v18 _addTracker:v27];
  }

  return v20;
}

- (void)dealloc
{
  if ([(NSMutableArray *)self->_batchFetches count])
  {
    __assert_rtn("[MBCKOperationTracker dealloc]", "MBCKOperationTracker.m", 200, "!_batchFetches.count");
  }

  if ([(NSMutableArray *)self->_batchSaves count])
  {
    __assert_rtn("[MBCKOperationTracker dealloc]", "MBCKOperationTracker.m", 201, "!_batchSaves.count");
  }

  if ([(NSMutableArray *)self->_batchDeletes count])
  {
    __assert_rtn("[MBCKOperationTracker dealloc]", "MBCKOperationTracker.m", 202, "!_batchDeletes.count");
  }

  v3 = [(MBCKOperationTracker *)self parentTracker];
  [v3 _removeTracker:self];

  [(MBCKOperationTracker *)self _cancel:0];
  v4.receiver = self;
  v4.super_class = MBCKOperationTracker;
  [(MBCKOperationTracker *)&v4 dealloc];
}

- (id)description
{
  v3 = [(MBCKOperationTracker *)self ckOperationGroup];
  v4 = [v3 operationGroupID];

  v5 = [(MBCKOperationTracker *)self parentTracker];
  v6 = [[NSMutableArray alloc] initWithCapacity:2];
  if (v4)
  {
    v7 = [[NSString alloc] initWithFormat:@"gid=%@", v4];
    [v6 addObject:v7];
  }

  if (v5)
  {
    v8 = [[NSString alloc] initWithFormat:@"parent=%p", v5];
    [v6 addObject:v8];
  }

  if ([v6 count])
  {
    v9 = objc_opt_class();
    Name = class_getName(v9);
    v11 = [v6 componentsJoinedByString:{@", "}];
    v12 = [NSString stringWithFormat:@"<%s: %p %@>", Name, self, v11];;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MBCKOperationTracker;
    v12 = [(MBCKOperationTracker *)&v14 description];
  }

  return v12;
}

- (void)_addTracker:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBCKOperationTracker _addTracker:]", "MBCKOperationTracker.m", 219, "tracker");
  }

  if (v4 == self)
  {
    __assert_rtn("[MBCKOperationTracker _addTracker:]", "MBCKOperationTracker.m", 220, "tracker != self");
  }

  v9 = v4;
  v5 = self;
  objc_sync_enter(v5);
  trackers = v5->_trackers;
  if (!trackers)
  {
    v7 = +[NSHashTable weakObjectsHashTable];
    v8 = v5->_trackers;
    v5->_trackers = v7;

    trackers = v5->_trackers;
  }

  [(NSHashTable *)trackers addObject:v9];
  objc_sync_exit(v5);

  if ([(MBCKOperationTracker *)v5 canceled])
  {
    [(MBCKOperationTracker *)v9 cancel];
  }
}

- (void)_removeTracker:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBCKOperationTracker _removeTracker:]", "MBCKOperationTracker.m", 229, "tracker");
  }

  v8 = v4;
  v5 = self;
  objc_sync_enter(v5);
  [(NSHashTable *)v5->_trackers removeObject:v8];
  trackers = v5->_trackers;
  if (trackers && ![(NSHashTable *)trackers count])
  {
    v7 = v5->_trackers;
    v5->_trackers = 0;
  }

  objc_sync_exit(v5);
}

- (NSArray)trackers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSHashTable *)v2->_trackers allObjects];
  objc_sync_exit(v2);

  return v3;
}

- (NSArray)operations
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_operations copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)_cancel:(BOOL)a3
{
  v3 = a3;
  v5 = [(MBCKOperationTracker *)self canceled];
  [(MBCKOperationTracker *)self setCanceled:1];
  if ((v5 & 1) == 0 && v3)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v62 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=ck-op= Canceling %{public}@", buf, 0xCu);
      v33 = self;
      _MBLog();
    }
  }

  [(MBCKOperationTracker *)self trackers];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  obj = v53 = 0u;
  v7 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v7)
  {
    v8 = *v53;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v52 + 1) + 8 * i) cancel];
      }

      v7 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v7);
  }

  v10 = self;
  objc_sync_enter(v10);
  v11 = [(NSMutableArray *)v10->_batchFetches copy];
  v12 = [(NSMutableArray *)v10->_batchSaves copy];
  v13 = [(NSMutableArray *)v10->_batchDeletes copy];
  objc_sync_exit(v10);

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v15)
  {
    v16 = *v49;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v48 + 1) + 8 * j) cancel];
      }

      v15 = [v14 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v15);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v19)
  {
    v20 = *v45;
    do
    {
      for (k = 0; k != v19; k = k + 1)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v44 + 1) + 8 * k) cancel];
      }

      v19 = [v18 countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v19);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = v13;
  v23 = [v22 countByEnumeratingWithState:&v40 objects:v57 count:16];
  if (v23)
  {
    v24 = *v41;
    do
    {
      for (m = 0; m != v23; m = m + 1)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v40 + 1) + 8 * m) cancel];
      }

      v23 = [v22 countByEnumeratingWithState:&v40 objects:v57 count:16];
    }

    while (v23);
  }

  v26 = [(MBCKOperationTracker *)v10 operations];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v36 objects:v56 count:16];
  if (v27)
  {
    v28 = *v37;
    do
    {
      for (n = 0; n != v27; n = n + 1)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v36 + 1) + 8 * n);
        if (([v30 isCancelled] & 1) == 0)
        {
          v31 = MBGetDefaultLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v30 operationID];
            *buf = 138412290;
            v62 = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "=ck-op= Canceling operation %@", buf, 0xCu);

            v34 = [v30 operationID];
            _MBLog();
          }

          [v30 cancel];
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v36 objects:v56 count:16];
    }

    while (v27);
  }
}

- (void)_drainWithCompletion:(id)a3
{
  v16 = a3;
  v4 = dispatch_group_create();
  v5 = [(MBCKOperationTracker *)self trackers];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        dispatch_group_enter(v4);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100218518;
        v21[3] = &unk_1003BC0B0;
        v22 = v4;
        [v10 _drainWithCompletion:v21];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  dispatch_group_enter(v4);
  dispatchGroup = self->_dispatchGroup;
  v12 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100218520;
  block[3] = &unk_1003BC0B0;
  v20 = v4;
  v13 = v4;
  dispatch_group_notify(dispatchGroup, v12, block);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100218528;
  v17[3] = &unk_1003BCB38;
  v18 = v16;
  v14 = v16;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v17);
  dispatch_group_notify(v13, v12, v15);
}

- (void)_submitMetrics
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MBCKOperationTracker *)v2 metrics];
  [(MBCKOperationTracker *)v2 setMetrics:0];
  objc_sync_exit(v2);

  v4 = dispatch_group_create();
  Current = CFAbsoluteTimeGetCurrent();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        dispatch_group_enter(v4);
        v10 = MBGetDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [v9 eventName];
          *buf = 138412290;
          v30 = *&v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=ck-op= Submitting CKEventMetric: %@", buf, 0xCu);

          v21 = [v9 eventName];
          _MBLog();
        }

        v12 = [(MBCKOperationTracker *)v2 databaseManager];
        v13 = [(MBCKOperationTracker *)v2 account];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100218920;
        v23[3] = &unk_1003BC060;
        v23[4] = v9;
        v24 = v4;
        [v12 submitCKEventMetric:v9 account:v13 completionHandler:v23];
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v6);
  }

  v14 = dispatch_time(0, 30000000000);
  v15 = dispatch_group_wait(v4, v14);
  v16 = CFAbsoluteTimeGetCurrent();
  v17 = v15 == 0;
  v18 = MBGetDefaultLog();
  v19 = v18;
  v20 = v16 - Current;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "=ck-op= Successfully submitted metrics after %.3fs", buf, 0xCu);
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v30 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "=ck-op= Timed out while submitting metrics after %.3fs", buf, 0xCu);
    _MBLog();
  }
}

- (void)drain
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v29 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "=ck-op= Draining CK operations for %{public}@", buf, 0xCu);
    v18 = self;
    _MBLog();
  }

  Current = CFAbsoluteTimeGetCurrent();
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100218D68;
  v26[3] = &unk_1003BC0B0;
  v6 = v5;
  v27 = v6;
  [(MBCKOperationTracker *)self _drainWithCompletion:v26];
  v7 = dispatch_time(0, 300000000000);
  v8 = dispatch_group_wait(v6, v7);
  v9 = CFAbsoluteTimeGetCurrent() - Current;
  if (v8)
  {
    v21 = v6;
    v10 = [(MBCKOperationTracker *)self trackers];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v22 + 1) + 8 * i) operations];
          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v29 = self;
            v30 = 2048;
            v31 = v9;
            v32 = 2112;
            v33 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=ck-op= Failed to drain CK operations for %{public}@ after %.3fs: %@", buf, 0x20u);
            v20 = v15;
            v19 = v9;
            v18 = self;
            _MBLog();
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v12);
    }

    v6 = v21;
  }

  else
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = self;
      v30 = 2048;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=ck-op= Drained CK operations for %@ in %.3fs", buf, 0x16u);
      _MBLog();
    }

    [(MBCKOperationTracker *)self _submitMetrics];
  }
}

- (void)_associateMetricsWithOperation:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v5;
  v6 = [(MBCKOperationTracker *)v5 metrics];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = v11;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [v10 eventName];
            *buf = 138412290;
            v21 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=ck-op= Associating CKEventMetric: %@", buf, 0xCu);
          }

          v14 = [v10 eventName];
          _MBLog();
        }

        [v10 associateWithCompletedOperation:v4];
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  objc_sync_exit(obj);
}

- (void)_replenishRetryTokens
{
  v2 = [(MBCKOperationTracker *)self engines];
  [v2 enumerateObjectsUsingBlock:&stru_1003C1E28];
}

- (void)addDatabaseOperation:(id)a3 policy:(id)a4
{
  v6 = a3;
  v56 = a4;
  if (!v56)
  {
    __assert_rtn("[MBCKOperationTracker addDatabaseOperation:policy:]", "MBCKOperationTracker.m", 385, "policy");
  }

  v55 = [(MBCKOperationTracker *)self account];
  if (!v55)
  {
    __assert_rtn("[MBCKOperationTracker addDatabaseOperation:policy:]", "MBCKOperationTracker.m", 387, "account");
  }

  v54 = [(MBCKOperationTracker *)self databaseManager];
  if (!v54)
  {
    __assert_rtn("[MBCKOperationTracker addDatabaseOperation:policy:]", "MBCKOperationTracker.m", 389, "databaseManager");
  }

  v7 = [v56 cellularAccess];
  v53 = v7;
  if (v7)
  {
    v48 = [v7 allowsExpensiveNetworkAccess];
  }

  else
  {
    v48 = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    v10 = [v9 recordsToSave];
    v51 = [v10 count];
    v11 = [v9 recordIDsToDelete];
    v12 = [v11 count];

    [v9 perRecordCompletionBlock];
    v13 = v67;
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100219B2C;
    v67[3] = &unk_1003C1E50;
    v14 = v67[5] = v68;
    v67[4] = v14;
    v15 = objc_retainBlock(v67);
    [v9 perRecordProgressBlock];
    v16 = v66;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100219BB0;
    v66[3] = &unk_1003C1E78;
    v17 = v66[5] = v68;
    v66[4] = v17;
    v18 = objc_retainBlock(v66);
    [v9 setPerRecordProgressBlock:v18];
    [v9 setPerRecordCompletionBlock:v15];
    v47 = &v51[v12];
LABEL_13:

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v6;
    v20 = [v19 recordIDs];
    v47 = [v20 count];

    [v19 perRecordCompletionBlock];
    v13 = v65;
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100219C34;
    v65[3] = &unk_1003C1EA0;
    v14 = v65[5] = v68;
    v65[4] = v14;
    v15 = objc_retainBlock(v65);
    [v19 perRecordProgressBlock];
    v16 = v64;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100219CD4;
    v64[3] = &unk_1003C1EC8;
    v17 = v64[5] = v68;
    v64[4] = v17;
    v18 = objc_retainBlock(v64);
    [v19 setPerRecordProgressBlock:v18];
    [v19 setPerRecordCompletionBlock:v15];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v6;
    [v21 recordFetchedBlock];
    v13 = v63;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_100219D58;
    v63[3] = &unk_1003C1EF0;
    v14 = v63[5] = v68;
    v63[4] = v14;
    v15 = objc_retainBlock(v63);
    [v21 queryCursorFetchedBlock];
    v16 = v62;
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100219D80;
    v62[3] = &unk_1003C1F18;
    v17 = v62[5] = v68;
    v62[4] = v17;
    v18 = objc_retainBlock(v62);
    [v21 setRecordFetchedBlock:v15];
    [v21 setQueryCursorFetchedBlock:v18];
    v47 = 0;
    goto LABEL_13;
  }

  v47 = 0;
LABEL_14:
  v22 = [v6 completionBlock];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100219DF0;
  v57[3] = &unk_1003C1F40;
  v61 = Current;
  v57[4] = self;
  v23 = v6;
  v58 = v23;
  v60 = v68;
  v49 = v22;
  v59 = v49;
  v24 = [v57 copy];
  [v23 setCompletionBlock:v24];
  v50 = v24;
  [v56 qualityOfService];
  v52 = MBLogStringForNSQualityOfService();
  v25 = [v23 group];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = [(MBCKOperationTracker *)self ckOperationGroup];
  }

  v28 = v27;

  v29 = [v28 operationGroupID];
  v30 = [v28 name];
  dispatch_group_enter(self->_dispatchGroup);
  v31 = self;
  objc_sync_enter(v31);
  operations = v31->_operations;
  if (!operations)
  {
    v33 = objc_opt_new();
    v34 = v31->_operations;
    v31->_operations = v33;

    operations = v31->_operations;
  }

  v35 = [(NSMutableArray *)operations count];
  [(NSMutableArray *)v31->_operations addObject:v23];
  objc_sync_exit(v31);

  v36 = [(MBCKOperationTracker *)v31 xpcActivity];
  if (v30)
  {
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v37;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_opt_class();
        v39 = [v23 operationID];
        *buf = 138545666;
        v71 = v38;
        v72 = 2114;
        v73 = v39;
        v74 = 2114;
        v75 = v29;
        v76 = 2112;
        v77 = v30;
        v78 = 2114;
        *v79 = v52;
        *&v79[8] = 1024;
        *v80 = v53 != 0;
        *&v80[4] = 1024;
        *v81 = v48;
        *&v81[4] = 1024;
        *&v81[6] = v36 != 0;
        v82 = 2048;
        v83 = v47;
        v84 = 2048;
        v85 = v35;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=ck-op= Starting %{public}@, id:%{public}@, gid:%{public}@, gn:%@, qos:%{public}@, ac:%d(%d), xa:%d, c:%lu, o:%lu", buf, 0x5Au);
      }

LABEL_27:

      objc_opt_class();
      v42 = [v23 operationID];
      _MBLog();
    }
  }

  else
  {
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v37;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v40 = objc_opt_class();
        v41 = [v23 operationID];
        *buf = 138545410;
        v71 = v40;
        v72 = 2114;
        v73 = v41;
        v74 = 2114;
        v75 = v29;
        v76 = 2114;
        v77 = v52;
        v78 = 1024;
        *v79 = v53 != 0;
        *&v79[4] = 1024;
        *&v79[6] = v48;
        *v80 = 1024;
        *&v80[2] = v36 != 0;
        *v81 = 2048;
        *&v81[2] = v47;
        v82 = 2048;
        v83 = v35;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=ck-op= Starting %{public}@, id:%{public}@, gid:%{public}@, qos:%{public}@, ac:%d(%d), xa:%d, c:%lu, o:%lu", buf, 0x50u);
      }

      goto LABEL_27;
    }
  }

  [v54 addDatabaseOperation:v23 account:v55 policy:v56 operationGroup:v28 xpcActivity:v36];
  if (-[MBCKOperationTracker canceled](v31, "canceled") && ([v23 isCancelled] & 1) == 0)
  {
    v43 = MBGetDefaultLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v23 operationID];
        *buf = 138543362;
        v71 = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "=ck-op= Canceling operation %{public}@", buf, 0xCu);
      }

      v46 = [v23 operationID];
      _MBLog();
    }

    [v23 cancel];
  }

  _Block_object_dispose(v68, 8);
}

- (void)addDatabaseOperation:(id)a3
{
  v4 = a3;
  v5 = [(MBCKOperationTracker *)self ckOperationPolicy];
  [(MBCKOperationTracker *)self addDatabaseOperation:v4 policy:v5];
}

- (void)addCKMetric:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MBCKOperationTracker *)v4 metrics];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(MBCKOperationTracker *)v4 setMetrics:v6];
  }

  v7 = [(MBCKOperationTracker *)v4 metrics];
  [v7 addObject:v8];

  objc_sync_exit(v4);
}

- (void)setGroupNamePrefix:(id)a3
{
  v4 = self;
  v5 = a3;
  objc_sync_enter(v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1003C3430;
  }

  v7 = v6;

  groupNamePrefix = v4->_groupNamePrefix;
  if (!groupNamePrefix)
  {
    groupNamePrefix = &stru_1003C3430;
  }

  v9 = groupNamePrefix;
  v10 = [(CKOperationGroup *)v4->_ckOperationGroup name];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_1003C3430;
  }

  v13 = v12;

  if (([(__CFString *)v7 isEqualToString:v9]& 1) == 0)
  {
    v14 = [(__CFString *)v13 substringFromIndex:[(__CFString *)v9 length]];
    v15 = [[NSMutableString alloc] initWithCapacity:{-[__CFString length](v7, "length") + objc_msgSend(v14, "length")}];
    [v15 appendString:v7];
    [v15 appendString:v14];
    [(CKOperationGroup *)v4->_ckOperationGroup setName:v15];
    objc_storeStrong(&v4->_groupNamePrefix, v6);
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=ck-op= Updated group name %@ -> %@ for %@", buf, 0x20u);
      _MBLog();
    }
  }

  objc_sync_exit(v4);
}

- (id)startBatchFetch
{
  v3 = [[MBCKBatchFetch alloc] initWithOperationTracker:self];
  v4 = self;
  objc_sync_enter(v4);
  batchFetches = v4->_batchFetches;
  if (!batchFetches)
  {
    v6 = objc_opt_new();
    v7 = v4->_batchFetches;
    v4->_batchFetches = v6;

    batchFetches = v4->_batchFetches;
  }

  [(NSMutableArray *)batchFetches addObject:v3];
  objc_sync_exit(v4);

  if ([(MBCKOperationTracker *)v4 canceled])
  {
    [(MBCKBatchFetch *)v3 cancel];
  }

  return v3;
}

- (void)finishBatchFetch:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKOperationTracker finishBatchFetch:completion:]", "MBCKOperationTracker.m", 550, "batchFetch");
  }

  v8 = v7;
  v9 = self;
  objc_sync_enter(v9);
  if (([(NSMutableArray *)v9->_batchFetches containsObject:v6]& 1) == 0)
  {
    __assert_rtn("[MBCKOperationTracker finishBatchFetch:completion:]", "MBCKOperationTracker.m", 553, "[_batchFetches containsObject:batchFetch]");
  }

  objc_sync_exit(v9);

  dispatch_group_enter(v9->_dispatchGroup);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_10021A928;
  v23[4] = sub_10021A938;
  v24 = 0;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10021A940;
  v19[3] = &unk_1003C1F68;
  v22 = v23;
  v19[4] = v9;
  v11 = v6;
  v20 = v11;
  v12 = v10;
  v21 = v12;
  [v11 fetchRecordsWithCompletion:v19];
  v13 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021A9E4;
  block[3] = &unk_1003C1F90;
  v17 = v8;
  v18 = v23;
  block[4] = v9;
  v14 = v8;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_group_notify(v12, v13, v15);

  _Block_object_dispose(v23, 8);
}

- (void)fetchRecordWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MBCKOperationTracker *)self ckOperationPolicy];
  v9 = v8;
  if (!v8)
  {
    __assert_rtn("[MBCKOperationTracker fetchRecordWithID:completion:]", "MBCKOperationTracker.m", 576, "policy");
  }

  v10 = [v8 fetchAssets];
  [v9 timeoutIntervalForFetch];
  v12 = v11;
  v13 = dispatch_semaphore_create(0);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v14 = [CKFetchRecordsOperation alloc];
  v42 = v6;
  v15 = [NSArray arrayWithObjects:&v42 count:1];
  v16 = [v14 initWithRecordIDs:v15];

  objc_initWeak(&location, v16);
  [v16 setShouldFetchAssetContent:v10];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10021AEC0;
  v29[3] = &unk_1003C1FB8;
  objc_copyWeak(&v34, &location);
  v17 = v13;
  v30 = v17;
  v33 = &v36;
  v18 = v6;
  v31 = v18;
  v19 = v7;
  v32 = v19;
  [v16 setFetchRecordsCompletionBlock:v29];
  [(MBCKOperationTracker *)self addDatabaseOperation:v16 policy:v9];
  if (-[MBCKOperationTracker canceled](self, "canceled") && ([v16 isCancelled] & 1) == 0)
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v16 operationID];
        *buf = 138412290;
        v41 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ck-op= Canceling operation %@", buf, 0xCu);
      }

      v27 = [v16 operationID];
      _MBLog();
    }

    [v16 cancel];
  }

  if (v12 > 0.0)
  {
    v23 = dispatch_time(0, 1000000 * (v12 * 1000.0));
    if (dispatch_semaphore_wait(v17, v23))
    {
      *(v37 + 24) = 1;
      if (([v16 isCancelled] & 1) == 0)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v16 operationID];
            *buf = 138412290;
            v41 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=ck-op= Canceling operation %@", buf, 0xCu);
          }

          v28 = [v16 operationID];
          _MBLog();
        }

        [v16 cancel];
      }
    }
  }

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v36, 8);
}

- (id)fetchRecordWithID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10021A928;
  v25 = sub_10021A938;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10021A928;
  v19 = sub_10021A938;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10021B2D8;
  v11[3] = &unk_1003BE5E0;
  v13 = &v21;
  v14 = &v15;
  v7 = dispatch_semaphore_create(0);
  v12 = v7;
  [(MBCKOperationTracker *)self fetchRecordWithID:v6 completion:v11];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v22[5];
  if (v8)
  {
    v9 = 0;
    if (a4)
    {
      *a4 = v8;
    }
  }

  else
  {
    v9 = v16[5];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (id)startBatchSave
{
  v3 = [[MBCKBatchSave alloc] initWithOperationTracker:self];
  v4 = self;
  objc_sync_enter(v4);
  batchSaves = v4->_batchSaves;
  if (!batchSaves)
  {
    v6 = objc_opt_new();
    v7 = v4->_batchSaves;
    v4->_batchSaves = v6;

    batchSaves = v4->_batchSaves;
  }

  [(NSMutableArray *)batchSaves addObject:v3];
  objc_sync_exit(v4);

  if ([(MBCKOperationTracker *)v4 canceled])
  {
    [(MBCKBatchSave *)v3 cancel];
  }

  return v3;
}

- (void)finishBatchSave:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKOperationTracker finishBatchSave:completion:]", "MBCKOperationTracker.m", 658, "batchSave");
  }

  v8 = v7;
  v9 = self;
  objc_sync_enter(v9);
  if (([(NSMutableArray *)v9->_batchSaves containsObject:v6]& 1) == 0)
  {
    __assert_rtn("[MBCKOperationTracker finishBatchSave:completion:]", "MBCKOperationTracker.m", 661, "[_batchSaves containsObject:batchSave]");
  }

  objc_sync_exit(v9);

  dispatch_group_enter(v9->_dispatchGroup);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_10021A928;
  v23[4] = sub_10021A938;
  v24 = 0;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10021B698;
  v19[3] = &unk_1003C1F68;
  v22 = v23;
  v19[4] = v9;
  v11 = v6;
  v20 = v11;
  v12 = v10;
  v21 = v12;
  [v11 saveRecordsWithCompletion:v19];
  v13 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021B73C;
  block[3] = &unk_1003C1F90;
  v17 = v8;
  v18 = v23;
  block[4] = v9;
  v14 = v8;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_group_notify(v12, v13, v15);

  _Block_object_dispose(v23, 8);
}

- (BOOL)saveRecord:(id)a3 delegate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10021A928;
  v21 = sub_10021A938;
  v22 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10021B910;
  v14[3] = &unk_1003BD748;
  v16 = &v17;
  v10 = dispatch_semaphore_create(0);
  v15 = v10;
  [(MBCKOperationTracker *)self saveRecord:v8 delegate:v9 completion:v14];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v18[5];
  if (a5 && v11)
  {
    v11 = v11;
    *a5 = v11;
  }

  v12 = v11 == 0;

  _Block_object_dispose(&v17, 8);
  return v12;
}

- (void)saveRecord:(id)a3 delegate:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (!v11)
  {
    __assert_rtn("[MBCKOperationTracker saveRecord:delegate:completion:]", "MBCKOperationTracker.m", 702, "record");
  }

  v10 = [(MBCKOperationTracker *)self startBatchSave];
  [v10 setSaveIncrementally:0];
  [v10 saveRecord:v11 delegate:v8 completion:v9];
  [(MBCKOperationTracker *)self finishBatchSave:v10 completion:0];
}

- (id)startBatchDelete
{
  v3 = [[MBCKBatchDelete alloc] initWithOperationTracker:self];
  v4 = self;
  objc_sync_enter(v4);
  batchDeletes = v4->_batchDeletes;
  if (!batchDeletes)
  {
    v6 = objc_opt_new();
    v7 = v4->_batchDeletes;
    v4->_batchDeletes = v6;

    batchDeletes = v4->_batchDeletes;
  }

  [(NSMutableArray *)batchDeletes addObject:v3];
  objc_sync_exit(v4);

  if ([(MBCKOperationTracker *)v4 canceled])
  {
    [(MBCKBatchDelete *)v3 cancel];
  }

  return v3;
}

- (void)finishBatchDelete:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKOperationTracker finishBatchDelete:completion:]", "MBCKOperationTracker.m", 723, "batchDelete");
  }

  v8 = v7;
  v9 = self;
  objc_sync_enter(v9);
  if (([(NSMutableArray *)v9->_batchDeletes containsObject:v6]& 1) == 0)
  {
    __assert_rtn("[MBCKOperationTracker finishBatchDelete:completion:]", "MBCKOperationTracker.m", 726, "[_batchDeletes containsObject:batchDelete]");
  }

  objc_sync_exit(v9);

  dispatch_group_enter(v9->_dispatchGroup);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_10021A928;
  v23[4] = sub_10021A938;
  v24 = 0;
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10021BD78;
  v19[3] = &unk_1003C1F68;
  v22 = v23;
  v19[4] = v9;
  v11 = v6;
  v20 = v11;
  v12 = v10;
  v21 = v12;
  [v11 deleteRecordsWithCompletion:v19];
  v13 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021BE1C;
  block[3] = &unk_1003C1F90;
  v17 = v8;
  v18 = v23;
  block[4] = v9;
  v14 = v8;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_group_notify(v12, v13, v15);

  _Block_object_dispose(v23, 8);
}

- (NSArray)engines
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSHashTable *)v2->_engines allObjects];
  objc_sync_exit(v2);

  return v3;
}

- (void)addEngine:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBCKOperationTracker addEngine:]", "MBCKOperationTracker.m", 754, "engine");
  }

  v9 = v4;
  v5 = self;
  objc_sync_enter(v5);
  engines = v5->_engines;
  if (!engines)
  {
    v7 = +[NSHashTable weakObjectsHashTable];
    v8 = v5->_engines;
    v5->_engines = v7;

    engines = v5->_engines;
  }

  [(NSHashTable *)engines addObject:v9];
  objc_sync_exit(v5);
}

- (void)removeEngine:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[MBCKOperationTracker removeEngine:]", "MBCKOperationTracker.m", 762, "engine");
  }

  v5 = v4;
  v6 = self;
  objc_sync_enter(v6);
  [(NSHashTable *)v6->_engines removeObject:v5];
  if (![(NSHashTable *)v6->_engines count])
  {
    engines = v6->_engines;
    v6->_engines = 0;
  }

  objc_sync_exit(v6);

  v8 = [(MBCKOperationTracker *)v6 trackers];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10021C0D4;
  v10[3] = &unk_1003C1FE0;
  v11 = v5;
  v9 = v5;
  [v8 enumerateObjectsUsingBlock:v10];
}

@end