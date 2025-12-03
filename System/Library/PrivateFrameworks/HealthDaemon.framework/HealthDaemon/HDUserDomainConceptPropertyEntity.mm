@interface HDUserDomainConceptPropertyEntity
+ (BOOL)addPropertyDataToCodable:(id)codable userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)deleteDeviceLocalPropertiesWithType:(int64_t)type userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)insertDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)pruneDataForUpdatedUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (BOOL)retrieveDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d mutableUserDomainConceptProperties:(id)properties transaction:(id)transaction error:(id *)error;
+ (id)deviceLocalPropertiesWithUserDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error;
+ (id)foreignKeys;
+ (id)indices;
+ (uint64_t)_enumerateConceptPropertiesWithUserDomainConceptID:(uint64_t)d propertyCategory:(void *)category transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
+ (uint64_t)_enumerateConceptPropertyRowsWithUserDomainConceptID:(uint64_t)d propertyCategory:(void *)category transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
+ (uint64_t)_insertUserDomainConceptProperty:(uint64_t)property propertyCategory:(uint64_t)category userDomainConceptID:(void *)d transaction:(uint64_t)transaction error:;
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

+ (BOOL)insertDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  propertyCollection = [concept propertyCollection];
  allBasicProperties = [propertyCollection allBasicProperties];

  v13 = [allBasicProperties countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(allBasicProperties);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        [v17 type];
        if ((HKIsDeprecatedPropertyType() & 1) == 0 && ![(HDUserDomainConceptPropertyEntity *)self _insertUserDomainConceptProperty:v17 propertyCategory:1 userDomainConceptID:d transaction:transactionCopy error:error])
        {
          v18 = 0;
          goto LABEL_12;
        }
      }

      v14 = [allBasicProperties countByEnumeratingWithState:&v21 objects:v25 count:16];
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

+ (uint64_t)_insertUserDomainConceptProperty:(uint64_t)property propertyCategory:(uint64_t)category userDomainConceptID:(void *)d transaction:(uint64_t)transaction error:
{
  v10 = a2;
  dCopy = d;
  objc_opt_self();
  protectedDatabase = [dCopy protectedDatabase];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __125__HDUserDomainConceptPropertyEntity__insertUserDomainConceptProperty_propertyCategory_userDomainConceptID_transaction_error___block_invoke_2;
  v16[3] = &unk_278619A20;
  categoryCopy = category;
  propertyCopy = property;
  v17 = v10;
  v13 = v10;
  v14 = [protectedDatabase executeCachedStatementForKey:&_insertUserDomainConceptProperty_propertyCategory_userDomainConceptID_transaction_error__statementKey error:transaction SQLGenerator:&__block_literal_global_373_0 bindingHandler:v16 enumerationHandler:0];

  return v14;
}

+ (BOOL)retrieveDataForUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d mutableUserDomainConceptProperties:(id)properties transaction:(id)transaction error:(id *)error
{
  propertiesCopy = properties;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __143__HDUserDomainConceptPropertyEntity_retrieveDataForUserDomainConcept_userDomainConceptID_mutableUserDomainConceptProperties_transaction_error___block_invoke;
  v14[3] = &unk_278628AB0;
  v15 = propertiesCopy;
  v12 = propertiesCopy;
  LOBYTE(error) = [(HDUserDomainConceptPropertyEntity *)self _enumerateConceptPropertiesWithUserDomainConceptID:d propertyCategory:1 transaction:transaction error:error enumerationHandler:v14];

  return error;
}

+ (uint64_t)_enumerateConceptPropertiesWithUserDomainConceptID:(uint64_t)d propertyCategory:(void *)category transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  errorCopy = error;
  categoryCopy = category;
  v12 = objc_opt_self();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __142__HDUserDomainConceptPropertyEntity__enumerateConceptPropertiesWithUserDomainConceptID_propertyCategory_transaction_error_enumerationHandler___block_invoke;
  v16[3] = &unk_278613B30;
  v17 = errorCopy;
  v13 = errorCopy;
  v14 = [(HDUserDomainConceptPropertyEntity *)v12 _enumerateConceptPropertyRowsWithUserDomainConceptID:a2 propertyCategory:d transaction:categoryCopy error:transaction enumerationHandler:v16];

  return v14;
}

