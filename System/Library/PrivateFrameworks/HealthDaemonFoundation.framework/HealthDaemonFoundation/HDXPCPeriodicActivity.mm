@interface HDXPCPeriodicActivity
+ (void)registerDisabledPeriodicActivityWithName:(id)name loggingCategory:(id)category;
- (BOOL)isWaiting;
- (BOOL)shouldDefer;
- (HDXPCPeriodicActivity)initWithName:(id)name baseInterval:(double)interval criteria:(id)criteria loggingCategory:(id)category handler:(id)handler;
- (NSDate)earliestRunDate;
- (NSDate)lastSuccessfulRunDate;
- (OS_xpc_object)criteria;
- (OS_xpc_object)currentActivity;
- (OS_xpc_object)currentCriteria;
- (double)_lock_modifiedIntervalForCurrentState;
- (double)modifiedIntervalForCurrentState;
- (id)_dateForDefaultsKey:(uint64_t)key;
- (id)description;
- (id)xpcActivity_copyCriteria:(id)criteria;
- (int64_t)errorCount;
- (uint64_t)_lock_errorCount;
- (void)_handleXPCActivityCallback:(uint64_t)callback;
- (void)_lock_activityFinishedWithResult:(void *)result minimumRetryInterval:(void *)interval activityStartDate:(double)date error:;
- (void)_lock_incrementErrorCount;
- (void)_lock_setCriteria:(uint64_t)criteria;
- (void)_lock_setLastSuccessfulRunDate:(const os_unfair_lock *)date;
- (void)_performActivity:(uint64_t)activity;
- (void)_performCurrentActivityWithCompletion:(uint64_t)completion;
- (void)_updateStateForFinishedActivity:(uint64_t)activity result:;
- (void)dealloc;
- (void)didPerformActivityWithResult:(int64_t)result minimumRetryInterval:(double)interval activityStartDate:(id)date error:(id)error;
- (void)externalConditionsChanged;
- (void)registerActivity;
- (void)resetIntervalWithCriteria:(id)criteria;
- (void)setCriteria:(id)criteria;
- (void)unitTest_reset;
- (void)unitTest_setActivityShim:(id)shim;
- (void)unitTest_synthesizeActivityFireWithCompletion:(id)completion;
- (void)unregisterActivity;
- (void)updateCriteriaForModifiedIntervalForCurrentState;
- (void)xpcActivity_register:(const char *)activity_register criteria:(id)criteria handler:(id)handler;
- (void)xpcActivity_unregister:(const char *)activity_unregister;
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

