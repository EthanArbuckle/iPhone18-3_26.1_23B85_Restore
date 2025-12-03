@interface HDMedicalIDSyncEntity
+ (BOOL)_touchSyncAnchorWithProfile:(int)profile shouldIncrement:(void *)increment error:;
+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error;
+ (id)_codableFromMedicalID:(id)d;
+ (id)_medicalIDFromCodable:(id)codable;
+ (id)decodeSyncObjectWithData:(id)data;
+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
+ (uint64_t)_getCurrentSyncAnchorWithProfile:(uint64_t)profile error:;
@end

@implementation HDMedicalIDSyncEntity

+ (BOOL)_touchSyncAnchorWithProfile:(int)profile shouldIncrement:(void *)increment error:
{
  v6 = a2;
  v7 = objc_opt_self();
  v16 = 0;
  v8 = [(HDMedicalIDSyncEntity *)v7 _getCurrentSyncAnchorWithProfile:v6 error:&v16];
  v9 = v16;
  if (v9)
  {
    if (increment)
    {
      v10 = v9;
      v11 = 0;
      *increment = v9;
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
      if (!profile)
      {
        v11 = 1;
        goto LABEL_11;
      }

      v12 = v8 + 1;
    }

    v13 = v6;
    objc_opt_self();
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
    v11 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity setNumber:v14 forKey:@"CurrentRevisionAnchor" domain:@"MedicalIDDomain" category:0 profile:v13 error:increment];
  }

LABEL_11:

  return v11;
}

+ (uint64_t)_getCurrentSyncAnchorWithProfile:(uint64_t)profile error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity numberForKey:@"CurrentRevisionAnchor" domain:@"MedicalIDDomain" category:0 profile:v4 entity:0 error:profile];

  if (v5)
  {
    longLongValue = [v5 longLongValue];
  }

  else
  {
    longLongValue = -1;
  }

  return longLongValue;
}

+ (BOOL)generateSyncObjectsForSession:(id)session syncAnchorRange:(HDSyncAnchorRange)range profile:(id)profile messageHandler:(id)handler error:(id *)error
{
  end = range.end;
  start = range.start;
  v56 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  profileCopy = profile;
  handlerCopy = handler;
  medicalIDDataManager = [profileCopy medicalIDDataManager];
  v47 = 0;
  v16 = [medicalIDDataManager fetchMedicalIDWithError:&v47];
  v17 = v47;
  v18 = v17;
  if (v16 || !v17)
  {
    v43 = handlerCopy;
    v21 = [(HDMedicalIDSyncEntity *)self _getCurrentSyncAnchorWithProfile:profileCopy error:error];
    _HKInitializeLogging();
    v22 = *MEMORY[0x277CCC2E0];
    v42 = end;
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      HDSyncAnchorRangeDescription(start, end);
      v25 = v24 = sessionCopy;
      *buf = 138544130;
      selfCopy = self;
      v50 = 2112;
      v51 = v16;
      v52 = 2114;
      v53 = v25;
      v54 = 2048;
      v55 = v21;
      _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Generate sync objects for MedicalID %@ with syncAnchorRange %{public}@ and newSyncAnchor %lld", buf, 0x2Au);

      sessionCopy = v24;
    }

    if (v16)
    {
      v46 = 0;
      v26 = [self getSyncProvencanceOfMedicalIDForProfile:profileCopy error:&v46];
      v41 = v46;
      v38 = v26;
      if (v26)
      {
        longLongValue = [v26 longLongValue];
      }

      else
      {
        _HKInitializeLogging();
        v28 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          selfCopy = v41;
          _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "Error reading syncProvenance, even though medical ID exists on disk %{public}@", buf, 0xCu);
        }

        longLongValue = 0;
      }

      v40 = sessionCopy;
      excludedSyncStores = [sessionCopy excludedSyncStores];
      v30 = [excludedSyncStores hk_map:&__block_literal_global_127];
      if (v21 == -1)
      {
        v20 = 0;
      }

      else
      {
        v20 = 1;
        if (v21 > start && v21 <= v42)
        {
          v31 = longLongValue;
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
            array = [MEMORY[0x277CBEB18] array];
            v35 = [self _codableFromMedicalID:v16];
            if (v35)
            {
              [array addObject:v35];
              v20 = [v43 sendCodableChange:array resultAnchor:v21 sequence:0 done:1 error:error];
            }

            else
            {
              v20 = 0;
            }
          }

          v30 = v45;
        }
      }

      sessionCopy = v40;
    }

    else
    {
      v20 = 1;
    }

    handlerCopy = v43;
  }

  else if (error)
  {
    v19 = v17;
    v20 = 0;
    *error = v18;
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

+ (int64_t)nextSyncAnchorWithSession:(id)session startSyncAnchor:(int64_t)anchor profile:(id)profile error:(id *)error
{
  sessionCopy = session;
  profileCopy = profile;
  v12 = [self getSyncProvencanceOfMedicalIDForProfile:profileCopy error:error];
  v13 = v12;
  if (v12)
  {
    longLongValue = [v12 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  excludedSyncStores = [sessionCopy excludedSyncStores];
  v16 = [excludedSyncStores hk_map:&__block_literal_global_305_1];
  v17 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
  v18 = [v16 containsObject:v17];

  if ((v18 & 1) == 0)
  {
    v19 = [(HDMedicalIDSyncEntity *)self _getCurrentSyncAnchorWithProfile:profileCopy error:error];
    if (v19 <= anchor)
    {
      anchorCopy = anchor;
    }

    else
    {
      anchorCopy = v19;
    }

    if (v19 != -1)
    {
      anchor = anchorCopy;
    }
  }

  return anchor;
}

uint64_t __81__HDMedicalIDSyncEntity_nextSyncAnchorWithSession_startSyncAnchor_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 syncProvenance];

  return [v2 numberWithLongLong:v3];
}

+ (id)decodeSyncObjectWithData:(id)data
{
  dataCopy = data;
  v4 = [[HDCodableMedicalIDData alloc] initWithData:dataCopy];

  return v4;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  if ([objectsCopy count])
  {
    lastObject = [objectsCopy lastObject];
    if (lastObject)
    {
      v15 = lastObject;
      v16 = [self _medicalIDFromCodable:lastObject];
      if (v16)
      {
        v17 = v16;
        [profileCopy medicalIDDataManager];
        v18 = v29 = error;
        v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(storeCopy, "syncProvenance")}];
        v30 = 0;
        v20 = [v18 updateMedicalIDWithSyncedData:v17 provenance:v19 error:&v30];
        v21 = v30;

        error = v29;
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
  profile = [storeCopy profile];
  v24 = [(HDMedicalIDSyncEntity *)self _getCurrentSyncAnchorWithProfile:profile error:0];

  _HKInitializeLogging();
  v25 = *MEMORY[0x277CCC2E0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_FAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v33 = 2048;
    v34 = v24;
    v35 = 2114;
    v36 = v21;
    _os_log_fault_impl(&dword_228986000, v25, OS_LOG_TYPE_FAULT, "%{public}@ Failed to save MedicalID with ignorable failure, SyncAnchor: %lld, Error: %{public}@, ", buf, 0x20u);
  }

  v21 = v21;
  if (v21)
  {
    if (error)
    {
      v26 = v21;
      *error = v21;
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

+ (id)_codableFromMedicalID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:d requiringSecureCoding:1 error:&v9];
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

+ (id)_medicalIDFromCodable:(id)codable
{
  v12 = *MEMORY[0x277D85DE8];
  medicalIDBytes = [codable medicalIDBytes];
  v9 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:medicalIDBytes error:&v9];
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