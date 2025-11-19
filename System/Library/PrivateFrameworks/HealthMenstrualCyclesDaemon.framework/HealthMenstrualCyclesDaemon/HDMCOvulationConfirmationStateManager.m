@interface HDMCOvulationConfirmationStateManager
- (BOOL)transitionToFiredNotificationStateWithRequest:(id)a3 settingsManager:(id)a4 error:(id *)a5;
- (HDMCOvulationConfirmationStateManager)initWithProfile:(id)a3 settingsManager:(id)a4 queue:(id)a5;
- (id)_daysWithWristTemperatureSamplesInDayIndexRange:(id)a3 calendarCache:(id)a4 error:(id *)a5;
- (id)eventsToScheduleForAnalysis:(id)a3 settingsManager:(id)a4 scheduler:(id)a5 error:(id *)a6;
- (id)scheduledNotificationDaysShiftedFromCalendarMethodWithEvent:(id)a3 error:(id *)a4;
- (id)scheduledNotificationFertileWindowEndDayIndexWithEvent:(id)a3 error:(id *)a4;
- (void)_queue_clearStateIfNecessary;
- (void)_triggerImmediateSyncWithReason:(id)a3;
- (void)featureSettingsManager:(id)a3 didUpdateSettingsForFeatureIdentifier:(id)a4;
- (void)settingsManagerDidUpdateNotificationSettings:(id)a3;
@end

@implementation HDMCOvulationConfirmationStateManager

- (HDMCOvulationConfirmationStateManager)initWithProfile:(id)a3 settingsManager:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = HDMCOvulationConfirmationStateManager;
  v11 = [(HDMCOvulationConfirmationStateManager *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, v8);
    objc_storeStrong(&v12->_settingsManager, a4);
    objc_storeStrong(&v12->_queue, a5);
    v13 = MEMORY[0x277D10718];
    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    v15 = [v13 hdmc_menstrualCyclesOvulationConfirmationNotificationStateSyncedUnprotectedDomainWithProfile:WeakRetained];
    keyValueDomain = v12->_keyValueDomain;
    v12->_keyValueDomain = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCD0A0]);
    calendarCache = v12->_calendarCache;
    v12->_calendarCache = v17;

    [(HKMCSettingsManager *)v12->_settingsManager addObserver:v12 queue:v10];
    v19 = objc_loadWeakRetained(&v12->_profile);
    v20 = [v19 featureSettingsManager];
    [v20 registerObserver:v12 featureIdentifier:*MEMORY[0x277CCC0A8] queue:v10];
  }

  return v12;
}

