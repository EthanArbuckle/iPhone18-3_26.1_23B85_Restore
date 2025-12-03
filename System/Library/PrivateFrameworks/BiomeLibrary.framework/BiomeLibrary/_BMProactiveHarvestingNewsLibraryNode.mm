@interface _BMProactiveHarvestingNewsLibraryNode
+ (id)Article;
+ (id)configurationForArticle;
+ (id)storeConfigurationForArticle;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMProactiveHarvestingNewsLibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Article"])
  {
    article = [self Article];
  }

  else
  {
    article = 0;
  }

  return article;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMProactiveHarvestingNewsArticle validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForArticle
{
  storeConfigurationForArticle = [self storeConfigurationForArticle];
  syncPolicyForArticle = [self syncPolicyForArticle];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"06B3E303-4AAE-4EBD-AAE3-6775A528FB00"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ProactiveHarvesting.News.Article" eventClass:objc_opt_class() storeConfig:storeConfigurationForArticle syncPolicy:syncPolicyForArticle legacyNames:&unk_1EF3EA1D0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForArticle
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x40000000 maxStreamSize:20000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ProactiveHarvesting.News.Article" domain:0 segmentSize:0x1000000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Article
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForArticle = [self configurationForArticle];
  v3 = +[BMProactiveHarvestingNewsArticle columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ProactiveHarvesting.News.Article" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ProactiveHarvesting.News.Article" schema:v9 configuration:configurationForArticle];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end