@interface MBCKOperationTracker
+ (MBCKOperationTracker)operationTrackerWithParentTracker:(id)tracker policy:(id)policy error:(id *)error;
+ (id)_operationTrackerWithAccount:(id)account databaseManager:(id)manager policy:(id)policy group:(id)group parentTracker:(id)tracker error:(id *)error;
- (BOOL)saveRecord:(id)record delegate:(id)delegate error:(id *)error;
- (NSArray)engines;
- (NSArray)operations;
- (NSArray)trackers;
- (id)_initWithAccount:(id)account databaseManager:(id)manager policy:(id)policy group:(id)group parentTracker:(id)tracker;
- (id)description;
- (id)fetchRecordWithID:(id)d error:(id *)error;
- (id)startBatchDelete;
- (id)startBatchFetch;
- (id)startBatchSave;
- (void)_addTracker:(id)tracker;
- (void)_associateMetricsWithOperation:(id)operation;
- (void)_cancel:(BOOL)_cancel;
- (void)_drainWithCompletion:(id)completion;
- (void)_removeTracker:(id)tracker;
- (void)_replenishRetryTokens;
- (void)_submitMetrics;
- (void)addCKMetric:(id)metric;
- (void)addDatabaseOperation:(id)operation;
- (void)addDatabaseOperation:(id)operation policy:(id)policy;
- (void)addEngine:(id)engine;
- (void)dealloc;
- (void)drain;
- (void)fetchRecordWithID:(id)d completion:(id)completion;
- (void)finishBatchDelete:(id)delete completion:(id)completion;
- (void)finishBatchFetch:(id)fetch completion:(id)completion;
- (void)finishBatchSave:(id)save completion:(id)completion;
- (void)removeEngine:(id)engine;
- (void)saveRecord:(id)record delegate:(id)delegate completion:(id)completion;
- (void)setGroupNamePrefix:(id)prefix;
@end

@implementation MBCKOperationTracker

+ (id)_operationTrackerWithAccount:(id)account databaseManager:(id)manager policy:(id)policy group:(id)group parentTracker:(id)tracker error:(id *)error
{
  accountCopy = account;
  managerCopy = manager;
  policyCopy = policy;
  groupCopy = group;
  trackerCopy = tracker;
  if (!error)
  {
    __assert_rtn("+[MBCKOperationTracker _operationTrackerWithAccount:databaseManager:policy:group:parentTracker:error:]", "MBCKOperationTracker.m", 160, "error");
  }

  v18 = trackerCopy;
  v19 = [[MBCKOperationTracker alloc] _initWithAccount:accountCopy databaseManager:managerCopy policy:policyCopy group:groupCopy parentTracker:trackerCopy];

  return v19;
}

+ (MBCKOperationTracker)operationTrackerWithParentTracker:(id)tracker policy:(id)policy error:(id *)error
{
  trackerCopy = tracker;
  policyCopy = policy;
  if (!trackerCopy)
  {
    __assert_rtn("+[MBCKOperationTracker operationTrackerWithParentTracker:policy:error:]", "MBCKOperationTracker.m", 173, "parentTracker");
  }

  v9 = policyCopy;
  account = [trackerCopy account];
  databaseManager = [trackerCopy databaseManager];
  v12 = [MBCKOperationTracker _operationTrackerWithAccount:account databaseManager:databaseManager policy:v9 group:0 parentTracker:trackerCopy error:error];

  return v12;
}

