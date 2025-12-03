@interface FPDSharedSystemScheduler
+ (BOOL)_backgroundTaskCriteriaEqualWithFirst:(id)first second:(id)second;
+ (BOOL)disableDelayedUnregistration;
+ (BOOL)runIfAllowedOneSchedulerOf:(id)of cb:(id)cb;
+ (OS_dispatch_queue)queue;
+ (id)schedulerWithLabel:(id)label;
+ (void)checkIn;
+ (void)setDisableDelayedUnregistration:(BOOL)unregistration;
- (BOOL)canRunCheckingDeferral:(BOOL)deferral reason:(id *)reason;
- (BOOL)hasRegisteredExecutors;
- (BOOL)isRegistered;
- (BOOL)isRunning;
- (BOOL)runIfPossible:(id)possible;
- (BOOL)shouldPause;
- (FPDSharedSystemScheduler)initWithLabel:(id)label options:(int64_t)options taskRequestBuilder:(id)builder;
- (FPDSharedSystemScheduler)initWithTaskRequest:(id)request options:(int64_t)options;
- (NSDate)lastDeferralDate;
- (NSDate)lastRegistrationDate;
- (NSDate)lastTriggerDate;
- (NSDate)lastUsageDate;
- (id)buildNewTaskRequest;
- (id)description;
- (id)forceRunningWithReason:(id)reason;
- (int64_t)_contextForActivity:(id)activity;
- (int64_t)dasContext;
- (void)addWatcher:(id)watcher;
- (void)cancelDelayedUnregistration;
- (void)checkIn;
- (void)completeActivity;
- (void)defer;
- (void)markWatcherDone:(id)done;
- (void)notifyCanRun;
- (void)notifyIsDeferred;
- (void)registerActivity;
- (void)registerActivityIfNeeded;
- (void)removeWatcher:(id)watcher;
- (void)setManualScheduling:(BOOL)scheduling;
- (void)setPreventRunning:(BOOL)running;
- (void)unregisterActivityImmediately;
- (void)unregisterActivityWithDelay;
- (void)unregisterActivityWithDelayIfNeeded;
- (void)withReevaluationOfSchedulingState:(id)state;
@end

@implementation FPDSharedSystemScheduler

- (void)unregisterActivityWithDelayIfNeeded
{
  v3 = +[FPDSharedSystemScheduler queue];
  dispatch_assert_queue_V2(v3);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  registrationUUID = selfCopy->_registrationUUID;
  objc_sync_exit(selfCopy);

  if (registrationUUID)
  {
    keyEnumerator = [(NSMapTable *)selfCopy->_watchers keyEnumerator];
    nextObject = [keyEnumerator nextObject];

    if (!nextObject)
    {

      [(FPDSharedSystemScheduler *)selfCopy unregisterActivityWithDelay];
    }
  }
}

+ (OS_dispatch_queue)queue
{
  if (queue_onceToken != -1)
  {
    +[FPDSharedSystemScheduler queue];
  }

  v3 = queue_schedulerQueue;

  return v3;
}

- (void)cancelDelayedUnregistration
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = +[FPDSharedSystemScheduler queue];
  dispatch_assert_queue_V2(v3);

  if (self->_unregistrationTimer)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      taskLabel = [(FPDSharedSystemScheduler *)self taskLabel];
      v8 = 138543362;
      v9 = taskLabel;
      _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: canceling delayed unregistration", &v8, 0xCu);
    }

    dispatch_activate(self->_unregistrationTimer);
    dispatch_source_cancel(self->_unregistrationTimer);
    unregistrationTimer = self->_unregistrationTimer;
    self->_unregistrationTimer = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)registerActivityIfNeeded
{
  v3 = +[FPDSharedSystemScheduler queue];
  dispatch_assert_queue_V2(v3);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  registrationUUID = selfCopy->_registrationUUID;
  objc_sync_exit(selfCopy);

  if (!registrationUUID)
  {
    keyEnumerator = [(NSMapTable *)selfCopy->_watchers keyEnumerator];
    nextObject = [keyEnumerator nextObject];

    if (nextObject)
    {

      [(FPDSharedSystemScheduler *)selfCopy registerActivity];
    }
  }
}

- (void)registerActivity
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_manualScheduling && ![(FPDSharedSystemScheduler *)self isRegistered]&& allowedToCheckIn == 1)
  {
    wasCheckedIn = self->_wasCheckedIn;
    if (wasCheckedIn)
    {
      v4 = 0;
    }

    else
    {
      keyEnumerator = [(NSMapTable *)self->_watchers keyEnumerator];
      nextObject = [keyEnumerator nextObject];
      v4 = nextObject == 0;
    }

    self->_wasCheckedIn = 1;
    taskLabel = [(FPDSharedSystemScheduler *)self taskLabel];
    v8 = objc_opt_new();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!v4)
    {
      objc_storeStrong(&selfCopy->_registrationUUID, v8);
    }

    v10 = [MEMORY[0x1E695DF00] now];
    lastRegistrationDate = selfCopy->_lastRegistrationDate;
    selfCopy->_lastRegistrationDate = v10;

    objc_sync_exit(selfCopy);
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      taskLabel2 = [(FPDSharedSystemScheduler *)selfCopy taskLabel];
      v14 = "checking-in";
      *buf = 138543874;
      v22 = taskLabel2;
      if (wasCheckedIn)
      {
        v14 = "registering";
      }

      v23 = 2080;
      v24 = v14;
      v25 = 2114;
      v26 = v8;
      _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: %s background task (uuid=%{public}@)", buf, 0x20u);
    }

    objc_initWeak(buf, selfCopy);
    ++selfCopy->_registrationCount;
    if (internalQueueForBGST_onceToken != -1)
    {
      [FPDSharedSystemScheduler completeActivity];
    }

    v15 = internalQueueForBGST_bgstQueue;
    objc_copyWeak(&v19, buf);
    v17 = taskLabel;
    v18 = v8;
    v20 = v4;
    fp_dispatch_async_with_logs();

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRegistered
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_registrationUUID != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

