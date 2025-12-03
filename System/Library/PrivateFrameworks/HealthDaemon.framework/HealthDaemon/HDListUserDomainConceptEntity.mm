@interface HDListUserDomainConceptEntity
+ (BOOL)insertConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)updateConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)willDeleteConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
+ (id)foreignKeys;
+ (id)predicateMatchingSemanticDuplicatesOf:(id)of;
+ (id)predicateMatchingSemanticIdentifier:(id)identifier;
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

+ (id)entityEncoderForProfile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  filterCopy = filter;
  optionsCopy = options;
  transactionCopy = transaction;
  profileCopy = profile;
  v15 = [(HDEntityEncoder *)[_HDListUserDomainConceptEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filterCopy];

  return v15;
}

+ (BOOL)insertConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  protectedDatabase = [transaction protectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__HDListUserDomainConceptEntity_insertConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
  v13[3] = &unk_278613B58;
  v14 = conceptCopy;
  dCopy = d;
  v11 = conceptCopy;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&insertConcreteUserDomainConcept_userDomainConceptID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_152 bindingHandler:v13 enumerationHandler:0];

  return error;
}

void __103__HDListUserDomainConceptEntity_insertConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, [*(a1 + 32) listType]);
  v4 = [*(a1 + 32) listName];
  HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)updateConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  conceptCopy = concept;
  protectedDatabase = [transaction protectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__HDListUserDomainConceptEntity_updateConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
  v13[3] = &unk_278613B58;
  v14 = conceptCopy;
  dCopy = d;
  v11 = conceptCopy;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&updateConcreteUserDomainConcept_userDomainConceptID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_325 bindingHandler:v13 enumerationHandler:0];

  return error;
}

uint64_t __103__HDListUserDomainConceptEntity_updateConcreteUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) listType]);
  v4 = [*(a1 + 32) listName];
  HDSQLiteBindFoundationValueToStatement();

  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 3, v5);
}

+ (BOOL)willDeleteConcreteUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d syncProvenance:(int64_t)provenance profile:(id)profile transaction:(id)transaction error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  conceptCopy = concept;
  _HKInitializeLogging();
  v12 = HKLogHealthOntology();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138413058;
    selfCopy = self;
    v17 = 2112;
    v18 = conceptCopy;
    v19 = 2048;
    dCopy = d;
    v21 = 2048;
    provenanceCopy = provenance;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%@ will delete list UDC %@, udc_id=%ld, sync_provenance=%ld", &v15, 0x2Au);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)predicateMatchingSemanticIdentifier:(id)identifier
{
  listType = [identifier listType];

  return HDListUserDomainConceptEntityPredicateForListType(listType, 1);
}

+ (id)predicateMatchingSemanticDuplicatesOf:(id)of
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B20];
  v4 = MEMORY[0x277D10B18];
  ofCopy = of;
  uUID = [ofCopy UUID];
  v7 = [v4 predicateWithProperty:@"uuid" notEqualToValue:uUID];
  v8 = MEMORY[0x277D10B18];
  v9 = MEMORY[0x277CCABB0];
  identifier = [ofCopy identifier];
  v11 = [v9 numberWithInteger:{objc_msgSend(identifier, "code")}];
  v12 = [v8 predicateWithProperty:@"type" equalToValue:v11];
  v22[1] = v12;
  v13 = MEMORY[0x277D10B18];
  v14 = MEMORY[0x277CCABB0];
  listType = [ofCopy listType];

  v16 = [v14 numberWithUnsignedInteger:listType];
  v17 = [v13 predicateWithProperty:@"list_type" equalToValue:v16];
  v22[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v19 = [v3 predicateMatchingAllPredicates:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end