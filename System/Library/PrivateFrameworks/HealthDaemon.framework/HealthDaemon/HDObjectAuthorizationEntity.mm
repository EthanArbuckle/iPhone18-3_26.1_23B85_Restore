@interface HDObjectAuthorizationEntity
+ (BOOL)resetAllObjectAuthorizationRecordsForProfile:(id)a3 error:(id *)a4;
+ (BOOL)resetAuthorizationForObjects:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)resetObjectAuthorizationRecordsForSource:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)setObjectAuthorizationRecords:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5 profile:(id)a6 error:(id *)a7;
+ (id)_selectSQLIncludeSession:(uint64_t)a1;
+ (id)authorizationRecordsBySourceForSampleWithUUID:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)authorizationRecordsForSamples:(id)a3 sourceEntity:(id)a4 sessionIdentifier:(id)a5 profile:(id)a6 error:(id *)a7;
+ (id)authorizationStatusForSamplesOfType:(id)a3 sourceEntity:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)foreignKeys;
+ (id)pruneWithProfile:(id)a3 nowDate:(id)a4 limit:(unint64_t)a5 error:(id *)a6;
+ (id)uniquedColumns;
@end

@implementation HDObjectAuthorizationEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"object";
  v2 = [objc_alloc(MEMORY[0x277D10B38]) initWithEntityClass:objc_opt_class() property:@"uuid" deletionAction:2];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)uniquedColumns
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"object";
  v5[1] = @"source";
  v5[2] = @"sync_provenance";
  v5[3] = @"sync_identity";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)setObjectAuthorizationRecords:(id)a3 syncProvenance:(int64_t)a4 syncIdentity:(int64_t)a5 profile:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a6;
  v13 = objc_opt_self();
  v14 = [v12 database];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __115__HDObjectAuthorizationEntity__setObjectAuthorizationRecords_syncProvenance_syncIdentity_skipErrors_profile_error___block_invoke;
  v23[3] = &unk_278625F28;
  v24 = v11;
  v25 = v13;
  v26 = a4;
  v27 = a5;
  v28 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __115__HDObjectAuthorizationEntity__setObjectAuthorizationRecords_syncProvenance_syncIdentity_skipErrors_profile_error___block_invoke_339;
  v18[3] = &unk_278625F50;
  v21 = a5;
  v22 = a4;
  v19 = v24;
  v20 = v12;
  v15 = v12;
  v16 = v24;
  LOBYTE(a7) = [v13 performWriteTransactionWithHealthDatabase:v14 error:a7 block:v23 inaccessibilityHandler:v18];

  return a7;
}

uint64_t __115__HDObjectAuthorizationEntity__setObjectAuthorizationRecords_syncProvenance_syncIdentity_skipErrors_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38[7] = *MEMORY[0x277D85DE8];
  v27 = a2;
  v38[0] = @"object";
  v38[1] = @"source";
  v38[2] = @"status";
  v38[3] = @"sync_provenance";
  v38[4] = @"sync_identity";
  v38[5] = @"modification_date";
  v38[6] = @"session";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:7];
  Current = CFAbsoluteTimeGetCurrent();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 32);
  v7 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v7)
  {
    v9 = v7;
    v25 = a3;
    v10 = *v32;
    *&v8 = 138543362;
    v24 = v8;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = *(a1 + 40);
        v14 = [v27 protectedDatabase];
        v30 = 0;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __115__HDObjectAuthorizationEntity__setObjectAuthorizationRecords_syncProvenance_syncIdentity_skipErrors_profile_error___block_invoke_2;
        v28[3] = &unk_278625F00;
        v28[4] = v12;
        *&v28[5] = Current;
        v29 = *(a1 + 48);
        v15 = [v13 insertOrReplaceEntity:1 database:v14 properties:v5 error:&v30 bindingHandler:v28];
        v16 = v30;

        if (!v15)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = v24;
            v36 = v16;
            _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "Failed to insert or update object authorization: %{public}@", buf, 0xCu);
          }

          v18 = v16;
          v19 = v18;
          if (v18)
          {
            if (v25)
            {
              v20 = v18;
              *v25 = v19;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          if (*(a1 + 64) != 1)
          {

            v21 = 0;
            goto LABEL_18;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v21 = 1;
LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void __115__HDObjectAuthorizationEntity__setObjectAuthorizationRecords_syncProvenance_syncIdentity_skipErrors_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) modificationDate];
  if (v4 == 0.0)
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = v4;
  }

  v6 = [*(a1 + 32) objectUUID];
  MEMORY[0x22AAC6C00](a2, @"object", v6);

  v7 = [*(a1 + 32) sourceUUID];
  MEMORY[0x22AAC6C00](a2, @"source", v7);

  MEMORY[0x22AAC6B90](a2, @"status", [*(a1 + 32) status]);
  MEMORY[0x22AAC6B90](a2, @"sync_provenance", *(a1 + 48));
  MEMORY[0x22AAC6B90](a2, @"sync_identity", *(a1 + 56));
  MEMORY[0x22AAC6B60](a2, @"modification_date", v5);
  v8 = [*(a1 + 32) sessionUUID];
  MEMORY[0x22AAC6C00](a2, @"session", v8);
}

