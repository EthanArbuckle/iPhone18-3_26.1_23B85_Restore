@interface HDUserDomainConceptPropertyEntity
+ (BOOL)addPropertyDataToCodable:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)deleteDeviceLocalPropertiesWithType:(int64_t)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)insertDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)pruneDataForUpdatedUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6;
+ (BOOL)retrieveDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 mutableUserDomainConceptProperties:(id)a5 transaction:(id)a6 error:(id *)a7;
+ (id)deviceLocalPropertiesWithUserDomainConceptID:(int64_t)a3 transaction:(id)a4 error:(id *)a5;
+ (id)foreignKeys;
+ (id)indices;
+ (uint64_t)_enumerateConceptPropertiesWithUserDomainConceptID:(uint64_t)a3 propertyCategory:(void *)a4 transaction:(uint64_t)a5 error:(void *)a6 enumerationHandler:;
+ (uint64_t)_enumerateConceptPropertyRowsWithUserDomainConceptID:(uint64_t)a3 propertyCategory:(void *)a4 transaction:(uint64_t)a5 error:(void *)a6 enumerationHandler:;
+ (uint64_t)_insertUserDomainConceptProperty:(uint64_t)a3 propertyCategory:(uint64_t)a4 userDomainConceptID:(void *)a5 transaction:(uint64_t)a6 error:;
@end

@implementation HDUserDomainConceptPropertyEntity

+ (id)indices
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D10B40]);
  v3 = objc_opt_class();
  v9[0] = @"udc_id";
  v9[1] = @"property_type";
  v9[2] = @"version";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v5 = [v2 initWithEntity:v3 name:@"udc_property_version" columns:v4];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

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
  v26 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [a3 propertyCollection];
  v12 = [v11 allBasicProperties];

  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        [v17 type];
        if ((HKIsDeprecatedPropertyType() & 1) == 0 && ![(HDUserDomainConceptPropertyEntity *)a1 _insertUserDomainConceptProperty:v17 propertyCategory:1 userDomainConceptID:a4 transaction:v10 error:a6])
        {
          v18 = 0;
          goto LABEL_12;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (uint64_t)_insertUserDomainConceptProperty:(uint64_t)a3 propertyCategory:(uint64_t)a4 userDomainConceptID:(void *)a5 transaction:(uint64_t)a6 error:
{
  v10 = a2;
  v11 = a5;
  objc_opt_self();
  v12 = [v11 protectedDatabase];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __125__HDUserDomainConceptPropertyEntity__insertUserDomainConceptProperty_propertyCategory_userDomainConceptID_transaction_error___block_invoke_2;
  v16[3] = &unk_278619A20;
  v18 = a4;
  v19 = a3;
  v17 = v10;
  v13 = v10;
  v14 = [v12 executeCachedStatementForKey:&_insertUserDomainConceptProperty_propertyCategory_userDomainConceptID_transaction_error__statementKey error:a6 SQLGenerator:&__block_literal_global_373_0 bindingHandler:v16 enumerationHandler:0];

  return v14;
}

+ (BOOL)retrieveDataForUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 mutableUserDomainConceptProperties:(id)a5 transaction:(id)a6 error:(id *)a7
{
  v11 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __143__HDUserDomainConceptPropertyEntity_retrieveDataForUserDomainConcept_userDomainConceptID_mutableUserDomainConceptProperties_transaction_error___block_invoke;
  v14[3] = &unk_278628AB0;
  v15 = v11;
  v12 = v11;
  LOBYTE(a7) = [(HDUserDomainConceptPropertyEntity *)a1 _enumerateConceptPropertiesWithUserDomainConceptID:a4 propertyCategory:1 transaction:a6 error:a7 enumerationHandler:v14];

  return a7;
}

+ (uint64_t)_enumerateConceptPropertiesWithUserDomainConceptID:(uint64_t)a3 propertyCategory:(void *)a4 transaction:(uint64_t)a5 error:(void *)a6 enumerationHandler:
{
  v10 = a6;
  v11 = a4;
  v12 = objc_opt_self();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __142__HDUserDomainConceptPropertyEntity__enumerateConceptPropertiesWithUserDomainConceptID_propertyCategory_transaction_error_enumerationHandler___block_invoke;
  v16[3] = &unk_278613B30;
  v17 = v10;
  v13 = v10;
  v14 = [(HDUserDomainConceptPropertyEntity *)v12 _enumerateConceptPropertyRowsWithUserDomainConceptID:a2 propertyCategory:a3 transaction:v11 error:a5 enumerationHandler:v16];

  return v14;
}

+ (BOOL)addPropertyDataToCodable:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__HDUserDomainConceptPropertyEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke;
  v13[3] = &unk_278614098;
  v14 = v10;
  v11 = v10;
  LOBYTE(a6) = [(HDUserDomainConceptPropertyEntity *)a1 _enumerateConceptPropertyRowsWithUserDomainConceptID:a4 propertyCategory:1 transaction:a5 error:a6 enumerationHandler:v13];

  return a6;
}

