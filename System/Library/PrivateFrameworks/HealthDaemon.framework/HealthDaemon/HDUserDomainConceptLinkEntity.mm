@interface HDUserDomainConceptLinkEntity
+ (BOOL)addPropertyDataToCodable:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)insertDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)retrieveDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 mutableUserDomainConceptProperties:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (BOOL)unitTesting_enumerateConceptLinksWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)willDeleteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 syncProvenance:(int64_t)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8;
+ (id)foreignKeys;
+ (uint64_t)_enumerateConceptLinkRowsWithUserDomainConceptID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:;
@end

@implementation HDUserDomainConceptLinkEntity

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

+ (BOOL)insertDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [a5 protectedDatabase];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v9 linkCollection];
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v19 = v9;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __102__HDUserDomainConceptLinkEntity_insertDataForUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
        v21[3] = &unk_278613B58;
        v21[4] = v15;
        v21[5] = a4;
        if (![v10 executeCachedStatementForKey:&insertDataForUserDomainConcept_userDomainConceptID_transaction_error__statementKey error:a6 SQLGenerator:&__block_literal_global_55 bindingHandler:v21 enumerationHandler:{0, v19}])
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v16 = 1;
LABEL_11:
    v9 = v19;
  }

  else
  {
    v16 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void __102__HDUserDomainConceptLinkEntity_insertDataForUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v4 = [*(a1 + 32) targetUUID];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 3, [*(a1 + 32) type]);
  v5 = [*(a1 + 32) targetUUID];
  HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)retrieveDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 mutableUserDomainConceptProperties:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a6;
  v12 = [v10 linkCollection];

  if (v12)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __139__HDUserDomainConceptLinkEntity_retrieveDataForUserDomainConcept_userDomainConceptID_mutableUserDomainConceptProperties_transaction_error___block_invoke;
    v25 = &unk_27861AD00;
    v15 = v14;
    v26 = v15;
    v16 = &v22;
    v17 = v11;
    v18 = objc_opt_self();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __116__HDUserDomainConceptLinkEntity__enumerateConceptLinksWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke;
    v27[3] = &unk_278613B30;
    v28 = v16;
    v19 = v16;
    v13 = [(HDUserDomainConceptLinkEntity *)v18 _enumerateConceptLinkRowsWithUserDomainConceptID:a4 transaction:v17 error:a7 enumerationHandler:v27];

    if (v13)
    {
      if ([v15 count])
      {
        v20 = [objc_alloc(MEMORY[0x277CCDB08]) _initWithLinks:v15];
      }

      else
      {
        v20 = 0;
      }

      [v10 _setLinkCollection:v20];
    }
  }

  return v13;
}

+ (BOOL)willDeleteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 syncProvenance:(int64_t)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8
{
  v10 = a3;
  v11 = [a7 protectedDatabase];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __122__HDUserDomainConceptLinkEntity_willDeleteUserDomainConcept_userDomainConceptID_syncProvenance_profile_transaction_error___block_invoke_2;
  v14[3] = &unk_278614860;
  v15 = v10;
  v12 = v10;
  LOBYTE(a8) = [v11 executeCachedStatementForKey:&willDeleteUserDomainConcept_userDomainConceptID_syncProvenance_profile_transaction_error__statementKey error:a8 SQLGenerator:&__block_literal_global_329 bindingHandler:v14 enumerationHandler:0];

  return a8;
}

void __122__HDUserDomainConceptLinkEntity_willDeleteUserDomainConcept_userDomainConceptID_syncProvenance_profile_transaction_error___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) UUID];
  HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)addPropertyDataToCodable:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__HDUserDomainConceptLinkEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke;
  v13[3] = &unk_278614098;
  v14 = v10;
  v11 = v10;
  LOBYTE(a6) = [(HDUserDomainConceptLinkEntity *)a1 _enumerateConceptLinkRowsWithUserDomainConceptID:a4 transaction:a5 error:a6 enumerationHandler:v13];

  return a6;
}

uint64_t __96__HDUserDomainConceptLinkEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(HDCodableUserDomainConceptLink);
  v5 = MEMORY[0x22AAC6C30](a2, 0);
  [(HDCodableUserDomainConceptLink *)v4 setTargetUUID:v5];

  [(HDCodableUserDomainConceptLink *)v4 setType:HDSQLiteColumnAsInt64()];
  [*(a1 + 32) addLinks:v4];

  return 1;
}

+ (uint64_t)_enumerateConceptLinkRowsWithUserDomainConceptID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:
{
  v8 = a5;
  v9 = a3;
  objc_opt_self();
  v10 = [v9 protectedDatabase];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __119__HDUserDomainConceptLinkEntity__enumerateConceptLinkRowsWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke_2;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = a2;
  v11 = [v10 executeCachedStatementForKey:&_enumerateConceptLinkRowsWithUserDomainConceptID_transaction_error_enumerationHandler__statementKey error:a4 SQLGenerator:&__block_literal_global_344 bindingHandler:v13 enumerationHandler:v8];

  return v11;
}

+ (BOOL)unitTesting_enumerateConceptLinksWithPredicate:(id)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [a4 databaseForEntityClass:a1];
  v13 = [a1 queryWithDatabase:v12 predicate:v11];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __117__HDUserDomainConceptLinkEntity_unitTesting_enumerateConceptLinksWithPredicate_transaction_error_enumerationHandler___block_invoke;
  v16[3] = &unk_278616A78;
  v17 = v10;
  v14 = v10;
  LOBYTE(a5) = [v13 enumeratePersistentIDsAndProperties:&unk_283CAE9F8 error:a5 enumerationHandler:v16];

  return a5;
}

uint64_t __117__HDUserDomainConceptLinkEntity_unitTesting_enumerateConceptLinksWithPredicate_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x22AAC6CA0](a4, 0);
  v6 = [objc_alloc(MEMORY[0x277CCDB00]) initWithTarget:v5 type:HDSQLiteColumnAsInt64()];
  v7 = (*(*(a1 + 32) + 16))();

  return v7;
}

uint64_t __116__HDUserDomainConceptLinkEntity__enumerateConceptLinksWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277CCDB00]);
  v5 = MEMORY[0x22AAC6CA0](a2, 0);
  v6 = [v4 initWithTarget:v5 type:HDSQLiteColumnAsInt64()];

  v7 = (*(*(a1 + 32) + 16))();
  return v7;
}

@end