uint64_t __115__HDObjectAuthorizationEntity__setObjectAuthorizationRecords_syncProvenance_syncIdentity_skipErrors_profile_error___block_invoke_339(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(HDObjectAuthorizationJournalEntry);
  [(HDObjectAuthorizationJournalEntry *)v5 setRecords:*(a1 + 32)];
  [(HDObjectAuthorizationJournalEntry *)v5 setSyncIdentity:*(a1 + 48)];
  [(HDObjectAuthorizationJournalEntry *)v5 setSyncProvenance:*(a1 + 56)];
  v6 = [*(a1 + 40) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

+ (BOOL)resetObjectAuthorizationRecordsForSource:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__HDObjectAuthorizationEntity_resetObjectAuthorizationRecordsForSource_profile_error___block_invoke;
  v14[3] = &unk_278614698;
  v15 = v8;
  v16 = v9;
  v17 = a1;
  v11 = v9;
  v12 = v8;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v10 error:a5 block:v14];

  return a5;
}

uint64_t __86__HDObjectAuthorizationEntity_resetObjectAuthorizationRecordsForSource_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) sourceUUIDWithProfile:*(a1 + 40) error:a3];
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [*(a1 + 48) disambiguatedDatabaseTable];
    v9 = [v7 stringWithFormat:@"DELETE FROM %@ WHERE %@ = ?", v8, @"source"];

    v10 = [v5 protectedDatabase];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __86__HDObjectAuthorizationEntity_resetObjectAuthorizationRecordsForSource_profile_error___block_invoke_2;
    v13[3] = &unk_278614860;
    v14 = v6;
    v11 = [v10 executeSQL:v9 error:a3 bindingHandler:v13 enumerationHandler:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)resetAllObjectAuthorizationRecordsForProfile:(id)a3 error:(id *)a4
{
  v6 = [a3 database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HDObjectAuthorizationEntity_resetAllObjectAuthorizationRecordsForProfile_error___block_invoke;
  v8[3] = &__block_descriptor_40_e35_B24__0__HDDatabaseTransaction_8__16l;
  v8[4] = a1;
  LOBYTE(a4) = [a1 performWriteTransactionWithHealthDatabase:v6 error:a4 block:v8];

  return a4;
}

uint64_t __82__HDObjectAuthorizationEntity_resetAllObjectAuthorizationRecordsForProfile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 disambiguatedDatabaseTable];
  v8 = [v4 stringWithFormat:@"DELETE FROM %@", v7];

  v9 = [v6 protectedDatabase];

  v10 = [v9 executeSQL:v8 error:a3 bindingHandler:0 enumerationHandler:0];
  return v10;
}

+ (BOOL)resetAuthorizationForObjects:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HDObjectAuthorizationEntity_resetAuthorizationForObjects_profile_error___block_invoke;
  v12[3] = &unk_278619348;
  v13 = v8;
  v14 = a1;
  v10 = v8;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v9 error:a5 block:v12];

  return a5;
}

uint64_t __74__HDObjectAuthorizationEntity_resetAuthorizationForObjects_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [v6 disambiguatedDatabaseTable];
  v9 = [v5 stringWithFormat:@"DELETE FROM %@ WHERE %@ IN (?)", v8, @"object"];

  v10 = [v7 protectedDatabase];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__HDObjectAuthorizationEntity_resetAuthorizationForObjects_profile_error___block_invoke_2;
  v13[3] = &unk_278614860;
  v14 = *(a1 + 32);
  v11 = [v10 executeSQL:v9 error:a3 bindingHandler:v13 enumerationHandler:0];

  return v11;
}

