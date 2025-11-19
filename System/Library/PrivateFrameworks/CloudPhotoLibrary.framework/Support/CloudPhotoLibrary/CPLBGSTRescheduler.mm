@interface CPLBGSTRescheduler
- (BGNonRepeatingSystemTaskRequest)request;
- (BOOL)shouldConsiderRequestingMoreTime;
- (BOOL)shouldDefer;
- (CPLBGSTActivity)currentActivity;
- (CPLBGSTRescheduler)initWithRequest:(id)a3 reschedulerManager:(id)a4;
- (NSArray)requests;
- (NSError)acquireError;
- (NSString)description;
- (NSString)goodConditionsDescription;
- (NSString)taskIdentifier;
- (double)estimatedRemainingTime;
- (double)estimatedRunningTime;
- (id)acquireBackgroundActivityWithCompletionHandler:(id)a3;
- (int64_t)activityState;
- (void)_dropTaskRequest;
- (void)_registerFromPersistentSyncSessionWithLaunchBlock:(id)a3;
- (void)_scheduleBlockedTimeout;
- (void)_sessionIsDoneOrWontHappen;
- (void)_sessionTimerFired;
- (void)_setCurrentActivity:(id)a3;
- (void)_setRequest:(id)a3;
- (void)_submitTaskRequest;
- (void)_unscheduleBlockedTimeout;
- (void)_updateAcquireError:(id)a3;
- (void)_updateRequestIfNecessary;
- (void)_updateTaskIdentifierWithRequest:(id)a3;
- (void)acquiredTask:(id)a3;
- (void)activityHasExpired:(id)a3 reason:(unint64_t)a4;
- (void)deferWithBlock:(id)a3;
- (void)dropBackgroundActivityRequest:(id)a3;
- (void)engineIsClosing;
- (void)failedToAcquireTaskWithError:(id)a3;
- (void)getStartDate:(id *)a3 acquireDate:(id *)a4 expireDate:(id *)a5;
- (void)sessionIsDone;
- (void)sessionWontHappen;
- (void)updateSyncSessionPrediction:(id)a3;
@end

@implementation CPLBGSTRescheduler

- (CPLBGSTRescheduler)initWithRequest:(id)a3 reschedulerManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CPLBGSTRescheduler;
  v9 = [(CPLBGSTRescheduler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_reschedulerManager, a4);
    v10->_lock._os_unfair_lock_opaque = 0;
    v11 = [v8 queue];
    queue = v10->_queue;
    v10->_queue = v11;

    [(CPLBGSTRescheduler *)v10 _updateTaskIdentifierWithRequest:v10->_request];
  }

  return v10;
}

- (BGNonRepeatingSystemTaskRequest)request
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004380;
  v15 = sub_1000052A4;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100025084;
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

- (void)_setRequest:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_10002517C;
  v8 = &unk_1002720E0;
  v9 = self;
  v4 = a3;
  v10 = v4;
  v5 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v5);
  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)taskIdentifier
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004380;
  v15 = sub_1000052A4;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_1000252D0;
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

- (double)estimatedRunningTime
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_1000253F0;
  v8 = &unk_100272028;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)_updateTaskIdentifierWithRequest:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_1000254E8;
  v8 = &unk_1002720E0;
  v9 = self;
  v4 = a3;
  v10 = v4;
  v5 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v5);
  os_unfair_lock_unlock(&self->_lock);
}

- (NSError)acquireError
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004380;
  v15 = sub_1000052A4;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_1000256F0;
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

- (void)_updateAcquireError:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_1000257E8;
  v8 = &unk_1002720E0;
  v9 = self;
  v4 = a3;
  v10 = v4;
  v5 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v5);
  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(CPLBGSTRescheduler *)self taskIdentifier];
  v6 = [v3 initWithFormat:@"[%@ %p for %@]", v4, self, v5];

  return v6;
}

- (void)getStartDate:(id *)a3 acquireDate:(id *)a4 expireDate:(id *)a5
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100004380;
  v33 = sub_1000052A4;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100004380;
  v27 = sub_1000052A4;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100004380;
  v21 = sub_1000052A4;
  v22 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v11 = sub_100025AAC;
  v12 = &unk_100273310;
  v13 = self;
  v14 = &v29;
  v15 = &v23;
  v16 = &v17;
  v9 = v10;
  os_unfair_lock_lock(&self->_lock);
  v11(v9);
  os_unfair_lock_unlock(&self->_lock);

  *a3 = v30[5];
  *a4 = v24[5];
  *a5 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
}

