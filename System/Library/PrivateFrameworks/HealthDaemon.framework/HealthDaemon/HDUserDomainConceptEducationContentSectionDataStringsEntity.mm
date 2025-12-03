@interface HDUserDomainConceptEducationContentSectionDataStringsEntity
+ (BOOL)addSectionDataStringsToCodable:(id)codable sectionDataID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateSectionDataStringsForEducationContentSectionDataID:(int64_t)d transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertEducationContentSectionDataString:(id)string sectionDataPersistentID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (uint64_t)_enumerateSectionDataRowsForEducationContentSectionDataPersistentID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
@end

@implementation HDUserDomainConceptEducationContentSectionDataStringsEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"section_data_id";
  v2 = +[(HDHealthEntity *)HDUserDomainConceptEducationContentSectionDataEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (BOOL)insertEducationContentSectionDataString:(id)string sectionDataPersistentID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  stringCopy = string;
  protectedDatabase = [transaction protectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __145__HDUserDomainConceptEducationContentSectionDataStringsEntity_insertEducationContentSectionDataString_sectionDataPersistentID_transaction_error___block_invoke_2;
  v13[3] = &unk_278613B58;
  v14 = stringCopy;
  dCopy = d;
  v11 = stringCopy;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&insertEducationContentSectionDataString_sectionDataPersistentID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_16 bindingHandler:v13 enumerationHandler:0];

  return error;
}

uint64_t __145__HDUserDomainConceptEducationContentSectionDataStringsEntity_insertEducationContentSectionDataString_sectionDataPersistentID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v3 = *(a1 + 32);

  return HDSQLiteBindStringToStatement();
}

+ (BOOL)enumerateSectionDataStringsForEducationContentSectionDataID:(int64_t)d transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __160__HDUserDomainConceptEducationContentSectionDataStringsEntity_enumerateSectionDataStringsForEducationContentSectionDataID_transaction_error_enumerationHandler___block_invoke;
  v13[3] = &unk_278613B30;
  v14 = handlerCopy;
  v11 = handlerCopy;
  LOBYTE(error) = [(HDUserDomainConceptEducationContentSectionDataStringsEntity *)self _enumerateSectionDataRowsForEducationContentSectionDataPersistentID:d transaction:transaction error:error enumerationHandler:v13];

  return error;
}

uint64_t __160__HDUserDomainConceptEducationContentSectionDataStringsEntity_enumerateSectionDataStringsForEducationContentSectionDataID_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  v3 = (*(*(a1 + 32) + 16))();

  return v3;
}

+ (uint64_t)_enumerateSectionDataRowsForEducationContentSectionDataPersistentID:(void *)d transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  errorCopy = error;
  dCopy = d;
  objc_opt_self();
  protectedDatabase = [dCopy protectedDatabase];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __168__HDUserDomainConceptEducationContentSectionDataStringsEntity__enumerateSectionDataRowsForEducationContentSectionDataPersistentID_transaction_error_enumerationHandler___block_invoke_2;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = a2;
  v11 = [protectedDatabase executeCachedStatementForKey:&_enumerateSectionDataRowsForEducationContentSectionDataPersistentID_transaction_error_enumerationHandler__statementKey error:transaction SQLGenerator:&__block_literal_global_324_0 bindingHandler:v13 enumerationHandler:errorCopy];

  return v11;
}

+ (BOOL)addSectionDataStringsToCodable:(id)codable sectionDataID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  codableCopy = codable;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __126__HDUserDomainConceptEducationContentSectionDataStringsEntity_addSectionDataStringsToCodable_sectionDataID_transaction_error___block_invoke;
  v13[3] = &unk_278614098;
  v14 = codableCopy;
  v11 = codableCopy;
  LOBYTE(error) = [(HDUserDomainConceptEducationContentSectionDataStringsEntity *)self _enumerateSectionDataRowsForEducationContentSectionDataPersistentID:d transaction:transaction error:error enumerationHandler:v13];

  return error;
}

uint64_t __126__HDUserDomainConceptEducationContentSectionDataStringsEntity_addSectionDataStringsToCodable_sectionDataID_transaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  [*(a1 + 32) addStringValues:v2];

  return 1;
}

@end