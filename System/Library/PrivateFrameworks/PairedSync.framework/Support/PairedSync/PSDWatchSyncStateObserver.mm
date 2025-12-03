@interface PSDWatchSyncStateObserver
+ (id)pairdSyncStateDomainKey;
- (PSDWatchSyncStateObserver)init;
- (id)_watchSyncClientStateFromSyncSession:(id)session;
- (id)_watchSyncStateFromSyncSession:(id)session;
- (unint64_t)_watchSyncProgressStateFromSyncSession:(id)session;
- (void)_updateStateWithSyncSession:(id)session;
- (void)_updateWithSyncState:(id)state andSyncClientState:(id)clientState;
- (void)dealloc;
- (void)scheduler:(id)scheduler didUpdateSyncSessionWithUpdate:(id)update;
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

- (void)_updateWithSyncState:(id)state andSyncClientState:(id)clientState
{
  stateCopy = state;
  clientStateCopy = clientState;
  if (([stateCopy isEqual:self->_syncState] & 1) == 0 && (stateCopy || self->_syncState))
  {
    objc_storeStrong(&self->_syncState, state);
    plistRepresentation = [(PSYWatchSyncState *)self->_syncState plistRepresentation];
    [(NPSDomainAccessor *)self->_domainAccessor setObject:plistRepresentation forKey:@"PSYWatchSyncState"];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (([clientStateCopy isEqual:self->_syncClientState] & 1) == 0 && (clientStateCopy || self->_syncClientState))
  {
    objc_storeStrong(&self->_syncClientState, clientState);
    plistRepresentation2 = [(PSYWatchSyncClientState *)self->_syncClientState plistRepresentation];
    [(NPSDomainAccessor *)self->_domainAccessor setObject:plistRepresentation2 forKey:@"PSYWatchSyncClientState"];

    goto LABEL_12;
  }

  if (v8)
  {
LABEL_12:
    synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
    preferencesManager = self->_preferencesManager;
    domain = [(NPSDomainAccessor *)self->_domainAccessor domain];
    pairdSyncStateDomainKey = [objc_opt_class() pairdSyncStateDomainKey];
    [(NPSManager *)preferencesManager synchronizeNanoDomain:domain keys:pairdSyncStateDomainKey];
  }
}

- (unint64_t)_watchSyncProgressStateFromSyncSession:(id)session
{
  syncSessionState = [session syncSessionState];
  if (syncSessionState < 3)
  {
    return syncSessionState + 1;
  }

  else
  {
    return 0;
  }
}

- (id)_watchSyncStateFromSyncSession:(id)session
{
  sessionCopy = session;
  if ([sessionCopy syncSessionType] && objc_msgSend(sessionCopy, "syncSessionType") != 2)
  {
    v12 = [[PSYWatchSyncState alloc] initWithActivityLabel:0 globalProgress:100 syncProgressState:3];
  }

  else
  {
    firstIncompleteActivity = [sessionCopy firstIncompleteActivity];
    activityInfo = [firstIncompleteActivity activityInfo];
    label = [activityInfo label];

    v8 = [(PSDWatchSyncStateObserver *)self _watchSyncProgressStateFromSyncSession:sessionCopy];
    [sessionCopy sessionProgress];
    v10 = vcvtad_u64_f64(v9 * 100.0);
    if (v8 == 3)
    {
      v11 = 100;
    }

    else
    {
      v11 = v10;
    }

    v12 = [[PSYWatchSyncState alloc] initWithActivityLabel:label globalProgress:v11 syncProgressState:v8];
  }

  return v12;
}

- (id)_watchSyncClientStateFromSyncSession:(id)session
{
  sessionCopy = session;
  v5 = [(PSDWatchSyncStateObserver *)self _watchSyncProgressStateFromSyncSession:sessionCopy];
  v6 = [(PSDWatchSyncStateObserver *)self _watchSyncSessionTypeFromSyncSession:sessionCopy];
  syncSessionType = [sessionCopy syncSessionType];
  if (v5 == 2)
  {
    v30 = syncSessionType;
    v31 = v6;
    runningActivities = [sessionCopy runningActivities];
    v9 = objc_alloc_init(NSMutableArray);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = runningActivities;
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
          activityInfo = [v15 activityInfo];
          label = [activityInfo label];

          if (label)
          {
            activityInfo2 = [v15 activityInfo];
            label2 = [activityInfo2 label];
            [v9 addObject:label2];
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
    completedActivities = [sessionCopy completedActivities];
    v22 = [completedActivities countByEnumeratingWithState:&v32 objects:v40 count:16];
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
            objc_enumerationMutation(completedActivities);
          }

          activityInfo3 = [*(*(&v32 + 1) + 8 * j) activityInfo];
          label3 = [activityInfo3 label];
          [v20 addObject:label3];
        }

        v23 = [completedActivities countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v23);
    }

    v28 = [[PSYWatchSyncClientState alloc] initWithSyncSessionState:2 syncSessionType:v31 migrationSync:v30 == 2 activities:v9 completedActivities:v20];
  }

  else
  {
    v28 = [[PSYWatchSyncClientState alloc] initWithSyncSessionState:v5 syncSessionType:v6 migrationSync:syncSessionType == 2 activities:0 completedActivities:0];
  }

  return v28;
}

- (void)_updateStateWithSyncSession:(id)session
{
  sessionCopy = session;
  v6 = [(PSDWatchSyncStateObserver *)self _watchSyncStateFromSyncSession:sessionCopy];
  v5 = [(PSDWatchSyncStateObserver *)self _watchSyncClientStateFromSyncSession:sessionCopy];

  [(PSDWatchSyncStateObserver *)self _updateWithSyncState:v6 andSyncClientState:v5];
}

- (void)scheduler:(id)scheduler didUpdateSyncSessionWithUpdate:(id)update
{
  updatedSession = [update updatedSession];
  [(PSDWatchSyncStateObserver *)self _updateStateWithSyncSession:updatedSession];
}

@end