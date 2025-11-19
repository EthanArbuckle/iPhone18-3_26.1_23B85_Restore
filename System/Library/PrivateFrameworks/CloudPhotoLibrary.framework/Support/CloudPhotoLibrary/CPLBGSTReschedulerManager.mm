@interface CPLBGSTReschedulerManager
+ (id)taskIdentifierForLibraryIdentifier:(id)a3;
- (BOOL)_shouldLikelyRequestImmediateRunForPrediction:(id)a3;
- (BOOL)isQuiet;
- (BOOL)isWaitingForAcquiredTaskWithIdentifier:(id)a3;
- (CPLBGSTReschedulerManager)initWithTaskIdentifier:(id)a3 involvedProcesses:(id)a4 relatedApplications:(id)a5 groupName:(id)a6;
- (CPLCloudKitReschedulerManagerDelegate)delegate;
- (NSDate)now;
- (NSString)description;
- (NSString)reschedulerDescription;
- (double)_expectedDurationFromPrediction:(id)a3 shouldRequestImmediateRun:(BOOL *)a4;
- (id)_persistedSyncSessionForScheduler:(id)a3 startSyncSessionBlock:(id)a4;
- (id)_requestFromUpdatedRequest:(id)a3 updatedPrediction:(id)a4;
- (id)_summaryForTaskRequest:(id)a3;
- (id)newCloudKitReschedulerForSession:(id)a3;
- (id)newTaskRequestForSession:(id)a3;
- (id)resubmitTaskRequestForRescheduler:(id)a3 updatedPrediction:(id)a4 afterTaskHasBeenDeferred:(id)a5;
- (id)taskStatusesWithNow:(id)a3;
- (id)updateTaskRequest:(id)a3 updatedPrediction:(id)a4;
- (void)_acquiredTask:(id)a3 error:(id)a4;
- (void)_deregisterTaskIdentifier:(id)a3;
- (void)_reallySubmitTaskRequest:(id)a3;
- (void)_registerWithTaskIdentifier:(id)a3;
- (void)activityHasExpired:(id)a3 reason:(unint64_t)a4 forRescheduler:(id)a5;
- (void)dropPersistedInitialSyncSession;
- (void)dropTaskRequest:(id)a3 forRescheduler:(id)a4;
- (void)findPersistedSyncSession:(id)a3 forScheduler:(id)a4 completionHandler:(id)a5;
- (void)noteBlockedStateHasChanged:(id)a3;
- (void)submitTaskRequestForRescheduler:(id)a3;
@end

@implementation CPLBGSTReschedulerManager

- (CPLBGSTReschedulerManager)initWithTaskIdentifier:(id)a3 involvedProcesses:(id)a4 relatedApplications:(id)a5 groupName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = CPLBGSTReschedulerManager;
  v14 = [(CPLBGSTReschedulerManager *)&v32 init];
  if (v14)
  {
    v15 = CPLCopyDefaultSerialQueueAttributes();
    v16 = dispatch_queue_create("com.apple.cpl.bgst.rescheduler", v15);
    queue = v14->_queue;
    v14->_queue = v16;

    v18 = +[BGSystemTaskScheduler sharedScheduler];
    scheduler = v14->_scheduler;
    v14->_scheduler = v18;

    v20 = [v10 copy];
    taskIdentifier = v14->_taskIdentifier;
    v14->_taskIdentifier = v20;

    v22 = [v11 copy];
    involvedProcesses = v14->_involvedProcesses;
    v14->_involvedProcesses = v22;

    v24 = [v12 copy];
    relatedApplications = v14->_relatedApplications;
    v14->_relatedApplications = v24;

    v26 = [v13 copy];
    groupName = v14->_groupName;
    v14->_groupName = v26;

    v28 = [[CPLBGSTActivityReport alloc] initWithTaskIdentifier:v14->_taskIdentifier];
    report = v14->_report;
    v14->_report = v28;

    v14->_minimumRuntimeLeeway = 30.0;
    *&v14->_minimumRuntime = xmmword_100243D70;
    +[BGSystemTaskRequest maximumRuntimeForImmediateRun];
    v14->_maximumRuntimeForImmediateRun = v30;
    v14->_maximumUploadSizeForImmediateRun = +[BGSystemTaskRequest maximumUploadSizeForImmediateRun];
    v14->_minimumRuntimeWithExtendedTime = 600.0;
    v14->_minimumRuntimeWithVeryLongExtendedTime = 3600.0;
  }

  return v14;
}

