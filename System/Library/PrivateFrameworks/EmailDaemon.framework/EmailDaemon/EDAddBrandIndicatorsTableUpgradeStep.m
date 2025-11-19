@interface EDAddBrandIndicatorsTableUpgradeStep
+ (id)_brandIndicatorsTableSchema;
+ (int)runWithConnection:(id)a3 databaseName:(id)a4;
@end

@implementation EDAddBrandIndicatorsTableUpgradeStep

+ (int)runWithConnection:(id)a3 databaseName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sqlite3_exec([v6 sqlDB], "DROP TABLE IF EXISTS brand_indicators", 0, 0, 0);
  if (!v8)
  {
    v9 = [a1 _brandIndicatorsTableSchema];
    v10 = [v9 definitionWithDatabaseName:v7];
    v8 = sqlite3_exec([v6 sqlDB], objc_msgSend(v10, "UTF8String"), 0, 0, 0);
  }

  return v8;
}

+ (id)_brandIndicatorsTableSchema
{
  v17[6] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] textColumnWithName:@"url" collation:1 nullable:0];
  v17[0] = v3;
  v4 = [MEMORY[0x1E699B8D0] textColumnWithName:@"evidence_url" collation:1 nullable:0];
  v17[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] blobColumnWithName:@"indicator" nullable:1];
  v17[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] textColumnWithName:@"indicator_hash" collation:1 nullable:1];
  v17[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] textColumnWithName:@"hash_algorithm" collation:1 nullable:1];
  v17[4] = v7;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"verified" nullable:0 defaultValue:&unk_1F45E6538];
  v17[5] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:6];
  v10 = [v2 initWithName:@"brand_indicators" rowIDType:2 columns:v9];

  v16 = @"url";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  [v10 addUniquenessConstraintForColumns:v11 conflictResolution:1];

  v15[0] = @"url";
  v15[1] = @"verified";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v10 addIndexForColumns:v12];

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

@end