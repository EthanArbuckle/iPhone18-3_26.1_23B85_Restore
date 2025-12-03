@interface _BMPhotosAutonamingSuggestionsLibraryNode
+ (id)Feedback;
+ (id)configurationForFeedback;
+ (id)storeConfigurationForFeedback;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMPhotosAutonamingSuggestionsLibraryNode

+ (id)Feedback
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForFeedback = [self configurationForFeedback];
  v3 = +[BMPhotosAutonamingSuggestionsFeedback columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.AutonamingSuggestions.Feedback" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.AutonamingSuggestions.Feedback" schema:v9 configuration:configurationForFeedback];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)storeConfigurationForFeedback
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.AutonamingSuggestions.Feedback" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForFeedback
{
  storeConfigurationForFeedback = [self storeConfigurationForFeedback];
  syncPolicyForFeedback = [self syncPolicyForFeedback];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F555FDC3-716B-44C6-A2B0-60547C5AE858"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.AutonamingSuggestions.Feedback" eventClass:objc_opt_class() storeConfig:storeConfigurationForFeedback syncPolicy:syncPolicyForFeedback legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Feedback"])
  {
    feedback = [self Feedback];
  }

  else
  {
    feedback = 0;
  }

  return feedback;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMPhotosAutonamingSuggestionsFeedback validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end