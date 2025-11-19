@interface HDVersionedMedicationScheduleSyncEntity
+ (BOOL)enumerateCodableObjectsForPredicate:(id)a3 limit:(int64_t)a4 orderingTerms:(id)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8 handler:(id)a9;
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (BOOL)receiveCodableSchedules:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (id)_pruningPredicateThroughAnchor:(void *)a3 nowDate:;
+ (id)_syncPredicateForSyncSession:(uint64_t)a1;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)pruneSyncedObjectsThroughAnchor:(id)a3 limit:(unint64_t)a4 nowDate:(id)a5 profile:(id)a6 error:(id *)a7;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
+ (uint64_t)_insertCodableMedicationSchedules:(int)a3 version:(void *)a4 syncStore:(void *)a5 profile:(uint64_t)a6 error:;
@end

@implementation HDVersionedMedicationScheduleSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  var1 = a4.var1;
  var0 = a4.var0;
  v41 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v27 = a6;
  _HKInitializeLogging();
  v15 = HKLogMedication();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

  if (v16)
  {
    v17 = HKLogMedication();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543874;
      *&buf[4] = a1;
      *&buf[12] = 2050;
      *&buf[14] = var0;
      *&buf[22] = 2050;
      v40 = var1;
      _os_log_debug_impl(&dword_25181C000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@] Generating sync objects for session with sync anchor: start=%{public}lld, end=%{public}lld", buf, 0x20u);
    }
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v40 = -1;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v19 = [v13 maxEncodedBytesPerCodableChangeForSyncEntityClass:a1];
  v20 = [v14 database];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __118__HDVersionedMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v28[3] = &unk_2796CD250;
  v21 = v14;
  v29 = v21;
  v34 = a1;
  v22 = v13;
  v35 = var0;
  v36 = var1;
  v30 = v22;
  v32 = buf;
  v23 = v18;
  v31 = v23;
  v33 = v38;
  v37 = v19;
  LOBYTE(v19) = [(HDHealthEntity *)HDMedicationScheduleEntity performReadTransactionWithHealthDatabase:v20 error:a7 block:v28];

  if (v19)
  {
    v24 = [v27 sendCodableChange:v23 version:0x200000000 resultAnchor:*(*&buf[8] + 24) sequence:0 done:1 error:a7];
  }

  else
  {
    v24 = 0;
  }

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(buf, 8);

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

BOOL __118__HDVersionedMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDMedicationScheduleEntity entityEncoderForProfile:*(a1 + 32) transaction:a2 purpose:0 encodingOptions:0 authorizationFilter:0];
  v5 = [v4 orderedProperties];
  v6 = [(HDVersionedMedicationScheduleSyncEntity *)*(a1 + 72) _syncPredicateForSyncSession:?];
  v7 = *(*(a1 + 56) + 8) + 24;
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __118__HDVersionedMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v18[3] = &unk_2796CD228;
  v19 = v4;
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  v20 = v10;
  v21 = v11;
  v22 = *(a1 + 96);
  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  v14 = v4;
  v15 = [(HDHealthEntity *)HDMedicationScheduleEntity enumerateEntitiesForSyncWithProperties:v5 predicate:v6 session:v8 syncAnchorRange:v13 limit:v12 lastSyncAnchor:0 healthDatabase:v7 error:v9 block:a3, v18];

  return v15;
}

+ (id)_syncPredicateForSyncSession:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v2 nanoSyncStore], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isMaster"), v3, (v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = +[HDMedicationScheduleEntity availableSchedulePredicate];
  }

  return v5;
}

