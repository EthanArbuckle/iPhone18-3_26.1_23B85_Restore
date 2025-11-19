@interface HDXPCGatedActivity
- (BOOL)shouldDefer;
- (BOOL)waitingForTrigger;
- (HDXPCGatedActivity)initWithName:(id)a3 criteria:(id)a4 loggingCategory:(id)a5 handler:(id)a6;
- (id)description;
- (id)xpcActivity_copyCriteria:(id)a3;
- (void)_activityFinishedWithResult:(int64_t)a3 error:(id)a4;
- (void)_handleXPCActivityCallback:(id)a3;
- (void)_lock_resetNextActivityFireDate;
- (void)_lock_setNextScheduledFireDeadline:(double)a3;
- (void)_performActivity:(id)a3 completion:(id)a4;
- (void)_registerActivityWithCriteria:(id)a3;
- (void)_registerActivityWithCriteria:(id)a3 delay:(double)a4 gracePeriod:(double)a5;
- (void)_runRequestWithMaximumDelay:(double)a3 requiredDelay:(double)a4 completion:(id)a5;
- (void)requestRunWithMaximumDelay:(double)a3 completion:(id)a4;
- (void)setWaitingForTrigger:(BOOL)a3;
- (void)unitTest_setActivityCompletion:(id)a3;
- (void)unitTest_setActivityShim:(id)a3;
- (void)xpcActivity_register:(const char *)a3 criteria:(id)a4 handler:(id)a5;
- (void)xpcActivity_unregister:(const char *)a3;
@end

@implementation HDXPCGatedActivity

- (HDXPCGatedActivity)initWithName:(id)a3 criteria:(id)a4 loggingCategory:(id)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = HDXPCGatedActivity;
  v14 = [(HDXPCGatedActivity *)&v28 init];
  if (v14)
  {
    v15 = [v10 copy];
    name = v14->_name;
    v14->_name = v15;

    v14->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_loggingCategory, a5);
    v17 = [v13 copy];
    handler = v14->_handler;
    v14->_handler = v17;

    v19 = xpc_copy(v11);
    p_criteria = &v14->_criteria;
    criteria = v14->_criteria;
    v14->_criteria = v19;

    objc_storeWeak(&v14->_activityShim, v14);
    v22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v22 doubleForKey:v14->_name];
    v24 = v23;

    if (v24 <= 0.0)
    {
      p_criteria = MEMORY[0x277D86238];
    }

    else
    {
      v14->_nextScheduledFireDeadline = v24;
      v25 = v24 - CFAbsoluteTimeGetCurrent();
      if (v25 <= 0.0)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      xpc_dictionary_set_int64(v14->_criteria, *MEMORY[0x277D86250], v26);
      xpc_dictionary_set_int64(v14->_criteria, *MEMORY[0x277D86270], 0);
      xpc_dictionary_set_BOOL(v14->_criteria, *MEMORY[0x277D86360], 0);
    }

    [(HDXPCGatedActivity *)v14 _registerActivityWithCriteria:*p_criteria];
  }

  return v14;
}

- (BOOL)waitingForTrigger
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_nextScheduledFireDeadline > 0.0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setWaitingForTrigger:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (a3)
  {
    nextScheduledFireDeadline = self->_nextScheduledFireDeadline;
    os_unfair_lock_unlock(&self->_lock);
    if (nextScheduledFireDeadline == 0.0)
    {
      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = self;
        _os_log_impl(&dword_25156C000, loggingCategory, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting implicit run by setting waitingForTrigger = YES.", &v9, 0xCu);
      }

      [(HDXPCGatedActivity *)self requestRunWithMaximumDelay:&__block_literal_global_4 completion:0.0];
    }

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [(HDXPCGatedActivity *)self _lock_resetNextActivityFireDate];
    v8 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  name = self->_name;
  if (self->_inProgress)
  {
    v8 = @"ACTIVE";
  }

  else
  {
    if (self->_nextScheduledFireDeadline > 0.0)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0.2lfs", *&self->_nextScheduledFireDeadline];
      v10 = [v3 stringWithFormat:@"<%@:%p %@ %@>", v6, self, name, v9];

      goto LABEL_7;
    }

    v8 = @"idle";
  }

  v10 = [v3 stringWithFormat:@"<%@:%p %@ %@>", v5, self, self->_name, v8];
