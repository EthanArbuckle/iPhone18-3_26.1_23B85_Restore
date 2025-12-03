@interface EDRemoteContentManager
- (BOOL)shouldAddRemoteContentLinksForMessage:(id)message logMessage:(id *)logMessage;
- (BOOL)shouldVerifyRemoteLinks;
- (EDRemoteContentManager)initWithRemoteContentPersistence:(id)persistence contentRuleListManager:(id)manager urlSession:(id)session;
- (EDRemoteContentManagerTestDelegate)testDelegate;
- (EFScheduler)unconditionalRequestScheduler;
- (double)_getTimeout;
- (id)_issueAndWaitForBatch:(id)batch deferBlock:(id)block successful:(unint64_t *)successful failed:(unint64_t *)failed canceled:(unint64_t *)canceled deferred:(unint64_t *)deferred;
- (id)_requestSchedulerWithInterval:(double)interval;
- (id)_viewDurationsFromBiome;
- (unint64_t)_performRequests:(unint64_t)requests unconditionally:(BOOL)unconditionally withDeferBlock:(id)block completedCount:(unint64_t *)count;
- (void)_addRemoteContentLinks:(id)links andVerify:(BOOL)verify WithParsedLinks:(id)parsedLinks defaultCharsetName:(id)name;
- (void)_scheduleBackgroundRequests;
- (void)_scheduleRequestForLinks:(unint64_t)links unconditionally:(BOOL)unconditionally withDelay:(double)delay completionHandler:(id)handler;
- (void)_updateScheduling;
- (void)_updateTimeoutSettingDefaultIfNeeded:(BOOL)needed;
- (void)addRemoteContentLinks:(id)links requiredParsing:(BOOL)parsing;
- (void)noteViewOfRemoteContentLinks:(id)links;
- (void)test_tearDown;
@end

@implementation EDRemoteContentManager

void ___ef_log_EDRemoteContentManager_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDRemoteContentManager");
  v1 = _ef_log_EDRemoteContentManager_log;
  _ef_log_EDRemoteContentManager_log = v0;
}

- (EDRemoteContentManager)initWithRemoteContentPersistence:(id)persistence contentRuleListManager:(id)manager urlSession:(id)session
{
  persistenceCopy = persistence;
  sessionCopy = session;
  v23.receiver = self;
  v23.super_class = EDRemoteContentManager;
  v10 = [(EDRemoteContentManager *)&v23 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_remoteContentPersistence, persistence);
    objc_storeStrong(&v11->_urlSession, session);
    *&v11->_requestSchedulerLock._os_unfair_lock_opaque = 0;
    v11->_schedulingLock._os_unfair_lock_opaque = 0;
    v12 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EDRemoteContentManager.backgroundWorkScheduler" qualityOfService:9];
    backgroundWorkScheduler = v11->_backgroundWorkScheduler;
    v11->_backgroundWorkScheduler = v12;

    v14 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    token = v11->_token;
    v11->_token = v14;

    v16 = objc_alloc_init(MEMORY[0x1E696AD10]);
    requestLock = v11->_requestLock;
    v11->_requestLock = v16;

    v11->_pruneFrequency = 5000;
    v18 = objc_alloc(MEMORY[0x1E699B7F0]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = [v18 initWithObject:v19];
    remoteLinkVerificationTimes = v11->_remoteLinkVerificationTimes;
    v11->_remoteLinkVerificationTimes = v20;
  }

  return v11;
}

- (void)_scheduleBackgroundRequests
{
  v3 = _os_activity_create(&dword_1C61EF000, "[EDRemoteContentManager _scheduleBackgroundRequests]", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v3, &state);
  os_unfair_lock_lock(&self->_schedulingLock);
  schedulingLastUpdate = [(EDRemoteContentManager *)self schedulingLastUpdate];
  if (schedulingLastUpdate && (-[EDRemoteContentManager schedulingLastUpdate](self, "schedulingLastUpdate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 ef_isMoreThanTimeIntervalAgo:86400.0], v5, schedulingLastUpdate, (v6 & 1) == 0))
  {
    v8 = 10.0;
    if (([MEMORY[0x1E699ACE8] preferenceEnabled:8] & 1) == 0)
    {
      [(EDRemoteContentManager *)self requestInterval];
      EFARC4NormallyDistributedRandomDoubleWithMinimum();
      v8 = v9;
    }

    batchSize = [(EDRemoteContentManager *)self batchSize];
    if (batchSize >= 6)
    {
      EFARC4NormallyDistributedRandomDoubleInRange();
      batchSize = v11;
    }

    os_unfair_lock_unlock(&self->_schedulingLock);
    v12 = [MEMORY[0x1E699ACE8] preferenceEnabled:8];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__EDRemoteContentManager__scheduleBackgroundRequests__block_invoke_2;
    v13[3] = &unk_1E8253F30;
    v13[4] = self;
    [(EDRemoteContentManager *)self _scheduleRequestForLinks:batchSize unconditionally:v12 withDelay:v13 completionHandler:v8];
  }

  else
  {
    os_unfair_lock_unlock(&self->_schedulingLock);
    backgroundWorkScheduler = [(EDRemoteContentManager *)self backgroundWorkScheduler];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__EDRemoteContentManager__scheduleBackgroundRequests__block_invoke;
    v14[3] = &unk_1E8250260;
    v14[4] = self;
    [backgroundWorkScheduler performBlock:v14];
  }

  os_activity_scope_leave(&state);
}

uint64_t __53__EDRemoteContentManager__scheduleBackgroundRequests__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 10);
  v3 = [*(a1 + 32) schedulingLastUpdate];
  if (!v3 || ([*(a1 + 32) schedulingLastUpdate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "ef_isMoreThanTimeIntervalAgo:", 86400.0), v4, v3, v5))
  {
    [*(a1 + 32) _updateScheduling];
  }

  os_unfair_lock_unlock(v2 + 10);
  v6 = *(a1 + 32);

  return [v6 _scheduleBackgroundRequests];
}

uint64_t __53__EDRemoteContentManager__scheduleBackgroundRequests__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _scheduleBackgroundRequests];
  }

  return result;
}

