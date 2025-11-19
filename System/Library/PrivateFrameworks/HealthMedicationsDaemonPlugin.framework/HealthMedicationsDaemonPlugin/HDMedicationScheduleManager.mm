@interface HDMedicationScheduleManager
+ (id)_fetchDoseEventsWithScheduledItemIdentifier:(void *)a3 profile:(uint64_t)a4 error:;
+ (id)_fetchScheduledItemsWithScheduledItemIdentifier:(void *)a3 transaction:(uint64_t)a4 error:;
+ (id)_filterScheduledItemsThatNeedCorrespondinDoseEventsDroppingOnesWithAlreadyLoggedDoses:(void *)a3 existingDoseEvents:(void *)a4 scheduledItemIdentifier:(uint64_t)a5 status:(void *)a6 logDate:;
+ (id)_filteredDoseEventsThatNeedUpdatingFrom:(void *)a3 scheduledItemIdentifier:(uint64_t)a4 status:(void *)a5 logDate:;
+ (id)_hrMinSecSinceMidnightWithDuration:(void *)a3 calendar:;
+ (id)_makeDateComponentsFromCycleStartDate:(uint64_t)a3 byAddingTimeDifferenceSec:(void *)a4 calendar:;
+ (id)_makeIntervalsWithStartTimeFromIntervals:(uint64_t)a3 byAddingTimeDifferenceDuration:(void *)a4 calendar:(void *)a5 timeZone:;
+ (uint64_t)_crossReferenceScheduledItemsAndDoseEventsAndLogUnloggedWithScheduledItemIdentifier:(uint64_t)a3 status:(void *)a4 logDate:(void *)a5 profile:(void *)a6 transaction:(uint64_t)a7 error:;
+ (uint64_t)_durationForDayHourMinuteSecondComponents:(uint64_t)a1;
+ (uint64_t)_insertDoseEvents:(void *)a3 profile:(uint64_t)a4 error:;
+ (uint64_t)_newDoseEventWithGeneratedMetadataLogOrigin:(void *)a3 scheduleItemIdentifier:(void *)a4 medicationIdentifier:(void *)a5 scheduledDoseQuantity:(void *)a6 doseQuantity:(void *)a7 scheduledDate:(void *)a8 startDate:(uint64_t)a9 status:(void *)a10 doseUnitString:(unsigned __int8)a11 isLastScheduledDose:;
- (BOOL)_addPendingSchedule:(uint64_t)a3 syncIdentity:;
- (BOOL)_enumerateNotDeletedSchedulesInDescendingCreationOrderWithPredicate:(uint64_t)a3 error:(void *)a4 enumerationHandler:;
- (BOOL)_enumerateSchedulesInDescendingCreationOrderWithPredicate:(char)a3 includeDeleted:(void *)a4 transaction:(uint64_t)a5 error:(void *)a6 enumerationHandler:;
- (BOOL)_fetchMedicationSchedule:(void *)a3 predicate:(uint64_t *)a4 error:;
- (BOOL)_updateSchedulesToTimeZone:(id)a3 maintainCalendarDatesAndTimes:(BOOL)a4 error:(id *)a5;
- (BOOL)deleteMedicationSchedule:(id)a3 error:(id *)a4;
- (BOOL)enumerateMedicationSchedulesWithPredicate:(id)a3 limit:(int64_t)a4 orderingTerms:(id)a5 error:(id *)a6 enumerationHandler:(id)a7;
- (BOOL)insertMedicationSchedule:(id)a3 error:(id *)a4;
- (BOOL)insertMedicationSchedules:(id)a3 error:(id *)a4;
- (BOOL)insertMedicationSchedules:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5 error:(id *)a6;
- (BOOL)logUnloggedDoseEventsForScheduledItemIdentifier:(id)a3 status:(int64_t)a4 logDate:(id)a5 error:(id *)a6;
- (BOOL)medicationSchedule:(id *)a3 identifier:(id)a4 error:(id *)a5;
- (BOOL)medicationSchedule:(id *)a3 medicationIdentifier:(id)a4 error:(id *)a5;
- (BOOL)rescheduleMedicationsWithError:(id *)a3;
- (BOOL)updateTimeZoneExperienceAsDismissedWithError:(id *)a3;
- (HDMedicationScheduleManager)initWithProfile:(id)a3 userDefaults:(id)a4 medicationNotificationManager:(id)a5;
- (double)_rescheduleOperationDelayWithDefaultDelay:(uint64_t)a1;
- (id)_deviceLocalKeyValueDomain;
- (id)_pendingSchedulesBySyncIdentity;
- (id)medicationSchedulesWithPredicate:(id)a3 error:(id *)a4;
- (id)medicationSchedulesWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5;
- (id)orderingTermsForSortDescriptors:(id)a3 error:(id *)a4;
- (uint64_t)_hasPersistedRescheduleRequiredOnNextUnlockFlag;
- (uint64_t)_insertMedicationSchedules:(uint64_t)a3 syncProvenance:(uint64_t)a4 syncIdentity:(void *)a5 transaction:(uint64_t)a6 error:;
- (uint64_t)_isRescheduleRequiredOnNextUnlock;
- (uint64_t)_notifyObserversForDidRescheduleMedications;
- (uint64_t)_queue_runRescheduleOperationWithDelay:(uint64_t)result;
- (uint64_t)_runRescheduleOperationIfListContainsActiveMedsListUDC:(uint64_t)a1;
- (void)_callTestHookdidRunRescheduleOperationWithSuccess:(void *)a3 error:;
- (void)_handleBeforeCommitOfTransaction:(id *)a1;
- (void)_handleScheduleTransactionCommit;
- (void)_handleScheduleTransactionRollback;
- (void)_invalidate;
- (void)_notifyObserversDidPruneScheduleItems:(uint64_t)a1;
- (void)_notifySynchronousObserversInTransaction:(void *)a3 didReschedule:;
- (void)_notifySynchronousObserversInTransaction:(void *)a3 willReschedule:;
- (void)_queue_handleNotificationSettingsDidChangeNotification;
- (void)_queue_rescheduleMedications;
- (void)_runRescheduleDelayedOperation;
- (void)_setRescheduleRequiredOnNextUnlock:(uint64_t)a1;
- (void)_startObservingMedicationsNotificationSettingsDidChangeNotification;
- (void)batchNotifyObserversOnCommitOfTransaction:(id)a3 didAddOrModifySchedule:(id)a4 syncIdentity:(int64_t)a5;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)a3;
- (void)queue_invalidateDBAccessAssertion;
- (void)queue_takeDBAccessAssertionIfRequired;
- (void)rescheduleMedicationsSynchronously:(BOOL)a3;
@end

@implementation HDMedicationScheduleManager

- (uint64_t)_isRescheduleRequiredOnNextUnlock
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock((result + 80));
    v2 = *(v1 + 72);
    os_unfair_lock_unlock((v1 + 80));
    if (v2 == 1)
    {
      return 1;
    }

    else if (v2 == 2)
    {
      return 0;
    }

    else
    {

      return [(HDMedicationScheduleManager *)v1 _hasPersistedRescheduleRequiredOnNextUnlockFlag];
    }
  }

  return result;
}