BOOL __90__HDObjectAuthorizationEntity__insertCodableObjectAuthorizations_syncStore_profile_error___block_invoke(void *a1, void *a2, uint64_t *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 syncIdentityManager];
  v8 = [v7 concreteIdentityForIdentity:a1[5] shouldCreate:1 transaction:v6 error:a3];

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(a1[6] + 8) + 40);
  if (!v11)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v15 = *a3;
      v16 = 138543362;
      v17 = v15;
      _os_log_fault_impl(&dword_228986000, v12, OS_LOG_TYPE_FAULT, "HDObjectAuthorizationSyncEntity ConcreteSyncIdentity from received codable is nil %{public}@", &v16, 0xCu);
    }
  }

  result = v11 != 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)authorizationStatusForSamplesOfType:(id)a3 sourceEntity:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__HDObjectAuthorizationEntity_authorizationStatusForSamplesOfType_sourceEntity_profile_error___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v12 = authorizationStatusForSamplesOfType_sourceEntity_profile_error__onceToken;
  v13 = a5;
  if (v12 != -1)
  {
    dispatch_once(&authorizationStatusForSamplesOfType_sourceEntity_profile_error__onceToken, block);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [v13 database];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __94__HDObjectAuthorizationEntity_authorizationStatusForSamplesOfType_sourceEntity_profile_error___block_invoke_2;
  v23[3] = &unk_278615D40;
  v24 = v11;
  v25 = v10;
  v26 = v14;
  v16 = v14;
  v17 = v10;
  v18 = v11;
  v19 = [a1 performReadTransactionWithHealthDatabase:v15 error:a6 block:v23];

  if (v19)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  return v20;
}

void __94__HDObjectAuthorizationEntity_authorizationStatusForSamplesOfType_sourceEntity_profile_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v6 = [*(a1 + 32) disambiguatedDatabaseTable];
  v2 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v3 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v4 = [v1 stringWithFormat:@"SELECT %@, %@, %@, %@                                                     FROM %@ as oa                                                     INNER JOIN %@ obj ON oa.%@ = obj.%@                                                     INNER JOIN %@ spl ON obj.%@ = spl.%@                                                     WHERE oa.%@ = ? AND spl.%@ = ?", @"object", @"source", @"status", @"modification_date", v6, v2, @"object", @"uuid", v3, @"data_id", @"data_id", @"source", @"data_type"];
  v5 = authorizationStatusForSamplesOfType_sourceEntity_profile_error__selectSQL;
  authorizationStatusForSamplesOfType_sourceEntity_profile_error__selectSQL = v4;
}

uint64_t __94__HDObjectAuthorizationEntity_authorizationStatusForSamplesOfType_sourceEntity_profile_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 unprotectedDatabase];
  v8 = [v5 UUIDForProperty:@"uuid" database:v7];

  v9 = [v6 protectedDatabase];

  v10 = authorizationStatusForSamplesOfType_sourceEntity_profile_error__selectSQL;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__HDObjectAuthorizationEntity_authorizationStatusForSamplesOfType_sourceEntity_profile_error___block_invoke_3;
  v16[3] = &unk_278613038;
  v17 = v8;
  v18 = *(a1 + 40);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__HDObjectAuthorizationEntity_authorizationStatusForSamplesOfType_sourceEntity_profile_error___block_invoke_4;
  v14[3] = &unk_278614098;
  v15 = *(a1 + 48);
  v11 = v8;
  v12 = [v9 executeSQL:v10 error:a3 bindingHandler:v16 enumerationHandler:v14];

  return v12;
}

uint64_t __94__HDObjectAuthorizationEntity_authorizationStatusForSamplesOfType_sourceEntity_profile_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = [*(a1 + 40) code];

  return sqlite3_bind_int64(a2, 2, v5);
}

uint64_t __94__HDObjectAuthorizationEntity_authorizationStatusForSamplesOfType_sourceEntity_profile_error___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCD710]);
  v5 = MEMORY[0x22AAC6CA0](a2, 0);
  [v4 setObjectUUID:v5];

  v6 = MEMORY[0x22AAC6CA0](a2, 1);
  [v4 setSourceUUID:v6];

  [v4 setStatus:HDSQLiteColumnAsInt64()];
  MEMORY[0x22AAC6C50](a2, 3);
  [v4 setModificationDate:?];
  [*(a1 + 32) addObject:v4];

  return 1;
}

