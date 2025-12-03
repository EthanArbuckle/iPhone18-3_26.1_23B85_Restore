@interface _BMOSAnalyticsHardwareLibraryNode
+ (id)Reliability;
+ (id)configurationForReliability;
+ (id)storeConfigurationForReliability;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMOSAnalyticsHardwareLibraryNode

+ (id)Reliability
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForReliability = [self configurationForReliability];
  v3 = +[BMOSAnalyticsReliability columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"OSAnalytics.Hardware.Reliability" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"OSAnalytics.Hardware.Reliability" schema:v9 configuration:configurationForReliability];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForReliability
{
  storeConfigurationForReliability = [self storeConfigurationForReliability];
  syncPolicyForReliability = [self syncPolicyForReliability];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"67064771-419C-4174-A1A4-87376710E986"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"OSAnalytics.Hardware.Reliability" eventClass:objc_opt_class() storeConfig:storeConfigurationForReliability syncPolicy:syncPolicyForReliability legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForReliability
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"OSAnalytics.Hardware.Reliability" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Reliability"])
  {
    reliability = [self Reliability];
  }

  else
  {
    reliability = 0;
  }

  return reliability;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMOSAnalyticsReliability validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end