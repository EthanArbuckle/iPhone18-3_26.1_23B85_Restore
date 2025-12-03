@interface _BMGenerativeExperiencesGeneratedImageFeaturesLibraryNode
+ (id)FailureReason;
+ (id)UserInteraction;
+ (id)configurationForFailureReason;
+ (id)configurationForUserInteraction;
+ (id)storeConfigurationForFailureReason;
+ (id)storeConfigurationForUserInteraction;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMGenerativeExperiencesGeneratedImageFeaturesLibraryNode

+ (id)FailureReason
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForFailureReason = [self configurationForFailureReason];
  v3 = +[BMGeneratedImageFailureReason columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"GenerativeExperiences.GeneratedImageFeatures.FailureReason" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GenerativeExperiences.GeneratedImageFeatures.FailureReason" schema:v9 configuration:configurationForFailureReason];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForFailureReason
{
  storeConfigurationForFailureReason = [self storeConfigurationForFailureReason];
  syncPolicyForFailureReason = [self syncPolicyForFailureReason];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"93CD7B38-BC65-4578-BE4B-CF84EDAD7DF4"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GenerativeExperiences.GeneratedImageFeatures.FailureReason" eventClass:objc_opt_class() storeConfig:storeConfigurationForFailureReason syncPolicy:syncPolicyForFailureReason legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)configurationForUserInteraction
{
  storeConfigurationForUserInteraction = [self storeConfigurationForUserInteraction];
  syncPolicyForUserInteraction = [self syncPolicyForUserInteraction];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9701B19A-6440-4326-AB28-8A0B6E7C6793"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GenerativeExperiences.GeneratedImageFeatures.UserInteraction" eventClass:objc_opt_class() storeConfig:storeConfigurationForUserInteraction syncPolicy:syncPolicyForUserInteraction legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForFailureReason
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"GenerativeExperiences.GeneratedImageFeatures.FailureReason" domain:0 segmentSize:0x40000 protectionClass:0 pruningPolicy:v3];

  return v4;
}

+ (id)UserInteraction
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForUserInteraction = [self configurationForUserInteraction];
  v3 = +[BMGeneratedImageUserInteraction columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"GenerativeExperiences.GeneratedImageFeatures.UserInteraction" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GenerativeExperiences.GeneratedImageFeatures.UserInteraction" schema:v9 configuration:configurationForUserInteraction];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)storeConfigurationForUserInteraction
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"GenerativeExperiences.GeneratedImageFeatures.UserInteraction" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"FailureReason"])
  {
    failureReason = [self FailureReason];
LABEL_5:
    v6 = failureReason;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"UserInteraction"])
  {
    failureReason = [self UserInteraction];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMGeneratedImageFailureReason validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMGeneratedImageUserInteraction validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

@end