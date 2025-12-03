@interface MFMailMessageLibraryAddBrandIDColumnUpgradeStep
+ (id)_businessesTableSchema;
+ (id)log;
+ (int)runWithConnection:(id)connection databaseName:(id)name;
@end

@implementation MFMailMessageLibraryAddBrandIDColumnUpgradeStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MFMailMessageLibraryAddBrandIDColumnUpgradeStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_15 != -1)
  {
    dispatch_once(&log_onceToken_15, block);
  }

  v2 = log_log_15;

  return v2;
}

void __54__MFMailMessageLibraryAddBrandIDColumnUpgradeStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_15;
  log_log_15 = v1;
}

+ (int)runWithConnection:(id)connection databaseName:(id)name
{
  connectionCopy = connection;
  nameCopy = name;
  v8 = [connectionCopy tableExists:@"businesses" inDatabase:@"protected"];
  if (!v8)
  {
    goto LABEL_10;
  }

  if (![connectionCopy columnExists:@"brand_id" inTable:@"businesses" type:0])
  {
    _businessesTableSchema = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE %@.%@ RENAME TO old_businesses", nameCopy, @"businesses"];;
    v10 = sqlite3_exec([connectionCopy sqlDB], -[NSObject UTF8String](_businessesTableSchema, "UTF8String"), 0, 0, 0);
    if (v10)
    {
      v11 = +[MFMailMessageLibraryAddBrandIDColumnUpgradeStep log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[MFMailMessageLibraryAddBrandIDColumnUpgradeStep runWithConnection:databaseName:];
      }

      goto LABEL_14;
    }

LABEL_10:
    _businessesTableSchema = [self _businessesTableSchema];
    v11 = [_businessesTableSchema definitionWithDatabaseName:nameCopy];
    v10 = sqlite3_exec([connectionCopy sqlDB], -[NSObject UTF8String](v11, "UTF8String"), 0, 0, 0);
    if (v10)
    {
      v12 = +[MFMailMessageLibraryAddBrandIDColumnUpgradeStep log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[MFMailMessageLibraryAddBrandIDColumnUpgradeStep runWithConnection:databaseName:];
      }
    }

    else
    {
      if (!v8)
      {
        v10 = 0;
        goto LABEL_14;
      }

      v10 = sqlite3_exec([connectionCopy sqlDB], "INSERT INTO businesses (ROWID, domain, address_comment) SELECT ROWID, domain, address_comment FROM old_businesses;", 0, 0, 0);
      if (v10)
      {
        v12 = +[MFMailMessageLibraryAddBrandIDColumnUpgradeStep log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          +[MFMailMessageLibraryAddBrandIDColumnUpgradeStep runWithConnection:databaseName:];
        }
      }

      else
      {
        v10 = sqlite3_exec([connectionCopy sqlDB], "DROP TABLE old_businesses", 0, 0, 0);
        if (!v10)
        {
          goto LABEL_14;
        }

        v12 = +[MFMailMessageLibraryAddBrandIDColumnUpgradeStep log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          +[MFMailMessageLibraryAddBrandIDColumnUpgradeStep runWithConnection:databaseName:];
        }
      }
    }

LABEL_14:
    goto LABEL_15;
  }

  _businessesTableSchema = +[MFMailMessageLibraryAddBrandIDColumnUpgradeStep log];
  if (os_log_type_enabled(_businessesTableSchema, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, _businessesTableSchema, OS_LOG_TYPE_DEFAULT, "Brand ID column already exists, skipping upgrade step.", buf, 2u);
  }

  v10 = 0;
LABEL_15:

  return v10;
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

@end