- (HDMedicationScheduleManager)initWithProfile:(id)a3 userDefaults:(id)a4 medicationNotificationManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v42.receiver = self;
  v42.super_class = HDMedicationScheduleManager;
  v11 = [(HDMedicationScheduleManager *)&v42 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, v8);
    v13 = HKCreateSerialDispatchQueue();
    queue = v12->_queue;
    v12->_queue = v13;

    v15 = objc_alloc(MEMORY[0x277CCD738]);
    v16 = NSStringFromProtocol(&unk_2863CCDA0);
    v17 = HKLogMedication();
    v18 = [v15 initWithName:v16 loggingCategory:v17];
    observers = v12->_observers;
    v12->_observers = v18;

    v12->_observersLock._os_unfair_lock_opaque = 0;
    v20 = objc_alloc(MEMORY[0x277CCDA88]);
    v21 = NSStringFromProtocol(&unk_2863CD5D0);
    v22 = HKLogMedication();
    v23 = [v20 initWithName:v21 loggingCategory:v22];
    synchronousObservers = v12->_synchronousObservers;
    v12->_synchronousObservers = v23;

    objc_storeStrong(&v12->_notificationManager, a5);
    v25 = [[HDMedicationTimeZoneManager alloc] initWithProfile:v8];
    timeZoneManager = v12->_timeZoneManager;
    v12->_timeZoneManager = v25;

    objc_initWeak(&location, v12);
    v27 = objc_alloc(MEMORY[0x277CCDD98]);
    v28 = v12->_queue;
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __90__HDMedicationScheduleManager_initWithProfile_userDefaults_medicationNotificationManager___block_invoke;
    v39 = &unk_2796CD6F8;
    objc_copyWeak(&v40, &location);
    v29 = [v27 initWithQueue:v28 delay:&v36 block:5.0];
    rescheduleOperation = v12->_rescheduleOperation;
    v12->_rescheduleOperation = v29;

    v12->_isOperationRequiredOnNextUnlock = 0;
    v12->_operationLock._os_unfair_lock_opaque = 0;
    WeakRetained = objc_loadWeakRetained(&v12->_profile);
    [WeakRetained registerProfileReadyObserver:v12 queue:{v12->_queue, v36, v37, v38, v39}];

    v32 = objc_loadWeakRetained(&v12->_profile);
    v33 = [v32 daemon];
    v34 = [v33 behavior];
    LODWORD(v21) = [v34 isAppleWatch];

    if (v21)
    {
      [(HDMedicationScheduleManager *)v12 _startObservingMedicationsNotificationSettingsDidChangeNotification];
    }

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __90__HDMedicationScheduleManager_initWithProfile_userDefaults_medicationNotificationManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDMedicationScheduleManager *)WeakRetained _queue_rescheduleMedications];
}

- (void)_startObservingMedicationsNotificationSettingsDidChangeNotification
{
  if (val)
  {
    val[24] = -1;
    v2 = val + 24;
    objc_initWeak(&location, val);
    v3 = [@"HKMedicationsNotificationSettingsDidChangeNotification" UTF8String];
    v4 = *(val + 2);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __98__HDMedicationScheduleManager__startObservingMedicationsNotificationSettingsDidChangeNotification__block_invoke;
    v5[3] = &unk_2796CD8A8;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch(v3, v2, v4, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)dealloc
{
  [(HDMedicationScheduleManager *)self _invalidate];
  v3.receiver = self;
  v3.super_class = HDMedicationScheduleManager;
  [(HDMedicationScheduleManager *)&v3 dealloc];
}

- (void)profileDidBecomeReady:(id)a3
{
  v8 = a3;
  v4 = [v8 database];
  [v4 addProtectedDataObserver:self queue:self->_queue];

  v5 = [v8 database];
  if ([v5 isProtectedDataAvailable])
  {
    isRescheduleRequiredOnNext = [(HDMedicationScheduleManager *)self _isRescheduleRequiredOnNextUnlock];

    if (isRescheduleRequiredOnNext)
    {
      [(HDMedicationScheduleManager *)self _runRescheduleDelayedOperation];
    }
  }

  else
  {
  }

  v6 = [v8 userDomainConceptManager];
  [v6 addUserDomainConceptObserver:self queue:0];
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  if (a4 && [(HDMedicationScheduleManager *)self _isRescheduleRequiredOnNextUnlock])
  {

    [(HDMedicationScheduleManager *)self _runRescheduleDelayedOperation];
  }
}

BOOL __86__HDMedicationScheduleManager__runRescheduleOperationIfListContainsActiveMedsListUDC___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 listType] == 2;

  return v3;
}

- (BOOL)medicationSchedule:(id *)a3 medicationIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  _HKInitializeLogging();
  v9 = HKLogMedication();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v11 = HKLogMedication();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleManager medicationSchedule:medicationIdentifier:error:];
    }
  }

  v12 = HDMedicationSchedulePredicateForMedicationIdentifier(v8);
  v13 = [(HDMedicationScheduleManager *)self _fetchMedicationSchedule:a3 predicate:v12 error:a5];

  return v13;
}

- (BOOL)_fetchMedicationSchedule:(void *)a3 predicate:(uint64_t *)a4 error:
{
  v7 = a3;
  if (a1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__4;
    v16 = __Block_byref_object_dispose__4;
    v17 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__HDMedicationScheduleManager__fetchMedicationSchedule_predicate_error___block_invoke;
    v11[3] = &unk_2796CD7C0;
    v11[4] = &v12;
    v8 = [(HDMedicationScheduleManager *)a1 _enumerateNotDeletedSchedulesInDescendingCreationOrderWithPredicate:v7 error:a4 enumerationHandler:v11];
    if (v8)
    {
      if (a2)
      {
        *a2 = v13[5];
      }
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogMedication();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationScheduleManager _fetchMedicationSchedule:a1 predicate:a4 error:v9];
      }
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)medicationSchedule:(id *)a3 identifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  _HKInitializeLogging();
  v9 = HKLogMedication();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v11 = HKLogMedication();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleManager medicationSchedule:identifier:error:];
    }
  }

  v12 = HDMedicationSchedulePredicateForScheduleUUID(v8, 1);
  v13 = [(HDMedicationScheduleManager *)self _fetchMedicationSchedule:a3 predicate:v12 error:a5];

  return v13;
}

- (id)medicationSchedulesWithPredicate:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HDMedicationScheduleManager_medicationSchedulesWithPredicate_error___block_invoke;
  v12[3] = &unk_2796CD720;
  v9 = v8;
  v13 = v9;
  LODWORD(a4) = [(HDMedicationScheduleManager *)self _enumerateNotDeletedSchedulesInDescendingCreationOrderWithPredicate:v7 error:a4 enumerationHandler:v12];

  if (a4)
  {
    v10 = [v9 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)medicationSchedulesWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  _HKInitializeLogging();
  v10 = HKLogMedication();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

  if (v11)
  {
    v12 = HKLogMedication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleManager medicationSchedulesWithPredicate:transaction:error:];
    }
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__HDMedicationScheduleManager_medicationSchedulesWithPredicate_transaction_error___block_invoke;
  v18[3] = &unk_2796CD720;
  v14 = v13;
  v19 = v14;
  v15 = [(HDMedicationScheduleManager *)self _enumerateSchedulesInDescendingCreationOrderWithPredicate:v8 includeDeleted:0 transaction:v9 error:a5 enumerationHandler:v18];

  if (v15)
  {
    v16 = [v14 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)enumerateMedicationSchedulesWithPredicate:(id)a3 limit:(int64_t)a4 orderingTerms:(id)a5 error:(id *)a6 enumerationHandler:(id)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  _HKInitializeLogging();
  v15 = HKLogMedication();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

  if (v16)
  {
    v17 = HKLogMedication();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v26 = objc_opt_self();
      v27 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      *buf = 138544130;
      v34 = self;
      v35 = 2114;
      v36 = v26;
      v37 = 2114;
      v38 = v27;
      v39 = 2114;
      v40 = v13;
      _os_log_debug_impl(&dword_25181C000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@] Enumerating medication schedules with predicate: %{public}@, limit: %{public}@, orderingTerms: %{public}@", buf, 0x2Au);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v19 = [WeakRetained database];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __118__HDMedicationScheduleManager_enumerateMedicationSchedulesWithPredicate_limit_orderingTerms_error_enumerationHandler___block_invoke;
  v28[3] = &unk_2796CD748;
  v28[4] = self;
  v29 = v12;
  v31 = v14;
  v32 = a4;
  v30 = v13;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  v23 = [(HDHealthEntity *)HDMedicationScheduleEntity performReadTransactionWithHealthDatabase:v19 error:a6 block:v28];

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (BOOL)insertMedicationSchedule:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogMedication();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleManager insertMedicationSchedule:error:];
    }
  }

  v14[0] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [(HDMedicationScheduleManager *)self insertMedicationSchedules:v10 error:a4];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)insertMedicationSchedules:(id)a3 error:(id *)a4
{
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogMedication();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [HDMedicationScheduleManager insertMedicationSchedules:v6 error:?];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = -[HDMedicationScheduleManager insertMedicationSchedules:syncProvenance:syncIdentity:error:](self, "insertMedicationSchedules:syncProvenance:syncIdentity:error:", v6, 0, [WeakRetained currentSyncIdentityPersistentID], a4);

  return v11;
}