void __44__FPDSharedSystemScheduler_registerActivity__block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698E4B8] sharedScheduler];
  v3 = [*(a1 + 32) taskLabel];
  if (internalQueueForBGST_onceToken != -1)
  {
    __44__FPDSharedSystemScheduler_registerActivity__block_invoke_cold_1();
  }

  v4 = internalQueueForBGST_bgstQueue;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __44__FPDSharedSystemScheduler_registerActivity__block_invoke_2;
  v39[3] = &unk_1E83BFF08;
  objc_copyWeak(&v42, (a1 + 56));
  v40 = *(a1 + 40);
  v41 = *(a1 + 48);
  [v2 registerForTaskWithIdentifier:v3 usingQueue:v4 launchHandler:v39];

  if (*(a1 + 64) == 1)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 32);
      *buf = 138543362;
      v46 = v6;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: Background task has no executors at check in", buf, 0xCu);
    }

    v7 = [MEMORY[0x1E698E4B8] sharedScheduler];
    v8 = [*(a1 + 32) taskLabel];
    [v7 cancelTaskRequestWithIdentifier:v8 error:0];

    v9 = [MEMORY[0x1E698E4B8] sharedScheduler];
    v10 = [*(a1 + 32) taskLabel];
    [v9 deregisterTaskWithIdentifier:v10];
    goto LABEL_33;
  }

  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) taskLabel];
    v13 = *(a1 + 48);
    *buf = 138543618;
    v46 = v12;
    v47 = 2114;
    v48 = v13;
    _os_log_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: done registering background task (uuid=%{public}@)", buf, 0x16u);
  }

  v14 = [MEMORY[0x1E698E4B8] sharedScheduler];
  v15 = [*(a1 + 32) taskLabel];
  v9 = [v14 taskRequestForIdentifier:v15];

  if (!v9)
  {
LABEL_20:
    v10 = [*(a1 + 32) buildNewTaskRequest];
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [*(a1 + 32) taskLabel];
      *v43 = 138543362;
      v44 = v27;
      _os_log_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: submitting background task", v43, 0xCu);
    }

    v28 = [MEMORY[0x1E698E4B8] sharedScheduler];
    v37 = 0;
    v29 = [v28 submitTaskRequest:v10 error:&v37];
    v30 = v37;

    if (v29)
    {
      goto LABEL_32;
    }

    v31 = [v30 domain];
    if ([v31 isEqualToString:*MEMORY[0x1E698E460]])
    {
      v32 = [v30 code] == 5;

      if (v32)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    else
    {
    }

    v34 = fp_current_or_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [v30 fp_prettyDescription];
      __44__FPDSharedSystemScheduler_registerActivity__block_invoke_cold_3(v35, v43, v34);
    }

    goto LABEL_32;
  }

  if ([*(a1 + 32) forceCriteria])
  {
    v16 = [*(a1 + 32) buildNewTaskRequest];
    if (![FPDSharedSystemScheduler _backgroundTaskCriteriaEqualWithFirst:v9 second:v16])
    {
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [*(a1 + 32) taskLabel];
        *buf = 138543362;
        v46 = v18;
        _os_log_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_INFO, "[INFO] ⏱ Background task %{public}@ already exists, force re-registering with new criteria", buf, 0xCu);
      }

      v19 = [MEMORY[0x1E698E4B8] sharedScheduler];
      v20 = [*(a1 + 32) taskLabel];
      v38 = 0;
      v21 = [v19 cancelTaskRequestWithIdentifier:v20 error:&v38];
      v22 = v38;

      if ((v21 & 1) == 0)
      {
        v23 = fp_current_or_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = [*(a1 + 32) taskLabel];
          v25 = [v22 fp_prettyDescription];
          __44__FPDSharedSystemScheduler_registerActivity__block_invoke_cold_2(v24, v25, buf, v23);
        }
      }
    }

    goto LABEL_20;
  }

  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v33 = [*(a1 + 32) taskLabel];
    *buf = 138543362;
    v46 = v33;
    _os_log_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_INFO, "[INFO] ⏱ Background task %{public}@ already exists, but force-criteria was not specified, skipping re-submit", buf, 0xCu);
  }

LABEL_33:

  objc_destroyWeak(&v42);
  v36 = *MEMORY[0x1E69E9840];
}

- (void)unregisterActivityWithDelay
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = +[FPDSharedSystemScheduler queue];
  dispatch_assert_queue_V2(v3);

  if (+[FPDSharedSystemScheduler disableDelayedUnregistration]|| (self->_options & 2) != 0)
  {
    v12 = *MEMORY[0x1E69E9840];

    [(FPDSharedSystemScheduler *)self unregisterActivityImmediately];
  }

  else
  {
    if (!self->_unregistrationTimer)
    {
      v4 = fp_current_or_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        taskLabel = [(FPDSharedSystemScheduler *)self taskLabel];
        *buf = 138543362;
        v15 = taskLabel;
        _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: delaying unregistration", buf, 0xCu);
      }

      v6 = +[FPDSharedSystemScheduler queue];
      v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v6);

      v8 = dispatch_time(0, 60000000000);
      dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x6FC23AC00uLL);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __55__FPDSharedSystemScheduler_unregisterActivityWithDelay__block_invoke;
      handler[3] = &unk_1E83BE068;
      handler[4] = self;
      dispatch_source_set_event_handler(v7, handler);
      dispatch_activate(v7);
      unregistrationTimer = self->_unregistrationTimer;
      self->_unregistrationTimer = v7;
      v10 = v7;
    }

    v11 = *MEMORY[0x1E69E9840];
  }
}