+ (id)authorizationRecordsForSamples:(id)a3 sourceEntity:(id)a4 sessionIdentifier:(id)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__HDObjectAuthorizationEntity_authorizationRecordsForSamples_sourceEntity_sessionIdentifier_profile_error___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v15 = qword_280D67D80;
  v16 = a6;
  if (v15 != -1)
  {
    dispatch_once(&qword_280D67D80, block);
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = [v13 persistentID];
  v19 = &_MergedGlobals_1;
  if (v14)
  {
    v19 = &qword_280D67D78;
  }

  v20 = *v19;
  v21 = [v16 database];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __107__HDObjectAuthorizationEntity_authorizationRecordsForSamples_sourceEntity_sessionIdentifier_profile_error___block_invoke_2;
  v31[3] = &unk_278625F78;
  v32 = v13;
  v33 = v12;
  v34 = v14;
  v35 = v20;
  v36 = v17;
  v37 = v18;
  v22 = v17;
  v23 = v20;
  v24 = v14;
  v25 = v12;
  v26 = v13;
  v27 = [a1 performReadTransactionWithHealthDatabase:v21 error:a7 block:v31];

  if (v27)
  {
    v28 = v22;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  return v28;
}

uint64_t __107__HDObjectAuthorizationEntity_authorizationRecordsForSamples_sourceEntity_sessionIdentifier_profile_error___block_invoke(uint64_t a1)
{
  v2 = [(HDObjectAuthorizationEntity *)*(a1 + 32) _selectSQLIncludeSession:?];
  v3 = _MergedGlobals_1;
  _MergedGlobals_1 = v2;

  v4 = [(HDObjectAuthorizationEntity *)*(a1 + 32) _selectSQLIncludeSession:?];
  v5 = qword_280D67D78;
  qword_280D67D78 = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

+ (id)_selectSQLIncludeSession:(uint64_t)a1
{
  v3 = objc_opt_self();
  v4 = @"IS";
  if (a2)
  {
    v4 = @"=";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = v4;
  v7 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v8 = +[(HDSQLiteSchemaEntity *)HDDataProvenanceEntity];
  v9 = *MEMORY[0x277D10A40];
  v10 = [v3 disambiguatedDatabaseTable];
  v11 = [v5 stringWithFormat:@"SELECT %@, %@, dp.%@                                            FROM %@ AS o                                            INNER JOIN %@ dp ON o.%@ = dp.%@                                            LEFT JOIN %@ oa ON o.%@ = oa.%@ AND oa.%@ = ? AND oa.%@ %@ ?                                            WHERE o.%@ = ?", @"status", @"modification_date", @"source_id", v7, v8, @"provenance", v9, v10, @"uuid", @"object", @"source", @"session", v6, @"uuid"];

  return v11;
}

uint64_t __107__HDObjectAuthorizationEntity_authorizationRecordsForSamples_sourceEntity_sessionIdentifier_profile_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = *(a1 + 32);
  v24 = v4;
  v6 = [v4 unprotectedDatabase];
  v7 = [v5 UUIDForProperty:@"uuid" database:v6];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 40);
  v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v22 = *v33;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        v12 = objc_alloc_init(MEMORY[0x277CCD710]);
        [v12 setSourceUUID:v7];
        v13 = [v11 UUID];
        [v12 setObjectUUID:v13];

        [v12 setSessionUUID:*(a1 + 48)];
        [v12 setStatus:0];
        v14 = [v24 protectedDatabase];
        v15 = *(a1 + 56);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __107__HDObjectAuthorizationEntity_authorizationRecordsForSamples_sourceEntity_sessionIdentifier_profile_error___block_invoke_3;
        v28[3] = &unk_278613528;
        v29 = v7;
        v30 = *(a1 + 48);
        v31 = v11;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __107__HDObjectAuthorizationEntity_authorizationRecordsForSamples_sourceEntity_sessionIdentifier_profile_error___block_invoke_4;
        v25[3] = &unk_27861B670;
        v16 = *(a1 + 72);
        v26 = v12;
        v27 = v16;
        v17 = v12;
        LODWORD(v11) = [v14 executeSQL:v15 error:a3 bindingHandler:v28 enumerationHandler:v25];

        [*(a1 + 64) addObject:v17];
        if (!v11)
        {
          v18 = 0;
          goto LABEL_11;
        }

        ++v10;
      }

      while (v9 != v10);
      v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __107__HDObjectAuthorizationEntity_authorizationRecordsForSamples_sourceEntity_sessionIdentifier_profile_error___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v3 = *(a1 + 40);
  HDSQLiteBindFoundationValueToStatement();
  v4 = [*(a1 + 48) UUID];
  HDSQLiteBindFoundationValueToStatement();
}

