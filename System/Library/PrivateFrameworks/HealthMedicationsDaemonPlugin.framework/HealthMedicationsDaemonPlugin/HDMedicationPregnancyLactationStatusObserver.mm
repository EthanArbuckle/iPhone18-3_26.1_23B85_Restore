@interface HDMedicationPregnancyLactationStatusObserver
- (BOOL)_deleteAllPregnancyLactationInteractionsOfType:(void *)type transaction:(void *)transaction reason:(uint64_t)reason error:;
- (HDMedicationPregnancyLactationStatusObserver)initWithProfile:(id)profile;
- (uint64_t)_deletePregnancyInteractionsWithReason:(uint64_t)reason error:;
- (uint64_t)_queryAndDeleteLactationInteractionsWithReason:(void *)reason transaction:(void *)transaction error:;
- (uint64_t)doesMostRecentLactationSampleHaveDistantFutureEndDateWithError:(uint64_t)error;
- (void)_deleteLactationInteractionsOnProtectedDataAvailabilityIfNeeded;
- (void)_deletePregancyInteractionsOnProtectedDataAvailabilityIfNeeded;
- (void)_pregnancyModelWasUpdated:(uint64_t)updated;
- (void)_protectedDataDidBecomeAvailable:(uint64_t)available;
- (void)_queryAndDeleteLactationInteractionsWithReason:(uint64_t)reason;
- (void)_samplesOfTypesWereRemoved:(void *)removed anchor:;
- (void)_samplesWereAdded:(void *)added anchor:;
- (void)pregnancyModelDidUpdate:(id)update;
- (void)profileDidBecomeReady:(id)ready;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
@end

@implementation HDMedicationPregnancyLactationStatusObserver