- (void)_updateScheduling
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-86400.0];
  remoteContentPersistence = [(EDRemoteContentManager *)self remoteContentPersistence];
  v5 = [remoteContentPersistence countOfLinksLastSeenSince:v3];

  remoteContentPersistence2 = [(EDRemoteContentManager *)self remoteContentPersistence];
  countOfUnrequestedLinks = [remoteContentPersistence2 countOfUnrequestedLinks];

  if (v5 <= countOfUnrequestedLinks)
  {
    v8 = countOfUnrequestedLinks;
  }

  else
  {
    v8 = v5;
  }

  if (v8 <= 0xC8)
  {
    v8 = 200;
  }

  v9 = v8;
  v10 = (log(v8) * -12.34 + 130.0) * 60.0;
  if (v10 >= 720.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 720.0;
  }

  [(EDRemoteContentManager *)self setRequestInterval:v11];
  [(EDRemoteContentManager *)self setBatchSize:(v11 * v9 / 10800.0)];
  v12 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [(EDRemoteContentManager *)self setSchedulingLastUpdate:v12];

  v13 = _ef_log_EDRemoteContentManager();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218752;
    v16 = v5;
    v17 = 2048;
    v18 = countOfUnrequestedLinks;
    v19 = 2048;
    v20 = v11;
    v21 = 2048;
    batchSize = [(EDRemoteContentManager *)self batchSize];
    _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Updated scheduling: last day count = %lu, unrequested count = %lu, request interval = %f, batch size = %lu", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleRequestForLinks:(unint64_t)links unconditionally:(BOOL)unconditionally withDelay:(double)delay completionHandler:(id)handler
{
  unconditionallyCopy = unconditionally;
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_requestSchedulerLock);
  if (unconditionallyCopy)
  {
    objc_initWeak(&location, self);
    unconditionalRequestScheduler = [(EDRemoteContentManager *)self unconditionalRequestScheduler];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__EDRemoteContentManager__scheduleRequestForLinks_unconditionally_withDelay_completionHandler___block_invoke;
    v23[3] = &unk_1E82563E0;
    objc_copyWeak(v25, &location);
    v24 = handlerCopy;
    v25[1] = links;
    v12 = [unconditionalRequestScheduler afterDelay:v23 performBlock:delay];

    v13 = _ef_log_EDRemoteContentManager();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      linksCopy2 = links;
      v29 = 2048;
      delayCopy2 = delay;
      _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Scheduled unconditional request batch for %lu links with interval: %f", buf, 0x16u);
    }

    objc_destroyWeak(v25);
    objc_destroyWeak(&location);
LABEL_13:
    os_unfair_lock_unlock(&self->_requestSchedulerLock);
    goto LABEL_14;
  }

  if (!self->_requestScheduler)
  {
    v15 = [(EDRemoteContentManager *)self _requestSchedulerWithInterval:delay];
    objc_storeStrong(&self->_requestScheduler, v15);
    self->_remainingCountToSchedule = links;
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __95__EDRemoteContentManager__scheduleRequestForLinks_unconditionally_withDelay_completionHandler___block_invoke_13;
    v19[3] = &unk_1E8256408;
    objc_copyWeak(&v22, &location);
    v20 = v15;
    v21 = handlerCopy;
    v16 = v15;
    [v16 scheduleWithBlock:v19];
    v17 = _ef_log_EDRemoteContentManager();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      linksCopy2 = links;
      v29 = 2048;
      delayCopy2 = delay;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Scheduled request batch for %lu links with interval: %f", buf, 0x16u);
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    goto LABEL_13;
  }

  v14 = _ef_log_EDRemoteContentManager();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "Request batch already scheduled", buf, 2u);
  }

  os_unfair_lock_unlock(&self->_requestSchedulerLock);
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
}

void __95__EDRemoteContentManager__scheduleRequestForLinks_unconditionally_withDelay_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v9 = 0;
    if ([WeakRetained[11] tryLock])
    {
      v4 = [v3 _requestRemoteLinksInBackground:*(a1 + 48) unconditionally:1 hasMoreLinks:&v9 deferBlock:&__block_literal_global_12_0] == 0;
      [v3[11] unlock];
    }

    else
    {
      v6 = _ef_log_EDRemoteContentManager();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Skipped unconditional request batch because request batch is already running", v8, 2u);
      }

      v4 = 1;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, v4 & v9);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

void __95__EDRemoteContentManager__scheduleRequestForLinks_unconditionally_withDelay_completionHandler___block_invoke_13(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    while (1)
    {
      v5 = *(WeakRetained + 11);
      v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
      LOBYTE(v5) = [v5 lockBeforeDate:v6];

      if (v5)
      {
        break;
      }

      if ([*(a1 + 32) shouldDefer])
      {
        v7 = *(a1 + 40);
        if (v7)
        {
          (*(v7 + 16))(v7, 0);
        }

        v8 = 2;
        goto LABEL_10;
      }
    }

    v22 = 0;
    os_unfair_lock_lock(WeakRetained + 8);
    v10 = *(WeakRetained + 3);
    os_unfair_lock_unlock(WeakRetained + 8);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __95__EDRemoteContentManager__scheduleRequestForLinks_unconditionally_withDelay_completionHandler___block_invoke_2_14;
    v20 = &unk_1E8254A38;
    v21 = *(a1 + 32);
    v11 = [WeakRetained _requestRemoteLinksInBackground:v10 unconditionally:0 hasMoreLinks:&v22 deferBlock:&v17];
    if (v11)
    {
      v12 = _ef_log_EDRemoteContentManager();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v24 = v11;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Deferring %lu links", buf, 0xCu);
      }

      os_unfair_lock_lock(WeakRetained + 8);
      *(WeakRetained + 3) = v11;
    }

    else
    {
      os_unfair_lock_lock(WeakRetained + 8);
      *(WeakRetained + 3) = 0;
      [*(WeakRetained + 1) invalidate];
      v13 = *(WeakRetained + 1);
      *(WeakRetained + 1) = 0;
    }

    os_unfair_lock_unlock(WeakRetained + 8);

    [*(WeakRetained + 11) unlock];
    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, (v11 == 0) & v22);
    }

    if (v11)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    v3[2](v3, v15);
  }

  else
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }

    v8 = 1;
