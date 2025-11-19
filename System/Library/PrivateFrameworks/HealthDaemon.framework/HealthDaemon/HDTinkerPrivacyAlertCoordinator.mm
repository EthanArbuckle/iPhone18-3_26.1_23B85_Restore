@interface HDTinkerPrivacyAlertCoordinator
- (BOOL)_queue_alarm:(uint64_t)a1 didReceiveDueEvents:(void *)a2;
- (BOOL)_unitTest_didReceiveDueEvents:(id)a3;
- (BOOL)_unitTest_scheduleTransparencyAlertIfRequiredForBirthdate:(id)a3 error:(id *)a4;
- (BOOL)removeAllEventsWithError:(id *)a3;
- (BOOL)scheduleEventIfRequiredForDateComponents:(id)a3 eventIdentifier:(id)a4 error:(id *)a5;
- (HDTinkerPrivacyAlertCoordinator)initWithProfile:(id)a3;
- (id)allScheduledDueDatesWithError:(id *)a3;
- (id)allScheduledEventsWithError:(id *)a3;
- (uint64_t)_queue_scheduleEventIfRequiredForDateComponents:(void *)a3 eventIdentifier:(uint64_t *)a4 error:;
- (uint64_t)_queue_scheduleTransparencyAlertIfRequiredForBirthdate:(uint64_t *)a3 error:;
- (uint64_t)_shouldScheduleTransparencyAlertsWithError:(uint64_t)a1;
- (void)_queue_clearDueEvents:(id)a3;
- (void)_userCharacteristicsDidChangeNotification:(id)a3;
@end

@implementation HDTinkerPrivacyAlertCoordinator

