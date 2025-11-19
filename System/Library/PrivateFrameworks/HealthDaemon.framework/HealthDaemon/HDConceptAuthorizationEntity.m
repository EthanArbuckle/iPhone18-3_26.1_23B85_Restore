@interface HDConceptAuthorizationEntity
+ (BOOL)deleteConceptAuthorizationRecordsMatchingPredicate:(id)a3 transaction:(id)a4 error:(id *)a5;
+ (BOOL)insertConceptAuthorizationRecords:(id)a3 transaction:(id)a4 profile:(id)a5 error:(id *)a6;
+ (BOOL)resetConceptAuthorizationRecordsForSource:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)authorizationRecordsForHealthConceptIdentifier:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)authorizationRecordsForHealthConceptIdentifiers:(id)a3 sourceEntity:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)authorizationRecordsForMedications:(id)a3 sourceEntity:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:(id)a3 profile:(id)a4 error:(id *)a5;
+ (uint64_t)_enumerateConceptAuthorizationRecordsAndSourcesWithPredicate:(void *)a3 transaction:(void *)a4 profile:(uint64_t)a5 error:(void *)a6 enumerationHandler:;
+ (uint64_t)_enumerateConceptAuthorizationRecordsWithPredicate:(uint64_t)a1 limit:(void *)a2 transaction:(void *)a3 error:(uint64_t)a4 enumerationHandler:(void *)a5;
@end

@implementation HDConceptAuthorizationEntity

+ (BOOL)insertConceptAuthorizationRecords:(id)a3 transaction:(id)a4 profile:(id)a5 error:(id *)a6
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v48 = a4;
  v47 = a5;
  v43 = [v47 currentSyncIdentityPersistentID];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v9;
  v46 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v46)
  {
    v45 = *v52;
    *&v10 = 138543618;
    v42 = v10;
    while (2)
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v52 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v51 + 1) + 8 * i);
        v13 = v48;
        v14 = v47;
        v49 = objc_opt_self();
        v15 = [MEMORY[0x277D10B70] falsePredicate];
        v16 = MEMORY[0x277CCDB40];
        v17 = [v12 semanticIdentifierString];
        v18 = [v16 semanticIdentifierFromSemanticIdentifierString:v17 profile:v14];

        v50 = v14;
        if (v18)
        {
          v19 = [v14 daemon];
          v20 = [v19 userDomainConceptEntityRegistry];
          v21 = [v18 typeIdentifier];
          v22 = a6;
          v23 = [v20 userDomainConceptEntityClassForTypeIdentifier:v21];

          v24 = v23;
          a6 = v22;
          v25 = [v24 predicateMatchingSemanticIdentifier:v18];

          v15 = v25;
        }

        v26 = [v13 protectedDatabase];
        v55 = 0;
        v27 = [(HDSQLiteEntity *)HDUserDomainConceptEntity anyInDatabase:v26 predicate:v15 error:&v55];
        v28 = v55;

        if (!v27 && v28)
        {
          _HKInitializeLogging();
          v37 = HKLogHealthOntology();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v41 = HKSensitiveLogItem();
            *buf = 138543874;
            *&buf[4] = v49;
            *&buf[12] = 2114;
            *&buf[14] = v41;
            *&buf[22] = 2114;
            v59 = v28;
            _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "%{public}@ Failed to look up exisitng user domain concept when trying to insert record %{public}@ Error: %{public}@", buf, 0x20u);
          }

          if (a6)
          {
            v38 = v28;
            *a6 = v28;
          }

          else
          {
            _HKLogDroppedError();
          }