- (id)_initWithAccount:(id)account databaseManager:(id)manager policy:(id)policy group:(id)group parentTracker:(id)tracker
{
  accountCopy = account;
  managerCopy = manager;
  policyCopy = policy;
  groupCopy = group;
  trackerCopy = tracker;
  if (!accountCopy)
  {
    __assert_rtn("[MBCKOperationTracker _initWithAccount:databaseManager:policy:group:parentTracker:]", "MBCKOperationTracker.m", 178, "account");
  }

  if (!managerCopy)
  {
    __assert_rtn("[MBCKOperationTracker _initWithAccount:databaseManager:policy:group:parentTracker:]", "MBCKOperationTracker.m", 179, "databaseManager");
  }

  if (!policyCopy)
  {
    __assert_rtn("[MBCKOperationTracker _initWithAccount:databaseManager:policy:group:parentTracker:]", "MBCKOperationTracker.m", 180, "policy");
  }

  v18 = trackerCopy;
  v31.receiver = self;
  v31.super_class = MBCKOperationTracker;
  v19 = [(MBCKOperationTracker *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_account, account);
    objc_storeStrong(&v20->_databaseManager, manager);
    v21 = dispatch_group_create();
    dispatchGroup = v20->_dispatchGroup;
    v20->_dispatchGroup = v21;

    objc_storeStrong(&v20->_ckOperationPolicy, policy);
    if (groupCopy)
    {
      ckOperationGroup = groupCopy;
    }

    else
    {
      ckOperationGroup = [v18 ckOperationGroup];
    }

    ckOperationGroup = v20->_ckOperationGroup;
    v20->_ckOperationGroup = ckOperationGroup;

    groupNamePrefix = v20->_groupNamePrefix;
    v20->_groupNamePrefix = &stru_1003C3430;

    [(MBCKOperationTracker *)v20 setParentTracker:v18];
    engines = [v18 engines];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100217878;
    v29[3] = &unk_1003C1DE8;
    v27 = v20;
    v30 = v27;
    [engines enumerateObjectsUsingBlock:v29];
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

  parentTracker = [(MBCKOperationTracker *)self parentTracker];
  [parentTracker _removeTracker:self];

  [(MBCKOperationTracker *)self _cancel:0];
  v4.receiver = self;
  v4.super_class = MBCKOperationTracker;
  [(MBCKOperationTracker *)&v4 dealloc];
}

- (id)description
{
  ckOperationGroup = [(MBCKOperationTracker *)self ckOperationGroup];
  operationGroupID = [ckOperationGroup operationGroupID];

  parentTracker = [(MBCKOperationTracker *)self parentTracker];
  v6 = [[NSMutableArray alloc] initWithCapacity:2];
  if (operationGroupID)
  {
    v7 = [[NSString alloc] initWithFormat:@"gid=%@", operationGroupID];
    [v6 addObject:v7];
  }

  if (parentTracker)
  {
    v8 = [[NSString alloc] initWithFormat:@"parent=%p", parentTracker];
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

- (void)_addTracker:(id)tracker
{
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKOperationTracker _addTracker:]", "MBCKOperationTracker.m", 219, "tracker");
  }

  if (trackerCopy == self)
  {
    __assert_rtn("[MBCKOperationTracker _addTracker:]", "MBCKOperationTracker.m", 220, "tracker != self");
  }

  v9 = trackerCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  trackers = selfCopy->_trackers;
  if (!trackers)
  {
    v7 = +[NSHashTable weakObjectsHashTable];
    v8 = selfCopy->_trackers;
    selfCopy->_trackers = v7;

    trackers = selfCopy->_trackers;
  }

  [(NSHashTable *)trackers addObject:v9];
  objc_sync_exit(selfCopy);

  if ([(MBCKOperationTracker *)selfCopy canceled])
  {
    [(MBCKOperationTracker *)v9 cancel];
  }
}

- (void)_removeTracker:(id)tracker
{
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKOperationTracker _removeTracker:]", "MBCKOperationTracker.m", 229, "tracker");
  }

  v8 = trackerCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_trackers removeObject:v8];
  trackers = selfCopy->_trackers;
  if (trackers && ![(NSHashTable *)trackers count])
  {
    v7 = selfCopy->_trackers;
    selfCopy->_trackers = 0;
  }

  objc_sync_exit(selfCopy);
}

- (NSArray)trackers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSHashTable *)selfCopy->_trackers allObjects];
  objc_sync_exit(selfCopy);

  return allObjects;
}

