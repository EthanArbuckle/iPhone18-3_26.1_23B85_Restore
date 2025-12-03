@interface _BMProactiveHarvestingPhotosLibraryNode
+ (id)KnowledgeGraphEnrichment;
+ (id)View;
+ (id)configurationForKnowledgeGraphEnrichment;
+ (id)configurationForView;
+ (id)storeConfigurationForKnowledgeGraphEnrichment;
+ (id)storeConfigurationForView;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMProactiveHarvestingPhotosLibraryNode

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"KnowledgeGraphEnrichment"])
  {
    knowledgeGraphEnrichment = [self KnowledgeGraphEnrichment];
LABEL_5:
    v6 = knowledgeGraphEnrichment;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"View"])
  {
    knowledgeGraphEnrichment = [self View];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMProactiveHarvestingPhotosKnowledgeGraphEnrichment validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMProactiveHarvestingPhotosView validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (id)configurationForView
{
  storeConfigurationForView = [self storeConfigurationForView];
  syncPolicyForView = [self syncPolicyForView];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"760EF2BE-9076-4893-A18D-42B19BC1FA43"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ProactiveHarvesting.Photos.View" eventClass:objc_opt_class() storeConfig:storeConfigurationForView syncPolicy:syncPolicyForView legacyNames:&unk_1EF3EBDD8 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForView
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x40000000 maxStreamSize:20000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ProactiveHarvesting.Photos.View" domain:0 segmentSize:0x1000000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForKnowledgeGraphEnrichment
{
  storeConfigurationForKnowledgeGraphEnrichment = [self storeConfigurationForKnowledgeGraphEnrichment];
  syncPolicyForKnowledgeGraphEnrichment = [self syncPolicyForKnowledgeGraphEnrichment];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E1C54619-CBA3-403F-AB18-C01380F138C3"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ProactiveHarvesting.Photos.KnowledgeGraphEnrichment" eventClass:objc_opt_class() storeConfig:storeConfigurationForKnowledgeGraphEnrichment syncPolicy:syncPolicyForKnowledgeGraphEnrichment legacyNames:&unk_1EF3EBDC0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForKnowledgeGraphEnrichment
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x40000000 maxStreamSize:20000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ProactiveHarvesting.Photos.KnowledgeGraphEnrichment" domain:0 segmentSize:0x1000000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)View
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForView = [self configurationForView];
  v3 = +[BMProactiveHarvestingPhotosView columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ProactiveHarvesting.Photos.View" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ProactiveHarvesting.Photos.View" schema:v9 configuration:configurationForView];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)KnowledgeGraphEnrichment
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForKnowledgeGraphEnrichment = [self configurationForKnowledgeGraphEnrichment];
  v3 = +[BMProactiveHarvestingPhotosKnowledgeGraphEnrichment columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ProactiveHarvesting.Photos.KnowledgeGraphEnrichment" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ProactiveHarvesting.Photos.KnowledgeGraphEnrichment" schema:v9 configuration:configurationForKnowledgeGraphEnrichment];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end