LABEL_26:
          v36 = 0;
          goto LABEL_27;
        }

        if (v27)
        {
          v29 = v12;
          v30 = v13;
          v31 = objc_opt_self();
          v32 = [v30 protectedDatabase];

          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __112__HDConceptAuthorizationEntity__insertConceptAuthorizationRecord_syncProvenance_syncIdentity_transaction_error___block_invoke;
          v56[3] = &__block_descriptor_40_e15___NSString_8__0l;
          v56[4] = v31;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __112__HDConceptAuthorizationEntity__insertConceptAuthorizationRecord_syncProvenance_syncIdentity_transaction_error___block_invoke_2;
          v59 = &unk_278619A20;
          v60 = v29;
          v61 = 0;
          v62 = v43;
          v33 = v29;
          LODWORD(v31) = [v32 executeCachedStatementForKey:&_insertConceptAuthorizationRecord_syncProvenance_syncIdentity_transaction_error__statementKey error:a6 SQLGenerator:v56 bindingHandler:buf enumerationHandler:0];

          if (!v31)
          {
            goto LABEL_26;
          }
        }

        else
        {
          _HKInitializeLogging();
          v34 = HKLogHealthOntology();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = HKSensitiveLogItem();
            *buf = v42;
            *&buf[4] = v49;
            *&buf[12] = 2114;
            *&buf[14] = v35;
            _os_log_error_impl(&dword_228986000, v34, OS_LOG_TYPE_ERROR, "%{public}@ Attempted to insert record without an existing UDC. Not returning an error. %{public}@", buf, 0x16u);
          }
        }
      }

      v36 = 1;
      v46 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v36 = 1;
  }

LABEL_27:

  v39 = *MEMORY[0x277D85DE8];
  return v36;
}

+ (uint64_t)_enumerateConceptAuthorizationRecordsWithPredicate:(uint64_t)a1 limit:(void *)a2 transaction:(void *)a3 error:(uint64_t)a4 enumerationHandler:(void *)a5
{
  v8 = a5;
  v9 = a3;
  v10 = a2;
  v11 = objc_opt_self();
  v12 = [v9 databaseForEntityClass:v11];

  v13 = [v11 queryWithDatabase:v12 predicate:v10 limit:*MEMORY[0x277D10C08] orderingTerms:0 groupBy:0];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __126__HDConceptAuthorizationEntity__enumerateConceptAuthorizationRecordsWithPredicate_limit_transaction_error_enumerationHandler___block_invoke;
  v17[3] = &unk_278617EE8;
  v18 = v8;
  v19 = v11;
  v14 = v8;
  v15 = [v13 enumeratePersistentIDsAndProperties:&unk_283CB02D0 error:a4 enumerationHandler:v17];

  return v15;
}

+ (BOOL)resetConceptAuthorizationRecordsForSource:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__HDConceptAuthorizationEntity_resetConceptAuthorizationRecordsForSource_profile_error___block_invoke;
  v14[3] = &unk_278613218;
  v15 = v8;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  LOBYTE(a5) = [a1 performWriteTransactionWithHealthDatabase:v10 error:a5 block:v14];

  return a5;
}

BOOL __88__HDConceptAuthorizationEntity_resetConceptAuthorizationRecordsForSource_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) sourceUUIDWithProfile:*(a1 + 40) error:a3];
  if (v6)
  {
    v7 = [MEMORY[0x277D10B18] predicateWithProperty:@"source_uuid" equalToValue:v6];
    v8 = [HDConceptAuthorizationEntity deleteConceptAuthorizationRecordsMatchingPredicate:v7 transaction:v5 error:a3];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (BOOL)deleteConceptAuthorizationRecordsMatchingPredicate:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a4 protectedDatabase];
  LOBYTE(a5) = [(HDSQLiteEntity *)HDConceptAuthorizationEntity deleteEntitiesInDatabase:v8 predicate:v7 error:a5];

  return a5;
}

+ (id)authorizationRecordsForHealthConceptIdentifiers:(id)a3 sourceEntity:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [a4 sourceUUIDWithProfile:v11 error:a6];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [v11 database];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __107__HDConceptAuthorizationEntity_authorizationRecordsForHealthConceptIdentifiers_sourceEntity_profile_error___block_invoke;
    v19[3] = &unk_278613550;
    v20 = v10;
    v21 = v12;
    v23 = a1;
    v15 = v13;
    v22 = v15;
    v16 = [a1 performReadTransactionWithHealthDatabase:v14 error:a6 block:v19];

    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __107__HDConceptAuthorizationEntity_authorizationRecordsForHealthConceptIdentifiers_sourceEntity_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = HDConceptAuthorizationEntityPredicateForHealthConceptIdentifiers(v5);
  v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"source_uuid" equalToValue:*(a1 + 40)];
  v9 = *(a1 + 56);
  v10 = MEMORY[0x277D10B20];
  v18[0] = v7;
  v18[1] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v12 = [v10 predicateMatchingAllPredicates:v11];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __107__HDConceptAuthorizationEntity_authorizationRecordsForHealthConceptIdentifiers_sourceEntity_profile_error___block_invoke_2;
  v16[3] = &unk_27862D330;
  v17 = *(a1 + 48);
  v13 = [HDConceptAuthorizationEntity _enumerateConceptAuthorizationRecordsWithPredicate:v9 limit:v12 transaction:v6 error:a3 enumerationHandler:v16];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)authorizationRecordsForMedications:(id)a3 sourceEntity:(id)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [v10 hk_map:&__block_literal_global_226];
  v14 = [a1 authorizationRecordsForHealthConceptIdentifiers:v13 sourceEntity:v12 profile:v11 error:a6];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__HDConceptAuthorizationEntity_authorizationRecordsForMedications_sourceEntity_profile_error___block_invoke_2;
  v18[3] = &unk_27862D380;
  v19 = v10;
  v15 = v10;
  v16 = [v14 hk_mapToDictionary:v18];

  return v16;
}

