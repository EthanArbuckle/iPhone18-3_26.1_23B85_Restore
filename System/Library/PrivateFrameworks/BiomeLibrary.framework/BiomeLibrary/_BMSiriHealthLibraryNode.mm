@interface _BMSiriHealthLibraryNode
+ (id)Federated;
+ (id)configurationForFederated;
+ (id)storeConfigurationForFederated;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMSiriHealthLibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Federated"])
  {
    federated = [self Federated];
  }

  else
  {
    federated = 0;
  }

  return federated;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSiriFederated validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForFederated
{
  storeConfigurationForFederated = [self storeConfigurationForFederated];
  syncPolicyForFederated = [self syncPolicyForFederated];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5E92BB8D-11B4-4867-B67E-95E9299E8B66"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.Health.Federated" eventClass:objc_opt_class() storeConfig:storeConfigurationForFederated syncPolicy:syncPolicyForFederated legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForFederated
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Health.Federated" domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v2];

  return v3;
}

+ (id)Federated
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForFederated = [self configurationForFederated];
  v3 = +[BMSiriFederated columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Health.Federated" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Health.Federated" schema:v9 configuration:configurationForFederated];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end