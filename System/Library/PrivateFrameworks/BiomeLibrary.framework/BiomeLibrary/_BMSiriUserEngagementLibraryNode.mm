@interface _BMSiriUserEngagementLibraryNode
+ (id)UserEngagementStatistics;
+ (id)configurationForUserEngagementStatistics;
+ (id)storeConfigurationForUserEngagementStatistics;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMSiriUserEngagementLibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"UserEngagementStatistics"])
  {
    userEngagementStatistics = [self UserEngagementStatistics];
  }

  else
  {
    userEngagementStatistics = 0;
  }

  return userEngagementStatistics;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSiriUserEngagementStatistics validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForUserEngagementStatistics
{
  storeConfigurationForUserEngagementStatistics = [self storeConfigurationForUserEngagementStatistics];
  syncPolicyForUserEngagementStatistics = [self syncPolicyForUserEngagementStatistics];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"764F1097-31D4-4854-9B60-B71CB138085B"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.UserEngagement.UserEngagementStatistics" eventClass:objc_opt_class() storeConfig:storeConfigurationForUserEngagementStatistics syncPolicy:syncPolicyForUserEngagementStatistics legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForUserEngagementStatistics
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.UserEngagement.UserEngagementStatistics" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)UserEngagementStatistics
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForUserEngagementStatistics = [self configurationForUserEngagementStatistics];
  v3 = +[BMSiriUserEngagementStatistics columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.UserEngagement.UserEngagementStatistics" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.UserEngagement.UserEngagementStatistics" schema:v9 configuration:configurationForUserEngagementStatistics];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end