- (BOOL)insertMedicationSchedules:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5 error:(id *)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  _HKInitializeLogging();
  v11 = HKLogMedication();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138544130;
    v18 = self;
    v19 = 2048;
    v20 = [v10 count];
    v21 = 2048;
    v22 = a4;
    v23 = 2048;
    v24 = a5;
    _os_log_impl(&dword_25181C000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserting %lld schedules provenance: %lld, syncIdentity: %lld", &v17, 0x2Au);
  }

  v12 = [[HDMedicationScheduleInsertOperation alloc] initWithMedicationSchedules:v10 syncProvenance:a4 syncIdentity:a5];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v14 = [(HDJournalableOperation *)v12 performOrJournalWithProfile:WeakRetained error:a6];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)logUnloggedDoseEventsForScheduledItemIdentifier:(id)a3 status:(int64_t)a4 logDate:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [[HDMedicationScheduleLogUnloggedMedicationsOperation alloc] initWithScheduledItemIdentifier:v11 status:a4 logDate:v10];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(a6) = [(HDJournalableOperation *)v12 performOrJournalWithProfile:WeakRetained error:a6];

  return a6;
}

- (BOOL)rescheduleMedicationsWithError:(id *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogMedication();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = HKLogMedication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(HDMedicationScheduleManager *)self rescheduleMedicationsWithError:v7];
    }
  }

  notificationManager = self->_notificationManager;
  v18 = 0;
  v9 = [(HDMedicationNotificationManager *)notificationManager rescheduleMedicationsWithError:&v18];
  v10 = v18;
  v11 = v10;
  if (v9)
  {
    [(HDMedicationScheduleManager *)self _setRescheduleRequiredOnNextUnlock:?];
    [(HDMedicationScheduleManager *)self _notifyObserversForDidRescheduleMedications];
  }

  else if ([v10 hk_isDatabaseAccessibilityError])
  {
    [(HDMedicationScheduleManager *)self _setRescheduleRequiredOnNextUnlock:?];
  }

  _HKInitializeLogging();
  v12 = HKLogMedication();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HKStringFromBool();
    *buf = 138543874;
    v20 = self;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v11;
    _os_log_impl(&dword_25181C000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reschedule medications completed with success: %{public}@, error: %{public}@", buf, 0x20u);
  }

  v14 = v11;
  if (v14)
  {
    if (a3)
    {
      v15 = v14;
      *a3 = v14;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)rescheduleMedicationsSynchronously:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogMedication();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v3)
  {
    if (v6)
    {
      v7 = HKLogMedication();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v14 = self;
        _os_log_impl(&dword_25181C000, v7, OS_LOG_TYPE_INFO, "[%{public}@] Rescheduling medications synchronously", buf, 0xCu);
      }
    }

    v12 = 0;
    v8 = [(HDMedicationScheduleManager *)self rescheduleMedicationsWithError:&v12];
    v9 = v12;
    if (!v8)
    {
      _HKInitializeLogging();
      v10 = HKLogMedication();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(HDMedicationScheduleManager *)self rescheduleMedicationsSynchronously:v9, v10];
      }
    }
  }

  else
  {
    if (v6)
    {
      [HDMedicationScheduleManager rescheduleMedicationsSynchronously:?];
    }

    [(HDMedicationScheduleManager *)self _runRescheduleDelayedOperation];
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)_crossReferenceScheduledItemsAndDoseEventsAndLogUnloggedWithScheduledItemIdentifier:(uint64_t)a3 status:(void *)a4 logDate:(void *)a5 profile:(void *)a6 transaction:(uint64_t)a7 error:
{
  v12 = a2;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_opt_self();
  v17 = [(HDMedicationScheduleManager *)v16 _fetchDoseEventsWithScheduledItemIdentifier:v12 profile:v14 error:a7];
  if (v17)
  {
    v18 = [(HDMedicationScheduleManager *)v16 _fetchScheduledItemsWithScheduledItemIdentifier:v12 transaction:v15 error:a7];
    if (v18)
    {
      v24 = [(HDMedicationScheduleManager *)v16 _filteredDoseEventsThatNeedUpdatingFrom:v17 scheduledItemIdentifier:v12 status:a3 logDate:v13];
      v19 = [(HDMedicationScheduleManager *)v16 _filterScheduledItemsThatNeedCorrespondinDoseEventsDroppingOnesWithAlreadyLoggedDoses:v18 existingDoseEvents:v17 scheduledItemIdentifier:v12 status:a3 logDate:v13];
      [v24 arrayByAddingObjectsFromArray:v19];
      v21 = v20 = v13;
      v22 = [(HDMedicationScheduleManager *)v16 _insertDoseEvents:v21 profile:v14 error:a7];

      v13 = v20;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)_fetchDoseEventsWithScheduledItemIdentifier:(void *)a3 profile:(uint64_t)a4 error:
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  v8 = HDMedicationDoseEventEntityPredicateForScheduleItemIdentifier();

  v9 = [MEMORY[0x277CCD720] medicationDoseEventType];
  v10 = [MEMORY[0x277D10848] samplesWithType:v9 profile:v6 encodingOptions:0 predicate:v8 limit:0 anchor:0 error:a4];

  return v10;
}

+ (id)_fetchScheduledItemsWithScheduledItemIdentifier:(void *)a3 transaction:(uint64_t)a4 error:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v8 = HDMedicationScheduleItemPredicateForIdentifier(v6, 1);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __97__HDMedicationScheduleManager__fetchScheduledItemsWithScheduledItemIdentifier_transaction_error___block_invoke;
  v11[3] = &unk_2796CD810;
  v11[4] = &v12;
  if ([HDMedicationScheduleItemEntity enumerateItemsWithPredicate:v8 orderingTerms:0 transaction:v7 error:a4 enumerationHandler:v11])
  {
    v9 = v13[5];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

+ (id)_filteredDoseEventsThatNeedUpdatingFrom:(void *)a3 scheduledItemIdentifier:(uint64_t)a4 status:(void *)a5 logDate:
{
  v8 = a3;
  v9 = a5;
  v10 = a2;
  objc_opt_self();
  v11 = [v10 hk_filter:&__block_literal_global_432];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __110__HDMedicationScheduleManager__filteredDoseEventsThatNeedUpdatingFrom_scheduledItemIdentifier_status_logDate___block_invoke_2;
  v16[3] = &unk_2796CD858;
  v17 = v8;
  v18 = v9;
  v19 = a4;
  v12 = v9;
  v13 = v8;
  v14 = [v11 hk_map:v16];

  return v14;
}

+ (id)_filterScheduledItemsThatNeedCorrespondinDoseEventsDroppingOnesWithAlreadyLoggedDoses:(void *)a3 existingDoseEvents:(void *)a4 scheduledItemIdentifier:(uint64_t)a5 status:(void *)a6 logDate:
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v36 = a4;
  v34 = a6;
  objc_opt_self();
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v9;
  v30 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v30)
  {
    v29 = *v45;
    v11 = &unk_2796CD880;
    v32 = v10;
    do
    {
      v12 = 0;
      do
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v12;
        v13 = *(*(&v44 + 1) + 8 * v12);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v38 = [v13 doses];
        v14 = [v38 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v41;
          do
          {
            v17 = 0;
            v37 = v15;
            do
            {
              if (*v41 != v16)
              {
                objc_enumerationMutation(v38);
              }

              v18 = *(*(&v40 + 1) + 8 * v17);
              v39[0] = MEMORY[0x277D85DD0];
              v39[1] = 3221225472;
              v39[2] = __175__HDMedicationScheduleManager__filterScheduledItemsThatNeedCorrespondinDoseEventsDroppingOnesWithAlreadyLoggedDoses_existingDoseEvents_scheduledItemIdentifier_status_logDate___block_invoke;
              v39[3] = v11;
              v39[4] = v13;
              v39[5] = v18;
              if (([v10 hk_containsObjectPassingTest:v39] & 1) == 0)
              {
                v19 = [v18 medicationIdentifier];
                v20 = [v18 dose];
                [v18 dose];
                v22 = v21 = v11;
                [v13 scheduledDateTime];
                v24 = v23 = v13;
                v25 = +[HDMedicationScheduleManager _newDoseEventWithGeneratedMetadataLogOrigin:scheduleItemIdentifier:medicationIdentifier:scheduledDoseQuantity:doseQuantity:scheduledDate:startDate:status:doseUnitString:isLastScheduledDose:](HDMedicationScheduleManager, 2, v36, v19, v20, v22, v24, v34, a5, 0, [v18 isLastScheduledDose]);

                v13 = v23;
                v11 = v21;
                v15 = v37;

                v10 = v32;
                [v35 hk_addNonNilObject:v25];
              }

              ++v17;
            }

            while (v15 != v17);
            v15 = [v38 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v15);
        }

        v12 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v30);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (uint64_t)_insertDoseEvents:(void *)a3 profile:(uint64_t)a4 error:
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v8 = [HDMedicationsAppSourceSupport medicationsAppSourceEntityForProfile:v7 error:a4];
  if (v8)
  {
    v9 = [v7 dataManager];
    v10 = [v9 insertDataObjects:v6 sourceEntity:v8 deviceEntity:0 sourceVersion:0 creationDate:a4 error:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL __110__HDMedicationScheduleManager__filteredDoseEventsThatNeedUpdatingFrom_scheduledItemIdentifier_status_logDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 logStatus] != 4 && objc_msgSend(v2, "logStatus") != 5;

  return v3;
}

id __110__HDMedicationScheduleManager__filteredDoseEventsThatNeedUpdatingFrom_scheduledItemIdentifier_status_logDate___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scheduleItemIdentifier];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [v3 scheduledDate];
  if (!v6)
  {
    v16 = 0;
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v3 scheduledDoseQuantity];

  if (!v8)
  {
LABEL_5:
    v16 = 0;
    goto LABEL_8;
  }

  v9 = a1[4];
  v5 = [v3 medicationIdentifier];
  v10 = [v3 scheduledDoseQuantity];
  v11 = [v3 doseQuantity];
  v12 = [v3 scheduledDate];
  v14 = a1[5];
  v13 = a1[6];
  v15 = [v3 doseUnitString];
  v16 = +[HDMedicationScheduleManager _newDoseEventWithGeneratedMetadataLogOrigin:scheduleItemIdentifier:medicationIdentifier:scheduledDoseQuantity:doseQuantity:scheduledDate:startDate:status:doseUnitString:isLastScheduledDose:](HDMedicationScheduleManager, 2, v9, v5, v10, v11, v12, v14, v13, v15, [v3 isLastScheduledDose]);

LABEL_7:
LABEL_8:

  return v16;
}

+ (uint64_t)_newDoseEventWithGeneratedMetadataLogOrigin:(void *)a3 scheduleItemIdentifier:(void *)a4 medicationIdentifier:(void *)a5 scheduledDoseQuantity:(void *)a6 doseQuantity:(void *)a7 scheduledDate:(void *)a8 startDate:(uint64_t)a9 status:(void *)a10 doseUnitString:(unsigned __int8)a11 isLastScheduledDose:
{
  v29 = a10;
  v28 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  objc_opt_self();
  v22 = [MEMORY[0x277CCD650] syncIdentifierForScheduleItemIdentifier:v21 medicationIdentifier:v20];
  v23 = MEMORY[0x277CCD650];
  v24 = [MEMORY[0x277CCD650] syncVersionForStatus:a9];
  v25 = [v23 _metadataWithSyncIdentifier:v22 syncVersion:v24 isLastScheduledDose:a11];

  v26 = [MEMORY[0x277CCD650] medicationDoseEventWithLogOrigin:a2 scheduleItemIdentifier:v21 medicationIdentifier:v20 scheduledDoseQuantity:v19 doseQuantity:v18 scheduledDate:v17 startDate:v28 logStatus:a9 doseUnitString:v29 metadata:v25];

  return v26;
}

uint64_t __175__HDMedicationScheduleManager__filterScheduledItemsThatNeedCorrespondinDoseEventsDroppingOnesWithAlreadyLoggedDoses_existingDoseEvents_scheduledItemIdentifier_status_logDate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 scheduleItemIdentifier];
  v6 = [*(a1 + 32) identifier];
  if (v5 != v6)
  {
    v7 = [*(a1 + 32) identifier];
    if (!v7)
    {
      v17 = 0;
      goto LABEL_14;
    }

    v2 = v7;
    v8 = [v4 scheduleItemIdentifier];
    v9 = [*(a1 + 32) identifier];
    if (![v8 isEqual:v9])
    {
      v17 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v19 = v9;
    v21 = v8;
  }

  v10 = [v4 medicationIdentifier];
  v11 = [*(a1 + 40) medicationIdentifier];
  v12 = v11;
  if (v10 == v11)
  {

    v17 = 1;
  }

  else
  {
    v13 = [*(a1 + 40) medicationIdentifier];
    if (v13)
    {
      v14 = v13;
      v15 = [v4 medicationIdentifier];
      v16 = [*(a1 + 40) medicationIdentifier];
      v17 = [v15 isEqual:v16];
    }

    else
    {

      v17 = 0;
    }
  }

  v9 = v20;
  v8 = v22;
  if (v5 != v6)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v17;
}

