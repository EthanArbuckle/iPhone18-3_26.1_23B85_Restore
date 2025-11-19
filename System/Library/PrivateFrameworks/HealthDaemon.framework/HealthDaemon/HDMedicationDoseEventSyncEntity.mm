@interface HDMedicationDoseEventSyncEntity
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4;
+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
@end

@implementation HDMedicationDoseEventSyncEntity

+ (id)syncEntityDependenciesForSyncProtocolVersion:(int)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

+ (id)_basePruningPredicateForDate:(id)a3 profile:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 daemon];
  v7 = [v6 behavior];
  v8 = [v7 supportsSampleExpiration];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v10 = [MEMORY[0x277CCD658] medicationDoseEventType];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [v9 hd_predicateForSamplesWithTypes:v11 endingBeforeDate:v5 minusDays:*MEMORY[0x277CCCEE8]];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  end = a4.end;
  start = a4.start;
  v36 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a6;
  v15 = a5;
  v16 = [a1 _predicateForSyncSession:v13];
  v17 = [objc_msgSend(a1 "healthEntityClass")];

  v18 = [v13 syncStore];
  v19 = [v18 syncStoreType];

  if (v19 == 1)
  {
    _HKInitializeLogging();
    v20 = HKLogMedication();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HKStringFromBool();
      *buf = 138544642;
      v25 = a1;
      v26 = 2048;
      v27 = start;
      v28 = 2048;
      v29 = end;
      v30 = 2114;
      v31 = v21;
      v32 = 2114;
      v33 = v13;
      v34 = 2114;
      v35 = v16;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: objects for (%ld, %ld) %{public}@ session %{public}@ predicate %{public}@", buf, 0x3Eu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = [a1 _predicateForSyncSession:v10];
  v13 = [a1 healthEntityClass];
  v14 = [v11 database];

  v15 = [v13 nextSyncAnchorWithStartAnchor:a4 predicate:v12 session:v10 healthDatabase:v14 error:a6];
  v16 = [v10 syncStore];
  v17 = [v16 syncStoreType];

  if (v17 == 1)
  {
    _HKInitializeLogging();
    v18 = HKLogMedication();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138544386;
      v22 = a1;
      v23 = 2048;
      v24 = v15;
      v25 = 2048;
      v26 = a4;
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = v12;
      _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: next %ld for start %ld session %{public}@ predicate %{public}@", &v21, 0x34u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

@end