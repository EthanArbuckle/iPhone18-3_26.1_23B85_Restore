@interface HDCloudSyncStateUpdaterMedicationScheduleDelegate
+ (BOOL)_fetchLocalState:(void *)state predicate:(void *)predicate profile:(void *)profile transaction:(uint64_t)transaction error:;
+ (BOOL)_makeUnvailableSchedulesIntoNonNilLocalState:(void *)state transaction:(uint64_t)transaction error:;
+ (id)_unavailableSchedulesPredicate;
+ (uint64_t)_canPersistCloudSchedule:(uint64_t)schedule profile:(void *)profile transaction:(void *)transaction error:(void *)error;
+ (uint64_t)_fetchCloudState:(void *)state codableSyncState:(uint64_t)syncState profile:(uint64_t)profile error:;
+ (uint64_t)_newLocalSchedulesGivenCloudState:(void *)state localState:;
+ (uint64_t)_shouldUpdateWithMergedState:(void *)state cloudState:(void *)cloudState localState:(void *)localState profile:(void *)profile transaction:(uint64_t)transaction error:;
+ (uint64_t)_updateCodableSyncState:(uint64_t)state withMergeState:(void *)mergeState profile:(void *)profile error:(void *)error;
+ (void)_finalScheduleFromCloudSchedule:(void *)schedule localSchedule:;
- (BOOL)_persistCloudState:(void *)state profile:(uint64_t)profile error:;
- (BOOL)fetchLocalState:(id *)state profile:(id)profile transaction:(id)transaction error:(id *)error;
- (BOOL)persistCloudState:(id)state profile:(id)profile error:(id *)error;
- (BOOL)updateCodableSyncState:(id)state withMergeState:(id)mergeState profile:(id)profile error:(id *)error;
- (NSString)description;
- (int64_t)shouldUpdateWithMergedState:(id *)state cloudState:(id)cloudState localState:(id)localState profile:(id)profile transaction:(id)transaction error:(id *)error;
- (void)_callUnitTestingWillPersistHandler:(uint64_t)handler;
@end

@implementation HDCloudSyncStateUpdaterMedicationScheduleDelegate

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  domain = [(HDCloudSyncStateUpdaterMedicationScheduleDelegate *)self domain];
  v6 = [(HDCloudSyncStateUpdaterMedicationScheduleDelegate *)self key];
  v7 = [v3 stringWithFormat:@"[%@:%p (%@, %@)]", v4, self, domain, v6];

  return v7;
}

- (BOOL)fetchLocalState:(id *)state profile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  profileCopy = profile;
  objc_opt_self();
  v11 = +[HDMedicationScheduleEntity availableSchedulePredicate];
  v12 = [HDCloudSyncStateUpdaterMedicationScheduleDelegate _fetchLocalState:state predicate:v11 profile:profileCopy transaction:transactionCopy error:error];

  v13 = v12 && [HDCloudSyncStateUpdaterMedicationScheduleDelegate _makeUnvailableSchedulesIntoNonNilLocalState:state transaction:transactionCopy error:error];
  return v13;
}

