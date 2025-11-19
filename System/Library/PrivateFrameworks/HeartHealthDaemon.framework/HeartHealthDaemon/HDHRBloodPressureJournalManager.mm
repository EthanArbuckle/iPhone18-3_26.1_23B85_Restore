@interface HDHRBloodPressureJournalManager
- (BOOL)closeAllExpiredJournalsBy:(id)a3 error:(id *)a4;
- (BOOL)enumerateJournalsWithPredicate:(id)a3 limit:(int64_t)a4 orderingTerms:(id)a5 error:(id *)a6 enumerationHandler:(id)a7;
- (BOOL)insertBloodPressureJournals:(id)a3 isUserInitiated:(BOOL)a4 error:(id *)a5 onCommit:(id)a6 onRollback:(id)a7;
- (HDHRBloodPressureJournalManager)initWithProfile:(id)a3;
- (id)bloodPressureJournalWithIdentifier:(id)a3 error:(id *)a4;
- (id)bloodPressureJournalsWithError:(id *)a3;
- (id)bloodPressureJournalsWithPredicate:(id)a3 error:(id *)a4;
- (id)latestActiveBloodPressureJournalWithError:(id *)a3;
- (void)_rescheduleNotificationandIsUserInitated:(BOOL)a3;
- (void)notifyObserversOfAddOrModifyJournals:(id)a3;
- (void)updateNotificationSyncManagerWithClosedJournals:(id)a3;
@end

@implementation HDHRBloodPressureJournalManager

- (HDHRBloodPressureJournalManager)initWithProfile:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HDHRBloodPressureJournalManager;
  v5 = [(HDHRBloodPressureJournalManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = objc_alloc(MEMORY[0x277CCD738]);
    v8 = NSStringFromProtocol(&unk_283CE26E0);
    v9 = HKLogBloodPressureJournal();
    v10 = [v7 initWithName:v8 loggingCategory:v9];
    observers = v6->_observers;
    v6->_observers = v10;
  }

  return v6;
}

- (BOOL)enumerateJournalsWithPredicate:(id)a3 limit:(int64_t)a4 orderingTerms:(id)a5 error:(id *)a6 enumerationHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [WeakRetained database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __111__HDHRBloodPressureJournalManager_enumerateJournalsWithPredicate_limit_orderingTerms_error_enumerationHandler___block_invoke;
  v21[3] = &unk_27865FDD0;
  v21[4] = self;
  v22 = v12;
  v24 = v14;
  v25 = a4;
  v23 = v13;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  LOBYTE(a6) = [(HDHealthEntity *)HDHRHeartCLogEntity performReadTransactionWithHealthDatabase:v16 error:a6 block:v21];

  return a6;
}