id __94__HDConceptAuthorizationEntity_authorizationRecordsForMedications_sourceEntity_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 medication];
  v3 = [v2 identifier];

  return v3;
}

void __94__HDConceptAuthorizationEntity_authorizationRecordsForMedications_sourceEntity_profile_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__HDConceptAuthorizationEntity_authorizationRecordsForMedications_sourceEntity_profile_error___block_invoke_3;
  v10[3] = &unk_27862D358;
  v11 = v5;
  v7 = v5;
  v8 = a3;
  v9 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v6, "indexOfObjectPassingTest:", v10)}];
  v8[2](v8, v9, v7);
}

uint64_t __94__HDConceptAuthorizationEntity_authorizationRecordsForMedications_sourceEntity_profile_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 medication];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];
  v6 = [v4 isEqual:v5];

  return v6;
}

+ (id)authorizationRecordsForHealthConceptIdentifier:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = MEMORY[0x277CBEB38];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  v12 = HDConceptAuthorizationEntityPredicateForHealthConceptIdentifier(v10, 1);

  v13 = [v8 database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __93__HDConceptAuthorizationEntity_authorizationRecordsForHealthConceptIdentifier_profile_error___block_invoke;
  v20[3] = &unk_278613550;
  v21 = v12;
  v22 = v8;
  v23 = v11;
  v24 = a1;
  v14 = v11;
  v15 = v8;
  v16 = v12;
  LODWORD(a5) = [(HDHealthEntity *)HDConceptAuthorizationEntity performReadTransactionWithHealthDatabase:v13 error:a5 block:v20];

  if (a5)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

uint64_t __93__HDConceptAuthorizationEntity_authorizationRecordsForHealthConceptIdentifier_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__HDConceptAuthorizationEntity_authorizationRecordsForHealthConceptIdentifier_profile_error___block_invoke_2;
  v10[3] = &unk_27862D3A8;
  v7 = *(a1 + 56);
  v11 = *(a1 + 48);
  v8 = [(HDConceptAuthorizationEntity *)v7 _enumerateConceptAuthorizationRecordsAndSourcesWithPredicate:v5 transaction:a2 profile:v6 error:a3 enumerationHandler:v10];

  return v8;
}

+ (uint64_t)_enumerateConceptAuthorizationRecordsAndSourcesWithPredicate:(void *)a3 transaction:(void *)a4 profile:(uint64_t)a5 error:(void *)a6 enumerationHandler:
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = objc_opt_self();
  v15 = [v11 sourceManager];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __138__HDConceptAuthorizationEntity__enumerateConceptAuthorizationRecordsAndSourcesWithPredicate_transaction_profile_error_enumerationHandler___block_invoke;
  v20[3] = &unk_27862D3D0;
  v22 = v10;
  v23 = v14;
  v21 = v15;
  v16 = v10;
  v17 = v15;
  v18 = [HDConceptAuthorizationEntity _enumerateConceptAuthorizationRecordsWithPredicate:v14 limit:v13 transaction:v12 error:a5 enumerationHandler:v20];

  return v18;
}