- (NSDate)now
{
  now = self->_now;
  if (now)
  {
    v3 = now;
  }

  else
  {
    v3 = +[NSDate date];
  }

  return v3;
}

- (BOOL)isWaitingForAcquiredTaskWithIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028230;
  block[3] = &unk_1002733F0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (BOOL)isQuiet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100028348;
  v5[3] = &unk_100272028;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)description
{
  v2 = [[NSString alloc] initWithFormat:@"[%@ for %@]", objc_opt_class(), self->_taskIdentifier];

  return v2;
}

- (BOOL)_shouldLikelyRequestImmediateRunForPrediction:(id)a3
{
  v4 = a3;
  [v4 timeIntervalSincePredictedDateForType:CPLSyncSessionPredictionTypeLastSignificantEventDate];
  v8 = v5 > 0.0 && (v6 = v5, +[CPLSyncSessionPrediction maximumSignificantTimeInterval], v6 < v7) && [BGSystemTaskRequest predictedUploadSizeForPrediction:v4]<= self->_maximumUploadSizeForImmediateRun;

  return v8;
}

- (id)newTaskRequestForSession:(id)a3
{
  v4 = a3;
  v5 = [v4 predictor];
  v6 = [v5 currentPrediction];

  v15 = 0;
  LODWORD(v5) = [v4 shouldRequestMoreTime];

  if (v5)
  {
    if (self->_lastRequestedRunningTime + self->_lastRequestedRunningTime >= self->_minimumRuntimeWithVeryLongExtendedTime)
    {
      minimumRuntimeWithVeryLongExtendedTime = self->_minimumRuntimeWithVeryLongExtendedTime;
    }

    else
    {
      minimumRuntimeWithVeryLongExtendedTime = self->_lastRequestedRunningTime + self->_lastRequestedRunningTime;
    }

    [(CPLBGSTReschedulerManager *)self _expectedDurationFromPrediction:v6 shouldRequestImmediateRun:&v15];
    if (minimumRuntimeWithVeryLongExtendedTime >= v8)
    {
      v8 = minimumRuntimeWithVeryLongExtendedTime;
    }

    self->_lastRequestedRunningTime = v8;
    self->_lastSessionWasExplicitlyExtended = 1;
    v9 = self;
    v10 = 0;
  }

  else
  {
    [(CPLBGSTReschedulerManager *)self _expectedDurationFromPrediction:v6 shouldRequestImmediateRun:&v15];
    v12 = v11;
    v10 = 0;
    self->_lastSessionWasExplicitlyExtended = 0;
    if (v15 == 1)
    {
      if (_CPLSilentLogging)
      {
        v10 = 1;
      }

      else
      {
        sub_1001917C0(&v15, self, &v16);
        v10 = v16;
      }
    }

    v9 = self;
    v8 = v12;
  }

  v13 = [(CPLBGSTReschedulerManager *)v9 newTaskRequestWithExpectedDuration:v10 requestsImmediateRuntime:v8];
  [v13 updateWithPrediction:v6];

  return v13;
}

- (void)_registerWithTaskIdentifier:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  p_registeredTaskIdentifier = &self->_registeredTaskIdentifier;
  if (!self->_registeredTaskIdentifier)
  {
    goto LABEL_5;
  }

  if (([v6 isEqualToString:?] & 1) == 0)
  {
    [(CPLBGSystemTaskScheduler *)self->_scheduler deregisterTaskWithIdentifier:self->_registeredTaskIdentifier];
    registeredTaskIdentifier = self->_registeredTaskIdentifier;
    self->_registeredTaskIdentifier = 0;
  }

  v9 = *p_registeredTaskIdentifier;
  if (!*p_registeredTaskIdentifier)
  {
LABEL_5:
    objc_storeStrong(&self->_registeredTaskIdentifier, a3);
    scheduler = self->_scheduler;
    v11 = self->_registeredTaskIdentifier;
    queue = self->_queue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000288AC;
    v17[3] = &unk_100273418;
    v17[4] = self;
    if (([(CPLBGSystemTaskScheduler *)scheduler registerForTaskWithIdentifier:v11 usingQueue:queue launchHandler:v17]& 1) == 0)
    {
      sub_100191870(&self->_registeredTaskIdentifier, a2, self);
    }

    v9 = *p_registeredTaskIdentifier;
  }

  if (![(NSString *)v9 isEqualToString:v6])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *p_registeredTaskIdentifier;
        *buf = 138412546;
        v19 = v14;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unexpected registered task identifier %@ after registering %@", buf, 0x16u);
      }
    }

    v15 = +[NSAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
    [v15 handleFailureInMethod:a2 object:self file:v16 lineNumber:784 description:{@"Unexpected registered task identifier %@ after registering %@", self->_registeredTaskIdentifier, v6}];

    abort();
  }
}