void __98__HDMedicationScheduleManager__startObservingMedicationsNotificationSettingsDidChangeNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDMedicationScheduleManager *)WeakRetained _queue_handleNotificationSettingsDidChangeNotification];
}

- (BOOL)updateTimeZoneExperienceAsDismissedWithError:(id *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = self;
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] User dismissed timeZone experience", buf, 0xCu);
  }

  v6 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [v6 hdmd_timeZoneDomainWithProfile:WeakRetained];

  if ([v8 setNumber:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D11498] error:a3])
  {
    v9 = *MEMORY[0x277D11470];
    v10 = objc_loadWeakRetained(&self->_profile);
    v11 = [v10 notificationManager];
    v23 = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    [v11 removeDeliveredNotificationsWithIdentifiers:v12];

    v13 = objc_loadWeakRetained(&self->_profile);
    v14 = [v13 healthMedicationsProfileExtension];
    v15 = [v14 medicationNotificationSyncManager];
    v16 = [v15 notificationSyncClient];

    v17 = [MEMORY[0x277CBEAA8] date];
    v18 = [v17 dateByAddingTimeInterval:86400.0];

    v19 = [objc_alloc(MEMORY[0x277CCD6C0]) initWithAction:1 categoryIdentifier:v9 expirationDate:v18];
    v20 = [v16 sendNotificationInstruction:v19 criteria:0 error:a3];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)_updateSchedulesToTimeZone:(id)a3 maintainCalendarDatesAndTimes:(BOOL)a4 error:(id *)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  _HKInitializeLogging();
  v9 = HKLogMedication();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v11 = HKLogMedication();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v25 = HKStringFromBool();
      *buf = 138543874;
      v33 = self;
      v34 = 2114;
      v35 = v8;
      v36 = 2114;
      v37 = v25;
      _os_log_debug_impl(&dword_25181C000, v11, OS_LOG_TYPE_DEBUG, "[%{public}@] Updating schedules with time zone: %{public}@, maintainCalendarDatesAndTimes: %{public}@", buf, 0x20u);
    }
  }

  v12 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  v13 = [(HDMedicationScheduleManager *)self medicationSchedulesWithError:a5];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __94__HDMedicationScheduleManager__updateSchedulesToTimeZone_maintainCalendarDatesAndTimes_error___block_invoke;
  v27[3] = &unk_2796CD8D0;
  v14 = v8;
  v28 = v14;
  v29 = self;
  v31 = a4;
  v15 = v12;
  v30 = v15;
  v16 = [v13 hk_map:v27];
  _HKInitializeLogging();
  v17 = HKLogMedication();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v26 = a5;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    v19 = HKSensitiveLogItem();
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
    v21 = HKSensitiveLogItem();
    *buf = 138544386;
    v33 = self;
    v34 = 2114;
    v35 = v18;
    v36 = 2114;
    v37 = v19;
    v38 = 2114;
    v39 = v20;
    v40 = 2114;
    v41 = v21;
    _os_log_impl(&dword_25181C000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Time zone is updated for %{public}@ old schedules: %{public}@, to %{public}@ new schedules: %{public}@", buf, 0x34u);

    a5 = v26;
  }

  v22 = [(HDMedicationScheduleManager *)self insertMedicationSchedules:v16 error:a5];
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

