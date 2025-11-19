@interface HDHRHeartbeatSeriesFeatureExclusivityManager
- (BOOL)_isFeatureStatusAvailableForUsageOrBlockedOnlyByMutualExclusivityRequirement:(id)a3;
- (HDHRHeartbeatSeriesFeatureExclusivityManager)initWithIrregularRhythmNotificationsStatusManager:(id)a3 aFibHistoryStatusManager:(id)a4 profile:(id)a5;
- (void)_fireSystemAlertBecauseIrregularRhythmNotificationsWereTurnedOff;
- (void)_queue_disableIrregularRhythmNotificationsIfAFibHistoryIsEnabled;
- (void)_scheduleInitialMaintenanceOperationWithProfile:(id)a3;
- (void)dealloc;
- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4;
@end

@implementation HDHRHeartbeatSeriesFeatureExclusivityManager

- (HDHRHeartbeatSeriesFeatureExclusivityManager)initWithIrregularRhythmNotificationsStatusManager:(id)a3 aFibHistoryStatusManager:(id)a4 profile:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v11 profileType] == 1)
  {
    v28.receiver = self;
    v28.super_class = HDHRHeartbeatSeriesFeatureExclusivityManager;
    v12 = [(HDHRHeartbeatSeriesFeatureExclusivityManager *)&v28 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_irregularRhythmNotificationsStatusManager, a3);
      objc_storeStrong(&v13->_aFibHistoryStatusManager, a4);
      v14 = HKCreateSerialDispatchQueue();
      queue = v13->_queue;
      v13->_queue = v14;

      objc_initWeak(&location, v13);
      v16 = objc_alloc(MEMORY[0x277CCDD98]);
      v17 = v13->_queue;
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __131__HDHRHeartbeatSeriesFeatureExclusivityManager_initWithIrregularRhythmNotificationsStatusManager_aFibHistoryStatusManager_profile___block_invoke;
      v25 = &unk_2786609E0;
      objc_copyWeak(&v26, &location);
      v18 = [v16 initWithMode:1 queue:v17 delay:&v22 block:0.25];
      disableIrregularRhythmNotificationsIfAFibHistoryIsEnabledOperation = v13->_disableIrregularRhythmNotificationsIfAFibHistoryIsEnabledOperation;
      v13->_disableIrregularRhythmNotificationsIfAFibHistoryIsEnabledOperation = v18;

      [(HDHRHeartbeatSeriesFeatureExclusivityManager *)v13 _scheduleInitialMaintenanceOperationWithProfile:v11, v22, v23, v24, v25];
      [(HKFeatureStatusManager *)v13->_irregularRhythmNotificationsStatusManager registerObserver:v13 queue:v13->_queue];
      [(HKFeatureStatusManager *)v13->_aFibHistoryStatusManager registerObserver:v13 queue:v13->_queue];
      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    self = v13;
    v20 = self;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __131__HDHRHeartbeatSeriesFeatureExclusivityManager_initWithIrregularRhythmNotificationsStatusManager_aFibHistoryStatusManager_profile___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_disableIrregularRhythmNotificationsIfAFibHistoryIsEnabled];
}

- (void)dealloc
{
  [(_HKDelayedOperation *)self->_disableIrregularRhythmNotificationsIfAFibHistoryIsEnabledOperation invalidate];
  v3.receiver = self;
  v3.super_class = HDHRHeartbeatSeriesFeatureExclusivityManager;
  [(HDHRHeartbeatSeriesFeatureExclusivityManager *)&v3 dealloc];
}

- (void)_scheduleInitialMaintenanceOperationWithProfile:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D10748];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  queue = self->_queue;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __96__HDHRHeartbeatSeriesFeatureExclusivityManager__scheduleInitialMaintenanceOperationWithProfile___block_invoke;
  v19 = &unk_2786609E0;
  objc_copyWeak(&v20, &location);
  v9 = [v5 maintenanceOperationWithName:v7 queue:queue synchronousBlock:&v16];

  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    *buf = 138543362;
    v23 = v11;
    v12 = v11;
    _os_log_impl(&dword_229486000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling initial maintenance operation", buf, 0xCu);
  }

  v13 = [v4 daemon];
  v14 = [v13 maintenanceWorkCoordinator];
  [v14 enqueueMaintenanceOperation:v9];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];
}

