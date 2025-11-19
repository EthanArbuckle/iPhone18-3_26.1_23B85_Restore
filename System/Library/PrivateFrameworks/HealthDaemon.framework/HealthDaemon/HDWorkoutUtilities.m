@interface HDWorkoutUtilities
+ (BOOL)enumerateQuantitiesOfType:(id)a3 from:(id)a4 to:(id)a5 transaction:(id)a6 profile:(id)a7 error:(id *)a8 handler:(id)a9;
+ (void)submitRouteSmoothingWorkoutPerformanceAnalyticsWithCoordinator:(id)a3 event:(id)a4 sessionIdentifier:(id)a5 activityType:(unint64_t)a6 duration:(int64_t)a7 activityCount:(int64_t)a8 extendedMode:(BOOL)a9 totalLocations:(int64_t)a10 routeSmoothingRetryCount:(int64_t)a11 activityID:(id)a12 failure:(BOOL)a13;
+ (void)submitWorkoutPerformanceAnalyticsWithCoordinator:(id)a3 event:(id)a4 sessionIdentifier:(id)a5 activityType:(unint64_t)a6 duration:(int64_t)a7 activityCount:(int64_t)a8 failure:(BOOL)a9;
- (BOOL)shouldAllowDatabaseAccessWhileLockedForProfile:(id)a3 error:(id *)a4;
- (BOOL)shouldAllowWorkoutDatabaseAccessWhileLocked;
- (BOOL)shouldDisplayWorkoutTransparencyAlert;
- (HDWorkoutUtilities)initWithProfile:(id)a3;
- (void)didUpdateKeyValueDomain:(id)a3;
- (void)profileDidInitialize:(id)a3;
@end

@implementation HDWorkoutUtilities

- (HDWorkoutUtilities)initWithProfile:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HDWorkoutUtilities;
  v5 = [(HDWorkoutUtilities *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = [HDKeyValueDomain alloc];
    v8 = [(HDKeyValueDomain *)v7 initWithCategory:0 domainName:*MEMORY[0x277CCE5B0] profile:v4];
    domain = v6->_domain;
    v6->_domain = v8;

    [(HDKeyValueDomain *)v6->_domain startObservation:v6];
  }

  return v6;
}

- (BOOL)shouldAllowWorkoutDatabaseAccessWhileLocked
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_fetchedOnce)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v10 = 0;
    v4 = [(HDWorkoutUtilities *)self shouldAllowDatabaseAccessWhileLockedForProfile:WeakRetained error:&v10];
    v5 = v10;
    self->_lock_shouldAllowWorkoutDatabaseAccessWhileLocked = v4;

    if (v5)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v12 = self;
        v13 = 2114;
        v14 = v5;
        _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch workout database access while locked with error %{public}@", buf, 0x16u);
      }
    }

    self->_fetchedOnce = 1;
  }

  lock_shouldAllowWorkoutDatabaseAccessWhileLocked = self->_lock_shouldAllowWorkoutDatabaseAccessWhileLocked;
  os_unfair_lock_unlock(&self->_lock);
  v8 = *MEMORY[0x277D85DE8];
  return lock_shouldAllowWorkoutDatabaseAccessWhileLocked;
}

- (BOOL)shouldDisplayWorkoutTransparencyAlert
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  domain = self->_domain;
  v23 = 0;
  v4 = [(HDKeyValueDomain *)domain numberForKey:@"WorkoutTransparencyAlertCount" error:&v23];
  v5 = v23;
  v6 = v5;
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch workout transparency alert count %@{public}", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (!v4)
  {
    v17 = self->_domain;
    v22 = v6;
    v18 = [(HDKeyValueDomain *)v17 setNumber:&unk_283CB3DF8 forKey:@"WorkoutTransparencyAlertCount" error:&v22];
    v12 = v22;

    if (v18)
    {
      goto LABEL_16;
    }

    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v25 = v12;
    v14 = "Failed to set workout transparency alert count for the first time %@{public}";
    goto LABEL_20;
  }

  if (![v4 integerValue])
  {
    v8 = self->_domain;
    v9 = 1;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
    v21 = v6;
    v11 = [(HDKeyValueDomain *)v8 setNumber:v10 forKey:@"WorkoutTransparencyAlertCount" error:&v21];
    v12 = v21;

    if (v11)
    {
LABEL_17:
      v6 = v12;
      goto LABEL_18;
    }

    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC330];
    if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v9 = 1;
      goto LABEL_17;
    }

    *buf = 138412290;
    v25 = v12;
    v14 = "Failed to update workout transparency alert count %@{public}";
