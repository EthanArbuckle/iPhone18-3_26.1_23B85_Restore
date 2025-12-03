@interface _BMiCloudLibraryNode
+ (id)FamilyPrediction;
+ (id)Subscription;
+ (id)configurationForFamilyPrediction;
+ (id)configurationForSubscription;
+ (id)storeConfigurationForFamilyPrediction;
+ (id)storeConfigurationForSubscription;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMiCloudLibraryNode

+ (id)FamilyPrediction
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForFamilyPrediction = [self configurationForFamilyPrediction];
  v3 = +[BMiCloudFamilyPrediction columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"iCloud.FamilyPrediction" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"iCloud.FamilyPrediction" schema:v9 configuration:configurationForFamilyPrediction];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForFamilyPrediction
{
  storeConfigurationForFamilyPrediction = [self storeConfigurationForFamilyPrediction];
  syncPolicyForFamilyPrediction = [self syncPolicyForFamilyPrediction];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BE33AA20-792B-4043-BD57-C063812AD271"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"iCloud.FamilyPrediction" eventClass:objc_opt_class() storeConfig:storeConfigurationForFamilyPrediction syncPolicy:syncPolicyForFamilyPrediction legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForFamilyPrediction
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"iCloud.FamilyPrediction" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForSubscription
{
  storeConfigurationForSubscription = [self storeConfigurationForSubscription];
  syncPolicyForSubscription = [self syncPolicyForSubscription];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BC7DC39D-B901-4424-AE56-AF54D9C11F53"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"iCloud.Subscription" eventClass:objc_opt_class() storeConfig:storeConfigurationForSubscription syncPolicy:syncPolicyForSubscription legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSubscription
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"iCloud.Subscription" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Subscription
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSubscription = [self configurationForSubscription];
  v3 = +[BMiCloudSubscription columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"iCloud.Subscription" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"iCloud.Subscription" schema:v9 configuration:configurationForSubscription];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"FamilyPrediction"])
  {
    familyPrediction = [self FamilyPrediction];
LABEL_5:
    v6 = familyPrediction;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"Subscription"])
  {
    familyPrediction = [self Subscription];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMiCloudFamilyPrediction validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMiCloudSubscription validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

@end