LABEL_7:

  return v10;
}

- (void)requestRunWithMaximumDelay:(double)a3 completion:(id)a4
{
  v9 = a4;
  quota = self->_quota;
  if (quota)
  {
    [(HDCoalescedTaskPoolQuota *)quota timeUntilNextAvailableTrigger];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  [(HDXPCGatedActivity *)self _runRequestWithMaximumDelay:v9 requiredDelay:a3 completion:v8];
}

- (void)_runRequestWithMaximumDelay:(double)a3 requiredDelay:(double)a4 completion:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a5;
  os_unfair_lock_lock(&self->_lock);
  nextScheduledFireDeadline = self->_nextScheduledFireDeadline;
  if (nextScheduledFireDeadline > 0.0)
  {
    if (self->_inProgress && self->_rescheduleWhileInProgress)
    {
      v10 = CFAbsoluteTimeGetCurrent() + a3;
      nextFireTime = self->_nextFireTime;
      if (nextFireTime == 0.0 || v10 < nextFireTime)
      {
        self->_nextFireTime = v10;
      }

      nextCompletions = self->_nextCompletions;
      if (!nextCompletions)
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v15 = self->_nextCompletions;
        self->_nextCompletions = v14;

        nextCompletions = self->_nextCompletions;
      }

      v16 = [v8 copy];
      v17 = _Block_copy(v16);
      [(NSMutableArray *)nextCompletions addObject:v17];

      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 138543362;
        v33 = self;
        _os_log_impl(&dword_25156C000, loggingCategory, OS_LOG_TYPE_DEFAULT, "%{public}@: Run requested delayed because activity is already in progress.", &v32, 0xCu);
      }

LABEL_23:
      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_24;
    }

    v19 = nextScheduledFireDeadline - CFAbsoluteTimeGetCurrent();
    if (v19 <= a3)
    {
      _HKInitializeLogging();
      v27 = self->_loggingCategory;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 138543874;
        v33 = self;
        v34 = 2048;
        v35 = a3;
        v36 = 2048;
        v37 = v19;
        _os_log_impl(&dword_25156C000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: Run requested with delay %lf, but next fire date is in  %lf, no need to re-register.", &v32, 0x20u);
      }

      pendingCompletions = self->_pendingCompletions;
      v29 = [v8 copy];
      v30 = _Block_copy(v29);
      [(NSMutableArray *)pendingCompletions addObject:v30];

      goto LABEL_23;
    }
  }

  [(HDXPCGatedActivity *)self _lock_setNextScheduledFireDeadline:CFAbsoluteTimeGetCurrent() + a3];
  _HKInitializeLogging();
  v20 = self->_loggingCategory;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138543874;
    v33 = self;
    v34 = 2048;
    v35 = a3;
    v36 = 2048;
    v37 = a4;
    _os_log_impl(&dword_25156C000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting run with maximum delay %lf, required delay %lf", &v32, 0x20u);
  }

  v21 = self->_pendingCompletions;
  if (!v21)
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = self->_pendingCompletions;
    self->_pendingCompletions = v22;

    v21 = self->_pendingCompletions;
  }

  v24 = [v8 copy];
  v25 = _Block_copy(v24);
  [(NSMutableArray *)v21 addObject:v25];

  v26 = xpc_copy(self->_criteria);
  os_unfair_lock_unlock(&self->_lock);
  [(HDXPCGatedActivity *)self _registerActivityWithCriteria:v26 delay:a4 gracePeriod:a3];