LABEL_10:
    v3[2](v3, v8);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_performRequests:(unint64_t)requests unconditionally:(BOOL)unconditionally withDeferBlock:(id)block completedCount:(unint64_t *)count
{
  v46 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  remoteContentPersistence = [(EDRemoteContentManager *)self remoteContentPersistence];
  v12 = [remoteContentPersistence remoteContentLinksBelowCount:1 limit:requests];
  v13 = [v12 count];
  v14 = _ef_log_EDRemoteContentManager();
  v15 = v14;
  if (v13)
  {
    v16 = v14;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v12 ef_map:&__block_literal_global_293];
      v18 = [v17 componentsJoinedByString:{@", "}];

      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Starting request batch for URLs: %{public}@", buf, 0xCu);
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v44 = 0;
    *buf = 0;
    v42 = 0;
    v43 = 0;
    v20 = [(EDRemoteContentManager *)self _issueAndWaitForBatch:v12 deferBlock:blockCopy successful:buf failed:&v44 canceled:&v43 deferred:&v42];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v19];
    v23 = v22;

    [remoteContentPersistence updateRequestCountForRemoteContentLinks:v20 updateLastSeen:0];
    v24 = [v12 count];
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __89__EDRemoteContentManager__performRequests_unconditionally_withDeferBlock_completedCount___block_invoke;
    v33 = &unk_1E8256430;
    v36 = v24;
    LOBYTE(v41) = unconditionally;
    v25 = v20;
    v34 = v25;
    v26 = v12;
    v35 = v26;
    v37 = *buf;
    v38 = v44;
    v39 = v43;
    v40 = v42;
    AnalyticsSendEventLazy();
    if (count)
    {
      *count = [v25 count];
    }

    v27 = [v26 count];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Skipping empty request batch", buf, 2u);
    }

    v27 = 0;
    if (count)
    {
      *count = 0;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

id __89__EDRemoteContentManager__performRequests_unconditionally_withDeferBlock_completedCount___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v21[0] = @"batchSize";
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v21[1] = @"batchDuration";
  v19 = v22;
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
  v21[2] = @"isUnconditional";
  v17 = v23;
  v18 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 96)];
  v24 = v18;
  v21[3] = @"didComplete";
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 32), "count") == objc_msgSend(*(a1 + 40), "count")}];
  v25 = v16;
  v21[4] = @"successfulCount";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
  v26 = v15;
  v21[5] = @"percentSuccessful";
  v2 = *(a1 + 48);
  if (v2)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInteger:100 * *(a1 + 64) / v2];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v20 = ;
  v27 = v20;
  v21[6] = @"failedCount";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
  v28 = v14;
  v21[7] = @"percentFailed";
  v3 = *(a1 + 48);
  if (v3)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInteger:100 * *(a1 + 72) / v3];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v4 = ;
  v29 = v4;
  v21[8] = @"canceledCount";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
  v30 = v5;
  v21[9] = @"percentCanceled";
  v6 = *(a1 + 48);
  if (v6)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInteger:100 * *(a1 + 80) / v6];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v7 = ;
  v31 = v7;
  v21[10] = @"deferredCount";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 88)];
  v32 = v8;
  v21[11] = @"percentDeferred";
  v9 = *(a1 + 48);
  if (v9)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInteger:100 * *(a1 + 88) / v9];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v10 = ;
  v33 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:v21 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_issueAndWaitForBatch:(id)batch deferBlock:(id)block successful:(unint64_t *)successful failed:(unint64_t *)failed canceled:(unint64_t *)canceled deferred:(unint64_t *)deferred
{
  v109 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  blockCopy = block;
  v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
  urlSession = [(EDRemoteContentManager *)self urlSession];
  v10 = objc_alloc_init(MEMORY[0x1E699B868]);
  v99 = MEMORY[0x1E69E9820];
  v100 = 3221225472;
  v101 = __95__EDRemoteContentManager__issueAndWaitForBatch_deferBlock_successful_failed_canceled_deferred___block_invoke;
  v102 = &unk_1E8253F30;
  v103 = v10;
  v52 = v103;
  EMPrivacyProxyIsDisabledForNetwork();
  future = [v103 future];
  v12 = [future resultWithTimeout:0 error:5.0];
  successfulCopy = successful;
  bOOLValue = [v12 BOOLValue];

  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = batchCopy;
  v13 = [obj countByEnumeratingWithState:&v83 objects:v108 count:16];
  if (v13)
  {
    v14 = *v84;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v84 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v83 + 1) + 8 * i);
        v17 = [MEMORY[0x1E696AD68] requestWithURL:v16];
        [(EDRemoteContentManager *)self _getTimeout];
        v19 = v18;
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __95__EDRemoteContentManager__issueAndWaitForBatch_deferBlock_successful_failed_canceled_deferred___block_invoke_2;
        v74[3] = &unk_1E8256480;
        v82 = v18;
        v74[4] = v16;
        v79 = &v95;
        v80 = &v91;
        v81 = &v87;
        v20 = v62;
        v75 = v20;
        v21 = v58;
        v76 = v21;
        v22 = v60;
        v77 = v22;
        v78 = v61;
        v23 = [urlSession syntheticDataTaskWithRequest:v17 failOpen:bOOLValue background:1 completionHandler:v74];
        [v20 lock];
        [v21 setObject:v23 forKeyedSubscript:v16];
        v24 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
        [v22 setObject:v24 forKeyedSubscript:v23];

        [v20 unlock];
        [v23 resume];
      }

      v13 = [obj countByEnumeratingWithState:&v83 objects:v108 count:16];
    }

    while (v13);
  }

  v57 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v25 = arc4random() / 4294967300.0 * 10.0 + 5.0;
  while (1)
  {
    [v62 lock];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __95__EDRemoteContentManager__issueAndWaitForBatch_deferBlock_successful_failed_canceled_deferred___block_invoke_77;
    v72[3] = &unk_1E82564A8;
    v26 = v57;
    v73 = v26;
    v27 = [v60 keysOfEntriesPassingTest:v72];

    [v62 unlockWithCondition:{objc_msgSend(v61, "count")}];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v68 objects:v107 count:16];
    if (v29)
    {
      v30 = *v69;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v69 != v30)
          {
            objc_enumerationMutation(v28);
          }

          [*(*(&v68 + 1) + 8 * j) cancel];
        }

        v29 = [v28 countByEnumeratingWithState:&v68 objects:v107 count:16];
      }

      while (v29);
    }

    v32 = [obj count];
    v33 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v25];
    LOBYTE(v32) = [v62 lockWhenCondition:v32 beforeDate:v33];

    if (v32)
    {
      break;
    }

    if ((blockCopy[2]() & 1) != 0 || ([(EFManualCancelationToken *)self->_token isCanceled]& 1) != 0)
    {
      [v62 lock];
      v34 = [v61 copy];
      allKeys = [v60 allKeys];
      [v62 unlockWithCondition:{objc_msgSend(v61, "count")}];
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v36 = allKeys;
      v37 = [v36 countByEnumeratingWithState:&v64 objects:v104 count:16];
      if (v37)
      {
        v38 = *v65;
        do
        {
          for (k = 0; k != v37; ++k)
          {
            if (*v65 != v38)
            {
              objc_enumerationMutation(v36);
            }

            [urlSession abortTask:*(*(&v64 + 1) + 8 * k)];
          }

          v37 = [v36 countByEnumeratingWithState:&v64 objects:v104 count:16];
        }

        while (v37);
      }

      v40 = [v36 count];
      v41 = _ef_log_EDRemoteContentManager();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [v34 ef_map:&__block_literal_global_293];
        v43 = [v42 componentsJoinedByString:{@", "}];

        *buf = 138543362;
        v106 = v43;
        _os_log_impl(&dword_1C61EF000, v41, OS_LOG_TYPE_DEFAULT, "Did not finish requesting batch due to deferral, completed: %{public}@", buf, 0xCu);
      }

      goto LABEL_32;
    }
  }

  v34 = [v61 copy];
  [v62 unlock];
  v41 = _ef_log_EDRemoteContentManager();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [v34 ef_map:&__block_literal_global_293];
    v45 = [v44 componentsJoinedByString:{@", "}];

    *buf = 138543362;
    v106 = v45;
    _os_log_impl(&dword_1C61EF000, v41, OS_LOG_TYPE_DEFAULT, "Finished request batch for URLs: %{public}@", buf, 0xCu);
  }

  v40 = 0;
  v36 = v41;