id __94__HDMedicationScheduleManager__updateSchedulesToTimeZone_maintainCalendarDatesAndTimes_error___block_invoke(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 createdUTCOffset];
  v5 = [v4 name];
  v6 = [*(a1 + 32) name];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogMedication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) name];
      *buf = 138543618;
      v52 = v9;
      v53 = 2114;
      v54 = v10;
      _os_log_impl(&dword_25181C000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Abort update to the same time zone: %{public}@.", buf, 0x16u);
    }

LABEL_7:
    v12 = 0;
    goto LABEL_19;
  }

  if ([v3 isUnavailable])
  {
    _HKInitializeLogging();
    v8 = HKLogMedication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138543362;
      v52 = v11;
      _os_log_impl(&dword_25181C000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Abort update to unavailable schedule.", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v13 = [v3 timeIntervals];
  v14 = [*(a1 + 32) secondsFromGMT];
  v15 = [v3 createdUTCOffset];
  v16 = v14 - [v15 secondsFromGMT];

  v17 = [v3 startDateTime];
  v18 = [v3 endDateTime];
  v19 = [v3 cycleStartDate];
  v20 = v19;
  if (*(a1 + 56) == 1)
  {
    v44 = v19;
    v21 = [v3 startDateTime];
    v22 = -v16;
    v23 = [v21 dateByAddingTimeInterval:v22];

    v24 = [v3 endDateTime];
    v25 = [v24 dateByAddingTimeInterval:v22];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v8 = v13;
    v26 = [v8 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v47;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v8);
          }

          v30 = *(a1 + 32);
          v31 = [*(*(&v46 + 1) + 8 * i) startTimeComponent];
          [v31 setTimeZone:v30];
        }

        v27 = [v8 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v27);
    }

    v17 = v23;
    v45 = v25;
    v32 = v44;
  }

  else
  {
    v45 = v18;
    v33 = [v3 timeIntervals];
    v8 = [HDMedicationScheduleManager _makeIntervalsWithStartTimeFromIntervals:v33 byAddingTimeDifferenceDuration:v16 calendar:*(a1 + 48) timeZone:*(a1 + 32)];

    v34 = [v3 cycleStartDate];
    v35 = [HDMedicationScheduleManager _makeDateComponentsFromCycleStartDate:v34 byAddingTimeDifferenceSec:v16 calendar:*(a1 + 48)];

    v32 = v35;
  }

  v36 = objc_alloc(MEMORY[0x277D11570]);
  v37 = [v3 UUID];
  v38 = [v3 medicationIdentifier];
  v39 = *(a1 + 32);
  v40 = [v3 scheduleType];
  v41 = [v3 note];
  v12 = [v36 initWithUUID:v37 medicationIdentifier:v38 createdUTCOffset:v39 startDateTime:v17 endDateTime:v45 timeIntervals:v8 scheduleType:v40 cycleStartDateComponents:v32 note:v41];

LABEL_19:
  v42 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_makeIntervalsWithStartTimeFromIntervals:(uint64_t)a3 byAddingTimeDifferenceDuration:(void *)a4 calendar:(void *)a5 timeZone:
{
  v8 = a4;
  v9 = a5;
  v10 = a2;
  objc_opt_self();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __121__HDMedicationScheduleManager__makeIntervalsWithStartTimeFromIntervals_byAddingTimeDifferenceDuration_calendar_timeZone___block_invoke;
  v15[3] = &unk_2796CD8F8;
  v17 = v9;
  v18 = a3;
  v16 = v8;
  v11 = v9;
  v12 = v8;
  v13 = [v10 hk_map:v15];

  return v13;
}

+ (id)_makeDateComponentsFromCycleStartDate:(uint64_t)a3 byAddingTimeDifferenceSec:(void *)a4 calendar:
{
  v6 = a4;
  v7 = a2;
  objc_opt_self();
  [v7 setCalendar:v6];
  v8 = [v7 date];

  v9 = [v8 dateByAddingTimeInterval:a3];
  v10 = [v6 components:28 fromDate:v9];
  [v10 setCalendar:v6];

  v11 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"GMT"];
  [v10 setTimeZone:v11];

  return v10;
}

id __121__HDMedicationScheduleManager__makeIntervalsWithStartTimeFromIntervals_byAddingTimeDifferenceDuration_calendar_timeZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startTimeComponent];
  v5 = [HDMedicationScheduleManager _durationForDayHourMinuteSecondComponents:v4];
  v6 = [HDMedicationScheduleManager _hrMinSecSinceMidnightWithDuration:*(a1 + 32) calendar:?];
  v7 = v6;
  if (*(a1 + 40))
  {
    [v6 setTimeZone:?];
  }

  v8 = objc_alloc(MEMORY[0x277D11580]);
  v9 = [v3 daysOfWeek];
  v10 = [v3 cycleIndex];
  v11 = [v3 cycleIntervalDays];
  v12 = [v3 dose];

  v13 = [v8 initWithStartTimeComponent:v7 daysOfWeek:v9 cycleIndex:v10 cycleIntervalDays:v11 dose:v12];

  return v13;
}