- (HDTinkerPrivacyAlertCoordinator)initWithProfile:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HDTinkerPrivacyAlertCoordinator;
  v5 = [(HDTinkerPrivacyAlertCoordinator *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = [HDRestorableAlarm alloc];
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v11 = [(HDRestorableAlarm *)v9 initWithProfile:WeakRetained clientIdentifier:@"HDTinkerPrivacyAlertCoordinator" eventHandlerQueue:v6->_queue];
    scheduler = v6->_scheduler;
    v6->_scheduler = v11;

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v6 selector:sel__userCharacteristicsDidChangeNotification_ name:@"HDUserCharacteristicsDidChangeNotification" object:0];

    objc_initWeak(&location, v6);
    v14 = v6->_scheduler;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__HDTinkerPrivacyAlertCoordinator_initWithProfile___block_invoke;
    v16[3] = &unk_278621FB0;
    objc_copyWeak(&v17, &location);
    [(HDRestorableAlarm *)v14 beginReceivingEventsWithHandler:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __51__HDTinkerPrivacyAlertCoordinator_initWithProfile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [HDTinkerPrivacyAlertCoordinator _queue_alarm:v5 didReceiveDueEvents:?];
}

- (BOOL)_queue_alarm:(uint64_t)a1 didReceiveDueEvents:(void *)a2
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    _HKInitializeLogging();
    v4 = MEMORY[0x277CCC328];
    v5 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v5;
      v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
      *buf = 138543874;
      v54 = a1;
      v55 = 2114;
      v56 = v8;
      v57 = 2112;
      v58 = v3;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Received %{public}@ due events: %@ (#t0)", buf, 0x20u);
    }

    v47 = 0;
    v9 = v3;
    dispatch_assert_queue_V2(*(a1 + 24));
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v48 objects:buf count:16];
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = v11;
    v13 = *v49;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v48 + 1) + 8 * i) eventIdentifier];
        valid = HDIsValidTinkerEventIdentifier(v15);

        if (valid)
        {

          v22 = objc_loadWeakRetained((a1 + 8));
          v23 = [HDKeyValueDomain alloc];
          v24 = [(HDKeyValueDomain *)v23 initWithCategory:100 domainName:*MEMORY[0x277CCE3B8] profile:v22];

          v25 = *MEMORY[0x277CCE3B0];
          v52 = 0;
          v26 = [(HDKeyValueDomain *)v24 dateForKey:v25 error:&v52];
          v27 = v52;
          if (v27)
          {
            _HKInitializeLogging();
            v28 = *v4;
            if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
            {
              *v59 = 138543362;
              *&v59[4] = v27;
              _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "Error reading sharing disabled date: %{public}@ (#t0)", v59, 0xCu);
            }
          }

          if (v26)
          {
            [MEMORY[0x277CCA9B8] hk_assignError:&v47 code:100 format:@"Sharing is disabled (#t0)"];
          }

          else if ([(HDTinkerPrivacyAlertCoordinator *)a1 _shouldScheduleTransparencyAlertsWithError:?])
          {
            WeakRetained = objc_loadWeakRetained((a1 + 8));
            *v59 = 0;
            v18 = [WeakRetained pairedGuardianUserInfoWithError:v59];
            v21 = *v59;

            v20 = v18 != 0;
            if (v18)
            {
              v30 = objc_loadWeakRetained((a1 + 8));
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                v45 = [MEMORY[0x277CCA890] currentHandler];
                v46 = objc_loadWeakRetained((a1 + 8));
                [v45 handleFailureInMethod:sel__queue_showAlertIfRequiredForDueEvents_error_ object:a1 file:@"HDTinkerPrivacyAlertCoordinator.m" lineNumber:152 description:{@"Profile %@ is not an instance of type HDPrimaryProfile (#t0)", v46, v47, v48}];
              }

              v32 = [HDNotificationManager alloc];
              v33 = objc_loadWeakRetained((a1 + 8));
              v34 = [(HDNotificationManager *)v32 initWithProfile:v33 bundle:1];

              v35 = [HDSharedDataPrivacyNotification alloc];
              v36 = [(HDSharedDataPrivacyNotification *)v18 firstName];
              v37 = [(HDSharedDataPrivacyNotification *)v18 lastName];
              v38 = [(HDSharedDataPrivacyNotification *)v35 initWithNotificationManager:v34 guardianFirstName:v36 lastName:v37];

              [(HDNanoHealthNotification *)v38 triggerNotification];
              v4 = MEMORY[0x277CCC328];
            }

            else
            {
              v39 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Unable to find guardian info (#t0)" underlyingError:v21];
              v38 = v39;
              if (v39)
              {
                v40 = v39;
                v47 = v38;
                v34 = v38;
              }

              else
              {
                v34 = 0;
              }
            }

            goto LABEL_30;
          }

          v20 = 0;
          goto LABEL_31;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v48 objects:buf count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_12:

    v17 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Did not any find valid events, not firing alert (#t0)"}];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
      v20 = 0;
      v47 = v18;
      v21 = v18;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

LABEL_30:

LABEL_31:
    v41 = v47;
    if (v41)
    {
      _HKInitializeLogging();
      v42 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v54 = a1;
        v55 = 2114;
        v56 = v41;
        _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "%{public}@ Did not fire alert, error: %{public}@ (#t0)", buf, 0x16u);
      }
    }

    [a1 _queue_clearDueEvents:v10];
  }

  else
  {
    v20 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)_queue_clearDueEvents:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  scheduler = self->_scheduler;
  v11 = 0;
  v7 = [(HDRestorableAlarm *)scheduler removeEvents:v5 error:&v11];

  v8 = v11;
  if (!v7)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Error removing events %{public}@ (#t0)", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_unitTest_didReceiveDueEvents:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDTinkerPrivacyAlertCoordinator__unitTest_didReceiveDueEvents___block_invoke;
  block[3] = &unk_27861F190;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

BOOL __65__HDTinkerPrivacyAlertCoordinator__unitTest_didReceiveDueEvents___block_invoke(uint64_t a1)
{
  result = [HDTinkerPrivacyAlertCoordinator _queue_alarm:*(a1 + 40) didReceiveDueEvents:?];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)allScheduledEventsWithError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__102;
  v21 = __Block_byref_object_dispose__102;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__102;
  v15 = __Block_byref_object_dispose__102;
  v16 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HDTinkerPrivacyAlertCoordinator_allScheduledEventsWithError___block_invoke;
  block[3] = &unk_278621FD8;
  block[4] = self;
  block[5] = &v11;
  block[6] = &v17;
  dispatch_sync(queue, block);
  v5 = v18[5];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = v5;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __63__HDTinkerPrivacyAlertCoordinator_allScheduledEventsWithError___block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 allScheduledEventsWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)allScheduledDueDatesWithError:(id *)a3
{
  v3 = [(HDTinkerPrivacyAlertCoordinator *)self allScheduledEventsWithError:a3];
  v4 = [v3 hk_map:&__block_literal_global_113];

  return v4;
}