BOOL __118__HDVersionedMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v10 = [*(a1 + 32) codableRepresentationForPersistentID:objc_msgSend(a2 row:"persistentID") error:{a4, a8}];
  if (v10)
  {
    [*(a1 + 40) addObject:v10];
    *(*(*(a1 + 48) + 8) + 24) += [v10 encodedByteCount];
    if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56))
    {
      *a7 = 1;
    }
  }

  return v10 != 0;
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [(HDVersionedMedicationScheduleSyncEntity *)a1 _syncPredicateForSyncSession:v11];
  v13 = [v10 database];

  v14 = [(HDHealthEntity *)HDMedicationScheduleEntity nextSyncAnchorWithStartAnchor:a4 predicate:v12 session:v11 healthDatabase:v13 error:a6];
  return v14;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableMedicationSchedule alloc] initWithData:v3];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  _HKInitializeLogging();
  v15 = HKLogMedication();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

  if (v16)
  {
    v17 = HKLogMedication();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
      v22 = 138544130;
      v23 = a1;
      v24 = 2114;
      v25 = v21;
      v26 = 1026;
      var0 = a4.var0;
      v28 = 1026;
      var1 = a4.var1;
      _os_log_debug_impl(&dword_25181C000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@] Received %{public}@ sync objects for version: minimum=%{public}u, current=%{public}u", &v22, 0x22u);
    }
  }

  v18 = [(HDVersionedMedicationScheduleSyncEntity *)a1 _insertCodableMedicationSchedules:v12 version:a4.var0 syncStore:v13 profile:v14 error:a7];

  v19 = *MEMORY[0x277D85DE8];
  return v18 ^ 1u;
}

+ (uint64_t)_insertCodableMedicationSchedules:(int)a3 version:(void *)a4 syncStore:(void *)a5 profile:(uint64_t)a6 error:
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = objc_opt_self();
  if (a3 < 3)
  {
    v18 = [v13 receiveCodableSchedules:v10 syncProvenance:objc_msgSend(v11 profile:"syncProvenance") error:{v12, a6}];
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogMedication();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v10 count];
      v16 = HDSyncVersionRangeToString();
      v17 = HDSyncVersionRangeToString();
      v21 = 138544386;
      v22 = v13;
      v23 = 2048;
      v24 = v15;
      v25 = 2114;
      v26 = v11;
      v27 = 2114;
      v28 = v16;
      v29 = 2114;
      v30 = v17;
      _os_log_impl(&dword_25181C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring %lu sync objects from sync store %{public}@ with version %{public}@ because our current version is %{public}@", &v21, 0x34u);
    }

    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (BOOL)enumerateCodableObjectsForPredicate:(id)a3 limit:(int64_t)a4 orderingTerms:(id)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8 handler:(id)a9
{
  v15 = a9;
  v16 = a7;
  v17 = a5;
  v18 = a3;
  v19 = [HDMedicationScheduleEntity entityEncoderForProfile:a6 transaction:v16 purpose:0 encodingOptions:0 authorizationFilter:0];
  v20 = [v16 protectedDatabase];

  v21 = [(HDSQLiteEntity *)HDMedicationScheduleEntity queryWithDatabase:v20 predicate:v18 limit:a4 orderingTerms:v17 groupBy:0];

  v22 = [v19 orderedProperties];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __133__HDVersionedMedicationScheduleSyncEntity_enumerateCodableObjectsForPredicate_limit_orderingTerms_profile_transaction_error_handler___block_invoke;
  v26[3] = &unk_2796CD278;
  v27 = v19;
  v28 = v15;
  v23 = v15;
  v24 = v19;
  LOBYTE(a8) = [v21 enumeratePersistentIDsAndProperties:v22 error:a8 enumerationHandler:v26];

  return a8;
}

uint64_t __133__HDVersionedMedicationScheduleSyncEntity_enumerateCodableObjectsForPredicate_limit_orderingTerms_profile_transaction_error_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) codableRepresentationForPersistentID:a2 row:? error:?];
  if (v3)
  {
    v4 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)receiveCodableSchedules:(id)a3 syncProvenance:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v9 = MEMORY[0x277D11570];
  v10 = a5;
  v11 = [v9 hd_medicationSchedulesFromCodables:a3 profile:v10 ignoreDuplicates:0];
  v12 = [v10 healthMedicationsProfileExtension];
  v13 = [v12 medicationScheduleManager];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __96__HDVersionedMedicationScheduleSyncEntity_receiveCodableSchedules_syncProvenance_profile_error___block_invoke;
  v24[3] = &unk_2796CD2A0;
  v25 = v11;
  v26 = v13;
  v27 = a4;
  v14 = v13;
  v15 = v11;
  v16 = MEMORY[0x253084B70](v24);
  v17 = [v10 database];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __96__HDVersionedMedicationScheduleSyncEntity_receiveCodableSchedules_syncProvenance_profile_error___block_invoke_2;
  v22[3] = &unk_2796CD2C8;
  v23 = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__HDVersionedMedicationScheduleSyncEntity_receiveCodableSchedules_syncProvenance_profile_error___block_invoke_3;
  v20[3] = &unk_2796CD2F0;
  v21 = v23;
  v18 = v23;
  LOBYTE(a6) = [(HDHealthEntity *)HDMedicationScheduleEntity performWriteTransactionWithHealthDatabase:v17 error:a6 block:v22 inaccessibilityHandler:v20];

  return a6;
}

