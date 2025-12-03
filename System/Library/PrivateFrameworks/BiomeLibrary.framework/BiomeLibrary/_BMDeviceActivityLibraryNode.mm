@interface _BMDeviceActivityLibraryNode
+ (id)Prediction;
+ (id)configurationForPrediction;
+ (id)storeConfigurationForPrediction;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMDeviceActivityLibraryNode

+ (id)Prediction
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPrediction = [self configurationForPrediction];
  v3 = +[BMDeviceActivityPrediction columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Activity.Prediction" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Activity.Prediction" schema:v9 configuration:configurationForPrediction];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForPrediction
{
  storeConfigurationForPrediction = [self storeConfigurationForPrediction];
  syncPolicyForPrediction = [self syncPolicyForPrediction];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5DDAC376-21D4-4520-81C5-EF780A04A162"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Activity.Prediction" eventClass:objc_opt_class() storeConfig:storeConfigurationForPrediction syncPolicy:syncPolicyForPrediction legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPrediction
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:10000 maxEventCount:604800.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Activity.Prediction" domain:1 segmentSize:0x40000 protectionClass:5 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Prediction"])
  {
    prediction = [self Prediction];
  }

  else
  {
    prediction = 0;
  }

  return prediction;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMDeviceActivityPrediction validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end