- (BOOL)scheduleEventIfRequiredForDateComponents:(id)a3 eventIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__102;
  v27 = __Block_byref_object_dispose__102;
  v28 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__HDTinkerPrivacyAlertCoordinator_scheduleEventIfRequiredForDateComponents_eventIdentifier_error___block_invoke;
  block[3] = &unk_278622020;
  v21 = &v29;
  block[4] = self;
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v22 = &v23;
  dispatch_sync(queue, block);
  v13 = v24[5];
  v14 = v13;
  if (v13)
  {
    if (a5)
    {
      v15 = v13;
      *a5 = v14;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v16 = *(v30 + 24);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  return v16;
}

void __98__HDTinkerPrivacyAlertCoordinator_scheduleEventIfRequiredForDateComponents_eventIdentifier_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [(HDTinkerPrivacyAlertCoordinator *)v2 _queue_scheduleEventIfRequiredForDateComponents:v3 eventIdentifier:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

- (uint64_t)_queue_scheduleEventIfRequiredForDateComponents:(void *)a3 eventIdentifier:(uint64_t *)a4 error:
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    goto LABEL_8;
  }

  dispatch_assert_queue_V2(*(a1 + 24));
  if ((HDIsValidTinkerEventIdentifier(v8) & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:100 format:{@"Invalid event identifier %@ (#t0)", v8}];
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (([(HDTinkerPrivacyAlertCoordinator *)a1 _shouldScheduleTransparencyAlertsWithError:a4]& 1) == 0)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v16 = *a4;
      *buf = 138543618;
      v19 = a1;
      v20 = 2114;
      v21 = v16;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Not scheduling event %{public}@ (#t0)", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v9 = [*(a1 + 16) eventWithIdentifier:v8 dueDateComponents:v7 eventOptions:3];
  v10 = *(a1 + 16);
  v17 = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v12 = [v10 scheduleEvents:v11 error:a4];

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (uint64_t)_shouldScheduleTransparencyAlertsWithError:(uint64_t)a1
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v5 = [WeakRetained daemon];
  v6 = [v5 behavior];
  v7 = [v6 tinkerModeEnabled];

  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 8));
    v16 = 0;
    v9 = [v8 pairedGuardianUserInfoWithError:&v16];
    v10 = v16;

    if (v9 && ([v9 firstName], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v11, objc_msgSend(v9, "lastName"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      v14 = 1;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a2 code:100 description:@"Error fetching guardian name (#t0)" underlyingError:v10];
      v14 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a2 code:100 format:@"Device not in tinker mode (#t0)"];
    return 0;
  }

  return v14;
}

- (uint64_t)_queue_scheduleTransparencyAlertIfRequiredForBirthdate:(uint64_t *)a3 error:
{
  if (!a1)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2;
  dispatch_assert_queue_V2(v5);
  v7 = [v6 calendar];
  v8 = [v6 date];

  v9 = [v7 dateByAddingUnit:4 value:13 toDate:v8 options:0];

  v10 = [v7 dateByAddingUnit:16 value:1 toDate:v9 options:0];
  v11 = [a1 _unitTest_currentDate];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x277CBEAA8] date];
  }

  v14 = v13;

  if ([v14 hk_isBeforeDate:v10])
  {
    v15 = [v7 components:30 fromDate:v10];
    [v15 setCalendar:v7];
    v16 = a1[5];
    a1[5] = v15;
    v17 = v15;

    v18 = [(HDTinkerPrivacyAlertCoordinator *)a1 _queue_scheduleEventIfRequiredForDateComponents:v17 eventIdentifier:@"TinkerPrivacyAlertEventBirthday" error:a3];
  }

  else
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "User's already passed age limitations, not scheduling alert.", v21, 2u);
    }

    v18 = 1;
  }

  return v18;
}

- (void)_userCharacteristicsDidChangeNotification:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HDTinkerPrivacyAlertCoordinator__userCharacteristicsDidChangeNotification___block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __77__HDTinkerPrivacyAlertCoordinator__userCharacteristicsDidChangeNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [WeakRetained userCharacteristicsManager];
  v14 = 0;
  v5 = [v4 userCharacteristicForType:v2 error:&v14];
  v6 = v14;

  if (v5)
  {
    v7 = *(a1 + 32);
    v13 = 0;
    v8 = [(HDTinkerPrivacyAlertCoordinator *)v7 _queue_scheduleTransparencyAlertIfRequiredForBirthdate:v5 error:&v13];
    v9 = v13;
    if ((v8 & 1) == 0 && (HKIsUnitTesting() & 1) == 0)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v9;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Error scheduling birthdate transparency alert: %{public}@ (#t0)", buf, 0xCu);
      }
    }
  }

  else if ((HKIsUnitTesting() & 1) == 0)
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Could not fetch date of birth components from DB: %{public}@ (#t0)", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeAllEventsWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__102;
  v19 = __Block_byref_object_dispose__102;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDTinkerPrivacyAlertCoordinator_removeAllEventsWithError___block_invoke;
  block[3] = &unk_278621FD8;
  block[4] = self;
  block[5] = &v11;
  block[6] = &v15;
  dispatch_async(queue, block);
  v5 = v16[5];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = v5;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v8;
}

void __60__HDTinkerPrivacyAlertCoordinator_removeAllEventsWithError___block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 removeAllEventsWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (BOOL)_unitTest_scheduleTransparencyAlertIfRequiredForBirthdate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__102;
  v22 = __Block_byref_object_dispose__102;
  v23 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__HDTinkerPrivacyAlertCoordinator__unitTest_scheduleTransparencyAlertIfRequiredForBirthdate_error___block_invoke;
  v14[3] = &unk_278622048;
  v16 = &v24;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v18;
  dispatch_sync(queue, v14);
  v9 = v19[5];
  v10 = v9;
  if (v9)
  {
    if (a4)
    {
      v11 = v9;
      *a4 = v10;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v12 = *(v25 + 24);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v12;
}

void __99__HDTinkerPrivacyAlertCoordinator__unitTest_scheduleTransparencyAlertIfRequiredForBirthdate_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [(HDTinkerPrivacyAlertCoordinator *)v2 _queue_scheduleTransparencyAlertIfRequiredForBirthdate:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

@end