+ (BOOL)_fetchLocalState:(void *)state predicate:(void *)predicate profile:(void *)profile transaction:(uint64_t)transaction error:
{
  v31 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  predicateCopy = predicate;
  profileCopy = profile;
  v13 = objc_opt_self();
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__11;
  v25 = __Block_byref_object_dispose__11;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __106__HDCloudSyncStateUpdaterMedicationScheduleDelegate__fetchLocalState_predicate_profile_transaction_error___block_invoke;
  v20[3] = &unk_2796CE530;
  v20[4] = &v21;
  v14 = [HDVersionedMedicationScheduleSyncEntity enumerateCodableObjectsForPredicate:stateCopy limit:0 orderingTerms:0 profile:predicateCopy transaction:profileCopy error:transaction handler:v20];
  if (v14)
  {
    _HKInitializeLogging();
    v15 = HKLogMedication();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      schedules = [v22[5] schedules];
      v17 = [schedules count];
      *buf = 138543618;
      v28 = v13;
      v29 = 2048;
      v30 = v17;
      _os_log_impl(&dword_25181C000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetch %ld local medication schedules for state sync", buf, 0x16u);
    }

    if (a2)
    {
      *a2 = v22[5];
    }
  }

  _Block_object_dispose(&v21, 8);

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)_makeUnvailableSchedulesIntoNonNilLocalState:(void *)state transaction:(uint64_t)transaction error:
{
  v21 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v7 = objc_opt_self();
  v8 = *a2;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = *MEMORY[0x277D10A48];
    v11 = +[HDCloudSyncStateUpdaterMedicationScheduleDelegate _unavailableSchedulesPredicate];
    protectedDatabase = [stateCopy protectedDatabase];
    v13 = [(HDSQLiteEntity *)HDMedicationScheduleEntity countValueForProperty:v10 predicate:v11 database:protectedDatabase error:transaction];

    v9 = v13 != 0;
    if (v13 && [v13 integerValue] >= 1)
    {
      _HKInitializeLogging();
      v14 = HKLogMedication();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543618;
        v18 = v7;
        v19 = 2048;
        integerValue = [v13 integerValue];
        _os_log_impl(&dword_25181C000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found %ld unavailable local medication schedules for state sync", &v17, 0x16u);
      }

      *a2 = objc_alloc_init(HDCodableMedicationScheduleCollection);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (uint64_t)_fetchCloudState:(void *)state codableSyncState:(uint64_t)syncState profile:(uint64_t)profile error:
{
  v23 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v8 = objc_opt_self();
  v18 = 0;
  v9 = [stateCopy decodedObjectOfClass:objc_opt_class() version:0 decodedObject:&v18 error:profile];

  v10 = v18;
  v11 = 0;
  if (v9)
  {
    _HKInitializeLogging();
    v12 = HKLogMedication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      schedules = [v10 schedules];
      v14 = [schedules count];
      *buf = 138543618;
      v20 = v8;
      v21 = 2048;
      v22 = v14;
      _os_log_impl(&dword_25181C000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Decode %ld cloud medication schedules for state sync", buf, 0x16u);
    }

    if (a2)
    {
      v15 = v10;
      *a2 = v10;
    }

    v11 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int64_t)shouldUpdateWithMergedState:(id *)state cloudState:(id)cloudState localState:(id)localState profile:(id)profile transaction:(id)transaction error:(id *)error
{
  cloudStateCopy = cloudState;
  localStateCopy = localState;
  profileCopy = profile;
  transactionCopy = transaction;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDCloudSyncStateUpdaterMedicationScheduleDelegate shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDCloudSyncStateUpdaterMedicationScheduleDelegate shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:];
  }

  v17 = [HDCloudSyncStateUpdaterMedicationScheduleDelegate _shouldUpdateWithMergedState:state cloudState:cloudStateCopy localState:localStateCopy profile:profileCopy transaction:transactionCopy error:error];

  return v17;
}

+ (uint64_t)_shouldUpdateWithMergedState:(void *)state cloudState:(void *)cloudState localState:(void *)localState profile:(void *)profile transaction:(uint64_t)transaction error:
{
  v109 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  cloudStateCopy = cloudState;
  localStateCopy = localState;
  profileCopy = profile;
  v15 = objc_opt_self();
  v16 = objc_alloc_init(HDCodableMedicationScheduleCollection);
  v91 = 0;
  v17 = +[HDCloudSyncStateUpdaterMedicationScheduleDelegate _unavailableSchedulesPredicate];
  v77 = profileCopy;
  v78 = localStateCopy;
  LODWORD(profileCopy) = [(HDCloudSyncStateUpdaterMedicationScheduleDelegate *)v15 _fetchLocalState:v17 predicate:localStateCopy profile:profileCopy transaction:transaction error:?];
  v18 = v91;

  v19 = 0;
  if (profileCopy)
  {
    v72 = v18;
    [cloudStateCopy addSchedulesFrom:v18];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = [stateCopy schedules];
    v84 = [obj countByEnumeratingWithState:&v87 objects:v108 count:16];
    v73 = stateCopy;
    v20 = 0;
    if (v84)
    {
      v76 = 0;
      v21 = *v88;
      v79 = v16;
      v80 = cloudStateCopy;
      v83 = v15;
      v81 = *v88;
      while (1)
      {
        v22 = 0;
        do
        {
          if (*v88 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v87 + 1) + 8 * v22);
          schedules = [cloudStateCopy schedules];
          v86[0] = MEMORY[0x277D85DD0];
          v86[1] = 3221225472;
          v86[2] = __130__HDCloudSyncStateUpdaterMedicationScheduleDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke;
          v86[3] = &unk_2796CE558;
          v86[4] = v23;
          v25 = [schedules hk_firstObjectPassingTest:v86];

          v26 = [(HDCloudSyncStateUpdaterMedicationScheduleDelegate *)v15 _finalScheduleFromCloudSchedule:v23 localSchedule:v25];
          v27 = v26;
          if (v26 != v23)
          {
            v85 = v25;
            _HKInitializeLogging();
            v28 = HKLogMedication();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              [v27 creationDate];
              v30 = v29;
              compatibilityVersionRange = [v27 compatibilityVersionRange];
              minimum = [compatibilityVersionRange minimum];
              compatibilityVersionRange2 = [v27 compatibilityVersionRange];
              origin = [compatibilityVersionRange2 origin];
              [v23 creationDate];
              v36 = v35;
              compatibilityVersionRange3 = [v23 compatibilityVersionRange];
              minimum2 = [compatibilityVersionRange3 minimum];
              compatibilityVersionRange4 = [v23 compatibilityVersionRange];
              origin2 = [compatibilityVersionRange4 origin];
              *buf = 138545154;
              v93 = v83;
              v94 = 2048;
              v95 = v30;
              v96 = 2048;
              v97 = minimum;
              v98 = 2048;
              v99 = origin;
              v100 = 2048;
              v101 = v36;
              v102 = 2048;
              v103 = minimum2;
              v15 = v83;
              v104 = 2048;
              v105 = origin2;
              v106 = 2048;
              v20 = 1;
              v107 = 1;
              _os_log_impl(&dword_25181C000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: Update cloud with local schedule (%f, %lld, %lld) replacing cloud schedule (%f, %lld, %lld), compatibility: %ld", buf, 0x52u);

              v21 = v81;
              v16 = v79;

              cloudStateCopy = v80;
            }

            else
            {
              v20 = 1;
            }

LABEL_16:

            v25 = v85;
LABEL_17:
            [(HDCodableMedicationScheduleCollection *)v16 addSchedules:v27];
            goto LABEL_18;
          }

          [v26 creationDate];
          v42 = v41;
          [v25 creationDate];
          if (v42 <= v43 && (([v27 hasFutureCompatibilityVersion] & 1) != 0 || !objc_msgSend(v25, "isLocallyUnavailable") || (objc_msgSend(v25, "isLocallyTerminallyUnavailable") & 1) != 0))
          {
            goto LABEL_17;
          }

          v44 = [HDCloudSyncStateUpdaterMedicationScheduleDelegate _canPersistCloudSchedule:v15 profile:v27 transaction:v78 error:v77];
          if (v44 != 2)
          {
            if (!v44)
            {

              v19 = 0;
              goto LABEL_44;
            }

            v85 = v25;
            _HKInitializeLogging();
            v28 = HKLogMedication();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              [v27 creationDate];
              v46 = v45;
              compatibilityVersionRange5 = [v27 compatibilityVersionRange];
              minimum3 = [compatibilityVersionRange5 minimum];
              compatibilityVersionRange6 = [v27 compatibilityVersionRange];
              origin3 = [compatibilityVersionRange6 origin];
              [v85 creationDate];
              v51 = v50;
              compatibilityVersionRange7 = [v85 compatibilityVersionRange];
              minimum4 = [compatibilityVersionRange7 minimum];
              compatibilityVersionRange8 = [v85 compatibilityVersionRange];
              origin4 = [compatibilityVersionRange8 origin];
              *buf = 138545154;
              v93 = v83;
              v94 = 2048;
              v95 = v46;
              v96 = 2048;
              v97 = minimum3;
              cloudStateCopy = v80;
              v98 = 2048;
              v99 = origin3;
              v100 = 2048;
              v101 = v51;
              v102 = 2048;
              v103 = minimum4;
              v15 = v83;
              v104 = 2048;
              v105 = origin4;
              v106 = 2048;
              v76 = 1;
              v107 = 1;
              _os_log_impl(&dword_25181C000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: Update local with cloud schedule (%f, %lld, %lld) replacing local schedule (%f, %lld, %lld), compatibility: %ld", buf, 0x52u);

              v21 = v81;
              v16 = v79;
            }

            else
            {
              v76 = 1;
            }

            goto LABEL_16;
          }

          v56 = v25;
          _HKInitializeLogging();
          v57 = HKLogMedication();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            [v27 creationDate];
            v59 = v58;
            compatibilityVersionRange9 = [v27 compatibilityVersionRange];
            minimum5 = [compatibilityVersionRange9 minimum];
            compatibilityVersionRange10 = [v27 compatibilityVersionRange];
            origin5 = [compatibilityVersionRange10 origin];
            *buf = 138544386;
            v93 = v15;
            v94 = 2048;
            v95 = v59;
            v96 = 2048;
            v97 = minimum5;
            v98 = 2048;
            v99 = origin5;
            v100 = 2048;
            v101 = 1;
            _os_log_impl(&dword_25181C000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@: Update cloud by dropping cloud schedule (%f, %lld, %lld), compatibility: %ld", buf, 0x34u);

            v21 = v81;
          }

          v20 = 1;
          v25 = v56;
LABEL_18:

          ++v22;
        }

        while (v84 != v22);
        v64 = [obj countByEnumeratingWithState:&v87 objects:v108 count:16];
        v84 = v64;
        if (!v64)
        {
          if (v76)
          {
            v65 = 2;
          }

          else
          {
            v65 = 1;
          }

          stateCopy = v73;
          goto LABEL_35;
        }
      }
    }

    v65 = 1;
LABEL_35:

    obj = [(HDCloudSyncStateUpdaterMedicationScheduleDelegate *)v15 _newLocalSchedulesGivenCloudState:stateCopy localState:cloudStateCopy];
    if ([obj count])
    {
      _HKInitializeLogging();
      v66 = HKLogMedication();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = [obj count];
        *buf = 138543618;
        v93 = v15;
        v94 = 2048;
        v95 = v67;
        _os_log_impl(&dword_25181C000, v66, OS_LOG_TYPE_DEFAULT, "%{public}@ %ld new local schedules, update the cloud state", buf, 0x16u);
      }

      schedules2 = [(HDCodableMedicationScheduleCollection *)v16 schedules];
      [schedules2 addObjectsFromArray:obj];

      v20 = 1;
    }

    if (a2)
    {
      v69 = v16;
      *a2 = v16;
    }

    if (v20)
    {
      v19 = 3;
    }

    else
    {
      v19 = v65;
    }

LABEL_44:

    v18 = v72;
    stateCopy = v73;
  }

  v70 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)updateCodableSyncState:(id)state withMergeState:(id)mergeState profile:(id)profile error:(id *)error
{
  stateCopy = state;
  mergeStateCopy = mergeState;
  profileCopy = profile;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDCloudSyncStateUpdaterMedicationScheduleDelegate updateCodableSyncState:withMergeState:profile:error:];
  }

  [HDCloudSyncStateUpdaterMedicationScheduleDelegate _updateCodableSyncState:stateCopy withMergeState:mergeStateCopy profile:profileCopy error:?];

  return 1;
}

