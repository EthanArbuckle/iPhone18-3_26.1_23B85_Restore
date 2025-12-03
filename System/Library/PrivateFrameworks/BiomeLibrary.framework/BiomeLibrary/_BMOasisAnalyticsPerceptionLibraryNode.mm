@interface _BMOasisAnalyticsPerceptionLibraryNode
+ (id)SLAM;
+ (id)configurationForSLAM;
+ (id)storeConfigurationForSLAM;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMOasisAnalyticsPerceptionLibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"SLAM"])
  {
    sLAM = [self SLAM];
  }

  else
  {
    sLAM = 0;
  }

  return sLAM;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMOasisAnalyticsPerceptionSLAM validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForSLAM
{
  storeConfigurationForSLAM = [self storeConfigurationForSLAM];
  syncPolicyForSLAM = [self syncPolicyForSLAM];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"63D82BE1-49B0-4FAA-98E4-25630F7685C5"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"OasisAnalytics.Perception.SLAM" eventClass:objc_opt_class() storeConfig:storeConfigurationForSLAM syncPolicy:syncPolicyForSLAM legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.arkitd" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSLAM
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x20000000 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"OasisAnalytics.Perception.SLAM" domain:1 segmentSize:0x2000000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)SLAM
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSLAM = [self configurationForSLAM];
  v3 = +[BMOasisAnalyticsPerceptionSLAM columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"OasisAnalytics.Perception.SLAM" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"OasisAnalytics.Perception.SLAM" schema:v9 configuration:configurationForSLAM];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end