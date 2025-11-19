@interface HDMCDeviationInputManager
- (BOOL)clearStateIfNecessaryFromSettings:(id)a3 usageRequirementsSatisfied:(BOOL)a4 error:(id *)a5;
- (HDMCDeviationInputManager)initWithProfile:(id)a3;
@end

@implementation HDMCDeviationInputManager

- (HDMCDeviationInputManager)initWithProfile:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDMCDeviationInputManager;
  v5 = [(HDMCDeviationInputManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = [MEMORY[0x277D10718] hdmc_syncedMenstrualCyclesDefaultsDomainWithProfile:v4];
    keyValueDomain = v6->_keyValueDomain;
    v6->_keyValueDomain = v7;

    v9 = [MEMORY[0x277D10718] hdmc_deviationDetectionAnalyticsProtectedDomainWithProfile:v4];
    analyticsKeyValueDomain = v6->_analyticsKeyValueDomain;
    v6->_analyticsKeyValueDomain = v9;
  }

  return v6;
}

- (BOOL)clearStateIfNecessaryFromSettings:(id)a3 usageRequirementsSatisfied:(BOOL)a4 error:(id *)a5
{
  v45 = *MEMORY[0x277D85DE8];
  if (![a3 deviationDetectionEnabledForAnyType] || !a4)
  {
    keyValueDomain = self->_keyValueDomain;
    v42 = 0;
    v10 = [(HDKeyValueDomain *)keyValueDomain hdmc_unconfirmedDeviationDismissalDayIndexWithError:&v42];
    v11 = v42;

    if (v10)
    {

      v12 = self->_keyValueDomain;
      v41 = 0;
      v13 = [(HDKeyValueDomain *)v12 hdmc_setUnconfirmedDeviationDismissalDayIndex:0 error:&v41];
      v14 = v41;
      if (v13)
      {
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        v16 = [WeakRetained cloudSyncManager];
        v17 = objc_alloc(MEMORY[0x277CCD140]);
        v18 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
        v19 = [v17 initWithChangesSyncRequest:v18];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __96__HDMCDeviationInputManager_clearStateIfNecessaryFromSettings_usageRequirementsSatisfied_error___block_invoke;
        v40[3] = &unk_27865A7A0;
        v40[4] = self;
        [v16 syncWithRequest:v19 reason:v21 completion:v40];

        analyticsKeyValueDomain = self->_analyticsKeyValueDomain;
        v39 = v14;
        LOBYTE(v16) = [(HDKeyValueDomain *)analyticsKeyValueDomain setValueForAllKeys:0 error:&v39];
        v23 = v39;

        _HKInitializeLogging();
        v24 = *MEMORY[0x277CCC2E8];
        v25 = *MEMORY[0x277CCC2E8];
        if (v16)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v24;
            v27 = objc_opt_class();
            *buf = 138543362;
            v44 = v27;
            v28 = v27;
            _os_log_impl(&dword_2293D1000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cleared key value domain of deviation detection analytics state", buf, 0xCu);
          }

          goto LABEL_3;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [HDMCDeviationInputManager clearStateIfNecessaryFromSettings:v24 usageRequirementsSatisfied:? error:?];
        }

        v31 = v23;
      }

      else
      {
        _HKInitializeLogging();
        v30 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
        {
          [HDMCDeviationInputManager clearStateIfNecessaryFromSettings:v30 usageRequirementsSatisfied:? error:?];
        }

        v31 = v14;
      }

      v32 = v31;
      if (v31)
      {
        if (a5)
        {
          v33 = v31;
          *a5 = v32;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    else
    {
      if (!v11)
      {
        _HKInitializeLogging();
        v34 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
          v36 = objc_opt_class();
          *buf = 138543362;
          v44 = v36;
          v37 = v36;
          _os_log_impl(&dword_2293D1000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] No value to clear in key-value domain", buf, 0xCu);
        }

        goto LABEL_3;
      }

      if (a5)
      {
        v29 = v11;
        *a5 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    result = 0;
    goto LABEL_29;
  }

LABEL_3:
  result = 1;
LABEL_29:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void __96__HDMCDeviationInputManager_clearStateIfNecessaryFromSettings_usageRequirementsSatisfied_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  v7 = *MEMORY[0x277CCC2E8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v12 = 138543362;
      v13 = objc_opt_class();
      v10 = v13;
      _os_log_impl(&dword_2293D1000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cloud sync request completed", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __96__HDMCDeviationInputManager_clearStateIfNecessaryFromSettings_usageRequirementsSatisfied_error___block_invoke_cold_1(a1, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clearStateIfNecessaryFromSettings:(void *)a1 usageRequirementsSatisfied:error:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v4, v5, "[%{public}@] Error clearing key value domain of dismissal day index state: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clearStateIfNecessaryFromSettings:(void *)a1 usageRequirementsSatisfied:error:.cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v4, v5, "[%{public}@] Error clearing key value domain of deviation detection analytics state: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __96__HDMCDeviationInputManager_clearStateIfNecessaryFromSettings_usageRequirementsSatisfied_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v6, v7, "[%{public}@] Cloud sync request failed: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end