+ (uint64_t)_updateCodableSyncState:(uint64_t)state withMergeState:(void *)mergeState profile:(void *)profile error:(void *)error
{
  v18 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  errorCopy = error;
  mergeStateCopy = mergeState;
  v9 = objc_opt_self();
  _HKInitializeLogging();
  v10 = HKLogMedication();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    schedules = [profileCopy schedules];
    v14 = 138543618;
    v15 = v9;
    v16 = 2048;
    v17 = [schedules count];
    _os_log_impl(&dword_25181C000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %ld medication schedules in cloud state for state sync", &v14, 0x16u);
  }

  [mergeStateCopy setCodableObject:profileCopy version:0 profile:errorCopy];
  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)persistCloudState:(id)state profile:(id)profile error:(id *)error
{
  stateCopy = state;
  profileCopy = profile;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HDCloudSyncStateUpdaterMedicationScheduleDelegate persistCloudState:profile:error:];
  }

  v10 = [(HDCloudSyncStateUpdaterMedicationScheduleDelegate *)self _persistCloudState:stateCopy profile:profileCopy error:error];

  return v10;
}

uint64_t __106__HDCloudSyncStateUpdaterMedicationScheduleDelegate__fetchLocalState_predicate_profile_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v4 = objc_alloc_init(HDCodableMedicationScheduleCollection);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = objc_alloc_init(HDCodableMedicationScheduleData);
  v8 = [v3 uuid];
  [(HDCodableMedicationScheduleData *)v7 setUuid:v8];

  [v3 creationDate];
  [(HDCodableMedicationScheduleData *)v7 setCreationDate:?];
  v9 = [v3 compatibilityVersionRange];
  [(HDCodableMedicationScheduleData *)v7 setCompatibilityVersionRange:v9];

  v10 = [v3 data];
  [(HDCodableMedicationScheduleData *)v7 setScheduleData:v10];

  [*(*(*(a1 + 32) + 8) + 40) addSchedules:v7];
  return 1;
}

