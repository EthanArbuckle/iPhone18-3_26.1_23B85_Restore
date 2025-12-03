@interface _BMScreenTimeLibraryNode
+ (id)AppUsage;
+ (id)configurationForAppUsage;
+ (id)storeConfigurationForAppUsage;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMScreenTimeLibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"AppUsage"])
  {
    appUsage = [self AppUsage];
  }

  else
  {
    appUsage = 0;
  }

  return appUsage;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMScreenTimeAppUsage validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForAppUsage
{
  v18[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForAppUsage = [self storeConfigurationForAppUsage];
  syncPolicyForAppUsage = [self syncPolicyForAppUsage];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$uninstalled == bundleID" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"app-uninstall" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT bundleID IN $installed" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"app-uninstall-nightly" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1024B613-9E9C-4711-9C96-52E92CC76B00"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"ScreenTime.AppUsage" eventClass:objc_opt_class() storeConfig:storeConfigurationForAppUsage syncPolicy:syncPolicyForAppUsage legacyNames:0 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForAppUsage
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ScreenTime.AppUsage" domain:0 segmentSize:0x80000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)AppUsage
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAppUsage = [self configurationForAppUsage];
  v3 = +[BMScreenTimeAppUsage columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ScreenTime.AppUsage" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ScreenTime.AppUsage" schema:v9 configuration:configurationForAppUsage];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end