@interface HDXPCPeriodicActivity
+ (void)registerDisabledPeriodicActivityWithName:(id)a3 loggingCategory:(id)a4;
- (BOOL)isWaiting;
- (BOOL)shouldDefer;
- (HDXPCPeriodicActivity)initWithName:(id)a3 baseInterval:(double)a4 criteria:(id)a5 loggingCategory:(id)a6 handler:(id)a7;
- (NSDate)earliestRunDate;
- (NSDate)lastSuccessfulRunDate;
- (OS_xpc_object)criteria;
- (OS_xpc_object)currentActivity;
- (OS_xpc_object)currentCriteria;
- (double)_lock_modifiedIntervalForCurrentState;
- (double)modifiedIntervalForCurrentState;
- (id)_dateForDefaultsKey:(uint64_t)a1;
- (id)description;
- (id)xpcActivity_copyCriteria:(id)a3;
- (int64_t)errorCount;
- (uint64_t)_lock_errorCount;
- (void)_handleXPCActivityCallback:(uint64_t)a1;
- (void)_lock_activityFinishedWithResult:(void *)a3 minimumRetryInterval:(void *)a4 activityStartDate:(double)a5 error:;
- (void)_lock_incrementErrorCount;
- (void)_lock_setCriteria:(uint64_t)a1;
- (void)_lock_setLastSuccessfulRunDate:(const os_unfair_lock *)a1;
- (void)_performActivity:(uint64_t)a1;
- (void)_performCurrentActivityWithCompletion:(uint64_t)a1;
- (void)_updateStateForFinishedActivity:(uint64_t)a3 result:;
- (void)dealloc;
- (void)didPerformActivityWithResult:(int64_t)a3 minimumRetryInterval:(double)a4 activityStartDate:(id)a5 error:(id)a6;
- (void)externalConditionsChanged;
- (void)registerActivity;
- (void)resetIntervalWithCriteria:(id)a3;
- (void)setCriteria:(id)a3;
- (void)unitTest_reset;
- (void)unitTest_setActivityShim:(id)a3;
- (void)unitTest_synthesizeActivityFireWithCompletion:(id)a3;
- (void)unregisterActivity;
- (void)updateCriteriaForModifiedIntervalForCurrentState;
- (void)xpcActivity_register:(const char *)a3 criteria:(id)a4 handler:(id)a5;
- (void)xpcActivity_unregister:(const char *)a3;
@end

@implementation HDXPCPeriodicActivity

- (void)externalConditionsChanged
{
  v11 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  if (state == 2)
  {
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      v9 = 138543362;
      v10 = name;
      _os_log_impl(&dword_25156C000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Conditions changed while running; recording for immediate reconsideration.", &v9, 0xCu);
    }

    self->_conditionsChanged = 1;
    goto LABEL_9;
  }

  if (state != 3)
  {
LABEL_9:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_10;
  }

  _HKInitializeLogging();
  v4 = self->_loggingCategory;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = self->_name;
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_25156C000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Conditions changed while waiting; kicking off a run.", &v9, 0xCu);
  }

  os_unfair_lock_unlock(&self->_lock);
  [(HDXPCPeriodicActivity *)self _performCurrentActivityWithCompletion:?];
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
}