- (void)_deregisterTaskIdentifier:(id)a3
{
  v13 = a3;
  dispatch_assert_queue_V2(self->_queue);
  p_registeredTaskIdentifier = &self->_registeredTaskIdentifier;
  if (self->_registeredTaskIdentifier)
  {
    if (self->_interestedRescheduler)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          registeredTaskIdentifier = self->_registeredTaskIdentifier;
          interestedRescheduler = self->_interestedRescheduler;
          *buf = 138412546;
          v15 = registeredTaskIdentifier;
          v16 = 2112;
          v17 = interestedRescheduler;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Trying to deregister %@ while we are waiting for a task for %@", buf, 0x16u);
        }
      }

      v10 = +[NSAssertionHandler currentHandler];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
      v12 = self->_registeredTaskIdentifier;
      [v10 handleFailureInMethod:a2 object:self file:v11 lineNumber:790 description:{@"Trying to deregister %@ while we are waiting for a task for %@", v12, self->_interestedRescheduler}];

      abort();
    }

    if (([v13 isEqualToString:?] & 1) == 0)
    {
      sub_100191944(self, a2, v13);
    }

    if (([(CPLBGSystemTaskScheduler *)self->_scheduler deregisterTaskWithIdentifier:self->_registeredTaskIdentifier]& 1) == 0)
    {
      sub_100191A28(&self->_registeredTaskIdentifier, a2, self);
    }

    v6 = *p_registeredTaskIdentifier;
    *p_registeredTaskIdentifier = 0;
  }
}

- (void)_reallySubmitTaskRequest:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_currentTaskRequest, a3);
  lastTaskRequest = self->_lastTaskRequest;
  self->_lastTaskRequest = 0;

  v7 = [v5 identifier];
  [(CPLBGSTReschedulerManager *)self _registerWithTaskIdentifier:v7];

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 BOOLForKey:@"CPLAlwaysFailBackgroundTask"];

  if (v9)
  {
    sub_100191BD8(v5, self, &v14);
    v12 = v14;
  }

  else
  {
    scheduler = self->_scheduler;
    v13 = 0;
    v11 = [(CPLBGSystemTaskScheduler *)scheduler submitTaskRequest:v5 error:&v13];
    v12 = v13;
    if (v11)
    {
      [(CPLBGSTActivityReport *)self->_report didSubmit];
      self->_currentTaskRequestHasBeenSubmitted = 1;
    }

    else
    {
      sub_100191AFC(v5, v12, self);
    }
  }
}

- (void)_acquiredTask:(id)a3 error:(id)a4
{
  v23 = a3;
  v7 = a4;
  currentTaskRequest = self->_currentTaskRequest;
  if (!currentTaskRequest)
  {
    sub_100191EE8();
  }

  if (!self->_registeredTaskIdentifier)
  {
    sub_100191E30();
  }

  v9 = [(BGNonRepeatingSystemTaskRequest *)currentTaskRequest identifier];
  v10 = [v9 isEqualToString:self->_registeredTaskIdentifier];

  if ((v10 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        registeredTaskIdentifier = self->_registeredTaskIdentifier;
        v17 = self->_currentTaskRequest;
        *buf = 138412546;
        v25 = v17;
        v26 = 2112;
        v27 = registeredTaskIdentifier;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Acquired %@ mismatches task identifier %@", buf, 0x16u);
      }
    }

    v19 = +[NSAssertionHandler currentHandler];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
    [v19 handleFailureInMethod:a2 object:self file:v20 lineNumber:821 description:{@"Acquired %@ mismatches task identifier %@", self->_currentTaskRequest, self->_registeredTaskIdentifier}];
    goto LABEL_26;
  }

  interestedRescheduler = self->_interestedRescheduler;
  if (!interestedRescheduler)
  {
    sub_100191D78();
  }

  v12 = interestedRescheduler;
  self->_currentTaskRequestHasBeenSubmitted = 0;
  objc_storeStrong(&self->_runningRescheduler, self->_interestedRescheduler);
  v13 = self->_interestedRescheduler;
  self->_interestedRescheduler = 0;

  if (v23)
  {
    v14 = [v23 identifier];
    v15 = [v14 isEqualToString:self->_registeredTaskIdentifier];

    if (v15)
    {
      [(CPLBGSTActivityReport *)self->_report didAcquire];
      [(CPLBGSTRescheduler *)v12 acquiredTask:v23];
      goto LABEL_10;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = self->_registeredTaskIdentifier;
        *buf = 138412546;
        v25 = v23;
        v26 = 2112;
        v27 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Acquired %@ mismatches registered task identifier %@", buf, 0x16u);
      }
    }

    v19 = +[NSAssertionHandler currentHandler];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
    [v19 handleFailureInMethod:a2 object:self file:v20 lineNumber:829 description:{@"Acquired %@ mismatches registered task identifier %@", v23, self->_registeredTaskIdentifier}];
