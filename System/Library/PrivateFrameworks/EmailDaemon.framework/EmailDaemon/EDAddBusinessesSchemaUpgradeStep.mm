@interface EDAddBusinessesSchemaUpgradeStep
+ (BOOL)runWithConnection:(id)connection error:(id *)error;
+ (id)_businessAddressesTableSchema;
+ (id)_businessCategoriesTableSchema;
+ (id)_businessesTableSchema;
+ (id)log;
+ (int)runWithConnection:(id)connection databaseName:(id)name updateProtectedSchema:(BOOL)schema;
@end

@implementation EDAddBusinessesSchemaUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__EDAddBusinessesSchemaUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_3 != -1)
  {
    dispatch_once(&log_onceToken_3, block);
  }

  v2 = log_log_3;

  return v2;
}

void __39__EDAddBusinessesSchemaUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_3;
  log_log_3 = v1;
}

+ (BOOL)runWithConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  v7 = [self runWithConnection:connectionCopy databaseName:0 updateProtectedSchema:1];
  v8 = v7;
  if (error && v7)
  {
    *error = [MEMORY[0x1E696ABC0] ef_SQLiteErrorWithCode:v7];
  }

  return v8 == 0;
}

+ (int)runWithConnection:(id)connection databaseName:(id)name updateProtectedSchema:(BOOL)schema
{
  schemaCopy = schema;
  connectionCopy = connection;
  nameCopy = name;
  v10 = sqlite3_exec([connectionCopy sqlDB], "DROP TABLE IF EXISTS businesses", 0, 0, 0);
  if (v10)
  {
    nameCopy = +[EDAddBusinessesSchemaUpgradeStep log];
    if (os_log_type_enabled(nameCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, nameCopy, OS_LOG_TYPE_DEFAULT, "Failed to drop businesses table", buf, 2u);
    }

    goto LABEL_29;
  }

  if (schemaCopy)
  {
    if ([connectionCopy columnExists:@"domain" inTable:@"addresses" type:0])
    {
      nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE %@.addresses DROP COLUMN domain", nameCopy];;
      v10 = sqlite3_exec([connectionCopy sqlDB], -[NSObject UTF8String](nameCopy, "UTF8String"), 0, 0, 0);
      if (v10)
      {
        v12 = +[EDAddBusinessesSchemaUpgradeStep log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Failed to drop domain column in addresses table", v26, 2u);
        }

        goto LABEL_29;
      }

      nameCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE %@.addresses DROP COLUMN business", nameCopy];;
      v10 = sqlite3_exec([connectionCopy sqlDB], objc_msgSend(nameCopy2, "UTF8String"), 0, 0, 0);
      if (v10)
      {
        v14 = +[EDAddBusinessesSchemaUpgradeStep log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 0;
          v15 = "Failed to drop business column in addresses table";
          v16 = &v25;
LABEL_17:
          _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }

    nameCopy = [self _businessesTableSchema];
    nameCopy2 = [nameCopy definitionWithDatabaseName:nameCopy];
    v10 = sqlite3_exec([connectionCopy sqlDB], objc_msgSend(nameCopy2, "UTF8String"), 0, 0, 0);
    if (v10)
    {
      v14 = +[EDAddBusinessesSchemaUpgradeStep log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        v15 = "Failed to create businesses table";
        v16 = v24;
        goto LABEL_17;
      }

LABEL_18:

      goto LABEL_29;
    }
  }

  nameCopy = [self _businessAddressesTableSchema];
  v17 = [nameCopy definitionWithDatabaseName:0];
  v10 = sqlite3_exec([connectionCopy sqlDB], objc_msgSend(v17, "UTF8String"), 0, 0, 0);
  if (v10)
  {
    _businessCategoriesTableSchema = +[EDAddBusinessesSchemaUpgradeStep log];
    if (os_log_type_enabled(_businessCategoriesTableSchema, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_1C61EF000, _businessCategoriesTableSchema, OS_LOG_TYPE_DEFAULT, "Failed to create business_addresses table", v23, 2u);
    }

    v19 = v17;
  }

  else
  {
    _businessCategoriesTableSchema = [self _businessCategoriesTableSchema];
    v19 = [_businessCategoriesTableSchema definitionWithDatabaseName:0];

    v10 = sqlite3_exec([connectionCopy sqlDB], objc_msgSend(v19, "UTF8String"), 0, 0, 0);
    if (v10)
    {
      v20 = +[EDAddBusinessesSchemaUpgradeStep log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Failed to create business_categories table", v22, 2u);
      }
    }
  }

LABEL_29:
  return v10;
}

+ (id)_businessCategoriesTableSchema
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"business" nullable:0];
  v11[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"category" nullable:0];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v6 = [v2 initWithName:@"business_categories" rowIDType:1 columns:v5];

  v10 = @"business";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [v6 addUniquenessConstraintForColumns:v7 conflictResolution:1];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_businessesTableSchema
{
  v34[3] = *MEMORY[0x1E69E9840];
  v28 = [MEMORY[0x1E699B8D0] textColumnWithName:@"domain" collation:2 nullable:1];
  v27 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"brand_id" nullable:1];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"address_comment" collation:2 nullable:0];
  v34[0] = v3;
  v34[1] = v28;
  v34[2] = v27;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
  v5 = [v2 initWithName:@"businesses" rowIDType:2 columns:v4];

  v33[0] = @"address_comment";
  v33[1] = @"domain";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  [v5 addUniquenessConstraintForColumns:v6 conflictResolution:1];

  v32 = @"brand_id";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  [v5 addUniquenessConstraintForColumns:v7 conflictResolution:1];

  v8 = objc_alloc(MEMORY[0x1E699B898]);
  columnExpression = [v28 columnExpression];
  isNotNull = [columnExpression isNotNull];
  v31[0] = isNotNull;
  columnExpression2 = [v27 columnExpression];
  isNull = [columnExpression2 isNull];
  v31[1] = isNull;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v14 = [v8 initWithExpressions:v13];

  v15 = objc_alloc(MEMORY[0x1E699B898]);
  columnExpression3 = [v28 columnExpression];
  isNull2 = [columnExpression3 isNull];
  v30[0] = isNull2;
  columnExpression4 = [v27 columnExpression];
  isNotNull2 = [columnExpression4 isNotNull];
  v30[1] = isNotNull2;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v21 = [v15 initWithExpressions:v20];

  v22 = objc_alloc(MEMORY[0x1E699B928]);
  v29[0] = v14;
  v29[1] = v21;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v24 = [v22 initWithExpressions:v23];

  [v5 addCheckConstraintForExpression:v24];
  v25 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_businessAddressesTableSchema
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"address" nullable:0];
  v13[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"business" nullable:0];
  v13[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"category" nullable:1];
  v13[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_modified" nullable:1];
  v13[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v8 = [v2 initWithName:@"business_addresses" rowIDType:1 columns:v7];

  v12 = @"address";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v8 addUniquenessConstraintForColumns:v9 conflictResolution:1];

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

@end