LABEL_32:

  if (successfulCopy)
  {
    *successfulCopy = v96[3];
  }

  if (failed)
  {
    *failed = v88[3];
  }

  if (canceled)
  {
    *canceled = v92[3];
  }

  if (deferred)
  {
    *deferred = v40;
  }

  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);

  v46 = *MEMORY[0x1E69E9840];

  return v34;
}

void __95__EDRemoteContentManager__issueAndWaitForBatch_deferBlock_successful_failed_canceled_deferred___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v2 finishWithResult:?];
}

void __95__EDRemoteContentManager__issueAndWaitForBatch_deferBlock_successful_failed_canceled_deferred___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (![v7 length])
  {
    v14 = [v9 domain];
    if ([v14 isEqualToString:*MEMORY[0x1E696A978]])
    {
      v15 = [v9 code];

      if (v15 == -999)
      {
        v16 = _ef_log_EDRemoteContentManager();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = *(a1 + 96);
          v18 = *(a1 + 32);
          if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
          {
            v19 = [v18 absoluteString];
          }

          else
          {
            v31 = MEMORY[0x1E699B858];
            v32 = [v18 absoluteString];
            v19 = [v31 fullyRedactedStringForString:v32];
          }

          *buf = 134218242;
          v37 = v17;
          v38 = 2114;
          v39 = v19;
          _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_INFO, "Canceled URL with %.2fs timeout: %{public}@", buf, 0x16u);
        }

        v30 = *(a1 + 80);
LABEL_23:
        ++*(*(v30 + 8) + 24);
        goto LABEL_24;
      }
    }

    else
    {
    }

    v20 = _ef_log_EDRemoteContentManager();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 96);
      v22 = *(a1 + 32);
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
      {
        v23 = [v22 absoluteString];
      }

      else
      {
        v26 = MEMORY[0x1E699B858];
        v27 = [v22 absoluteString];
        v23 = [v26 fullyRedactedStringForString:v27];
      }

      v28 = v23;
      v29 = [v9 ef_publicDescription];
      *buf = 134218498;
      v37 = v21;
      v38 = 2114;
      v39 = v28;
      v40 = 2114;
      v41 = v29;
      _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_INFO, "Failed to request URL with %.2fs timeout: %{public}@ -- due to error: %{public}@", buf, 0x20u);
    }

    v30 = *(a1 + 88);
    goto LABEL_23;
  }

  v10 = _ef_log_EDRemoteContentManager();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 96);
    v12 = *(a1 + 32);
    if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
    {
      v13 = [v12 absoluteString];
    }

    else
    {
      v24 = MEMORY[0x1E699B858];
      v25 = [v12 absoluteString];
      v13 = [v24 fullyRedactedStringForString:v25];
    }

    *buf = 134218242;
    v37 = v11;
    v38 = 2114;
    v39 = v13;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_INFO, "Requested URL with %.2fs timeout: %{public}@", buf, 0x16u);
  }

  v35 = v7;
  AnalyticsSendEventLazy();
  ++*(*(*(a1 + 72) + 8) + 24);

