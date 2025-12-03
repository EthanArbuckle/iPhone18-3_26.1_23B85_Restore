@interface _BMOasisAnalyticsLibraryNode
+ (id)SystemInfo;
+ (id)configurationForSystemInfo;
+ (id)storeConfigurationForSystemInfo;
+ (id)streamWithName:(id)name;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMOasisAnalyticsLibraryNode

+ (id)sublibraries
{
  v9[3] = *MEMORY[0x1E69E9840];
  device = [self Device];
  gazeKit = [self GazeKit];
  v9[1] = gazeKit;
  perception = [self Perception];
  v9[2] = perception;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"SystemInfo"])
  {
    systemInfo = [self SystemInfo];
  }

  else
  {
    systemInfo = 0;
  }

  return systemInfo;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMOasisAnalyticsSystemInfo validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForSystemInfo
{
  storeConfigurationForSystemInfo = [self storeConfigurationForSystemInfo];
  syncPolicyForSystemInfo = [self syncPolicyForSystemInfo];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"05848D64-3A31-4472-AFCE-C27EDB32E30C"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"OasisAnalytics.SystemInfo" eventClass:objc_opt_class() storeConfig:storeConfigurationForSystemInfo syncPolicy:syncPolicyForSystemInfo legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.arkitd" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSystemInfo
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"OasisAnalytics.SystemInfo" domain:1 segmentSize:0x100000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)SystemInfo
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSystemInfo = [self configurationForSystemInfo];
  v3 = +[BMOasisAnalyticsSystemInfo columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"OasisAnalytics.SystemInfo" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"OasisAnalytics.SystemInfo" schema:v9 configuration:configurationForSystemInfo];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end