- (void)_deletePregancyInteractionsOnProtectedDataAvailabilityIfNeeded
{
  v19 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = HKSensitiveLogItem();
    v3 = atomic_load((self + 24));
    if ((v3 & 1) == 0)
    {
LABEL_3:

      goto LABEL_4;
    }

    v12 = 0;
    v5 = [(HDMedicationPregnancyLactationStatusObserver *)self _deletePregnancyInteractionsWithReason:&v12 error:?];
    v6 = v12;
    _HKInitializeLogging();
    v7 = HKLogMedication();
    v8 = v7;
    if (v5)
    {
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        atomic_store(v5 ^ 1, (self + 24));
        goto LABEL_3;
      }

      v9 = objc_opt_class();
      *buf = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v2;
      v10 = v9;
      _os_log_impl(&dword_25181C000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleted %@ dismissed interaction objects", buf, 0x16u);
    }

    else
    {
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v11 = objc_opt_class();
      *buf = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v2;
      v17 = 2114;
      v18 = v6;
      v10 = v11;
      _os_log_error_impl(&dword_25181C000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to delete %{public}@ dismissal items, error: %{public}@", buf, 0x20u);
    }

    goto LABEL_10;
  }

LABEL_4:
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_deleteLactationInteractionsOnProtectedDataAvailabilityIfNeeded
{
  if (self)
  {
    v2 = atomic_load((self + 25));
    if (v2)
    {
      v3 = MEMORY[0x277D10848];
      WeakRetained = objc_loadWeakRetained((self + 8));
      database = [WeakRetained database];
      v9[4] = self;
      v10 = 0;
      OUTLINED_FUNCTION_0_1();
      v9[1] = 3221225472;
      v9[2] = __111__HDMedicationPregnancyLactationStatusObserver__deleteLactationInteractionsOnProtectedDataAvailabilityIfNeeded__block_invoke;
      v9[3] = &unk_2796CD388;
      v6 = [v3 performWriteTransactionWithHealthDatabase:database error:&v10 block:v9];
      v7 = v10;

      if (v6)
      {
        hk_isDatabaseAccessibilityError = 0;
      }

      else
      {
        hk_isDatabaseAccessibilityError = [v7 hk_isDatabaseAccessibilityError];
      }

      atomic_store(hk_isDatabaseAccessibilityError, (self + 25));
    }
  }
}

- (HDMedicationPregnancyLactationStatusObserver)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HDMedicationPregnancyLactationStatusObserver;
  v5 = [(HDMedicationPregnancyLactationStatusObserver *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profile, profileCopy);
    atomic_store(0, &v6->_shouldAttemptToDeletePregnancyDismissedInteractions);
    atomic_store(1u, &v6->_shouldQueryLactationSampleToDeleteDismissedInteractionsIfNeeded);
    v6->_accessLock._os_unfair_lock_opaque = 0;
    v8 = v7;
    [profileCopy registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)ready
{
  v20 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  _HKInitializeLogging();
  v5 = HKLogMedication();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = HKLogMedication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v19 = 138543362;
      *&v19[4] = objc_opt_class();
      v8 = *&v19[4];
      _os_log_impl(&dword_25181C000, v7, OS_LOG_TYPE_INFO, "[%{public}@] Profile did become ready, registering for observers", v19, 0xCu);
    }
  }

  v9 = [readyCopy profileExtensionsConformingToProtocol:{&unk_2863E4610, *v19}];
  firstObject = [v9 firstObject];
  provider = self->_provider;
  self->_provider = firstObject;

  getPregnancyModelProvider = [(HKMCPregnancyModelProvidingInterface *)self->_provider getPregnancyModelProvider];
  [getPregnancyModelProvider registerObserver:self isUserInitiated:0];

  dataManager = [readyCopy dataManager];
  v14 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9F0]];
  [dataManager addObserver:self forDataType:v14];

  database = [readyCopy database];
  [database addProtectedDataObserver:self];

  database2 = [readyCopy database];

  isProtectedDataAvailable = [database2 isProtectedDataAvailable];
  if (isProtectedDataAvailable)
  {
    [(HDMedicationPregnancyLactationStatusObserver *)self _deleteLactationInteractionsOnProtectedDataAvailabilityIfNeeded];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  addedCopy = added;
  anchorCopy = anchor;
  if ([addedCopy hk_containsObjectPassingTest:&__block_literal_global_3])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = HKSensitiveLogItem();
    v9 = [v7 stringWithFormat:@"%@ sample(s) added", v8];

    [(HDMedicationPregnancyLactationStatusObserver *)self _queryAndDeleteLactationInteractionsWithReason:v9];
  }

  [(HDMedicationPregnancyLactationStatusObserver *)self _samplesWereAdded:addedCopy anchor:anchorCopy];
}

BOOL __68__HDMedicationPregnancyLactationStatusObserver_samplesAdded_anchor___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sampleType];
  v3 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9F0]];
  v4 = v2 == v3;

  return v4;
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  removedCopy = removed;
  anchorCopy = anchor;
  if ([removedCopy hk_containsObjectPassingTest:&__block_literal_global_380])
  {
    [HDMedicationPregnancyLactationStatusObserver samplesOfTypesWereRemoved:? anchor:?];
  }

  [(HDMedicationPregnancyLactationStatusObserver *)self _samplesOfTypesWereRemoved:removedCopy anchor:anchorCopy];
}

BOOL __81__HDMedicationPregnancyLactationStatusObserver_samplesOfTypesWereRemoved_anchor___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCD0C0];
  v3 = *MEMORY[0x277CCB9F0];
  v4 = a2;
  v5 = [v2 categoryTypeForIdentifier:v3];

  return v5 == v4;
}