void __96__HDHRHeartbeatSeriesFeatureExclusivityManager__scheduleInitialMaintenanceOperationWithProfile___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      LODWORD(v10) = 138543362;
      *(&v10 + 4) = objc_opt_class();
      v4 = *(&v10 + 4);
      _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Running initial maintenance operation", &v10, 0xCu);
    }

    v5 = [WeakRetained[1] featureStatusWithError:{0, v10}];
    v6 = WeakRetained[5];
    WeakRetained[5] = v5;

    v7 = [WeakRetained[2] featureStatusWithError:0];
    v8 = WeakRetained[6];
    WeakRetained[6] = v7;

    [WeakRetained _queue_disableIrregularRhythmNotificationsIfAFibHistoryIsEnabled];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_disableIrregularRhythmNotificationsIfAFibHistoryIsEnabled
{
  v22 = *MEMORY[0x277D85DE8];
  if (!self->_irregularRhythmNotificationsStatus)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2D8];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v8 = v10;
    *buf = 138543362;
    v21 = objc_opt_class();
    v11 = v21;
    v12 = "[%{public}@] No feature status available for IRN: cannot proceed";
LABEL_14:
    _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);

LABEL_15:
    goto LABEL_16;
  }

  if (!self->_aFibHistoryStatus)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2D8];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v8 = v13;
    *buf = 138543362;
    v21 = objc_opt_class();
    v11 = v21;
    v12 = "[%{public}@] No feature status available for AFib History: cannot proceed";
    goto LABEL_14;
  }

  v3 = [(HDHRHeartbeatSeriesFeatureExclusivityManager *)self _isFeatureStatusAvailableForUsageOrBlockedOnlyByMutualExclusivityRequirement:?];
  v4 = [(HDHRHeartbeatSeriesFeatureExclusivityManager *)self _isFeatureStatusAvailableForUsageOrBlockedOnlyByMutualExclusivityRequirement:self->_aFibHistoryStatus];
  if (v3 && v4)
  {
    v5 = [(HKFeatureStatus *)self->_irregularRhythmNotificationsStatus onboardingRecord];
    v6 = [v5 featureSettings];
    v7 = *MEMORY[0x277CCC120];
    v8 = [v6 numberForKey:*MEMORY[0x277CCC120]];

    if (v8 && ([v8 BOOLValue]& 1) != 0)
    {
      v9 = [(HKFeatureStatusManager *)self->_irregularRhythmNotificationsStatusManager featureAvailabilityProviding];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __112__HDHRHeartbeatSeriesFeatureExclusivityManager__queue_disableIrregularRhythmNotificationsIfAFibHistoryIsEnabled__block_invoke;
      v19[3] = &unk_278660408;
      v19[4] = self;
      [v9 setFeatureSettingNumber:MEMORY[0x277CBEC28] forKey:v7 completion:v19];
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        *buf = 138543362;
        v21 = objc_opt_class();
        v18 = v21;
        _os_log_impl(&dword_229486000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Nothing to do: IRN is off", buf, 0xCu);
      }
    }

    goto LABEL_15;
  }

  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v14;
    *buf = 138543362;
    v21 = objc_opt_class();
    v11 = v21;
    v12 = "[%{public}@] Nothing to do: at least one feature is unavailable for usage";
    goto LABEL_14;
  }

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
}

