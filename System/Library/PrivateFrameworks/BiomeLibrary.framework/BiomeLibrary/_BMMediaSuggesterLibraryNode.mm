@interface _BMMediaSuggesterLibraryNode
+ (id)SuggestionFeedback;
+ (id)configurationForSuggestionFeedback;
+ (id)storeConfigurationForSuggestionFeedback;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMMediaSuggesterLibraryNode

+ (id)streamWithName:(id)a3
{
  if ([a3 isEqualToString:@"SuggestionFeedback"])
  {
    v4 = [a1 SuggestionFeedback];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMediaSuggesterSuggestionFeedback validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForSuggestionFeedback
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 storeConfigurationForSuggestionFeedback];
  v4 = [a1 syncPolicyForSuggestionFeedback];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$uninstalled == targetBundleID" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"app-uninstall" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT targetBundleID IN $installed" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"app-uninstall-nightly" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"95A8F077-DE32-435F-AAE8-68A23B4D7A3C"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"MediaSuggester.SuggestionFeedback" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForSuggestionFeedback
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"MediaSuggester.SuggestionFeedback" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)SuggestionFeedback
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForSuggestionFeedback];
  v3 = +[BMMediaSuggesterSuggestionFeedback columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"MediaSuggester.SuggestionFeedback" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"MediaSuggester.SuggestionFeedback" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end