uint64_t __107__HDObjectAuthorizationEntity_authorizationRecordsForSamples_sourceEntity_sessionIdentifier_profile_error___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = HDSQLiteColumnAsInt64();
  if ((MEMORY[0x22AAC6CD0](a2, 0) & 1) == 0)
  {
    v5 = HDSQLiteColumnAsInt64();
    goto LABEL_5;
  }

  if (v4 == *(a1 + 40))
  {
    v5 = 2;
LABEL_5:
    [*(a1 + 32) setStatus:v5];
  }

  MEMORY[0x22AAC6C50](a2, 1);
  [*(a1 + 32) setModificationDate:?];
  return 1;
}

+ (id)authorizationRecordsBySourceForSampleWithUUID:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB38];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  v12 = [v10 database];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91__HDObjectAuthorizationEntity_authorizationRecordsBySourceForSampleWithUUID_profile_error___block_invoke;
  v18[3] = &unk_278614698;
  v20 = v11;
  v21 = a1;
  v19 = v8;
  v13 = v11;
  v14 = v8;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v12 error:a5 block:v18];

  if (a5)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

uint64_t __91__HDObjectAuthorizationEntity_authorizationRecordsBySourceForSampleWithUUID_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = *(a1 + 48);
  v7 = a2;
  v8 = [v6 disambiguatedDatabaseTable];
  v9 = [v5 stringWithFormat:@"SELECT %@, %@, %@ from %@ AS oa WHERE oa.%@ = ?", @"source", @"modification_date", @"status", v8, @"object"];

  v10 = [v7 protectedDatabase];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__HDObjectAuthorizationEntity_authorizationRecordsBySourceForSampleWithUUID_profile_error___block_invoke_2;
  v16[3] = &unk_278614860;
  v17 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__HDObjectAuthorizationEntity_authorizationRecordsBySourceForSampleWithUUID_profile_error___block_invoke_3;
  v13[3] = &unk_2786140C0;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v11 = [v10 executeSQL:v9 error:a3 bindingHandler:v16 enumerationHandler:v13];

  return v11;
}

uint64_t __91__HDObjectAuthorizationEntity_authorizationRecordsBySourceForSampleWithUUID_profile_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCD710]);
  [v4 setObjectUUID:*(a1 + 32)];
  v5 = MEMORY[0x22AAC6CA0](a2, 0);
  [v4 setSourceUUID:v5];

  MEMORY[0x22AAC6C50](a2, 1);
  [v4 setModificationDate:?];
  [v4 setStatus:HDSQLiteColumnAsInt64()];
  v6 = *(a1 + 40);
  v7 = [v4 sourceUUID];
  [v6 setObject:v4 forKeyedSubscript:v7];

  return 1;
}

+ (id)pruneWithProfile:(id)a3 nowDate:(id)a4 limit:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v12 = [v11 hk_dateBySubtractingDays:*MEMORY[0x277CCBC20] fromDate:v10];

  [v12 timeIntervalSinceReferenceDate];
  v13 = MEMORY[0x277D10B18];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v15 = [v13 predicateWithProperty:@"modification_date" lessThanValue:v14];

  v16 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"session"];
  v17 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v15 otherPredicate:v16];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v18 = [v9 database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __68__HDObjectAuthorizationEntity_pruneWithProfile_nowDate_limit_error___block_invoke;
  v22[3] = &unk_278616AA0;
  v19 = v17;
  v24 = &v26;
  v25 = a5;
  v23 = v19;
  LODWORD(a6) = [(HDHealthEntity *)HDObjectAuthorizationEntity performWriteTransactionWithHealthDatabase:v18 error:a6 block:v22];

  if (a6)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithInt:*(v27 + 6)];
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v26, 8);

  return v20;
}

uint64_t __68__HDObjectAuthorizationEntity_pruneWithProfile_nowDate_limit_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = [a2 protectedDatabase];
  v6 = [(HDSQLiteEntity *)HDObjectAuthorizationEntity queryWithDatabase:v5 predicate:a1[4] limit:a1[6] orderingTerms:0 groupBy:0];
  v7 = [v6 deleteAllEntitiesWithError:a3];
  *(*(a1[5] + 8) + 24) = [v5 getChangesCount];

  return v7;
}

@end