LABEL_26:

    abort();
  }

  if (!v7)
  {
    sub_100191CC0();
  }

  [(CPLBGSTRescheduler *)v12 failedToAcquireTaskWithError:v7];
LABEL_10:
}

- (id)_requestFromUpdatedRequest:(id)a3 updatedPrediction:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v13 = 0;
    [(CPLBGSTReschedulerManager *)self _expectedDurationFromPrediction:v7 shouldRequestImmediateRun:&v13];
    [v6 setExpectedDuration:?];
    if ((v13 & 1) == 0)
    {
      if ([v6 cplRequestsImmediateRuntime])
      {
        if (_CPLSilentLogging)
        {
          v10 = 0;
          goto LABEL_13;
        }

        v8 = sub_100025CA0();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          taskIdentifier = self->_taskIdentifier;
          *buf = 138543362;
          v15 = taskIdentifier;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updated request for %{public}@ should not request immediate runtime anymore", buf, 0xCu);
        }

        v10 = 0;
        goto LABEL_12;
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (_CPLSilentLogging)
    {
      v10 = 1;
      goto LABEL_13;
    }

    v8 = sub_100025CA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_taskIdentifier;
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updated request for %{public}@ will request immediate runtime", buf, 0xCu);
    }

    v10 = 1;
LABEL_12:

LABEL_13:
    [v6 setCplRequestsImmediateRuntime:v10];
LABEL_14:
    [v6 updateWithPrediction:v7];
  }

  return v6;
}

- (void)submitTaskRequestForRescheduler:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_interestedRescheduler)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        registeredTaskIdentifier = self->_registeredTaskIdentifier;
        interestedRescheduler = self->_interestedRescheduler;
        *buf = 138412802;
        v19 = v5;
        v20 = 2112;
        v21 = registeredTaskIdentifier;
        v22 = 2112;
        v23 = interestedRescheduler;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Trying to register %@ for %@ twice (already registered: %@)", buf, 0x20u);
      }
    }

    v10 = +[NSAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
    v12 = self->_registeredTaskIdentifier;
    [v10 handleFailureInMethod:a2 object:self file:v11 lineNumber:857 description:{@"Trying to register %@ for %@ twice (already registered: %@)", v5, v12, self->_interestedRescheduler}];
LABEL_17:

    abort();
  }

  if (self->_runningRescheduler)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = self->_registeredTaskIdentifier;
        runningRescheduler = self->_runningRescheduler;
        *buf = 138412802;
        v19 = v5;
        v20 = 2112;
        v21 = v14;
        v22 = 2112;
        v23 = runningRescheduler;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Trying to register %@ for %@ while %@ is running", buf, 0x20u);
      }
    }

    v10 = +[NSAssertionHandler currentHandler];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
    v16 = self->_registeredTaskIdentifier;
    [v10 handleFailureInMethod:a2 object:self file:v11 lineNumber:858 description:{@"Trying to register %@ for %@ while %@ is running", v5, v16, self->_runningRescheduler}];
    goto LABEL_17;
  }

  if (self->_registeredTaskIdentifier)
  {
    sub_100191FA0(a2, self, v5);
  }

  self->_interestedRescheduler = v5;
  v6 = v5;

  v17 = [(CPLBGSTRescheduler *)v6 request];

  [(CPLBGSTReschedulerManager *)self _reallySubmitTaskRequest:v17];
}