- (NSArray)requests
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100004380;
  v10 = sub_1000052A4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100025C0C;
  v5[3] = &unk_100272028;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_submitTaskRequest
{
  if (!self->_submitted)
  {
    sub_100190DE0(self, &self->_submitted);
  }
}

- (void)_dropTaskRequest
{
  if (self->_submitted)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = sub_100025CA0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = self;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unregistering %@", &v8, 0xCu);
      }
    }

    if ([(NSMutableDictionary *)self->_requests count])
    {
      sub_100190ED8(self, a2);
    }

    v5 = [(CPLBGSTRescheduler *)self currentActivity];

    if (v5)
    {
      sub_100190FC8(self, a2);
    }

    reschedulerManager = self->_reschedulerManager;
    v7 = [(CPLBGSTRescheduler *)self request];
    [(CPLBGSTReschedulerManager *)reschedulerManager dropTaskRequest:v7 forRescheduler:self];

    self->_submitted = 0;
    [(CPLBGSTRescheduler *)self _unscheduleBlockedTimeout];
  }
}

- (void)_setCurrentActivity:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100025F00;
  v8 = &unk_1002720E0;
  v4 = a3;
  v9 = v4;
  v10 = self;
  v5 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v5);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)acquiredTask:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(CPLBGSTRescheduler *)self _unscheduleBlockedTimeout];
  reschedulerManager = self->_reschedulerManager;
  v7 = [CPLSyncSessionBlockedState alloc];
  v8 = [(CPLBGSTRescheduler *)self request];
  v9 = [v7 initWithRescheduler:self blocked:0 syncHasBeenRequested:0 runtimeCharacteristics:v8];
  [(CPLBGSTReschedulerManager *)reschedulerManager noteBlockedStateHasChanged:v9];

  startDate = self->_startDate;
  v11 = [(CPLBGSTReschedulerManager *)self->_reschedulerManager now];
  [(NSDate *)startDate timeIntervalSinceDate:v11];
  v13 = -v12;

  if (self->_sessionIsDone)
  {
    sub_1001911A0(v5, self, v13);
    goto LABEL_11;
  }

  v14 = [(CPLBGSTRescheduler *)self currentActivity];

  if (v14)
  {
    sub_1001910D8(a2, self);
  }

  v15 = [CPLBGSTActivity alloc];
  v16 = [(CPLBGSTRescheduler *)self request];
  v17 = [(CPLBGSTActivity *)v15 initWithTask:v5 request:v16 rescheduler:self];

  [(CPLBGSTRescheduler *)self _setCurrentActivity:v17];
  if ([(NSMutableDictionary *)self->_requests count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = sub_100025CA0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(NSMutableDictionary *)self->_requests count];
        v26 = 138413058;
        v27 = v5;
        v28 = 2112;
        v29 = self;
        v30 = 2048;
        v31 = *&v19;
        v32 = 2048;
        v33 = v13;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Acquired %@ for %@ - %lu interested clients (took %.3fs)", &v26, 0x2Au);
      }
    }

    [(NSMutableDictionary *)self->_requests enumerateKeysAndObjectsUsingBlock:&stru_100273350];
    p_super = &self->_requests->super.super;
    self->_requests = 0;
    goto LABEL_9;
  }

  deferBlock = self->_deferBlock;
  if (!deferBlock)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_10;
    }

    p_super = sub_100025CA0();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v26 = 138412546;
    v27 = v5;
    v28 = 2112;
    v29 = self;
    v22 = "Acquired %@ for %@. Waiting for clients to be interested";
    v23 = p_super;
    v24 = 22;
    goto LABEL_20;
  }

  if (!self->_isClosing)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v25 = sub_100025CA0();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412802;
        v27 = v5;
        v28 = 2112;
        v29 = self;
        v30 = 2048;
        v31 = v13;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Re-acquired Background %@ for %@ - resuming deferred activity (took %.3fs)", &v26, 0x20u);
      }

      deferBlock = self->_deferBlock;
    }

    deferBlock[2]();
    p_super = self->_deferBlock;
    self->_deferBlock = 0;
    goto LABEL_9;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_10;
  }

  p_super = sub_100025CA0();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412802;
    v27 = v5;
    v28 = 2112;
    v29 = self;
    v30 = 2048;
    v31 = v13;
    v22 = "Acquired Background %@ for %@ but we are closing (took %.3fs)";
    v23 = p_super;
    v24 = 32;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, &v26, v24);
  }

