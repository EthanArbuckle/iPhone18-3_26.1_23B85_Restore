@interface _BMOSAnalyticsCALibraryNode
+ (id)HighEngagementDevices;
+ (id)configurationForHighEngagementDevices;
+ (id)storeConfigurationForHighEngagementDevices;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMOSAnalyticsCALibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"HighEngagementDevices"])
  {
    highEngagementDevices = [self HighEngagementDevices];
  }

  else
  {
    highEngagementDevices = 0;
  }

  return highEngagementDevices;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMOSAnalyticsHighEngagementDevices validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForHighEngagementDevices
{
  storeConfigurationForHighEngagementDevices = [self storeConfigurationForHighEngagementDevices];
  syncPolicyForHighEngagementDevices = [self syncPolicyForHighEngagementDevices];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1B58D3EB-787D-4546-BAA7-34159B3499AC"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"OSAnalytics.CA.HighEngagementDevices" eventClass:objc_opt_class() storeConfig:storeConfigurationForHighEngagementDevices syncPolicy:syncPolicyForHighEngagementDevices legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForHighEngagementDevices
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:259200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"OSAnalytics.CA.HighEngagementDevices" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)HighEngagementDevices
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForHighEngagementDevices = [self configurationForHighEngagementDevices];
  v3 = +[BMOSAnalyticsHighEngagementDevices columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"OSAnalytics.CA.HighEngagementDevices" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"OSAnalytics.CA.HighEngagementDevices" schema:v9 configuration:configurationForHighEngagementDevices];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end