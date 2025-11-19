@interface HDMedicalUserDomainConceptEntity
+ (BOOL)insertConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)updateConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)willDeleteConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 syncProvenance:(int64_t)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8;
+ (id)_recursiveSQLForMappedUDCs;
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)foreignKeys;
+ (id)newUserDomainConceptForRefreshWithCodingCollection:(id)a3 propertyCollection:(id)a4;
+ (id)predicateMatchingSemanticDuplicatesOf:(id)a3;
+ (id)predicateMatchingSemanticIdentifier:(id)a3;
+ (id)privateDataEntities;
+ (id)privateSubEntities;
+ (id)pruneWithProfile:(id)a3 nowDate:(id)a4 limit:(unint64_t)a5 error:(id *)a6;
+ (void)_bindRecursiveMappedUDCStatement:(_DWORD *)a3 bindingIndex:;
@end

@implementation HDMedicalUserDomainConceptEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"udc_id";
  v2 = +[HDUserDomainConceptEntity defaultForeignKey];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)privateSubEntities
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDMedicalUserDomainConceptEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (id)privateDataEntities
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)insertConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 protectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__HDMedicalUserDomainConceptEntity_insertConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
  v13[3] = &unk_278613B58;
  v14 = v9;
  v15 = a4;
  v11 = v9;
  LOBYTE(a6) = [v10 executeCachedStatementForKey:&insertConcreteUserDomainConcept_userDomainConceptID_transaction_error__statementKey_0 error:a6 SQLGenerator:&__block_literal_global_168 bindingHandler:v13 enumerationHandler:0];

  return a6;
}

void __106__HDMedicalUserDomainConceptEntity_insertConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v3 = [*(a1 + 32) countryCode];
  HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)updateConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 protectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__HDMedicalUserDomainConceptEntity_updateConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
  v13[3] = &unk_278613B58;
  v14 = v9;
  v15 = a4;
  v11 = v9;
  LOBYTE(a6) = [v10 executeCachedStatementForKey:&updateConcreteUserDomainConcept_userDomainConceptID_transaction_error__statementKey_0 error:a6 SQLGenerator:&__block_literal_global_328_0 bindingHandler:v13 enumerationHandler:0];

  return a6;
}

uint64_t __106__HDMedicalUserDomainConceptEntity_updateConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) countryCode];
  HDSQLiteBindStringToStatement();

  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v5);
}

+ (BOOL)willDeleteConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 syncProvenance:(int64_t)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = [v12 daemon];
  v15 = [v14 behavior];
  v16 = [v15 supportsOntology];

  if (v16)
  {
    v17 = [v12 internalContentDatabaseManager];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __133__HDMedicalUserDomainConceptEntity_willDeleteConcreteUserDomainConcept_userDomainConceptID_syncProvenance_profile_transaction_error___block_invoke;
    v20[3] = &unk_278625CC8;
    v21 = v11;
    v22 = v12;
    v18 = [v17 performTransactionWithDatabaseTransaction:v13 error:a8 transactionHandler:v20];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

+ (id)disambiguatedSQLForProperty:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"country_code"])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [a1 disambiguatedDatabaseTable];
    v7 = [v5 stringWithFormat:@"%@.%@", v6, @"country_code"];
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___HDMedicalUserDomainConceptEntity;
    v7 = objc_msgSendSuper2(&v9, sel_disambiguatedSQLForProperty_, v4);
  }

  return v7;
}