+ (id)_unavailableSchedulesPredicate
{
  objc_opt_self();
  v0 = MEMORY[0x277D10B20];
  v1 = +[HDMedicationScheduleEntity availableSchedulePredicate];
  v2 = [v0 negatedPredicate:v1];

  return v2;
}

uint64_t __130__HDCloudSyncStateUpdaterMedicationScheduleDelegate__shouldUpdateWithMergedState_cloudState_localState_profile_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqualToData:v4];

  return v5;
}

+ (void)_finalScheduleFromCloudSchedule:(void *)schedule localSchedule:
{
  v4 = a2;
  scheduleCopy = schedule;
  objc_opt_self();
  v6 = v4;
  if (scheduleCopy)
  {
    v6 = v4;
    if (([scheduleCopy isLocallyUnavailable] & 1) == 0)
    {
      [v4 creationDate];
      v8 = v7;
      [scheduleCopy creationDate];
      if (v8 < v9)
      {
        v6 = scheduleCopy;
      }

      else
      {
        v6 = v4;
      }
    }
  }

  v10 = v6;

  return v6;
}

+ (uint64_t)_canPersistCloudSchedule:(uint64_t)schedule profile:(void *)profile transaction:(void *)transaction error:(void *)error
{
  profileCopy = profile;
  transactionCopy = transaction;
  errorCopy = error;
  objc_opt_self();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v11 = profileCopy;
  v12 = transactionCopy;
  v13 = errorCopy;
  HKWithAutoreleasePool();
  v9 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v9;
}

