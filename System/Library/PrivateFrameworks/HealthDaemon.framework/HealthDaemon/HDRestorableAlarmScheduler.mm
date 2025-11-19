@interface HDRestorableAlarmScheduler
- (BOOL)_enumerateAllAlarmEventsWithError:(void *)a3 enumerationHandler:;
- (BOOL)_performWriteTransactionAndFireEventsWithError:(void *)a3 block:;
- (BOOL)removeAllEventsWithClientIdentifier:(id)a3 error:(id *)a4;
- (BOOL)removeEvents:(id)a3 error:(id *)a4;
- (BOOL)scheduleEvents:(id)a3 error:(id *)a4;
- (HDRestorableAlarmScheduler)initWithProfile:(id)a3;
- (id)diagnosticDescription;
- (id)replaceAllScheduledEventsWithClientIdentifier:(id)a3 newEvents:(id)a4 error:(id *)a5;
- (id)scheduledEventsForClientIdentifier:(id)a3 error:(id *)a4;
- (void)_queue_enqueueMaintenanceNotifyAndScheduleWithReason:(uint64_t)a1;
- (void)_queue_processDueEventsWithCompletion:(uint64_t)a1;
- (void)_queue_setNeedsMaintenanceNotifyAndSchedule:(uint64_t)a1;
- (void)_queue_updateProtectedDataObserverStateIfRequired;
- (void)addAlarm:(id)a3;
- (void)checkForDueEventsImmediatelyWithCompletion:(id)a3;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)a3;
- (void)removeAlarm:(id)a3;
@end

@implementation HDRestorableAlarmScheduler

- (HDRestorableAlarmScheduler)initWithProfile:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = HDRestorableAlarmScheduler;
  v5 = [(HDRestorableAlarmScheduler *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    clients = v6->_clients;
    v6->_clients = v9;

    v11 = objc_alloc(MEMORY[0x277D10BC8]);
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    v13 = [WeakRetained profileIdentifier];
    v14 = objc_loadWeakRetained(&v6->_profile);
    v15 = [v14 daemon];
    v16 = [v15 alarmScheduler];
    v17 = [v11 initWithProfileIdentifier:v13 scheduler:v16 eventName:@"HDRestorableAlarmScheduler" eventHandlerQueue:v6->_queue];
    systemScheduler = v6->_systemScheduler;
    v6->_systemScheduler = v17;

    v19 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v19 addObject:v6];

    if (_HDIsUnitTesting)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = [MEMORY[0x277CCAD78] UUID];
      v22 = [v21 UUIDString];
      v23 = [v20 stringWithFormat:@"HD-%@-%@", @"SignificantTimeChangeNotification", v22];
      significantTimeChangeNotificationName = v6->_significantTimeChangeNotificationName;
      v6->_significantTimeChangeNotificationName = v23;
    }

    else
    {
      v21 = v6->_significantTimeChangeNotificationName;
      v6->_significantTimeChangeNotificationName = @"SignificantTimeChangeNotification";
    }

    [v4 registerProfileReadyObserver:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)dealloc
{
  if (self)
  {
    significantTimeChangeNotificationToken = self->_significantTimeChangeNotificationToken;
    if (significantTimeChangeNotificationToken != -1)
    {
      notify_cancel(significantTimeChangeNotificationToken);
    }
  }

  v4.receiver = self;
  v4.super_class = HDRestorableAlarmScheduler;
  [(HDRestorableAlarmScheduler *)&v4 dealloc];
}