LABEL_9:

LABEL_10:
LABEL_11:
}

- (void)activityHasExpired:(id)a3 reason:(unint64_t)a4
{
  v7 = a3;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100026490;
  v13[3] = &unk_1002733A0;
  v14 = v7;
  v15 = self;
  v16 = a2;
  v17 = a4;
  v9 = v13;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000028C0;
  block[3] = &unk_100271E98;
  v19 = v9;
  v10 = queue;
  v11 = v7;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v12);
}

- (void)_updateRequestIfNecessary
{
  if (self->_submitted)
  {
    v3 = [(CPLBGSTRescheduler *)self acquireError];
    if (!v3)
    {
      v3 = [(CPLBGSTRescheduler *)self currentActivity];
      if (!v3)
      {
        if (!self->_updatedPrediction)
        {
          return;
        }

        v6 = [(CPLBGSTRescheduler *)self request];
        v4 = [(CPLBGSTReschedulerManager *)self->_reschedulerManager updateTaskRequest:v6 updatedPrediction:self->_updatedPrediction];
        updatedPrediction = self->_updatedPrediction;
        self->_updatedPrediction = 0;

        if (v4 != v6)
        {
          [(CPLBGSTRescheduler *)self _setRequest:v4];
          [(CPLBGSTRescheduler *)self _updateTaskIdentifierWithRequest:v4];
        }

        v3 = v6;
      }
    }
  }
}

- (void)_registerFromPersistentSyncSessionWithLaunchBlock:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = objc_retainBlock(v5);

  deferBlock = self->_deferBlock;
  self->_deferBlock = v6;

  v8 = [(CPLBGSTReschedulerManager *)self->_reschedulerManager now];
  startDate = self->_startDate;
  self->_startDate = v8;

  self->_submitted = 1;

  [(CPLBGSTRescheduler *)self _scheduleBlockedTimeout];
}

- (BOOL)shouldDefer
{
  v2 = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_100026840;
  v7 = &unk_100272028;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&v2->_lock);
  v6(v3);
  os_unfair_lock_unlock(&v2->_lock);

  LOBYTE(v2) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v2;
}

- (int64_t)activityState
{
  v2 = [(CPLBGSTRescheduler *)self currentActivity];
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)shouldConsiderRequestingMoreTime
{
  v2 = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_1000269B8;
  v7 = &unk_1002729E8;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&v2->_lock);
  v6(v3);
  os_unfair_lock_unlock(&v2->_lock);

  LOBYTE(v2) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v2;
}

- (double)estimatedRemainingTime
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x40AC200000000000;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100026B34;
  v8 = &unk_1002729E8;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)deferWithBlock:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100026CDC;
  v11[3] = &unk_100272AB0;
  v12 = v5;
  v13 = a2;
  v11[4] = self;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000028C0;
  block[3] = &unk_100271E98;
  v15 = v7;
  v8 = queue;
  v9 = v5;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)_sessionIsDoneOrWontHappen
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_sessionIsDone)
  {
    if ([(NSMutableDictionary *)self->_requests count])
    {
      sub_1001916D4(&self->_requests, a2, self);
    }

    self->_sessionIsDone = 1;
    deferBlock = self->_deferBlock;
    self->_deferBlock = 0;

    v6 = [(CPLBGSTRescheduler *)self currentActivity];
    if (v6)
    {
      v5 = [v6 task];
      [v5 setTaskCompleted];

      [(CPLBGSTRescheduler *)self _setCurrentActivity:0];
    }

    [(CPLBGSTRescheduler *)self _dropTaskRequest];
  }
}

- (void)sessionIsDone
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100027338;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000028C0;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)sessionWontHappen
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100027430;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000028C0;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)engineIsClosing
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001908D8;
  v6[3] = &unk_100271F68;
  v6[4] = self;
  v6[5] = a2;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000028C0;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (NSString)goodConditionsDescription
{
  v3 = [NSString alloc];
  v4 = [(CPLBGSTRescheduler *)self taskIdentifier];
  v5 = [v3 initWithFormat:@"Acquiring a Background System Task %@", v4];

  return v5;
}

- (void)updateSyncSessionPrediction:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100190A48;
  v10[3] = &unk_1002720E0;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000028C0;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (CPLBGSTActivity)currentActivity
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100004380;
  v15 = sub_1000052A4;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_100027890;
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