- (NSArray)operations
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_operations copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_cancel:(BOOL)_cancel
{
  _cancelCopy = _cancel;
  canceled = [(MBCKOperationTracker *)self canceled];
  [(MBCKOperationTracker *)self setCanceled:1];
  if ((canceled & 1) == 0 && _cancelCopy)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=ck-op= Canceling %{public}@", buf, 0xCu);
      selfCopy2 = self;
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

  selfCopy3 = self;
  objc_sync_enter(selfCopy3);
  v11 = [(NSMutableArray *)selfCopy3->_batchFetches copy];
  v12 = [(NSMutableArray *)selfCopy3->_batchSaves copy];
  v13 = [(NSMutableArray *)selfCopy3->_batchDeletes copy];
  objc_sync_exit(selfCopy3);

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

  operations = [(MBCKOperationTracker *)selfCopy3 operations];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = [operations countByEnumeratingWithState:&v36 objects:v56 count:16];
  if (v27)
  {
    v28 = *v37;
    do
    {
      for (n = 0; n != v27; n = n + 1)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(operations);
        }

        v30 = *(*(&v36 + 1) + 8 * n);
        if (([v30 isCancelled] & 1) == 0)
        {
          v31 = MBGetDefaultLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            operationID = [v30 operationID];
            *buf = 138412290;
            selfCopy = operationID;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "=ck-op= Canceling operation %@", buf, 0xCu);

            operationID2 = [v30 operationID];
            _MBLog();
          }

          [v30 cancel];
        }
      }

      v27 = [operations countByEnumeratingWithState:&v36 objects:v56 count:16];
    }

    while (v27);
  }
}

- (void)_drainWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = dispatch_group_create();
  trackers = [(MBCKOperationTracker *)self trackers];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [trackers countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(trackers);
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
      v7 = [trackers countByEnumeratingWithState:&v23 objects:v27 count:16];
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
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v17);
  dispatch_group_notify(v13, v12, v15);
}

- (void)_submitMetrics
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metrics = [(MBCKOperationTracker *)selfCopy metrics];
  [(MBCKOperationTracker *)selfCopy setMetrics:0];
  objc_sync_exit(selfCopy);

  v4 = dispatch_group_create();
  Current = CFAbsoluteTimeGetCurrent();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = metrics;
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
          eventName = [v9 eventName];
          *buf = 138412290;
          v30 = *&eventName;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=ck-op= Submitting CKEventMetric: %@", buf, 0xCu);

          eventName2 = [v9 eventName];
          _MBLog();
        }

        databaseManager = [(MBCKOperationTracker *)selfCopy databaseManager];
        account = [(MBCKOperationTracker *)selfCopy account];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100218920;
        v23[3] = &unk_1003BC060;
        v23[4] = v9;
        v24 = v4;
        [databaseManager submitCKEventMetric:v9 account:account completionHandler:v23];
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
    selfCopy5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "=ck-op= Draining CK operations for %{public}@", buf, 0xCu);
    selfCopy4 = self;
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
    trackers = [(MBCKOperationTracker *)self trackers];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [trackers countByEnumeratingWithState:&v22 objects:v34 count:16];
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
            objc_enumerationMutation(trackers);
          }

          operations = [*(*(&v22 + 1) + 8 * i) operations];
          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            selfCopy5 = self;
            v30 = 2048;
            v31 = v9;
            v32 = 2112;
            v33 = operations;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=ck-op= Failed to drain CK operations for %{public}@ after %.3fs: %@", buf, 0x20u);
            v20 = operations;
            v19 = v9;
            selfCopy4 = self;
            _MBLog();
          }
        }

        v12 = [trackers countByEnumeratingWithState:&v22 objects:v34 count:16];
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
      selfCopy5 = self;
      v30 = 2048;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=ck-op= Drained CK operations for %@ in %.3fs", buf, 0x16u);
      _MBLog();
    }

    [(MBCKOperationTracker *)self _submitMetrics];
  }
}

- (void)_associateMetricsWithOperation:(id)operation
{
  operationCopy = operation;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = selfCopy;
  metrics = [(MBCKOperationTracker *)selfCopy metrics];
  v7 = [metrics countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(metrics);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = v11;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            eventName = [v10 eventName];
            *buf = 138412290;
            v21 = eventName;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=ck-op= Associating CKEventMetric: %@", buf, 0xCu);
          }

          eventName2 = [v10 eventName];
          _MBLog();
        }

        [v10 associateWithCompletedOperation:operationCopy];
      }

      v7 = [metrics countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  objc_sync_exit(obj);
}