+ (id)predicateMatchingSemanticIdentifier:(id)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 UUID];

  if (v4)
  {
    v5 = [v3 UUID];
    v6 = HDUserDomainConceptEntityPredicateForConceptUUID(v5, 1);
  }

  else
  {
    v7 = [v3 countryCode];

    v8 = MEMORY[0x277D10B20];
    v5 = [v3 typeIdentifier];
    v9 = HDUserDomainConceptEntityPredicateForConceptsWithTypeIdentifier(v5);
    v10 = v9;
    if (v7)
    {
      v18[0] = v9;
      v11 = [v3 medicalCoding];
      v12 = HDUserDomainConceptEntityPredicateForMedicalCoding(v11);
      v18[1] = v12;
      v13 = [v3 countryCode];
      v14 = [MEMORY[0x277D10B18] predicateWithProperty:@"country_code" equalToValue:v13];
      v18[2] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
      v6 = [v8 predicateMatchingAllPredicates:v15];
    }

    else
    {
      v19[0] = v9;
      v11 = [v3 medicalCoding];
      v12 = HDUserDomainConceptEntityPredicateForMedicalCoding(v11);
      v19[1] = v12;
      v13 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"country_code"];
      v19[2] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
      v6 = [v8 predicateMatchingAllPredicates:v14];
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)newUserDomainConceptForRefreshWithCodingCollection:(id)a3 propertyCollection:(id)a4
{
  v5 = MEMORY[0x277CCD610];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v8 initWithCategoryTypes:MEMORY[0x277CBEBF8] countryCode:0 codingCollection:v7 propertyCollection:v6];

  return v9;
}

