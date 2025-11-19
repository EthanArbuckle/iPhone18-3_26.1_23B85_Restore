@interface HDUserDomainConceptNamedQuantityEntity
+ (BOOL)addPropertyDataToCodable:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)insertDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)retrieveDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 mutableUserDomainConceptProperties:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (id)foreignKeys;
+ (uint64_t)_enumerateNamedQuantityRowsWithUserDomainConceptID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:;
@end

@implementation HDUserDomainConceptNamedQuantityEntity

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
            v28[2] = __101__HDUserDomainConceptNamedQuantityEntity__insertNamedQuantity_userDomainConceptID_transaction_error___block_invoke_2;
            v28[3] = &unk_278613B58;
            v29 = v14;
            v30 = a4;
            v17 = v14;
            LODWORD(v15) = [v16 executeCachedStatementForKey:&_insertNamedQuantity_userDomainConceptID_transaction_error__statementKey error:a6 SQLGenerator:&__block_literal_global_78 bindingHandler:v28 enumerationHandler:0];

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
  v17[2] = __148__HDUserDomainConceptNamedQuantityEntity_retrieveDataForUserDomainConcept_userDomainConceptID_mutableUserDomainConceptProperties_transaction_error___block_invoke;
  v17[3] = &unk_27861DFA0;
  v18 = v10;
  v11 = v10;
  v12 = v17;
  v13 = a6;
  v14 = objc_opt_self();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __128__HDUserDomainConceptNamedQuantityEntity__enumerateNamedQuantitiesWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke;
  v19[3] = &unk_278613B30;
  v20 = v12;
  v15 = v12;
  LOBYTE(a7) = [(HDUserDomainConceptNamedQuantityEntity *)v14 _enumerateNamedQuantityRowsWithUserDomainConceptID:a4 transaction:v13 error:a7 enumerationHandler:v19];

  return a7;
}

+ (BOOL)addPropertyDataToCodable:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __105__HDUserDomainConceptNamedQuantityEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke;
  v13[3] = &unk_278614098;
  v14 = v10;
  v11 = v10;
  LOBYTE(a6) = [(HDUserDomainConceptNamedQuantityEntity *)a1 _enumerateNamedQuantityRowsWithUserDomainConceptID:a4 transaction:a5 error:a6 enumerationHandler:v13];

  return a6;
}

uint64_t __105__HDUserDomainConceptNamedQuantityEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  HDSQLiteColumnWithNameAsDouble();
  v4 = v3;
  v5 = HDSQLiteColumnWithNameAsString();
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v9 = v8;
  v10 = HDSQLiteColumnWithNameAsBoolean();
  v11 = objc_alloc_init(HDCodableUserDomainConceptNamedQuantity);
  [(HDCodableUserDomainConceptNamedQuantity *)v11 setName:v2];
  [(HDCodableUserDomainConceptNamedQuantity *)v11 setValue:v4];
  [(HDCodableUserDomainConceptNamedQuantity *)v11 setUnit:v5];
  [(HDCodableUserDomainConceptNamedQuantity *)v11 setType:v6];
  [(HDCodableUserDomainConceptNamedQuantity *)v11 setVersion:v7];
  [(HDCodableUserDomainConceptNamedQuantity *)v11 setTimestamp:v9];
  [(HDCodableUserDomainConceptNamedQuantity *)v11 setDeleted:v10];
  [*(a1 + 32) addNamedQuantities:v11];

  return 1;
}

+ (uint64_t)_enumerateNamedQuantityRowsWithUserDomainConceptID:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 enumerationHandler:
{
  v8 = a5;
  v9 = a3;
  objc_opt_self();
  v10 = [v9 protectedDatabase];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __130__HDUserDomainConceptNamedQuantityEntity__enumerateNamedQuantityRowsWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke_2;
  v13[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v13[4] = a2;
  v11 = [v10 executeCachedStatementForKey:&_enumerateNamedQuantityRowsWithUserDomainConceptID_transaction_error_enumerationHandler__statementKey error:a4 SQLGenerator:&__block_literal_global_348 bindingHandler:v13 enumerationHandler:v8];

  return v11;
}

uint64_t __101__HDUserDomainConceptNamedQuantityEntity__insertNamedQuantity_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v4 = [*(a1 + 32) name];
  HDSQLiteBindFoundationValueToStatement();

  [*(a1 + 32) value];
  sqlite3_bind_double(a2, 3, v5);
  v6 = [*(a1 + 32) unitString];
  HDSQLiteBindStringToStatement();

  sqlite3_bind_int64(a2, 5, [*(a1 + 32) type]);
  sqlite3_bind_int64(a2, 6, [*(a1 + 32) version]);
  [*(a1 + 32) timestamp];
  sqlite3_bind_double(a2, 7, v7);
  v8 = [*(a1 + 32) isDeleted];

  return sqlite3_bind_int(a2, 8, v8);
}

uint64_t __128__HDUserDomainConceptNamedQuantityEntity__enumerateNamedQuantitiesWithUserDomainConceptID_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsString();
  HDSQLiteColumnWithNameAsDouble();
  v4 = v3;
  v5 = HDSQLiteColumnWithNameAsString();
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v9 = [objc_alloc(MEMORY[0x277CCDB18]) initWithName:v2 value:v5 unitString:v6 type:v7 version:HDSQLiteColumnWithNameAsBoolean() timestamp:v4 deleted:v8];
  v10 = (*(*(a1 + 32) + 16))();

  return v10;
}

@end