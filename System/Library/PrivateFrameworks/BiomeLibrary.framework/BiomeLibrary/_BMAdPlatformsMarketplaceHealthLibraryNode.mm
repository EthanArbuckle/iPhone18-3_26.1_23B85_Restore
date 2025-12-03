@interface _BMAdPlatformsMarketplaceHealthLibraryNode
+ (id)DiscardReasons;
+ (id)configurationForDiscardReasons;
+ (id)storeConfigurationForDiscardReasons;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMAdPlatformsMarketplaceHealthLibraryNode

+ (id)DiscardReasons
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForDiscardReasons = [self configurationForDiscardReasons];
  v3 = +[BMAdPlatformsDiscardReasons columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"AdPlatforms.MarketplaceHealth.DiscardReasons" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"AdPlatforms.MarketplaceHealth.DiscardReasons" schema:v9 configuration:configurationForDiscardReasons];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForDiscardReasons
{
  storeConfigurationForDiscardReasons = [self storeConfigurationForDiscardReasons];
  syncPolicyForDiscardReasons = [self syncPolicyForDiscardReasons];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"68F55C23-28C1-47BA-9964-2E1D44941495"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"AdPlatforms.MarketplaceHealth.DiscardReasons" eventClass:objc_opt_class() storeConfig:storeConfigurationForDiscardReasons syncPolicy:syncPolicyForDiscardReasons legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForDiscardReasons
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"AdPlatforms.MarketplaceHealth.DiscardReasons" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"DiscardReasons"])
  {
    discardReasons = [self DiscardReasons];
  }

  else
  {
    discardReasons = 0;
  }

  return discardReasons;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMAdPlatformsDiscardReasons validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end