LABEL_24:
  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldDefer
{
  v3 = [(HDXPCGatedActivity *)self currentActivity];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activityShim);
    v5 = [WeakRetained xpcActivity_shouldDefer:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_registerActivityWithCriteria:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_activityShim);
  v6 = [(NSString *)self->_name UTF8String];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HDXPCGatedActivity__registerActivityWithCriteria___block_invoke;
  v7[3] = &unk_2796BD8A0;
  objc_copyWeak(&v8, &location);
  [WeakRetained xpcActivity_register:v6 criteria:v4 handler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __52__HDXPCGatedActivity__registerActivityWithCriteria___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleXPCActivityCallback:v5];

  objc_autoreleasePoolPop(v3);
}

- (void)_registerActivityWithCriteria:(id)a3 delay:(double)a4 gracePeriod:(double)a5
{
  v7 = *MEMORY[0x277D86250];
  v8 = a4;
  xdict = a3;
  xpc_dictionary_set_int64(xdict, v7, v8);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D86270], a5);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86360], 0);
  [(HDXPCGatedActivity *)self _registerActivityWithCriteria:xdict];
}

- (void)_handleXPCActivityCallback:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_activityShim);
  v6 = [WeakRetained xpcActivity_getState:v4];

  if (v6)
  {
    v7 = [(HDXPCGatedActivity *)self waitingForTrigger];
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    v9 = os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        *buf = 138543618;
        v25 = self;
        v26 = 2114;
        v27 = v4;
        _os_log_impl(&dword_25156C000, loggingCategory, OS_LOG_TYPE_DEFAULT, "%{public}@ fired with activity %{public}@", buf, 0x16u);
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __49__HDXPCGatedActivity__handleXPCActivityCallback___block_invoke;
      v22[3] = &unk_2796BDDE8;
      v22[4] = self;
      v23 = v4;
      [(HDXPCGatedActivity *)self _performActivity:v23 completion:v22];
    }

    else
    {
      if (v9)
      {
        *buf = 138543618;
        v25 = self;
        v26 = 2114;
        v27 = v4;
        _os_log_impl(&dword_25156C000, loggingCategory, OS_LOG_TYPE_DEFAULT, "%{public}@ fired with activity %{public}@, but we're not currently waiting on a trigger.", buf, 0x16u);
      }

      os_unfair_lock_lock(&self->_lock);
      [(HDXPCGatedActivity *)self _lock_resetNextActivityFireDate];
      os_unfair_lock_unlock(&self->_lock);
      v12 = objc_loadWeakRetained(&self->_activityShim);
      v13 = [v12 xpcActivity_setCompletionStatus:0 activity:v4];

      if ((v13 & 1) == 0)
      {
        _HKInitializeLogging();
        v14 = self->_loggingCategory;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(HDXPCGatedActivity *)self _handleXPCActivityCallback:v14, v15, v16, v17, v18, v19, v20];
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v10 = self->_loggingCategory;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      *buf = 138543362;
      v25 = name;
      _os_log_impl(&dword_25156C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Checked in for gated scheduling", buf, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __49__HDXPCGatedActivity__handleXPCActivityCallback___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      _HKInitializeLogging();
      v6 = (a1 + 32);
      if (os_log_type_enabled(*(*(a1 + 32) + 104), OS_LOG_TYPE_ERROR))
      {
        __49__HDXPCGatedActivity__handleXPCActivityCallback___block_invoke_cold_3((a1 + 32));
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
      v12 = [WeakRetained xpcActivity_setCompletionStatus:3 activity:*(a1 + 40)];

      if ((v12 & 1) == 0)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*(*v6 + 13), OS_LOG_TYPE_ERROR))
        {
          __49__HDXPCGatedActivity__handleXPCActivityCallback___block_invoke_cold_1((a1 + 32));
        }
      }

      goto LABEL_25;
    }

    if (a2)
    {
      goto LABEL_26;
    }

    _HKInitializeLogging();
    v6 = (a1 + 32);
    v7 = *(*(a1 + 32) + 104);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *v6;
      v35 = 138543362;
      v36 = v8;
      _os_log_impl(&dword_25156C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished activity successfully.", &v35, 0xCu);
    }

    v9 = objc_loadWeakRetained((*(a1 + 32) + 80));
    v10 = [v9 xpcActivity_setCompletionStatus:0 activity:*(a1 + 40)];

    if (v10)
    {
      goto LABEL_25;
    }

    _HKInitializeLogging();
    if (!os_log_type_enabled(*(*v6 + 13), OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

LABEL_24:
    __49__HDXPCGatedActivity__handleXPCActivityCallback___block_invoke_cold_1((a1 + 32));
LABEL_25:
    os_unfair_lock_lock(*v6 + 2);
    [*v6 _lock_resetNextActivityFireDate];
    os_unfair_lock_unlock(*v6 + 2);
    goto LABEL_26;
  }

  v6 = (a1 + 32);
  v13 = objc_loadWeakRetained((*(a1 + 32) + 80));
  v14 = [v13 xpcActivity_shouldDefer:*(a1 + 40)];

  _HKInitializeLogging();
  v15 = *(*(a1 + 32) + 104);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v14)
  {
    if (v16)
    {
      v20 = *v6;
      v35 = 138543362;
      v36 = v20;
      _os_log_impl(&dword_25156C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Handler requested activity deferral but activity should not be deferred; failing activity.", &v35, 0xCu);
    }

    v21 = objc_loadWeakRetained((*(a1 + 32) + 80));
    v22 = [v21 xpcActivity_setCompletionStatus:3 activity:*(a1 + 40)];

    if (v22)
    {
      goto LABEL_25;
    }

    _HKInitializeLogging();
    if (!os_log_type_enabled(*(*v6 + 13), OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v16)
  {
    v17 = *v6;
    v35 = 138543362;
    v36 = v17;
    _os_log_impl(&dword_25156C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting activity deferral.", &v35, 0xCu);
  }

  v18 = objc_loadWeakRetained((*(a1 + 32) + 80));
  v19 = [v18 xpcActivity_setState:3 activity:*(a1 + 40)];

  if ((v19 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*(*v6 + 13), OS_LOG_TYPE_ERROR))
    {
      __49__HDXPCGatedActivity__handleXPCActivityCallback___block_invoke_cold_2((a1 + 32));
    }
  }

LABEL_26:
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v23 = *(a1 + 32);
  v24 = *(v23 + 56);
  if (v24 <= 0.0)
  {
    os_unfair_lock_unlock((v23 + 8));
  }

  else
  {
    v25 = v24 - CFAbsoluteTimeGetCurrent();
    v26 = 0.0;
    if (v25 >= 0.0)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0.0;
    }

    [*(a1 + 32) _lock_setNextScheduledFireDeadline:CFAbsoluteTimeGetCurrent() + v27];
    objc_storeStrong((*(a1 + 32) + 48), *(*(a1 + 32) + 64));
    v28 = *(a1 + 32);
    v29 = *(v28 + 64);
    *(v28 + 64) = 0;

    *(*(a1 + 32) + 56) = 0;
    v30 = xpc_copy(*(*(a1 + 32) + 24));
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    v31 = *(a1 + 32);
    v32 = v31[15];
    if (v32)
    {
      [v32 timeUntilNextAvailableTrigger];
      v26 = v33;
    }

    [v31 _registerActivityWithCriteria:v30 delay:v26 gracePeriod:v27];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_performActivity:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  pendingCompletions = self->_pendingCompletions;
  if (!pendingCompletions)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = self->_pendingCompletions;
    self->_pendingCompletions = v10;

    pendingCompletions = self->_pendingCompletions;
  }

  v12 = [v8 copy];
  v13 = _Block_copy(v12);
  [(NSMutableArray *)pendingCompletions addObject:v13];

  inProgress = self->_inProgress;
  if (!inProgress)
  {
    objc_storeStrong(&self->_currentActivity, a3);
    self->_inProgress = 1;
  }

  v15 = _Block_copy(self->_handler);
  os_unfair_lock_unlock(&self->_lock);
  if (!inProgress)
  {
    if (v7 && (WeakRetained = objc_loadWeakRetained(&self->_activityShim), v17 = [WeakRetained xpcActivity_setState:4 activity:v7], WeakRetained, (v17 & 1) == 0))
    {
      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
      {
        [HDXPCGatedActivity _performActivity:loggingCategory completion:?];
      }
    }

    else
    {
      [(HDCoalescedTaskPoolQuota *)self->_quota consumeQuota];
      v18 = [MEMORY[0x277CCD288] transactionWithOwner:self activityName:self->_name];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __50__HDXPCGatedActivity__performActivity_completion___block_invoke;
      v26[3] = &unk_2796BDDE8;
      v26[4] = self;
      v19 = v18;
      v27 = v19;
      v15[2](v15, self, v7, v26);
      if (HDIsUnitTesting())
      {
        unitTest_ActivityCompletion = self->unitTest_ActivityCompletion;
        if (unitTest_ActivityCompletion)
        {
          unitTest_ActivityCompletion[2](unitTest_ActivityCompletion, v20, v21, v22, v23);
        }
      }
    }
  }
}

uint64_t __50__HDXPCGatedActivity__performActivity_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _activityFinishedWithResult:a2 error:a3];
  v4 = *(a1 + 40);

  return [v4 invalidate];
}