+ (BOOL)addPropertyDataToCodable:(id)codable userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  codableCopy = codable;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__HDUserDomainConceptPropertyEntity_addPropertyDataToCodable_userDomainConceptID_transaction_error___block_invoke;
  v13[3] = &unk_278614098;
  v14 = codableCopy;
  v11 = codableCopy;
  LOBYTE(error) = [(HDUserDomainConceptPropertyEntity *)self _enumerateConceptPropertyRowsWithUserDomainConceptID:d propertyCategory:1 transaction:transaction error:error enumerationHandler:v13];

  return error;
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

+ (uint64_t)_enumerateConceptPropertyRowsWithUserDomainConceptID:(uint64_t)d propertyCategory:(void *)category transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  errorCopy = error;
  categoryCopy = category;
  objc_opt_self();
  protectedDatabase = [categoryCopy protectedDatabase];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __144__HDUserDomainConceptPropertyEntity__enumerateConceptPropertyRowsWithUserDomainConceptID_propertyCategory_transaction_error_enumerationHandler___block_invoke_2;
  v15[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v15[4] = a2;
  v15[5] = d;
  v13 = [protectedDatabase executeCachedStatementForKey:&_enumerateConceptPropertyRowsWithUserDomainConceptID_propertyCategory_transaction_error_enumerationHandler__statementKey error:transaction SQLGenerator:&__block_literal_global_378_0 bindingHandler:v15 enumerationHandler:errorCopy];

  return v13;
}

+ (BOOL)pruneDataForUpdatedUserDomainConcept:(id)concept userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  protectedDatabase = [transaction protectedDatabase];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __112__HDUserDomainConceptPropertyEntity_pruneDataForUpdatedUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2;
  v10[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v10[4] = d;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&pruneDataForUpdatedUserDomainConcept_userDomainConceptID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_190 bindingHandler:v10 enumerationHandler:0];

  return error;
}

uint64_t __112__HDUserDomainConceptPropertyEntity_pruneDataForUpdatedUserDomainConcept_userDomainConceptID_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));

  return sqlite3_bind_int64(a2, 2, 1);
}

+ (id)deviceLocalPropertiesWithUserDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  v8 = MEMORY[0x277CBEB18];
  transactionCopy = transaction;
  v10 = objc_alloc_init(v8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __100__HDUserDomainConceptPropertyEntity_deviceLocalPropertiesWithUserDomainConceptID_transaction_error___block_invoke;
  v14[3] = &unk_278628AB0;
  v11 = v10;
  v15 = v11;
  LODWORD(error) = [(HDUserDomainConceptPropertyEntity *)self _enumerateConceptPropertiesWithUserDomainConceptID:d propertyCategory:2 transaction:transactionCopy error:error enumerationHandler:v14];

  if (error)
  {
    v12 = [objc_alloc(MEMORY[0x277CCDB28]) initWithProperties:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)deleteDeviceLocalPropertiesWithType:(int64_t)type userDomainConceptID:(int64_t)d transaction:(id)transaction error:(id *)error
{
  protectedDatabase = [transaction protectedDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __111__HDUserDomainConceptPropertyEntity_deleteDeviceLocalPropertiesWithType_userDomainConceptID_transaction_error___block_invoke_2;
  v11[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v11[4] = d;
  v11[5] = type;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&deleteDeviceLocalPropertiesWithType_userDomainConceptID_transaction_error__statementKey error:error SQLGenerator:&__block_literal_global_367_0 bindingHandler:v11 enumerationHandler:0];

  return error;
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