- (void)profileDidBecomeReady:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_hasInitializedSystemScheduler)
  {
    self->_hasInitializedSystemScheduler = 1;
    objc_initWeak(&location, self);
    v4 = [(HDRestorableAlarmScheduler *)self systemScheduler];
    handler = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __74__HDRestorableAlarmScheduler__queue_beginReceivingSystemEventsIfNecessary__block_invoke;
    v14 = &unk_2786273B8;
    objc_copyWeak(&v15, &location);
    [v4 beginReceivingEventsWithHandler:&handler];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  objc_initWeak(&location, self);
  self->_significantTimeChangeNotificationToken = -1;
  v5 = [(NSString *)self->_significantTimeChangeNotificationName UTF8String];
  queue = self->_queue;
  handler = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __78__HDRestorableAlarmScheduler__startObservingSignificantTimeChangeNotification__block_invoke;
  v14 = &unk_278613BF0;
  objc_copyWeak(&v15, &location);
  notify_register_dispatch(v5, &self->_significantTimeChangeNotificationToken, queue, &handler);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v9 = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HDRestorableAlarmScheduler_profileDidBecomeReady___block_invoke;
  v10[3] = &unk_278613968;
  v10[4] = self;
  [v8 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:v9 block:v10];
}

void __52__HDRestorableAlarmScheduler_profileDidBecomeReady___block_invoke(uint64_t a1)
{
  [(HDRestorableAlarmScheduler *)*(a1 + 32) _queue_setNeedsMaintenanceNotifyAndSchedule:?];
  v2 = *(a1 + 32);

  [(HDRestorableAlarmScheduler *)v2 _queue_enqueueMaintenanceNotifyAndScheduleWithReason:?];
}

- (void)_queue_setNeedsMaintenanceNotifyAndSchedule:(uint64_t)a1
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    *(a1 + 42) = a2;

    [(HDRestorableAlarmScheduler *)a1 _queue_updateProtectedDataObserverStateIfRequired];
  }
}

- (void)_queue_enqueueMaintenanceNotifyAndScheduleWithReason:(uint64_t)a1
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (*(a1 + 41) == 1)
    {
      _HKInitializeLogging();
      v4 = HKLogInfrastructure();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v22 = a1;
        v23 = 2114;
        v24 = v3;
        _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping maintenance operation with reason %{public}@ as we're already waiting on one", buf, 0x16u);
      }
    }

    else
    {
      *(a1 + 41) = 1;
      objc_initWeak(&location, a1);
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = *(a1 + 16);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __83__HDRestorableAlarmScheduler__queue_enqueueMaintenanceNotifyAndScheduleWithReason___block_invoke;
      v17[3] = &unk_278617620;
      objc_copyWeak(&v19, &location);
      v8 = v3;
      v18 = v8;
      v9 = [HDMaintenanceOperation maintenanceOperationWithName:v6 queue:v7 synchronousBlock:v17];

      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v11 = [WeakRetained database];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __83__HDRestorableAlarmScheduler__queue_enqueueMaintenanceNotifyAndScheduleWithReason___block_invoke_2;
      v15[3] = &unk_278613920;
      v15[4] = a1;
      v12 = v9;
      v16 = v12;
      [v11 performWhenDataProtectedByFirstUnlockIsAvailable:v15];

      _HKInitializeLogging();
      v13 = HKLogInfrastructure();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v22 = a1;
        v23 = 2114;
        v24 = v8;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueued maintenance operation with reason %{public}@", buf, 0x16u);
      }

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __78__HDRestorableAlarmScheduler__startObservingSignificantTimeChangeNotification__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    dispatch_assert_queue_V2(WeakRetained[2]);
    _HKInitializeLogging();
    v2 = HKLogInfrastructure();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v6 = v4;
      _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ received significant time change notification", buf, 0xCu);
    }

    dispatch_assert_queue_V2(v4[2]);
    *(v4 + 42) = 1;
    [(HDRestorableAlarmScheduler *)v4 _queue_updateProtectedDataObserverStateIfRequired];
    [(HDRestorableAlarmScheduler *)v4 _queue_enqueueMaintenanceNotifyAndScheduleWithReason:?];
    WeakRetained = v4;
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (v4)
  {

    [(HDRestorableAlarmScheduler *)self _queue_enqueueMaintenanceNotifyAndScheduleWithReason:?];
  }
}