- (void)pregnancyModelDidUpdate:(id)update
{
  v29 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = HKSensitiveLogItem();
  if (![updateCopy state])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(updateCopy, "state")];
    v7 = MEMORY[0x277CCACA8];
    v8 = HKSensitiveLogItem();
    v9 = [v7 stringWithFormat:@"responding to update to new %@ state: %@", v5, v8];

    v22 = 0;
    v10 = [(HDMedicationPregnancyLactationStatusObserver *)self _deletePregnancyInteractionsWithReason:v9 error:&v22];
    v11 = v22;
    _HKInitializeLogging();
    v12 = HKLogMedication();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        *buf = 138543618;
        v24 = v14;
        v25 = 2112;
        v26 = v5;
        v15 = v14;
        _os_log_impl(&dword_25181C000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleted %@ dismissed interaction objects", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        *buf = 138543874;
        v24 = v16;
        v25 = 2114;
        v26 = v5;
        v27 = 2114;
        v28 = v11;
        v17 = v16;
        _os_log_error_impl(&dword_25181C000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to delete %{public}@ dismissal items, error: %{public}@", buf, 0x20u);
      }

      if ([v11 hk_isDatabaseAccessibilityError])
      {
        _HKInitializeLogging();
        v18 = HKLogMedication();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_opt_class();
          *buf = 138543362;
          v24 = v19;
          v20 = v19;
          _os_log_impl(&dword_25181C000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will re-attempt delete on protected data availability", buf, 0xCu);
        }

        atomic_store(1u, &self->_shouldAttemptToDeletePregnancyDismissedInteractions);
      }
    }
  }

  [(HDMedicationPregnancyLactationStatusObserver *)self _pregnancyModelWasUpdated:updateCopy];

  v21 = *MEMORY[0x277D85DE8];
}

- (uint64_t)doesMostRecentLactationSampleHaveDistantFutureEndDateWithError:(uint64_t)error
{
  if (!error)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9F0]];
  v5 = MEMORY[0x277D105E8];
  WeakRetained = objc_loadWeakRetained((error + 8));
  v15 = 0;
  v7 = [v5 mostRecentSampleWithType:v4 profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v15];
  v8 = v15;

  v9 = v8;
  if (v9)
  {
    if (a2)
    {
      v10 = v9;
      *a2 = v9;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (v7)
  {
    endDate = [v7 endDate];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    if (endDate == distantFuture)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 2 * (v9 == 0);
  }

  return v13;
}

- (void)_protectedDataDidBecomeAvailable:(uint64_t)available
{
  if (available)
  {
    v4 = MEMORY[0x253084B70](*(available + 40));
    if (v4)
    {
      v5 = v4;
      v4[2](v4, available, a2);
      v4 = v5;
    }
  }
}

- (void)_queryAndDeleteLactationInteractionsWithReason:(uint64_t)reason
{
  v3 = a2;
  if (reason)
  {
    v4 = MEMORY[0x277D10848];
    WeakRetained = objc_loadWeakRetained((reason + 8));
    database = [WeakRetained database];
    v12 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __95__HDMedicationPregnancyLactationStatusObserver__queryAndDeleteLactationInteractionsWithReason___block_invoke;
    v10[3] = &unk_2796CD5C8;
    v10[4] = reason;
    v11 = v3;
    v7 = [v4 performWriteTransactionWithHealthDatabase:database error:&v12 block:v10];
    v8 = v12;

    if (v7)
    {
      hk_isDatabaseAccessibilityError = 0;
    }

    else
    {
      hk_isDatabaseAccessibilityError = [v8 hk_isDatabaseAccessibilityError];
    }

    atomic_store(hk_isDatabaseAccessibilityError, (reason + 25));
  }
}

- (void)_samplesWereAdded:(void *)added anchor:
{
  v9 = a2;
  addedCopy = added;
  if (self)
  {
    v6 = MEMORY[0x253084B70](*(self + 48));
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_1_1();
      v8(v7);
    }
  }
}

- (void)_samplesOfTypesWereRemoved:(void *)removed anchor:
{
  v9 = a2;
  removedCopy = removed;
  if (self)
  {
    v6 = MEMORY[0x253084B70](*(self + 56));
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_1_1();
      v8(v7);
    }
  }
}

