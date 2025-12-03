@interface _BMShareSheetLibraryNode
+ (id)Feedback;
+ (id)SuggestLessFeedback;
+ (id)configurationForFeedback;
+ (id)configurationForSuggestLessFeedback;
+ (id)storeConfigurationForFeedback;
+ (id)storeConfigurationForSuggestLessFeedback;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMShareSheetLibraryNode

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Feedback"])
  {
    feedback = [self Feedback];
LABEL_5:
    v6 = feedback;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"SuggestLessFeedback"])
  {
    feedback = [self SuggestLessFeedback];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMShareSheetFeedback validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMShareSheetSuggestLessFeedback validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (id)configurationForSuggestLessFeedback
{
  storeConfigurationForSuggestLessFeedback = [self storeConfigurationForSuggestLessFeedback];
  syncPolicyForSuggestLessFeedback = [self syncPolicyForSuggestLessFeedback];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"3DB4DF92-4316-4FEA-A5CE-83C5B758D99F"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ShareSheet.SuggestLessFeedback" eventClass:objc_opt_class() storeConfig:storeConfigurationForSuggestLessFeedback syncPolicy:syncPolicyForSuggestLessFeedback legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSuggestLessFeedback
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ShareSheet.SuggestLessFeedback" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForFeedback
{
  storeConfigurationForFeedback = [self storeConfigurationForFeedback];
  syncPolicyForFeedback = [self syncPolicyForFeedback];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"8CB1F423-7EFC-4F79-94E4-8FFDF1F7D5BE"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ShareSheet.Feedback" eventClass:objc_opt_class() storeConfig:storeConfigurationForFeedback syncPolicy:syncPolicyForFeedback legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForFeedback
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ShareSheet.Feedback" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)SuggestLessFeedback
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSuggestLessFeedback = [self configurationForSuggestLessFeedback];
  v3 = +[BMShareSheetSuggestLessFeedback columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ShareSheet.SuggestLessFeedback" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ShareSheet.SuggestLessFeedback" schema:v9 configuration:configurationForSuggestLessFeedback];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Feedback
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForFeedback = [self configurationForFeedback];
  v3 = +[BMShareSheetFeedback columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ShareSheet.Feedback" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ShareSheet.Feedback" schema:v9 configuration:configurationForFeedback];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end