- (id)eventsToScheduleForAnalysis:(id)a3 settingsManager:(id)a4 scheduler:(id)a5 error:(id *)a6
{
  v75 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  keyValueDomain = self->_keyValueDomain;
  v67 = 0;
  v14 = [(HDKeyValueDomain *)keyValueDomain hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:&v67];
  v15 = v67;
  v16 = v15;
  if (!v14)
  {
    v17 = v15;
    if (v17)
    {
      if (a6)
      {
        v31 = v17;
        v32 = a6;
        a6 = 0;
        v33 = 0;
        *v32 = v17;
LABEL_33:
        v45 = v17;
        goto LABEL_41;
      }

      _HKLogDroppedError();
    }

    else
    {
      a6 = 0;
    }

    v33 = 0;
    goto LABEL_33;
  }

  v64 = v12;
  v17 = [MEMORY[0x277CBEAA8] date];
  v18 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v19 = [v17 hk_morningIndexWithCalendar:v18];

  calendarCache = self->_calendarCache;
  v66 = v16;
  v21 = [(HDMCOvulationConfirmationStateManager *)self _daysWithWristTemperatureSamplesInDayIndexRange:v19 - 45 calendarCache:45 error:calendarCache, &v66];
  v22 = v66;

  v63 = v21;
  if (!v21)
  {
    v24 = v22;
    if (v24)
    {
      if (a6)
      {
        v34 = v24;
        v35 = a6;
        a6 = 0;
        v33 = 0;
        *v35 = v24;
LABEL_37:
        v45 = v24;
        goto LABEL_40;
      }

      _HKLogDroppedError();
    }

    else
    {
      a6 = 0;
    }

    v33 = 0;
    goto LABEL_37;
  }

  v58 = a6;
  v23 = [v11 fertileWindowNotificationTimeOfDay];
  v24 = [v14 computeNewStateFromAnalysis:v10 currentDate:v17 fertileWindowNotificationTimeOfDay:v23 fertilityNotificationsEnabled:objc_msgSend(v11 daysWithWristTemp45DaysBeforeOvulationConfirmed:{"fertileWindowNotificationsEnabled"), objc_msgSend(v21, "integerValue")}];

  v25 = [v24 scheduledNotificationFireDayIndex];

  v62 = v11;
  if (v25)
  {
    v60 = v10;
    v26 = [v24 scheduledNotificationFireDayIndex];
    v27 = [v11 hdmc_dateComponentsForFertileWindowNotificationOnDayIndex:{objc_msgSend(v26, "integerValue")}];

    v28 = [v64 eventWithIdentifier:*MEMORY[0x277D118E8] dueDateComponents:v27 eventOptions:0];
    v29 = [v28 currentDueDate];
    v30 = [v29 hk_isAfterDate:v17];

    if (v30)
    {
      a6 = v28;
    }

    else
    {
      _HKInitializeLogging();
      v36 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        v38 = objc_opt_class();
        v57 = v38;
        v39 = HKSensitiveLogItem();
        *buf = 138543618;
        v70 = v38;
        v71 = 2114;
        v72 = v39;
        _os_log_impl(&dword_2293D1000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping scheduling past due event %{public}@", buf, 0x16u);
      }

      a6 = 0;
    }

    v11 = v62;

    v10 = v60;
  }

  else
  {
    a6 = 0;
  }

  if (![v24 isEqual:{v14, v57}])
  {
    v46 = self->_keyValueDomain;
    v65 = v22;
    v47 = [(HDKeyValueDomain *)v46 hdmc_menstrualCyclesOvulationConfirmationNotificationSetValuesWithState:v24 error:&v65];
    v45 = v65;

    if (!v47)
    {
      v53 = v45;
      v45 = v53;
      v11 = v62;
      if (v53)
      {
        if (v58)
        {
          v54 = v53;
          *v58 = v45;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v33 = 0;
      goto LABEL_40;
    }

    _HKInitializeLogging();
    v48 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v49 = v48;
      v50 = objc_opt_class();
      v59 = v50;
      HKSensitiveLogItem();
      v51 = v61 = v10;
      v52 = HKSensitiveLogItem();
      *buf = 138543874;
      v70 = v50;
      v71 = 2114;
      v72 = v51;
      v73 = 2114;
      v74 = v52;
      _os_log_impl(&dword_2293D1000, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully transitioned old state: %{public}@ -> new state: %{public}@", buf, 0x20u);

      v10 = v61;
    }

    [(HDMCOvulationConfirmationStateManager *)self _triggerImmediateSyncWithReason:@"OvulationConfirmationNotificationSetValuesWithState - State Change"];
    v11 = v62;
    if (a6)
    {
      goto LABEL_22;
    }

LABEL_27:
    v33 = MEMORY[0x277CBEBF8];
    goto LABEL_40;
  }

  _HKInitializeLogging();
  v40 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v41 = v40;
    v42 = objc_opt_class();
    v43 = v42;
    v44 = HKSensitiveLogItem();
    *buf = 138543618;
    v70 = v42;
    v71 = 2114;
    v72 = v44;
    _os_log_impl(&dword_2293D1000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@] State unchanged: %{public}@", buf, 0x16u);

    v11 = v62;
  }

  v45 = v22;
  if (!a6)
  {
    goto LABEL_27;
  }

LABEL_22:
  v68 = a6;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
LABEL_40:

  v12 = v64;
LABEL_41:

  v55 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)scheduledNotificationFertileWindowEndDayIndexWithEvent:(id)a3 error:(id *)a4
{
  v7 = [a3 hdmc_categoryIdentifier];
  v8 = [v7 isEqualToString:*MEMORY[0x277D118E8]];

  if (!v8)
  {
    v15 = &unk_283CC32A0;
    goto LABEL_19;
  }

  keyValueDomain = self->_keyValueDomain;
  v21 = 0;
  v10 = [(HDKeyValueDomain *)keyValueDomain hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:&v21];
  v11 = v21;
  v12 = v11;
  if (v10)
  {
    v13 = [v10 scheduledNotificationFertileWindowEndDayIndex];
    v14 = v13;
    if (v13)
    {
      v14 = v13;
      v15 = v14;
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [(HDMCOvulationConfirmationStateManager *)v17 scheduledNotificationFertileWindowEndDayIndexWithEvent:v10 error:?];
      }

      v18 = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"scheduledNotificationFertileWindowEndDayIndex" class:objc_opt_class() selector:a2];
      if (v18)
      {
        if (a4)
        {
          v19 = v18;
          *a4 = v18;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v15 = 0;
    }

    goto LABEL_18;
  }

  v14 = v11;
  if (!v14)
  {
    goto LABEL_15;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_15:
    v15 = 0;
    goto LABEL_18;
  }

  v16 = v14;
  v15 = 0;
  *a4 = v14;
LABEL_18:

LABEL_19:

  return v15;
}

- (id)scheduledNotificationDaysShiftedFromCalendarMethodWithEvent:(id)a3 error:(id *)a4
{
  v7 = [a3 hdmc_categoryIdentifier];
  v8 = [v7 isEqualToString:*MEMORY[0x277D118E8]];

  if (!v8)
  {
    v15 = 0;
    goto LABEL_19;
  }

  keyValueDomain = self->_keyValueDomain;
  v21 = 0;
  v10 = [(HDKeyValueDomain *)keyValueDomain hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:&v21];
  v11 = v21;
  v12 = v11;
  if (v10)
  {
    v13 = [v10 scheduledNotificationDaysShiftedForFertileWindow];
    v14 = v13;
    if (v13)
    {
      v14 = v13;
      v15 = v14;
    }

    else
    {
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [(HDMCOvulationConfirmationStateManager *)v17 scheduledNotificationFertileWindowEndDayIndexWithEvent:v10 error:?];
      }

      v18 = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"scheduledNotificationFertileWindowEndDayIndex" class:objc_opt_class() selector:a2];
      if (v18)
      {
        if (a4)
        {
          v19 = v18;
          *a4 = v18;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v15 = 0;
    }

    goto LABEL_18;
  }

  v14 = v11;
  if (!v14)
  {
    goto LABEL_15;
  }

  if (!a4)
  {
    _HKLogDroppedError();
LABEL_15:
    v15 = 0;
    goto LABEL_18;
  }

  v16 = v14;
  v15 = 0;
  *a4 = v14;
LABEL_18:

LABEL_19:

  return v15;
}

- (BOOL)transitionToFiredNotificationStateWithRequest:(id)a3 settingsManager:(id)a4 error:(id *)a5
{
  v9 = a4;
  v10 = [a3 content];
  v11 = [v10 categoryIdentifier];
  v12 = *MEMORY[0x277D118E8];
  v13 = [v11 isEqualToString:*MEMORY[0x277D118E8]];

  if (v13)
  {
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v16 = [v14 hk_dayIndexWithCalendar:v15];

    keyValueDomain = self->_keyValueDomain;
    v43 = 0;
    v18 = [(HDKeyValueDomain *)keyValueDomain hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:&v43];
    v19 = v43;
    v20 = v19;
    if (!v18 && v19)
    {
      if (a5)
      {
        v21 = v19;
        v22 = 0;
        *a5 = v20;
      }

      else
      {
        _HKLogDroppedError();
        v22 = 0;
      }

      goto LABEL_27;
    }

    v23 = [v18 computeFiredStateWithCurrentDayIndex:v16];
    if (v23)
    {
      v36 = a5;
      v24 = self->_keyValueDomain;
      v41 = v23;
      v42 = v20;
      v39 = [(HDKeyValueDomain *)v24 hdmc_menstrualCyclesOvulationConfirmationNotificationSetValuesWithState:v23 error:&v42];
      v40 = v42;

      v37 = MEMORY[0x277D119B8];
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v25 = [WeakRetained notificationManager];
      v26 = [v25 areHealthNotificationsAuthorized];
      v27 = [v18 scheduledNotificationDaysShiftedForFertileWindow];
      v28 = MEMORY[0x277CCABB0];
      v29 = [v18 scheduledNotificationFertileWindowEndDayIndex];
      v30 = [v28 numberWithInteger:{objc_msgSend(v29, "integerValue") - v16}];
      v31 = [v18 scheduledNotificationDaysWithWristTemp45DaysBeforeOvulationConfirmed];
      [v37 submitMetricForCategory:v12 areHealthNotificationsAuthorized:v26 numberOfDaysShiftedForFertileWindow:v27 numberOfDaysOffsetFromFertileWindowEnd:v30 numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification:v31 internalLiveOnCycleFactorOverrideEnabled:{objc_msgSend(v9, "internalCycleFactorsOverrideEnabled")}];

      if (v39)
      {
        [(HDMCOvulationConfirmationStateManager *)self _triggerImmediateSyncWithReason:@"OvulationConfirmationNotificationSetValuesWithState - Fired"];
        v22 = 1;
        v20 = v40;
        v23 = v41;
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }

      _HKInitializeLogging();
      v23 = v41;
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCOvulationConfirmationStateManager transitionToFiredNotificationStateWithRequest:settingsManager:error:];
      }

      v20 = v40;
      if (v20)
      {
        if (v36)
        {
          v34 = v20;
          *v36 = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
      {
        [HDMCOvulationConfirmationStateManager transitionToFiredNotificationStateWithRequest:settingsManager:error:];
      }

      v32 = [MEMORY[0x277CCA9B8] hk_errorForNilArgument:@"firedState" class:objc_opt_class() selector:a2];
      if (v32)
      {
        if (a5)
        {
          v33 = v32;
          *a5 = v32;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    v22 = 0;
    goto LABEL_26;
  }

  v22 = 1;
LABEL_28:

  return v22;
}

- (void)_queue_clearStateIfNecessary
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error reading wrist temp input settings: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_daysWithWristTemperatureSamplesInDayIndexRange:(id)a3 calendarCache:(id)a4 error:(id *)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = a4;
  v10 = [HDMCDaySummaryEnumerator alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(v20) = 1;
  v12 = [(HDMCDaySummaryEnumerator *)v10 initWithProfile:WeakRetained calendarCache:v9 dayIndexRange:var0 ascending:var1 includeFactors:1 includeWristTemperature:0, v20];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v21[4] = &v23;
  v22 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __109__HDMCOvulationConfirmationStateManager__daysWithWristTemperatureSamplesInDayIndexRange_calendarCache_error___block_invoke;
  v21[3] = &unk_27865A998;
  LOBYTE(WeakRetained) = [(HDMCDaySummaryEnumerator *)v12 enumerateWithError:&v22 handler:v21];
  v13 = v22;
  v14 = v13;
  if (WeakRetained)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v24[3]];
  }

  else
  {
    v16 = v13;
    v17 = v16;
    if (v16)
    {
      if (a5)
      {
        v18 = v16;
        *a5 = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v15 = 0;
  }

  _Block_object_dispose(&v23, 8);

  return v15;
}

void __109__HDMCOvulationConfirmationStateManager__daysWithWristTemperatureSamplesInDayIndexRange_calendarCache_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 wristTemperature];

  if (v3)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (void)_triggerImmediateSyncWithReason:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained cloudSyncManager];
  v7 = objc_alloc(MEMORY[0x277CCD140]);
  v8 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  v9 = [v7 initWithChangesSyncRequest:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__HDMCOvulationConfirmationStateManager__triggerImmediateSyncWithReason___block_invoke;
  v11[3] = &unk_27865AAA8;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v6 syncWithRequest:v9 reason:v10 completion:v11];
}

void __73__HDMCOvulationConfirmationStateManager__triggerImmediateSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
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
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v12 = v10;
      _os_log_impl(&dword_2293D1000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cloud sync request completed for %{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __73__HDMCOvulationConfirmationStateManager__triggerImmediateSyncWithReason___block_invoke_cold_1(a1, v6, v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)settingsManagerDidUpdateNotificationSettings:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);

  [(HDMCOvulationConfirmationStateManager *)self _queue_clearStateIfNecessary];
}

- (void)featureSettingsManager:(id)a3 didUpdateSettingsForFeatureIdentifier:(id)a4
{
  dispatch_assert_queue_V2(self->_queue);

  [(HDMCOvulationConfirmationStateManager *)self _queue_clearStateIfNecessary];
}

- (void)scheduledNotificationFertileWindowEndDayIndexWithEvent:(void *)a3 error:.cold.1(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromHDMCOvulationConfirmationNotificationState(2);
  v7 = NSStringFromHDMCOvulationConfirmationNotificationState([a3 stateType]);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_0(&dword_2293D1000, v8, v9, "[%{public}@] Expected ovulation confirmation state:%{public}@ but received: %{public}@", v10, v11, v12, v13, v15);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)transitionToFiredNotificationStateWithRequest:settingsManager:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Error retrieving fired state from scheduled state: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __73__HDMCOvulationConfirmationStateManager__triggerImmediateSyncWithReason___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = objc_opt_class();
  v8 = *(a1 + 40);
  v11 = 138543874;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  v15 = 2114;
  v16 = a3;
  v9 = v7;
  _os_log_error_impl(&dword_2293D1000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Cloud sync request for %{public}@ failed: %{public}@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end