+ (id)fetchSourcesWithExistingAuthorizationsForHealthConceptDomain:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277D10B18];
  v8 = a4;
  v9 = [v7 predicateWithProperty:@"concept_identifier_domain" equalToValue:a3];
  v10 = HDConceptAuthorizationEntityPredicateForStatus(0, 0);
  v11 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v9 otherPredicate:v10];
  v12 = v8;
  v13 = objc_opt_self();
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__187;
  v31 = __Block_byref_object_dispose__187;
  v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = [v12 database];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __74__HDConceptAuthorizationEntity__clientSourcesWithPredicate_profile_error___block_invoke;
  v22 = &unk_278626C38;
  v26 = v13;
  v15 = v11;
  v23 = v15;
  v16 = v12;
  v24 = v16;
  v25 = &v27;
  LODWORD(a5) = [(HDHealthEntity *)HDConceptAuthorizationEntity performReadTransactionWithHealthDatabase:v14 error:a5 block:&v19];

  if (a5)
  {
    v17 = [v28[5] copy];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v27, 8);

  return v17;
}

__CFString *__112__HDConceptAuthorizationEntity__insertConceptAuthorizationRecord_syncProvenance_syncIdentity_transaction_error___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_self();
  return @"INSERT OR REPLACE INTO concept_authorizations (concept_identifier_domain, concept_identifier_underlying_identifier, semantic_identifier_string, source_uuid, status, modification_date, sync_provenance, sync_identity) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
}

uint64_t __112__HDConceptAuthorizationEntity__insertConceptAuthorizationRecord_syncProvenance_syncIdentity_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) identifier];
  v5 = [v4 domain];
  HDSQLiteBindStringToStatement();

  v6 = [*(a1 + 32) identifier];
  v7 = [v6 underlyingIdentifier];
  HDSQLiteBindStringToStatement();

  v8 = [*(a1 + 32) semanticIdentifierString];
  HDSQLiteBindStringToStatement();

  v9 = [*(a1 + 32) sourceUUID];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 5, [*(a1 + 32) status]);
  [*(a1 + 32) modificationDate];
  sqlite3_bind_double(a2, 6, v10);
  sqlite3_bind_int64(a2, 7, *(a1 + 40));
  v11 = *(a1 + 48);

  return sqlite3_bind_int64(a2, 8, v11);
}

uint64_t __126__HDConceptAuthorizationEntity__enumerateConceptAuthorizationRecordsWithPredicate_limit_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  objc_opt_self();
  v3 = HDSQLiteColumnWithNameAsString();
  v4 = HDSQLiteColumnWithNameAsString();
  v5 = [objc_alloc(MEMORY[0x277CCD4B0]) initWithDomain:v3 underlyingIdentifier:v4];
  v6 = HDSQLiteColumnWithNameAsString();
  v7 = HDSQLiteColumnWithNameAsUUID();
  v8 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v10 = [objc_alloc(MEMORY[0x277CCD1C8]) initWithHealthConceptIdentifier:v5 semanticIdentifierString:v6 sourceUUID:v7 status:v8 modificationDate:v9];

  if (v10)
  {
    v11 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __138__HDConceptAuthorizationEntity__enumerateConceptAuthorizationRecordsAndSourcesWithPredicate_transaction_profile_error_enumerationHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a1[4];
  v7 = [v5 sourceUUID];
  v17 = 0;
  v8 = [v6 clientSourceForUUID:v7 error:&v17];
  v9 = v17;

  if (v8)
  {
    v10 = (*(a1[5] + 16))();
  }

  else if (v9)
  {
    if (a3)
    {
      v13 = v9;
      v10 = 0;
      *a3 = v9;
    }

    else
    {
      _HKLogDroppedError();
      v10 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogAuthorization();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = a1[6];
      v16 = [v5 sourceUUID];
      *buf = 138412546;
      v19 = v15;
      v20 = 2114;
      v21 = v16;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[%@] Found an authorization record for a source that does not exist (%{public}@); ignoring this record", buf, 0x16u);
    }

    v10 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __74__HDConceptAuthorizationEntity__clientSourcesWithPredicate_profile_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__HDConceptAuthorizationEntity__clientSourcesWithPredicate_profile_error___block_invoke_2;
  v9[3] = &unk_27862D3F8;
  v7 = a1[7];
  v9[4] = a1[6];
  return [(HDConceptAuthorizationEntity *)v7 _enumerateConceptAuthorizationRecordsAndSourcesWithPredicate:v5 transaction:a2 profile:v6 error:a3 enumerationHandler:v9];
}

@end