@interface HDUserDomainMedicalCodingEntity
+ (BOOL)_getPersistentIDForString:(void *)a3 transaction:(void *)a4 result:(uint64_t)a5 error:;
+ (BOOL)addPropertyDataToCodable:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)enumerateMedicalCodingsWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)insertDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)retrieveDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 mutableUserDomainConceptProperties:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (id)foreignKeys;
+ (id)joinClausesForProperty:(id)a3;
+ (id)privateSubEntities;
+ (id)triggers;
+ (uint64_t)_enumerateMedicalCodingsWithUserDomainConceptID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:;
@end

@implementation HDUserDomainMedicalCodingEntity

+ (id)foreignKeys
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"udc_id";
  v2 = +[HDUserDomainConceptEntity defaultForeignKey];
  v11[0] = v2;
  v10[1] = @"system";
  v3 = +[(HDHealthEntity *)HDUserDomainMedicalCodingStringEntity];
  v11[1] = v3;
  v10[2] = @"code";
  v4 = +[(HDHealthEntity *)HDUserDomainMedicalCodingStringEntity];
  v11[2] = v4;
  v10[3] = @"version";
  v5 = +[(HDHealthEntity *)HDUserDomainMedicalCodingStringEntity];
  v11[3] = v5;
  v10[4] = @"display_string";
  v6 = +[(HDHealthEntity *)HDUserDomainMedicalCodingStringEntity];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)triggers
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = +[HDUserDomainMedicalCodingStringEntity databaseTable];
  v5 = *MEMORY[0x277D10A40];
  v6 = [a1 databaseTable];
  v7 = +[HDUserDomainMedicalCodingStringEntity databaseTable];
  v8 = [v3 stringWithFormat:@"DELETE FROM %@ WHERE (%@ IN (OLD.%@, OLD.%@, OLD.%@, OLD.%@) AND NOT EXISTS (SELECT 1 FROM %@ WHERE %@.%@ IN (%@, %@, %@, %@)))", v4, v5, @"system", @"code", @"version", @"display_string", v6, v7, v5, @"system", @"code", @"version", @"display_string"];

  v9 = [objc_alloc(MEMORY[0x277D10BA0]) initWithEntity:objc_opt_class() name:@"string_garbage_collection" triggerEvent:0 predicateString:0 triggerString:v8];
  v13[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)joinClausesForProperty:(id)a3
{
  v5 = a3;
  v6 = [&unk_283CB46D0 objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = [v5 componentsSeparatedByString:@"."];

    if ([v7 count] != 2)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:a2 object:a1 file:@"HDUserDomainMedicalCodingEntity.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"[components count] == 2"}];
    }

    v8 = MEMORY[0x277D10B50];
    v9 = [a1 disambiguatedDatabaseTable];
    v10 = objc_opt_class();
    v11 = [v7 firstObject];
    v12 = [v8 leftJoinClauseFromTable:v9 toTargetEntity:v10 as:v11 localReference:v6 targetKey:*MEMORY[0x277D10A40]];

    v13 = [MEMORY[0x277CBEB98] setWithObject:v12];
  }

  else
  {
    v16.receiver = a1;
    v16.super_class = &OBJC_METACLASS___HDUserDomainMedicalCodingEntity;
    v13 = objc_msgSendSuper2(&v16, sel_joinClausesForProperty_, v5);
  }

  return v13;
}

+ (id)privateSubEntities
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)insertDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v66 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v47 = [v10 protectedDatabase];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v11 = [v9 codingCollection];
  v12 = [v11 codings];

  obj = v12;
  v44 = [v12 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v44)
  {
    v46 = *v62;
    v13 = v10;
    v42 = a6;
    v43 = v10;
    v41 = a1;
    v39 = v9;
    while (2)
    {
      v14 = 0;
      v15 = v13;
      do
      {
        if (*v62 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v61 + 1) + 8 * v14);
        v17 = [v16 codingSystem];
        v18 = [v17 identifier];
        v60 = 0;
        v19 = [(HDUserDomainMedicalCodingEntity *)a1 _getPersistentIDForString:v18 transaction:v15 result:&v60 error:a6];
        v20 = v60;
        if (!v19)
        {
          v13 = v15;
          v23 = v17;
          v9 = v39;
          goto LABEL_21;
        }

        v48 = v14;
        v21 = [v16 code];
        v59 = 0;
        v22 = [(HDUserDomainMedicalCodingEntity *)a1 _getPersistentIDForString:v21 transaction:v15 result:&v59 error:a6];
        v23 = v59;
        if (!v22)
        {

          v9 = v39;
          goto LABEL_20;
        }

        v50 = v20;
        v24 = [v16 codingVersion];
        v58 = 0;
        v25 = a6;
        v26 = [(HDUserDomainMedicalCodingEntity *)a1 _getPersistentIDForString:v24 transaction:v15 result:&v58 error:a6];
        v49 = v58;
        if (v26)
        {
          v27 = [v16 displayString];
          v57 = 0;
          v28 = [(HDUserDomainMedicalCodingEntity *)a1 _getPersistentIDForString:v27 transaction:v15 result:&v57 error:v25];
          v29 = v57;
          v30 = !v28;
        }

        else
        {
          v29 = 0;
          v30 = 1;
        }

        v20 = v50;

        if (v30)
        {
          v18 = v29;
          v17 = v49;
          v9 = v39;
          v15 = v43;
LABEL_20:
          v13 = v15;

          v18 = v17;
LABEL_21:

          v36 = 0;
          goto LABEL_23;
        }

        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __104__HDUserDomainMedicalCodingEntity_insertDataForUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
        v51[3] = &unk_2786238D0;
        v55 = v29;
        v56 = a4;
        v52 = v50;
        v53 = v23;
        v54 = v49;
        v31 = v29;
        v32 = v49;
        v33 = v23;
        v34 = v50;
        a6 = v42;
        v35 = [v47 executeCachedStatementForKey:&insertDataForUserDomainConcept_userDomainConceptID_transaction_error__statementKey_1 error:v42 SQLGenerator:&__block_literal_global_129 bindingHandler:v51 enumerationHandler:0];

        if (!v35)
        {
          v36 = 0;
          v9 = v39;
          v13 = v43;
          goto LABEL_23;
        }

        v14 = v48 + 1;
        v15 = v43;
        a1 = v41;
      }

      while (v44 != v48 + 1);
      v13 = v43;
      v36 = 1;
      v9 = v39;
      v44 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v44)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = v10;
    v36 = 1;
  }