- (HDXPCPeriodicActivity)initWithName:(id)a3 baseInterval:(double)a4 criteria:(id)a5 loggingCategory:(id)a6 handler:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v31.receiver = self;
  v31.super_class = HDXPCPeriodicActivity;
  v16 = [(HDXPCPeriodicActivity *)&v31 init];
  if (v16)
  {
    v17 = [v12 copy];
    name = v16->_name;
    v16->_name = v17;

    v16->_baseInterval = a4;
    v19 = xpc_copy(v13);
    criteria = v16->_criteria;
    v16->_criteria = v19;

    v21 = [v15 copy];
    handler = v16->_handler;
    v16->_handler = v21;

    objc_storeStrong(&v16->_loggingCategory, a6);
    v16->_lock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&v16->_lock);
    _HKInitializeLogging();
    loggingCategory = v16->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v16->_name;
      v27 = loggingCategory;
      v28 = _HDXPCPeriodicActivityLastSuccessfulRunUserDefaultsKey(v26);
      v29 = [(HDXPCPeriodicActivity *)v16 _dateForDefaultsKey:v28];
      v30 = [(HDXPCPeriodicActivity *)v16 _lock_errorCount];
      *buf = 138543874;
      v33 = v12;
      v34 = 2112;
      v35 = v29;
      v36 = 2048;
      v37 = v30;
      _os_log_impl(&dword_25156C000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Initialized; Last Success: %@ (%ld errors since)", buf, 0x20u);
    }

    os_unfair_lock_unlock(&v16->_lock);
    objc_storeWeak(&v16->_activityShim, v16);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_25156C000, v1, OS_LOG_TYPE_FAULT, "[%{public}@]: Client bug: Dealloc before unregistration.", v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)registerDisabledPeriodicActivityWithName:(id)a3 loggingCategory:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ((HDIsUnitTesting() & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_25156C000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Registering DISABLED.", buf, 0xCu);
    }

    v7 = [v5 UTF8String];
    v8 = *MEMORY[0x277D86238];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __82__HDXPCPeriodicActivity_registerDisabledPeriodicActivityWithName_loggingCategory___block_invoke;
    v10[3] = &unk_2796BD878;
    v11 = v6;
    v12 = v5;
    xpc_activity_register(v7, v8, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __82__HDXPCPeriodicActivity_registerDisabledPeriodicActivityWithName_loggingCategory___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_activity_get_state(v3))
  {
    if (!xpc_activity_set_state(v3, 5))
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_ERROR))
      {
        __82__HDXPCPeriodicActivity_registerDisabledPeriodicActivityWithName_loggingCategory___block_invoke_cold_1(a1);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_25156C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Checked in DISABLED.", &v8, 0xCu);
    }

    xpc_activity_unregister([*(a1 + 40) UTF8String]);
  }

  objc_autoreleasePoolPop(v4);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)registerActivity
{
  v2 = 0;
  v14 = *MEMORY[0x277D85DE8];
  atomic_compare_exchange_strong(&self->_registered, &v2, 1u);
  if (!v2)
  {
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      *buf = 138543362;
      v13 = name;
      _os_log_impl(&dword_25156C000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Registering.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    WeakRetained = objc_loadWeakRetained(&self->_activityShim);
    v7 = [(NSString *)self->_name UTF8String];
    criteria = self->_criteria;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__HDXPCPeriodicActivity_registerActivity__block_invoke;
    v10[3] = &unk_2796BD8A0;
    objc_copyWeak(&v11, buf);
    [WeakRetained xpcActivity_register:v7 criteria:criteria handler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __41__HDXPCPeriodicActivity_registerActivity__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDXPCPeriodicActivity *)WeakRetained _handleXPCActivityCallback:v5];

  objc_autoreleasePoolPop(v3);
}

- (void)unregisterActivity
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 1;
  atomic_compare_exchange_strong(&self->_registered, &v2, 0);
  if (v2 == 1)
  {
    _HKInitializeLogging();
    loggingCategory = self->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      v8 = 138543362;
      v9 = name;
      _os_log_impl(&dword_25156C000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Unregistering.", &v8, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_activityShim);
    [WeakRetained xpcActivity_unregister:{-[NSString UTF8String](self->_name, "UTF8String")}];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (OS_xpc_object)criteria
{
  os_unfair_lock_lock(&self->_lock);
  v3 = xpc_copy(self->_criteria);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCriteria:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HDXPCPeriodicActivity *)self _lock_setCriteria:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (OS_xpc_object)currentActivity
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_currentActivity;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)didPerformActivityWithResult:(int64_t)a3 minimumRetryInterval:(double)a4 activityStartDate:(id)a5 error:(id)a6
{
  v10 = a6;
  v11 = a5;
  os_unfair_lock_lock(&self->_lock);
  [(HDXPCPeriodicActivity *)self _lock_activityFinishedWithResult:a3 minimumRetryInterval:v11 activityStartDate:v10 error:a4];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldDefer
{
  v3 = [(HDXPCPeriodicActivity *)self currentActivity];
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

- (BOOL)isWaiting
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_state == 3;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (OS_xpc_object)currentCriteria
{
  v3 = [(HDXPCPeriodicActivity *)self currentActivity];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activityShim);
    v5 = [WeakRetained xpcActivity_copyCriteria:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)modifiedIntervalForCurrentState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HDXPCPeriodicActivity *)self _lock_modifiedIntervalForCurrentState];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)resetIntervalWithCriteria:(id)a3
{
  [(HDXPCPeriodicActivity *)self setCriteria:a3];
  [(HDXPCPeriodicActivity *)self unregisterActivity];

  [(HDXPCPeriodicActivity *)self registerActivity];
}

void __63__HDXPCPeriodicActivity__performCurrentActivityWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = *(a1 + 32);
  v10 = *(v8 + 64);
  v9 = *(v8 + 72);
  v11 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
  v12 = v9;
  v13 = v10;
  v14 = v7;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_19;
      }

      _HKInitializeLogging();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *v30 = 138543618;
      *&v30[4] = v13;
      *&v30[12] = 2048;
      *&v30[14] = v11;
      v16 = "[%{public}@]: Requested wait after %0.3lfs.";
    }

    else
    {
      _HKInitializeLogging();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *v30 = 138543618;
      *&v30[4] = v13;
      *&v30[12] = 2048;
      *&v30[14] = v11;
      v16 = "[%{public}@]: Completed successfully in %0.3lfs.";
    }

    _os_log_impl(&dword_25156C000, v12, OS_LOG_TYPE_DEFAULT, v16, v30, 0x16u);
    goto LABEL_19;
  }

  switch(a2)
  {
    case 2:
      _HKInitializeLogging();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        break;
      }

      *v30 = 138543874;
      *&v30[4] = v13;
      *&v30[12] = 2048;
      *&v30[14] = v11;
      *&v30[22] = 2114;
      v31 = v14;
      v15 = "[%{public}@]: Failed with an ignorable error after %0.3lfs: %{public}@";
      goto LABEL_15;
    case 3:
      _HKInitializeLogging();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        break;
      }

      *v30 = 138543874;
      *&v30[4] = v13;
      *&v30[12] = 2048;
      *&v30[14] = v11;
      *&v30[22] = 2114;
      v31 = v14;
      v15 = "[%{public}@]: Failed with an error after %0.3lfs and will be retried: %{public}@";
      goto LABEL_15;
    case 4:
      _HKInitializeLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v30 = 138543874;
        *&v30[4] = v13;
        *&v30[12] = 2048;
        *&v30[14] = v11;
        *&v30[22] = 2114;
        v31 = v14;
        v15 = "[%{public}@]: Failed with a deferrable error after %0.3lfs: %{public}@";