+ (id)predicateMatchingSemanticDuplicatesOf:(id)a3
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 firstOntologyCoding];
  v5 = [v3 firstAdhocCoding];
  v6 = v4;
  if ((v4 || (v6 = v5) != 0) && (HDUserDomainConceptEntityPredicateForMedicalCoding(v6), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v21 = MEMORY[0x277D10B20];
    v24 = v5;
    v9 = MEMORY[0x277D10B18];
    v23 = [v3 UUID];
    v22 = [v9 predicateWithProperty:@"uuid" notEqualToValue:v23];
    v25[0] = v22;
    v10 = MEMORY[0x277D10B18];
    v11 = MEMORY[0x277CCABB0];
    v12 = [v3 identifier];
    v13 = [v11 numberWithInteger:{objc_msgSend(v12, "code")}];
    v14 = [v10 predicateWithProperty:@"type" equalToValue:v13];
    v25[1] = v14;
    v25[2] = v8;
    v15 = [v3 countryCode];
    v16 = [MEMORY[0x277D10B18] predicateWithProperty:@"country_code" equalToValue:v15];
    v25[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    v18 = [v21 predicateMatchingAllPredicates:v17];

    v5 = v24;
  }

  else
  {
    v18 = [MEMORY[0x277D10B70] falsePredicate];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)pruneWithProfile:(id)a3 nowDate:(id)a4 limit:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__134;
  v28 = __Block_byref_object_dispose__134;
  v29 = 0;
  v12 = [v10 database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__HDMedicalUserDomainConceptEntity_pruneWithProfile_nowDate_limit_error___block_invoke;
  v18[3] = &unk_278625CF0;
  v21 = &v24;
  v22 = a1;
  v13 = v10;
  v19 = v13;
  v14 = v11;
  v20 = v14;
  v23 = a5;
  LODWORD(a6) = [a1 performWriteTransactionWithHealthDatabase:v12 error:a6 block:v18];

  if (a6)
  {
    v15 = v25[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  _Block_object_dispose(&v24, 8);

  return v16;
}

BOOL __73__HDMedicalUserDomainConceptEntity_pruneWithProfile_nowDate_limit_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = v6;
  objc_opt_self();
  v12 = v10;
  v13 = objc_opt_self();
  v14 = [v12 protectedDatabase];
  v45 = MEMORY[0x277D85DD0];
  v46 = 3221225472;
  v47 = __107__HDMedicalUserDomainConceptEntity__clearPendingPruneDateForMappedUDCsWithTransaction_nowDate_limit_error___block_invoke;
  v48 = &__block_descriptor_40_e15___NSString_8__0l;
  v49 = v13;
  v57 = MEMORY[0x277D85DD0];
  v58 = 3221225472;
  v59 = __107__HDMedicalUserDomainConceptEntity__clearPendingPruneDateForMappedUDCsWithTransaction_nowDate_limit_error___block_invoke_2;
  v60 = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v61 = v13;
  v62 = v8;
  LOBYTE(v13) = [v14 executeCachedStatementForKey:&_clearPendingPruneDateForMappedUDCsWithTransaction_nowDate_limit_error__statementKey error:a3 SQLGenerator:&v45 bindingHandler:&v57 enumerationHandler:0];

  if ((v13 & 1) == 0)
  {

    v17 = 0;
    goto LABEL_7;
  }

  v15 = MEMORY[0x277CCABB0];
  v16 = [v12 protectedDatabase];
  v17 = [v15 numberWithInt:{objc_msgSend(v16, "getChangesCount")}];

  if (!v17)
  {
LABEL_7:
    v26 = 0;
    goto LABEL_8;
  }

  v18 = [v17 integerValue];
  if (v8 > v18)
  {
    v43 = v8 - v18;
    v40 = v9;
    v41 = v9;
    v19 = v12;
    v20 = v11;
    v21 = objc_opt_self();
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v22 = [v19 protectedDatabase];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __105__HDMedicalUserDomainConceptEntity__tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error___block_invoke;
    v52[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v52[4] = v21;
    v57 = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __105__HDMedicalUserDomainConceptEntity__tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error___block_invoke_2;
    v60 = &unk_278619A20;
    v62 = v21;
    v39 = v20;
    v61 = v39;
    v63 = v43;
    v45 = MEMORY[0x277D85DD0];
    v46 = 3221225472;
    v47 = __105__HDMedicalUserDomainConceptEntity__tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error___block_invoke_3;
    v48 = &unk_278625D18;
    v51 = &v53;
    v23 = v41;
    v49 = v23;
    v24 = v19;
    v50 = v24;
    LODWORD(v19) = [v22 executeCachedStatementForKey:&_tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error__statementKey error:a3 SQLGenerator:v52 bindingHandler:&v57 enumerationHandler:&v45];

    if (v19)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithInteger:v54[3]];
    }

    else
    {
      v25 = 0;
    }

    _Block_object_dispose(&v53, 8);
    if (v25)
    {
      v30 = [v25 integerValue];
      if (v43 > v30)
      {
        v42 = v30;
        v44 = v43 - v30;
        v31 = v24;
        v32 = v39;
        v33 = objc_opt_self();
        v34 = [v31 protectedDatabase];
        v45 = MEMORY[0x277D85DD0];
        v46 = 3221225472;
        v47 = __92__HDMedicalUserDomainConceptEntity__markNewUnmappedUDCsWithTransaction_nowDate_limit_error___block_invoke;
        v48 = &__block_descriptor_40_e15___NSString_8__0l;
        v49 = v33;
        v57 = MEMORY[0x277D85DD0];
        v58 = 3221225472;
        v59 = __92__HDMedicalUserDomainConceptEntity__markNewUnmappedUDCsWithTransaction_nowDate_limit_error___block_invoke_2;
        v60 = &unk_278619A20;
        v35 = v32;
        v61 = v35;
        v62 = v33;
        v63 = v44;
        LODWORD(v33) = [v34 executeCachedStatementForKey:&_markNewUnmappedUDCsWithTransaction_nowDate_limit_error__statementKey error:a3 SQLGenerator:&v45 bindingHandler:&v57 enumerationHandler:0];

        v36 = 0;
        if (v33)
        {
          v37 = MEMORY[0x277CCABB0];
          v38 = [v31 protectedDatabase];
          v36 = [v37 numberWithInt:{objc_msgSend(v38, "getChangesCount")}];
        }

        if (v36)
        {
          v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v36, "integerValue") + v42}];
        }

        else
        {
          v26 = 0;
        }

        v9 = v40;

        goto LABEL_22;
      }

      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v9 = v40;
LABEL_22:

    goto LABEL_8;
  }

  v17 = v17;
  v26 = v17;
LABEL_8:

  v27 = *(*(a1 + 48) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

id __107__HDMedicalUserDomainConceptEntity__clearPendingPruneDateForMappedUDCsWithTransaction_nowDate_limit_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = +[(HDSQLiteSchemaEntity *)HDUserDomainConceptPropertyEntity];
  v4 = *(a1 + 32);
  v5 = +[HDMedicalUserDomainConceptEntity _recursiveSQLForMappedUDCs];
  v6 = [v2 initWithFormat:@"DELETE FROM %@ WHERE (%@ IN (%@) SELECT %@ FROM %@) AND %@ = ? LIMIT ?"], v3, @"udc_id", v5, @"udc_id", @"recursive_mapped_concepts", @"property_type");

  return v6;
}