+ (uint64_t)_durationForDayHourMinuteSecondComponents:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if ([v2 day] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = 86400 * [v2 day];
  }

  if ([v2 hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 += 3600 * [v2 hour];
  }

  if ([v2 minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 += 60 * [v2 minute];
  }

  if ([v2 second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 += [v2 second];
  }

  return v3;
}

+ (id)_hrMinSecSinceMidnightWithDuration:(void *)a3 calendar:
{
  v4 = a3;
  objc_opt_self();
  v5 = a2 % 86400;
  v6 = a2 % 86400 / 3600;
  v7 = a2 % 86400 - 3600 * v6;
  v8 = v7 / 60;
  v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v11 = v10;
  if ((v5 + 3599) >= 0x1C1F)
  {
    [v10 setHour:v6];
  }

  v9 = (v7 - 60 * v8);
  if ((v7 + 59) >= 0x77)
  {
    [v11 setMinute:v8];
  }

  if (v9)
  {
    [v11 setSecond:v9];
  }

  [v11 setCalendar:v4];
  v12 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"GMT"];
  [v11 setTimeZone:v12];

  return v11;
}

- (BOOL)deleteMedicationSchedule:(id)a3 error:(id *)a4
{
  v6 = [a3 deletedSchedule];
  LOBYTE(a4) = [(HDMedicationScheduleManager *)self insertMedicationSchedule:v6 error:a4];

  return a4;
}

- (void)batchNotifyObserversOnCommitOfTransaction:(id)a3 didAddOrModifySchedule:(id)a4 syncIdentity:(int64_t)a5
{
  v8 = a3;
  if ([(HDMedicationScheduleManager *)self _addPendingSchedule:a4 syncIdentity:a5])
  {
    v9 = [v8 protectedDatabase];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __109__HDMedicationScheduleManager_batchNotifyObserversOnCommitOfTransaction_didAddOrModifySchedule_syncIdentity___block_invoke;
    v13[3] = &unk_2796CD970;
    v13[4] = self;
    v10 = v8;
    v14 = v10;
    [v9 beforeCommit:v13];

    v11[4] = self;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __109__HDMedicationScheduleManager_batchNotifyObserversOnCommitOfTransaction_didAddOrModifySchedule_syncIdentity___block_invoke_2;
    v12[3] = &unk_2796CD998;
    v12[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __109__HDMedicationScheduleManager_batchNotifyObserversOnCommitOfTransaction_didAddOrModifySchedule_syncIdentity___block_invoke_3;
    v11[3] = &unk_2796CD9C0;
    [v10 onCommit:v12 orRollback:v11];
  }
}

void __63__HDMedicationScheduleManager__handleScheduleTransactionCommit__block_invoke(void *a1, void *a2)
{
  v3 = a1[7];
  v6 = a2;
  v4 = objc_opt_respondsToSelector();
  v5 = a1[4];
  if (v4)
  {
    [v6 scheduleManager:v5 didAddOrModifySchedulesBySyncIdentity:a1[5]];
  }

  else
  {
    [v6 scheduleManager:v5 didAddOrModifySchedules:a1[6]];
  }
}

- (id)orderingTermsForSortDescriptors:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v9 = *MEMORY[0x277D113F8];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 key];
        v13 = [v12 isEqualToString:v9];

        if (!v13)
        {
          v17 = MEMORY[0x277CCA9B8];
          v18 = [v11 key];
          [v17 hk_assignError:a4 code:3 format:{@"We don't have have any sort descriptor key defined for key: '%@'. Please add them here", v18}];

          v15 = obj;
          v16 = 0;
          goto LABEL_11;
        }

        v14 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"creation_date" entityClass:objc_opt_class() ascending:{objc_msgSend(v11, "ascending")}];
        [v5 addObject:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = obj;

  v16 = v5;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_queue_rescheduleMedications
{
  v38 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_8(a1);
    _HKInitializeLogging();
    v3 = HKLogMedication();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7(&dword_25181C000, v4, v5, "[%{public}@] Reschedule medications for delayed operation", buf);
    }

    [(HDMedicationScheduleManager *)v1 queue_takeDBAccessAssertionIfRequired];
    v6 = objc_alloc_init(MEMORY[0x277D10788]);
    [v6 setCacheScope:1];
    if (*(v1 + 88))
    {
      _HKInitializeLogging();
      v7 = HKLogMedication();
      v8 = OUTLINED_FUNCTION_13(v7);

      if (v8)
      {
        v9 = HKLogMedication();
        if (OUTLINED_FUNCTION_13(v9))
        {
          v10 = *(v1 + 88);
          OUTLINED_FUNCTION_6();
          v34 = 2114;
          v35 = v11;
          OUTLINED_FUNCTION_11(&dword_25181C000, v12, v13, "[%{public}@] Adding accessibility assertion: %{public}@", v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, buf[0]);
        }
      }

      [v6 addAccessibilityAssertion:*(v1 + 88)];
    }

    WeakRetained = objc_loadWeakRetained((v1 + 8));
    v19 = [WeakRetained database];
    v31 = v1;
    v32 = 0;
    OUTLINED_FUNCTION_0_1();
    v28 = 3221225472;
    v29 = __59__HDMedicationScheduleManager__queue_rescheduleMedications__block_invoke;
    v30 = &unk_2796CD798;
    v21 = [v20 performWithTransactionContext:v6 error:&v32 block:&v27];
    v22 = v32;

    [(HDMedicationScheduleManager *)v1 queue_invalidateDBAccessAssertion];
    _HKInitializeLogging();
    v23 = HKLogMedication();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_6();
      v34 = 2114;
      if (v21)
      {
        v24 = v25;
      }

      v35 = v24;
      v36 = 2114;
      v37 = v22;
      _os_log_impl(&dword_25181C000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reschedule medications for delayed operation completed with %{public}@, error: %{public}@", buf, 0x20u);
    }

    [(HDMedicationScheduleManager *)v1 _callTestHookdidRunRescheduleOperationWithSuccess:v21 error:v22];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  if (a1)
  {
    v6 = *(a1 + 88);
    v2 = *(a1 + 88);
    *(a1 + 88) = 0;

    [v6 invalidate];
    v3 = *(a1 + 64);
    *(a1 + 64) = 0;
    v4 = v3;

    [v4 invalidate];
    v5 = *(a1 + 96);
    if (v5 != -1)
    {
      notify_cancel(v5);
      *(a1 + 96) = -1;
    }
  }
}