+ (BOOL)disableDelayedUnregistration
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = disableDelayedUnregistrationStorage;
  objc_sync_exit(v2);

  return v3;
}

- (id)buildNewTaskRequest
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  v3 = +[FPDSharedSystemScheduler queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__FPDSharedSystemScheduler_buildNewTaskRequest__block_invoke;
  v6[3] = &unk_1E83BF3B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __47__FPDSharedSystemScheduler_buildNewTaskRequest__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = (*(*(*(a1 + 32) + 16) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [*(*(a1 + 32) + 40) keyEnumerator];
  v6 = [v5 allObjects];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {
    v9 = v6;
    goto LABEL_20;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v19;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      if ([v12 conformsToProtocol:&unk_1F4C8C3F0])
      {
        v13 = v12;
        if ([v13 selectedForRunning])
        {

          v9 = v13;
          goto LABEL_17;
        }

        if ([v13 preparedForRunning])
        {
          if (!v9 || ([v9 lastSelectionDate], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "lastSelectionDate"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v14 > v15))
          {
            v16 = v13;

            v9 = v16;
          }
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_17:

  if (v9)
  {
    [v9 provideAdditionalRequestParameters:*(*(*(a1 + 40) + 8) + 40)];
LABEL_20:
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __33__FPDSharedSystemScheduler_queue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.fileproviderd.background-scheduler", v2);
  v1 = queue_schedulerQueue;
  queue_schedulerQueue = v0;
}

+ (void)setDisableDelayedUnregistration:(BOOL)unregistration
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  disableDelayedUnregistrationStorage = unregistration;
  objc_sync_exit(obj);
}

+ (void)checkIn
{
  v2 = +[FPDSharedSystemScheduler queue];
  dispatch_sync(v2, &__block_literal_global_3);
}

void __35__FPDSharedSystemScheduler_checkIn__block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  allowedToCheckIn = 1;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v0 = schedulers();
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v7;
    do
    {
      v4 = 0;
      do
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v0);
        }

        [*(*(&v6 + 1) + 8 * v4++) checkIn];
      }

      while (v2 != v4);
      v2 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v2);
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)schedulerWithLabel:(id)label
{
  labelCopy = label;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v4 = +[FPDSharedSystemScheduler queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__FPDSharedSystemScheduler_schedulerWithLabel___block_invoke;
  v8[3] = &unk_1E83BF3D8;
  v9 = labelCopy;
  v10 = &v11;
  v5 = labelCopy;
  dispatch_sync(v4, v8);

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __47__FPDSharedSystemScheduler_schedulerWithLabel___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = schedulers();
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7[4] isEqualToString:{*(a1 + 32), v9}])
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
}

- (FPDSharedSystemScheduler)initWithLabel:(id)label options:(int64_t)options taskRequestBuilder:(id)builder
{
  labelCopy = label;
  builderCopy = builder;
  v24.receiver = self;
  v24.super_class = FPDSharedSystemScheduler;
  v11 = [(FPDSharedSystemScheduler *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_label, label);
    v13 = _Block_copy(builderCopy);
    criteriaBuilder = v12->_criteriaBuilder;
    v12->_criteriaBuilder = v13;

    v12->_options = options;
    registrationUUID = v12->_registrationUUID;
    v12->_registrationUUID = 0;

    v16 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:517 valueOptions:0 capacity:10];
    watchers = v12->_watchers;
    v12->_watchers = v16;

    v18 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
    labelCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"bypass.%@", labelCopy];
    if ([v18 BOOLForKey:labelCopy])
    {
      ++v12->_alwaysRunnableCount;
    }

    v20 = +[FPDSharedSystemScheduler queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__FPDSharedSystemScheduler_initWithLabel_options_taskRequestBuilder___block_invoke;
    block[3] = &unk_1E83BE068;
    v23 = v12;
    dispatch_sync(v20, block);
  }

  return v12;
}

uint64_t __69__FPDSharedSystemScheduler_initWithLabel_options_taskRequestBuilder___block_invoke(uint64_t a1)
{
  v2 = schedulers();
  [v2 addObject:*(a1 + 32)];

  v3 = *(a1 + 32);

  return [v3 registerActivity];
}