+ (id)_recursiveSQLForMappedUDCs
{
  objc_opt_self();
  v0 = +[(HDSQLiteSchemaEntity *)HDUserDomainConceptEntity];
  v1 = +[(HDSQLiteSchemaEntity *)HDMedicalUserDomainConceptMappingEntity];
  v2 = +[(HDSQLiteSchemaEntity *)HDUserDomainConceptLinkEntity];
  v3 = MEMORY[0x277CBEA60];
  v4 = HKWeakConceptLinkTypes();
  v5 = [v3 hk_arrayWithCount:objc_msgSend(v4 generator:{"count"), &__block_literal_global_359}];
  v6 = [v5 componentsJoinedByString:{@", "}];

  v7 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"WITH RECURSIVE %@(%@, %@) AS (SELECT %@, %@ FROM %@ INNER JOIN %@ USING(%@) UNION SELECT %@.%@, %@.%@ FROM %@ INNER JOIN %@ USING (%@) INNER JOIN %@ ON %@.%@ = %@ WHERE %@ NOT IN (%@) UNION SELECT %@.%@, %@.%@ FROM %@ INNER JOIN %@ ON %@ = %@.%@ INNER JOIN %@ ON %@.%@ = %@.%@ WHERE %@ NOT IN (%@)"), CFSTR("recursive_mapped_concepts"), CFSTR("udc_id"), CFSTR("uuid"), CFSTR("udc_id"), CFSTR("uuid"), v0, v1, CFSTR("udc_id"), v0, CFSTR("udc_id"), v0, CFSTR("uuid"), v0, v2, CFSTR("udc_id"), CFSTR("recursive_mapped_concepts"), CFSTR("recursive_mapped_concepts"), CFSTR("uuid"), CFSTR("target_uuid"), CFSTR("link_type"), v6, v0, CFSTR("udc_id"), v0, CFSTR("uuid"), v0, v2, CFSTR("target_uuid"), v0, CFSTR("uuid"), CFSTR("recursive_mapped_concepts"), CFSTR("recursive_mapped_concepts"), CFSTR("udc_id"), v2, CFSTR("udc_id"), CFSTR("link_type"), v6;

  return v7;
}

uint64_t __107__HDMedicalUserDomainConceptEntity__clearPendingPruneDateForMappedUDCsWithTransaction_nowDate_limit_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v7 = 1;
  [(HDMedicalUserDomainConceptEntity *)*(a1 + 32) _bindRecursiveMappedUDCStatement:a2 bindingIndex:&v7];
  v4 = v7;
  sqlite3_bind_int64(a2, v7, 1);
  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, v4 + 1, v5);
}

+ (void)_bindRecursiveMappedUDCStatement:(_DWORD *)a3 bindingIndex:
{
  v19 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v4 = 1;
  do
  {
    v5 = v4;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = HKWeakConceptLinkTypes();
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = *a3;
          HDSQLiteBindFoundationValueToStatement();
          ++*a3;
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v4 = 0;
  }

  while ((v5 & 1) != 0);
  v13 = *MEMORY[0x277D85DE8];
}