- (void)_queue_updateProtectedDataObserverStateIfRequired
{
  dispatch_assert_queue_V2(*(a1 + 16));
  if ((*(a1 + 42) & 1) != 0 || *(a1 + 43) == 1)
  {
    if ((*(a1 + 46) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v3 = [WeakRetained database];
      [v3 addProtectedDataObserver:a1 queue:*(a1 + 16)];

      *(a1 + 46) = 1;
    }
  }

  else if (*(a1 + 46) == 1)
  {
    v4 = objc_loadWeakRetained((a1 + 8));
    v5 = [v4 database];
    [v5 removeProtectedDataObserver:a1];

    *(a1 + 46) = 0;
  }
}

void __83__HDRestorableAlarmScheduler__queue_enqueueMaintenanceNotifyAndScheduleWithReason___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(WeakRetained[2]);
    if ((*(WeakRetained + 42) & 1) != 0 || (*(WeakRetained + 43) & 1) != 0 || *(WeakRetained + 45) == 1)
    {
      _HKInitializeLogging();
      v3 = HKLogInfrastructure();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v8 = WeakRetained;
        v9 = 2112;
        v10 = v2;
        _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Processing due events with maintenance operation reason %@", buf, 0x16u);
      }

      [(HDRestorableAlarmScheduler *)WeakRetained _queue_processDueEventsWithCompletion:?];
    }

    else
    {
      _HKInitializeLogging();
      v5 = HKLogInfrastructure();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v8 = WeakRetained;
        v9 = 2112;
        v10 = v2;
        _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping maintenance operation with reason %@ since no longer needed", buf, 0x16u);
      }
    }

    *(WeakRetained + 41) = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __83__HDRestorableAlarmScheduler__queue_enqueueMaintenanceNotifyAndScheduleWithReason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained daemon];
  v3 = [v2 maintenanceWorkCoordinator];
  [v3 enqueueMaintenanceOperation:*(a1 + 40)];
}

- (void)_queue_processDueEventsWithCompletion:(uint64_t)a1
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    _HKInitializeLogging();
    v4 = HKLogInfrastructure();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = a1;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Received system alert to check for due alarms", buf, 0xCu);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __68__HDRestorableAlarmScheduler__queue_processDueEventsWithCompletion___block_invoke;
    v10 = &unk_2786200A8;
    v11 = a1;
    v12 = v3;
    v5 = *(a1 + 16);
    v6 = v8;
    dispatch_assert_queue_V2(v5);
    (v9)(v6, *(a1 + 44));
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __74__HDRestorableAlarmScheduler__queue_beginReceivingSystemEventsIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDRestorableAlarmScheduler *)WeakRetained _queue_processDueEventsWithCompletion:?];
}

