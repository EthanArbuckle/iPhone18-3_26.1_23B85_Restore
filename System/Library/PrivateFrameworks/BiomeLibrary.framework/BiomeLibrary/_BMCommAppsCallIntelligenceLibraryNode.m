@interface _BMCommAppsCallIntelligenceLibraryNode
+ (id)HoldAssistFedStats;
+ (id)configurationForHoldAssistFedStats;
+ (id)storeConfigurationForHoldAssistFedStats;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMCommAppsCallIntelligenceLibraryNode

+ (id)streamWithName:(id)a3
{
  if ([a3 isEqualToString:@"HoldAssistFedStats"])
  {
    v4 = [a1 HoldAssistFedStats];
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
  v3 = +[BMCommAppsHoldAssistFedStats validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForHoldAssistFedStats
{
  v3 = [a1 storeConfigurationForHoldAssistFedStats];
  v4 = [a1 syncPolicyForHoldAssistFedStats];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"85D272A7-2170-4323-A6FD-AEBBC2BCABA8"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"CommApps.CallIntelligence.HoldAssistFedStats" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForHoldAssistFedStats
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"CommApps.CallIntelligence.HoldAssistFedStats" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)HoldAssistFedStats
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForHoldAssistFedStats];
  v3 = +[BMCommAppsHoldAssistFedStats columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"CommApps.CallIntelligence.HoldAssistFedStats" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"CommApps.CallIntelligence.HoldAssistFedStats" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end