- (HDXPCPeriodicActivity)initWithName:(id)name baseInterval:(double)interval criteria:(id)criteria loggingCategory:(id)category handler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  criteriaCopy = criteria;
  categoryCopy = category;
  handlerCopy = handler;
  v31.receiver = self;
  v31.super_class = HDXPCPeriodicActivity;
  v16 = [(HDXPCPeriodicActivity *)&v31 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    name = v16->_name;
    v16->_name = v17;

    v16->_baseInterval = interval;
    v19 = xpc_copy(criteriaCopy);
    criteria = v16->_criteria;
    v16->_criteria = v19;

    v21 = [handlerCopy copy];
    handler = v16->_handler;
    v16->_handler = v21;

    objc_storeStrong(&v16->_loggingCategory, category);
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
      _lock_errorCount = [(HDXPCPeriodicActivity *)v16 _lock_errorCount];
      *buf = 138543874;
      v33 = nameCopy;
      v34 = 2112;
      v35 = v29;
      v36 = 2048;
      v37 = _lock_errorCount;
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
  OUTLINED_FUNCTION_4(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_25156C000, v1, OS_LOG_TYPE_FAULT, "[%{public}@]: Client bug: Dealloc before unregistration.", v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)registerDisabledPeriodicActivityWithName:(id)name loggingCategory:(id)category
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  categoryCopy = category;
  if ((HDIsUnitTesting() & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(categoryCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = nameCopy;
      _os_log_impl(&dword_25156C000, categoryCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Registering DISABLED.", buf, 0xCu);
    }

    uTF8String = [nameCopy UTF8String];
    v8 = *MEMORY[0x277D86238];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __82__HDXPCPeriodicActivity_registerDisabledPeriodicActivityWithName_loggingCategory___block_invoke;
    v10[3] = &unk_2796BD878;
    v11 = categoryCopy;
    v12 = nameCopy;
    xpc_activity_register(uTF8String, v8, v10);
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
    uTF8String = [(NSString *)self->_name UTF8String];
    criteria = self->_criteria;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__HDXPCPeriodicActivity_registerActivity__block_invoke;
    v10[3] = &unk_2796BD8A0;
    objc_copyWeak(&v11, buf);
    [WeakRetained xpcActivity_register:uTF8String criteria:criteria handler:v10];

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

- (void)setCriteria:(id)criteria
{
  criteriaCopy = criteria;
  os_unfair_lock_lock(&self->_lock);
  [(HDXPCPeriodicActivity *)self _lock_setCriteria:criteriaCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (OS_xpc_object)currentActivity
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_currentActivity;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)didPerformActivityWithResult:(int64_t)result minimumRetryInterval:(double)interval activityStartDate:(id)date error:(id)error
{
  errorCopy = error;
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  [(HDXPCPeriodicActivity *)self _lock_activityFinishedWithResult:result minimumRetryInterval:dateCopy activityStartDate:errorCopy error:interval];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldDefer
{
  currentActivity = [(HDXPCPeriodicActivity *)self currentActivity];
  if (currentActivity)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activityShim);
    v5 = [WeakRetained xpcActivity_shouldDefer:currentActivity];
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
  currentActivity = [(HDXPCPeriodicActivity *)self currentActivity];
  if (currentActivity)
  {
    WeakRetained = objc_loadWeakRetained(&self->_activityShim);
    v5 = [WeakRetained xpcActivity_copyCriteria:currentActivity];
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
  _lock_modifiedIntervalForCurrentState = [(HDXPCPeriodicActivity *)self _lock_modifiedIntervalForCurrentState];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_modifiedIntervalForCurrentState;
}

- (void)resetIntervalWithCriteria:(id)criteria
{
  [(HDXPCPeriodicActivity *)self setCriteria:criteria];
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

- (void)_updateStateForFinishedActivity:(uint64_t)activity result:
{
  v5 = a2;
  v6 = v5;
  if (!self || !v5)
  {
    goto LABEL_25;
  }

  if (activity <= 1)
  {
    if (!activity)
    {
      WeakRetained = objc_loadWeakRetained((self + 56));
      v14 = [WeakRetained xpcActivity_setCompletionStatus:0 activity:v6];

      if ((v14 & 1) == 0)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*(self + 72), OS_LOG_TYPE_ERROR))
        {
          [HDXPCPeriodicActivity _updateStateForFinishedActivity:self result:?];
        }
      }

      goto LABEL_25;
    }

    if (activity == 1)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*(self + 72), OS_LOG_TYPE_FAULT))
      {
        [HDXPCPeriodicActivity _updateStateForFinishedActivity:self result:?];
      }

      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((activity - 2) >= 2)
  {
    if (activity == 4)
    {
      v9 = objc_loadWeakRetained((self + 56));
      v10 = [v9 xpcActivity_shouldDefer:v6];

      if (v10)
      {
        v11 = objc_loadWeakRetained((self + 56));
        v12 = [v11 xpcActivity_setState:3 activity:v6];

        if ((v12 & 1) == 0)
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*(self + 72), OS_LOG_TYPE_ERROR))
          {
            [HDXPCPeriodicActivity _updateStateForFinishedActivity:self result:?];
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*(self + 72), OS_LOG_TYPE_ERROR))
        {
          [HDXPCPeriodicActivity _updateStateForFinishedActivity:self result:?];
        }

        os_unfair_lock_lock((self + 8));
        [(HDXPCPeriodicActivity *)self _lock_incrementErrorCount];
        os_unfair_lock_unlock((self + 8));
        v17 = objc_loadWeakRetained((self + 56));
        v18 = [v17 xpcActivity_setCompletionStatus:1 activity:v6];

        if ((v18 & 1) == 0)
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*(self + 72), OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }
        }
      }

      goto LABEL_25;
    }