void __68__HDRestorableAlarmScheduler__queue_processDueEventsWithCompletion___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 16));
    _HKInitializeLogging();
    v3 = HKLogInfrastructure();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v2;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Enumerating due events", &buf, 0xCu);
    }

    v4 = [v2 _unitTest_currentDate];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    }

    v7 = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__146;
    v35 = __Block_byref_object_dispose__146;
    v36 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v22 = 0;
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v41 = __94__HDRestorableAlarmScheduler__queue_notifyClientsOfDueEventsAndScheduleNextFireDateWithError___block_invoke;
    v42 = &unk_2786273E0;
    v9 = v7;
    v43 = v9;
    v44 = v2;
    v46 = &v23;
    v47 = &v27;
    v10 = v8;
    v45 = v10;
    v48 = &v31;
    v11 = [(HDRestorableAlarmScheduler *)v2 _enumerateAllAlarmEventsWithError:&buf enumerationHandler:?];
    v12 = v22;
    if (v11)
    {
      v13 = *(v24 + 24);
      dispatch_assert_queue_V2(*(v2 + 16));
      *(v2 + 43) = v13;
      [(HDRestorableAlarmScheduler *)v2 _queue_updateProtectedDataObserverStateIfRequired];
      if (*(v28 + 24) == 1)
      {
        if ((*(v2 + 45) & 1) == 0)
        {
          *(v2 + 45) = 1;
          _HKInitializeLogging();
          v14 = HKLogInfrastructure();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *v37 = 138543362;
            *&v37[4] = v2;
            _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Registered for on-wrist updates", v37, 0xCu);
          }
        }
      }

      else
      {
        *(v2 + 45) = 0;
      }

      *v37 = MEMORY[0x277D85DD0];
      *&v37[8] = 3221225472;
      *&v37[16] = __94__HDRestorableAlarmScheduler__queue_notifyClientsOfDueEventsAndScheduleNextFireDateWithError___block_invoke_325;
      v38 = &unk_278627408;
      v39 = v2;
      [v10 enumerateKeysAndObjectsUsingBlock:v37];
      if (v32[5])
      {
        v18 = [v2 systemScheduler];
        [v18 setNextFireDate:v32[5] isUserVisible:0];
      }

      else
      {
        v18 = [v2 systemScheduler];
        [v18 unschedule];
      }

      v2 = 0;
    }

    else
    {
      if ((HKIsUnitTesting() & 1) == 0)
      {
        _HKInitializeLogging();
        v15 = HKLogInfrastructure();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *v37 = 138543618;
          *&v37[4] = v2;
          *&v37[12] = 2114;
          *&v37[14] = v12;
          _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Failed to enumerate due events: %{public}@", v37, 0x16u);
        }
      }

      v16 = v12;
      v2 = v16;
      if (v16)
      {
        v17 = v16;
      }
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v11 = 0;
  }

  v19 = v2;
  [(HDRestorableAlarmScheduler *)*(a1 + 32) _queue_setNeedsMaintenanceNotifyAndSchedule:?];
  v20 = *(a1 + 40);
  if (v20)
  {
    (*(v20 + 16))(v20, v11, v19);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __94__HDRestorableAlarmScheduler__queue_notifyClientsOfDueEventsAndScheduleNextFireDateWithError___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 currentDueDate];
  if ([v4 hk_isBeforeOrEqualToDate:a1[4]])
  {
    if ([v3 requiresDeviceUnlocked])
    {
      WeakRetained = objc_loadWeakRetained((a1[5] + 8));
      v6 = [WeakRetained database];
      v7 = [v6 isProtectedDataAvailable];

      v8 = 1;
      if ((v7 & 1) == 0)
      {
        *(*(a1[7] + 8) + 24) = 1;
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }

    if ([v3 requiresDeviceOnWrist] && (*(a1[5] + 44) & 1) == 0)
    {
      *(*(a1[8] + 8) + 24) = 1;
    }

    else if (v8)
    {
      v16 = a1[6];
      v17 = [v3 clientIdentifier];
      v18 = [v16 objectForKeyedSubscript:v17];

      if (!v18)
      {
        v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v19 = a1[6];
        v20 = [v3 clientIdentifier];
        [v19 setObject:v18 forKeyedSubscript:v20];
      }

      [v18 addObject:v3];
    }
  }

  else
  {
    v9 = *(a1[9] + 8);
    v12 = *(v9 + 40);
    v10 = (v9 + 40);
    v11 = v12;
    if (v12)
    {
      v13 = [v11 earlierDate:v4];
      v14 = *(a1[9] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    else
    {
      objc_storeStrong(v10, v4);
    }
  }

  return 1;
}

- (BOOL)_enumerateAllAlarmEventsWithError:(void *)a3 enumerationHandler:
{
  v5 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v7 = [WeakRetained database];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__HDRestorableAlarmScheduler__enumerateAllAlarmEventsWithError_enumerationHandler___block_invoke;
    v10[3] = &unk_27861A528;
    v11 = v5;
    v8 = [(HDHealthEntity *)HDAlarmEventEntity performReadTransactionWithHealthDatabase:v7 error:a2 block:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __94__HDRestorableAlarmScheduler__queue_notifyClientsOfDueEventsAndScheduleNextFireDateWithError___block_invoke_325(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 32) objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    [v7 eventsDidFire:v6];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogInfrastructure();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v12 = 138543874;
      v13 = v10;
      v14 = 2114;
      v15 = v5;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ No client found with identifier %{public}@. Skipping notifying for due events: %{public}@", &v12, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addAlarm:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HDRestorableAlarmScheduler_addAlarm___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __39__HDRestorableAlarmScheduler_addAlarm___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) clientIdentifier];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKLogInfrastructure();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = [*(a1 + 40) clientIdentifier];
      *buf = 138543874;
      v20 = v17;
      v21 = 2114;
      v22 = v18;
      v23 = 2114;
      v24 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Client identifier conflict detected for %{public}@. Replacing client %{public}@", buf, 0x20u);
    }
  }

  _HKInitializeLogging();
  v6 = HKLogInfrastructure();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *buf = 138543618;
    v20 = v7;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering alarm: %{public}@", buf, 0x16u);
  }

  v9 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 32);
  v11 = [v9 clientIdentifier];
  [v10 setObject:v9 forKey:v11];

  v12 = MEMORY[0x277CCACA8];
  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) clientIdentifier];
  v15 = [v12 stringWithFormat:@"Alarm %@ added", v14];
  [(HDRestorableAlarmScheduler *)v13 _queue_enqueueMaintenanceNotifyAndScheduleWithReason:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeAlarm:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HDRestorableAlarmScheduler_removeAlarm___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __42__HDRestorableAlarmScheduler_removeAlarm___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2 = [*(a1 + 40) clientIdentifier];
  [v1 removeObjectForKey:v2];
}