- (void)_replenishRetryTokens
{
  engines = [(MBCKOperationTracker *)self engines];
  [engines enumerateObjectsUsingBlock:&stru_1003C1E28];
}

- (void)addDatabaseOperation:(id)operation policy:(id)policy
{
  operationCopy = operation;
  policyCopy = policy;
  if (!policyCopy)
  {
    __assert_rtn("[MBCKOperationTracker addDatabaseOperation:policy:]", "MBCKOperationTracker.m", 385, "policy");
  }

  account = [(MBCKOperationTracker *)self account];
  if (!account)
  {
    __assert_rtn("[MBCKOperationTracker addDatabaseOperation:policy:]", "MBCKOperationTracker.m", 387, "account");
  }

  databaseManager = [(MBCKOperationTracker *)self databaseManager];
  if (!databaseManager)
  {
    __assert_rtn("[MBCKOperationTracker addDatabaseOperation:policy:]", "MBCKOperationTracker.m", 389, "databaseManager");
  }

  cellularAccess = [policyCopy cellularAccess];
  v53 = cellularAccess;
  if (cellularAccess)
  {
    allowsExpensiveNetworkAccess = [cellularAccess allowsExpensiveNetworkAccess];
  }

  else
  {
    allowsExpensiveNetworkAccess = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = operationCopy;
    recordsToSave = [v9 recordsToSave];
    v51 = [recordsToSave count];
    recordIDsToDelete = [v9 recordIDsToDelete];
    v12 = [recordIDsToDelete count];

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
    v19 = operationCopy;
    recordIDs = [v19 recordIDs];
    v47 = [recordIDs count];

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
    v21 = operationCopy;
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
  completionBlock = [operationCopy completionBlock];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100219DF0;
  v57[3] = &unk_1003C1F40;
  v61 = Current;
  v57[4] = self;
  v23 = operationCopy;
  v58 = v23;
  v60 = v68;
  v49 = completionBlock;
  v59 = v49;
  v24 = [v57 copy];
  [v23 setCompletionBlock:v24];
  v50 = v24;
  [policyCopy qualityOfService];
  v52 = MBLogStringForNSQualityOfService();
  group = [v23 group];
  v26 = group;
  if (group)
  {
    ckOperationGroup = group;
  }

  else
  {
    ckOperationGroup = [(MBCKOperationTracker *)self ckOperationGroup];
  }

  v28 = ckOperationGroup;

  operationGroupID = [v28 operationGroupID];
  name = [v28 name];
  dispatch_group_enter(self->_dispatchGroup);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  operations = selfCopy->_operations;
  if (!operations)
  {
    v33 = objc_opt_new();
    v34 = selfCopy->_operations;
    selfCopy->_operations = v33;

    operations = selfCopy->_operations;
  }

  v35 = [(NSMutableArray *)operations count];
  [(NSMutableArray *)selfCopy->_operations addObject:v23];
  objc_sync_exit(selfCopy);

  xpcActivity = [(MBCKOperationTracker *)selfCopy xpcActivity];
  if (name)
  {
    v37 = MBGetDefaultLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v37;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_opt_class();
        operationID = [v23 operationID];
        *buf = 138545666;
        v71 = v38;
        v72 = 2114;
        v73 = operationID;
        v74 = 2114;
        v75 = operationGroupID;
        v76 = 2112;
        v77 = name;
        v78 = 2114;
        *v79 = v52;
        *&v79[8] = 1024;
        *v80 = v53 != 0;
        *&v80[4] = 1024;
        *v81 = allowsExpensiveNetworkAccess;
        *&v81[4] = 1024;
        *&v81[6] = xpcActivity != 0;
        v82 = 2048;
        v83 = v47;
        v84 = 2048;
        v85 = v35;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=ck-op= Starting %{public}@, id:%{public}@, gid:%{public}@, gn:%@, qos:%{public}@, ac:%d(%d), xa:%d, c:%lu, o:%lu", buf, 0x5Au);
      }

LABEL_27:

      objc_opt_class();
      operationID2 = [v23 operationID];
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
        operationID3 = [v23 operationID];
        *buf = 138545410;
        v71 = v40;
        v72 = 2114;
        v73 = operationID3;
        v74 = 2114;
        v75 = operationGroupID;
        v76 = 2114;
        v77 = v52;
        v78 = 1024;
        *v79 = v53 != 0;
        *&v79[4] = 1024;
        *&v79[6] = allowsExpensiveNetworkAccess;
        *v80 = 1024;
        *&v80[2] = xpcActivity != 0;
        *v81 = 2048;
        *&v81[2] = v47;
        v82 = 2048;
        v83 = v35;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "=ck-op= Starting %{public}@, id:%{public}@, gid:%{public}@, qos:%{public}@, ac:%d(%d), xa:%d, c:%lu, o:%lu", buf, 0x50u);
      }

      goto LABEL_27;
    }
  }

  [databaseManager addDatabaseOperation:v23 account:account policy:policyCopy operationGroup:v28 xpcActivity:xpcActivity];
  if (-[MBCKOperationTracker canceled](selfCopy, "canceled") && ([v23 isCancelled] & 1) == 0)
  {
    v43 = MBGetDefaultLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        operationID4 = [v23 operationID];
        *buf = 138543362;
        v71 = operationID4;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "=ck-op= Canceling operation %{public}@", buf, 0xCu);
      }

      operationID5 = [v23 operationID];
      _MBLog();
    }

    [v23 cancel];
  }

  _Block_object_dispose(v68, 8);
}

