@interface _BMSensitiveContentAnalysisLibraryNode
+ (id)MediaAnalysis;
+ (id)UIInteraction;
+ (id)configurationForMediaAnalysis;
+ (id)configurationForUIInteraction;
+ (id)storeConfigurationForMediaAnalysis;
+ (id)storeConfigurationForUIInteraction;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMSensitiveContentAnalysisLibraryNode

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"MediaAnalysis"])
  {
    mediaAnalysis = [self MediaAnalysis];
LABEL_5:
    v6 = mediaAnalysis;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"UIInteraction"])
  {
    mediaAnalysis = [self UIInteraction];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSensitiveContentAnalysisMediaAnalysis validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMSensitiveContentAnalysisUIInteraction validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (id)configurationForUIInteraction
{
  storeConfigurationForUIInteraction = [self storeConfigurationForUIInteraction];
  syncPolicyForUIInteraction = [self syncPolicyForUIInteraction];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E229DAFC-0DE9-4ED6-9495-1B1A0FD856D2"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SensitiveContentAnalysis.UIInteraction" eventClass:objc_opt_class() storeConfig:storeConfigurationForUIInteraction syncPolicy:syncPolicyForUIInteraction legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForUIInteraction
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"SensitiveContentAnalysis.UIInteraction" domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForMediaAnalysis
{
  storeConfigurationForMediaAnalysis = [self storeConfigurationForMediaAnalysis];
  syncPolicyForMediaAnalysis = [self syncPolicyForMediaAnalysis];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C11F6EBF-47E5-4733-BE59-33E1EC3DF2A6"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SensitiveContentAnalysis.MediaAnalysis" eventClass:objc_opt_class() storeConfig:storeConfigurationForMediaAnalysis syncPolicy:syncPolicyForMediaAnalysis legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMediaAnalysis
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"SensitiveContentAnalysis.MediaAnalysis" domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v2];

  return v3;
}

+ (id)UIInteraction
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForUIInteraction = [self configurationForUIInteraction];
  v3 = +[BMSensitiveContentAnalysisUIInteraction columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"SensitiveContentAnalysis.UIInteraction" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SensitiveContentAnalysis.UIInteraction" schema:v9 configuration:configurationForUIInteraction];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)MediaAnalysis
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForMediaAnalysis = [self configurationForMediaAnalysis];
  v3 = +[BMSensitiveContentAnalysisMediaAnalysis columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"SensitiveContentAnalysis.MediaAnalysis" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SensitiveContentAnalysis.MediaAnalysis" schema:v9 configuration:configurationForMediaAnalysis];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end