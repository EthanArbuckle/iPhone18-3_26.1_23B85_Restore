@interface _BMFrontBoardLibraryNode
+ (id)DisplayElement;
+ (id)configurationForDisplayElement;
+ (id)storeConfigurationForDisplayElement;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMFrontBoardLibraryNode

+ (id)configurationForDisplayElement
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 storeConfigurationForDisplayElement];
  v4 = [a1 syncPolicyForDisplayElement];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$uninstalled == bundleIdentifier" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"app-uninstall" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT bundleIdentifier IN $installed" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"app-uninstall-nightly" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"623FCAAE-AD51-483A-BAA5-284D43428B71"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"FrontBoard.DisplayElement" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)DisplayElement
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForDisplayElement];
  v3 = +[BMFrontBoardDisplayElement columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"FrontBoard.DisplayElement" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"FrontBoard.DisplayElement" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)storeConfigurationForDisplayElement
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:200000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"FrontBoard.DisplayElement" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)a3
{
  if ([a3 isEqualToString:@"DisplayElement"])
  {
    v4 = [a1 DisplayElement];
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
  v3 = +[BMFrontBoardDisplayElement validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end