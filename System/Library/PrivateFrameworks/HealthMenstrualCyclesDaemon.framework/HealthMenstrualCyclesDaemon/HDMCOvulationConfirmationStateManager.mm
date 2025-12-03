@interface HDMCOvulationConfirmationStateManager
- (BOOL)transitionToFiredNotificationStateWithRequest:(id)request settingsManager:(id)manager error:(id *)error;
- (HDMCOvulationConfirmationStateManager)initWithProfile:(id)profile settingsManager:(id)manager queue:(id)queue;
- (id)_daysWithWristTemperatureSamplesInDayIndexRange:(id)range calendarCache:(id)cache error:(id *)error;
- (id)eventsToScheduleForAnalysis:(id)analysis settingsManager:(id)manager scheduler:(id)scheduler error:(id *)error;
- (id)scheduledNotificationDaysShiftedFromCalendarMethodWithEvent:(id)event error:(id *)error;
- (id)scheduledNotificationFertileWindowEndDayIndexWithEvent:(id)event error:(id *)error;
- (void)_queue_clearStateIfNecessary;
- (void)_triggerImmediateSyncWithReason:(id)reason;
- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier;
- (void)settingsManagerDidUpdateNotificationSettings:(id)settings;
@end

@implementation HDMCOvulationConfirmationStateManager

- (HDMCOvulationConfirmationStateManager)initWithProfile:(id)profile settingsManager:(id)manager queue:(id)queue
{
  profileCopy = profile;
  managerCopy = manager;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = HDMCOvulationConfirmationStateManager;
  v11 = [(HDMCOvulationConfirmationStateManager *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    objc_storeStrong(&v12->_settingsManager, manager);
    objc_storeStrong(&v12->_queue, queue);
    v13 = MEMORY[0x277D10718];
    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    v15 = [v13 hdmc_menstrualCyclesOvulationConfirmationNotificationStateSyncedUnprotectedDomainWithProfile:WeakRetained];
    keyValueDomain = v12->_keyValueDomain;
    v12->_keyValueDomain = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCD0A0]);
    calendarCache = v12->_calendarCache;
    v12->_calendarCache = v17;

    [(HKMCSettingsManager *)v12->_settingsManager addObserver:v12 queue:queueCopy];
    v19 = objc_loadWeakRetained(&v12->_profile);
    featureSettingsManager = [v19 featureSettingsManager];
    [featureSettingsManager registerObserver:v12 featureIdentifier:*MEMORY[0x277CCC0A8] queue:queueCopy];
  }

  return v12;
}