LABEL_23:

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

+ (BOOL)_getPersistentIDForString:(void *)a3 transaction:(void *)a4 result:(uint64_t)a5 error:
{
  v8 = a2;
  v9 = a3;
  objc_opt_self();
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"(null)";
  }

  v11 = [HDUserDomainMedicalCodingStringEntity persistentIDForString:v10 transaction:v9 error:a5];

  v12 = v11;
  *a4 = v11;

  return v11 != 0;
}

uint64_t __104__HDUserDomainMedicalCodingEntity_insertDataForUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[8]);
  v3 = a1[4];
  HDSQLiteBindFoundationValueToStatement();
  v4 = a1[5];
  HDSQLiteBindFoundationValueToStatement();
  v5 = a1[6];
  HDSQLiteBindFoundationValueToStatement();
  v6 = a1[7];

  return HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)retrieveDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 mutableUserDomainConceptProperties:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = MEMORY[0x277CBEB18];
  v13 = a6;
  v14 = objc_alloc_init(v12);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __141__HDUserDomainMedicalCodingEntity_retrieveDataForUserDomainConcept_userDomainConceptID_mutableUserDomainConceptProperties_transaction_error___block_invoke;
  v21[3] = &unk_2786238F8;
  v15 = v14;
  v22 = v15;
  v16 = [(HDUserDomainMedicalCodingEntity *)a1 _enumerateMedicalCodingsWithUserDomainConceptID:a4 transaction:v13 error:a7 enumerationHandler:v21];

  if (v16)
  {
    if ([v15 count])
    {
      v17 = MEMORY[0x277CCD5C8];
      v18 = [v15 copy];
      v19 = [v17 collectionWithCodings:v18];
    }

    else
    {
      v19 = 0;
    }

    [v11 _setCodingCollection:v19];
  }

  return v16;
}

+ (uint64_t)_enumerateMedicalCodingsWithUserDomainConceptID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:
{
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_self();
  v11 = MEMORY[0x277D10B18];
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v13 = [v11 predicateWithProperty:@"udc_id" equalToValue:v12];

  v14 = [v10 enumerateMedicalCodingsWithPredicate:v13 transaction:v9 error:a4 enumerationHandler:v8];
  return v14;
}

+ (BOOL)addPropertyDataToCodable:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__HDUserDomainMedicalCodingEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke;
  v13[3] = &unk_2786238F8;
  v14 = v10;
  v11 = v10;
  LOBYTE(a6) = [(HDUserDomainMedicalCodingEntity *)a1 _enumerateMedicalCodingsWithUserDomainConceptID:a4 transaction:a5 error:a6 enumerationHandler:v13];

  return a6;
}

uint64_t __98__HDUserDomainMedicalCodingEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 codableRepresentationForSync];
  [v2 addCodings:v3];

  return 1;
}

+ (BOOL)enumerateMedicalCodingsWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [a4 databaseForEntityClass:a1];
  v13 = [a1 queryWithDatabase:v12 predicate:v11];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __109__HDUserDomainMedicalCodingEntity_enumerateMedicalCodingsWithPredicate_transaction_error_enumerationHandler___block_invoke;
  v16[3] = &unk_278616A78;
  v17 = v10;
  v14 = v10;
  LOBYTE(a5) = [v13 enumeratePersistentIDsAndProperties:&unk_283CAF760 error:a5 enumerationHandler:v16];

  return a5;
}

uint64_t __109__HDUserDomainMedicalCodingEntity_enumerateMedicalCodingsWithPredicate_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x22AAC6C90](a4, 0);
  v6 = MEMORY[0x22AAC6C90](a4, 1);
  v7 = MEMORY[0x22AAC6C90](a4, 2);
  v8 = MEMORY[0x22AAC6C90](a4, 3);
  v22 = v5;
  if ([v5 isEqualToString:@"(null)"])
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  if ([v6 isEqualToString:@"(null)"])
  {
    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11;
  if ([v7 isEqualToString:@"(null)"])
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13;
  if ([v8 isEqualToString:@"(null)"])
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v16 = v15;
  if (v10)
  {
    v17 = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:v10];
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x277CCD5C0] medicalCodingWithSystem:v17 codingVersion:v14 code:v12 displayString:v16];
  v19 = (*(*(a1 + 32) + 16))();

  return v19;
}

@end