- (BOOL)scheduleEvents:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogInfrastructure();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Scheduling events %{public}@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__HDRestorableAlarmScheduler_scheduleEvents_error___block_invoke;
  v12[3] = &unk_278616048;
  v13 = v6;
  v8 = v6;
  v9 = [(HDRestorableAlarmScheduler *)self _performWriteTransactionAndFireEventsWithError:a4 block:v12];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_performWriteTransactionAndFireEventsWithError:(void *)a3 block:
{
  v5 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v7 = [WeakRetained database];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__HDRestorableAlarmScheduler__performWriteTransactionAndFireEventsWithError_block___block_invoke;
    v10[3] = &unk_278618368;
    v10[4] = a1;
    v11 = v5;
    v8 = [(HDHealthEntity *)HDAlarmEventEntity performWriteTransactionWithHealthDatabase:v7 error:a2 block:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)removeEvents:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogInfrastructure();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing events %{public}@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__HDRestorableAlarmScheduler_removeEvents_error___block_invoke;
  v12[3] = &unk_278616048;
  v13 = v6;
  v8 = v6;
  v9 = [(HDRestorableAlarmScheduler *)self _performWriteTransactionAndFireEventsWithError:a4 block:v12];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)removeAllEventsWithClientIdentifier:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogInfrastructure();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = self;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing all events with client identifier: %{public}@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HDRestorableAlarmScheduler_removeAllEventsWithClientIdentifier_error___block_invoke;
  v12[3] = &unk_278616048;
  v13 = v6;
  v8 = v6;
  v9 = [(HDRestorableAlarmScheduler *)self _performWriteTransactionAndFireEventsWithError:a4 block:v12];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)replaceAllScheduledEventsWithClientIdentifier:(id)a3 newEvents:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  _HKInitializeLogging();
  v10 = HKLogInfrastructure();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v23 = self;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v9;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Replace all scheduled events with client identifier %{public}@ with events %{public}@", buf, 0x20u);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__HDRestorableAlarmScheduler_replaceAllScheduledEventsWithClientIdentifier_newEvents_error___block_invoke;
  v18[3] = &unk_278615D40;
  v12 = v8;
  v19 = v12;
  v13 = v11;
  v20 = v13;
  v14 = v9;
  v21 = v14;
  if ([(HDRestorableAlarmScheduler *)self _performWriteTransactionAndFireEventsWithError:a5 block:v18])
  {
    v15 = [[HDAlarmEventChanges alloc] initWithOldEvents:v13 scheduledEvents:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

BOOL __92__HDRestorableAlarmScheduler_replaceAllScheduledEventsWithClientIdentifier_newEvents_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __92__HDRestorableAlarmScheduler_replaceAllScheduledEventsWithClientIdentifier_newEvents_error___block_invoke_2;
  v9[3] = &unk_278627430;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  if ([HDAlarmEventEntity deleteAllAlarmEventsWithClientIdentifier:v6 transaction:v5 enumerationHandler:v9 error:a3])
  {
    v7 = [HDAlarmEventEntity insertOrReplaceAlarmEvents:*(a1 + 48) transaction:v5 error:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)scheduledEventsForClientIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__146;
  v20 = __Block_byref_object_dispose__146;
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [WeakRetained database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__HDRestorableAlarmScheduler_scheduledEventsForClientIdentifier_error___block_invoke;
  v13[3] = &unk_278614110;
  v9 = v6;
  v14 = v9;
  v15 = &v16;
  LODWORD(a4) = [(HDHealthEntity *)HDAlarmEventEntity performReadTransactionWithHealthDatabase:v8 error:a4 block:v13];

  if (a4)
  {
    v10 = v17[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

BOOL __71__HDRestorableAlarmScheduler_scheduledEventsForClientIdentifier_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HDRestorableAlarmScheduler_scheduledEventsForClientIdentifier_error___block_invoke_2;
  v6[3] = &unk_278627458;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [HDAlarmEventEntity enumerateAllAlarmEventsWithClientIdentifier:v4 transaction:a2 error:a3 enumerationHandler:v6];
}

uint64_t __83__HDRestorableAlarmScheduler__performWriteTransactionAndFireEventsWithError_block___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__HDRestorableAlarmScheduler__performWriteTransactionAndFireEventsWithError_block___block_invoke_2;
  v6[3] = &unk_278613968;
  v6[4] = *(a1 + 32);
  v3 = a2;
  [v3 onCommit:v6 orRollback:0];
  v4 = (*(*(a1 + 40) + 16))();

  return v4;
}

void __83__HDRestorableAlarmScheduler__performWriteTransactionAndFireEventsWithError_block___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HDRestorableAlarmScheduler__performWriteTransactionAndFireEventsWithError_block___block_invoke_3;
  block[3] = &unk_278613968;
  block[4] = v1;
  dispatch_sync(v2, block);
}

- (void)checkForDueEventsImmediatelyWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HDRestorableAlarmScheduler_checkForDueEventsImmediatelyWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __73__HDRestorableAlarmScheduler_checkForDueEventsImmediatelyWithCompletion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__HDRestorableAlarmScheduler_checkForDueEventsImmediatelyWithCompletion___block_invoke_2;
  v4[3] = &unk_278616CC8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [(HDRestorableAlarmScheduler *)v2 _queue_processDueEventsWithCompletion:v4];
}

- (id)diagnosticDescription
{
  dispatch_assert_queue_not_V2(self->_queue);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(HDRestorableAlarmScheduler *)self description];
  [v3 addObject:v4];

  [v3 addObject:@"\tAlarm Events"];
  v18 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__HDRestorableAlarmScheduler_diagnosticDescription__block_invoke;
  v16[3] = &unk_278627430;
  v5 = v3;
  v17 = v5;
  v6 = [(HDRestorableAlarmScheduler *)self _enumerateAllAlarmEventsWithError:v16 enumerationHandler:?];
  v7 = v18;
  if (!v6)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t\t%@", v7];
    [v5 addObject:v8];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HDRestorableAlarmScheduler_diagnosticDescription__block_invoke_2;
  block[3] = &unk_278613920;
  v14 = v5;
  v15 = self;
  v10 = v5;
  dispatch_sync(queue, block);
  v11 = [v10 componentsJoinedByString:@"\n"];

  return v11;
}

uint64_t __51__HDRestorableAlarmScheduler_diagnosticDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t\t%@", a2];
  [v2 addObject:v3];

  return 1;
}

void __51__HDRestorableAlarmScheduler_diagnosticDescription__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addObject:@"\tClients"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(*(a1 + 40) + 32) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 32);
        v8 = MEMORY[0x277CCACA8];
        v9 = [*(*(&v12 + 1) + 8 * v6) diagnosticDescription];
        v10 = [v8 stringWithFormat:@"\t\t%@", v9];
        [v7 addObject:v10];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end