- (FPDSharedSystemScheduler)initWithTaskRequest:(id)request options:(int64_t)options
{
  requestCopy = request;
  identifier = [requestCopy identifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__FPDSharedSystemScheduler_initWithTaskRequest_options___block_invoke;
  v11[3] = &unk_1E83BFEE0;
  v12 = requestCopy;
  v8 = requestCopy;
  v9 = [(FPDSharedSystemScheduler *)self initWithLabel:identifier options:options taskRequestBuilder:v11];

  return v9;
}

- (BOOL)canRunCheckingDeferral:(BOOL)deferral reason:(id *)reason
{
  if (self->_unregistrationTimer)
  {
    if (reason)
    {
      result = 0;
      v6 = @"unregistration timer is running";
LABEL_4:
      *reason = v6;
      return result;
    }
  }

  else if (self->_task)
  {
    deferralCopy = deferral;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    isExpired = selfCopy->_isExpired;
    objc_sync_exit(selfCopy);

    if (!deferralCopy || !isExpired)
    {
      return 1;
    }

    if (reason)
    {
      *reason = @"activity should be deferred";
    }

    [(FPDSharedSystemScheduler *)selfCopy defer];
  }

  else if (reason)
  {
    result = 0;
    v6 = @"activity is not running";
    goto LABEL_4;
  }

  return 0;
}

- (BOOL)shouldPause
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = +[FPDSharedSystemScheduler queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__FPDSharedSystemScheduler_shouldPause__block_invoke;
  v5[3] = &unk_1E83BF3D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __39__FPDSharedSystemScheduler_shouldPause__block_invoke(uint64_t a1)
{
  [*(a1 + 32) unregisterActivityWithDelayIfNeeded];
  result = [*(a1 + 32) canOrIsForcedToRunCheckingDeferral:1 reason:0];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  return result;
}

- (void)markWatcherDone:(id)done
{
  doneCopy = done;
  v5 = +[FPDSharedSystemScheduler queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__FPDSharedSystemScheduler_markWatcherDone___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = doneCopy;
  v6 = doneCopy;
  dispatch_async(v5, v7);
}

void __44__FPDSharedSystemScheduler_markWatcherDone___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];

  if (v2)
  {
    [*(*(a1 + 32) + 40) setObject:MEMORY[0x1E695E118] forKey:*(a1 + 40)];
    v3 = [*(*(a1 + 32) + 40) keyEnumerator];
    v4 = [v3 allObjects];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(a1 + 32) + 40) objectForKey:*(*(&v25 + 1) + 8 * v9)];
        v11 = [v10 BOOLValue];

        if (!v11)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) taskLabel];
        *buf = 138543362;
        v31 = v13;
        _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: all watchers done", buf, 0xCu);
      }

      [*(a1 + 32) completeActivity];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = v5;
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        v18 = MEMORY[0x1E695E110];
        do
        {
          v19 = 0;
          do
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(a1 + 32) + 40) setObject:v18 forKey:{*(*(&v21 + 1) + 8 * v19++), v21}];
          }

          while (v16 != v19);
          v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v16);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)checkIn
{
  if (allowedToCheckIn == 1 && !self->_wasCheckedIn)
  {
    [(FPDSharedSystemScheduler *)self registerActivity];
  }
}

- (void)notifyCanRun
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[FPDSharedSystemScheduler queue];
  dispatch_assert_queue_V2(v3);

  [(FPDSharedSystemScheduler *)self unregisterActivityWithDelayIfNeeded];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_watchers;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if (![(FPDSharedSystemScheduler *)self canOrIsForcedToRunCheckingDeferral:1 reason:0, v12])
      {
        break;
      }

      v10 = [(NSMapTable *)self->_watchers objectForKey:v9];
      if (([v10 BOOLValue] & 1) == 0)
      {
        [v9 sharedSchedulerCanRun:self];
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)notifyIsDeferred
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[FPDSharedSystemScheduler queue];
  dispatch_assert_queue_V2(v3);

  [(FPDSharedSystemScheduler *)self unregisterActivityWithDelayIfNeeded];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_watchers;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_watchers objectForKey:v9, v12];
        if (([v10 BOOLValue] & 1) == 0)
        {
          [v9 sharedSchedulerIsDeferred:self];
        }
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)completeActivity
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[FPDSharedSystemScheduler queue];
  dispatch_assert_queue_V2(v3);

  if (self->_task)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      taskLabel = [(FPDSharedSystemScheduler *)self taskLabel];
      *buf = 138543362;
      v12 = taskLabel;
      _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: completing background task", buf, 0xCu);
    }

    v6 = self->_task;
    if (internalQueueForBGST_onceToken != -1)
    {
      [FPDSharedSystemScheduler completeActivity];
    }

    v9[5] = MEMORY[0x1E69E9820];
    v9[6] = 3221225472;
    v9[7] = __44__FPDSharedSystemScheduler_completeActivity__block_invoke;
    v9[8] = &unk_1E83BE068;
    v10 = v6;
    v7 = v6;
    fp_dispatch_async_with_logs();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__FPDSharedSystemScheduler_completeActivity__block_invoke_2;
    v9[3] = &unk_1E83BE068;
    v9[4] = self;
    [(FPDSharedSystemScheduler *)self withReevaluationOfSchedulingState:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __44__FPDSharedSystemScheduler_completeActivity__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (void)defer
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[FPDSharedSystemScheduler queue];
  dispatch_assert_queue_V2(v3);

  if (self->_task)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      taskLabel = [(FPDSharedSystemScheduler *)self taskLabel];
      *buf = 138543362;
      v16 = taskLabel;
      _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: deferring background task", buf, 0xCu);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = [MEMORY[0x1E695DF00] now];
    lastDeferralDate = selfCopy->_lastDeferralDate;
    selfCopy->_lastDeferralDate = v7;

    objc_sync_exit(selfCopy);
    v9 = self->_task;
    if (internalQueueForBGST_onceToken != -1)
    {
      [FPDSharedSystemScheduler completeActivity];
    }

    v12[5] = MEMORY[0x1E69E9820];
    v12[6] = 3221225472;
    v12[7] = __33__FPDSharedSystemScheduler_defer__block_invoke;
    v12[8] = &unk_1E83BE158;
    v13 = v9;
    v14 = selfCopy;
    v10 = v9;
    fp_dispatch_async_with_logs();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__FPDSharedSystemScheduler_defer__block_invoke_25;
    v12[3] = &unk_1E83BE068;
    v12[4] = selfCopy;
    [(FPDSharedSystemScheduler *)selfCopy withReevaluationOfSchedulingState:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __33__FPDSharedSystemScheduler_defer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 setTaskExpiredWithRetryAfter:&v6 error:0.0];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __33__FPDSharedSystemScheduler_defer__block_invoke_cold_1(a1, v4, v5);
    }

    [*(a1 + 32) setTaskCompleted];
  }
}