- (id)eventsToScheduleForAnalysis:(id)analysis settingsManager:(id)manager scheduler:(id)scheduler error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  managerCopy = manager;
  schedulerCopy = scheduler;
  keyValueDomain = self->_keyValueDomain;
  v67 = 0;
  v14 = [(HDKeyValueDomain *)keyValueDomain hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:&v67];
  v15 = v67;
  v16 = v15;
  if (!v14)
  {
    date = v15;
    if (date)
    {
      if (error)
      {
        v31 = date;
        errorCopy = error;
        error = 0;
        v33 = 0;
        *errorCopy = date;
LABEL_33:
        v45 = date;
        goto LABEL_41;
      }

      _HKLogDroppedError();
    }

    else
    {
      error = 0;
    }

    v33 = 0;
    goto LABEL_33;
  }

  v64 = schedulerCopy;
  date = [MEMORY[0x277CBEAA8] date];
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v19 = [date hk_morningIndexWithCalendar:hk_gregorianCalendar];

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
      if (error)
      {
        v34 = v24;
        errorCopy2 = error;
        error = 0;
        v33 = 0;
        *errorCopy2 = v24;
LABEL_37:
        v45 = v24;
        goto LABEL_40;
      }

      _HKLogDroppedError();
    }

    else
    {
      error = 0;
    }

    v33 = 0;
    goto LABEL_37;
  }

  errorCopy3 = error;
  fertileWindowNotificationTimeOfDay = [managerCopy fertileWindowNotificationTimeOfDay];
  v24 = [v14 computeNewStateFromAnalysis:analysisCopy currentDate:date fertileWindowNotificationTimeOfDay:fertileWindowNotificationTimeOfDay fertilityNotificationsEnabled:objc_msgSend(managerCopy daysWithWristTemp45DaysBeforeOvulationConfirmed:{"fertileWindowNotificationsEnabled"), objc_msgSend(v21, "integerValue")}];

  scheduledNotificationFireDayIndex = [v24 scheduledNotificationFireDayIndex];

  v62 = managerCopy;
  if (scheduledNotificationFireDayIndex)
  {
    v60 = analysisCopy;
    scheduledNotificationFireDayIndex2 = [v24 scheduledNotificationFireDayIndex];
    v27 = [managerCopy hdmc_dateComponentsForFertileWindowNotificationOnDayIndex:{objc_msgSend(scheduledNotificationFireDayIndex2, "integerValue")}];

    v28 = [v64 eventWithIdentifier:*MEMORY[0x277D118E8] dueDateComponents:v27 eventOptions:0];
    currentDueDate = [v28 currentDueDate];
    v30 = [currentDueDate hk_isAfterDate:date];

    if (v30)
    {
      error = v28;
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

      error = 0;
    }

    managerCopy = v62;

    analysisCopy = v60;
  }

  else
  {
    error = 0;
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
      managerCopy = v62;
      if (v53)
      {
        if (errorCopy3)
        {
          v54 = v53;
          *errorCopy3 = v45;
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
      v51 = v61 = analysisCopy;
      v52 = HKSensitiveLogItem();
      *buf = 138543874;
      v70 = v50;
      v71 = 2114;
      v72 = v51;
      v73 = 2114;
      v74 = v52;
      _os_log_impl(&dword_2293D1000, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully transitioned old state: %{public}@ -> new state: %{public}@", buf, 0x20u);

      analysisCopy = v61;
    }

    [(HDMCOvulationConfirmationStateManager *)self _triggerImmediateSyncWithReason:@"OvulationConfirmationNotificationSetValuesWithState - State Change"];
    managerCopy = v62;
    if (error)
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

    managerCopy = v62;
  }

  v45 = v22;
  if (!error)
  {
    goto LABEL_27;
  }

LABEL_22:
  errorCopy4 = error;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&errorCopy4 count:1];
LABEL_40:

  schedulerCopy = v64;
LABEL_41:

  v55 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)scheduledNotificationFertileWindowEndDayIndexWithEvent:(id)event error:(id *)error
{
  hdmc_categoryIdentifier = [event hdmc_categoryIdentifier];
  v8 = [hdmc_categoryIdentifier isEqualToString:*MEMORY[0x277D118E8]];

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
    scheduledNotificationFertileWindowEndDayIndex = [v10 scheduledNotificationFertileWindowEndDayIndex];
    v14 = scheduledNotificationFertileWindowEndDayIndex;
    if (scheduledNotificationFertileWindowEndDayIndex)
    {
      v14 = scheduledNotificationFertileWindowEndDayIndex;
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
        if (error)
        {
          v19 = v18;
          *error = v18;
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

  if (!error)
  {
    _HKLogDroppedError();
LABEL_15:
    v15 = 0;
    goto LABEL_18;
  }

  v16 = v14;
  v15 = 0;
  *error = v14;
LABEL_18:

LABEL_19:

  return v15;
}

- (id)scheduledNotificationDaysShiftedFromCalendarMethodWithEvent:(id)event error:(id *)error
{
  hdmc_categoryIdentifier = [event hdmc_categoryIdentifier];
  v8 = [hdmc_categoryIdentifier isEqualToString:*MEMORY[0x277D118E8]];

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
    scheduledNotificationDaysShiftedForFertileWindow = [v10 scheduledNotificationDaysShiftedForFertileWindow];
    v14 = scheduledNotificationDaysShiftedForFertileWindow;
    if (scheduledNotificationDaysShiftedForFertileWindow)
    {
      v14 = scheduledNotificationDaysShiftedForFertileWindow;
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
        if (error)
        {
          v19 = v18;
          *error = v18;
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

  if (!error)
  {
    _HKLogDroppedError();
LABEL_15:
    v15 = 0;
    goto LABEL_18;
  }

  v16 = v14;
  v15 = 0;
  *error = v14;
LABEL_18:

LABEL_19:

  return v15;
}

- (BOOL)transitionToFiredNotificationStateWithRequest:(id)request settingsManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];
  v12 = *MEMORY[0x277D118E8];
  v13 = [categoryIdentifier isEqualToString:*MEMORY[0x277D118E8]];

  if (v13)
  {
    date = [MEMORY[0x277CBEAA8] date];
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v16 = [date hk_dayIndexWithCalendar:hk_gregorianCalendar];

    keyValueDomain = self->_keyValueDomain;
    v43 = 0;
    v18 = [(HDKeyValueDomain *)keyValueDomain hdmc_menstrualCyclesOvulationConfirmationNotificationGetStateWithError:&v43];
    v19 = v43;
    v20 = v19;
    if (!v18 && v19)
    {
      if (error)
      {
        v21 = v19;
        v22 = 0;
        *error = v20;
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
      errorCopy = error;
      v24 = self->_keyValueDomain;
      v41 = v23;
      v42 = v20;
      v39 = [(HDKeyValueDomain *)v24 hdmc_menstrualCyclesOvulationConfirmationNotificationSetValuesWithState:v23 error:&v42];
      v40 = v42;

      v37 = MEMORY[0x277D119B8];
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      notificationManager = [WeakRetained notificationManager];
      areHealthNotificationsAuthorized = [notificationManager areHealthNotificationsAuthorized];
      scheduledNotificationDaysShiftedForFertileWindow = [v18 scheduledNotificationDaysShiftedForFertileWindow];
      v28 = MEMORY[0x277CCABB0];
      scheduledNotificationFertileWindowEndDayIndex = [v18 scheduledNotificationFertileWindowEndDayIndex];
      v30 = [v28 numberWithInteger:{objc_msgSend(scheduledNotificationFertileWindowEndDayIndex, "integerValue") - v16}];
      scheduledNotificationDaysWithWristTemp45DaysBeforeOvulationConfirmed = [v18 scheduledNotificationDaysWithWristTemp45DaysBeforeOvulationConfirmed];
      [v37 submitMetricForCategory:v12 areHealthNotificationsAuthorized:areHealthNotificationsAuthorized numberOfDaysShiftedForFertileWindow:scheduledNotificationDaysShiftedForFertileWindow numberOfDaysOffsetFromFertileWindowEnd:v30 numberOfDaysWithWristTemp45DaysBeforeOvulationConfirmedNotification:scheduledNotificationDaysWithWristTemp45DaysBeforeOvulationConfirmed internalLiveOnCycleFactorOverrideEnabled:{objc_msgSend(managerCopy, "internalCycleFactorsOverrideEnabled")}];

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
        if (errorCopy)
        {
          v34 = v20;
          *errorCopy = v20;
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
        if (error)
        {
          v33 = v32;
          *error = v32;
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

- (id)_daysWithWristTemperatureSamplesInDayIndexRange:(id)range calendarCache:(id)cache error:(id *)error
{
  var1 = range.var1;
  var0 = range.var0;
  cacheCopy = cache;
  v10 = [HDMCDaySummaryEnumerator alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(v20) = 1;
  v12 = [(HDMCDaySummaryEnumerator *)v10 initWithProfile:WeakRetained calendarCache:cacheCopy dayIndexRange:var0 ascending:var1 includeFactors:1 includeWristTemperature:0, v20];

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
      if (error)
      {
        v18 = v16;
        *error = v17;
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

- (void)_triggerImmediateSyncWithReason:(id)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [WeakRetained cloudSyncManager];
  v7 = objc_alloc(MEMORY[0x277CCD140]);
  v8 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  v9 = [v7 initWithChangesSyncRequest:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__HDMCOvulationConfirmationStateManager__triggerImmediateSyncWithReason___block_invoke;
  v11[3] = &unk_27865AAA8;
  v11[4] = self;
  v12 = reasonCopy;
  v10 = reasonCopy;
  [cloudSyncManager syncWithRequest:v9 reason:v10 completion:v11];
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

- (void)settingsManagerDidUpdateNotificationSettings:(id)settings
{
  dispatch_assert_queue_V2(self->_queue);

  [(HDMCOvulationConfirmationStateManager *)self _queue_clearStateIfNecessary];
}

- (void)featureSettingsManager:(id)manager didUpdateSettingsForFeatureIdentifier:(id)identifier
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