@interface CPLEngineLibrarySupervisor
- (BOOL)schedulerShouldStartSyncSessionMovingToForeground:(id)a3 currentSession:(id)a4;
- (CPLEngineLibrary)engineLibrary;
- (CPLEngineLibrarySupervisor)initWithEngineLibrary:(id)a3 queue:(id)a4;
- (NSString)status;
- (int64_t)_supervisorExitStateForScopeChange:(id)a3;
- (void)_checkExitSupervisor;
- (void)_checkExitSupervisorInTransaction:(id)a3;
- (void)_launchForcedExitForSupervisor:(id)a3;
- (void)_scheduleOrLaunchIfNecessary;
- (void)_scheduleOrLaunchIfNecessaryInQueue;
- (void)_sendExitFeedbackForSupervisor:(id)a3 cloudKitScope:(id)a4 exitState:(int64_t)a5;
- (void)_storeSupervisorInfoInTransaction:(id)a3;
- (void)_unscheduleInQueue;
- (void)engineDidOpen:(id)a3;
- (void)engineWillClose:(id)a3;
- (void)pause;
- (void)ping;
- (void)resume;
- (void)scopeStorage:(id)a3 didUpdateScopeChange:(id)a4 forScope:(id)a5;
- (void)transportNotedServerHasChanges:(id)a3;
@end

@implementation CPLEngineLibrarySupervisor

- (CPLEngineLibrarySupervisor)initWithEngineLibrary:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CPLEngineLibrarySupervisor;
  v8 = [(CPLEngineLibrarySupervisor *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v10 = objc_storeWeak(&v8->_engineLibrary, v6);
    v11 = [v6 store];
    store = v9->_store;
    v9->_store = v11;

    objc_storeStrong(&v9->_queue, a4);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (void)_unscheduleInQueue
{
  dispatch_assert_queue_V2(self->_queue);
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    dispatch_source_cancel(retryTimer);
    v4 = self->_retryTimer;
    self->_retryTimer = 0;

    nextRetryDate = self->_nextRetryDate;
    self->_nextRetryDate = 0;
  }
}

- (void)_scheduleOrLaunchIfNecessaryInQueue
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_closed)
  {
    if (self->_forceProcessingStagedScopesTask)
    {
      return;
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_1000043A0;
    v25 = sub_1000052B4;
    v26 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v17 = sub_10002C4B8;
    v18 = &unk_1002729E8;
    v19 = self;
    v20 = &v21;
    v3 = v16;
    os_unfair_lock_lock(&self->_lock);
    v17(v3);
    os_unfair_lock_unlock(&self->_lock);

    v4 = v22[5];
    if (v4)
    {
      nextRetryDate = self->_nextRetryDate;
      if (!nextRetryDate)
      {
LABEL_10:
        objc_storeStrong(&self->_nextRetryDate, v4);
        [v22[5] timeIntervalSinceNow];
        if (v6 < 0.100000001)
        {
          v6 = 0.100000001;
        }

        v7 = v6 * 1000000000.0;
        v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10002C55C;
        v13[3] = &unk_1002720E0;
        v9 = v8;
        v14 = v9;
        v15 = self;
        dispatch_source_set_event_handler(v9, v13);
        v10 = dispatch_walltime(0, v7);
        dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
        retryTimer = self->_retryTimer;
        self->_retryTimer = v9;
        v12 = v9;

        dispatch_resume(self->_retryTimer);
        goto LABEL_15;
      }

      if ([(NSDate *)nextRetryDate compare:?]== 1)
      {
        [(CPLEngineLibrarySupervisor *)self _unscheduleInQueue];
        v4 = v22[5];
        if (v4)
        {
          goto LABEL_10;
        }
      }

      else if (v22[5])
      {
LABEL_15:
        _Block_object_dispose(&v21, 8);

        return;
      }
    }

    [(CPLEngineLibrarySupervisor *)self _unscheduleInQueue];
    goto LABEL_15;
  }

  [(CPLEngineLibrarySupervisor *)self _unscheduleInQueue];
}

- (void)_scheduleOrLaunchIfNecessary
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002C664;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000290C;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)engineDidOpen:(id)a3
{
  store = self->_store;
  v5[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002C720;
  v6[3] = &unk_100273588;
  v6[4] = self;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002C8E8;
  v5[3] = &unk_100273588;
  v4 = [(CPLEngineStore *)store performWriteTransactionWithBlock:v6 completionHandler:v5];
}

- (void)engineWillClose:(id)a3
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C9E0;
  v7[3] = &unk_100271F40;
  v7[4] = self;
  v4 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000290C;
  block[3] = &unk_100271E98;
  v9 = v4;
  v5 = queue;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

- (BOOL)schedulerShouldStartSyncSessionMovingToForeground:(id)a3 currentSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && [v7 activityState] != 1)
  {
    v10 = 1;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v13 = sub_10002CB40;
    v14 = &unk_1002729E8;
    v15 = self;
    v16 = &v17;
    v9 = v12;
    os_unfair_lock_lock(&self->_lock);
    v13(v9);
    os_unfair_lock_unlock(&self->_lock);

    v10 = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
  }

  return v10 & 1;
}

