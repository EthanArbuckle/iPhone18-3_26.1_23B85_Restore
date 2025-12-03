@interface _BMMapsSuggestionsLibraryNode
+ (id)RecentConversationsIntent;
+ (id)configurationForRecentConversationsIntent;
+ (id)storeConfigurationForRecentConversationsIntent;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMMapsSuggestionsLibraryNode

+ (id)RecentConversationsIntent
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForRecentConversationsIntent = [self configurationForRecentConversationsIntent];
  v3 = +[BMMapsRecentConversationsIntent columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Maps.Suggestions.RecentConversationsIntent" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Maps.Suggestions.RecentConversationsIntent" schema:v9 configuration:configurationForRecentConversationsIntent];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForRecentConversationsIntent
{
  storeConfigurationForRecentConversationsIntent = [self storeConfigurationForRecentConversationsIntent];
  syncPolicyForRecentConversationsIntent = [self syncPolicyForRecentConversationsIntent];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A3DCDA05-C1AC-40D4-B30A-A0B8DC2AECA6"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Maps.Suggestions.RecentConversationsIntent" eventClass:objc_opt_class() storeConfig:storeConfigurationForRecentConversationsIntent syncPolicy:syncPolicyForRecentConversationsIntent legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Maps" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForRecentConversationsIntent
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Maps.Suggestions.RecentConversationsIntent" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"RecentConversationsIntent"])
  {
    recentConversationsIntent = [self RecentConversationsIntent];
  }

  else
  {
    recentConversationsIntent = 0;
  }

  return recentConversationsIntent;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMapsRecentConversationsIntent validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end