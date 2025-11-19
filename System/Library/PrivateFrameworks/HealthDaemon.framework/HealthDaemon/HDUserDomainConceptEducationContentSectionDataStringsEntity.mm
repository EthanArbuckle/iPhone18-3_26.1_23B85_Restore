@interface HDUserDomainConceptEducationContentSectionDataStringsEntity
+ (BOOL)addSectionDataStringsToCodable:(id)a3 sectionDataID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)enumerateSectionDataStringsForEducationContentSectionDataID:(int64_t)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6;
+ (BOOL)insertEducationContentSectionDataString:(id)a3 sectionDataPersistentID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (id)foreignKeys;
+ (uint64_t)_enumerateSectionDataRowsForEducationContentSectionDataPersistentID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:;
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

+ (BOOL)insertEducationContentSectionDataString:(id)a3 sectionDataPersistentID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a5 protectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __145__HDUserDomainConceptEducationContentSectionDataStringsEntity_insertEducationContentSectionDataString_sectionDataPersistentID_transaction_error___block_invoke_2;
  v13[3] = &unk_278613B58;
  v14 = v9;
  v15 = a4;
  v11 = v9;
  LOBYTE(a6) = [v10 executeCachedStatementForKey:&insertEducationContentSectionDataString_sectionDataPersistentID_transaction_error__statementKey error:a6 SQLGenerator:&__block_literal_global_16 bindingHandler:v13 enumerationHandler:0];

  return a6;
}

uint64_t __145__HDUserDomainConceptEducationContentSectionDataStringsEntity_insertEducationContentSectionDataString_sectionDataPersistentID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v3 = *(a1 + 32);

  return HDSQLiteBindStringToStatement();
}

+ (BOOL)enumerateSectionDataStringsForEducationContentSectionDataID:(int64_t)a3 transaction:(id)a4 error:(id *)a5 enumerationHandler:(id)a6
{
  v10 = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __160__HDUserDomainConceptEducationContentSectionDataStringsEntity_enumerateSectionDataStringsForEducationContentSectionDataID_transaction_error_enumerationHandler___block_invoke;
  v13[3] = &unk_278613B30;
  v14 = v10;
  v11 = v10;
  LOBYTE(a5) = [(HDUserDomainConceptEducationContentSectionDataStringsEntity *)a1 _enumerateSectionDataRowsForEducationContentSectionDataPersistentID:a3 transaction:a4 error:a5 enumerationHandler:v13];

  return a5;
}

uint64_t __160__HDUserDomainConceptEducationContentSectionDataStringsEntity_enumerateSectionDataStringsForEducationContentSectionDataID_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  v3 = (*(*(a1 + 32) + 16))();

  return v3;
}

+ (uint64_t)_enumerateSectionDataRowsForEducationContentSectionDataPersistentID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:
{
  v8 = a5;
  v9 = a3;
  objc_opt_self();
  v10 = [v9 protectedDatabase];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __168__HDUserDomainConceptEducationContentSectionDataStringsEntity__enumerateSectionDataRowsForEducationContentSectionDataPersistentID_transaction_error_enumerationHandler___block_invoke_2;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = a2;
  v11 = [v10 executeCachedStatementForKey:&_enumerateSectionDataRowsForEducationContentSectionDataPersistentID_transaction_error_enumerationHandler__statementKey error:a4 SQLGenerator:&__block_literal_global_324_0 bindingHandler:v13 enumerationHandler:v8];

  return v11;
}

+ (BOOL)addSectionDataStringsToCodable:(id)a3 sectionDataID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __126__HDUserDomainConceptEducationContentSectionDataStringsEntity_addSectionDataStringsToCodable_sectionDataID_transaction_error___block_invoke;
  v13[3] = &unk_278614098;
  v14 = v10;
  v11 = v10;
  LOBYTE(a6) = [(HDUserDomainConceptEducationContentSectionDataStringsEntity *)a1 _enumerateSectionDataRowsForEducationContentSectionDataPersistentID:a4 transaction:a5 error:a6 enumerationHandler:v13];

  return a6;
}

uint64_t __126__HDUserDomainConceptEducationContentSectionDataStringsEntity_addSectionDataStringsToCodable_sectionDataID_transaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  [*(a1 + 32) addStringValues:v2];

  return 1;
}

@end