LABEL_15:
        _os_log_error_impl(&dword_25156C000, v12, OS_LOG_TYPE_ERROR, v15, v30, 0x20u);
      }

      break;
  }

LABEL_19:

  _HKInitializeLogging();
  v17 = _HKLogPersistedSignposts();
  v18 = os_signpost_enabled(v17);

  if (v18)
  {
    v19 = _HKLogPersistedSignposts();
    v20 = v19;
    v21 = *(a1 + 72);
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v22 = *(*(a1 + 32) + 64);
      v23 = HDStringFromXPCPeriodicActivityResult(a2);
      *v30 = 138543618;
      *&v30[4] = v22;
      *&v30[12] = 2114;
      *&v30[14] = v23;
      _os_signpost_emit_with_name_impl(&dword_25156C000, v20, OS_SIGNPOST_INTERVAL_END, v21, "HDXPCPeriodicActivity", "name=%{public}@, result=%{public}@", v30, 0x16u);
    }
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v24 = *(a1 + 32);
  if (a2 == 1)
  {
    v25 = *(v24 + 40);
    *(v24 + 32) = 3;
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    (*(*(a1 + 56) + 16))();
    if (v25 == 1)
    {
      [(HDXPCPeriodicActivity *)*(a1 + 32) _performCurrentActivityWithCompletion:?];
    }
  }

  else
  {
    v27 = *(v24 + 24);
    *(v24 + 24) = 0;

    *(*(a1 + 32) + 32) = 0;
    v28 = *(a1 + 32);
    v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(a1 + 64)];
    [(HDXPCPeriodicActivity *)v28 _lock_activityFinishedWithResult:a2 minimumRetryInterval:v29 activityStartDate:v14 error:a4];

    os_unfair_lock_unlock((*(a1 + 32) + 8));
    [(HDXPCPeriodicActivity *)*(a1 + 32) _updateStateForFinishedActivity:a2 result:?];
    (*(*(a1 + 56) + 16))();
  }

  [*(a1 + 40) invalidate];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_updateStateForFinishedActivity:(uint64_t)a3 result:
{
  v5 = a2;
  v6 = v5;
  if (!a1 || !v5)
  {
    goto LABEL_25;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v14 = [WeakRetained xpcActivity_setCompletionStatus:0 activity:v6];

      if ((v14 & 1) == 0)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
        {
          [HDXPCPeriodicActivity _updateStateForFinishedActivity:a1 result:?];
        }
      }

      goto LABEL_25;
    }

    if (a3 == 1)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_FAULT))
      {
        [HDXPCPeriodicActivity _updateStateForFinishedActivity:a1 result:?];
      }

      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 == 4)
    {
      v9 = objc_loadWeakRetained((a1 + 56));
      v10 = [v9 xpcActivity_shouldDefer:v6];

      if (v10)
      {
        v11 = objc_loadWeakRetained((a1 + 56));
        v12 = [v11 xpcActivity_setState:3 activity:v6];

        if ((v12 & 1) == 0)
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
          {
            [HDXPCPeriodicActivity _updateStateForFinishedActivity:a1 result:?];
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
        {
          [HDXPCPeriodicActivity _updateStateForFinishedActivity:a1 result:?];
        }

        os_unfair_lock_lock((a1 + 8));
        [(HDXPCPeriodicActivity *)a1 _lock_incrementErrorCount];
        os_unfair_lock_unlock((a1 + 8));
        v17 = objc_loadWeakRetained((a1 + 56));
        v18 = [v17 xpcActivity_setCompletionStatus:1 activity:v6];

        if ((v18 & 1) == 0)
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }
        }
      }

      goto LABEL_25;
    }