- (id)resubmitTaskRequestForRescheduler:(id)a3 updatedPrediction:(id)a4 afterTaskHasBeenDeferred:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  dispatch_assert_queue_V2(self->_queue);
  p_registeredTaskIdentifier = &self->_registeredTaskIdentifier;
  registeredTaskIdentifier = self->_registeredTaskIdentifier;
  if (!registeredTaskIdentifier || ([(CPLBGSTRescheduler *)v10 taskIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = [(NSString *)registeredTaskIdentifier isEqualToString:v15], v15, (v16 & 1) == 0))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v31 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = [(CPLBGSTRescheduler *)v10 taskIdentifier];
        v33 = *p_registeredTaskIdentifier;
        *buf = 138412546;
        v49 = v32;
        v50 = 2112;
        v51 = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Trying to resubmit request for %@ while we are currently registered for %@", buf, 0x16u);
      }
    }

    v34 = +[NSAssertionHandler currentHandler];
    v35 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
    v36 = [(CPLBGSTRescheduler *)v10 taskIdentifier];
    [v34 handleFailureInMethod:a2 object:self file:v35 lineNumber:869 description:{@"Trying to resubmit request for %@ while we are currently registered for %@", v36, self->_registeredTaskIdentifier}];

LABEL_36:
    abort();
  }

  if (self->_currentTaskRequestHasBeenSubmitted)
  {
    sub_1001921E4(&self->_registeredTaskIdentifier, a2, self);
  }

  if (self->_interestedRescheduler)
  {
    sub_10019206C(&self->_registeredTaskIdentifier, a2, self);
  }

  if (self->_runningRescheduler != v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v37 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = self->_registeredTaskIdentifier;
        runningRescheduler = self->_runningRescheduler;
        *buf = 138412802;
        v49 = v38;
        v50 = 2112;
        v51 = v10;
        v52 = 2112;
        v53 = runningRescheduler;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Trying to resubmit %@ for %@ but current running one is %@", buf, 0x20u);
      }
    }

    v34 = +[NSAssertionHandler currentHandler];
    v35 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
    [v34 handleFailureInMethod:a2 object:self file:v35 lineNumber:872 description:{@"Trying to resubmit %@ for %@ but current running one is %@", self->_registeredTaskIdentifier, v10, self->_runningRescheduler}];
    goto LABEL_36;
  }

  objc_storeStrong(&self->_interestedRescheduler, a3);
  v17 = self->_runningRescheduler;
  self->_runningRescheduler = 0;

  v18 = [(CPLBGSTRescheduler *)v10 request];
  v19 = [(CPLBGSTReschedulerManager *)self _requestFromUpdatedRequest:v18 updatedPrediction:v11];
  if (v19 != v18)
  {
    [v12 setTaskCompleted];
    [(CPLBGSTReschedulerManager *)self _reallySubmitTaskRequest:v19];
    currentTaskRequest = self->_currentTaskRequest;
    if (currentTaskRequest == v19)
    {
      v21 = *p_registeredTaskIdentifier;
      v22 = [(BGNonRepeatingSystemTaskRequest *)currentTaskRequest identifier];
      LOBYTE(v21) = [(NSString *)v21 isEqualToString:v22];

      if (v21)
      {
        v23 = v19;
        goto LABEL_21;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v44 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = *p_registeredTaskIdentifier;
          *buf = 138412546;
          v49 = v19;
          v50 = 2112;
          v51 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "New %@ should be our current registered task identifier (%@)", buf, 0x16u);
        }
      }

      v42 = +[NSAssertionHandler currentHandler];
      v43 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
      [v42 handleFailureInMethod:a2 object:self file:v43 lineNumber:884 description:{@"New %@ should be our current registered task identifier (%@)", v19, self->_registeredTaskIdentifier}];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v40 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = self->_currentTaskRequest;
          *buf = 138412546;
          v49 = v19;
          v50 = 2112;
          v51 = v41;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "New %@ should be our current task request (%@)", buf, 0x16u);
        }
      }

      v42 = +[NSAssertionHandler currentHandler];
      v43 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
      [v42 handleFailureInMethod:a2 object:self file:v43 lineNumber:883 description:{@"New %@ should be our current task request (%@)", v19, self->_currentTaskRequest}];
    }

    abort();
  }

  v47 = 0;
  v24 = [v12 setTaskExpiredWithRetryAfter:&v47 error:0.0];
  v25 = v47;
  if (v24)
  {
    [(CPLBGSTActivityReport *)self->_report didDefer];
    scheduler = self->_scheduler;
    v46 = 0;
    v27 = [(CPLBGSystemTaskScheduler *)scheduler updateTaskRequest:v18 error:&v46];
    v28 = v46;
    if ((v27 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      sub_100192140();
    }

    self->_currentTaskRequestHasBeenSubmitted = 1;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v29 = sub_100025CA0();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v49 = v12;
        v50 = 2112;
        v51 = v25;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to reschedule expired %@: %@", buf, 0x16u);
      }
    }

    self->_currentTaskRequestHasBeenSubmitted = 0;
    [v12 setTaskCompleted];
    [(CPLBGSTReschedulerManager *)self _acquiredTask:0 error:v25];
  }

  v23 = v18;

