@interface RemoteSearchCoordinator
- (RemoteSearchCoordinator)initWithAccount:(id)a3 searchContext:(id)a4 logIdentifier:(id)a5 progress:(id)a6;
- (id)createSearchOperationsForMailbox:(id)a3 logPrefix:(id)a4;
- (void)_addAllSearchOperations;
- (void)cancel;
- (void)performSearch;
- (void)remoteSearchOperation:(id)a3 didFindResults:(BOOL)a4;
@end

@implementation RemoteSearchCoordinator

- (RemoteSearchCoordinator)initWithAccount:(id)a3 searchContext:(id)a4 logIdentifier:(id)a5 progress:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v32.receiver = self;
  v32.super_class = RemoteSearchCoordinator;
  v15 = [(RemoteSearchCoordinator *)&v32 init];
  v16 = v15;
  v17 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, a3);
    objc_storeStrong(&v16->_searchContext, a4);
    v18 = [v11 uniqueID];
    v29 = v14;
    v30 = v12;
    v31 = v11;
    v19 = [v12 sessionID];
    v20 = v13;
    v21 = v18;
    v22 = v21;
    if ([v21 length] >= 9)
    {
      v23 = [v21 substringToIndex:8];

      v22 = v23;
    }

    if (v20)
    {
      [NSString stringWithFormat:@"%@-%@-#%lu", v20, v22, v19];
    }

    else
    {
      [NSString stringWithFormat:@"%@-#%lu", v22, v19];
    }
    v24 = ;

    logPrefix = v17->_logPrefix;
    v17->_logPrefix = v24;

    objc_storeStrong(&v16->_progress, a6);
    v12 = v30;
    v11 = v31;
    v14 = v29;
    v26 = objc_opt_new();
    workQueue = v17->_workQueue;
    v17->_workQueue = v26;

    [(NSOperationQueue *)v17->_workQueue setName:@"com.apple.mobilemail.remotesearchcoordinator.workqueue"];
    [(NSOperationQueue *)v17->_workQueue setMaxConcurrentOperationCount:4];
    [(NSOperationQueue *)v17->_workQueue setQualityOfService:25];
  }

  return v17;
}

- (void)performSearch
{
  if (self)
  {
    progress = self->_progress;
  }

  else
  {
    progress = 0;
  }

  v4 = progress;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      logPrefix = self->_logPrefix;
    }

    else
    {
      logPrefix = 0;
    }

    sub_1000D5A8C(logPrefix, [(NSProgress *)v4 totalUnitCount], buf, v5);
  }

  kdebug_trace();
  [(RemoteSearchCoordinator *)self _addAllSearchOperations];
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  [(NSOperationQueue *)workQueue waitUntilAllOperationsAreFinished];
  kdebug_trace();
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v9 = self->_logPrefix;
      cancelled = self->_cancelled;
      v11 = v9;
    }

    else
    {
      v9 = 0;
      v11 = 0;
      cancelled = 0;
    }

    v12 = 138544130;
    v13 = v9;
    v14 = 1024;
    v15 = cancelled;
    v16 = 1024;
    v17 = [(NSProgress *)v4 completedUnitCount];
    v18 = 1024;
    v19 = [(NSProgress *)v4 totalUnitCount];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] cancelled: %{BOOL}d, %u/%u remote searches", &v12, 0x1Eu);
  }
}

- (void)remoteSearchOperation:(id)a3 didFindResults:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    if (self)
    {
      self->_foundResults = 1;
    }
  }

  else
  {
    v7 = +[MFActivityMonitor currentMonitor];
    v8 = [v7 error];
    if (v8)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (self)
        {
          logPrefix = self->_logPrefix;
        }

        else
        {
          logPrefix = 0;
        }

        v11 = logPrefix;
        v12 = sub_1000D5BC0(v6);
        v13 = [v12 ef_publicDescription];
        v14 = 138543874;
        v15 = v11;
        v16 = 2114;
        v17 = v13;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] mailbox %{public}@: Monitor error: %@", &v14, 0x20u);
      }
    }
  }
}

- (void)_addAllSearchOperations
{
  v3 = [(RemoteSearchCoordinator *)self nextSearchableMailbox];
  if (v3)
  {
    v4 = -1;
    do
    {
      if (v4 == 199)
      {
        break;
      }

      v5 = objc_autoreleasePoolPush();
      if (self)
      {
        logPrefix = self->_logPrefix;
      }

      else
      {
        logPrefix = 0;
      }

      v7 = logPrefix;
      v8 = [NSString stringWithFormat:@"%@.%u", v7, (v4 + 2)];

      v9 = v3[2](v3);
      v10 = [(RemoteSearchCoordinator *)self createSearchOperationsForMailbox:v9 logPrefix:v8];
      v11 = [v10 count];
      if (v11)
      {
        if (self)
        {
          workQueue = self->_workQueue;
        }

        else
        {
          workQueue = 0;
        }

        v13 = workQueue;
        [(NSOperationQueue *)v13 addOperations:v10 waitUntilFinished:0];
      }

      objc_autoreleasePoolPop(v5);
      ++v4;
    }

    while (v11);
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v15 = self->_logPrefix;
      }

      else
      {
        v15 = 0;
      }

      *buf = 138543618;
      v17 = v15;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@]: Did create %u search operation(s).", buf, 0x12u);
    }
  }
}

- (id)createSearchOperationsForMailbox:(id)a3 logPrefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = [EMInternalPreferences preferenceEnabled:49];
    v10 = [EMInternalPreferences preferenceEnabled:14];
    if ((v9 & 1) == 0)
    {
      if (self)
      {
        progress = self->_progress;
      }

      else
      {
        progress = 0;
      }

      v12 = [NSProgress progressWithTotalUnitCount:1 parent:progress pendingUnitCount:1];
      v13 = [RemoteSearchOperation alloc];
      if (self)
      {
        searchContext = self->_searchContext;
      }

      else
      {
        searchContext = 0;
      }

      v15 = sub_1000B41FC(&v13->super.super.isa, v6, searchContext, v7, v12, self, 1);
      v16 = [(RemoteSearchCoordinator *)self foundMessagesCompletion];
      sub_1000D5C24(v15, v16, v17);

      v18 = [(RemoteSearchCoordinator *)self stopEarly];
      sub_1000D5C38(v15, v18, v19);

      [v8 addObject:v15];
    }

    if ((v10 & 1) == 0)
    {
      if (self)
      {
        v20 = self->_progress;
      }

      else
      {
        v20 = 0;
      }

      v21 = [NSProgress progressWithTotalUnitCount:1 parent:v20 pendingUnitCount:1];
      v22 = [RemoteSearchOperation alloc];
      if (self)
      {
        v23 = self->_searchContext;
      }

      else
      {
        v23 = 0;
      }

      v24 = sub_1000B41FC(&v22->super.super.isa, v6, v23, v7, v21, self, 0);
      v25 = [(RemoteSearchCoordinator *)self foundMessagesCompletion];
      sub_1000D5C24(v24, v25, v26);

      v27 = [(RemoteSearchCoordinator *)self stopEarly];
      sub_1000D5C38(v24, v27, v28);

      [v8 addObject:v24];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)cancel
{
  if (self)
  {
    self->_cancelled = 1;
    self = self->_workQueue;
  }

  [(RemoteSearchCoordinator *)self cancelAllOperations];
}

@end