- (void)addDatabaseOperation:(id)operation
{
  operationCopy = operation;
  ckOperationPolicy = [(MBCKOperationTracker *)self ckOperationPolicy];
  [(MBCKOperationTracker *)self addDatabaseOperation:operationCopy policy:ckOperationPolicy];
}

- (void)addCKMetric:(id)metric
{
  metricCopy = metric;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metrics = [(MBCKOperationTracker *)selfCopy metrics];

  if (!metrics)
  {
    v6 = objc_opt_new();
    [(MBCKOperationTracker *)selfCopy setMetrics:v6];
  }

  metrics2 = [(MBCKOperationTracker *)selfCopy metrics];
  [metrics2 addObject:metricCopy];

  objc_sync_exit(selfCopy);
}

- (void)setGroupNamePrefix:(id)prefix
{
  selfCopy = self;
  prefixCopy = prefix;
  objc_sync_enter(selfCopy);
  if (prefixCopy)
  {
    v6 = prefixCopy;
  }

  else
  {
    v6 = &stru_1003C3430;
  }

  v7 = v6;

  groupNamePrefix = selfCopy->_groupNamePrefix;
  if (!groupNamePrefix)
  {
    groupNamePrefix = &stru_1003C3430;
  }

  v9 = groupNamePrefix;
  name = [(CKOperationGroup *)selfCopy->_ckOperationGroup name];
  v11 = name;
  if (name)
  {
    v12 = name;
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
    [(CKOperationGroup *)selfCopy->_ckOperationGroup setName:v15];
    objc_storeStrong(&selfCopy->_groupNamePrefix, v6);
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = selfCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=ck-op= Updated group name %@ -> %@ for %@", buf, 0x20u);
      _MBLog();
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)startBatchFetch
{
  v3 = [[MBCKBatchFetch alloc] initWithOperationTracker:self];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batchFetches = selfCopy->_batchFetches;
  if (!batchFetches)
  {
    v6 = objc_opt_new();
    v7 = selfCopy->_batchFetches;
    selfCopy->_batchFetches = v6;

    batchFetches = selfCopy->_batchFetches;
  }

  [(NSMutableArray *)batchFetches addObject:v3];
  objc_sync_exit(selfCopy);

  if ([(MBCKOperationTracker *)selfCopy canceled])
  {
    [(MBCKBatchFetch *)v3 cancel];
  }

  return v3;
}

- (void)finishBatchFetch:(id)fetch completion:(id)completion
{
  fetchCopy = fetch;
  completionCopy = completion;
  if (!fetchCopy)
  {
    __assert_rtn("[MBCKOperationTracker finishBatchFetch:completion:]", "MBCKOperationTracker.m", 550, "batchFetch");
  }

  v8 = completionCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableArray *)selfCopy->_batchFetches containsObject:fetchCopy]& 1) == 0)
  {
    __assert_rtn("[MBCKOperationTracker finishBatchFetch:completion:]", "MBCKOperationTracker.m", 553, "[_batchFetches containsObject:batchFetch]");
  }

  objc_sync_exit(selfCopy);

  dispatch_group_enter(selfCopy->_dispatchGroup);
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
  v19[4] = selfCopy;
  v11 = fetchCopy;
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
  block[4] = selfCopy;
  v14 = v8;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_group_notify(v12, v13, v15);

  _Block_object_dispose(v23, 8);
}