LABEL_21:

  return v23;
}

- (void)dropTaskRequest:(id)a3 forRescheduler:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (!v7)
  {
    sub_100192348();
  }

  if (self->_currentTaskRequest != v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        currentTaskRequest = self->_currentTaskRequest;
        *buf = 138412546;
        v38 = v7;
        v39 = 2112;
        v40 = currentTaskRequest;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Cancelling an unknown task request %@ (current: %@)", buf, 0x16u);
      }
    }

    v25 = +[NSAssertionHandler currentHandler];
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
    [v25 handleFailureInMethod:a2 object:self file:v26 lineNumber:911 description:{@"Cancelling an unknown task request %@ (current: %@)", v7, self->_currentTaskRequest}];

    abort();
  }

  v9 = [(BGNonRepeatingSystemTaskRequest *)v7 identifier];
  v10 = [(CPLBGSTRescheduler *)v8 currentActivity];

  if (v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v27 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v38 = v7;
        v39 = 2112;
        v40 = v8;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Trying to unregister %@ for %@ while a task is running", buf, 0x16u);
      }
    }

    v28 = +[NSAssertionHandler currentHandler];
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
    [v28 handleFailureInMethod:a2 object:self file:v29 lineNumber:913 description:{@"Trying to unregister %@ for %@ while a task is running", v7, v8}];

    abort();
  }

  interestedRescheduler = self->_interestedRescheduler;
  if (!interestedRescheduler)
  {
    runningRescheduler = self->_runningRescheduler;
    if (runningRescheduler == v8)
    {
      self->_runningRescheduler = 0;

      [(CPLBGSTActivityReport *)self->_report didFinish];
      goto LABEL_13;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v34 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = self->_runningRescheduler;
        *buf = 138412546;
        v38 = v8;
        v39 = 2112;
        v40 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Trying to drop task request for %@ but the currently active one is %@", buf, 0x16u);
      }
    }

    v32 = +[NSAssertionHandler currentHandler];
    v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
    [v32 handleFailureInMethod:a2 object:self file:v33 lineNumber:935 description:{@"Trying to drop task request for %@ but the currently active one is %@", v8, self->_runningRescheduler}];
LABEL_36:

    abort();
  }

  if (interestedRescheduler != v8)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v30 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = self->_interestedRescheduler;
        *buf = 138412546;
        v38 = v8;
        v39 = 2112;
        v40 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Trying to drop task request for %@ but the currently active one is %@", buf, 0x16u);
      }
    }

    v32 = +[NSAssertionHandler currentHandler];
    v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
    [v32 handleFailureInMethod:a2 object:self file:v33 lineNumber:916 description:{@"Trying to drop task request for %@ but the currently active one is %@", v8, self->_interestedRescheduler}];
    goto LABEL_36;
  }

  if (!self->_currentTaskRequestHasBeenSubmitted)
  {
LABEL_13:
    [(CPLBGSTReschedulerManager *)self _deregisterTaskIdentifier:v9];
    goto LABEL_14;
  }

  scheduler = self->_scheduler;
  registeredTaskIdentifier = self->_registeredTaskIdentifier;
  v36 = 0;
  v14 = [(CPLBGSystemTaskScheduler *)scheduler cancelTaskRequestWithIdentifier:registeredTaskIdentifier error:&v36];
  v15 = v36;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v17 = v15;
    v18 = [v17 domain];
    if ([v18 isEqualToString:BGSystemTaskSchedulerErrorDomain])
    {
      v19 = [v17 code];

      if (v19 == 6)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    sub_1001922B8(&self->_currentTaskRequest, a2, self, v17);
  }

