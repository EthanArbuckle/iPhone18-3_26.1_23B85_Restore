@interface HDMedicationPregnancyLactationStatusObserver
- (BOOL)_deleteAllPregnancyLactationInteractionsOfType:(void *)a3 transaction:(void *)a4 reason:(uint64_t)a5 error:;
- (HDMedicationPregnancyLactationStatusObserver)initWithProfile:(id)a3;
- (uint64_t)_deletePregnancyInteractionsWithReason:(uint64_t)a3 error:;
- (uint64_t)_queryAndDeleteLactationInteractionsWithReason:(void *)a3 transaction:(void *)a4 error:;
- (uint64_t)doesMostRecentLactationSampleHaveDistantFutureEndDateWithError:(uint64_t)a1;
- (void)_deleteLactationInteractionsOnProtectedDataAvailabilityIfNeeded;
- (void)_deletePregancyInteractionsOnProtectedDataAvailabilityIfNeeded;
- (void)_pregnancyModelWasUpdated:(uint64_t)a1;
- (void)_protectedDataDidBecomeAvailable:(uint64_t)a1;
- (void)_queryAndDeleteLactationInteractionsWithReason:(uint64_t)a1;
- (void)_samplesOfTypesWereRemoved:(void *)a3 anchor:;
- (void)_samplesWereAdded:(void *)a3 anchor:;
- (void)pregnancyModelDidUpdate:(id)a3;
- (void)profileDidBecomeReady:(id)a3;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4;
@end

@implementation HDMedicationPregnancyLactationStatusObserver

- (void)_deletePregancyInteractionsOnProtectedDataAvailabilityIfNeeded
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = HKSensitiveLogItem();
    v3 = atomic_load((a1 + 24));
    if ((v3 & 1) == 0)
    {
LABEL_3:

      goto LABEL_4;
    }

    v12 = 0;
    v5 = [(HDMedicationPregnancyLactationStatusObserver *)a1 _deletePregnancyInteractionsWithReason:&v12 error:?];
    v6 = v12;
    _HKInitializeLogging();
    v7 = HKLogMedication();
    v8 = v7;
    if (v5)
    {
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        atomic_store(v5 ^ 1, (a1 + 24));
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
  if (a1)
  {
    v2 = atomic_load((a1 + 25));
    if (v2)
    {
      v3 = MEMORY[0x277D10848];
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v5 = [WeakRetained database];
      v9[4] = a1;
      v10 = 0;
      OUTLINED_FUNCTION_0_1();
      v9[1] = 3221225472;
      v9[2] = __111__HDMedicationPregnancyLactationStatusObserver__deleteLactationInteractionsOnProtectedDataAvailabilityIfNeeded__block_invoke;
      v9[3] = &unk_2796CD388;
      v6 = [v3 performWriteTransactionWithHealthDatabase:v5 error:&v10 block:v9];
      v7 = v10;

      if (v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = [v7 hk_isDatabaseAccessibilityError];
      }

      atomic_store(v8, (a1 + 25));
    }
  }
}

- (HDMedicationPregnancyLactationStatusObserver)initWithProfile:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDMedicationPregnancyLactationStatusObserver;
  v5 = [(HDMedicationPregnancyLactationStatusObserver *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profile, v4);
    atomic_store(0, &v6->_shouldAttemptToDeletePregnancyDismissedInteractions);
    atomic_store(1u, &v6->_shouldQueryLactationSampleToDeleteDismissedInteractionsIfNeeded);
    v6->_accessLock._os_unfair_lock_opaque = 0;
    v8 = v7;
    [v4 registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  v9 = [v4 profileExtensionsConformingToProtocol:{&unk_2863E4610, *v19}];
  v10 = [v9 firstObject];
  provider = self->_provider;
  self->_provider = v10;

  v12 = [(HKMCPregnancyModelProvidingInterface *)self->_provider getPregnancyModelProvider];
  [v12 registerObserver:self isUserInitiated:0];

  v13 = [v4 dataManager];
  v14 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9F0]];
  [v13 addObserver:self forDataType:v14];

  v15 = [v4 database];
  [v15 addProtectedDataObserver:self];

  v16 = [v4 database];

  v17 = [v16 isProtectedDataAvailable];
  if (v17)
  {
    [(HDMedicationPregnancyLactationStatusObserver *)self _deleteLactationInteractionsOnProtectedDataAvailabilityIfNeeded];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 hk_containsObjectPassingTest:&__block_literal_global_3])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = HKSensitiveLogItem();
    v9 = [v7 stringWithFormat:@"%@ sample(s) added", v8];

    [(HDMedicationPregnancyLactationStatusObserver *)self _queryAndDeleteLactationInteractionsWithReason:v9];
  }

  [(HDMedicationPregnancyLactationStatusObserver *)self _samplesWereAdded:v10 anchor:v6];
}

BOOL __68__HDMedicationPregnancyLactationStatusObserver_samplesAdded_anchor___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sampleType];
  v3 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9F0]];
  v4 = v2 == v3;

  return v4;
}

