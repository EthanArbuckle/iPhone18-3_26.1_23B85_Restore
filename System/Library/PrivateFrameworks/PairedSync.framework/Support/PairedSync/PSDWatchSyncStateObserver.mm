@interface PSDWatchSyncStateObserver
+ (id)pairdSyncStateDomainKey;
- (PSDWatchSyncStateObserver)init;
- (id)_watchSyncClientStateFromSyncSession:(id)a3;
- (id)_watchSyncStateFromSyncSession:(id)a3;
- (unint64_t)_watchSyncProgressStateFromSyncSession:(id)a3;
- (void)_updateStateWithSyncSession:(id)a3;
- (void)_updateWithSyncState:(id)a3 andSyncClientState:(id)a4;
- (void)dealloc;
- (void)scheduler:(id)a3 didUpdateSyncSessionWithUpdate:(id)a4;
@end

@implementation PSDWatchSyncStateObserver

- (PSDWatchSyncStateObserver)init
{
  v12.receiver = self;
  v12.super_class = PSDWatchSyncStateObserver;
  v2 = [(PSDWatchSyncStateObserver *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.pairedsync.watchsyncstate", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.pairedsync"];
    domainAccessor = v2->_domainAccessor;
    v2->_domainAccessor = v6;

    v8 = objc_alloc_init(NPSManager);
    preferencesManager = v2->_preferencesManager;
    v2->_preferencesManager = v8;

    v10 = +[PSDScheduler sharedScheduler];
    [v10 addSchedulerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[PSDScheduler sharedScheduler];
  [v3 removeSchedulerObserver:self];

  v4.receiver = self;
  v4.super_class = PSDWatchSyncStateObserver;
  [(PSDWatchSyncStateObserver *)&v4 dealloc];
}

+ (id)pairdSyncStateDomainKey
{
  if (qword_1000380B8 != -1)
  {
    sub_10001B92C();
  }

  v3 = qword_1000380B0;

  return v3;
}

- (void)_updateWithSyncState:(id)a3 andSyncClientState:(id)a4
{
  v15 = a3;
  v7 = a4;
  if (([v15 isEqual:self->_syncState] & 1) == 0 && (v15 || self->_syncState))
  {
    objc_storeStrong(&self->_syncState, a3);
    v9 = [(PSYWatchSyncState *)self->_syncState plistRepresentation];
    [(NPSDomainAccessor *)self->_domainAccessor setObject:v9 forKey:@"PSYWatchSyncState"];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (([v7 isEqual:self->_syncClientState] & 1) == 0 && (v7 || self->_syncClientState))
  {
    objc_storeStrong(&self->_syncClientState, a4);
    v10 = [(PSYWatchSyncClientState *)self->_syncClientState plistRepresentation];
    [(NPSDomainAccessor *)self->_domainAccessor setObject:v10 forKey:@"PSYWatchSyncClientState"];

    goto LABEL_12;
  }

  if (v8)
  {
LABEL_12:
    v11 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
    preferencesManager = self->_preferencesManager;
    v13 = [(NPSDomainAccessor *)self->_domainAccessor domain];
    v14 = [objc_opt_class() pairdSyncStateDomainKey];
    [(NPSManager *)preferencesManager synchronizeNanoDomain:v13 keys:v14];
  }
}

- (unint64_t)_watchSyncProgressStateFromSyncSession:(id)a3
{
  v3 = [a3 syncSessionState];
  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (id)_watchSyncStateFromSyncSession:(id)a3
{
  v4 = a3;
  if ([v4 syncSessionType] && objc_msgSend(v4, "syncSessionType") != 2)
  {
    v12 = [[PSYWatchSyncState alloc] initWithActivityLabel:0 globalProgress:100 syncProgressState:3];
  }

  else
  {
    v5 = [v4 firstIncompleteActivity];
    v6 = [v5 activityInfo];
    v7 = [v6 label];

    v8 = [(PSDWatchSyncStateObserver *)self _watchSyncProgressStateFromSyncSession:v4];
    [v4 sessionProgress];
    v10 = vcvtad_u64_f64(v9 * 100.0);
    if (v8 == 3)
    {
      v11 = 100;
    }

    else
    {
      v11 = v10;
    }

    v12 = [[PSYWatchSyncState alloc] initWithActivityLabel:v7 globalProgress:v11 syncProgressState:v8];
  }

  return v12;
}

- (id)_watchSyncClientStateFromSyncSession:(id)a3
{
  v4 = a3;
  v5 = [(PSDWatchSyncStateObserver *)self _watchSyncProgressStateFromSyncSession:v4];
  v6 = [(PSDWatchSyncStateObserver *)self _watchSyncSessionTypeFromSyncSession:v4];
  v7 = [v4 syncSessionType];
  if (v5 == 2)
  {
    v30 = v7;
    v31 = v6;
    v8 = [v4 runningActivities];
    v9 = objc_alloc_init(NSMutableArray);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = [v15 activityInfo];
          v17 = [v16 label];

          if (v17)
          {
            v18 = [v15 activityInfo];
            v19 = [v18 label];
            [v9 addObject:v19];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v12);
    }

    v20 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = [v4 completedActivities];
    v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v32 + 1) + 8 * j) activityInfo];
          v27 = [v26 label];
          [v20 addObject:v27];
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v23);
    }

    v28 = [[PSYWatchSyncClientState alloc] initWithSyncSessionState:2 syncSessionType:v31 migrationSync:v30 == 2 activities:v9 completedActivities:v20];
  }

  else
  {
    v28 = [[PSYWatchSyncClientState alloc] initWithSyncSessionState:v5 syncSessionType:v6 migrationSync:v7 == 2 activities:0 completedActivities:0];
  }

  return v28;
}

- (void)_updateStateWithSyncSession:(id)a3
{
  v4 = a3;
  v6 = [(PSDWatchSyncStateObserver *)self _watchSyncStateFromSyncSession:v4];
  v5 = [(PSDWatchSyncStateObserver *)self _watchSyncClientStateFromSyncSession:v4];

  [(PSDWatchSyncStateObserver *)self _updateWithSyncState:v6 andSyncClientState:v5];
}

- (void)scheduler:(id)a3 didUpdateSyncSessionWithUpdate:(id)a4
{
  v5 = [a4 updatedSession];
  [(PSDWatchSyncStateObserver *)self _updateStateWithSyncSession:v5];
}

@end