- (id)acquireBackgroundActivityWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID UUID];
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000279F4;
  v15[3] = &unk_100272C08;
  v15[4] = self;
  v17 = v4;
  v7 = v5;
  v16 = v7;
  v8 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000028C0;
  block[3] = &unk_100271E98;
  v19 = v8;
  v9 = queue;
  v10 = v4;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);

  v12 = v16;
  v13 = v7;

  return v7;
}

- (void)dropBackgroundActivityRequest:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100027BF0;
  v10[3] = &unk_1002720E0;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000028C0;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)_scheduleBlockedTimeout
{
  reschedulerManager = self->_reschedulerManager;
  v4 = [CPLSyncSessionBlockedState alloc];
  v5 = [(CPLBGSTRescheduler *)self request];
  v6 = [v4 initWithRescheduler:self blocked:0 syncHasBeenRequested:1 runtimeCharacteristics:v5];
  [(CPLBGSTReschedulerManager *)reschedulerManager noteBlockedStateHasChanged:v6];

  [(CPLBGSTRescheduler *)self _unscheduleBlockedTimeout];
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  syncTimer = self->_syncTimer;
  self->_syncTimer = v7;

  v9 = self->_syncTimer;
  v10 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v9, v10, 0x2540BE400uLL, 0x3B9ACA00uLL);
  v11 = self->_syncTimer;
  v12 = self->_syncTimer;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100027DA4;
  v14[3] = &unk_1002720E0;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  dispatch_source_set_event_handler(v12, v14);
  dispatch_resume(self->_syncTimer);
}

- (void)_unscheduleBlockedTimeout
{
  syncTimer = self->_syncTimer;
  if (syncTimer)
  {
    dispatch_source_cancel(syncTimer);
    v4 = self->_syncTimer;
    self->_syncTimer = 0;
  }
}

- (void)_sessionTimerFired
{
  reschedulerManager = self->_reschedulerManager;
  v4 = [CPLSyncSessionBlockedState alloc];
  v5 = [(CPLBGSTRescheduler *)self request];
  v6 = [v4 initWithRescheduler:self blocked:1 syncHasBeenRequested:0 runtimeCharacteristics:v5];
  [(CPLBGSTReschedulerManager *)reschedulerManager noteBlockedStateHasChanged:v6];

  [(CPLBGSTRescheduler *)self _unscheduleBlockedTimeout];
}

- (void)failedToAcquireTaskWithError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(CPLBGSTRescheduler *)self _updateAcquireError:v4];
  [(CPLBGSTRescheduler *)self _unscheduleBlockedTimeout];
  p_super = &self->_startDate->super;
  v6 = [(CPLBGSTReschedulerManager *)self->_reschedulerManager now];
  [p_super timeIntervalSinceDate:v6];
  v8 = -v7;

  if ([(NSMutableDictionary *)self->_requests count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_100025CA0();
      if (sub_100003424(v9))
      {
        [(NSMutableDictionary *)self->_requests count];
        sub_10002B084();
        v34 = v10;
        v35 = v11;
        v36 = v8;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Failed to acquire Background task for %@ - %lu interested clients (took %.3fs)", buf, 0x20u);
      }
    }

    requests = self->_requests;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100026350;
    v29[3] = &unk_100273378;
    v30 = v4;
    [(NSMutableDictionary *)requests enumerateKeysAndObjectsUsingBlock:v29];
    v13 = self->_requests;
    self->_requests = 0;

    p_super = v30;
    goto LABEL_7;
  }

  deferBlock = self->_deferBlock;
  if (!deferBlock)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_8;
    }

    v22 = sub_100025CA0();
    if (!sub_1000033C0(v22))
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    v32 = self;
    v33 = 2112;
    v34 = v4;
    sub_10002B098();
    v21 = 22;
    goto LABEL_17;
  }

  if (!self->_isClosing)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = sub_100025CA0();
      if (sub_1000033C0(v23))
      {
        sub_10002B084();
        sub_10002B0C0();
        sub_10002B098();
        _os_log_impl(v24, v25, v26, v27, v28, 0x20u);
      }

      deferBlock = self->_deferBlock;
    }

    deferBlock[2]();
    p_super = self->_deferBlock;
    self->_deferBlock = 0;
    goto LABEL_7;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_8;
  }

  v15 = sub_100025CA0();
  if (sub_1000033C0(v15))
  {
    sub_10002B084();
    sub_10002B0C0();
    sub_10002B098();
    v21 = 32;
LABEL_17:
    _os_log_impl(v16, v17, v18, v19, v20, v21);
  }

LABEL_7:

LABEL_8:
}

@end