@interface EDAddBusinessColumnsUpgradeStep
+ (BOOL)runWithConnection:(id)connection protectedIndexInitialized:(BOOL)initialized protectedDatabaseName:(id)name;
+ (id)_businessesTableSchema;
+ (id)log;
@end

@implementation EDAddBusinessColumnsUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EDAddBusinessColumnsUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_2 != -1)
  {
    dispatch_once(&log_onceToken_2, block);
  }

  v2 = log_log_2;

  return v2;
}

void __38__EDAddBusinessColumnsUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_2;
  log_log_2 = v1;
}

+ (BOOL)runWithConnection:(id)connection protectedIndexInitialized:(BOOL)initialized protectedDatabaseName:(id)name
{
  initializedCopy = initialized;
  v22 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  nameCopy = name;
  if (!initializedCopy)
  {
    goto LABEL_11;
  }

  if (!sqlite3_exec([connectionCopy sqlDB], "DROP TABLE businesses", 0, 0, 0))
  {
    _businessesTableSchema = [self _businessesTableSchema];
    v12 = [_businessesTableSchema definitionWithDatabaseName:nameCopy];
    if (sqlite3_exec([connectionCopy sqlDB], objc_msgSend(v12, "UTF8String"), 0, 0, 0))
    {
      v13 = +[EDAddBusinessColumnsUpgradeStep log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [EDAddBusinessColumnsUpgradeStep runWithConnection:v13 protectedIndexInitialized:? protectedDatabaseName:?];
      }

      goto LABEL_19;
    }

LABEL_11:
    if ([connectionCopy columnExists:@"last_bcs_sync" inTable:@"business_addresses" type:0])
    {
      v14 = +[EDAddBusinessColumnsUpgradeStep log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = @"last_bcs_sync";
        _os_log_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_DEFAULT, "%@ column already exists.", buf, 0xCu);
      }
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ALTER TABLE %@ ADD %@ INTEGER", @"business_addresses", @"last_bcs_sync"];
      if (sqlite3_exec([connectionCopy sqlDB], objc_msgSend(v15, "UTF8String"), 0, 0, 0))
      {
        v16 = +[EDAddBusinessColumnsUpgradeStep log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [EDAddBusinessColumnsUpgradeStep runWithConnection:v16 protectedIndexInitialized:? protectedDatabaseName:?];
        }

        goto LABEL_19;
      }
    }

    v17 = 1;
    goto LABEL_22;
  }

  v10 = +[EDAddBusinessColumnsUpgradeStep log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [EDAddBusinessColumnsUpgradeStep runWithConnection:v10 protectedIndexInitialized:? protectedDatabaseName:?];
  }

LABEL_19:
  v17 = 0;
LABEL_22:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)_businessesTableSchema
{
  v43[4] = *MEMORY[0x1E69E9840];
  v37 = [MEMORY[0x1E699B8D0] textColumnWithName:@"address_comment" collation:2 nullable:1];
  v36 = [MEMORY[0x1E699B8D0] textColumnWithName:@"domain" collation:2 nullable:1];
  v35 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"brand_id" nullable:1];
  v34 = [MEMORY[0x1E699B8D0] textColumnWithName:@"localized_brand_name" collation:0 nullable:1];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v43[0] = v37;
  v43[1] = v36;
  v43[2] = v35;
  v43[3] = v34;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
  v33 = [v2 initWithName:@"businesses" rowIDType:2 columns:v3];

  v42[0] = @"address_comment";
  v42[1] = @"domain";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  [v33 addUniquenessConstraintForColumns:v4 conflictResolution:1];

  v41 = @"brand_id";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  [v33 addUniquenessConstraintForColumns:v5 conflictResolution:1];

  v6 = objc_alloc(MEMORY[0x1E699B898]);
  columnExpression = [v37 columnExpression];
  isNotNull = [columnExpression isNotNull];
  v40[0] = isNotNull;
  columnExpression2 = [v36 columnExpression];
  isNotNull2 = [columnExpression2 isNotNull];
  v40[1] = isNotNull2;
  columnExpression3 = [v35 columnExpression];
  isNull = [columnExpression3 isNull];
  v40[2] = isNull;
  columnExpression4 = [v34 columnExpression];
  isNull2 = [columnExpression4 isNull];
  v40[3] = isNull2;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  v32 = [v6 initWithExpressions:v15];

  v16 = objc_alloc(MEMORY[0x1E699B898]);
  columnExpression5 = [v37 columnExpression];
  isNull3 = [columnExpression5 isNull];
  v39[0] = isNull3;
  columnExpression6 = [v36 columnExpression];
  isNull4 = [columnExpression6 isNull];
  v39[1] = isNull4;
  columnExpression7 = [v35 columnExpression];
  isNotNull3 = [columnExpression7 isNotNull];
  v39[2] = isNotNull3;
  columnExpression8 = [v34 columnExpression];
  isNotNull4 = [columnExpression8 isNotNull];
  v39[3] = isNotNull4;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
  v26 = [v16 initWithExpressions:v25];

  v27 = objc_alloc(MEMORY[0x1E699B928]);
  v38[0] = v32;
  v38[1] = v26;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v29 = [v27 initWithExpressions:v28];

  [v33 addCheckConstraintForExpression:v29];
  v30 = *MEMORY[0x1E69E9840];

  return v33;
}

+ (void)runWithConnection:(os_log_t)log protectedIndexInitialized:protectedDatabaseName:.cold.3(os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138412546;
  v3 = @"last_bcs_sync";
  v4 = 2112;
  v5 = @"business_addresses";
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to add column %@ to %@ table", &v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end