- (void)_runRescheduleDelayedOperation
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v3 = [WeakRetained daemon];
    v4 = [v3 healthMedicationsDaemonExtension];
    v5 = [v4 medicationsBehavior];
    v6 = [v5 asyncMedicationReschedulesEnabled];

    if (v6)
    {
      [(HDMedicationScheduleManager *)a1 _rescheduleOperationDelayWithDefaultDelay:?];
      v11 = *(a1 + 16);
      OUTLINED_FUNCTION_0_1();
      v14[1] = 3221225472;
      v14[2] = __61__HDMedicationScheduleManager__runRescheduleDelayedOperation__block_invoke;
      v14[3] = &unk_2796CD770;
      v14[4] = a1;
      v14[5] = v12;
      dispatch_async(v13, v14);
    }

    else
    {
      _HKInitializeLogging();
      v7 = HKLogMedication();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_7(&dword_25181C000, v8, v9, "[%{public}@] Async reschedule of meds is disabled by medications behavior", v15);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_runRescheduleOperationIfListContainsActiveMedsListUDC:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v6 = v3;
    v3 = [v3 hk_containsObjectPassingTest:&__block_literal_global_5];
    v4 = v6;
    if (v3)
    {
      [(HDMedicationScheduleManager *)a1 _runRescheduleDelayedOperation];
      v4 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (BOOL)_enumerateNotDeletedSchedulesInDescendingCreationOrderWithPredicate:(uint64_t)a3 error:(void *)a4 enumerationHandler:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v10 = [WeakRetained database];
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_9();
    v14 = __124__HDMedicationScheduleManager__enumerateNotDeletedSchedulesInDescendingCreationOrderWithPredicate_error_enumerationHandler___block_invoke;
    v15 = &unk_2796CD7E8;
    v16 = a1;
    v17 = v7;
    v18 = v8;
    v11 = [(HDHealthEntity *)HDMedicationScheduleEntity performReadTransactionWithHealthDatabase:v10 error:a3 block:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_enumerateSchedulesInDescendingCreationOrderWithPredicate:(char)a3 includeDeleted:(void *)a4 transaction:(uint64_t)a5 error:(void *)a6 enumerationHandler:
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a4;
  v13 = a6;
  if (a1)
  {
    v14 = v11;
    if ((a3 & 1) == 0)
    {
      v15 = MEMORY[0x277D10B70];
      v16 = HDMedicationSchedulePredicateForDeleted(0, 1);
      v17 = [v15 compoundPredicateWithPredicate:v16 otherPredicate:v14];

      v14 = v17;
    }

    v18 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"creation_date" entityClass:objc_opt_class() ascending:0];
    v23[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v20 = [HDMedicationScheduleEntity enumerateSchedulesWithPredicate:v14 limit:0 orderingTerms:v19 transaction:v12 error:a5 enumerationHandler:v13];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)_setRescheduleRequiredOnNextUnlock:(uint64_t)a1
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = *(a1 + 72);
    v5 = a2 ? 1 : 2;
    os_unfair_lock_lock((a1 + 80));
    *(a1 + 72) = v5;
    os_unfair_lock_unlock((a1 + 80));
    if (v5 != v4)
    {
      v7 = [(HDMedicationScheduleManager *)a1 _deviceLocalKeyValueDomain];
      v8 = [MEMORY[0x277CCABB0] numberWithBool:a2];
      v15 = 0;
      v9 = [v7 setNumber:v8 forKey:@"rescheduleRequired" error:&v15];
      v10 = v15;

      if ((v9 & 1) == 0)
      {
        _HKInitializeLogging();
        v11 = HKLogMedication();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = HKStringFromBool();
          OUTLINED_FUNCTION_10();
          v17 = v13;
          v18 = v14;
          v19 = @"rescheduleRequired";
          v20 = v14;
          v21 = v10;
          _os_log_error_impl(&dword_25181C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Unable to set value %{public}@ for key %{public}@: %{public}@", buf, 0x2Au);
        }
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_notifyObserversForDidRescheduleMedications
{
  v18 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = result;
    _HKInitializeLogging();
    v3 = HKLogMedication();
    v4 = OUTLINED_FUNCTION_14(v3);

    if (v4)
    {
      v5 = HKLogMedication();
      if (OUTLINED_FUNCTION_14(v5))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(v2 + 24), "count")}];
        OUTLINED_FUNCTION_6();
        v16 = 2114;
        v17 = v10;
        _os_log_debug_impl(&dword_25181C000, v1, OS_LOG_TYPE_DEBUG, "[%{public}@] Notifying %{public}@ observers of reschedule items.", buf, 0x16u);
      }
    }

    v6 = *(v2 + 24);
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_9();
    v12 = __74__HDMedicationScheduleManager__notifyObserversForDidRescheduleMedications__block_invoke;
    v13 = &unk_2796CD920;
    v14 = v2;
    result = [v7 notifyObservers:v11];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)_rescheduleOperationDelayWithDefaultDelay:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v4 = MEMORY[0x253084B70](*(a1 + 112));
  v5 = v4;
  if (v4)
  {
    a2 = (*(v4 + 16))(v4, a1, a2);
  }

  return a2;
}

- (uint64_t)_queue_runRescheduleOperationWithDelay:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_8(result);
    [(HDMedicationScheduleManager *)v2 queue_takeDBAccessAssertionIfRequired];
    v4 = *(v2 + 64);

    return [v4 executeWithDelay:a2];
  }

  return result;
}

- (void)queue_takeDBAccessAssertionIfRequired
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_8(a1);
    if (!*(v1 + 88))
    {
      v2 = MEMORY[0x277CCACA8];
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = [MEMORY[0x277CCAD78] UUID];
      v6 = [v5 UUIDString];
      v7 = [v2 stringWithFormat:@"%@-%@", v4, v6];

      WeakRetained = objc_loadWeakRetained((v1 + 8));
      v9 = [WeakRetained database];
      v17 = 0;
      v10 = [v9 takeAccessibilityAssertionWithOwnerIdentifier:v7 timeout:&v17 error:300.0];
      v11 = v17;
      v12 = *(v1 + 88);
      *(v1 + 88) = v10;

      if (!*(v1 + 88))
      {
        _HKInitializeLogging();
        v13 = HKLogMedication();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

        if (v14)
        {
          v15 = HKLogMedication();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v19 = v1;
            v20 = 2114;
            v21 = v11;
            _os_log_impl(&dword_25181C000, v15, OS_LOG_TYPE_INFO, "[%{public}@] Unable to take accessibility assertion: %{public}@", buf, 0x16u);
          }
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)queue_invalidateDBAccessAssertion
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_8(a1);
    [*(v1 + 88) invalidate];
    v3 = *(v1 + 88);
    *(v1 + 88) = 0;

    _HKInitializeLogging();
    v4 = HKLogMedication();
    v5 = OUTLINED_FUNCTION_14(v4);

    if (v5)
    {
      v6 = HKLogMedication();
      if (OUTLINED_FUNCTION_14(v6))
      {
        v8 = 138543362;
        v9 = v1;
        _os_log_debug_impl(&dword_25181C000, v2, OS_LOG_TYPE_DEBUG, "[%{public}@] Database accessibility assertion is invalidated", &v8, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_callTestHookdidRunRescheduleOperationWithSuccess:(void *)a3 error:
{
  v7 = a3;
  if (a1)
  {
    v5 = MEMORY[0x253084B70](*(a1 + 120));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5, a1, a2, v7);
    }
  }
}

- (uint64_t)_hasPersistedRescheduleRequiredOnNextUnlockFlag
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [(HDMedicationScheduleManager *)a1 _deviceLocalKeyValueDomain];
    v12 = 0;
    v3 = [v2 numberForKey:@"rescheduleRequired" error:&v12];
    v4 = v12;
    v5 = v4;
    if (!v3 && v4)
    {
      _HKInitializeLogging();
      v6 = HKLogMedication();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_10();
        v14 = @"rescheduleRequired";
        v15 = v11;
        v16 = v5;
        _os_log_error_impl(&dword_25181C000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Unable to get value for key %{public}@: %{public}@", buf, 0x20u);
      }
    }

    v7 = [v3 BOOLValue];
    os_unfair_lock_lock((a1 + 80));
    v8 = 1;
    if (!v7)
    {
      v8 = 2;
    }

    *(a1 + 72) = v8;
    os_unfair_lock_unlock((a1 + 80));
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_deviceLocalKeyValueDomain
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc(MEMORY[0x277D10718]);
    WeakRetained = objc_loadWeakRetained(v1 + 1);
    v1 = [v2 initWithCategory:0 domainName:@"MedicationScheduleManager" profile:WeakRetained];
  }

  return v1;
}

