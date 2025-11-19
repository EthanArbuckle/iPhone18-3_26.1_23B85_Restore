@interface _BMProactiveHarvestingSafariLibraryNode
+ (id)PageView;
+ (id)configurationForPageView;
+ (id)storeConfigurationForPageView;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMProactiveHarvestingSafariLibraryNode

+ (id)streamWithName:(id)a3
{
  if ([a3 isEqualToString:@"PageView"])
  {
    v4 = [a1 PageView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMProactiveHarvestingPageView validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForPageView
{
  v3 = [a1 storeConfigurationForPageView];
  v4 = [a1 syncPolicyForPageView];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F0BAD425-8E52-4525-A017-D2640F29AE8C"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ProactiveHarvesting.Safari.PageView" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3E8970 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPageView
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x40000000 maxStreamSize:20000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ProactiveHarvesting.Safari.PageView" domain:0 segmentSize:0x1000000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)PageView
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForPageView];
  v3 = +[BMProactiveHarvestingPageView columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ProactiveHarvesting.Safari.PageView" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ProactiveHarvesting.Safari.PageView" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end