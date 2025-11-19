@interface HDUserDomainConceptLocalizedStringEntity
+ (BOOL)addPropertyDataToCodable:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)insertDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)retrieveDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 mutableUserDomainConceptProperties:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (id)foreignKeys;
+ (uint64_t)_enumerateLocalizedStringRowsWithUserDomainConceptID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:;
@end

@implementation HDUserDomainConceptLocalizedStringEntity

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
  v32 = *MEMORY[0x277D85DE8];
  v23 = a5;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [a3 propertyCollection];
  v8 = [v7 properties];

  v9 = [v8 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 type];
          if ((HKIsDeprecatedPropertyType() & 1) == 0)
          {
            v14 = v13;
            v15 = v23;
            objc_opt_self();
            v16 = [v15 protectedDatabase];

            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __105__HDUserDomainConceptLocalizedStringEntity__insertLocalizedString_userDomainConceptID_transaction_error___block_invoke_2;
            v28[3] = &unk_278613B58;
            v29 = v14;
            v30 = a4;
            v17 = v14;
            LODWORD(v15) = [v16 executeCachedStatementForKey:&_insertLocalizedString_userDomainConceptID_transaction_error__statementKey error:a6 SQLGenerator:&__block_literal_global_14 bindingHandler:v28 enumerationHandler:0];

            if (!v15)
            {
              v18 = 0;
              goto LABEL_13;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (BOOL)retrieveDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 mutableUserDomainConceptProperties:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v10 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __150__HDUserDomainConceptLocalizedStringEntity_retrieveDataForUserDomainConcept_userDomainConceptID_mutableUserDomainConceptProperties_transaction_error___block_invoke;
  v17[3] = &unk_278615408;
  v18 = v10;
  v11 = v10;
  v12 = v17;
  v13 = a6;
  v14 = objc_opt_self();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __131__HDUserDomainConceptLocalizedStringEntity__enumerateLocalizedStringsWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke;
  v19[3] = &unk_278613B30;
  v20 = v12;
  v15 = v12;
  LOBYTE(a7) = [(HDUserDomainConceptLocalizedStringEntity *)v14 _enumerateLocalizedStringRowsWithUserDomainConceptID:a4 transaction:v13 error:a7 enumerationHandler:v19];

  return a7;
}

+ (BOOL)addPropertyDataToCodable:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__HDUserDomainConceptLocalizedStringEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke;
  v13[3] = &unk_278614098;
  v14 = v10;
  v11 = v10;
  LOBYTE(a6) = [(HDUserDomainConceptLocalizedStringEntity *)a1 _enumerateLocalizedStringRowsWithUserDomainConceptID:a4 transaction:a5 error:a6 enumerationHandler:v13];

  return a6;
}

uint64_t __107__HDUserDomainConceptLocalizedStringEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsInt64();
  v3 = HDSQLiteColumnWithNameAsString();
  v4 = HDSQLiteColumnWithNameAsString();
  v5 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v7 = v6;
  v8 = HDSQLiteColumnWithNameAsBoolean();
  v9 = objc_alloc_init(HDCodableUserDomainConceptLocalizedStringProperty);
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v9 setType:v2];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v9 setVersion:v5];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v9 setTimestamp:v7];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v9 setStringValue:v3];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v9 setLocale:v4];
  [(HDCodableUserDomainConceptLocalizedStringProperty *)v9 setDeleted:v8];
  [*(a1 + 32) addLocalizedStringProperties:v9];

  return 1;
}

+ (uint64_t)_enumerateLocalizedStringRowsWithUserDomainConceptID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:
{
  v8 = a5;
  v9 = a3;
  objc_opt_self();
  v10 = [v9 protectedDatabase];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __134__HDUserDomainConceptLocalizedStringEntity__enumerateLocalizedStringRowsWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke_2;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = a2;
  v11 = [v10 executeCachedStatementForKey:&_enumerateLocalizedStringRowsWithUserDomainConceptID_transaction_error_enumerationHandler__statementKey error:a4 SQLGenerator:&__block_literal_global_342 bindingHandler:v13 enumerationHandler:v8];

  return v11;
}

uint64_t __105__HDUserDomainConceptLocalizedStringEntity__insertLocalizedString_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, [*(a1 + 32) type]);
  v4 = [*(a1 + 32) stringValue];
  HDSQLiteBindStringToStatement();

  v5 = [*(a1 + 32) locale];
  HDSQLiteBindStringToStatement();

  sqlite3_bind_int64(a2, 5, [*(a1 + 32) version]);
  [*(a1 + 32) timestamp];
  sqlite3_bind_double(a2, 6, v6);
  v7 = [*(a1 + 32) isDeleted];

  return sqlite3_bind_int(a2, 7, v7);
}

uint64_t __131__HDUserDomainConceptLocalizedStringEntity__enumerateLocalizedStringsWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsInt64();
  v3 = HDSQLiteColumnWithNameAsString();
  v4 = HDSQLiteColumnWithNameAsString();
  v5 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v7 = [objc_alloc(MEMORY[0x277CCDB10]) initWithType:v2 stringValue:v3 locale:v4 version:v5 timestamp:HDSQLiteColumnWithNameAsBoolean() deleted:v6];
  v8 = (*(*(a1 + 32) + 16))();

  return v8;
}

@end