LABEL_24:
  [*(a1 + 40) lock];
  v33 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 32)];
  [*(a1 + 56) removeObjectForKey:v33];
  [*(a1 + 64) addObject:*(a1 + 32)];

  [*(a1 + 40) unlockWithCondition:{objc_msgSend(*(a1 + 64), "count")}];
  v34 = *MEMORY[0x1E69E9840];
}

id __95__EDRemoteContentManager__issueAndWaitForBatch_deferBlock_successful_failed_canceled_deferred___block_invoke_72(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"dataSize";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "length")}];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

BOOL __95__EDRemoteContentManager__issueAndWaitForBatch_deferBlock_successful_failed_canceled_deferred___block_invoke_77(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) timeIntervalSinceNow];
  v6 = v5;
  [v4 doubleValue];
  v8 = v7 < -v6;

  return v8;
}

- (EFScheduler)unconditionalRequestScheduler
{
  unconditionalRequestScheduler = self->_unconditionalRequestScheduler;
  if (!unconditionalRequestScheduler)
  {
    v4 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EDRemoteContentManager.unconditionalRequestScheduler"];
    v5 = self->_unconditionalRequestScheduler;
    self->_unconditionalRequestScheduler = v4;

    unconditionalRequestScheduler = self->_unconditionalRequestScheduler;
  }

  return unconditionalRequestScheduler;
}

- (id)_requestSchedulerWithInterval:(double)interval
{
  requestSchedulerBlock = [(EDRemoteContentManager *)self requestSchedulerBlock];
  v5 = requestSchedulerBlock;
  if (!requestSchedulerBlock || ((*(requestSchedulerBlock + 16))(requestSchedulerBlock), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AAD0]) initWithIdentifier:@"com.apple.email.EDRemoteContentManager.requestScheduler"];
    [v6 setQualityOfService:9];
    [v6 setRepeats:0];
    [v6 setInterval:interval];
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v7, *MEMORY[0x1E69E9C40], 0);
    xpc_dictionary_set_BOOL(v7, *MEMORY[0x1E69E9DB0], 1);
    [v6 _setAdditionalXPCActivityProperties:v7];
  }

  return v6;
}

- (BOOL)shouldAddRemoteContentLinksForMessage:(id)message logMessage:(id *)logMessage
{
  messageCopy = message;
  mailbox = [messageCopy mailbox];
  type = [mailbox type];

  if ((type > 8 || ((1 << type) & 0x17A) == 0) && type != -500 && type != -100)
  {
    dateReceived = [messageCopy dateReceived];
    v9 = [(EDRemoteContentManager *)self shouldAddRemoteContentLinksForMessageWithDateReceived:dateReceived];
    if (v9)
    {
      if (logMessage)
      {
        v11 = 0;
LABEL_13:
        *logMessage = v11;
      }
    }

    else if (logMessage)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"message is too old: %@", dateReceived];
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v9 = 0;
  if (logMessage)
  {
    *logMessage = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"wrong mailbox type: %ld", type];
  }

LABEL_15:

  return v9;
}