LABEL_20:
    _HKInitializeLogging();
    if (os_log_type_enabled(*(self + 72), OS_LOG_TYPE_ERROR))
    {
      [HDXPCPeriodicActivity _updateStateForFinishedActivity:self result:?];
    }

    v15 = objc_loadWeakRetained((self + 56));
    v16 = [v15 xpcActivity_setCompletionStatus:0 activity:v6];

    if ((v16 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*(self + 72), OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    goto LABEL_25;
  }

  v7 = objc_loadWeakRetained((self + 56));
  v8 = [v7 xpcActivity_setCompletionStatus:3 activity:v6];

  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*(self + 72), OS_LOG_TYPE_ERROR))
    {
LABEL_24:
      [HDXPCPeriodicActivity _updateStateForFinishedActivity:self result:?];
    }
  }

LABEL_25:
}

- (void)xpcActivity_register:(const char *)activity_register criteria:(id)criteria handler:(id)handler
{
  criteria = criteria;
  handlerCopy = handler;
  if ((HDIsUnitTesting() & 1) == 0)
  {
    xpc_activity_register(activity_register, criteria, handlerCopy);
  }
}

- (void)xpcActivity_unregister:(const char *)activity_unregister
{
  if ((HDIsUnitTesting() & 1) == 0)
  {

    xpc_activity_unregister(activity_unregister);
  }
}

- (id)xpcActivity_copyCriteria:(id)criteria
{
  v3 = xpc_activity_copy_criteria(criteria);

  return v3;
}

- (void)unitTest_setActivityShim:(id)shim
{
  shimCopy = shim;
  os_unfair_lock_lock(&self->_lock);
  if (shimCopy)
  {
    selfCopy = shimCopy;
  }

  else
  {
    selfCopy = self;
  }

  objc_storeWeak(&self->_activityShim, selfCopy);
  os_unfair_lock_unlock(&self->_lock);
}