- (uint64_t)_deletePregnancyInteractionsWithReason:(uint64_t)reason error:
{
  v5 = a2;
  if (self)
  {
    v6 = MEMORY[0x277D10848];
    WeakRetained = objc_loadWeakRetained((self + 8));
    database = [WeakRetained database];
    OUTLINED_FUNCTION_0_1();
    v11[1] = 3221225472;
    v11[2] = __93__HDMedicationPregnancyLactationStatusObserver__deletePregnancyInteractionsWithReason_error___block_invoke;
    v11[3] = &unk_2796CD5C8;
    v11[4] = self;
    v12 = v5;
    v9 = [v6 performWriteTransactionWithHealthDatabase:database error:reason block:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_pregnancyModelWasUpdated:(uint64_t)updated
{
  v5 = a2;
  if (updated)
  {
    v3 = MEMORY[0x253084B70](*(updated + 64));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 16))(v3, updated, v5);
    }
  }
}

- (BOOL)_deleteAllPregnancyLactationInteractionsOfType:(void *)type transaction:(void *)transaction reason:(uint64_t)reason error:
{
  v31 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  if (self)
  {
    v10 = @"lactation";
    if (a2 == 1)
    {
      v10 = @"pregnancy";
    }

    v11 = v10;
    typeCopy = type;
    _HKInitializeLogging();
    v13 = HKLogMedication();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = HKSensitiveLogItem();
      *buf = 138543874;
      v26 = v14;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = transactionCopy;
      _os_log_impl(&dword_25181C000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will delete %@ dismissed interaction objects, %@", buf, 0x20u);
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v24 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v19 = HDDismissedPregnancyLactationInteractionPredicateForInteractionTypes(v18);

    v20 = [typeCopy databaseForEntityClass:objc_opt_class()];

    v21 = [(HDSQLiteEntity *)HDDismissedPregnancyLactationInteractionEntity deleteEntitiesInDatabase:v20 predicate:v19 error:reason];
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (uint64_t)_queryAndDeleteLactationInteractionsWithReason:(void *)reason transaction:(void *)transaction error:
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  reasonCopy = reason;
  if (!self)
  {
    v10 = 0;
    goto LABEL_18;
  }

  v9 = HKSensitiveLogItem();
  v29 = 0;
  v10 = [(HDMedicationPregnancyLactationStatusObserver *)self doesMostRecentLactationSampleHaveDistantFutureEndDateWithError:?];
  v11 = v29;
  if (!v10)
  {
    _HKInitializeLogging();
    v19 = HKLogMedication();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      objc_opt_class();
      OUTLINED_FUNCTION_2_0();
      v34 = v11;
      v24 = v23;
      _os_log_error_impl(&dword_25181C000, v19, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to fetch any %{public}@ sample, error: %{public}@", buf, 0x20u);
    }

    v12 = v11;
    if (v12)
    {
      if (transaction)
      {
        v20 = v12;
        v10 = 0;
        *transaction = v12;
LABEL_15:
        v14 = v12;
LABEL_16:

        v11 = v14;
        goto LABEL_17;
      }

      _HKLogDroppedError();
    }

    v10 = 0;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, no %@ sample with distant future end date found", v7, v9];
    v28 = v11;
    v13 = [(HDMedicationPregnancyLactationStatusObserver *)self _deleteAllPregnancyLactationInteractionsOfType:reasonCopy transaction:v12 reason:&v28 error:?];
    v14 = v28;

    _HKInitializeLogging();
    v15 = HKLogMedication();
    v16 = v15;
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        *buf = 138543618;
        v31 = v17;
        v32 = 2112;
        v33 = v9;
        v18 = v17;
        _os_log_impl(&dword_25181C000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleted %@ dismissed interaction objects", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        objc_opt_class();
        OUTLINED_FUNCTION_2_0();
        v34 = v14;
        v27 = v26;
        _os_log_error_impl(&dword_25181C000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to delete %{public}@ dismissal interaction objects, error: %{public}@", buf, 0x20u);
      }

      v14 = v14;
      if (v14)
      {
        if (transaction)
        {
          v25 = v14;
          *transaction = v14;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v10 = 0;
    }

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)samplesOfTypesWereRemoved:(uint64_t)a1 anchor:.cold.1(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HKSensitiveLogItem();
  v4 = [v2 stringWithFormat:@"%@ sample(s) removed", v3];

  [(HDMedicationPregnancyLactationStatusObserver *)a1 _queryAndDeleteLactationInteractionsWithReason:v4];
}

@end