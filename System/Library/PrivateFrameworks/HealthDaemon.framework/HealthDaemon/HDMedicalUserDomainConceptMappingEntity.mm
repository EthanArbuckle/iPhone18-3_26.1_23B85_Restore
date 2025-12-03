@interface HDMedicalUserDomainConceptMappingEntity
+ (BOOL)insertUserDomainConceptID:(int64_t)d medicalRecordID:(int64_t)iD transaction:(id)transaction error:(id *)error;
+ (BOOL)migrateMappingsFromUserDomainConceptID:(int64_t)d toUserDomainConceptID:(int64_t)iD transaction:(id)transaction error:(id *)error;
+ (BOOL)updateMappingFromRecordWithPersistentID:(int64_t)d withMapToUDCWithPersistentID:(int64_t)iD toMapToUDCWithPersistentID:(int64_t)persistentID transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)joinClausesForProperty:(id)property;
+ (id)unitTest_medicalRecordIDsForUserDomainConceptID:(unint64_t)d transaction:(id)transaction error:(id *)error;
+ (id)unitTest_userDomainConceptIDsForMedicalRecordID:(unint64_t)d transaction:(id)transaction error:(id *)error;
@end

@implementation HDMedicalUserDomainConceptMappingEntity

+ (id)foreignKeys
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"udc_id";
  v2 = +[(HDUserDomainConceptEntity *)HDMedicalUserDomainConceptEntity];
  v7[1] = @"data_id";
  v8[0] = v2;
  v3 = +[(HDDataEntity *)HDMedicalRecordEntity];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:@"user_domain_concepts.uuid"])
  {
    v5 = objc_alloc(MEMORY[0x277CBEB58]);
    v6 = [(HDUserDomainConceptEntity *)HDMedicalUserDomainConceptEntity joinClausesForProperty:@"uuid"];
    v7 = [v5 initWithSet:v6];

    v8 = MEMORY[0x277D10B50];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v10 = objc_opt_class();
    v11 = HDUserDomainConceptEntityPropertyUserDomainConceptID;
LABEL_5:
    v14 = [v8 innerJoinClauseFromTable:disambiguatedDatabaseTable toTargetEntity:v10 as:0 localReference:*v11 targetKey:*v11];
    [v7 addObject:v14];

    v15 = [v7 copy];
    goto LABEL_7;
  }

  if ([propertyCopy isEqualToString:@"objects.uuid"])
  {
    v12 = objc_alloc(MEMORY[0x277CBEB58]);
    v13 = [HDMedicalRecordEntity joinClausesForProperty:@"uuid"];
    v7 = [v12 initWithSet:v13];

    v8 = MEMORY[0x277D10B50];
    disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
    v10 = objc_opt_class();
    v11 = HDDataEntityPropertyDataID;
    goto LABEL_5;
  }

  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___HDMedicalUserDomainConceptMappingEntity;
  v15 = objc_msgSendSuper2(&v17, sel_joinClausesForProperty_, propertyCopy);
LABEL_7:

  return v15;
}

