@interface HDUserDomainConceptLinkEntity
+ (BOOL)addPropertyDataToCodable:(id)codable userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)insertDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)retrieveDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d mutableUserDomainConceptProperties:(id)properties transaction:(id)transaction error:(id *)error;
+ (BOOL)unitTesting_enumerateConceptLinksWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)willDeleteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (uint64_t)_enumerateConceptLinkRowsWithUserDomainConceptID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
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

+ (BOOL)insertDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  protectedDatabase = [transaction protectedDatabase];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [conceptCopy linkCollection];
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v19 = conceptCopy;
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
        v21[5] = d;
        if (![protectedDatabase executeCachedStatementForKey:&insertDataForUserDomainConcept_userDomainConceptID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_55 bindingHandler:v21 enumerationHandler:{0, v19}])
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
    conceptCopy = v19;
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

+ (BOOL)retrieveDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d mutableUserDomainConceptProperties:(id)properties transaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  transactionCopy = transaction;
  linkCollection = [conceptCopy linkCollection];

  if (linkCollection)
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
    v17 = transactionCopy;
    v18 = objc_opt_self();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __116__HDUserDomainConceptLinkEntity__enumerateConceptLinksWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke;
    v27[3] = &unk_278613B30;
    v28 = v16;
    v19 = v16;
    v13 = [(HDUserDomainConceptLinkEntity *)v18 _enumerateConceptLinkRowsWithUserDomainConceptID:d transaction:v17 error:error enumerationHandler:v27];

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

      [conceptCopy _setLinkCollection:v20];
    }
  }

  return v13;
}

+ (BOOL)willDeleteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  protectedDatabase = [transaction protectedDatabase];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __122__HDUserDomainConceptLinkEntity_willDeleteUserDomainConcept_userDomainConceptID_syncProvenance_profile_transaction_error___block_invoke_2;
  v14[3] = &unk_278614860;
  v15 = conceptCopy;
  v12 = conceptCopy;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&willDeleteUserDomainConcept_userDomainConceptID_syncProvenance_profile_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_329 bindingHandler:v14 enumerationHandler:0];

  return error;
}

void __122__HDUserDomainConceptLinkEntity_willDeleteUserDomainConcept_userDomainConceptID_syncProvenance_profile_transaction_error___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) UUID];
  HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)addPropertyDataToCodable:(id)codable userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  codableCopy = codable;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__HDUserDomainConceptLinkEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke;
  v13[3] = &unk_278614098;
  v14 = codableCopy;
  v11 = codableCopy;
  LOBYTE(error) = [(HDUserDomainConceptLinkEntity *)self _enumerateConceptLinkRowsWithUserDomainConceptID:d transaction:transaction error:error enumerationHandler:v13];

  return error;
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

+ (uint64_t)_enumerateConceptLinkRowsWithUserDomainConceptID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  errorCopy = error;
  dCopy = d;
  objc_opt_self();
  protectedDatabase = [dCopy protectedDatabase];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __119__HDUserDomainConceptLinkEntity__enumerateConceptLinkRowsWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke_2;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = a2;
  v11 = [protectedDatabase executeCachedStatementForKey:&_enumerateConceptLinkRowsWithUserDomainConceptID_transaction_error_enumerationHandler__statementKey error:transaction SQLGenerator:&__block_literal_global_344 bindingHandler:v13 enumerationHandler:errorCopy];

  return v11;
}

+ (BOOL)unitTesting_enumerateConceptLinksWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  v12 = [transaction databaseForEntityClass:self];
  v13 = [self queryWithDatabase:v12 predicate:predicateCopy];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __117__HDUserDomainConceptLinkEntity_unitTesting_enumerateConceptLinksWithPredicate_transaction_error_enumerationHandler___block_invoke;
  v16[3] = &unk_278616A78;
  v17 = handlerCopy;
  v14 = handlerCopy;
  LOBYTE(error) = [v13 enumeratePersistentIDsAndProperties:&unk_283CAE9F8 error:error enumerationHandler:v16];

  return error;
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