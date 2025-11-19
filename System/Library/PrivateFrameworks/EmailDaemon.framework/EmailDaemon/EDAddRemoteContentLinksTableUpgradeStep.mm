@interface EDAddRemoteContentLinksTableUpgradeStep
+ (id)_remoteContentLinksTableSchema;
+ (int)runWithConnection:(id)a3;
@end

@implementation EDAddRemoteContentLinksTableUpgradeStep

+ (int)runWithConnection:(id)a3
{
  v4 = a3;
  v5 = [a1 _remoteContentLinksTableSchema];
  v6 = [v5 definitionWithDatabaseName:0];
  v7 = sqlite3_exec([v4 sqlDB], objc_msgSend(v6, "UTF8String"), 0, 0, 0);

  return v7;
}

+ (id)_remoteContentLinksTableSchema
{
  v17[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"url" collation:1 nullable:0];
  v17[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"requests" nullable:0 defaultValue:&unk_1F45E6568];
  v17[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_seen_date" nullable:0];
  v17[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"last_request_date" nullable:0 defaultValue:&unk_1F45E6568];
  v17[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v8 = [v2 initWithName:@"remote_content_links" rowIDType:1 columns:v7];

  v16 = @"url";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  [v8 addUniquenessConstraintForColumns:v9 conflictResolution:1];

  v15[0] = @"requests";
  v15[1] = @"last_request_date";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v8 addIndexForColumns:v10];

  v14[0] = @"requests";
  v14[1] = @"last_seen_date";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v8 addIndexForColumns:v11];

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

@end