+ (uint64_t)_newLocalSchedulesGivenCloudState:(void *)state localState:
{
  v4 = a2;
  stateCopy = state;
  objc_opt_self();
  schedules = [stateCopy schedules];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __98__HDCloudSyncStateUpdaterMedicationScheduleDelegate__newLocalSchedulesGivenCloudState_localState___block_invoke;
  v10[3] = &unk_2796CE558;
  v11 = v4;
  v7 = v4;
  v8 = [schedules hk_filter:v10];

  return v8;
}

BOOL __104__HDCloudSyncStateUpdaterMedicationScheduleDelegate__canPersistCloudSchedule_profile_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [HDCodableMedicationSchedule alloc];
  v5 = [*(a1 + 32) scheduleData];
  v6 = [(HDCodableMedicationSchedule *)v4 initWithData:v5];

  v7 = [MEMORY[0x277D11570] hd_medicationScheduleFromCodable:v6];
  *(*(*(a1 + 56) + 8) + 24) = [HDMedicationScheduleEntity canPersistSchedule:v7 profile:*(a1 + 40) transaction:*(a1 + 48) error:a2];
  v8 = *(*(*(a1 + 56) + 8) + 24) != 0;

  return v8;
}

uint64_t __98__HDCloudSyncStateUpdaterMedicationScheduleDelegate__newLocalSchedulesGivenCloudState_localState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLocallyUnavailable])
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) schedules];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __98__HDCloudSyncStateUpdaterMedicationScheduleDelegate__newLocalSchedulesGivenCloudState_localState___block_invoke_2;
    v7[3] = &unk_2796CE558;
    v8 = v3;
    v4 = [v5 hk_containsObjectPassingTest:v7] ^ 1;
  }

  return v4;
}