- (uint64_t)_insertMedicationSchedules:(uint64_t)a3 syncProvenance:(uint64_t)a4 syncIdentity:(void *)a5 transaction:(uint64_t)a6 error:
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a5;
  if (a1)
  {
    if ([v10 count])
    {
      if (a4 == -1)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 8));
        v13 = [WeakRetained syncIdentityManager];
        v14 = [v13 legacySyncIdentity];
        v15 = [v14 entity];
        a4 = [v15 persistentID];
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v10;
      v16 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v35;
        v31 = v10;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v35 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v34 + 1) + 8 * i);
            v21 = objc_loadWeakRetained((a1 + 8));
            v22 = [HDMedicationScheduleEntity insertMedicationSchedule:v20 syncProvenance:a3 syncIdentity:a4 profile:v21 transaction:v11 error:a6];

            if (!v22)
            {
              goto LABEL_16;
            }

            v23 = [v20 medicationIdentifier];

            if (v23)
            {
              v24 = [v20 medicationIdentifier];
              v38 = v24;
              v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
              v26 = HDDismissedRemoteScheduleUnavailableRecordsForMedicationSemanticIdentifiers(v25);

              v27 = [v11 database];
              LODWORD(v24) = [(HDHealthEntity *)HDDismissedRemoteScheduleUnavailableRecordEntity deleteEntitiesWithPredicate:v26 healthDatabase:v27 error:a6];

              if (!v24)
              {
LABEL_16:
                v28 = 0;
                v10 = v31;
                goto LABEL_19;
              }
            }
          }

          v17 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
          v28 = 1;
          v10 = v31;
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v28 = 1;
      }

LABEL_19:
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)_queue_handleNotificationSettingsDidChangeNotification
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_8(a1);
    _HKInitializeLogging();
    v2 = HKLogMedication();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v1;
    }

    [(HDMedicationScheduleManager *)v1 _queue_rescheduleMedications];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversDidPruneScheduleItems:(uint64_t)a1
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    _HKInitializeLogging();
    v5 = HKLogMedication();
    v6 = OUTLINED_FUNCTION_13(v5);

    if (v6)
    {
      v7 = HKLogMedication();
      if (OUTLINED_FUNCTION_13(v7))
      {
        [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 24), "count")}];
        HIDWORD(v22) = HIDWORD(a1);
        v24 = v23 = 2114;
        OUTLINED_FUNCTION_11(&dword_25181C000, v10, v11, "[%{public}@] Notifying %{public}@ observers of prune schedule items.", v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, 2u);
      }
    }

    v8 = *(a1 + 24);
    OUTLINED_FUNCTION_0_1();
    v17 = 3221225472;
    v18 = __69__HDMedicationScheduleManager__notifyObserversDidPruneScheduleItems___block_invoke;
    v19 = &unk_2796CD948;
    v20 = a1;
    v21 = v4;
    [v8 notifyObservers:&v16];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_addPendingSchedule:(uint64_t)a3 syncIdentity:
{
  v5 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 40));
    v6 = *(a1 + 48);
    v7 = v6 == 0;
    if (!v6)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = *(a1 + 48);
      *(a1 + 48) = v8;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    v11 = [*(a1 + 48) objectForKeyedSubscript:v10];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [*(a1 + 48) setObject:v11 forKeyedSubscript:v10];
    }

    [v11 addObject:v5];
    os_unfair_lock_unlock((a1 + 40));
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_handleBeforeCommitOfTransaction:(id *)a1
{
  v8 = a2;
  if (a1)
  {
    v3 = [(HDMedicationScheduleManager *)a1 _pendingSchedulesBySyncIdentity];
    WeakRetained = objc_loadWeakRetained(a1 + 1);
    v5 = [WeakRetained currentSyncIdentityPersistentID];

    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
    v7 = [v3 objectForKeyedSubscript:v6];

    if ([v7 count])
    {
      [(HDMedicationScheduleManager *)a1 _notifySynchronousObserversInTransaction:v8 willReschedule:v7];
      [a1 rescheduleMedicationsSynchronously:1];
      [(HDMedicationScheduleManager *)a1 _notifySynchronousObserversInTransaction:v8 didReschedule:v7];
    }

    else
    {
      [a1 rescheduleMedicationsSynchronously:0];
    }
  }
}

- (void)_handleScheduleTransactionCommit
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 40));
    v2 = [*(a1 + 48) copy];
    v3 = *(a1 + 48);
    *(a1 + 48) = 0;

    os_unfair_lock_unlock((a1 + 40));
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v2 allValues];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 addObjectsFromArray:*(*(&v18 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v10 = *(a1 + 24);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__HDMedicationScheduleManager__handleScheduleTransactionCommit__block_invoke;
    v14[3] = &unk_2796CDA10;
    v14[4] = a1;
    v15 = v2;
    v16 = v4;
    v17 = sel_scheduleManager_didAddOrModifySchedulesBySyncIdentity_;
    v11 = v4;
    v12 = v2;
    [v10 notifyObservers:v14];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleScheduleTransactionRollback
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 40));
    v2 = *(a1 + 48);
    *(a1 + 48) = 0;

    os_unfair_lock_unlock((a1 + 40));
  }
}

- (id)_pendingSchedulesBySyncIdentity
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 40));
    v2 = [*(a1 + 48) copy];
    os_unfair_lock_unlock((a1 + 40));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_notifySynchronousObserversInTransaction:(void *)a3 willReschedule:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 32);
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_9();
    v9 = __87__HDMedicationScheduleManager__notifySynchronousObserversInTransaction_willReschedule___block_invoke;
    v10 = &unk_2796CD9E8;
    v11 = a1;
    v12 = v5;
    v13 = v6;
    [v7 notifyObservers:v8];
  }
}

- (void)_notifySynchronousObserversInTransaction:(void *)a3 didReschedule:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 32);
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_9();
    v9 = __86__HDMedicationScheduleManager__notifySynchronousObserversInTransaction_didReschedule___block_invoke;
    v10 = &unk_2796CD9E8;
    v11 = a1;
    v12 = v5;
    v13 = v6;
    [v7 notifyObservers:v8];
  }
}

- (void)medicationSchedule:medicationIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(v1, v2);
  v3 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_fetchMedicationSchedule:(uint64_t)a1 predicate:(uint64_t *)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  if (a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  *v5 = 138543618;
  *&v5[4] = a1;
  *&v5[12] = 2114;
  *&v5[14] = v3;
  OUTLINED_FUNCTION_1(&dword_25181C000, a2, a3, "[%{public}@] Fetch medication schedule failed with error: %{public}@", *v5, *&v5[8], *&v5[16], *MEMORY[0x277D85DE8]);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)medicationSchedule:identifier:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(v1, v2);
  v3 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)medicationSchedulesWithPredicate:transaction:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(v1, v2);
  v3 = objc_opt_self();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)insertMedicationSchedule:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(v1, v2);
  v3 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)insertMedicationSchedules:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  v9 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)rescheduleMedicationsWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_25181C000, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Rescheduling medications", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)rescheduleMedicationsSynchronously:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = HKLogMedication();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = a1;
    _os_log_impl(&dword_25181C000, v2, OS_LOG_TYPE_INFO, "[%{public}@] Rescheduling medications with delayed operation", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)rescheduleMedicationsSynchronously:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1(&dword_25181C000, a2, a3, "[%{public}@]: Failed to reschedule medications synchronously: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateNotificationSent:scheduleItemIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(v1, v2);
  v3 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateSchedulesToLocalTimeZoneAndMaintainCalendarDatesAndTimes:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v7 = *MEMORY[0x277D85DE8];
  v0 = HKStringFromBool();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)pruneAllScheduleItemsBeforeDate:createDoseEvents:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(v1, v2);
  v3 = HKDiagnosticStringFromDate();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end