LABEL_20:
    _HKInitializeLogging();
    if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
    {
      [HDXPCPeriodicActivity _updateStateForFinishedActivity:a1 result:?];
    }

    v15 = objc_loadWeakRetained((a1 + 56));
    v16 = [v15 xpcActivity_setCompletionStatus:0 activity:v6];

    if ((v16 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    goto LABEL_25;
  }

  v7 = objc_loadWeakRetained((a1 + 56));
  v8 = [v7 xpcActivity_setCompletionStatus:3 activity:v6];

  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
    {
LABEL_24:
      [HDXPCPeriodicActivity _updateStateForFinishedActivity:a1 result:?];
    }
  }

LABEL_25:
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

- (id)_dateForDefaultsKey:(uint64_t)a1
{
  if (a1)
  {
    v2 = MEMORY[0x277CBEBD0];
    v3 = a2;
    v4 = [v2 standardUserDefaults];
    v5 = [v4 objectForKey:v3];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_lock_errorCount
{
  if (result)
  {
    v2 = OUTLINED_FUNCTION_5(result);
    os_unfair_lock_assert_owner(v2);
    [MEMORY[0x277CBEBD0] standardUserDefaults];
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_9();
    v4 = _HDXPCPeriodicActivityErrorCountUserDefaultsKey(v3);
    v5 = [v1 integerForKey:v4];

    return v5;
  }

  return result;
}

- (id)description
{
  v3 = OUTLINED_FUNCTION_5(self);
  os_unfair_lock_lock(v3);
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(v2 + 64);
  v8 = @"idle";
  v9 = v7;
  switch(*(v2 + 32))
  {
    case 0:
      break;
    case 1:
      v8 = @"starting";
      goto LABEL_5;
    case 2:
      v8 = @"running";
      goto LABEL_5;
    case 3:
      v8 = @"waiting";
LABEL_5:
      v9 = *(v2 + 64);
      break;
    default:
      v8 = [cfstr_LhsExtraIndex.info stringWithFormat:@"unknown(%ld)", *(v2 + 32)];
      v9 = *(v2 + 64);
      break;
  }

  v10 = _HDXPCPeriodicActivityLastSuccessfulRunUserDefaultsKey(v9);
  v11 = [(HDXPCPeriodicActivity *)v2 _dateForDefaultsKey:v10];
  v12 = [v4 stringWithFormat:@"<%@:%p %@: %@ Last Success: %@ (%ld errors since) Interval: %0.2lfs>", v6, v2, v7, v8, v11, -[HDXPCPeriodicActivity _lock_errorCount](v2), *(v2 + 80)];

  os_unfair_lock_unlock((v2 + 8));

  return v12;
}

- (void)_handleXPCActivityCallback:(uint64_t)a1
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = [WeakRetained xpcActivity_getState:v3];

    _HKInitializeLogging();
    v6 = OUTLINED_FUNCTION_6();
    if (v5)
    {
      if (v6)
      {
        v15 = *(a1 + 64);
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_3(&dword_25156C000, v16, v17, "[%{public}@]: Fired.", v18, v19, v20, v21, v22);
      }

      [(HDXPCPeriodicActivity *)a1 _performActivity:v3];
    }

    else if (v6)
    {
      v7 = *(a1 + 64);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_3(&dword_25156C000, v8, v9, "[%{public}@]: Checked in.", v10, v11, v12, v13, v22);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_lock_setCriteria:(uint64_t)a1
{
  object2 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    if (!xpc_equal(*(a1 + 16), object2))
    {
      v3 = xpc_copy(object2);
      v4 = *(a1 + 16);
      *(a1 + 16) = v3;

      if (*(a1 + 24))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 56));
        [WeakRetained xpcActivity_setCriteria:object2 activity:*(a1 + 24)];
      }

      else
      {
        [a1 unregisterActivity];
        [a1 registerActivity];
      }
    }
  }
}