- (BOOL)shouldVerifyRemoteLinks
{
  v3 = 1;
  if (([MEMORY[0x1E699ACE8] preferenceEnabled:9] & 1) == 0)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 1;
    remoteLinkVerificationTimes = self->_remoteLinkVerificationTimes;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__EDRemoteContentManager_shouldVerifyRemoteLinks__block_invoke;
    v6[3] = &unk_1E82564D0;
    v6[4] = &v7;
    [(EFLocked *)remoteLinkVerificationTimes performWhileLocked:v6];
    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

void __49__EDRemoteContentManager_shouldVerifyRemoteLinks__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count] >= 0xA)
  {
    v3 = [v4 firstObject];
    if (([v3 ef_isMoreThanTimeIntervalAgo:86400.0] & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }
}

- (void)_addRemoteContentLinks:(id)links andVerify:(BOOL)verify WithParsedLinks:(id)parsedLinks defaultCharsetName:(id)name
{
  linksCopy = links;
  parsedLinksCopy = parsedLinks;
  backgroundWorkScheduler = [(EDRemoteContentManager *)self backgroundWorkScheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__EDRemoteContentManager__addRemoteContentLinks_andVerify_WithParsedLinks_defaultCharsetName___block_invoke;
  v14[3] = &unk_1E8255940;
  v14[4] = self;
  v12 = linksCopy;
  v15 = v12;
  verifyCopy = verify;
  v13 = parsedLinksCopy;
  v16 = v13;
  [backgroundWorkScheduler performBlock:v14];
}

void __94__EDRemoteContentManager__addRemoteContentLinks_andVerify_WithParsedLinks_defaultCharsetName___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  if (([*(*(a1 + 32) + 48) isCanceled] & 1) == 0)
  {
    v51 = *(a1 + 40);
    v50 = [*(a1 + 40) indexesOfObjectsPassingTest:&__block_literal_global_97_0];
    if ([v50 count])
    {
      v2 = [*(a1 + 40) mutableCopy];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __94__EDRemoteContentManager__addRemoteContentLinks_andVerify_WithParsedLinks_defaultCharsetName___block_invoke_3;
      v61[3] = &unk_1E8255C80;
      v62 = *(a1 + 40);
      v3 = v2;
      v63 = v3;
      [v50 enumerateIndexesUsingBlock:v61];
      v4 = v3;

      v5 = v4;
    }

    else
    {
      v5 = v51;
    }

    v52 = v5;
    [*(a1 + 32) addRemoteContentLinks:? requiredParsing:?];
    v6 = _ef_log_EDRemoteContentManager();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v52;
      v8 = [v7 ef_map:&__block_literal_global_293];
      v9 = [v8 componentsJoinedByString:{@", "}];

      *buf = 138543362;
      v65 = v9;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Added URLs: %{public}@", buf, 0xCu);
    }

    if (*(a1 + 56) != 1)
    {
      goto LABEL_36;
    }

    v49 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v52];
    v46 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:*(a1 + 48)];
    if ([v49 isEqualToSet:?])
    {
      goto LABEL_31;
    }

    v10 = [v49 ef_setByRemovingObjectsFromSet:v46];
    v47 = [v46 ef_setByRemovingObjectsFromSet:v49];
    if ([v10 count] == 1 && objc_msgSend(v47, "count") == 1)
    {
      v11 = [v10 anyObject];
      v12 = [v47 anyObject];
      v13 = [v12 scheme];
      if ([v11 ef_hasScheme:v13])
      {
        v14 = [v12 host];
        v15 = [v11 ef_hasHost:v14];

        if (v15)
        {

LABEL_31:
          v37 = _ef_log_EDRemoteContentManager();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C61EF000, v37, OS_LOG_TYPE_DEFAULT, "Verification: URLs match parsed URLs", buf, 2u);
          }

          v35 = 0;
          v36 = 0;
          goto LABEL_34;
        }
      }

      else
      {
      }

      v35 = v10;
      v36 = v47;
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v17 = v10;
      v18 = [v17 countByEnumeratingWithState:&v57 objects:v68 count:16];
      if (v18)
      {
        v19 = *v58;
        do
        {
          v20 = 0;
          do
          {
            if (*v58 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v57 + 1) + 8 * v20);
            v22 = [v21 ef_caseNormalizedURL];

            if (v22)
            {
              v23 = [v21 ef_caseNormalizedURL];
              [v16 setObject:v21 forKeyedSubscript:v23];
            }

            else
            {
              v23 = _ef_log_EDRemoteContentManager();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                v24 = v21;
                if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
                {
                  v25 = [v24 absoluteString];
                }

                else
                {
                  v26 = MEMORY[0x1E699B858];
                  v27 = [v24 absoluteString];
                  v25 = [v26 fullyRedactedStringForString:v27];
                }

                v28 = v25;
                v29 = [v24 scheme];
                *buf = 138543618;
                v65 = v28;
                v66 = 2114;
                v67 = v29;
                _os_log_error_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_ERROR, "Invalid extra URL: %{public}@ with scheme: %{public}@", buf, 0x16u);
              }
            }

            ++v20;
          }

          while (v18 != v20);
          v30 = [v17 countByEnumeratingWithState:&v57 objects:v68 count:16];
          v18 = v30;
        }

        while (v30);
      }

      v31 = [v17 mutableCopy];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __94__EDRemoteContentManager__addRemoteContentLinks_andVerify_WithParsedLinks_defaultCharsetName___block_invoke_107;
      v54[3] = &unk_1E8256518;
      v32 = v16;
      v55 = v32;
      v33 = v31;
      v56 = v33;
      v34 = [v47 ef_filter:v54];

      v35 = [v33 ef_notEmpty];

      v36 = [v34 ef_notEmpty];

      if (!(v35 | v36))
      {
        goto LABEL_31;
      }
    }

    if ([v35 count])
    {
      v39 = _ef_log_EDRemoteContentManager();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = [v35 allObjects];
        v41 = [v40 ef_map:&__block_literal_global_293];
        v42 = [v41 componentsJoinedByString:{@", "}];

        *buf = 138543362;
        v65 = v42;
        _os_log_error_impl(&dword_1C61EF000, v39, OS_LOG_TYPE_ERROR, "Verification: Extra URLs: %{public}@", buf, 0xCu);
      }
    }

    if (![v36 count])
    {
      goto LABEL_35;
    }

    v37 = _ef_log_EDRemoteContentManager();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v43 = [v36 allObjects];
      v44 = [v43 ef_map:&__block_literal_global_293];
      v45 = [v44 componentsJoinedByString:{@", "}];

      *buf = 138543362;
      v65 = v45;
      _os_log_error_impl(&dword_1C61EF000, v37, OS_LOG_TYPE_ERROR, "Verification: Missed URLs: %{public}@", buf, 0xCu);
    }

LABEL_34:
LABEL_35:
    v53 = v35;
    v48 = v36;
    AnalyticsSendEventLazy();
    [*(*(a1 + 32) + 56) performWhileLocked:&__block_literal_global_124];

LABEL_36:
  }

  v38 = *MEMORY[0x1E69E9840];
}