void __112__HDHRHeartbeatSeriesFeatureExclusivityManager__queue_disableIrregularRhythmNotificationsIfAFibHistoryIsEnabled__block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2D8];
  v7 = *MEMORY[0x277CCC2D8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      *v12 = 138543362;
      *&v12[4] = objc_opt_class();
      v10 = *&v12[4];
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully turned off IRN; firing notification", v12, 0xCu);
    }

    [*(a1 + 32) _fireSystemAlertBecauseIrregularRhythmNotificationsWereTurnedOff];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __112__HDHRHeartbeatSeriesFeatureExclusivityManager__queue_disableIrregularRhythmNotificationsIfAFibHistoryIsEnabled__block_invoke_cold_1(a1, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isFeatureStatusAvailableForUsageOrBlockedOnlyByMutualExclusivityRequirement:(id)a3
{
  v3 = *MEMORY[0x277CCBEA0];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 areAllRequirementsSatisfied];

  v7 = [v4 objectForKeyedSubscript:v3];

  v8 = [v7 unsatisfiedRequirementIdentifiers];

  if ([v8 count] == 1)
  {
    v9 = [v8 firstObject];
    v10 = [v9 isEqualToString:*MEMORY[0x277CCBF60]];
  }

  else
  {
    v10 = 0;
  }

  return (v6 | v10) & 1;
}

- (void)_fireSystemAlertBecauseIrregularRhythmNotificationsWereTurnedOff
{
  v3 = objc_alloc_init(MEMORY[0x277D10BC0]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"IRREGULAR_RHYTHM_NOTIFICATIONS_DISABLED_DUE_TO_AFIB_HISTORY_TITLE" value:&stru_283CC4740 table:@"Localizable-AFibBurden"];
  [v3 setTitle:v5];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"IRREGULAR_RHYTHM_NOTIFICATIONS_DISABLED_DUE_TO_AFIB_HISTORY_BODY" value:&stru_283CC4740 table:@"Localizable-AFibBurden"];
  [v3 setMessage:v7];

  [v3 setAlertLevel:3];
  unitTesting_postNotificationHandler = self->___unitTesting_postNotificationHandler;
  if (unitTesting_postNotificationHandler)
  {
    unitTesting_postNotificationHandler[2](unitTesting_postNotificationHandler, v3);
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __112__HDHRHeartbeatSeriesFeatureExclusivityManager__fireSystemAlertBecauseIrregularRhythmNotificationsWereTurnedOff__block_invoke;
    v9[3] = &unk_2786610A0;
    v9[4] = self;
    [v3 presentWithResponseHandler:v9];
  }
}

void __112__HDHRHeartbeatSeriesFeatureExclusivityManager__fireSystemAlertBecauseIrregularRhythmNotificationsWereTurnedOff__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __112__HDHRHeartbeatSeriesFeatureExclusivityManager__fireSystemAlertBecauseIrregularRhythmNotificationsWereTurnedOff__block_invoke_cold_1(a1, v6);
    }
  }
}

- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [v8 featureIdentifier];

  LODWORD(v8) = [v9 isEqualToString:*MEMORY[0x277CCBFF0]];
  v10 = 40;
  if (v8)
  {
    v10 = 48;
  }

  v11 = *(&self->super.isa + v10);
  *(&self->super.isa + v10) = v6;
  v12 = v6;

  [(_HKDelayedOperation *)self->_disableIrregularRhythmNotificationsIfAFibHistoryIsEnabledOperation execute];
}

void __112__HDHRHeartbeatSeriesFeatureExclusivityManager__queue_disableIrregularRhythmNotificationsIfAFibHistoryIsEnabled__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = OUTLINED_FUNCTION_2(v4);
  OUTLINED_FUNCTION_3(&dword_229486000, v6, v7, "[%{public}@] Failed to turned off IRN: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __112__HDHRHeartbeatSeriesFeatureExclusivityManager__fireSystemAlertBecauseIrregularRhythmNotificationsWereTurnedOff__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = OUTLINED_FUNCTION_2(v4);
  OUTLINED_FUNCTION_3(&dword_229486000, v6, v7, "[%{public}@] Failed to post notification: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end