- (void)_lock_activityFinishedWithResult:(void *)a3 minimumRetryInterval:(void *)a4 activityStartDate:(double)a5 error:
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v11 = fmax(a5, 0.0);
    v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if (v11 <= 0.0)
    {
      v13 = _HDXPCPeriodicActivityEarliestNextRunUserDefaultsKey(*(a1 + 64));
      [v12 removeObjectForKey:v13];
    }

    else
    {
      v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v11];
      v14 = _HDXPCPeriodicActivityEarliestNextRunUserDefaultsKey(*(a1 + 64));
      [v12 setObject:v13 forKey:v14];
    }

    switch(a2)
    {
      case 0uLL:
        _HKInitializeLogging();
        v34 = OUTLINED_FUNCTION_10();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(a1 + 64);
          OUTLINED_FUNCTION_0();
          v39 = v11;
          _os_log_impl(&dword_25156C000, a2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: succeeded with minimum retry interval: %lfs", v37, 0x16u);
        }

        [(HDXPCPeriodicActivity *)a1 _lock_setLastSuccessfulRunDate:v9];
        goto LABEL_11;
      case 1uLL:
        _HKInitializeLogging();
        v15 = OUTLINED_FUNCTION_10();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 64);
          OUTLINED_FUNCTION_1_0();
          _os_log_impl(&dword_25156C000, a2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: waiting for external conditions to change", v37, 0xCu);
        }

        goto LABEL_8;
      case 2uLL:
LABEL_8:
        _HKInitializeLogging();
        v17 = OUTLINED_FUNCTION_10();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v18 = *(a1 + 64);
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_8();
        v24 = 32;
        break;
      case 3uLL:
        _HKInitializeLogging();
        v27 = OUTLINED_FUNCTION_10();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = *(a1 + 64);
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_8();
          _os_log_error_impl(v29, v30, v31, v32, v33, 0x20u);
        }

        [(HDXPCPeriodicActivity *)a1 _lock_incrementErrorCount];
        goto LABEL_11;
      case 4uLL:
        _HKInitializeLogging();
        v25 = OUTLINED_FUNCTION_10();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v36 = *(a1 + 64);
        OUTLINED_FUNCTION_1_0();
        v38 = 2114;
        v39 = *&v10;
        OUTLINED_FUNCTION_8();
        v24 = 22;
        break;
      default:
        goto LABEL_11;
    }

    _os_log_error_impl(v19, v20, v21, v22, v23, v24);
  }

LABEL_11:

  v26 = *MEMORY[0x277D85DE8];
}

- (int64_t)errorCount
{
  v3 = OUTLINED_FUNCTION_5(self);
  os_unfair_lock_lock(v3);
  v4 = [(HDXPCPeriodicActivity *)v2 _lock_errorCount];
  os_unfair_lock_unlock(v2 + 2);
  return v4;
}

- (NSDate)lastSuccessfulRunDate
{
  v4 = OUTLINED_FUNCTION_5(self);
  os_unfair_lock_lock(v4);
  _HDXPCPeriodicActivityLastSuccessfulRunUserDefaultsKey(*(v2 + 64));
  objc_claimAutoreleasedReturnValue();
  v5 = OUTLINED_FUNCTION_7();
  v7 = [(HDXPCPeriodicActivity *)v5 _dateForDefaultsKey:v6];

  os_unfair_lock_unlock((v2 + 8));

  return v7;
}

- (NSDate)earliestRunDate
{
  _HDXPCPeriodicActivityEarliestNextRunUserDefaultsKey(self->_name);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_7();
  v5 = [(HDXPCPeriodicActivity *)v3 _dateForDefaultsKey:v4];

  return v5;
}

