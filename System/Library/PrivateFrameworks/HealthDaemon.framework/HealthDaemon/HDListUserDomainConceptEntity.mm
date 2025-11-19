@interface HDListUserDomainConceptEntity
+ (BOOL)insertConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)updateConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)willDeleteConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 syncProvenance:(int64_t)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)foreignKeys;
+ (id)predicateMatchingSemanticDuplicatesOf:(id)a3;
+ (id)predicateMatchingSemanticIdentifier:(id)a3;
@end

@implementation HDListUserDomainConceptEntity

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

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[_HDListUserDomainConceptEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (BOOL)insertConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 protectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__HDListUserDomainConceptEntity_insertConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
  v13[3] = &unk_278613B58;
  v14 = v9;
  v15 = a4;
  v11 = v9;
  LOBYTE(a6) = [v10 executeCachedStatementForKey:&insertConcreteUserDomainConcept_userDomainConceptID_transaction_error__statementKey error:a6 SQLGenerator:&__block_literal_global_152 bindingHandler:v13 enumerationHandler:0];

  return a6;
}

void __103__HDListUserDomainConceptEntity_insertConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, [*(a1 + 32) listType]);
  v4 = [*(a1 + 32) listName];
  HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)updateConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 protectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__HDListUserDomainConceptEntity_updateConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
  v13[3] = &unk_278613B58;
  v14 = v9;
  v15 = a4;
  v11 = v9;
  LOBYTE(a6) = [v10 executeCachedStatementForKey:&updateConcreteUserDomainConcept_userDomainConceptID_transaction_error__statementKey error:a6 SQLGenerator:&__block_literal_global_325 bindingHandler:v13 enumerationHandler:0];

  return a6;
}

uint64_t __103__HDListUserDomainConceptEntity_updateConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) listType]);
  v4 = [*(a1 + 32) listName];
  HDSQLiteBindFoundationValueToStatement();

  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 3, v5);
}

+ (BOOL)willDeleteConcreteUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 syncProvenance:(int64_t)a5 profile:(id)a6 transaction:(id)a7 error:(id *)a8
{
  v23 = *MEMORY[0x277D85DE8];
  v11 = a3;
  _HKInitializeLogging();
  v12 = HKLogHealthOntology();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138413058;
    v16 = a1;
    v17 = 2112;
    v18 = v11;
    v19 = 2048;
    v20 = a4;
    v21 = 2048;
    v22 = a5;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%@ will delete list UDC %@, udc_id=%ld, sync_provenance=%ld", &v15, 0x2Au);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)predicateMatchingSemanticIdentifier:(id)a3
{
  v3 = [a3 listType];

  return HDListUserDomainConceptEntityPredicateForListType(v3, 1);
}

+ (id)predicateMatchingSemanticDuplicatesOf:(id)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B20];
  v4 = MEMORY[0x277D10B18];
  v5 = a3;
  v6 = [v5 UUID];
  v7 = [v4 predicateWithProperty:@"uuid" notEqualToValue:v6];
  v8 = MEMORY[0x277D10B18];
  v9 = MEMORY[0x277CCABB0];
  v10 = [v5 identifier];
  v11 = [v9 numberWithInteger:{objc_msgSend(v10, "code")}];
  v12 = [v8 predicateWithProperty:@"type" equalToValue:v11];
  v22[1] = v12;
  v13 = MEMORY[0x277D10B18];
  v14 = MEMORY[0x277CCABB0];
  v15 = [v5 listType];

  v16 = [v14 numberWithUnsignedInteger:v15];
  v17 = [v13 predicateWithProperty:@"list_type" equalToValue:v16];
  v22[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v19 = [v3 predicateMatchingAllPredicates:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end