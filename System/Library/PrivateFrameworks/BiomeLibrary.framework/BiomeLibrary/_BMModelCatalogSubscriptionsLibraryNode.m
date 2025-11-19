@interface _BMModelCatalogSubscriptionsLibraryNode
+ (id)ExplicitRequests;
+ (id)configurationForExplicitRequests;
+ (id)storeConfigurationForExplicitRequests;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMModelCatalogSubscriptionsLibraryNode

+ (id)streamWithName:(id)a3
{
  if ([a3 isEqualToString:@"ExplicitRequests"])
  {
    v4 = [a1 ExplicitRequests];
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
  v3 = +[BMModelCatalogExplicitRequests validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForExplicitRequests
{
  v3 = [a1 storeConfigurationForExplicitRequests];
  v4 = [a1 syncPolicyForExplicitRequests];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A534253F-5C64-409D-8A71-EA0B9E491517"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ModelCatalog.Subscriptions.ExplicitRequests" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForExplicitRequests
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ModelCatalog.Subscriptions.ExplicitRequests" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)ExplicitRequests
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForExplicitRequests];
  v3 = +[BMModelCatalogExplicitRequests columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ModelCatalog.Subscriptions.ExplicitRequests" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ModelCatalog.Subscriptions.ExplicitRequests" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end