+ (BOOL)insertUserDomainConceptID:(int64_t)d medicalRecordID:(int64_t)iD transaction:(id)transaction error:(id *)error
{
  protectedDatabase = [transaction protectedDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __103__HDMedicalUserDomainConceptMappingEntity_insertUserDomainConceptID_medicalRecordID_transaction_error___block_invoke_2;
  v11[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v11[4] = d;
  v11[5] = iD;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&insertUserDomainConceptID_medicalRecordID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_150 bindingHandler:v11 enumerationHandler:0];

  return error;
}

uint64_t __103__HDMedicalUserDomainConceptMappingEntity_insertUserDomainConceptID_medicalRecordID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (BOOL)migrateMappingsFromUserDomainConceptID:(int64_t)d toUserDomainConceptID:(int64_t)iD transaction:(id)transaction error:(id *)error
{
  protectedDatabase = [transaction protectedDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __122__HDMedicalUserDomainConceptMappingEntity_migrateMappingsFromUserDomainConceptID_toUserDomainConceptID_transaction_error___block_invoke_2;
  v11[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v11[4] = iD;
  v11[5] = d;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&migrateMappingsFromUserDomainConceptID_toUserDomainConceptID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_329_0 bindingHandler:v11 enumerationHandler:0];

  return error;
}

uint64_t __122__HDMedicalUserDomainConceptMappingEntity_migrateMappingsFromUserDomainConceptID_toUserDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

+ (BOOL)updateMappingFromRecordWithPersistentID:(int64_t)d withMapToUDCWithPersistentID:(int64_t)iD toMapToUDCWithPersistentID:(int64_t)persistentID transaction:(id)transaction error:(id *)error
{
  protectedDatabase = [transaction protectedDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __157__HDMedicalUserDomainConceptMappingEntity_updateMappingFromRecordWithPersistentID_withMapToUDCWithPersistentID_toMapToUDCWithPersistentID_transaction_error___block_invoke_2;
  v13[3] = &__block_descriptor_56_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = persistentID;
  v13[5] = iD;
  v13[6] = d;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&updateMappingFromRecordWithPersistentID_withMapToUDCWithPersistentID_toMapToUDCWithPersistentID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_334_0 bindingHandler:v13 enumerationHandler:0];

  return error;
}

uint64_t __157__HDMedicalUserDomainConceptMappingEntity_updateMappingFromRecordWithPersistentID_withMapToUDCWithPersistentID_toMapToUDCWithPersistentID_transaction_error___block_invoke_2(sqlite3_int64 *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[4]);
  sqlite3_bind_int64(a2, 2, a1[5]);
  v4 = a1[6];

  return sqlite3_bind_int64(a2, 3, v4);
}

+ (id)unitTest_medicalRecordIDsForUserDomainConceptID:(unint64_t)d transaction:(id)transaction error:(id *)error
{
  protectedDatabase = [transaction protectedDatabase];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__HDMedicalUserDomainConceptMappingEntity_unitTest_medicalRecordIDsForUserDomainConceptID_transaction_error___block_invoke_2;
  v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v14[4] = d;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __109__HDMedicalUserDomainConceptMappingEntity_unitTest_medicalRecordIDsForUserDomainConceptID_transaction_error___block_invoke_3;
  v12[3] = &unk_278614098;
  v8 = v13;
  if ([protectedDatabase executeCachedStatementForKey:&unitTest_medicalRecordIDsForUserDomainConceptID_transaction_error__lookupKey error:error SQLGenerator:&__block_literal_global_338_0 bindingHandler:v14 enumerationHandler:v12])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

uint64_t __109__HDMedicalUserDomainConceptMappingEntity_unitTest_medicalRecordIDsForUserDomainConceptID_transaction_error___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
  [v1 addObject:v2];

  return 1;
}

+ (id)unitTest_userDomainConceptIDsForMedicalRecordID:(unint64_t)d transaction:(id)transaction error:(id *)error
{
  protectedDatabase = [transaction protectedDatabase];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__HDMedicalUserDomainConceptMappingEntity_unitTest_userDomainConceptIDsForMedicalRecordID_transaction_error___block_invoke_2;
  v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v14[4] = d;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __109__HDMedicalUserDomainConceptMappingEntity_unitTest_userDomainConceptIDsForMedicalRecordID_transaction_error___block_invoke_3;
  v12[3] = &unk_278614098;
  v8 = v13;
  if ([protectedDatabase executeCachedStatementForKey:&unitTest_userDomainConceptIDsForMedicalRecordID_transaction_error__lookupKey error:error SQLGenerator:&__block_literal_global_346 bindingHandler:v14 enumerationHandler:v12])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

uint64_t __109__HDMedicalUserDomainConceptMappingEntity_unitTest_userDomainConceptIDsForMedicalRecordID_transaction_error___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
  [v1 addObject:v2];

  return 1;
}

@end