- (void)fetchRecordWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  ckOperationPolicy = [(MBCKOperationTracker *)self ckOperationPolicy];
  v9 = ckOperationPolicy;
  if (!ckOperationPolicy)
  {
    __assert_rtn("[MBCKOperationTracker fetchRecordWithID:completion:]", "MBCKOperationTracker.m", 576, "policy");
  }

  fetchAssets = [ckOperationPolicy fetchAssets];
  [v9 timeoutIntervalForFetch];
  v12 = v11;
  v13 = dispatch_semaphore_create(0);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v14 = [CKFetchRecordsOperation alloc];
  v42 = dCopy;
  v15 = [NSArray arrayWithObjects:&v42 count:1];
  v16 = [v14 initWithRecordIDs:v15];

  objc_initWeak(&location, v16);
  [v16 setShouldFetchAssetContent:fetchAssets];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10021AEC0;
  v29[3] = &unk_1003C1FB8;
  objc_copyWeak(&v34, &location);
  v17 = v13;
  v30 = v17;
  v33 = &v36;
  v18 = dCopy;
  v31 = v18;
  v19 = completionCopy;
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
        operationID = [v16 operationID];
        *buf = 138412290;
        v41 = operationID;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ck-op= Canceling operation %@", buf, 0xCu);
      }

      operationID2 = [v16 operationID];
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
            operationID3 = [v16 operationID];
            *buf = 138412290;
            v41 = operationID3;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=ck-op= Canceling operation %@", buf, 0xCu);
          }

          operationID4 = [v16 operationID];
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

- (id)fetchRecordWithID:(id)d error:(id *)error
{
  dCopy = d;
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
  [(MBCKOperationTracker *)self fetchRecordWithID:dCopy completion:v11];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v22[5];
  if (v8)
  {
    v9 = 0;
    if (error)
    {
      *error = v8;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batchSaves = selfCopy->_batchSaves;
  if (!batchSaves)
  {
    v6 = objc_opt_new();
    v7 = selfCopy->_batchSaves;
    selfCopy->_batchSaves = v6;

    batchSaves = selfCopy->_batchSaves;
  }

  [(NSMutableArray *)batchSaves addObject:v3];
  objc_sync_exit(selfCopy);

  if ([(MBCKOperationTracker *)selfCopy canceled])
  {
    [(MBCKBatchSave *)v3 cancel];
  }

  return v3;
}

- (void)finishBatchSave:(id)save completion:(id)completion
{
  saveCopy = save;
  completionCopy = completion;
  if (!saveCopy)
  {
    __assert_rtn("[MBCKOperationTracker finishBatchSave:completion:]", "MBCKOperationTracker.m", 658, "batchSave");
  }

  v8 = completionCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableArray *)selfCopy->_batchSaves containsObject:saveCopy]& 1) == 0)
  {
    __assert_rtn("[MBCKOperationTracker finishBatchSave:completion:]", "MBCKOperationTracker.m", 661, "[_batchSaves containsObject:batchSave]");
  }

  objc_sync_exit(selfCopy);

  dispatch_group_enter(selfCopy->_dispatchGroup);
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
  v19[4] = selfCopy;
  v11 = saveCopy;
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
  block[4] = selfCopy;
  v14 = v8;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_group_notify(v12, v13, v15);

  _Block_object_dispose(v23, 8);
}

