@interface HDMedicalUserDomainConceptCategoryTypesEntity
+ (BOOL)addPropertyDataToCodable:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)insertDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)retrieveDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 mutableUserDomainConceptProperties:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (id)foreignKeys;
+ (uint64_t)_enumerateCategoryTypesWithUserDomainConceptID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:;
@end

@implementation HDMedicalUserDomainConceptCategoryTypesEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"udc_id";
  v2 = +[(HDUserDomainConceptEntity *)HDMedicalUserDomainConceptEntity];
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
  obj = [v9 categoryTypes];
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
        v21[2] = __118__HDMedicalUserDomainConceptCategoryTypesEntity_insertDataForUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
        v21[3] = &unk_278613B58;
        v21[4] = v15;
        v21[5] = a4;
        if (![v10 executeCachedStatementForKey:&insertDataForUserDomainConcept_userDomainConceptID_transaction_error__statementKey_0 error:a6 SQLGenerator:&__block_literal_global_89 bindingHandler:v21 enumerationHandler:{0, v19}])
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

uint64_t __118__HDMedicalUserDomainConceptCategoryTypesEntity_insertDataForUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v4 = [*(a1 + 32) longLongValue];

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (BOOL)retrieveDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 mutableUserDomainConceptProperties:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = MEMORY[0x277CBEB18];
  v13 = a6;
  v14 = objc_alloc_init(v12);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __155__HDMedicalUserDomainConceptCategoryTypesEntity_retrieveDataForUserDomainConcept_userDomainConceptID_mutableUserDomainConceptProperties_transaction_error___block_invoke;
  v18[3] = &unk_27861FE60;
  v15 = v14;
  v19 = v15;
  v16 = [(HDMedicalUserDomainConceptCategoryTypesEntity *)a1 _enumerateCategoryTypesWithUserDomainConceptID:a4 transaction:v13 error:a7 enumerationHandler:v18];

  if (v16)
  {
    [v11 _setCategoryTypes:v15];
  }

  return v16;
}

+ (uint64_t)_enumerateCategoryTypesWithUserDomainConceptID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:
{
  v8 = a5;
  v9 = a3;
  objc_opt_self();
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __133__HDMedicalUserDomainConceptCategoryTypesEntity__enumerateCategoryTypesWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke;
  v19 = &unk_278613B30;
  v20 = v8;
  v10 = v8;
  v11 = &v16;
  v12 = v9;
  objc_opt_self();
  v13 = [v12 protectedDatabase];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __136__HDMedicalUserDomainConceptCategoryTypesEntity__enumerateCategoryTypeRowsWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke_2;
  v21[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v21[4] = a2;
  v14 = [v13 executeCachedStatementForKey:&_enumerateCategoryTypeRowsWithUserDomainConceptID_transaction_error_enumerationHandler__statementKey error:a4 SQLGenerator:&__block_literal_global_322_0 bindingHandler:v21 enumerationHandler:v11];

  return v14;
}

+ (BOOL)addPropertyDataToCodable:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __112__HDMedicalUserDomainConceptCategoryTypesEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke;
  v13[3] = &unk_27861FE60;
  v14 = v10;
  v11 = v10;
  LOBYTE(a6) = [(HDMedicalUserDomainConceptCategoryTypesEntity *)a1 _enumerateCategoryTypesWithUserDomainConceptID:a4 transaction:a5 error:a6 enumerationHandler:v13];

  return a6;
}

uint64_t __133__HDMedicalUserDomainConceptCategoryTypesEntity__enumerateCategoryTypesWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x22AAC6C80](a2, 0);
  v6 = (*(v4 + 16))(v4, v5, a3);

  return v6;
}

@end