uint64_t __100__HDUserDomainConceptPropertyEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(HDCodableUserDomainConceptProperty);
  [(HDCodableUserDomainConceptProperty *)v2 setType:HDSQLiteColumnWithNameAsInt64()];
  [(HDCodableUserDomainConceptProperty *)v2 setVersion:HDSQLiteColumnWithNameAsInt64()];
  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableUserDomainConceptProperty *)v2 setTimestamp:?];
  v3 = HDSQLiteColumnWithNameAsInt64();
  [(HDCodableUserDomainConceptProperty *)v2 setValueType:v3];
  v4 = v2;
  if (v3 > 3)
  {
    if (v3 <= 5)
    {
      if (v3 != 4)
      {
        goto LABEL_16;
      }

      [(HDCodableUserDomainConceptProperty *)v4 setBoolValue:HDSQLiteColumnWithNameAsBoolean()];
      goto LABEL_17;
    }

    if (v3 != 6 && v3 != 7)
    {
      goto LABEL_17;
    }

    v5 = HDSQLiteColumnWithNameAsData();
    [(HDCodableUserDomainConceptProperty *)v4 setDataValue:v5];
LABEL_15:

    goto LABEL_17;
  }

  switch(v3)
  {
    case 1:
      v5 = HDSQLiteColumnWithNameAsString();
      [(HDCodableUserDomainConceptProperty *)v4 setStringValue:v5];
      goto LABEL_15;
    case 2:
LABEL_16:
      HDSQLiteColumnWithNameAsDouble();
      [(HDCodableUserDomainConceptProperty *)v4 setDoubleValue:?];
      break;
    case 3:
      [(HDCodableUserDomainConceptProperty *)v4 setIntegerValue:HDSQLiteColumnWithNameAsInt64()];
      break;
  }

LABEL_17:

  [*(a1 + 32) addProperties:v4];
  return 1;
}

+ (uint64_t)_enumerateConceptPropertyRowsWithUserDomainConceptID:(uint64_t)a3 propertyCategory:(void *)a4 transaction:(uint64_t)a5 error:(void *)a6 enumerationHandler:
{
  v10 = a6;
  v11 = a4;
  objc_opt_self();
  v12 = [v11 protectedDatabase];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __144__HDUserDomainConceptPropertyEntity__enumerateConceptPropertyRowsWithUserDomainConceptID_propertyCategory_transaction_error_enumerationHandler___block_invoke_2;
  v15[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v15[4] = a2;
  v15[5] = a3;
  v13 = [v12 executeCachedStatementForKey:&_enumerateConceptPropertyRowsWithUserDomainConceptID_propertyCategory_transaction_error_enumerationHandler__statementKey error:a5 SQLGenerator:&__block_literal_global_378_0 bindingHandler:v15 enumerationHandler:v10];

  return v13;
}

+ (BOOL)pruneDataForUpdatedUserDomainConcept:(id)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v8 = [a5 protectedDatabase];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __112__HDUserDomainConceptPropertyEntity_pruneDataForUpdatedUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
  v10[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v10[4] = a4;
  LOBYTE(a6) = [v8 executeCachedStatementForKey:&pruneDataForUpdatedUserDomainConcept_userDomainConceptID_transaction_error__statementKey error:a6 SQLGenerator:&__block_literal_global_190 bindingHandler:v10 enumerationHandler:0];

  return a6;
}

uint64_t __112__HDUserDomainConceptPropertyEntity_pruneDataForUpdatedUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));

  return sqlite3_bind_int64(a2, 2, 1);
}