LABEL_10:
  [(CPLBGSTActivityReport *)self->_report didCancel];
  v20 = self->_interestedRescheduler;
  self->_interestedRescheduler = 0;

  [(CPLBGSTReschedulerManager *)self _deregisterTaskIdentifier:v9];
  self->_currentTaskRequestHasBeenSubmitted = 0;

LABEL_14:
  objc_storeStrong(&self->_lastTaskRequest, self->_currentTaskRequest);
  v22 = self->_currentTaskRequest;
  self->_currentTaskRequest = 0;
}

- (id)updateTaskRequest:(id)a3 updatedPrediction:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_currentTaskRequest != v6)
  {
    sub_100192400();
  }

  if (self->_interestedRescheduler)
  {
    v8 = [(CPLBGSTReschedulerManager *)self _requestFromUpdatedRequest:v6 updatedPrediction:v7];
    if (v8 == v6)
    {
      scheduler = self->_scheduler;
      v17 = 0;
      v14 = [(CPLBGSystemTaskScheduler *)scheduler updateTaskRequest:v6 error:&v17];
      v15 = v17;
      if (v14)
      {
        [(CPLBGSTActivityReport *)self->_report didUpdate];
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        sub_100192140();
      }
    }

    else
    {
      v9 = self->_interestedRescheduler;
      [(CPLBGSTReschedulerManager *)self dropTaskRequest:v6 forRescheduler:self->_interestedRescheduler];
      [(CPLBGSTReschedulerManager *)self _reallySubmitTaskRequest:v8];
      interestedRescheduler = self->_interestedRescheduler;
      self->_interestedRescheduler = v9;
      v11 = v9;

      v12 = v8;
      v6 = v12;
    }
  }

  return v6;
}

- (void)activityHasExpired:(id)a3 reason:(unint64_t)a4 forRescheduler:(id)a5
{
  dispatch_assert_queue_V2(self->_queue);
  report = self->_report;

  [(CPLBGSTActivityReport *)report didExpireWithReason:a4];
}

- (void)noteBlockedStateHasChanged:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reschedulerManager:self didUpdateBlockedState:v4];
}

- (id)_persistedSyncSessionForScheduler:(id)a3 startSyncSessionBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(CPLBGSTReschedulerManager *)self _registerWithTaskIdentifier:self->_taskIdentifier];
  v9 = [(CPLBGSystemTaskScheduler *)self->_scheduler taskRequestForIdentifier:self->_taskIdentifier];
  if (v9)
  {
    v10 = [[CPLBGSTRescheduler alloc] initWithRequest:v9 reschedulerManager:self];
    if (![(NSString *)self->_registeredTaskIdentifier isEqualToString:self->_taskIdentifier])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          registeredTaskIdentifier = self->_registeredTaskIdentifier;
          taskIdentifier = self->_taskIdentifier;
          *location = 138412546;
          *&location[4] = registeredTaskIdentifier;
          v28 = 2112;
          v29 = taskIdentifier;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid registered task identifier %@ - expecting %@", location, 0x16u);
        }
      }

      v21 = +[NSAssertionHandler currentHandler];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
      v23 = self->_registeredTaskIdentifier;
      [v21 handleFailureInMethod:a2 object:self file:v22 lineNumber:994 description:{@"Invalid registered task identifier %@ - expecting %@", v23, self->_taskIdentifier}];

      abort();
    }

    objc_storeStrong(&self->_currentTaskRequest, v9);
    self->_currentTaskRequestHasBeenSubmitted = 1;
    objc_storeStrong(&self->_interestedRescheduler, v10);
    v11 = [CPLSyncSession alloc];
    v12 = [v7 configuration];
    v13 = [v11 initWithSequenceNumber:0 expectedDate:0 scheduler:v7 configuration:v12 scopeFilter:0];

    objc_initWeak(location, v13);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002A3EC;
    v24[3] = &unk_100273440;
    objc_copyWeak(&v26, location);
    v25 = v8;
    [(CPLBGSTRescheduler *)v10 _registerFromPersistentSyncSessionWithLaunchBlock:v24];
    [v13 setRescheduler:v10];
    v14 = [v13 predictor];
    v15 = [v14 currentPrediction];
    [(CPLBGSTRescheduler *)v10 updateSyncSessionPrediction:v15];

    v16 = v13;
    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }

  else
  {
    [(CPLBGSTReschedulerManager *)self _deregisterTaskIdentifier:self->_taskIdentifier];
    v16 = 0;
  }

  return v16;
}

