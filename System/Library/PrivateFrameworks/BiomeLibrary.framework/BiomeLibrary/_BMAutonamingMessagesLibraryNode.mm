@interface _BMAutonamingMessagesLibraryNode
+ (id)AccuracyFedStats;
+ (id)Inferences;
+ (id)MessageIds;
+ (id)configurationForAccuracyFedStats;
+ (id)configurationForInferences;
+ (id)configurationForMessageIds;
+ (id)storeConfigurationForAccuracyFedStats;
+ (id)storeConfigurationForInferences;
+ (id)storeConfigurationForMessageIds;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMAutonamingMessagesLibraryNode

+ (id)AccuracyFedStats
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAccuracyFedStats = [self configurationForAccuracyFedStats];
  v3 = +[BMAutonamingAccuracyFedStats columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Autonaming.Messages.AccuracyFedStats" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Autonaming.Messages.AccuracyFedStats" schema:v9 configuration:configurationForAccuracyFedStats];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAccuracyFedStats
{
  v15[1] = *MEMORY[0x1E69E9840];
  storeConfigurationForAccuracyFedStats = [self storeConfigurationForAccuracyFedStats];
  syncPolicyForAccuracyFedStats = [self syncPolicyForAccuracyFedStats];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"com.apple.MobileSMS IN $disabledApps" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"learn-from-this-app" predicate:v6];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  v9 = MEMORY[0x1E698F338];
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B6A01403-A5C7-4A29-AAD3-BCA3E343CFAC"];
  BYTE2(v14) = 0;
  LOWORD(v14) = 1;
  v11 = [v9 _libraryStreamConfigurationWithUUID:v10 streamIdentifier:@"Autonaming.Messages.AccuracyFedStats" eventClass:objc_opt_class() storeConfig:storeConfigurationForAccuracyFedStats syncPolicy:syncPolicyForAccuracyFedStats legacyNames:0 internalMetadata:0 enableSubscriptions:v14 enableSubscriptionSubstream:0 enableTombstoneSubstream:v8 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)storeConfigurationForAccuracyFedStats
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Autonaming.Messages.AccuracyFedStats" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)Inferences
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForInferences = [self configurationForInferences];
  v3 = +[BMAutonamingInferences columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Autonaming.Messages.Inferences" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Autonaming.Messages.Inferences" schema:v9 configuration:configurationForInferences];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForInferences
{
  v15[1] = *MEMORY[0x1E69E9840];
  storeConfigurationForInferences = [self storeConfigurationForInferences];
  syncPolicyForInferences = [self syncPolicyForInferences];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"com.apple.MobileSMS IN $disabledApps" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"learn-from-this-app" predicate:v6];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  v9 = MEMORY[0x1E698F338];
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F9833224-FBFE-4073-BFC3-1353F4D2B555"];
  BYTE2(v14) = 1;
  LOWORD(v14) = 1;
  v11 = [v9 _libraryStreamConfigurationWithUUID:v10 streamIdentifier:@"Autonaming.Messages.Inferences" eventClass:objc_opt_class() storeConfig:storeConfigurationForInferences syncPolicy:syncPolicyForInferences legacyNames:0 internalMetadata:0 enableSubscriptions:v14 enableSubscriptionSubstream:0 enableTombstoneSubstream:v8 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)storeConfigurationForInferences
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:31536000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Autonaming.Messages.Inferences" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)MessageIds
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForMessageIds = [self configurationForMessageIds];
  v3 = +[BMAutonamingMessageIds columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Autonaming.Messages.MessageIds" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Autonaming.Messages.MessageIds" schema:v9 configuration:configurationForMessageIds];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForMessageIds
{
  v15[1] = *MEMORY[0x1E69E9840];
  storeConfigurationForMessageIds = [self storeConfigurationForMessageIds];
  syncPolicyForMessageIds = [self syncPolicyForMessageIds];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"com.apple.MobileSMS IN $disabledApps" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"learn-from-this-app" predicate:v6];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  v9 = MEMORY[0x1E698F338];
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"20C3E6E8-463D-4946-A782-0BAAFB8F425E"];
  BYTE2(v14) = 1;
  LOWORD(v14) = 1;
  v11 = [v9 _libraryStreamConfigurationWithUUID:v10 streamIdentifier:@"Autonaming.Messages.MessageIds" eventClass:objc_opt_class() storeConfig:storeConfigurationForMessageIds syncPolicy:syncPolicyForMessageIds legacyNames:0 internalMetadata:0 enableSubscriptions:v14 enableSubscriptionSubstream:0 enableTombstoneSubstream:v8 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)storeConfigurationForMessageIds
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:50000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Autonaming.Messages.MessageIds" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"AccuracyFedStats"])
  {
    accuracyFedStats = [self AccuracyFedStats];
LABEL_7:
    v6 = accuracyFedStats;
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"Inferences"])
  {
    accuracyFedStats = [self Inferences];
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"MessageIds"])
  {
    accuracyFedStats = [self MessageIds];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMAutonamingAccuracyFedStats validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMAutonamingInferences validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMAutonamingMessageIds validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

@end