uint64_t __94__EDRemoteContentManager__addRemoteContentLinks_andVerify_WithParsedLinks_defaultCharsetName___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 ef_hasScheme:@"http"])
  {
    v3 = [MEMORY[0x1E69853A0] _willUpgradeToHTTPS:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __94__EDRemoteContentManager__addRemoteContentLinks_andVerify_WithParsedLinks_defaultCharsetName___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [v5 ef_urlByReplacingSchemeWithScheme:@"https"];
  [*(a1 + 40) setObject:v4 atIndexedSubscript:a2];
}

uint64_t __94__EDRemoteContentManager__addRemoteContentLinks_andVerify_WithParsedLinks_defaultCharsetName___block_invoke_107(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 ef_caseNormalizedURL];
  if (v4 && ([*(a1 + 32) objectForKeyedSubscript:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    [*(a1 + 40) removeObject:v4];
    v6 = 0;
  }

  else
  {
    v7 = _ef_log_EDRemoteContentManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v3;
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:10])
      {
        v9 = [v8 absoluteString];
      }

      else
      {
        v10 = MEMORY[0x1E699B858];
        v11 = [v8 absoluteString];
        v9 = [v10 fullyRedactedStringForString:v11];
      }

      v12 = v9;
      v13 = [v8 scheme];
      __94__EDRemoteContentManager__addRemoteContentLinks_andVerify_WithParsedLinks_defaultCharsetName___block_invoke_107_cold_1(v12, v13, v16, v7);
    }

    v6 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

id __94__EDRemoteContentManager__addRemoteContentLinks_andVerify_WithParsedLinks_defaultCharsetName___block_invoke_112(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"hadMismatches";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v9[0] = v2;
  v8[1] = @"extraCount";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v9[1] = v3;
  v8[2] = @"missedCount";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
  v9[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void __94__EDRemoteContentManager__addRemoteContentLinks_andVerify_WithParsedLinks_defaultCharsetName___block_invoke_2_122(uint64_t a1, void *a2)
{
    ;
  }

  v2 = [MEMORY[0x1E695DF00] date];
  [i addObject:v2];
}

- (void)addRemoteContentLinks:(id)links requiredParsing:(BOOL)parsing
{
  v19 = *MEMORY[0x1E69E9840];
  linksCopy = links;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) == 0)
  {
    remoteContentPersistence = [(EDRemoteContentManager *)self remoteContentPersistence];
    v16 = 0;
    [remoteContentPersistence addRemoteContentLinks:linksCopy newLinks:&v16];
    v7 = v16;

    v14 = MEMORY[0x1E69E9820];
    v8 = linksCopy;
    v15 = v8;
    v9 = v7;
    AnalyticsSendEventLazy();
    [(EDRemoteContentManager *)self _scheduleBackgroundRequests:v14];
    v10 = _ef_log_EDRemoteContentManager();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 ef_map:&__block_literal_global_293];
      v12 = [v11 componentsJoinedByString:{@", "}];

      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Parsed and added URLs: %{public}@", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

id __64__EDRemoteContentManager_addRemoteContentLinks_requiredParsing___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"remoteContentLinks";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v9[0] = v2;
  v8[1] = @"newRemoteContentLinks";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
  v9[1] = v3;
  v8[2] = @"requiredParsing";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v9[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (double)_getTimeout
{
  os_unfair_lock_lock(&self->_timeoutLock);
  timeoutLastUpdate = [(EDRemoteContentManager *)self timeoutLastUpdate];

  if (!timeoutLastUpdate || (-[EDRemoteContentManager timeoutLastUpdate](self, "timeoutLastUpdate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 ef_isMoreThanTimeIntervalAgo:86400.0], v4, v5))
  {
    [(EDRemoteContentManager *)self _updateTimeoutSettingDefaultIfNeeded:timeoutLastUpdate == 0];
  }

  [(EDRemoteContentManager *)self minimumTimeout];
  v7 = v6;
  [(EDRemoteContentManager *)self maximumTimeout];
  v9 = v8;
  os_unfair_lock_unlock(&self->_timeoutLock);
  if (v9 < v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"double EFARC4RandomDoubleInRange(double, double)"}];
    [currentHandler handleFailureInFunction:v12 file:@"EFMathUtilities.h" lineNumber:54 description:@"max must not be less than min"];
  }

  return v7 + (v9 - v7) * (arc4random() / 4294967300.0);
}

- (void)_updateTimeoutSettingDefaultIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v32 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [(EDRemoteContentManager *)self setTimeoutLastUpdate:v5];

  _viewDurationsFromBiome = [(EDRemoteContentManager *)self _viewDurationsFromBiome];
  if (!_viewDurationsFromBiome)
  {
    v7 = _ef_log_EDRemoteContentManager();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [EDRemoteContentManager _updateTimeoutSettingDefaultIfNeeded:v7];
    }
  }

  if ([_viewDurationsFromBiome count] > 9)
  {
    v10 = arc4random_uniform(3u);
    v11 = v10;
    if (v10 - 1 >= 2)
    {
      v20 = 0.0;
      v19 = 0.0;
      if (v10)
      {
LABEL_23:
        [(EDRemoteContentManager *)self setMinimumTimeout:fmax(v19, 2.0), *v31, *&v31[16], *&v31[32], v32];
        [(EDRemoteContentManager *)self setMaximumTimeout:fmax(v20, 2.0)];
        goto LABEL_24;
      }

      ef_min = [_viewDurationsFromBiome ef_min];
      [ef_min doubleValue];
      v19 = v27;

      ef_max = [_viewDurationsFromBiome ef_max];
      [ef_max doubleValue];
      v20 = v29;

      v21 = _ef_log_EDRemoteContentManager();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 134218240;
        *&v31[4] = v19;
        *&v31[12] = 2048;
        *&v31[14] = v20;
        v23 = "Updating timeout values based on min and max: (%f, %f)";
        v24 = v21;
        v25 = 22;
LABEL_21:
        _os_log_impl(&dword_1C61EF000, v24, OS_LOG_TYPE_DEFAULT, v23, v31, v25);
      }
    }

    else
    {
      ef_mean = [_viewDurationsFromBiome ef_mean];
      [ef_mean doubleValue];
      v14 = v13;

      ef_standardDeviation = [_viewDurationsFromBiome ef_standardDeviation];
      [ef_standardDeviation doubleValue];
      v17 = v16;

      v18 = v17 * v11;
      v19 = v14 - v18;
      v20 = v14 + v18;
      v21 = _ef_log_EDRemoteContentManager();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = @"s";
        *v31 = 67109890;
        *&v31[4] = v11;
        *&v31[8] = 2114;
        if (v11 == 1)
        {
          v22 = &stru_1F45B4608;
        }

        *&v31[10] = v22;
        *&v31[18] = 2048;
        *&v31[20] = v19;
        *&v31[28] = 2048;
        *&v31[30] = v20;
        v23 = "Updating timeout values based on mean and %u standard deviation%{public}@: (%f, %f)";
        v24 = v21;
        v25 = 38;
        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  v8 = _ef_log_EDRemoteContentManager();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (neededCopy)
  {
    if (v9)
    {
      *v31 = 0;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Using default timeout values", v31, 2u);
    }

    [(EDRemoteContentManager *)self setMinimumTimeout:2.0];
    [(EDRemoteContentManager *)self setMaximumTimeout:600.0];
  }

  else
  {
    if (v9)
    {
      *v31 = 0;
      _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Leaving timeout values unchanged", v31, 2u);
    }
  }

LABEL_24:

  v30 = *MEMORY[0x1E69E9840];
}

- (id)_viewDurationsFromBiome
{
  v2 = [MEMORY[0x1E699AC20] url];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E698F130];
    path = [v2 path];
    v6 = [v4 newPrivateStreamDefaultConfigurationWithStoreBasePath:path];

    v7 = objc_alloc(MEMORY[0x1E698F318]);
    v8 = [v7 initWithPrivateStreamIdentifier:*MEMORY[0x1E699AF50] storeConfig:v6];
    v9 = [v8 publisherFromStartTime:CFAbsoluteTimeGetCurrent() + -604800.0];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__35;
    v19 = __Block_byref_object_dispose__35;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__EDRemoteContentManager__viewDurationsFromBiome__block_invoke;
    v14[3] = &unk_1E8256588;
    v14[4] = &v15;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__EDRemoteContentManager__viewDurationsFromBiome__block_invoke_2;
    v13[3] = &unk_1E82565B0;
    v13[4] = &v15;
    v10 = [v9 sinkWithCompletion:v14 receiveInput:v13];
    v11 = v16[5];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __49__EDRemoteContentManager__viewDurationsFromBiome__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 state])
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __49__EDRemoteContentManager__viewDurationsFromBiome__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = [a2 eventBody];
  v3 = [v7 eventName];
  v4 = [v3 isEqualToString:*MEMORY[0x1E699AF70]];

  if (v4)
  {
    v5 = [v7 payload];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E699AF90]];
    if (v6)
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
    }
  }
}

