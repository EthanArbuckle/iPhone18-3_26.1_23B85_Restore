@interface EDAddSendersTableUpgradeStep
+ (EFSQLSchema)schema;
+ (EFSQLTableSchema)senderAddressesTableSchema;
+ (EFSQLTableSchema)sendersTableSchema;
+ (int)runWithConnection:(id)a3;
@end

@implementation EDAddSendersTableUpgradeStep

+ (EFSQLSchema)schema
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 sendersTableSchema];
  v4 = [a1 senderAddressesTableSchema];
  v5 = [v4 columnForName:@"sender"];
  [v5 setAsForeignKeyForTable:v3 onDelete:2 onUpdate:0];

  v6 = objc_alloc(MEMORY[0x1E699B940]);
  v11[0] = v3;
  v11[1] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v8 = [v6 initWithTables:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (EFSQLTableSchema)sendersTableSchema
{
  v14[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"contact_identifier" collation:1 nullable:1];
  v14[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"bucket" nullable:0 defaultValue:&unk_1F45E6580];
  v14[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"user_initiated" nullable:0 defaultValue:MEMORY[0x1E695E118]];
  v14[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v7 = [v2 initWithName:@"senders" rowIDType:2 columns:v6];

  v13 = @"contact_identifier";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [v7 addUniquenessConstraintForColumns:v8 conflictResolution:1];

  v12 = @"bucket";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v7 addIndexForColumns:v9];

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (EFSQLTableSchema)senderAddressesTableSchema
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"sender" nullable:0];
  v10[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v5 = [v2 initWithName:@"sender_addresses" rowIDType:1 rowIDAlias:@"address" columns:v4];

  v9 = @"sender";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  [v5 addIndexForColumns:v6];

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (int)runWithConnection:(id)a3
{
  v4 = a3;
  [v4 executeStatementString:@"DROP TABLE IF EXISTS senders;" errorMessage:@"Dropping senders table"];
  [v4 executeStatementString:@"DROP TABLE IF EXISTS sender_addresses;" errorMessage:@"Dropping sender_addresses table"];
  v5 = [a1 schema];
  v6 = [v5 definitionWithDatabaseName:0];

  LODWORD(v5) = sqlite3_exec([v4 sqlDB], objc_msgSend(v6, "UTF8String"), 0, 0, 0);
  return v5;
}

@end