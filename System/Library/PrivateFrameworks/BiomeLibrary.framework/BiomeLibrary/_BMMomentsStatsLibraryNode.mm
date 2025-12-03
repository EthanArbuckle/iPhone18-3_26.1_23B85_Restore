@interface _BMMomentsStatsLibraryNode
+ (id)EventData;
+ (id)configurationForEventData;
+ (id)storeConfigurationForEventData;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMMomentsStatsLibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"EventData"])
  {
    eventData = [self EventData];
  }

  else
  {
    eventData = 0;
  }

  return eventData;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMomentsEventData validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForEventData
{
  storeConfigurationForEventData = [self storeConfigurationForEventData];
  syncPolicyForEventData = [self syncPolicyForEventData];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00B84806-AA83-4E93-9DAA-655F8971FE0E"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Moments.Stats.EventData" eventClass:objc_opt_class() storeConfig:storeConfigurationForEventData syncPolicy:syncPolicyForEventData legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForEventData
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:25000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Moments.Stats.EventData" domain:0 segmentSize:0x100000 protectionClass:2 pruningPolicy:v2];

  return v3;
}

+ (id)EventData
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForEventData = [self configurationForEventData];
  v3 = +[BMMomentsEventData columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Moments.Stats.EventData" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Moments.Stats.EventData" schema:v9 configuration:configurationForEventData];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end