- (void)_performCurrentActivityWithCompletion:(uint64_t)a1
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    if ((*(a1 + 32) & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      *(a1 + 32) = 2;
      v5 = *(a1 + 24);
      *(a1 + 40) = 0;
      os_unfair_lock_unlock((a1 + 8));
      v6 = [MEMORY[0x277CCD288] transactionWithOwner:a1 activityName:*(a1 + 64)];
      Current = CFAbsoluteTimeGetCurrent();
      _HKInitializeLogging();
      v8 = *(a1 + 72);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 64);
        *buf = 138543362;
        v32 = v9;
        _os_log_impl(&dword_25156C000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Calling out to client handler", buf, 0xCu);
      }

      v10 = _HKLogPersistedSignposts();
      v11 = os_signpost_id_make_with_pointer(v10, a1);

      _HKInitializeLogging();
      v12 = _HKLogPersistedSignposts();
      v13 = os_signpost_enabled(v12);

      if (v13)
      {
        v14 = _HKLogPersistedSignposts();
        v15 = v14;
        if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
        {
          v16 = *(a1 + 64);
          *buf = 138543362;
          v32 = v16;
          _os_signpost_emit_with_name_impl(&dword_25156C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v11, "HDXPCPeriodicActivity", "name=%{public}@", buf, 0xCu);
        }
      }

      v17 = *(a1 + 48);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __63__HDXPCPeriodicActivity__performCurrentActivityWithCompletion___block_invoke;
      v25[3] = &unk_2796BD8E8;
      v25[4] = a1;
      v29 = Current;
      v30 = v11;
      v27 = v5;
      v28 = v4;
      v26 = v6;
      v18 = *(v17 + 16);
      v19 = v5;
      v20 = v6;
      v18(v17, a1, v25);
    }

    else
    {
      os_unfair_lock_unlock((a1 + 8));
      _HKInitializeLogging();
      if (OUTLINED_FUNCTION_6())
      {
        v21 = *(a1 + 64);
        v22 = v2;
        v23 = NSStringFromSelector(sel__performCurrentActivityWithCompletion_);
        *buf = 138543618;
        v32 = v21;
        v33 = 2114;
        v34 = v23;
        _os_log_impl(&dword_25156C000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ called while not starting or waiting.", buf, 0x16u);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (double)_lock_modifiedIntervalForCurrentState
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = OUTLINED_FUNCTION_5(a1);
  os_unfair_lock_assert_owner(v3);
  v4 = *(v1 + 80);
  v5 = [(HDXPCPeriodicActivity *)v1 _lock_errorCount];
  if (v5 >= 1)
  {
    v4 = *(v1 + 80);
    v6 = 0.0;
    if (v5 != 1)
    {
      v7 = 20;
      if (v5 < 0x14)
      {
        v7 = v5;
      }

      v6 = exp2((v7 - 2)) * (v4 * 0.025);
    }

    if (v6 < v4)
    {
      v4 = v6;
    }
  }

  _HDXPCPeriodicActivityEarliestNextRunUserDefaultsKey(*(v1 + 64));
  objc_claimAutoreleasedReturnValue();
  v8 = OUTLINED_FUNCTION_7();
  v10 = [(HDXPCPeriodicActivity *)v8 _dateForDefaultsKey:v9];

  if (v10)
  {
    [v10 timeIntervalSinceNow];
  }

  else
  {
    v11 = 0.0;
  }

  if (v4 < v11)
  {
    v4 = v11;
  }

  return v4;
}

- (void)updateCriteriaForModifiedIntervalForCurrentState
{
  v3 = OUTLINED_FUNCTION_5(self);
  os_unfair_lock_lock(v3);
  v4 = [(HDXPCPeriodicActivity *)v2 _lock_modifiedIntervalForCurrentState];
  xpc_dictionary_set_int64(*(v2 + 16), *MEMORY[0x277D86288], v4);
  [(HDXPCPeriodicActivity *)v2 _lock_setCriteria:?];

  os_unfair_lock_unlock((v2 + 8));
}

- (void)_performActivity:(uint64_t)a1
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v6 = [WeakRetained xpcActivity_setState:4 activity:v4];

    if (v6)
    {
      os_unfair_lock_lock((a1 + 8));
      if (*(a1 + 32))
      {
        os_unfair_lock_unlock((a1 + 8));
        _HKInitializeLogging();
        if (OUTLINED_FUNCTION_6())
        {
          v7 = *(a1 + 64);
          OUTLINED_FUNCTION_1_0();
          OUTLINED_FUNCTION_3(&dword_25156C000, v8, v9, "[%{public}@]: Fired while already in progress; finishing activity immediately.", v10, v11, v12, v13, v26[0]);
        }

        v14 = objc_loadWeakRetained((a1 + 56));
        v15 = [v14 xpcActivity_setState:5 activity:v4];

        if ((v15 & 1) == 0)
        {
          _HKInitializeLogging();
          v16 = *(a1 + 72);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *(a1 + 64);
            OUTLINED_FUNCTION_1_0();
            _os_log_error_impl(&dword_25156C000, v16, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to set activity state during unexpected fire event.", v26, 0xCu);
          }
        }
      }

      else
      {
        *(a1 + 32) = 1;
        objc_storeStrong((a1 + 24), a2);
        os_unfair_lock_unlock((a1 + 8));
        [(HDXPCPeriodicActivity *)a1 _performCurrentActivityWithCompletion:?];
      }
    }

    else
    {
      _HKInitializeLogging();
      if (OUTLINED_FUNCTION_6())
      {
        v18 = *(a1 + 64);
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_3(&dword_25156C000, v19, v20, "[%{public}@]: Failed to continue activity.", v21, v22, v23, v24, v26[0]);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_lock_incrementErrorCount
{
  if (a1)
  {
    v2 = OUTLINED_FUNCTION_5(a1);
    os_unfair_lock_assert_owner(v2);
    v3 = [(HDXPCPeriodicActivity *)v1 _lock_errorCount];
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = _HDXPCPeriodicActivityErrorCountUserDefaultsKey(*(v1 + 64));
    [v5 setInteger:v3 + 1 forKey:v4];
  }
}

- (void)_lock_setLastSuccessfulRunDate:(const os_unfair_lock *)a1
{
  v8 = a2;
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 2);
    if (v8)
    {
      [MEMORY[0x277CBEBD0] standardUserDefaults];
      objc_claimAutoreleasedReturnValue();
      v4 = OUTLINED_FUNCTION_9();
      v5 = _HDXPCPeriodicActivityLastSuccessfulRunUserDefaultsKey(v4);
      [v2 setObject:v8 forKey:v5];
    }

    [MEMORY[0x277CBEBD0] standardUserDefaults];
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_9();
    v7 = _HDXPCPeriodicActivityErrorCountUserDefaultsKey(v6);
    [v2 setInteger:0 forKey:v7];
  }
}

- (void)unitTest_reset
{
  v4 = OUTLINED_FUNCTION_5(self);
  os_unfair_lock_lock(v4);
  [(HDXPCPeriodicActivity *)v2 _lock_setLastSuccessfulRunDate:?];
  [MEMORY[0x277CBEBD0] standardUserDefaults];
  objc_claimAutoreleasedReturnValue();
  v5 = OUTLINED_FUNCTION_9();
  v6 = _HDXPCPeriodicActivityErrorCountUserDefaultsKey(v5);
  [v3 setInteger:0 forKey:v6];

  [MEMORY[0x277CBEBD0] standardUserDefaults];
  objc_claimAutoreleasedReturnValue();
  v7 = OUTLINED_FUNCTION_9();
  v8 = _HDXPCPeriodicActivityEarliestNextRunUserDefaultsKey(v7);
  [v3 removeObjectForKey:v8];

  os_unfair_lock_unlock(&v2[2]);
}

- (void)unitTest_synthesizeActivityFireWithCompletion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HDXPCPeriodicActivity *)self _lock_setLastSuccessfulRunDate:?];
  self->_state = 1;
  os_unfair_lock_unlock(&self->_lock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HDXPCPeriodicActivity_unitTest_synthesizeActivityFireWithCompletion___block_invoke;
  v6[3] = &unk_2796BD910;
  v7 = v4;
  v5 = v4;
  [(HDXPCPeriodicActivity *)self _performCurrentActivityWithCompletion:v6];
}