LABEL_20:
    _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
    goto LABEL_16;
  }

LABEL_13:
  v9 = 0;
LABEL_18:
  os_unfair_lock_unlock(&self->_lock);

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)shouldAllowDatabaseAccessWhileLockedForProfile:(id)a3 error:(id *)a4
{
  domain = self->_domain;
  v6 = *MEMORY[0x277CCE540];
  v17 = 0;
  v7 = [(HDKeyValueDomain *)domain numberForKey:v6 error:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    if (v7)
    {
      v11 = [v7 BOOLValue];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Failed to fetch database access while locked value", v16, 2u);
    }

    if (a4)
    {
      v14 = v9;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      _HKLogDroppedError();
      v11 = 0;
    }
  }

  return v11;
}

- (void)didUpdateKeyValueDomain:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 domainName];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCE5B0]];

  if (v5)
  {
    _HKInitializeLogging();
    v6 = MEMORY[0x277CCC330];
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = self;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Workout KV domain updated", buf, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v13 = 0;
    v9 = [(HDWorkoutUtilities *)self shouldAllowDatabaseAccessWhileLockedForProfile:WeakRetained error:&v13];
    v10 = v13;
    self->_lock_shouldAllowWorkoutDatabaseAccessWhileLocked = v9;

    os_unfair_lock_unlock(&self->_lock);
    if (v10)
    {
      _HKInitializeLogging();
      v11 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = self;
        v16 = 2114;
        v17 = v10;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch workout database access while locked with error %{public}@", buf, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)profileDidInitialize:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained database];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__HDWorkoutUtilities_profileDidInitialize___block_invoke;
  v6[3] = &unk_278616048;
  v6[4] = self;
  [v5 performInFirstUnprotectedWriteTransaction:v6];
}

uint64_t __43__HDWorkoutUtilities_profileDidInitialize___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 20));
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained(v2 + 3);
  v10 = 0;
  v4 = [v2 shouldAllowDatabaseAccessWhileLockedForProfile:WeakRetained error:&v10];
  v5 = v10;
  *(*(a1 + 32) + 17) = v4;

  os_unfair_lock_unlock((*(a1 + 32) + 20));
  if (v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch workout database access while locked with error %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)enumerateQuantitiesOfType:(id)a3 from:(id)a4 to:(id)a5 transaction:(id)a6 profile:(id)a7 error:(id *)a8 handler:(id)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  [v14 timeIntervalSinceReferenceDate];
  v20 = v19;
  [v15 timeIntervalSinceReferenceDate];
  v22 = v21;
  v23 = [(HDDataEntity *)HDQuantitySampleSeriesEntity entityEnumeratorWithProfile:v17];
  [v23 setIgnoreEntityClassAdditionalPredicateForEnumeration:1];
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = -1;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__158;
  v44[4] = __Block_byref_object_dispose__158;
  v45 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __90__HDWorkoutUtilities_enumerateQuantitiesOfType_from_to_transaction_profile_error_handler___block_invoke;
  v33[3] = &unk_2786286B8;
  v24 = v14;
  v34 = v24;
  v42 = v20;
  v25 = v15;
  v43 = v22;
  v35 = v25;
  v40 = v46;
  v41 = v44;
  v26 = v23;
  v36 = v26;
  v27 = v16;
  v37 = v27;
  v28 = v13;
  v38 = v28;
  v29 = v18;
  v39 = v29;
  v30 = [HDQuantitySampleValueEnumerator quantityValuesForType:v28 from:v24 to:v25 transaction:v27 error:a8 handler:v33];

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);

  return v30;
}