- (BOOL)saveRecord:(id)record delegate:(id)delegate error:(id *)error
{
  recordCopy = record;
  delegateCopy = delegate;
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
  [(MBCKOperationTracker *)self saveRecord:recordCopy delegate:delegateCopy completion:v14];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v18[5];
  if (error && v11)
  {
    v11 = v11;
    *error = v11;
  }

  v12 = v11 == 0;

  _Block_object_dispose(&v17, 8);
  return v12;
}

- (void)saveRecord:(id)record delegate:(id)delegate completion:(id)completion
{
  recordCopy = record;
  delegateCopy = delegate;
  completionCopy = completion;
  if (!recordCopy)
  {
    __assert_rtn("[MBCKOperationTracker saveRecord:delegate:completion:]", "MBCKOperationTracker.m", 702, "record");
  }

  startBatchSave = [(MBCKOperationTracker *)self startBatchSave];
  [startBatchSave setSaveIncrementally:0];
  [startBatchSave saveRecord:recordCopy delegate:delegateCopy completion:completionCopy];
  [(MBCKOperationTracker *)self finishBatchSave:startBatchSave completion:0];
}

- (id)startBatchDelete
{
  v3 = [[MBCKBatchDelete alloc] initWithOperationTracker:self];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  batchDeletes = selfCopy->_batchDeletes;
  if (!batchDeletes)
  {
    v6 = objc_opt_new();
    v7 = selfCopy->_batchDeletes;
    selfCopy->_batchDeletes = v6;

    batchDeletes = selfCopy->_batchDeletes;
  }

  [(NSMutableArray *)batchDeletes addObject:v3];
  objc_sync_exit(selfCopy);

  if ([(MBCKOperationTracker *)selfCopy canceled])
  {
    [(MBCKBatchDelete *)v3 cancel];
  }

  return v3;
}

- (void)finishBatchDelete:(id)delete completion:(id)completion
{
  deleteCopy = delete;
  completionCopy = completion;
  if (!deleteCopy)
  {
    __assert_rtn("[MBCKOperationTracker finishBatchDelete:completion:]", "MBCKOperationTracker.m", 723, "batchDelete");
  }

  v8 = completionCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableArray *)selfCopy->_batchDeletes containsObject:deleteCopy]& 1) == 0)
  {
    __assert_rtn("[MBCKOperationTracker finishBatchDelete:completion:]", "MBCKOperationTracker.m", 726, "[_batchDeletes containsObject:batchDelete]");
  }

  objc_sync_exit(selfCopy);

  dispatch_group_enter(selfCopy->_dispatchGroup);
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
  v19[4] = selfCopy;
  v11 = deleteCopy;
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
  block[4] = selfCopy;
  v14 = v8;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_group_notify(v12, v13, v15);

  _Block_object_dispose(v23, 8);
}

- (NSArray)engines
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSHashTable *)selfCopy->_engines allObjects];
  objc_sync_exit(selfCopy);

  return allObjects;
}

- (void)addEngine:(id)engine
{
  engineCopy = engine;
  if (!engineCopy)
  {
    __assert_rtn("[MBCKOperationTracker addEngine:]", "MBCKOperationTracker.m", 754, "engine");
  }

  v9 = engineCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  engines = selfCopy->_engines;
  if (!engines)
  {
    v7 = +[NSHashTable weakObjectsHashTable];
    v8 = selfCopy->_engines;
    selfCopy->_engines = v7;

    engines = selfCopy->_engines;
  }

  [(NSHashTable *)engines addObject:v9];
  objc_sync_exit(selfCopy);
}

- (void)removeEngine:(id)engine
{
  engineCopy = engine;
  if (!engineCopy)
  {
    __assert_rtn("[MBCKOperationTracker removeEngine:]", "MBCKOperationTracker.m", 762, "engine");
  }

  v5 = engineCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_engines removeObject:v5];
  if (![(NSHashTable *)selfCopy->_engines count])
  {
    engines = selfCopy->_engines;
    selfCopy->_engines = 0;
  }

  objc_sync_exit(selfCopy);

  trackers = [(MBCKOperationTracker *)selfCopy trackers];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10021C0D4;
  v10[3] = &unk_1003C1FE0;
  v11 = v5;
  v9 = v5;
  [trackers enumerateObjectsUsingBlock:v10];
}

@end