void __82__HDXPCPeriodicActivity_registerDisabledPeriodicActivityWithName_loggingCategory___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_25156C000, v2, v3, "[%{public}@]: Failed to set state as 'done' after firing while disabled.", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateStateForFinishedActivity:(uint64_t)a1 result:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_25156C000, v1, v2, "[%{public}@]: Failed to finish activity", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateStateForFinishedActivity:(uint64_t)a1 result:.cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_25156C000, v1, v2, "[%{public}@]: Activity completed requesting deferral, but should not be deferred", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateStateForFinishedActivity:(uint64_t)a1 result:.cold.4(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_25156C000, v1, v2, "[%{public}@]: Failed to defer activity", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateStateForFinishedActivity:(uint64_t)a1 result:.cold.5(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_25156C000, v1, v2, "[%{public}@]: Failed to set completion status after activity finish", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateStateForFinishedActivity:(uint64_t)a1 result:.cold.6(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_25156C000, v1, OS_LOG_TYPE_FAULT, "[%{public}@]: Attempting to finish activity, but client requested waiting.", v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_updateStateForFinishedActivity:(uint64_t)a1 result:.cold.7(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  v5 = v1;
  _os_log_error_impl(&dword_25156C000, v2, OS_LOG_TYPE_ERROR, "[%{public}@]: Invalid activity result %ld; assuming done.", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end