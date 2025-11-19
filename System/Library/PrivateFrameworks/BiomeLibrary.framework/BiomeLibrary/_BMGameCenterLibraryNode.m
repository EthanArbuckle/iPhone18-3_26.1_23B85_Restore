@interface _BMGameCenterLibraryNode
+ (id)AchievementEarned;
+ (id)SuggestionFeedback;
+ (id)configurationForAchievementEarned;
+ (id)configurationForSuggestionFeedback;
+ (id)storeConfigurationForAchievementEarned;
+ (id)storeConfigurationForSuggestionFeedback;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMGameCenterLibraryNode

+ (id)configurationForAchievementEarned
{
  v3 = [a1 storeConfigurationForAchievementEarned];
  v4 = [a1 syncPolicyForAchievementEarned];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5D482238-969B-4858-867E-E7AC86BD8D22"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GameCenter.AchievementEarned" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.gamecenter" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAchievementEarned
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:75000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"GameCenter.AchievementEarned" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)SuggestionFeedback
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForSuggestionFeedback];
  v3 = +[BMGameCenterSuggestionFeedback columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"GameCenter.SuggestionFeedback" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GameCenter.SuggestionFeedback" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForSuggestionFeedback
{
  v3 = [a1 storeConfigurationForSuggestionFeedback];
  v4 = [a1 syncPolicyForSuggestionFeedback];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"39DCFB87-1759-48FE-9D81-E30419BD360A"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GameCenter.SuggestionFeedback" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSuggestionFeedback
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"GameCenter.SuggestionFeedback" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)AchievementEarned
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForAchievementEarned];
  v3 = +[BMGameCenterAchievementEarned columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"GameCenter.AchievementEarned" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GameCenter.AchievementEarned" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"AchievementEarned"])
  {
    v5 = [a1 AchievementEarned];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"SuggestionFeedback"])
  {
    v5 = [a1 SuggestionFeedback];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMGameCenterAchievementEarned validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMGameCenterSuggestionFeedback validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

@end