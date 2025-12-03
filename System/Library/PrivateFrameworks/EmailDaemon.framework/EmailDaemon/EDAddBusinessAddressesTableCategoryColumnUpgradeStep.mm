@interface EDAddBusinessAddressesTableCategoryColumnUpgradeStep
+ (id)_businessCategoriesTableSchema;
+ (id)log;
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddBusinessAddressesTableCategoryColumnUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__EDAddBusinessAddressesTableCategoryColumnUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_1 != -1)
  {
    dispatch_once(&log_onceToken_1, block);
  }

  v2 = log_log_1;

  return v2;
}

void __59__EDAddBusinessAddressesTableCategoryColumnUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_1;
  log_log_1 = v1;
}

+ (int)runWithConnection:(id)connection
{
  v26 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if ([connectionCopy columnExists:@"address" inTable:@"business_categories" type:0])
  {
    v5 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE business_categories RENAME TO old_business_categories;", 0, 0, 0);
    if (v5)
    {
      _businessCategoriesTableSchema = +[EDAddBusinessAddressesTableCategoryColumnUpgradeStep log];
      if (os_log_type_enabled(_businessCategoriesTableSchema, OS_LOG_TYPE_ERROR))
      {
        +[EDAddBusinessAddressesTableCategoryColumnUpgradeStep runWithConnection:];
      }

      goto LABEL_30;
    }

    _businessCategoriesTableSchema = [self _businessCategoriesTableSchema];
    v7 = [_businessCategoriesTableSchema definitionWithDatabaseName:&stru_1F45B4608];
    v5 = sqlite3_exec([connectionCopy sqlDB], objc_msgSend(v7, "UTF8String"), 0, 0, 0);
    if (v5)
    {
      v8 = +[EDAddBusinessAddressesTableCategoryColumnUpgradeStep log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[EDAddBusinessAddressesTableCategoryColumnUpgradeStep runWithConnection:];
      }

LABEL_14:

      goto LABEL_30;
    }

    v5 = sqlite3_exec([connectionCopy sqlDB], "INSERT INTO business_categories (business, category) SELECT business, category FROM old_business_categories;", 0, 0, 0);
    if (v5)
    {
      v8 = +[EDAddBusinessAddressesTableCategoryColumnUpgradeStep log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[EDAddBusinessAddressesTableCategoryColumnUpgradeStep runWithConnection:];
      }

      goto LABEL_14;
    }

    v5 = sqlite3_exec([connectionCopy sqlDB], "DROP TABLE old_business_categories;", 0, 0, 0);
    if (v5)
    {
      v8 = +[EDAddBusinessAddressesTableCategoryColumnUpgradeStep log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[EDAddBusinessAddressesTableCategoryColumnUpgradeStep runWithConnection:];
      }

      goto LABEL_14;
    }
  }

  if (([connectionCopy columnExists:@"category" inTable:@"business_addresses" type:0] & 1) != 0 || (v5 = sqlite3_exec(objc_msgSend(connectionCopy, "sqlDB"), objc_msgSend(@"ALTER TABLE business_addresses ADD COLUMN category INTEGER;", "UTF8String"), 0, 0, 0)) == 0)
  {
    _businessCategoriesTableSchema = [objc_alloc(MEMORY[0x1E699B948]) initWithResultColumn:@"business" table:@"business_categories"];
    [_businessCategoriesTableSchema addResultColumn:@"category"];
    *buf = 0;
    v21 = buf;
    v22 = 0x2020000000;
    v23 = 1;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__EDAddBusinessAddressesTableCategoryColumnUpgradeStep_runWithConnection___block_invoke;
    v17[3] = &unk_1E8250178;
    v19 = buf;
    v18 = connectionCopy;
    v16 = 0;
    v9 = [v18 executeSelectStatement:_businessCategoriesTableSchema withBlock:v17 error:&v16];
    v10 = v16;
    if (v9)
    {
      v11 = +[EDAddBusinessAddressesTableCategoryColumnUpgradeStep log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 134217984;
        v25 = 0;
        _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Successfully populated %lu rows in the business_addresses table.", v24, 0xCu);
      }

      if (v21[24])
      {
        v5 = 0;
LABEL_29:

        _Block_object_dispose(buf, 8);
        goto LABEL_30;
      }
    }

    else
    {
      v12 = +[EDAddBusinessAddressesTableCategoryColumnUpgradeStep log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [v10 ef_publicDescription];
        [(EDAddBusinessAddressesTableCategoryColumnUpgradeStep *)ef_publicDescription runWithConnection:v24, v12];
      }
    }

    v5 = 1;
    goto LABEL_29;
  }

  _businessCategoriesTableSchema = +[EDAddBusinessAddressesTableCategoryColumnUpgradeStep log];
  if (os_log_type_enabled(_businessCategoriesTableSchema, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, _businessCategoriesTableSchema, OS_LOG_TYPE_DEFAULT, "Failed to add category column in business_addresses table", buf, 2u);
  }

LABEL_30:

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

void __74__EDAddBusinessAddressesTableCategoryColumnUpgradeStep_runWithConnection___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 numberValue];

  v6 = [v3 objectAtIndexedSubscript:1];
  v7 = [v6 numberValue];

  v8 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"business_addresses"];
  [v8 setObject:v7 forKeyedSubscript:@"category"];
  v9 = [MEMORY[0x1E699B8C8] column:@"business"];
  v10 = [v9 equalTo:v5];
  [v8 setWhereClause:v10];

  v11 = *(*(a1 + 40) + 8);
  if (*(v11 + 24) == 1)
  {
    v12 = *(a1 + 32);
    v22 = 0;
    v13 = [v12 executeUpdateStatement:v8 error:&v22];
    v14 = v22;
    v11 = *(*(a1 + 40) + 8);
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  *(v11 + 24) = v13;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v15 = +[EDAddBusinessAddressesTableCategoryColumnUpgradeStep log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v5 longLongValue];
      v17 = [v7 integerValue];
      *buf = 134218240;
      v24 = v16;
      v25 = 2048;
      v26 = v17;
      _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_DEFAULT, "Successfully updated category for business ID %lld to %ld", buf, 0x16u);
    }
  }

  else
  {
    v15 = +[EDAddBusinessAddressesTableCategoryColumnUpgradeStep log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = [v5 longLongValue];
      v20 = [v7 integerValue];
      v21 = [v14 ef_publicDescription];
      *buf = 134218498;
      v24 = v19;
      v25 = 2048;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      _os_log_error_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_ERROR, "Failed to update category for business ID %lld to %ld due to error %@{public}", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
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

+ (void)runWithConnection:(os_log_t)log .cold.5(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to update business_addresses table due to error %@{public}", buf, 0xCu);
}

@end