- (id)_dateForDefaultsKey:(uint64_t)key
{
  if (key)
  {
    v2 = MEMORY[0x277CBEBD0];
    v3 = a2;
    standardUserDefaults = [v2 standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:v3];

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

- (void)_handleXPCActivityCallback:(uint64_t)callback
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (callback)
  {
    WeakRetained = objc_loadWeakRetained((callback + 56));
    v5 = [WeakRetained xpcActivity_getState:v3];

    _HKInitializeLogging();
    v6 = OUTLINED_FUNCTION_6();
    if (v5)
    {
      if (v6)
      {
        v15 = *(callback + 64);
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_3(&dword_25156C000, v16, v17, "[%{public}@]: Fired.", v18, v19, v20, v21, v22);
      }

      [(HDXPCPeriodicActivity *)callback _performActivity:v3];
    }

    else if (v6)
    {
      v7 = *(callback + 64);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_3(&dword_25156C000, v8, v9, "[%{public}@]: Checked in.", v10, v11, v12, v13, v22);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_lock_setCriteria:(uint64_t)criteria
{
  object2 = a2;
  if (criteria)
  {
    os_unfair_lock_assert_owner((criteria + 8));
    if (!xpc_equal(*(criteria + 16), object2))
    {
      v3 = xpc_copy(object2);
      v4 = *(criteria + 16);
      *(criteria + 16) = v3;

      if (*(criteria + 24))
      {
        WeakRetained = objc_loadWeakRetained((criteria + 56));
        [WeakRetained xpcActivity_setCriteria:object2 activity:*(criteria + 24)];
      }

      else
      {
        [criteria unregisterActivity];
        [criteria registerActivity];
      }
    }
  }
}

- (void)_lock_activityFinishedWithResult:(void *)result minimumRetryInterval:(void *)interval activityStartDate:(double)date error:
{
  v40 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  intervalCopy = interval;
  if (self)
  {
    os_unfair_lock_assert_owner((self + 8));
    v11 = fmax(date, 0.0);
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if (v11 <= 0.0)
    {
      v13 = _HDXPCPeriodicActivityEarliestNextRunUserDefaultsKey(*(self + 64));
      [standardUserDefaults removeObjectForKey:v13];
    }

    else
    {
      v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v11];
      v14 = _HDXPCPeriodicActivityEarliestNextRunUserDefaultsKey(*(self + 64));
      [standardUserDefaults setObject:v13 forKey:v14];
    }

    switch(a2)
    {
      case 0uLL:
        _HKInitializeLogging();
        v34 = OUTLINED_FUNCTION_10();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(self + 64);
          OUTLINED_FUNCTION_0();
          v39 = v11;
          _os_log_impl(&dword_25156C000, a2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: succeeded with minimum retry interval: %lfs", v37, 0x16u);
        }

        [(HDXPCPeriodicActivity *)self _lock_setLastSuccessfulRunDate:resultCopy];
        goto LABEL_11;
      case 1uLL:
        _HKInitializeLogging();
        v15 = OUTLINED_FUNCTION_10();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(self + 64);
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

        v18 = *(self + 64);
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
          v28 = *(self + 64);
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_8();
          _os_log_error_impl(v29, v30, v31, v32, v33, 0x20u);
        }

        [(HDXPCPeriodicActivity *)self _lock_incrementErrorCount];
        goto LABEL_11;
      case 4uLL:
        _HKInitializeLogging();
        v25 = OUTLINED_FUNCTION_10();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        v36 = *(self + 64);
        OUTLINED_FUNCTION_1_0();
        v38 = 2114;
        v39 = *&intervalCopy;
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
  _lock_errorCount = [(HDXPCPeriodicActivity *)v2 _lock_errorCount];
  os_unfair_lock_unlock(v2 + 2);
  return _lock_errorCount;
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

- (void)_performCurrentActivityWithCompletion:(uint64_t)completion
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (completion)
  {
    os_unfair_lock_lock((completion + 8));
    if ((*(completion + 32) & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      *(completion + 32) = 2;
      v5 = *(completion + 24);
      *(completion + 40) = 0;
      os_unfair_lock_unlock((completion + 8));
      v6 = [MEMORY[0x277CCD288] transactionWithOwner:completion activityName:*(completion + 64)];
      Current = CFAbsoluteTimeGetCurrent();
      _HKInitializeLogging();
      v8 = *(completion + 72);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(completion + 64);
        *buf = 138543362;
        v32 = v9;
        _os_log_impl(&dword_25156C000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Calling out to client handler", buf, 0xCu);
      }

      v10 = _HKLogPersistedSignposts();
      v11 = os_signpost_id_make_with_pointer(v10, completion);

      _HKInitializeLogging();
      v12 = _HKLogPersistedSignposts();
      v13 = os_signpost_enabled(v12);

      if (v13)
      {
        v14 = _HKLogPersistedSignposts();
        v15 = v14;
        if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
        {
          v16 = *(completion + 64);
          *buf = 138543362;
          v32 = v16;
          _os_signpost_emit_with_name_impl(&dword_25156C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v11, "HDXPCPeriodicActivity", "name=%{public}@", buf, 0xCu);
        }
      }

      v17 = *(completion + 48);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __63__HDXPCPeriodicActivity__performCurrentActivityWithCompletion___block_invoke;
      v25[3] = &unk_2796BD8E8;
      v25[4] = completion;
      v29 = Current;
      v30 = v11;
      v27 = v5;
      v28 = v4;
      v26 = v6;
      v18 = *(v17 + 16);
      v19 = v5;
      v20 = v6;
      v18(v17, completion, v25);
    }

    else
    {
      os_unfair_lock_unlock((completion + 8));
      _HKInitializeLogging();
      if (OUTLINED_FUNCTION_6())
      {
        v21 = *(completion + 64);
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
  if (!self)
  {
    return 0.0;
  }

  v3 = OUTLINED_FUNCTION_5(self);
  os_unfair_lock_assert_owner(v3);
  v4 = *(v1 + 80);
  _lock_errorCount = [(HDXPCPeriodicActivity *)v1 _lock_errorCount];
  if (_lock_errorCount >= 1)
  {
    v4 = *(v1 + 80);
    v6 = 0.0;
    if (_lock_errorCount != 1)
    {
      v7 = 20;
      if (_lock_errorCount < 0x14)
      {
        v7 = _lock_errorCount;
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
  _lock_modifiedIntervalForCurrentState = [(HDXPCPeriodicActivity *)v2 _lock_modifiedIntervalForCurrentState];
  xpc_dictionary_set_int64(*(v2 + 16), *MEMORY[0x277D86288], _lock_modifiedIntervalForCurrentState);
  [(HDXPCPeriodicActivity *)v2 _lock_setCriteria:?];

  os_unfair_lock_unlock((v2 + 8));
}

- (void)_performActivity:(uint64_t)activity
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (activity)
  {
    WeakRetained = objc_loadWeakRetained((activity + 56));
    v6 = [WeakRetained xpcActivity_setState:4 activity:v4];

    if (v6)
    {
      os_unfair_lock_lock((activity + 8));
      if (*(activity + 32))
      {
        os_unfair_lock_unlock((activity + 8));
        _HKInitializeLogging();
        if (OUTLINED_FUNCTION_6())
        {
          v7 = *(activity + 64);
          OUTLINED_FUNCTION_1_0();
          OUTLINED_FUNCTION_3(&dword_25156C000, v8, v9, "[%{public}@]: Fired while already in progress; finishing activity immediately.", v10, v11, v12, v13, v26[0]);
        }

        v14 = objc_loadWeakRetained((activity + 56));
        v15 = [v14 xpcActivity_setState:5 activity:v4];

        if ((v15 & 1) == 0)
        {
          _HKInitializeLogging();
          v16 = *(activity + 72);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *(activity + 64);
            OUTLINED_FUNCTION_1_0();
            _os_log_error_impl(&dword_25156C000, v16, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to set activity state during unexpected fire event.", v26, 0xCu);
          }
        }
      }

      else
      {
        *(activity + 32) = 1;
        objc_storeStrong((activity + 24), a2);
        os_unfair_lock_unlock((activity + 8));
        [(HDXPCPeriodicActivity *)activity _performCurrentActivityWithCompletion:?];
      }
    }

    else
    {
      _HKInitializeLogging();
      if (OUTLINED_FUNCTION_6())
      {
        v18 = *(activity + 64);
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_3(&dword_25156C000, v19, v20, "[%{public}@]: Failed to continue activity.", v21, v22, v23, v24, v26[0]);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_lock_incrementErrorCount
{
  if (self)
  {
    v2 = OUTLINED_FUNCTION_5(self);
    os_unfair_lock_assert_owner(v2);
    _lock_errorCount = [(HDXPCPeriodicActivity *)v1 _lock_errorCount];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = _HDXPCPeriodicActivityErrorCountUserDefaultsKey(*(v1 + 64));
    [standardUserDefaults setInteger:_lock_errorCount + 1 forKey:v4];
  }
}

- (void)_lock_setLastSuccessfulRunDate:(const os_unfair_lock *)date
{
  v8 = a2;
  if (date)
  {
    os_unfair_lock_assert_owner(date + 2);
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

- (void)unitTest_synthesizeActivityFireWithCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  [(HDXPCPeriodicActivity *)self _lock_setLastSuccessfulRunDate:?];
  self->_state = 1;
  os_unfair_lock_unlock(&self->_lock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HDXPCPeriodicActivity_unitTest_synthesizeActivityFireWithCompletion___block_invoke;
  v6[3] = &unk_2796BD910;
  v7 = completionCopy;
  v5 = completionCopy;
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