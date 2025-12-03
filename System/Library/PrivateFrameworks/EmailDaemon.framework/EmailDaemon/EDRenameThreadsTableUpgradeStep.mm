@interface EDRenameThreadsTableUpgradeStep
+ (int)runWithConnection:(id)connection;
@end

@implementation EDRenameThreadsTableUpgradeStep

+ (int)runWithConnection:(id)connection
{
  v21[3] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v4 = objc_alloc(MEMORY[0x1E699B958]);
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"message" nullable:0];
  v21[0] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"reference" nullable:0 defaultValue:&unk_1F45E6970];
  v21[1] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"is_originator" nullable:0 defaultValue:&unk_1F45E6970];
  v21[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v9 = [v4 initWithName:@"message_references" rowIDType:1 columns:v8];

  [v9 addIndexForColumns:&unk_1F45E6F70];
  [v9 addIndexForColumns:&unk_1F45E6F88];
  v10 = objc_alloc(MEMORY[0x1E699B958]);
  v11 = [v10 initWithName:@"messages" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
  v12 = [v9 columnForName:@"message"];
  [v12 setAsForeignKeyForTable:v11 onDelete:2 onUpdate:0];

  v13 = [v9 definitionWithDatabaseName:0];
  v20[0] = v13;
  v20[1] = @"INSERT INTO message_references (message, reference, is_originator) SELECT message_id, reference, IFNULL(is_originator, 0) FROM threads";
  v20[2] = @"DROP TABLE IF EXISTS threads";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];

  v15 = [v14 componentsJoinedByString:@"\n"];;
  sqlDB = [connectionCopy sqlDB];
  v17 = v15;
  LODWORD(sqlDB) = sqlite3_exec(sqlDB, [v15 UTF8String], 0, 0, 0);

  v18 = *MEMORY[0x1E69E9840];
  return sqlDB;
}

@end