- (int64_t)_supervisorExitStateForScopeChange:(id)a3
{
  v3 = a3;
  if (![v3 isActivated])
  {
    goto LABEL_8;
  }

  v4 = [v3 exitState];
  if (v4 == 2)
  {
    v5 = 4;
    goto LABEL_9;
  }

  if (v4 != 1)
  {
    if (!v4)
    {
      if ([v3 areSomeUsersExiting])
      {
        v5 = 3;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_9;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if ([v3 scopeType] == 4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

LABEL_9:

  return v5;
}

- (void)_checkExitSupervisorInTransaction:(id)a3
{
  v4 = a3;
  v5 = [(CPLEngineStore *)self->_store scopes];
  v6 = [(CPLEngineStore *)self->_store sharingScopeIdentifier];
  if (v6)
  {
    v7 = [v5 scopeWithIdentifier:v6];
    if (v7)
    {
      v8 = [v5 scopeChangeForScope:v7];
      if (v8)
      {
        v9 = [(CPLEngineLibrarySupervisor *)self _supervisorExitStateForScopeChange:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_1000043A0;
  v26[4] = sub_1000052B4;
  v27 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v18 = sub_10002CEE4;
  v19 = &unk_1002735B0;
  v20 = self;
  v10 = v6;
  v25 = v9;
  v21 = v10;
  v23 = &v28;
  v11 = v7;
  v22 = v11;
  v24 = v26;
  v12 = v17;
  os_unfair_lock_lock(&self->_lock);
  v18(v12);
  os_unfair_lock_unlock(&self->_lock);

  if (*(v29 + 24) == 1)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002D058;
    v13[3] = &unk_1002735D8;
    v14 = v5;
    v16 = v26;
    v15 = v11;
    [v4 do:v13];
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);
}

- (void)_checkExitSupervisor
{
  store = self->_store;
  v4[4] = self;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002D128;
  v5[3] = &unk_100273588;
  v5[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D134;
  v4[3] = &unk_100273588;
  v3 = [(CPLEngineStore *)store performWriteTransactionWithBlock:v5 completionHandler:v4];
}

- (void)_storeSupervisorInfoInTransaction:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000043A0;
  v24 = sub_1000052B4;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_1000043A0;
  v18[4] = sub_1000052B4;
  v19 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = sub_10002D38C;
  v14 = &unk_100273600;
  v15 = self;
  v16 = &v20;
  v17 = v18;
  v5 = v12;
  os_unfair_lock_lock(&self->_lock);
  v13(v5);
  os_unfair_lock_unlock(&self->_lock);

  if (v21[5])
  {
    v6 = [(CPLEngineStore *)self->_store scopes];
    v7 = [v6 scopeWithIdentifier:v21[5]];
    if (v7)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10002D400;
      v8[3] = &unk_1002735D8;
      v9 = v6;
      v11 = v18;
      v10 = v7;
      [v4 do:v8];
    }
  }

  _Block_object_dispose(v18, 8);

  _Block_object_dispose(&v20, 8);
}

- (void)scopeStorage:(id)a3 didUpdateScopeChange:(id)a4 forScope:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 scopeIdentifier];
  v12 = [(CPLEngineStore *)self->_store sharingScopeIdentifier];
  v13 = v12;
  if (v11 && v12)
  {
    v14 = [v11 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (v11 | v13)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v21 = sub_10002D67C;
  v22 = &unk_100273628;
  v23 = self;
  v25 = &v27;
  v26 = [(CPLEngineLibrarySupervisor *)self _supervisorExitStateForScopeChange:v9];
  v24 = v9;
  v15 = v20;
  os_unfair_lock_lock(&self->_lock);
  v21(v15);
  os_unfair_lock_unlock(&self->_lock);

  if (*(v28 + 24) == 1)
  {
    store = self->_store;
    v18[4] = self;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002D704;
    v19[3] = &unk_100273588;
    v19[4] = self;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002D764;
    v18[3] = &unk_100273588;
    v17 = [(CPLEngineStore *)store performWriteTransactionWithBlock:v19 completionHandler:v18];
  }

  _Block_object_dispose(&v27, 8);
LABEL_9:
}

- (void)transportNotedServerHasChanges:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v11 = sub_10002D928;
  v12 = &unk_1002729E8;
  v13 = self;
  v14 = &v15;
  v5 = v10;
  os_unfair_lock_lock(&self->_lock);
  v11(v5);
  os_unfair_lock_unlock(&self->_lock);

  if (*(v16 + 24) == 1)
  {
    store = self->_store;
    v8[4] = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10002D9AC;
    v9[3] = &unk_100273588;
    v9[4] = self;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002DA0C;
    v8[3] = &unk_100273588;
    v7 = [(CPLEngineStore *)store performWriteTransactionWithBlock:v9 completionHandler:v8];
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_sendExitFeedbackForSupervisor:(id)a3 cloudKitScope:(id)a4 exitState:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002DB5C;
  v16[3] = &unk_100271D68;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = a5;
  v11 = v16;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000290C;
  block[3] = &unk_100271E98;
  v21 = v11;
  v12 = queue;
  v13 = v9;
  v14 = v8;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

- (void)_launchForcedExitForSupervisor:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002E1D0;
  v10[3] = &unk_1002720E0;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000290C;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)pause
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002E8CC;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000290C;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)resume
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002EA1C;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000290C;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)ping
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_10002EB14;
  v6 = &unk_100271F40;
  v7 = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_lock);
  v5(v3);
  os_unfair_lock_unlock(&self->_lock);

  [(CPLEngineLibrarySupervisor *)self _scheduleOrLaunchIfNecessary];
}

- (NSString)status
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000043A0;
  v15 = sub_1000052B4;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_10002EC68;
  v8 = &unk_100272028;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (CPLEngineLibrary)engineLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);

  return WeakRetained;
}

@end