- (void)_activityFinishedWithResult:(int64_t)a3 error:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  self->_inProgress = 0;
  v6 = self->_pendingCompletions;
  pendingCompletions = self->_pendingCompletions;
  self->_pendingCompletions = 0;

  currentActivity = self->_currentActivity;
  self->_currentActivity = 0;

  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v6;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v15 + 1) + 8 * v13) + 16))(*(*(&v15 + 1) + 8 * v13));
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_lock_setNextScheduledFireDeadline:(double)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_nextScheduledFireDeadline = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v5 setDouble:self->_name forKey:a3];
}

- (void)_lock_resetNextActivityFireDate
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_nextScheduledFireDeadline = 0.0;
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 removeObjectForKey:self->_name];
}

- (void)xpcActivity_register:(const char *)a3 criteria:(id)a4 handler:(id)a5
{
  criteria = a4;
  v7 = a5;
  if ((HDIsUnitTesting() & 1) == 0)
  {
    xpc_activity_register(a3, criteria, v7);
  }
}

- (void)xpcActivity_unregister:(const char *)a3
{
  if ((HDIsUnitTesting() & 1) == 0)
  {

    xpc_activity_unregister(a3);
  }
}

- (id)xpcActivity_copyCriteria:(id)a3
{
  v3 = xpc_activity_copy_criteria(a3);

  return v3;
}

- (void)unitTest_setActivityShim:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    v4 = self;
  }

  objc_storeWeak(&self->_activityShim, v4);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)unitTest_setActivityCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  unitTest_ActivityCompletion = self->unitTest_ActivityCompletion;
  self->unitTest_ActivityCompletion = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_handleXPCActivityCallback:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25156C000, a2, a3, "%{public}@: Failed to update completion state.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__HDXPCGatedActivity__handleXPCActivityCallback___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_25156C000, v1, v2, "%{public}@: Failed to update completion state.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __49__HDXPCGatedActivity__handleXPCActivityCallback___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_25156C000, v1, v2, "%{public}@: Failed to defer activity.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __49__HDXPCGatedActivity__handleXPCActivityCallback___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  v5 = 2114;
  v6 = v1;
  _os_log_error_impl(&dword_25156C000, v2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to perform activity: %{public}@.", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_performActivity:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 96);
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v2;
  _os_log_error_impl(&dword_25156C000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to continue activity %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end