uint64_t __98__HDCloudSyncStateUpdaterMedicationScheduleDelegate__newLocalSchedulesGivenCloudState_localState___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uuid];
  v5 = [v3 uuid];

  v6 = [v4 isEqualToData:v5];
  return v6;
}

HDCodableMedicationSchedule *__86__HDCloudSyncStateUpdaterMedicationScheduleDelegate__persistCloudState_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HDCodableMedicationSchedule alloc];
  v4 = [v2 scheduleData];

  v5 = [(HDCodableMedicationSchedule *)v3 initWithData:v4];

  return v5;
}

- (BOOL)_persistCloudState:(void *)state profile:(uint64_t)profile error:
{
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    stateCopy = state;
    schedules = [a2 schedules];
    v9 = [schedules hk_map:&__block_literal_global_13];

    _HKInitializeLogging();
    v10 = HKLogMedication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      selfCopy = self;
      v16 = 2048;
      v17 = [v9 count];
      _os_log_impl(&dword_25181C000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Persist %ld medication schedules for state sync", &v14, 0x16u);
    }

    [(HDCloudSyncStateUpdaterMedicationScheduleDelegate *)self _callUnitTestingWillPersistHandler:v9];
    v11 = [HDVersionedMedicationScheduleSyncEntity receiveCodableSchedules:v9 syncProvenance:0 profile:stateCopy error:profile];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_callUnitTestingWillPersistHandler:(uint64_t)handler
{
  v5 = a2;
  if (handler)
  {
    v3 = MEMORY[0x253084B70](*(handler + 8));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 16))(v3, v5);
    }
  }
}

- (void)shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[cloudState isKindOfClass:HDCodableMedicationScheduleCollection.class]" object:? file:? lineNumber:? description:?];
}

- (void)shouldUpdateWithMergedState:cloudState:localState:profile:transaction:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[localState isKindOfClass:HDCodableMedicationScheduleCollection.class]" object:? file:? lineNumber:? description:?];
}

- (void)updateCodableSyncState:withMergeState:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[mergeState isKindOfClass:HDCodableMedicationScheduleCollection.class]" object:? file:? lineNumber:? description:?];
}

- (void)persistCloudState:profile:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[codableCloudState isKindOfClass:HDCodableMedicationScheduleCollection.class]" object:? file:? lineNumber:? description:?];
}

@end