- (id)bloodPressureJournalWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = HDHRBloodPressureJournalPredicateForIdentifier(v6, 1);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HDHRBloodPressureJournalManager_bloodPressureJournalWithIdentifier_error___block_invoke;
  v11[3] = &unk_27865FDF8;
  v11[4] = &v12;
  if ([(HDHRBloodPressureJournalManager *)self enumerateJournalsWithPredicate:v7 limit:0 orderingTerms:0 error:a4 enumerationHandler:v11])
  {
    v8 = v13[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)bloodPressureJournalsWithError:(id *)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"modified_date" entityClass:objc_opt_class() ascending:1];
  v17[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HDHRBloodPressureJournalManager_bloodPressureJournalsWithError___block_invoke;
  v10[3] = &unk_27865FDF8;
  v10[4] = &v11;
  if ([(HDHRBloodPressureJournalManager *)self enumerateJournalsWithPredicate:0 limit:0 orderingTerms:v6 error:a3 enumerationHandler:v10])
  {
    v7 = [v12[5] copy];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)latestActiveBloodPressureJournalWithError:(id *)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = HDHRBloodPressureJournalPredicateForState(0, 1);
  v6 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"modified_date" entityClass:objc_opt_class() ascending:1];
  v19[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__HDHRBloodPressureJournalManager_latestActiveBloodPressureJournalWithError___block_invoke;
  v12[3] = &unk_27865FDF8;
  v12[4] = &v13;
  if ([(HDHRBloodPressureJournalManager *)self enumerateJournalsWithPredicate:v5 limit:0 orderingTerms:v7 error:a3 enumerationHandler:v12])
  {
    v8 = v14[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)bloodPressureJournalsWithPredicate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = [MEMORY[0x277CBEB18] array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HDHRBloodPressureJournalManager_bloodPressureJournalsWithPredicate_error___block_invoke;
  v9[3] = &unk_27865FDF8;
  v9[4] = &v10;
  if ([(HDHRBloodPressureJournalManager *)self enumerateJournalsWithPredicate:v6 limit:0 orderingTerms:0 error:a4 enumerationHandler:v9])
  {
    v7 = [v11[5] copy];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

- (BOOL)insertBloodPressureJournals:(id)a3 isUserInitiated:(BOOL)a4 error:(id *)a5 onCommit:(id)a6 onRollback:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [WeakRetained database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __105__HDHRBloodPressureJournalManager_insertBloodPressureJournals_isUserInitiated_error_onCommit_onRollback___block_invoke;
  v21[3] = &unk_27865FE70;
  v21[4] = self;
  v22 = v12;
  v25 = a4;
  v23 = v13;
  v24 = v14;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  LOBYTE(a5) = [(HDHealthEntity *)HDHRHeartCLogEntity performWriteTransactionWithHealthDatabase:v16 error:a5 block:v21];

  return a5;
}

uint64_t __105__HDHRBloodPressureJournalManager_insertBloodPressureJournals_isUserInitiated_error_onCommit_onRollback___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __105__HDHRBloodPressureJournalManager_insertBloodPressureJournals_isUserInitiated_error_onCommit_onRollback___block_invoke_2;
  v24[3] = &unk_27865FE20;
  v6 = *(a1 + 40);
  v24[4] = *(a1 + 32);
  v25 = v6;
  v27 = *(a1 + 64);
  v26 = *(a1 + 48);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __105__HDHRBloodPressureJournalManager_insertBloodPressureJournals_isUserInitiated_error_onCommit_onRollback___block_invoke_346;
  v22[3] = &unk_27865FE48;
  v23 = *(a1 + 56);
  v7 = v5;
  [v5 onCommit:v24 orRollback:v22];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 40);
  v8 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
        LODWORD(v12) = [HDHRHeartCLogEntity insertBloodPressureJournal:v12 profile:WeakRetained transaction:v7 error:a3];

        if (!v12)
        {
          v14 = 0;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __105__HDHRBloodPressureJournalManager_insertBloodPressureJournals_isUserInitiated_error_onCommit_onRollback___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) notifyObserversOfAddOrModifyJournals:*(a1 + 40)];
  _HKInitializeLogging();
  v2 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_229486000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Rescheduling notifications. Journal changed: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) _rescheduleNotificationandIsUserInitated:*(a1 + 56)];
  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __105__HDHRBloodPressureJournalManager_insertBloodPressureJournals_isUserInitiated_error_onCommit_onRollback___block_invoke_346(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)closeAllExpiredJournalsBy:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = [a3 dateByAddingTimeInterval:*MEMORY[0x277D12EE8] * -86400.0];
  v7 = HDHRBloodPressureJournalPredicateForStartDate(v6, 4);
  v33 = 0;
  v8 = [(HDHRBloodPressureJournalManager *)self bloodPressureJournalsWithPredicate:v7 error:&v33];
  v9 = v33;
  if (v9)
  {
    if (a4)
    {
      v10 = v9;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      _HKLogDroppedError();
      v11 = 0;
    }
  }

  else if (v8 && [v8 count])
  {
    v25 = self;
    v26 = v6;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v29 + 1) + 8 * i) closedJournal];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v15);
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __67__HDHRBloodPressureJournalManager_closeAllExpiredJournalsBy_error___block_invoke;
    v27[3] = &unk_27865FE98;
    v27[4] = v25;
    v28 = v12;
    v19 = v12;
    v11 = [(HDHRBloodPressureJournalManager *)v25 insertBloodPressureJournals:v19 error:a4 onCommit:v27 onRollback:0];

    v6 = v26;
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogBloodPressureJournal();
    v11 = 1;
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

    if (v21)
    {
      v22 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v36 = self;
        _os_log_impl(&dword_229486000, v22, OS_LOG_TYPE_INFO, "%{public}@: There are no expired journals to close. ", buf, 0xCu);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

void __67__HDHRBloodPressureJournalManager_closeAllExpiredJournalsBy_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateNotificationSyncManagerWithClosedJournals:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = [WeakRetained heartHealthProfileExtension];
  v3 = [v2 bloodPressureJournalSyncRequester];
  [v3 requestStateSyncWithReason:@"Blood Pressure journal is expired and closed"];
}

- (void)updateNotificationSyncManagerWithClosedJournals:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained heartHealthProfileExtension];
  v7 = [v6 bloodPressureJournalNotificationSyncManager];

  [v7 bloodPressureJournalsClosed:v4];
}

- (void)_rescheduleNotificationandIsUserInitated:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained heartHealthProfileExtension];
  v7 = [v6 bloodPressureJournalNotificationManager];

  v15 = 0;
  v8 = [v7 scheduleNotificationsWithReason:v3 error:&v15];
  v9 = v15;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HDHRBloodPressureJournalManager *)self _rescheduleNotificationandIsUserInitated:v9, v10];
    }
  }

  _HKInitializeLogging();
  v11 = HKLogBloodPressureJournal();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

  if (v12)
  {
    v13 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v17 = self;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_INFO, "[%{public}@] Completed schedule notifications with success state: %d", buf, 0x12u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversOfAddOrModifyJournals:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HDHRBloodPressureJournalManager_notifyObserversOfAddOrModifyJournals___block_invoke;
  v7[3] = &unk_27865FEC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(HDHRBloodPressureJournalObserver *)observers notifyObservers:v7];
}

- (void)_rescheduleNotificationandIsUserInitated:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to schedule notifications error: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end