void __33__FPDSharedSystemScheduler_defer__block_invoke_25(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

+ (BOOL)_backgroundTaskCriteriaEqualWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v7 = [firstCopy requiresExternalPower], v7 == objc_msgSend(secondCopy, "requiresExternalPower")) && (v8 = objc_msgSend(firstCopy, "requiresUserInactivity"), v8 == objc_msgSend(secondCopy, "requiresUserInactivity")) && (v9 = objc_msgSend(firstCopy, "requiresNetworkConnectivity"), v9 == objc_msgSend(secondCopy, "requiresNetworkConnectivity")) && (v10 = objc_msgSend(firstCopy, "requiresInexpensiveNetworkConnectivity"), v10 == objc_msgSend(secondCopy, "requiresInexpensiveNetworkConnectivity")) && (v11 = objc_msgSend(firstCopy, "networkDownloadSize"), v11 == objc_msgSend(secondCopy, "networkDownloadSize")))
  {
    resources = [firstCopy resources];
    v13 = resources == [secondCopy resources];
  }

  else
  {
LABEL_11:
    v13 = 0;
  }

  return v13;
}

void __44__FPDSharedSystemScheduler_registerActivity__block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    if ([v6[6] isEqual:*(a1 + 40)])
    {
      objc_sync_exit(v6);

      v7 = fp_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v6 taskLabel];
        v9 = *(a1 + 40);
        *buf = 138543618;
        v28 = v8;
        v29 = 2114;
        v30 = v9;
        _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: background task starting (uuid=%{public}@)", buf, 0x16u);
      }

      v10 = v6;
      objc_sync_enter(v10);
      *(v10 + 115) = 0;
      v11 = [MEMORY[0x1E695DF00] now];
      v12 = v10[11];
      v10[11] = v11;

      objc_sync_exit(v10);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __44__FPDSharedSystemScheduler_registerActivity__block_invoke_51;
      v25[3] = &unk_1E83BE0B8;
      objc_copyWeak(&v26, (a1 + 48));
      [v3 setExpirationHandler:v25];
      v13 = +[FPDSharedSystemScheduler queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__FPDSharedSystemScheduler_registerActivity__block_invoke_3;
      block[3] = &unk_1E83BE158;
      v23 = v10;
      v24 = v3;
      dispatch_async(v13, block);

      objc_destroyWeak(&v26);
    }

    else
    {
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v6 taskLabel];
        v19 = *(a1 + 40);
        v20 = v6[6];
        *buf = 138543874;
        v28 = v18;
        v29 = 2114;
        v30 = v19;
        v31 = 2114;
        v32 = v20;
        _os_log_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: background task starting after unregistration was asked (uuid=%{public}@ vs %{public}@)", buf, 0x20u);
      }

      [v3 setTaskCompleted];
      objc_sync_exit(v6);
    }
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      *buf = 138543618;
      v28 = v15;
      v29 = 2114;
      v30 = v16;
      _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: background task starting after scheduler was deallocated (uuid=%{public}@)", buf, 0x16u);
    }

    [v3 setTaskCompleted];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __44__FPDSharedSystemScheduler_registerActivity__block_invoke_51(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v3[115] = 1;
    objc_sync_exit(v3);

    v4 = +[FPDSharedSystemScheduler queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__FPDSharedSystemScheduler_registerActivity__block_invoke_2_52;
    block[3] = &unk_1E83BE068;
    v6 = v3;
    dispatch_async(v4, block);
  }
}

void __44__FPDSharedSystemScheduler_registerActivity__block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) keyEnumerator];
  v3 = [v2 nextObject];

  if (v3)
  {
    v4 = *(a1 + 32);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __44__FPDSharedSystemScheduler_registerActivity__block_invoke_4;
    v11 = &unk_1E83BE158;
    v12 = v4;
    v13 = *(a1 + 40);
    [v12 withReevaluationOfSchedulingState:&v8];
    if (([*(a1 + 32) canRunCheckingDeferral:1 reason:{0, v8, v9, v10, v11}] & 1) == 0)
    {
      [*(a1 + 32) completeActivity];
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
    [*(a1 + 32) unregisterActivityWithDelay];
    v5 = *(a1 + 32);
    objc_sync_enter(v5);
    v6 = *(*(a1 + 32) + 115);
    objc_sync_exit(v5);

    if (v6 == 1)
    {
      v7 = *(a1 + 32);

      [v7 defer];
    }
  }
}