id __105__HDMedicalUserDomainConceptEntity__tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error___block_invoke(uint64_t a1)
{
  v2 = +[(HDSQLiteSchemaEntity *)HDMedicalUserDomainConceptEntity];
  v3 = +[(HDSQLiteSchemaEntity *)HDUserDomainConceptPropertyEntity];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = +[(HDSQLiteSchemaEntity *)HDUserDomainConceptEntity];
  v6 = *(a1 + 32);
  v7 = +[HDMedicalUserDomainConceptEntity _recursiveSQLForMappedUDCs];
  v8 = [v4 initWithFormat:@"SELECT %@, %@ FROM %@ INNER JOIN %@ USING(%@) INNER JOIN %@ USING(%@) WHERE NOT EXISTS (%@) SELECT 1 FROM %@ WHERE %@.%@ = %@.%@ AND property_type = ? AND date_value <= ? LIMIT ?"], @"uuid", @"creation_date", v2, v5, @"udc_id", v3, @"udc_id", v7, @"recursive_mapped_concepts", @"recursive_mapped_concepts", @"udc_id", v2, @"udc_id");

  return v8;
}

uint64_t __105__HDMedicalUserDomainConceptEntity__tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v8 = 1;
  [(HDMedicalUserDomainConceptEntity *)*(a1 + 40) _bindRecursiveMappedUDCStatement:a2 bindingIndex:&v8];
  v4 = v8;
  sqlite3_bind_int64(a2, v8, 1);
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, v4 + 1, v5);
  v6 = *(a1 + 48);

  return sqlite3_bind_int64(a2, v4 + 2, v6);
}

BOOL __105__HDMedicalUserDomainConceptEntity__tombstoneOldUnmappedUDCsWithProfile_transaction_nowDate_limit_error___block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  ++*(*(a1[6] + 8) + 24);
  v6 = MEMORY[0x22AAC6CA0](a2, 0);
  MEMORY[0x22AAC6C50](a2, 1);
  v7 = [MEMORY[0x277CCDAF0] deletedUserDomainConceptWithUUID:v6 creationTimestamp:?];
  v8 = [HDUserDomainConceptEntity storeUserDomainConcept:v7 method:3 profile:a1[4] transaction:a1[5] error:a3]!= 0;

  return v8;
}

id __92__HDMedicalUserDomainConceptEntity__markNewUnmappedUDCsWithTransaction_nowDate_limit_error___block_invoke(uint64_t a1)
{
  v2 = +[(HDSQLiteSchemaEntity *)HDMedicalUserDomainConceptEntity];
  v3 = +[(HDSQLiteSchemaEntity *)HDUserDomainConceptPropertyEntity];
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *(a1 + 32);
  v5 = +[HDMedicalUserDomainConceptEntity _recursiveSQLForMappedUDCs];
  v6 = [v8 initWithFormat:@"INSERT OR REPLACE INTO %@ (%@, %@, %@, %@, %@, %@, %@) SELECT %@, ?, ?, ?, ?, ?, ? FROM %@ WHERE (NOT EXISTS (%@) SELECT 1 FROM %@ WHERE %@.%@ = %@.%@) AND NOT EXISTS (SELECT 1 FROM %@ WHERE(%@.%@ = %@.%@ AND %@ = ?)) LIMIT ?"], v3, @"udc_id", @"category", @"property_type", @"version", @"timestamp", @"value_type", @"date_value", @"udc_id", v2, v5, @"recursive_mapped_concepts", v2, @"udc_id", @"recursive_mapped_concepts", @"udc_id", v3, v2, @"udc_id", v3, @"udc_id", @"property_type");

  return v6;
}

uint64_t __92__HDMedicalUserDomainConceptEntity__markNewUnmappedUDCsWithTransaction_nowDate_limit_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v5 = v4;
  sqlite3_bind_int64(a2, 1, 2);
  sqlite3_bind_int64(a2, 2, 1);
  sqlite3_bind_int64(a2, 3, 0);
  sqlite3_bind_double(a2, 4, v5);
  sqlite3_bind_int64(a2, 5, 5);
  v9 = 7;
  sqlite3_bind_double(a2, 6, v5 + 2592000.0);
  [(HDMedicalUserDomainConceptEntity *)*(a1 + 40) _bindRecursiveMappedUDCStatement:a2 bindingIndex:&v9];
  v6 = v9;
  sqlite3_bind_int64(a2, v9, 1);
  v7 = *(a1 + 48);

  return sqlite3_bind_int64(a2, v6 + 1, v7);
}

@end