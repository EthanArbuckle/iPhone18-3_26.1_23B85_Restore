@interface _BMSiriFeedbackLearningLibraryNode
+ (id)UserInteractions;
+ (id)configurationForUserInteractions;
+ (id)storeConfigurationForUserInteractions;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMSiriFeedbackLearningLibraryNode

+ (id)UserInteractions
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForUserInteractions = [self configurationForUserInteractions];
  v3 = +[BMFeedbackLearningUserInteraction columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.FeedbackLearning.UserInteractions" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.FeedbackLearning.UserInteractions" schema:v9 configuration:configurationForUserInteractions];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForUserInteractions
{
  v18[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForUserInteractions = [self storeConfigurationForUserInteractions];
  syncPolicyForUserInteractions = [self syncPolicyForUserInteractions];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"117529A8-2051-42ED-81E8-2B6C8295BFEA"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.FeedbackLearning.UserInteractions" eventClass:objc_opt_class() storeConfig:storeConfigurationForUserInteractions syncPolicy:syncPolicyForUserInteractions legacyNames:0 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForUserInteractions
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:5242880 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.FeedbackLearning.UserInteractions" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"UserInteractions"])
  {
    userInteractions = [self UserInteractions];
  }

  else
  {
    userInteractions = 0;
  }

  return userInteractions;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMFeedbackLearningUserInteraction validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end