@interface HDPeriodicActivity
- (BOOL)shouldDefer;
- (HDPeriodicActivity)initWithProfile:(id)a3 name:(id)a4 interval:(double)a5 delegate:(id)a6 loggingCategory:(id)a7;
- (HDPeriodicActivityDelegate)delegate;
- (NSString)description;
- (id)_criteriaForInterval:(uint64_t)a1;
- (id)diagnosticDescription;
- (uint64_t)_requiresProtectedData;
- (void)daemonActivated:(id)a3;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)dealloc;
- (void)didPerformActivityWithResult:(int64_t)a3 minimumRetryInterval:(double)a4 activityStartDate:(id)a5 error:(id)a6;
- (void)resetInterval;
@end

@implementation HDPeriodicActivity

- (HDPeriodicActivity)initWithProfile:(id)a3 name:(id)a4 interval:(double)a5 delegate:(id)a6 loggingCategory:(id)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v33.receiver = self;
  v33.super_class = HDPeriodicActivity;
  v16 = [(HDPeriodicActivity *)&v33 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_profile, v12);
    objc_initWeak(&location, v17);
    v18 = objc_alloc(MEMORY[0x277D10BF8]);
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __77__HDPeriodicActivity_initWithProfile_name_interval_delegate_loggingCategory___block_invoke;
    v30 = &unk_27862F2E0;
    objc_copyWeak(&v31, &location);
    v19 = [v18 initWithName:v13 baseInterval:*MEMORY[0x277D86238] criteria:v15 loggingCategory:&v27 handler:a5];
    activity = v17->_activity;
    v17->_activity = v19;

    objc_storeWeak(&v17->_delegate, v14);
    v21 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v21 addObject:v17];

    _HKInitializeLogging();
    loggingCategory = v17->_loggingCategory;
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v13;
      _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "Starting up XPC service scheduler (%@)", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&v17->_profile);
    v24 = [WeakRetained daemon];
    [v24 registerDaemonActivatedObserver:v17 queue:0];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v17;
}

void __77__HDPeriodicActivity_initWithProfile_name_interval_delegate_loggingCategory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 currentActivity];

  v8 = v7;
  v9 = v5;
  if (WeakRetained)
  {
    if (-[HDPeriodicActivity _requiresProtectedData](WeakRetained) && (v10 = objc_loadWeakRetained(WeakRetained + 1), [v10 database], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isProtectedDataAvailable"), v11, v10, (v12 & 1) == 0))
    {
      v9[2](v9, 1, 0, 0.0);
      v14 = objc_loadWeakRetained(WeakRetained + 6);
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = objc_loadWeakRetained(WeakRetained + 6);
        [v16 unitTesting_runDeclinedForActivity:WeakRetained];
      }
    }

    else
    {
      v13 = objc_loadWeakRetained(WeakRetained + 6);
      v19 = v9;
      v18 = v8;
      [v13 performPeriodicActivity:? completion:?];
    }
  }
}

- (void)dealloc
{
  [(HDXPCPeriodicActivity *)self->_activity unregisterActivity];
  v3.receiver = self;
  v3.super_class = HDPeriodicActivity;
  [(HDPeriodicActivity *)&v3 dealloc];
}

- (void)didPerformActivityWithResult:(int64_t)a3 minimumRetryInterval:(double)a4 activityStartDate:(id)a5 error:(id)a6
{
  activity = self->_activity;
  if (a3 > 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = qword_229181980[a3];
  }

  [(HDXPCPeriodicActivity *)activity didPerformActivityWithResult:v7 minimumRetryInterval:a5 activityStartDate:a6 error:a4];
}

- (BOOL)shouldDefer
{
  if (_HDIsUnitTesting)
  {
    return self->_unitTest_shouldDefer;
  }

  else
  {
    return [(HDXPCPeriodicActivity *)self->_activity shouldDefer];
  }
}

- (void)resetInterval
{
  if (self)
  {
    [(HDXPCPeriodicActivity *)self->_activity modifiedIntervalForCurrentState];
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [(HDPeriodicActivity *)self _criteriaForInterval:v3];
  [(HDXPCPeriodicActivity *)self->_activity setCriteria:v4];

  [(HDXPCPeriodicActivity *)self->_activity unregisterActivity];
  activity = self->_activity;

  [(HDXPCPeriodicActivity *)activity registerActivity];
}

- (id)_criteriaForInterval:(uint64_t)a1
{
  if (a1)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    v5 = v4;
    if (a2 > 0.0)
    {
      xpc_dictionary_set_int64(v4, *MEMORY[0x277D86288], a2);
    }

    if ([(HDPeriodicActivity *)a1 _requiresProtectedData])
    {
      xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86370], 1);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained periodicActivity:a1 configureXPCActivityCriteria:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)daemonActivated:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained database];
  [v5 addProtectedDataObserver:self];

  if (self)
  {
    [(HDXPCPeriodicActivity *)self->_activity modifiedIntervalForCurrentState];
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(HDPeriodicActivity *)self _criteriaForInterval:v6];
  [(HDXPCPeriodicActivity *)self->_activity setCriteria:v7];
  [(HDXPCPeriodicActivity *)self->_activity registerActivity];
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  if (a4)
  {
    [(HDXPCPeriodicActivity *)self->_activity externalConditionsChanged];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HDXPCPeriodicActivity *)self->_activity name];
  [(HDXPCPeriodicActivity *)self->_activity baseInterval];
  v8 = [v3 stringWithFormat:@"<%@:%p %@ (%0.2lfs)>", v5, self, v6, v7];

  return v8;
}

- (uint64_t)_requiresProtectedData
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 periodicActivityRequiresProtectedData:a1];

  return v5;
}

void __51__HDPeriodicActivity__fireWithActivity_completion___block_invoke(void *a1, unint64_t a2)
{
  v4 = a1[6];
  if (a2 > 3)
  {
    v5 = 2;
  }

  else
  {
    v5 = qword_229181980[a2];
  }

  (*(v4 + 16))(v4, v5);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[5];
    v8 = v6;
    if (v7)
    {
      [*(v7 + 16) modifiedIntervalForCurrentState];
      v10 = v9;
      v11 = xpc_activity_copy_criteria(v8);
      v12 = [(HDPeriodicActivity *)v7 _criteriaForInterval:v10];
      if (!v11 || !xpc_equal(v11, v12))
      {
        xpc_activity_set_criteria(v8, v12);
      }
    }
  }

  WeakRetained = objc_loadWeakRetained((a1[5] + 48));
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained((a1[5] + 48));
    [v15 unitTesting_didPerformActivityWithResult:a2];
  }
}

- (id)diagnosticDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HDXPCPeriodicActivity *)self->_activity name];
  v5 = [(HDXPCPeriodicActivity *)self->_activity lastSuccessfulRunDate];
  [(HDXPCPeriodicActivity *)self->_activity baseInterval];
  v7 = v6;
  v8 = [(HDXPCPeriodicActivity *)self->_activity earliestRunDate];
  v9 = [v3 stringWithFormat:@"Activity: '%@'\nLast Successful Run: %@\nBase Interval: %lfs\nEarliest Run Date: %@\nError Count: %ld", v4, v5, v7, v8, -[HDXPCPeriodicActivity errorCount](self->_activity, "errorCount")];

  return v9;
}

- (HDPeriodicActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end