- (void)noteViewOfRemoteContentLinks:(id)links
{
  linksCopy = links;
  v5 = _os_activity_create(&dword_1C61EF000, "[EDRemoteContentManager noteViewOfRemoteContentLinks:]", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  if ([linksCopy count])
  {
    backgroundWorkScheduler = [(EDRemoteContentManager *)self backgroundWorkScheduler];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __55__EDRemoteContentManager_noteViewOfRemoteContentLinks___block_invoke;
    v16 = &unk_1E8250128;
    v7 = linksCopy;
    v17 = v7;
    selfCopy = self;
    [backgroundWorkScheduler performBlock:&v13];

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    if (([processInfo isLowPowerModeEnabled] & 1) == 0)
    {
      external = [MEMORY[0x1E699B828] external];
      if (![external isConstrained])
      {
        v10 = arc4random_uniform(4u);

        if (!v10)
        {
          v11 = [v7 count];
          if (v11 >= 6)
          {
            EFARC4NormallyDistributedRandomDoubleInRange();
            v11 = v12;
          }

          EFARC4NormallyDistributedRandomDoubleWithMinimum();
          [(EDRemoteContentManager *)self _scheduleRequestForLinks:v11 unconditionally:1 withDelay:0 completionHandler:?];
        }

        goto LABEL_6;
      }
    }

LABEL_6:
  }

  os_activity_scope_leave(&state);
}

void __55__EDRemoteContentManager_noteViewOfRemoteContentLinks___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _ef_log_EDRemoteContentManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 ef_map:&__block_literal_global_293];
    v5 = [v4 componentsJoinedByString:{@", "}];

    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_DEFAULT, "Viewed URLs: %{public}@", &v8, 0xCu);
  }

  v6 = [*(a1 + 40) remoteContentPersistence];
  [v6 updateRequestCountForRemoteContentLinks:*(a1 + 32) updateLastSeen:1];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDRemoteContentManager.m" lineNumber:906 description:{@"%s can only be called from unit tests", "-[EDRemoteContentManager test_tearDown]"}];
  }

  [(EFManualCancelationToken *)self->_token cancel];
  backgroundWorkScheduler = [(EDRemoteContentManager *)self backgroundWorkScheduler];
  [backgroundWorkScheduler performSyncBlock:&__block_literal_global_155];

  os_unfair_lock_lock(&self->_requestSchedulerLock);
  [(NSBackgroundActivityScheduler *)self->_requestScheduler invalidate];
  os_unfair_lock_unlock(&self->_requestSchedulerLock);
  [(NSLock *)self->_requestLock lock];
  requestLock = self->_requestLock;

  [(NSLock *)requestLock unlock];
}

- (EDRemoteContentManagerTestDelegate)testDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testDelegate);

  return WeakRetained;
}

void __94__EDRemoteContentManager__addRemoteContentLinks_andVerify_WithParsedLinks_defaultCharsetName___block_invoke_107_cold_1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Invalid missedLink URL: %{public}@ with scheme: %{public}@", buf, 0x16u);
}

@end