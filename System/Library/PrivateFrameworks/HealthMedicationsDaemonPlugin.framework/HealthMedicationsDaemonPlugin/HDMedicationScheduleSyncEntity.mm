@interface HDMedicationScheduleSyncEntity
+ (BOOL)_insertCodableMedicationSchedules:(int)schedules version:(void *)version syncStore:(void *)store profile:(uint64_t)profile error:;
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)_syncPredicate;
+ (id)decodeSyncObjectWithData:(id)data;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
@end

@implementation HDMedicationScheduleSyncEntity

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  var1 = range.var1;
  var0 = range.var0;
  v41 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  _HKInitializeLogging();
  v15 = HKLogMedication();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

  if (v16)
  {
    v17 = HKLogMedication();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543874;
      *&buf[4] = self;
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
  v19 = [sessionCopy maxEncodedBytesPerCodableChangeForSyncEntityClass:self];
  database = [profileCopy database];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __109__HDMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v28[3] = &unk_2796CD250;
  v21 = profileCopy;
  v29 = v21;
  selfCopy = self;
  v22 = sessionCopy;
  v35 = var0;
  v36 = var1;
  v30 = v22;
  v32 = buf;
  v23 = v18;
  v31 = v23;
  v33 = v38;
  v37 = v19;
  LOBYTE(v19) = [(HDHealthEntity *)HDMedicationScheduleEntity performReadTransactionWithHealthDatabase:database error:error block:v28];

  if (v19)
  {
    v24 = [handlerCopy sendCodableChange:v23 version:0x200000000 resultAnchor:*(*&buf[8] + 24) sequence:0 done:1 error:error];
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

BOOL __109__HDMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [HDMedicationScheduleEntity entityEncoderForProfile:*(a1 + 32) transaction:a2 purpose:0 encodingOptions:0 authorizationFilter:0];
  v5 = [v4 orderedProperties];
  v6 = *(a1 + 72);
  v7 = +[HDMedicationScheduleSyncEntity _syncPredicate];
  v8 = *(*(a1 + 56) + 8) + 24;
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __109__HDMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v20[3] = &unk_2796CE5F0;
  v11 = *(a1 + 72);
  v21 = v4;
  v24 = v11;
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  v22 = v12;
  v23 = v13;
  v25 = *(a1 + 96);
  v15 = *(a1 + 80);
  v14 = *(a1 + 88);
  v16 = v4;
  v17 = [(HDHealthEntity *)HDMedicationScheduleEntity enumerateEntitiesForSyncWithProperties:v5 predicate:v7 session:v9 syncAnchorRange:v15 limit:v14 lastSyncAnchor:0 healthDatabase:v8 error:v10 block:a3, v20];

  return v17;
}

+ (id)_syncPredicate
{
  objc_opt_self();
  v0 = MEMORY[0x277D10B70];
  v1 = +[HDMedicationScheduleEntity availableSchedulePredicate];
  v2 = +[HDMedicationScheduleEntity compatibilityVersion0ScheduleTypesPredicate];
  v3 = [v0 compoundPredicateWithPredicate:v1 otherPredicate:v2];

  return v3;
}

BOOL __109__HDMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v10 = [*(a1 + 32) codableRepresentationForPersistentID:objc_msgSend(a2 row:"persistentID") error:{a4, a8}];
  [v10 setDuplicate:1];
  if (v10)
  {
    [*(a1 + 40) addObject:v10];
    *(*(*(a1 + 48) + 8) + 24) += [v10 encodedByteCount];
    if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
    {
      *a7 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogMedication();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __109__HDMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2_cold_1(a1, v11);
    }
  }

  return v10 != 0;
}

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  profileCopy = profile;
  sessionCopy = session;
  v11 = +[HDMedicationScheduleSyncEntity _syncPredicate];
  database = [profileCopy database];

  v13 = [(HDHealthEntity *)HDMedicationScheduleEntity nextSyncAnchorWithStartAnchor:anchor predicate:v11 session:sessionCopy healthDatabase:database error:error];
  return v13;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableMedicationSchedule alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  _HKInitializeLogging();
  v15 = HKLogMedication();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

  if (v16)
  {
    v17 = HKLogMedication();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objectsCopy, "count")}];
      v22 = 138544130;
      selfCopy = self;
      v24 = 2114;
      v25 = v21;
      v26 = 1026;
      var0 = version.var0;
      v28 = 1026;
      var1 = version.var1;
      _os_log_debug_impl(&dword_25181C000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@] Received %{public}@ sync objects, for version: minimum=%{public}d, current=%{public}d", &v22, 0x22u);
    }
  }

  v18 = [(HDMedicationScheduleSyncEntity *)self _insertCodableMedicationSchedules:objectsCopy version:version.var0 syncStore:storeCopy profile:profileCopy error:error];

  v19 = *MEMORY[0x277D85DE8];
  return !v18;
}

+ (BOOL)_insertCodableMedicationSchedules:(int)schedules version:(void *)version syncStore:(void *)store profile:(uint64_t)profile error:
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a2;
  versionCopy = version;
  storeCopy = store;
  v13 = objc_opt_self();
  if (schedules < 3)
  {
    v20 = [MEMORY[0x277D11570] hd_medicationSchedulesFromCodables:v10 profile:storeCopy ignoreDuplicates:1];
    healthMedicationsProfileExtension = [storeCopy healthMedicationsProfileExtension];
    medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __100__HDMedicationScheduleSyncEntity__insertCodableMedicationSchedules_version_syncStore_profile_error___block_invoke;
    v33[3] = &unk_2796CE618;
    v34 = v20;
    v35 = medicationScheduleManager;
    v36 = versionCopy;
    v23 = medicationScheduleManager;
    v15 = v20;
    v24 = MEMORY[0x253084B70](v33);
    database = [storeCopy database];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __100__HDMedicationScheduleSyncEntity__insertCodableMedicationSchedules_version_syncStore_profile_error___block_invoke_2;
    v31[3] = &unk_2796CD2C8;
    v32 = v24;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __100__HDMedicationScheduleSyncEntity__insertCodableMedicationSchedules_version_syncStore_profile_error___block_invoke_3;
    v29[3] = &unk_2796CD2F0;
    v30 = v32;
    v26 = v32;
    v19 = [(HDHealthEntity *)HDMedicationScheduleEntity performWriteTransactionWithHealthDatabase:database error:profile block:v31 inaccessibilityHandler:v29];
  }

  else
  {
    v14 = v13;
    _HKInitializeLogging();
    v15 = HKLogMedication();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 count];
      v17 = HDSyncVersionRangeToString();
      v18 = HDSyncVersionRangeToString();
      *buf = 138544386;
      v38 = v14;
      v39 = 2048;
      v40 = v16;
      v41 = 2114;
      v42 = versionCopy;
      v43 = 2114;
      v44 = v17;
      v45 = 2114;
      v46 = v18;
      _os_log_impl(&dword_25181C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring %lu sync objects from sync store %{public}@ with version %{public}@ because our current version is %{public}@", buf, 0x34u);
    }

    v19 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)version
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

uint64_t __100__HDMedicationScheduleSyncEntity__insertCodableMedicationSchedules_version_syncStore_profile_error___block_invoke(uint64_t a1, uint64_t a2)
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
        v12 = [*(a1 + 48) syncProvenance];
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

void __109__HDMedicationScheduleSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_25181C000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Codeable is nil", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end