uint64_t __90__HDWorkoutUtilities_enumerateQuantitiesOfType_from_to_transaction_profile_error_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  if ((!*(a1 + 32) || *(a1 + 96) <= a6) && (!*(a1 + 40) || *(a1 + 104) >= a5))
  {
    if (*(*(*(a1 + 80) + 8) + 24) != a2)
    {
      v12 = *(*(a1 + 88) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;

      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
      v15 = HDDataEntityPredicateForRowID(v14, 1);
      [*(a1 + 48) setPredicate:v15];

      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __90__HDWorkoutUtilities_enumerateQuantitiesOfType_from_to_transaction_profile_error_handler___block_invoke_2;
      v25[3] = &unk_278613718;
      v25[4] = *(a1 + 88);
      result = [v16 enumerateInTransaction:v17 error:a3 handler:v25];
      if (!result)
      {
        return result;
      }

      if (!*(*(*(a1 + 88) + 8) + 40))
      {
        return 0;
      }

      *(*(*(a1 + 80) + 8) + 24) = a2;
    }

    v19 = [HDWorkoutSeriesQuantity alloc];
    v20 = MEMORY[0x277CCD7E8];
    v21 = [*(a1 + 64) canonicalUnit];
    v22 = [v20 quantityWithUnit:v21 doubleValue:a4];
    v23 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:a5 end:a6];
    v24 = [(HDWorkoutSeriesQuantity *)v19 initWithQuantity:v22 dateInterval:v23 series:*(*(*(a1 + 88) + 8) + 40)];

    (*(*(a1 + 72) + 16))();
  }

  return 1;
}

+ (void)submitWorkoutPerformanceAnalyticsWithCoordinator:(id)a3 event:(id)a4 sessionIdentifier:(id)a5 activityType:(unint64_t)a6 duration:(int64_t)a7 activityCount:(int64_t)a8 failure:(BOOL)a9
{
  v14 = MEMORY[0x277CCABB0];
  v15 = MEMORY[0x277CBEAA8];
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v15 now];
  [v19 timeIntervalSince1970];
  v21 = [v14 numberWithDouble:floor(v20 * 1000.0)];
  v25 = [v21 stringValue];

  v22 = [v16 UUIDString];

  LOBYTE(v24) = a9;
  LOBYTE(v23) = 0;
  [v18 workout_reportEvent:v17 timestamp:v25 sessionID:v22 activityType:a6 sessionDuration:a7 activityCount:a8 extendedMode:v23 totalLocations:-1 routeSmoothingRetryCount:-1 activityID:&stru_283BF39C8 failure:v24];
}

+ (void)submitRouteSmoothingWorkoutPerformanceAnalyticsWithCoordinator:(id)a3 event:(id)a4 sessionIdentifier:(id)a5 activityType:(unint64_t)a6 duration:(int64_t)a7 activityCount:(int64_t)a8 extendedMode:(BOOL)a9 totalLocations:(int64_t)a10 routeSmoothingRetryCount:(int64_t)a11 activityID:(id)a12 failure:(BOOL)a13
{
  v31 = a3;
  v15 = a4;
  v16 = a12;
  v17 = MEMORY[0x277CCABB0];
  v18 = MEMORY[0x277CBEAA8];
  v19 = a5;
  v20 = [v18 now];
  [v20 timeIntervalSince1970];
  v22 = [v17 numberWithDouble:floor(v21 * 1000.0)];
  v23 = [v22 stringValue];

  v24 = [v19 UUIDString];

  if (v16)
  {
    v25 = [v16 UUIDString];
    LOBYTE(v27) = a13;
    LOBYTE(v26) = a9;
    [v31 workout_reportEvent:v15 timestamp:v23 sessionID:v24 activityType:a6 sessionDuration:a7 activityCount:a8 extendedMode:v26 totalLocations:a10 routeSmoothingRetryCount:a11 activityID:v25 failure:v27];
  }

  else
  {
    LOBYTE(v27) = a13;
    LOBYTE(v26) = a9;
    [v31 workout_reportEvent:v15 timestamp:v23 sessionID:v24 activityType:a6 sessionDuration:a7 activityCount:a8 extendedMode:v26 totalLocations:a10 routeSmoothingRetryCount:a11 activityID:&stru_283BF39C8 failure:v27];
  }
}

@end