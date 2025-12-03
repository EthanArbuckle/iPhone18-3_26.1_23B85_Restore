@interface HDMCAnalysisScheduler
- (HDMCAnalysisScheduler)initWithDaemon:(id)daemon analysisManager:(id)manager settingsManager:(id)settingsManager;
- (double)_delayUntilNextAnalysisSchedulingWindowStartDateAfterDate:(id)date;
- (void)_handleActivity:(id)activity forceRescheduleOnCheckIn:(BOOL)in;
- (void)_registerActivityAfterCompletion:(BOOL)completion;
- (void)_runAnalysis;
- (void)daemonReady:(id)ready;
- (void)dealloc;
@end

@implementation HDMCAnalysisScheduler

- (HDMCAnalysisScheduler)initWithDaemon:(id)daemon analysisManager:(id)manager settingsManager:(id)settingsManager
{
  daemonCopy = daemon;
  managerCopy = manager;
  settingsManagerCopy = settingsManager;
  v14.receiver = self;
  v14.super_class = HDMCAnalysisScheduler;
  v11 = [(HDMCAnalysisScheduler *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_analysisManager, manager);
    objc_storeStrong(&v12->_settingsManager, settingsManager);
    [daemonCopy registerDaemonReadyObserver:v12 queue:0];
  }

  return v12;
}

- (void)dealloc
{
  xpc_activity_unregister("com.apple.Health.menstrualcycles.analysisupdates");
  v3.receiver = self;
  v3.super_class = HDMCAnalysisScheduler;
  [(HDMCAnalysisScheduler *)&v3 dealloc];
}

- (void)_registerActivityAfterCompletion:(BOOL)completion
{
  objc_initWeak(&location, self);
  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __58__HDMCAnalysisScheduler__registerActivityAfterCompletion___block_invoke;
  handler[3] = &unk_27865AE58;
  objc_copyWeak(&v6, &location);
  completionCopy = completion;
  xpc_activity_register("com.apple.Health.menstrualcycles.analysisupdates", v4, handler);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __58__HDMCAnalysisScheduler__registerActivityAfterCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleActivity:v3 forceRescheduleOnCheckIn:*(a1 + 40)];
}

- (void)_handleActivity:(id)activity forceRescheduleOnCheckIn:(BOOL)in
{
  inCopy = in;
  v34 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  state = xpc_activity_get_state(activityCopy);
  if (state == 2)
  {
    [(HDMCAnalysisScheduler *)self _runAnalysis];
    if ((xpc_activity_set_completion_status() & 1) == 0)
    {
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCAnalysisScheduler _handleActivity:v18 forceRescheduleOnCheckIn:?];
      }
    }

    [(HDMCAnalysisScheduler *)self _registerActivityAfterCompletion:1];
  }

  else
  {
    v8 = state;
    if (!state)
    {
      v9 = xpc_activity_copy_criteria(activityCopy);
      v10 = v9;
      v11 = MEMORY[0x277D86250];
      if (v9)
      {
        int64 = xpc_dictionary_get_int64(v9, *MEMORY[0x277D86250]);
        _HKInitializeLogging();
        v13 = *MEMORY[0x277CCC2E8];
        v14 = os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_INFO);
        if (int64)
        {
          if (!inCopy)
          {
            if (v14)
            {
              v25 = v13;
              v26 = objc_opt_class();
              v27 = MEMORY[0x277CCABB0];
              v28 = v26;
              v29 = [v27 numberWithLongLong:int64];
              v30 = 138543618;
              v31 = v26;
              v32 = 2112;
              v33 = v29;
              _os_log_impl(&dword_2293D1000, v25, OS_LOG_TYPE_INFO, "[%{public}@] Found existing valid criteria; not rescheduling. Delay: %@", &v30, 0x16u);
            }

            goto LABEL_20;
          }

          if (v14)
          {
            v15 = v13;
            v30 = 138543362;
            v31 = objc_opt_class();
            v16 = v31;
            v17 = "[%{public}@] Rescheduling for completed activity";
LABEL_18:
            _os_log_impl(&dword_2293D1000, v15, OS_LOG_TYPE_INFO, v17, &v30, 0xCu);
          }
        }

        else if (v14)
        {
          v15 = v13;
          v30 = 138543362;
          v31 = objc_opt_class();
          v16 = v31;
          v17 = "[%{public}@] No delay found in existing criteria";
          goto LABEL_18;
        }
      }

      else
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_INFO))
        {
          v15 = v20;
          v30 = 138543362;
          v31 = objc_opt_class();
          v16 = v31;
          v17 = "[%{public}@] No existing criteria found";
          goto LABEL_18;
        }
      }

      v21 = xpc_dictionary_create(0, 0, 0);

      xpc_dictionary_set_BOOL(v21, *MEMORY[0x277D86370], 1);
      xpc_dictionary_set_string(v21, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
      xpc_dictionary_set_BOOL(v21, *MEMORY[0x277D86230], 1);
      xpc_dictionary_set_BOOL(v21, *MEMORY[0x277D86360], 0);
      date = [MEMORY[0x277CBEAA8] date];
      [(HDMCAnalysisScheduler *)self _delayUntilNextAnalysisSchedulingWindowStartDateAfterDate:date];
      xpc_dictionary_set_int64(v21, *v11, v23);
      xpc_dictionary_set_int64(v21, *MEMORY[0x277D86270], 3600);
      xpc_activity_set_criteria(activityCopy, v21);

      v10 = v21;
LABEL_20:

      goto LABEL_21;
    }

    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      [(HDMCAnalysisScheduler *)v19 _handleActivity:v8 forceRescheduleOnCheckIn:?];
    }
  }

LABEL_21:

  v24 = *MEMORY[0x277D85DE8];
}

- (double)_delayUntilNextAnalysisSchedulingWindowStartDateAfterDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [(HKMCSettingsManager *)self->_settingsManager hdmc_nextAnalysisSchedulingWindowStartDateAfterDate:dateCopy calendar:currentCalendar];
  v7 = v6;
  if (v6)
  {
    [v6 timeIntervalSinceDate:dateCopy];
    v9 = v8;
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2E8];
    v9 = 86400.0;
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_FAULT))
    {
      v13 = v10;
      v15 = 138543874;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = dateCopy;
      v19 = 2114;
      v20 = currentCalendar;
      v14 = v16;
      _os_log_fault_impl(&dword_2293D1000, v13, OS_LOG_TYPE_FAULT, "[%{public}@] Next date to schedule analysis after %{public}@ should not be nil, calendar: %{public}@", &v15, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_runAnalysis
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v4, v5, "[%{public}@] Error running analysis from XPC activity: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)daemonReady:(id)ready
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v6 = *&v8[4];
    _os_log_impl(&dword_2293D1000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Daemon ready, scheduling activity", v8, 0xCu);
  }

  [(HDMCAnalysisScheduler *)self _registerActivityAfterCompletion:0, *v8];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivity:(void *)a1 forceRescheduleOnCheckIn:.cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = 138543362;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_error_impl(&dword_2293D1000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to update completion state", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivity:(uint64_t)a3 forceRescheduleOnCheckIn:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = MEMORY[0x277CCABB0];
  v7 = v5;
  v8 = [v6 numberWithLong:a3];
  v10 = 138543618;
  v11 = v5;
  v12 = 2112;
  v13 = v8;
  _os_log_error_impl(&dword_2293D1000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected activity registration state: %@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end