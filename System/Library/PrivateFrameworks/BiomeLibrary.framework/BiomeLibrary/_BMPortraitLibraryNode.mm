@interface _BMPortraitLibraryNode
+ (id)Entity;
+ (id)Topic;
+ (id)configurationForEntity;
+ (id)configurationForTopic;
+ (id)storeConfigurationForEntity;
+ (id)storeConfigurationForTopic;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMPortraitLibraryNode

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Entity"])
  {
    entity = [self Entity];
LABEL_5:
    v6 = entity;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"Topic"])
  {
    entity = [self Topic];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMPortraitEntity validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMPortraitTopic validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (id)configurationForTopic
{
  storeConfigurationForTopic = [self storeConfigurationForTopic];
  syncPolicyForTopic = [self syncPolicyForTopic];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"FA423997-F253-4AD3-8C7A-37E3C2EF2732"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Portrait.Topic" eventClass:objc_opt_class() storeConfig:storeConfigurationForTopic syncPolicy:syncPolicyForTopic legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTopic
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:30000 maxEventCount:45100800.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Portrait.Topic" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForEntity
{
  storeConfigurationForEntity = [self storeConfigurationForEntity];
  syncPolicyForEntity = [self syncPolicyForEntity];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9BD10277-41A8-46CA-8650-99A797ACBB1F"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Portrait.Entity" eventClass:objc_opt_class() storeConfig:storeConfigurationForEntity syncPolicy:syncPolicyForEntity legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForEntity
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Portrait.Entity" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Topic
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTopic = [self configurationForTopic];
  v3 = +[BMPortraitTopic columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Portrait.Topic" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Portrait.Topic" schema:v9 configuration:configurationForTopic];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Entity
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForEntity = [self configurationForEntity];
  v3 = +[BMPortraitEntity columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Portrait.Entity" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Portrait.Entity" schema:v9 configuration:configurationForEntity];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end