+ (id)deviceLocalPropertiesWithUserDomainConceptID:(int64_t)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB18];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__HDUserDomainConceptPropertyEntity_deviceLocalPropertiesWithUserDomainConceptID_transaction_error___block_invoke;
  v14[3] = &unk_278628AB0;
  v11 = v10;
  v15 = v11;
  LODWORD(a5) = [(HDUserDomainConceptPropertyEntity *)a1 _enumerateConceptPropertiesWithUserDomainConceptID:a3 propertyCategory:2 transaction:v9 error:a5 enumerationHandler:v14];

  if (a5)
  {
    v12 = [objc_alloc(MEMORY[0x277CCDB28]) initWithProperties:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)deleteDeviceLocalPropertiesWithType:(int64_t)a3 userDomainConceptID:(int64_t)a4 transaction:(id)a5 error:(id *)a6
{
  v9 = [a5 protectedDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __111__HDUserDomainConceptPropertyEntity_deleteDeviceLocalPropertiesWithType_userDomainConceptID_transaction_error___block_invoke_2;
  v11[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v11[4] = a4;
  v11[5] = a3;
  LOBYTE(a6) = [v9 executeCachedStatementForKey:&deleteDeviceLocalPropertiesWithType_userDomainConceptID_transaction_error__statementKey error:a6 SQLGenerator:&__block_literal_global_367_0 bindingHandler:v11 enumerationHandler:0];

  return a6;
}

uint64_t __111__HDUserDomainConceptPropertyEntity_deleteDeviceLocalPropertiesWithType_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  sqlite3_bind_int64(a2, 2, 2);
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 3, v4);
}

void __125__HDUserDomainConceptPropertyEntity__insertUserDomainConceptProperty_propertyCategory_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, *(a1 + 48));
  sqlite3_bind_int64(a2, 3, [*(a1 + 32) type]);
  sqlite3_bind_int64(a2, 4, [*(a1 + 32) version]);
  [*(a1 + 32) timestamp];
  sqlite3_bind_double(a2, 5, v4);
  sqlite3_bind_int64(a2, 6, [*(a1 + 32) valueType]);
  v13 = *(a1 + 32);
  v5 = [v13 valueType];
  if (v5 <= 3)
  {
    switch(v5)
    {
      case 1:
        v10 = [v13 stringValue];
        HDSQLiteBindFoundationValueToStatement();

LABEL_14:
        sqlite3_bind_null(a2, 8);
LABEL_20:
        sqlite3_bind_null(a2, 9);
        goto LABEL_21;
      case 2:
        sqlite3_bind_null(a2, 7);
        v7 = [v13 numberValue];
        [v7 doubleValue];
        sqlite3_bind_double(a2, 8, v12);
        goto LABEL_19;
      case 3:
        sqlite3_bind_null(a2, 7);
        v7 = [v13 numberValue];
        v8 = [v7 longLongValue];
LABEL_16:
        sqlite3_bind_int64(a2, 8, v8);
LABEL_19:

        goto LABEL_20;
    }

LABEL_13:
    sqlite3_bind_null(a2, 7);
    goto LABEL_14;
  }

  if (v5 <= 5)
  {
    if (v5 != 4)
    {
      sqlite3_bind_null(a2, 7);
      sqlite3_bind_null(a2, 8);
      v6 = [v13 dateValue];
      HDSQLiteBindFoundationValueToStatement();

LABEL_21:
      sqlite3_bind_null(a2, 10);
      goto LABEL_22;
    }

    sqlite3_bind_null(a2, 7);
    v7 = [v13 numberValue];
    v8 = [v7 BOOLValue];
    goto LABEL_16;
  }

  if (v5 != 6)
  {
    if (v5 == 7)
    {
      sqlite3_bind_null(a2, 7);
      sqlite3_bind_null(a2, 8);
      sqlite3_bind_null(a2, 9);
      sqlite3_bind_null(a2, 10);
      v9 = [v13 dataValue];
      HDSQLiteBindFoundationValueToStatement();

      goto LABEL_23;
    }

    goto LABEL_13;
  }

  sqlite3_bind_null(a2, 7);
  sqlite3_bind_null(a2, 8);
  sqlite3_bind_null(a2, 9);
  v11 = [v13 UUIDValue];
  HDSQLiteBindFoundationValueToStatement();

LABEL_22:
  sqlite3_bind_null(a2, 11);
LABEL_23:
}

uint64_t __144__HDUserDomainConceptPropertyEntity__enumerateConceptPropertyRowsWithUserDomainConceptID_propertyCategory_transaction_error_enumerationHandler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

uint64_t __142__HDUserDomainConceptPropertyEntity__enumerateConceptPropertiesWithUserDomainConceptID_propertyCategory_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = HDSQLiteColumnWithNameAsInt64();
  v3 = HDSQLiteColumnWithNameAsInt64();
  HDSQLiteColumnWithNameAsDouble();
  v5 = v4;
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = [MEMORY[0x277CBEB68] null];
  if (v6 <= 3)
  {
    switch(v6)
    {
      case 1:
        v8 = HDSQLiteColumnWithNameAsString();
        goto LABEL_17;
      case 2:
        v9 = MEMORY[0x277CCABB0];
        HDSQLiteColumnWithNameAsDouble();
        v8 = [v9 numberWithDouble:?];
        goto LABEL_17;
      case 3:
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:HDSQLiteColumnWithNameAsInt64()];
LABEL_17:
        v10 = v8;

        v7 = v10;
        break;
    }
  }

  else
  {
    if (v6 <= 5)
    {
      if (v6 == 4)
      {
        [MEMORY[0x277CCABB0] numberWithBool:HDSQLiteColumnWithNameAsBoolean()];
      }

      else
      {
        HDSQLiteColumnWithNameAsDate();
      }
      v8 = ;
      goto LABEL_17;
    }

    if (v6 == 6)
    {
      v8 = HDSQLiteColumnWithNameAsUUID();
      goto LABEL_17;
    }

    if (v6 == 7)
    {
      v8 = HDSQLiteColumnWithNameAsData();
      goto LABEL_17;
    }
  }

  v11 = [objc_alloc(MEMORY[0x277CCDAF8]) initWithType:v2 version:v3 timestamp:v6 valueType:v7 value:v5];
  v12 = (*(*(a1 + 32) + 16))();

  return v12;
}

@end