- (void)unregisterActivityImmediately
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = +[FPDSharedSystemScheduler queue];
  dispatch_assert_queue_V2(v3);

  [(FPDSharedSystemScheduler *)self completeActivity];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->_registrationUUID;
  objc_sync_exit(selfCopy);

  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      taskLabel = [(FPDSharedSystemScheduler *)selfCopy taskLabel];
      *buf = 138543618;
      v16 = taskLabel;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: unregistering background task (uuid=%{public}@)", buf, 0x16u);
    }

    if (internalQueueForBGST_onceToken != -1)
    {
      [FPDSharedSystemScheduler completeActivity];
    }

    v13 = MEMORY[0x1E69E9820];
    v14 = v5;
    fp_dispatch_async_with_logs();
    [(FPDSharedSystemScheduler *)selfCopy cancelDelayedUnregistration:v13];
    v8 = selfCopy;
    objc_sync_enter(v8);
    v9 = [MEMORY[0x1E695DF00] now];
    lastUnregistrationDate = v8->_lastUnregistrationDate;
    v8->_lastUnregistrationDate = v9;

    registrationUUID = selfCopy->_registrationUUID;
    selfCopy->_registrationUUID = 0;

    objc_sync_exit(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __57__FPDSharedSystemScheduler_unregisterActivityImmediately__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698E4B8] sharedScheduler];
  v3 = [*(a1 + 32) taskLabel];
  [v2 cancelTaskRequestWithIdentifier:v3 error:0];

  v4 = [MEMORY[0x1E698E4B8] sharedScheduler];
  v5 = [*(a1 + 32) taskLabel];
  [v4 deregisterTaskWithIdentifier:v5];

  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) taskLabel];
    v8 = *(a1 + 40);
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: done unregistering background task (uuid=%{public}@)", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)addWatcher:(id)watcher
{
  watcherCopy = watcher;
  v5 = +[FPDSharedSystemScheduler queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__FPDSharedSystemScheduler_addWatcher___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = watcherCopy;
  v6 = watcherCopy;
  dispatch_sync(v5, v7);
}

void __39__FPDSharedSystemScheduler_addWatcher___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];

  if (!v2)
  {
    [*(*(a1 + 32) + 40) setObject:MEMORY[0x1E695E110] forKey:*(a1 + 40)];
    [*(a1 + 32) cancelDelayedUnregistration];
    [*(a1 + 32) registerActivityIfNeeded];
    v3 = *(a1 + 32);
    v17 = 0;
    v4 = [v3 canOrIsForcedToRunCheckingDeferral:1 reason:&v17];
    v5 = v17;
    v6 = fp_current_or_default_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v7)
      {
        v8 = [*(a1 + 32) taskLabel];
        v9 = [*(a1 + 40) watcherLabel];
        v10 = [v9 fp_obfuscatedProviderDomainID];
        v11 = *(a1 + 40);
        *buf = 138543874;
        v19 = v8;
        v20 = 2114;
        v21 = v10;
        v22 = 2048;
        v23 = v11;
        _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: new watcher registered for %{public}@[%p] and called immediately", buf, 0x20u);
      }

      [*(a1 + 40) sharedSchedulerCanRun:*(a1 + 32)];
    }

    else
    {
      if (v7)
      {
        v12 = [*(a1 + 32) taskLabel];
        v13 = [*(a1 + 40) watcherLabel];
        v14 = [v13 fp_obfuscatedProviderDomainID];
        v15 = *(a1 + 40);
        *buf = 138544130;
        v19 = v12;
        v20 = 2114;
        v21 = v14;
        v22 = 2048;
        v23 = v15;
        v24 = 2114;
        v25 = v5;
        _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: new watcher registered for %{public}@[%p] and waiting: %{public}@", buf, 0x2Au);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeWatcher:(id)watcher
{
  watcherCopy = watcher;
  v5 = +[FPDSharedSystemScheduler queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__FPDSharedSystemScheduler_removeWatcher___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = watcherCopy;
  v6 = watcherCopy;
  dispatch_async(v5, v7);
}

void __42__FPDSharedSystemScheduler_removeWatcher___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) taskLabel];
      v5 = [*(a1 + 40) watcherLabel];
      v6 = [v5 fp_obfuscatedProviderDomainID];
      v7 = *(a1 + 40);
      v9 = 138543874;
      v10 = v4;
      v11 = 2114;
      v12 = v6;
      v13 = 2048;
      v14 = v7;
      _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] ⏱  %{public}@: watcher unregistered for %{public}@[%p]", &v9, 0x20u);
    }
  }

  [*(a1 + 32) unregisterActivityWithDelayIfNeeded];

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)runIfPossible:(id)possible
{
  possibleCopy = possible;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = +[FPDSharedSystemScheduler queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__FPDSharedSystemScheduler_runIfPossible___block_invoke;
  block[3] = &unk_1E83BFF58;
  block[4] = self;
  v9 = possibleCopy;
  v10 = &v11;
  v6 = possibleCopy;
  dispatch_sync(v5, block);

  LOBYTE(possibleCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return possibleCopy;
}

uint64_t __42__FPDSharedSystemScheduler_runIfPossible___block_invoke(uint64_t a1)
{
  [*(a1 + 32) unregisterActivityWithDelayIfNeeded];
  result = [*(a1 + 32) canOrIsForcedToRunCheckingDeferral:1 reason:0];
  if (result)
  {
    v3 = [MEMORY[0x1E695DF00] now];
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    result = (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)withReevaluationOfSchedulingState:(id)state
{
  stateCopy = state;
  v5 = [(FPDSharedSystemScheduler *)self canOrIsForcedToRunCheckingDeferral:0 reason:0];
  stateCopy[2](stateCopy);

  v6 = [(FPDSharedSystemScheduler *)self canOrIsForcedToRunCheckingDeferral:0 reason:0];
  if (v5 || !v6)
  {
    if (!v6 && v5)
    {

      [(FPDSharedSystemScheduler *)self notifyIsDeferred];
    }
  }

  else
  {

    [(FPDSharedSystemScheduler *)self notifyCanRun];
  }
}

- (id)forceRunningWithReason:(id)reason
{
  reasonCopy = reason;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__54;
  v18 = __Block_byref_object_dispose__55;
  v19 = 0;
  v6 = +[FPDSharedSystemScheduler queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__FPDSharedSystemScheduler_forceRunningWithReason___block_invoke;
  v10[3] = &unk_1E83BFFA8;
  v10[4] = self;
  v11 = reasonCopy;
  v12 = &v14;
  v13 = a2;
  v7 = reasonCopy;
  dispatch_sync(v6, v10);

  v8 = _Block_copy(v15[5]);
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __51__FPDSharedSystemScheduler_forceRunningWithReason___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) taskLabel];
    v4 = *(a1 + 40);
    *buf = 138543618;
    v18 = v3;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] ⏱  %{public}@: force running for %{public}@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__FPDSharedSystemScheduler_forceRunningWithReason___block_invoke_56;
  v16[3] = &unk_1E83BE068;
  v16[4] = v5;
  [v5 withReevaluationOfSchedulingState:v16];
  objc_initWeak(buf, *(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__FPDSharedSystemScheduler_forceRunningWithReason___block_invoke_2;
  aBlock[3] = &unk_1E83BFF80;
  objc_copyWeak(v15, buf);
  v6 = *(a1 + 40);
  v15[1] = *(a1 + 56);
  v7 = *(a1 + 32);
  v13 = v6;
  v14 = v7;
  v8 = _Block_copy(aBlock);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  objc_destroyWeak(v15);
  objc_destroyWeak(buf);
  v11 = *MEMORY[0x1E69E9840];
}

void __51__FPDSharedSystemScheduler_forceRunningWithReason___block_invoke_2(uint64_t a1)
{
  v2 = +[FPDSharedSystemScheduler queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__FPDSharedSystemScheduler_forceRunningWithReason___block_invoke_3;
  v5[3] = &unk_1E83BFF80;
  objc_copyWeak(v8, (a1 + 48));
  v3 = *(a1 + 32);
  v8[1] = *(a1 + 56);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_sync(v2, v5);

  objc_destroyWeak(v8);
}

void __51__FPDSharedSystemScheduler_forceRunningWithReason___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [WeakRetained taskLabel];
      v5 = *(a1 + 32);
      *buf = 138543618;
      v12 = v4;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] ⏱  %{public}@: stop force running for %{public}@", buf, 0x16u);
    }

    if (WeakRetained[7] <= 0)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ over-released forceRunning"];
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(FPDProcessMonitor *)v7 _addPIDToObserve:v8];
      }

      __assert_rtn("-[FPDSharedSystemScheduler forceRunningWithReason:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDSharedSystemScheduler.m", 713, [v7 UTF8String]);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__FPDSharedSystemScheduler_forceRunningWithReason___block_invoke_2_61;
    v9[3] = &unk_1E83BE068;
    v10 = WeakRetained;
    [v10 withReevaluationOfSchedulingState:v9];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setPreventRunning:(BOOL)running
{
  v5 = +[FPDSharedSystemScheduler queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__FPDSharedSystemScheduler_setPreventRunning___block_invoke;
  v6[3] = &unk_1E83BFFD0;
  runningCopy = running;
  v6[4] = self;
  dispatch_sync(v5, v6);
}

unsigned __int8 *__46__FPDSharedSystemScheduler_setPreventRunning___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  result = *(a1 + 32);
  if (v3 != result[112])
  {
    v7 = v1;
    v8 = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__FPDSharedSystemScheduler_setPreventRunning___block_invoke_2;
    v5[3] = &unk_1E83BFFD0;
    v5[4] = result;
    v6 = v3;
    return [result withReevaluationOfSchedulingState:v5];
  }

  return result;
}

- (void)setManualScheduling:(BOOL)scheduling
{
  v5 = +[FPDSharedSystemScheduler queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__FPDSharedSystemScheduler_setManualScheduling___block_invoke;
  v6[3] = &unk_1E83BFFD0;
  schedulingCopy = scheduling;
  v6[4] = self;
  dispatch_sync(v5, v6);
}

void __48__FPDSharedSystemScheduler_setManualScheduling___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 113))
  {
    *(v2 + 113) = v1;
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    if (v4)
    {

      [v5 unregisterActivityImmediately];
    }

    else
    {
      v6 = [v5[5] keyEnumerator];
      v7 = [v6 nextObject];

      if (v7)
      {
        v8 = *(a1 + 32);

        [v8 registerActivity];
      }
    }
  }
}