- (void)findPersistedSyncSession:(id)a3 forScheduler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002A594;
  v18[3] = &unk_100273468;
  v18[4] = self;
  v19 = v9;
  v20 = v8;
  v21 = v10;
  v12 = v18;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000028C0;
  block[3] = &unk_100271E98;
  v23 = v12;
  v13 = queue;
  v14 = v10;
  v15 = v8;
  v16 = v9;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v13, v17);
}

- (void)dropPersistedInitialSyncSession
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002A7A4;
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

- (id)newCloudKitReschedulerForSession:(id)a3
{
  v4 = [(CPLBGSTReschedulerManager *)self newTaskRequestForSession:a3];
  v5 = [[CPLBGSTRescheduler alloc] initWithRequest:v4 reschedulerManager:self];

  return v5;
}

- (NSString)reschedulerDescription
{
  v3 = [NSString alloc];
  taskIdentifier = self->_taskIdentifier;
  v5 = [(NSArray *)self->_relatedApplications componentsJoinedByString:@", "];
  v6 = [v3 initWithFormat:@"%@ for %@", taskIdentifier, v5];

  return v6;
}

- (id)_summaryForTaskRequest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  if ([v3 resourceIntensive])
  {
    [v4 addObject:@"resourceIntensive"];
  }

  if ([v3 requiresUserInactivity])
  {
    [v4 addObject:@"requiresUserInactivity"];
  }

  if ([v3 requiresSignificantUserInactivity])
  {
    [v4 addObject:@"requiresSignificantUserInactivity"];
  }

  if ([v3 powerNap])
  {
    [v4 addObject:@"powerNap"];
  }

  if ([v3 requiresExternalPower])
  {
    [v4 addObject:@"requiresExternalPower"];
  }

  if ([v3 requiresNetworkConnectivity])
  {
    [v4 addObject:@"requiresNetworkConnectivity"];
  }

  if ([v3 overrideRateLimiting])
  {
    [v4 addObject:@"overrideRateLimiting"];
  }

  if ([v3 cplRequestsImmediateRuntime])
  {
    [v4 addObject:@"requestsImmediateRuntime"];
  }

  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

- (id)taskStatusesWithNow:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100004380;
  v16 = sub_1000052A4;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AC28;
  block[3] = &unk_1002733F0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

+ (id)taskIdentifierForLibraryIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[NSString alloc] initWithFormat:@"com.apple.cloudphotod.sync.%@", v3];

  return v4;
}

- (CPLCloudKitReschedulerManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_expectedDurationFromPrediction:(id)a3 shouldRequestImmediateRun:(BOOL *)a4
{
  v6 = a3;
  v7 = [(CPLBGSTReschedulerManager *)self _shouldLikelyRequestImmediateRunForPrediction:v6];
  lastPrediction = self->_lastPrediction;
  self->_lastPrediction = v6;
  v9 = v6;

  p_minimumRuntime = &self->_minimumRuntime;
  [CPLBGSTActivity estimatedRunningTimeFromPrediction:v9 minimumRuntime:self->_minimumRuntime minimumRuntimeWithExtendedTime:self->_minimumRuntimeWithExtendedTime minimumRuntimeWithVeryLongExtendedTime:self->_minimumRuntimeWithVeryLongExtendedTime];
  v12 = v11;

  result = ceil(v12);
  self->_lastEstimatedRunningTime = result;
  if (v7 && result <= self->_maximumRuntimeForImmediateRun)
  {
    p_minimumRuntime = &self->_minimumRuntimeForImmediateRun;
    v14 = 1;
  }

  else
  {
    v14 = 0;
    result = ceil(result / 60.0) * 60.0 + self->_minimumRuntimeLeeway;
  }

  if (result < *p_minimumRuntime)
  {
    result = *p_minimumRuntime;
  }

  self->_lastRequestedRunningTime = result;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v15 = sub_100025CA0();
    if (sub_100003424(v15))
    {
      lastRequestedRunningTime = self->_lastRequestedRunningTime;
      sub_100013990();
      _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    }

    result = self->_lastRequestedRunningTime;
  }

  *a4 = v14;
  return result;
}

@end