- (void)samplesOfTypesWereRemoved:(id)a3 anchor:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v7 hk_containsObjectPassingTest:&__block_literal_global_380])
  {
    [HDMedicationPregnancyLactationStatusObserver samplesOfTypesWereRemoved:? anchor:?];
  }

  [(HDMedicationPregnancyLactationStatusObserver *)self _samplesOfTypesWereRemoved:v7 anchor:v6];
}

BOOL __81__HDMedicationPregnancyLactationStatusObserver_samplesOfTypesWereRemoved_anchor___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCD0C0];
  v3 = *MEMORY[0x277CCB9F0];
  v4 = a2;
  v5 = [v2 categoryTypeForIdentifier:v3];

  return v5 == v4;
}

- (void)pregnancyModelDidUpdate:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSensitiveLogItem();
  if (![v4 state])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v4, "state")];
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

  [(HDMedicationPregnancyLactationStatusObserver *)self _pregnancyModelWasUpdated:v4];

  v21 = *MEMORY[0x277D85DE8];
}

- (uint64_t)doesMostRecentLactationSampleHaveDistantFutureEndDateWithError:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9F0]];
  v5 = MEMORY[0x277D105E8];
  WeakRetained = objc_loadWeakRetained((a1 + 8));
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
    v11 = [v7 endDate];
    v12 = [MEMORY[0x277CBEAA8] distantFuture];
    if (v11 == v12)
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

- (void)_protectedDataDidBecomeAvailable:(uint64_t)a1
{
  if (a1)
  {
    v4 = MEMORY[0x253084B70](*(a1 + 40));
    if (v4)
    {
      v5 = v4;
      v4[2](v4, a1, a2);
      v4 = v5;
    }
  }
}

- (void)_queryAndDeleteLactationInteractionsWithReason:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = MEMORY[0x277D10848];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v6 = [WeakRetained database];
    v12 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __95__HDMedicationPregnancyLactationStatusObserver__queryAndDeleteLactationInteractionsWithReason___block_invoke;
    v10[3] = &unk_2796CD5C8;
    v10[4] = a1;
    v11 = v3;
    v7 = [v4 performWriteTransactionWithHealthDatabase:v6 error:&v12 block:v10];
    v8 = v12;

    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = [v8 hk_isDatabaseAccessibilityError];
    }

    atomic_store(v9, (a1 + 25));
  }
}

- (void)_samplesWereAdded:(void *)a3 anchor:
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = MEMORY[0x253084B70](*(a1 + 48));
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_1_1();
      v8(v7);
    }
  }
}

- (void)_samplesOfTypesWereRemoved:(void *)a3 anchor:
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = MEMORY[0x253084B70](*(a1 + 56));
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_1_1();
      v8(v7);
    }
  }
}

- (uint64_t)_deletePregnancyInteractionsWithReason:(uint64_t)a3 error:
{
  v5 = a2;
  if (a1)
  {
    v6 = MEMORY[0x277D10848];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v8 = [WeakRetained database];
    OUTLINED_FUNCTION_0_1();
    v11[1] = 3221225472;
    v11[2] = __93__HDMedicationPregnancyLactationStatusObserver__deletePregnancyInteractionsWithReason_error___block_invoke;
    v11[3] = &unk_2796CD5C8;
    v11[4] = a1;
    v12 = v5;
    v9 = [v6 performWriteTransactionWithHealthDatabase:v8 error:a3 block:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_pregnancyModelWasUpdated:(uint64_t)a1
{
  v5 = a2;
  if (a1)
  {
    v3 = MEMORY[0x253084B70](*(a1 + 64));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 16))(v3, a1, v5);
    }
  }
}

- (BOOL)_deleteAllPregnancyLactationInteractionsOfType:(void *)a3 transaction:(void *)a4 reason:(uint64_t)a5 error:
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (a1)
  {
    v10 = @"lactation";
    if (a2 == 1)
    {
      v10 = @"pregnancy";
    }

    v11 = v10;
    v12 = a3;
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
      v30 = v9;
      _os_log_impl(&dword_25181C000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will delete %@ dismissed interaction objects, %@", buf, 0x20u);
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v24 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v19 = HDDismissedPregnancyLactationInteractionPredicateForInteractionTypes(v18);

    v20 = [v12 databaseForEntityClass:objc_opt_class()];

    v21 = [(HDSQLiteEntity *)HDDismissedPregnancyLactationInteractionEntity deleteEntitiesInDatabase:v20 predicate:v19 error:a5];
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (uint64_t)_queryAndDeleteLactationInteractionsWithReason:(void *)a3 transaction:(void *)a4 error:
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v10 = 0;
    goto LABEL_18;
  }

  v9 = HKSensitiveLogItem();
  v29 = 0;
  v10 = [(HDMedicationPregnancyLactationStatusObserver *)a1 doesMostRecentLactationSampleHaveDistantFutureEndDateWithError:?];
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
      if (a4)
      {
        v20 = v12;
        v10 = 0;
        *a4 = v12;
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
    v13 = [(HDMedicationPregnancyLactationStatusObserver *)a1 _deleteAllPregnancyLactationInteractionsOfType:v8 transaction:v12 reason:&v28 error:?];
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
        if (a4)
        {
          v25 = v14;
          *a4 = v14;
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