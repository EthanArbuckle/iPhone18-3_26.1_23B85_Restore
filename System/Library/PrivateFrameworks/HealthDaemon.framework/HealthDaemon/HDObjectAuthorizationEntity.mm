@interface HDObjectAuthorizationEntity
+ (BOOL)resetAllObjectAuthorizationRecordsForProfile:(id)profile error:(id *)error;
+ (BOOL)resetAuthorizationForObjects:(id)objects profile:(id)profile error:(id *)error;
+ (BOOL)resetObjectAuthorizationRecordsForSource:(id)source profile:(id)profile error:(id *)error;
+ (BOOL)setObjectAuthorizationRecords:(id)records syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity profile:(id)profile error:(id *)error;
+ (id)_selectSQLIncludeSession:(uint64_t)session;
+ (id)authorizationRecordsBySourceForSampleWithUUID:(id)d profile:(id)profile error:(id *)error;
+ (id)authorizationRecordsForSamples:(id)samples sourceEntity:(id)entity sessionIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (id)authorizationStatusForSamplesOfType:(id)type sourceEntity:(id)entity profile:(id)profile error:(id *)error;
+ (id)foreignKeys;
+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error;
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

+ (BOOL)setObjectAuthorizationRecords:(id)records syncProvenance:(int64_t)provenance syncIdentity:(int64_t)identity profile:(id)profile error:(id *)error
{
  recordsCopy = records;
  profileCopy = profile;
  v13 = objc_opt_self();
  database = [profileCopy database];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __115__HDObjectAuthorizationEntity__setObjectAuthorizationRecords_syncProvenance_syncIdentity_skipErrors_profile_error___block_invoke;
  v23[3] = &unk_278625F28;
  v24 = recordsCopy;
  v25 = v13;
  provenanceCopy = provenance;
  identityCopy = identity;
  v28 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __115__HDObjectAuthorizationEntity__setObjectAuthorizationRecords_syncProvenance_syncIdentity_skipErrors_profile_error___block_invoke_339;
  v18[3] = &unk_278625F50;
  identityCopy2 = identity;
  provenanceCopy2 = provenance;
  v19 = v24;
  v20 = profileCopy;
  v15 = profileCopy;
  v16 = v24;
  LOBYTE(error) = [v13 performWriteTransactionWithHealthDatabase:database error:error block:v23 inaccessibilityHandler:v18];

  return error;
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

+ (BOOL)resetObjectAuthorizationRecordsForSource:(id)source profile:(id)profile error:(id *)error
{
  sourceCopy = source;
  profileCopy = profile;
  database = [profileCopy database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __86__HDObjectAuthorizationEntity_resetObjectAuthorizationRecordsForSource_profile_error___block_invoke;
  v14[3] = &unk_278614698;
  v15 = sourceCopy;
  v16 = profileCopy;
  selfCopy = self;
  v11 = profileCopy;
  v12 = sourceCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v14];

  return error;
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

+ (BOOL)resetAllObjectAuthorizationRecordsForProfile:(id)profile error:(id *)error
{
  database = [profile database];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HDObjectAuthorizationEntity_resetAllObjectAuthorizationRecordsForProfile_error___block_invoke;
  v8[3] = &__block_descriptor_40_e35_B24__0__HDDatabaseTransaction_8__16l;
  v8[4] = self;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v8];

  return error;
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

+ (BOOL)resetAuthorizationForObjects:(id)objects profile:(id)profile error:(id *)error
{
  objectsCopy = objects;
  database = [profile database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__HDObjectAuthorizationEntity_resetAuthorizationForObjects_profile_error___block_invoke;
  v12[3] = &unk_278619348;
  v13 = objectsCopy;
  selfCopy = self;
  v10 = objectsCopy;
  LOBYTE(error) = [self performWriteTransactionWithHealthDatabase:database error:error block:v12];

  return error;
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

+ (id)authorizationStatusForSamplesOfType:(id)type sourceEntity:(id)entity profile:(id)profile error:(id *)error
{
  typeCopy = type;
  entityCopy = entity;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__HDObjectAuthorizationEntity_authorizationStatusForSamplesOfType_sourceEntity_profile_error___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v12 = authorizationStatusForSamplesOfType_sourceEntity_profile_error__onceToken;
  profileCopy = profile;
  if (v12 != -1)
  {
    dispatch_once(&authorizationStatusForSamplesOfType_sourceEntity_profile_error__onceToken, block);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [profileCopy database];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __94__HDObjectAuthorizationEntity_authorizationStatusForSamplesOfType_sourceEntity_profile_error___block_invoke_2;
  v23[3] = &unk_278615D40;
  v24 = entityCopy;
  v25 = typeCopy;
  v26 = v14;
  v16 = v14;
  v17 = typeCopy;
  v18 = entityCopy;
  v19 = [self performReadTransactionWithHealthDatabase:database error:error block:v23];

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

+ (id)authorizationRecordsForSamples:(id)samples sourceEntity:(id)entity sessionIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  samplesCopy = samples;
  entityCopy = entity;
  identifierCopy = identifier;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__HDObjectAuthorizationEntity_authorizationRecordsForSamples_sourceEntity_sessionIdentifier_profile_error___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v15 = qword_280D67D80;
  profileCopy = profile;
  if (v15 != -1)
  {
    dispatch_once(&qword_280D67D80, block);
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  persistentID = [entityCopy persistentID];
  v19 = &_MergedGlobals_1;
  if (identifierCopy)
  {
    v19 = &qword_280D67D78;
  }

  v20 = *v19;
  database = [profileCopy database];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __107__HDObjectAuthorizationEntity_authorizationRecordsForSamples_sourceEntity_sessionIdentifier_profile_error___block_invoke_2;
  v31[3] = &unk_278625F78;
  v32 = entityCopy;
  v33 = samplesCopy;
  v34 = identifierCopy;
  v35 = v20;
  v36 = v17;
  v37 = persistentID;
  v22 = v17;
  v23 = v20;
  v24 = identifierCopy;
  v25 = samplesCopy;
  v26 = entityCopy;
  v27 = [self performReadTransactionWithHealthDatabase:database error:error block:v31];

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

+ (id)_selectSQLIncludeSession:(uint64_t)session
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
  disambiguatedDatabaseTable = [v3 disambiguatedDatabaseTable];
  v11 = [v5 stringWithFormat:@"SELECT %@, %@, dp.%@                                            FROM %@ AS o                                            INNER JOIN %@ dp ON o.%@ = dp.%@                                            LEFT JOIN %@ oa ON o.%@ = oa.%@ AND oa.%@ = ? AND oa.%@ %@ ?                                            WHERE o.%@ = ?", @"status", @"modification_date", @"source_id", v7, v8, @"provenance", v9, disambiguatedDatabaseTable, @"uuid", @"object", @"source", @"session", v6, @"uuid"];

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

+ (id)authorizationRecordsBySourceForSampleWithUUID:(id)d profile:(id)profile error:(id *)error
{
  dCopy = d;
  v9 = MEMORY[0x277CBEB38];
  profileCopy = profile;
  v11 = objc_alloc_init(v9);
  database = [profileCopy database];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91__HDObjectAuthorizationEntity_authorizationRecordsBySourceForSampleWithUUID_profile_error___block_invoke;
  v18[3] = &unk_278614698;
  v20 = v11;
  selfCopy = self;
  v19 = dCopy;
  v13 = v11;
  v14 = dCopy;
  LODWORD(error) = [self performReadTransactionWithHealthDatabase:database error:error block:v18];

  if (error)
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

+ (id)pruneWithProfile:(id)profile nowDate:(id)date limit:(unint64_t)limit error:(id *)error
{
  profileCopy = profile;
  dateCopy = date;
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v12 = [hk_gregorianCalendar hk_dateBySubtractingDays:*MEMORY[0x277CCBC20] fromDate:dateCopy];

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
  database = [profileCopy database];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __68__HDObjectAuthorizationEntity_pruneWithProfile_nowDate_limit_error___block_invoke;
  v22[3] = &unk_278616AA0;
  v19 = v17;
  v24 = &v26;
  limitCopy = limit;
  v23 = v19;
  LODWORD(error) = [(HDHealthEntity *)HDObjectAuthorizationEntity performWriteTransactionWithHealthDatabase:database error:error block:v22];

  if (error)
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