- (BOOL)hasRegisteredExecutors
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = +[FPDSharedSystemScheduler queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__FPDSharedSystemScheduler_hasRegisteredExecutors__block_invoke;
  v5[3] = &unk_1E83BF3B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

void __50__FPDSharedSystemScheduler_hasRegisteredExecutors__block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 40) keyEnumerator];
  v2 = [v3 nextObject];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (id)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = [MEMORY[0x1E696AD60] stringWithFormat:@"<l:%@", self->_label];
  v3 = +[FPDSharedSystemScheduler queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__FPDSharedSystemScheduler_description__block_invoke;
  block[3] = &unk_1E83BF3D8;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(v3, block);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __39__FPDSharedSystemScheduler_description__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[7];
  v4 = [v2 preventRunning];
  v5 = v4;
  if (v3 < 1)
  {
    if (v4)
    {
      [*(*(*(a1 + 40) + 8) + 40) appendString:@" 🌑 "];
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = *(v6 + 56);
    if (v5)
    {
      [v7 appendFormat:@" 🌑 %d", *(v6 + 56)];
    }

    else
    {
      [v7 appendFormat:@" 🌕 %d", *(v6 + 56)];
    }
  }

  v9 = *(a1 + 32);
  if (v9[1])
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = @" ▶️ ";
  }

  else if (v9[8])
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = @" ⏲️ ";
  }

  else
  {
    v12 = [v9 isRegistered];
    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (v12)
    {
      v11 = @" ⏳ ";
    }

    else
    {
      v11 = @" 🛏 ";
    }
  }

  [v10 appendString:v11];
  v13 = *(a1 + 32);
  objc_sync_enter(v13);
  v14 = *(a1 + 32);
  v15 = v14[9];
  if (v15)
  {
    [*(*(*(a1 + 40) + 8) + 40) appendFormat:@" registration:<from:%@ count:%d", v15, v14[15]];
    v16 = *(a1 + 32);
    if (!v16[6])
    {
      v17 = v16[10];
      if (v17)
      {
        [*(*(*(a1 + 40) + 8) + 40) appendFormat:@" to:%@", v17];
        v16 = *(a1 + 32);
      }
    }

    if (v16[8])
    {
      [*(*(*(a1 + 40) + 8) + 40) appendString:@" to:<pending>"];
    }

    [*(*(*(a1 + 40) + 8) + 40) appendString:@">"];
    v14 = *(a1 + 32);
  }

  v18 = v14[11];
  if (v18)
  {
    [*(*(*(a1 + 40) + 8) + 40) appendFormat:@" trigger:<from:%@", v18];
    v19 = *(a1 + 32);
    if (!*(v19 + 8))
    {
      v20 = *(v19 + 104);
      if (v20)
      {
        [*(*(*(a1 + 40) + 8) + 40) appendFormat:@" to:%@", v20];
      }
    }

    [*(*(*(a1 + 40) + 8) + 40) appendString:@">"];
  }

  objc_sync_exit(v13);

  v21 = *(a1 + 32);
  v22 = *(v21 + 96);
  if (v22)
  {
    [*(*(*(a1 + 40) + 8) + 40) appendFormat:@" usage:%@", v22];
    v21 = *(a1 + 32);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = *(v21 + 40);
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v24)
  {
    v25 = *v34;
    v26 = @" watchers=%@";
    do
    {
      v27 = 0;
      do
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(*(a1 + 40) + 8) + 40);
        v29 = [*(*(&v33 + 1) + 8 * v27) watcherLabel];
        v30 = [v29 fp_obfuscatedProviderDomainID];
        [v28 appendFormat:v26, v30];

        ++v27;
        v26 = @",%@";
      }

      while (v24 != v27);
      v24 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
      v26 = @",%@";
    }

    while (v24);
  }

  result = [*(*(*(a1 + 40) + 8) + 40) appendString:@">"];
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isRunning
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_task != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSDate)lastRegistrationDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastRegistrationDate;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSDate)lastTriggerDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastTriggerDate;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSDate)lastUsageDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastUsageDate;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSDate)lastDeferralDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastDeferralDate;
  objc_sync_exit(selfCopy);

  return v3;
}

