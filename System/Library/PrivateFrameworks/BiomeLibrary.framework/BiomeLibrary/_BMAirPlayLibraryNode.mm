@interface _BMAirPlayLibraryNode
+ (id)PredictionFeedback;
+ (id)configurationForPredictionFeedback;
+ (id)storeConfigurationForPredictionFeedback;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMAirPlayLibraryNode

+ (id)PredictionFeedback
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPredictionFeedback = [self configurationForPredictionFeedback];
  v3 = +[BMAirPlayPredictionFeedback columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"AirPlay.PredictionFeedback" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"AirPlay.PredictionFeedback" schema:v9 configuration:configurationForPredictionFeedback];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForPredictionFeedback
{
  storeConfigurationForPredictionFeedback = [self storeConfigurationForPredictionFeedback];
  syncPolicyForPredictionFeedback = [self syncPolicyForPredictionFeedback];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E21C6B88-AC75-49C8-8120-514EAB490CE1"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"AirPlay.PredictionFeedback" eventClass:objc_opt_class() storeConfig:storeConfigurationForPredictionFeedback syncPolicy:syncPolicyForPredictionFeedback legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPredictionFeedback
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"AirPlay.PredictionFeedback" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"PredictionFeedback"])
  {
    predictionFeedback = [self PredictionFeedback];
  }

  else
  {
    predictionFeedback = 0;
  }

  return predictionFeedback;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMAirPlayPredictionFeedback validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end