uint64_t __96__HDVersionedMedicationScheduleSyncEntity_receiveCodableSchedules_syncProvenance_profile_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = *(a1 + 40);
        v11 = [*(a1 + 32) objectForKeyedSubscript:{v9, v17}];
        v12 = *(a1 + 48);
        v13 = [v9 entity];
        LODWORD(v10) = [v10 insertMedicationSchedules:v11 syncProvenance:v12 syncIdentity:objc_msgSend(v13 error:{"persistentID"), a2}];

        if (!v10)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
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

+ (id)pruneSyncedObjectsThroughAnchor:(id)a3 limit:(unint64_t)a4 nowDate:(id)a5 profile:(id)a6 error:(id *)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  _HKInitializeLogging();
  v15 = HKLogMedication();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

  if (v16)
  {
    v17 = HKLogMedication();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      *v37 = 138544130;
      *&v37[4] = a1;
      *&v37[12] = 2114;
      *&v37[14] = v12;
      *&v37[22] = 2114;
      v38 = v28;
      LOWORD(v39) = 2114;
      *(&v39 + 2) = v13;
      _os_log_debug_impl(&dword_25181C000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@] Pruning sync objects through anchor limit: %{public}@, limit: %{public}@, now date: %{public}@", v37, 0x2Au);
    }
  }

  v18 = [(HDVersionedMedicationScheduleSyncEntity *)a1 _pruningPredicateThroughAnchor:v12 nowDate:v13];
  *v37 = 0;
  *&v37[8] = v37;
  *&v37[16] = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  *&v39 = __Block_byref_object_dispose__0;
  *(&v39 + 1) = &unk_2863C26F0;
  v19 = [v14 database];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __103__HDVersionedMedicationScheduleSyncEntity_pruneSyncedObjectsThroughAnchor_limit_nowDate_profile_error___block_invoke;
  v29[3] = &unk_2796CD318;
  v20 = v18;
  v31 = v37;
  v32 = a4;
  v30 = v20;
  v21 = [(HDHealthEntity *)HDMedicationScheduleEntity performWriteTransactionWithHealthDatabase:v19 error:a7 block:v29];

  _HKInitializeLogging();
  v22 = HKLogMedication();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(*&v37[8] + 40);
    *buf = 138543618;
    v34 = a1;
    v35 = 2112;
    v36 = v23;
    _os_log_impl(&dword_25181C000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleted %@ schedules", buf, 0x16u);
  }

  if (v21)
  {
    v24 = *(*&v37[8] + 40);
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  _Block_object_dispose(v37, 8);
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)_pruningPredicateThroughAnchor:(void *)a3 nowDate:
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [v5 dateByAddingTimeInterval:-31536000.0];

  v7 = [MEMORY[0x277D10B18] predicateWithProperty:@"creation_date" lessThanValue:v6];
  v8 = v7;
  if (v4)
  {
    v9 = MEMORY[0x277D10B20];
    v18[0] = v7;
    v10 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10A40] lessThanOrEqualToValue:v4];
    v18[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v12 = [v9 predicateMatchingAnyPredicates:v11];

    v8 = v12;
  }

  v13 = MEMORY[0x277D10B70];
  v14 = [MEMORY[0x277D10B18] predicateWithProperty:@"deleted" equalToValue:MEMORY[0x277CBEC38]];
  v15 = [v13 compoundPredicateWithPredicate:v8 otherPredicate:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __103__HDVersionedMedicationScheduleSyncEntity_pruneSyncedObjectsThroughAnchor_limit_nowDate_profile_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = [a2 protectedDatabase];
  v6 = [(HDSQLiteEntity *)HDMedicationScheduleEntity queryWithDatabase:v5 predicate:a1[4] limit:a1[6] orderingTerms:0 groupBy:0];
  v7 = [v6 deleteAllEntitiesWithError:a3];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "getChangesCount")}];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return v7;
}

@end