- (int64_t)_contextForActivity:(id)activity
{
  activityCopy = activity;
  schedulingPriority = [activityCopy schedulingPriority];
  if (schedulingPriority == *MEMORY[0x1E699A590])
  {
    v5 = 1;
  }

  else if (schedulingPriority == *MEMORY[0x1E699A570])
  {
    v5 = 2;
  }

  else if (schedulingPriority == *MEMORY[0x1E699A5C0])
  {
    v5 = 4;
  }

  else if (schedulingPriority == *MEMORY[0x1E699A580])
  {
    v5 = 8;
  }

  else if (schedulingPriority == *MEMORY[0x1E699A5A0])
  {
    v5 = 16;
  }

  else
  {
    v5 = 32 * (schedulingPriority == *MEMORY[0x1E699A5B0]);
  }

  if ([activityCopy delayedStart])
  {
    v5 |= 0x40uLL;
  }

  if ([activityCopy cancelAfterDeadline])
  {
    v5 |= 0x80uLL;
  }

  if ([activityCopy requiresNetwork])
  {
    v5 |= 0x100uLL;
  }

  if ([activityCopy isUpload])
  {
    v5 |= 0x200uLL;
  }

  if ([activityCopy cpuIntensive])
  {
    v5 |= 0x400uLL;
  }

  if ([activityCopy memoryIntensive])
  {
    v6 = v5 | 0x800;
  }

  else
  {
    v6 = v5;
  }

  preventDeviceSleep = [activityCopy preventDeviceSleep];

  if (preventDeviceSleep)
  {
    return v6 | 0x1000;
  }

  else
  {
    return v6;
  }
}

- (int64_t)dasContext
{
  v39 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E699A4B8] = [MEMORY[0x1E699A4B8] sharedScheduler];
  [mEMORY[0x1E699A4B8] runningActivities];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = v36 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v6 = mEMORY[0x1E699A4B8];
    v7 = *v34;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        name = [v9 name];
        taskLabel = [(FPDSharedSystemScheduler *)self taskLabel];
        v12 = [name containsString:taskLabel];

        if (v12)
        {
          v5 = v9;
          v14 = 0;
          v13 = 0x2000;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v13 = 0;
    v14 = 1;
LABEL_11:
    mEMORY[0x1E699A4B8] = v6;
  }

  else
  {
    v13 = 0;
    v14 = 1;
  }

  submittedActivities = [mEMORY[0x1E699A4B8] submittedActivities];
  v16 = submittedActivities;
  if (v14)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = submittedActivities;
    v13 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v13)
    {
      v26 = v16;
      v27 = v5;
      v28 = mEMORY[0x1E699A4B8];
      v18 = *v30;
      while (2)
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v17);
          }

          v20 = *(*(&v29 + 1) + 8 * j);
          name2 = [v20 name];
          taskLabel2 = [(FPDSharedSystemScheduler *)self taskLabel];
          v23 = [name2 containsString:taskLabel2];

          if (v23)
          {
            v5 = v20;

            v13 = 0x4000;
            mEMORY[0x1E699A4B8] = v28;
            goto LABEL_24;
          }
        }

        v13 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v5 = v27;
      mEMORY[0x1E699A4B8] = v28;
LABEL_24:
      v16 = v26;
    }
  }

  if (v5)
  {
    v13 |= [(FPDSharedSystemScheduler *)self _contextForActivity:v5];
  }

  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)runIfAllowedOneSchedulerOf:(id)of cb:(id)cb
{
  v23 = *MEMORY[0x1E69E9840];
  ofCopy = of;
  cbCopy = cb;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = ofCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __58__FPDSharedSystemScheduler_runIfAllowedOneSchedulerOf_cb___block_invoke;
          v16[3] = &unk_1E83BF450;
          v12 = cbCopy;
          v16[4] = v11;
          v17 = v12;
          v13 = [v11 runIfPossible:v16];

          if (v13)
          {
            LOBYTE(v8) = 1;
            goto LABEL_12;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

void __33__FPDSharedSystemScheduler_defer__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 40) taskLabel];
  v6 = [a2 fp_prettyDescription];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_ERROR, "[ERROR] Error setting task expired %@ : %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __44__FPDSharedSystemScheduler_registerActivity__block_invoke_cold_2(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] Error canceling background task request for %{public}@ : %@", buf, 0x16u);
}

void __44__FPDSharedSystemScheduler_registerActivity__block_invoke_cold_3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] ⏱ Failed to submit background task: %@", buf, 0xCu);
}

@end