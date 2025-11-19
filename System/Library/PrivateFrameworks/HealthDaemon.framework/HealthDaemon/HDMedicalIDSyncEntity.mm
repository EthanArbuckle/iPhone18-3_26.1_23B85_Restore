@interface HDMedicalIDSyncEntity
+ (BOOL)_touchSyncAnchorWithProfile:(int)a3 shouldIncrement:(void *)a4 error:;
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (id)_codableFromMedicalID:(id)a3;
+ (id)_medicalIDFromCodable:(id)a3;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
+ (uint64_t)_getCurrentSyncAnchorWithProfile:(uint64_t)a3 error:;
@end

@implementation HDMedicalIDSyncEntity

+ (BOOL)_touchSyncAnchorWithProfile:(int)a3 shouldIncrement:(void *)a4 error:
{
  v6 = a2;
  v7 = objc_opt_self();
  v16 = 0;
  v8 = [(HDMedicalIDSyncEntity *)v7 _getCurrentSyncAnchorWithProfile:v6 error:&v16];
  v9 = v16;
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

  else
  {
    if (v8 == -1)
    {
      v12 = 1;
    }

    else
    {
      if (!a3)
      {
        v11 = 1;
        goto LABEL_11;
      }

      v12 = v8 + 1;
    }

    v13 = v6;
    objc_opt_self();
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
    v11 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity setNumber:v14 forKey:@"CurrentRevisionAnchor" domain:@"MedicalIDDomain" category:0 profile:v13 error:a4];
  }

LABEL_11:

  return v11;
}

+ (uint64_t)_getCurrentSyncAnchorWithProfile:(uint64_t)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity numberForKey:@"CurrentRevisionAnchor" domain:@"MedicalIDDomain" category:0 profile:v4 entity:0 error:a3];

  if (v5)
  {
    v6 = [v5 longLongValue];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  end = a4.end;
  start = a4.start;
  v56 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [v13 medicalIDDataManager];
  v47 = 0;
  v16 = [v15 fetchMedicalIDWithError:&v47];
  v17 = v47;
  v18 = v17;
  if (v16 || !v17)
  {
    v43 = v14;
    v21 = [(HDMedicalIDSyncEntity *)a1 _getCurrentSyncAnchorWithProfile:v13 error:a7];
    _HKInitializeLogging();
    v22 = *MEMORY[0x277CCC2E0];
    v42 = end;
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      HDSyncAnchorRangeDescription(start, end);
      v25 = v24 = v12;
      *buf = 138544130;
      v49 = a1;
      v50 = 2112;
      v51 = v16;
      v52 = 2114;
      v53 = v25;
      v54 = 2048;
      v55 = v21;
      _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Generate sync objects for MedicalID %@ with syncAnchorRange %{public}@ and newSyncAnchor %lld", buf, 0x2Au);

      v12 = v24;
    }

    if (v16)
    {
      v46 = 0;
      v26 = [a1 getSyncProvencanceOfMedicalIDForProfile:v13 error:&v46];
      v41 = v46;
      v38 = v26;
      if (v26)
      {
        v27 = [v26 longLongValue];
      }

      else
      {
        _HKInitializeLogging();
        v28 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v49 = v41;
          _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "Error reading syncProvenance, even though medical ID exists on disk %{public}@", buf, 0xCu);
        }

        v27 = 0;
      }

      v40 = v12;
      v29 = [v12 excludedSyncStores];
      v30 = [v29 hk_map:&__block_literal_global_127];
      if (v21 == -1)
      {
        v20 = 0;
      }

      else
      {
        v20 = 1;
        if (v21 > start && v21 <= v42)
        {
          v31 = v27;
          v32 = v30;
          v33 = [MEMORY[0x277CCABB0] numberWithLongLong:v31];
          v45 = v32;
          LOBYTE(v32) = [v32 containsObject:v33];

          if (v32)
          {
            v20 = 1;
          }

          else
          {
            v34 = [MEMORY[0x277CBEB18] array];
            v35 = [a1 _codableFromMedicalID:v16];
            if (v35)
            {
              [v34 addObject:v35];
              v20 = [v43 sendCodableChange:v34 resultAnchor:v21 sequence:0 done:1 error:a7];
            }

            else
            {
              v20 = 0;
            }
          }

          v30 = v45;
        }
      }

      v12 = v40;
    }

    else
    {
      v20 = 1;
    }

    v14 = v43;
  }

  else if (a7)
  {
    v19 = v17;
    v20 = 0;
    *a7 = v18;
  }

  else
  {
    _HKLogDroppedError();
    v20 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t __100__HDMedicalIDSyncEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 syncProvenance];

  return [v2 numberWithLongLong:v3];
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [a1 getSyncProvencanceOfMedicalIDForProfile:v11 error:a6];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 longLongValue];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v10 excludedSyncStores];
  v16 = [v15 hk_map:&__block_literal_global_305_1];
  v17 = [MEMORY[0x277CCABB0] numberWithLongLong:v14];
  v18 = [v16 containsObject:v17];

  if ((v18 & 1) == 0)
  {
    v19 = [(HDMedicalIDSyncEntity *)a1 _getCurrentSyncAnchorWithProfile:v11 error:a6];
    if (v19 <= a4)
    {
      v20 = a4;
    }

    else
    {
      v20 = v19;
    }

    if (v19 != -1)
    {
      a4 = v20;
    }
  }

  return a4;
}

uint64_t __81__HDMedicalIDSyncEntity_nextSyncAnchorWithSession_startSyncAnchor_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 syncProvenance];

  return [v2 numberWithLongLong:v3];
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = a3;
  v4 = [[HDCodableMedicalIDData alloc] initWithData:v3];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if ([v11 count])
  {
    v14 = [v11 lastObject];
    if (v14)
    {
      v15 = v14;
      v16 = [a1 _medicalIDFromCodable:v14];
      if (v16)
      {
        v17 = v16;
        [v13 medicalIDDataManager];
        v18 = v29 = a7;
        v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "syncProvenance")}];
        v30 = 0;
        v20 = [v18 updateMedicalIDWithSyncedData:v17 provenance:v19 error:&v30];
        v21 = v30;

        a7 = v29;
        v22 = 0;
        if (v20)
        {
          goto LABEL_15;
        }

        goto LABEL_8;
      }
    }
  }

  v21 = 0;
LABEL_8:
  v23 = [v12 profile];
  v24 = [(HDMedicalIDSyncEntity *)a1 _getCurrentSyncAnchorWithProfile:v23 error:0];

  _HKInitializeLogging();
  v25 = *MEMORY[0x277CCC2E0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_FAULT))
  {
    *buf = 138543874;
    v32 = a1;
    v33 = 2048;
    v34 = v24;
    v35 = 2114;
    v36 = v21;
    _os_log_fault_impl(&dword_228986000, v25, OS_LOG_TYPE_FAULT, "%{public}@ Failed to save MedicalID with ignorable failure, SyncAnchor: %lld, Error: %{public}@, ", buf, 0x20u);
  }

  v21 = v21;
  if (v21)
  {
    if (a7)
    {
      v26 = v21;
      *a7 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v22 = 1;
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)_codableFromMedicalID:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = objc_alloc_init(HDCodableMedicalIDData);
    [(HDCodableMedicalIDData *)v5 setMedicalIDBytes:v3];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Failed to encode codable medical ID: %{public}@", buf, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_medicalIDFromCodable:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a3 medicalIDBytes];
  v9 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
  v5 = v9;
  if (!v4)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Failed to decode codable medical ID: %{public}@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

@end