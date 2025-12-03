@interface _BMIntelligencePlatformViewsLibraryNode
+ (id)Updated;
+ (id)configurationForUpdated;
+ (id)storeConfigurationForUpdated;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMIntelligencePlatformViewsLibraryNode

+ (id)storeConfigurationForUpdated
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:86400.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"IntelligencePlatform.Views.Updated" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Updated
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForUpdated = [self configurationForUpdated];
  v3 = +[BMIntelligencePlatformUpdated columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"IntelligencePlatform.Views.Updated" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"IntelligencePlatform.Views.Updated" schema:v9 configuration:configurationForUpdated];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForUpdated
{
  storeConfigurationForUpdated = [self storeConfigurationForUpdated];
  syncPolicyForUpdated = [self syncPolicyForUpdated];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"74E9B3A7-58ED-4C05-A5AA-4E48E0B06A66"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"IntelligencePlatform.Views.Updated" eventClass:objc_opt_class() storeConfig:storeConfigurationForUpdated syncPolicy:syncPolicyForUpdated legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Updated"])
  {
    updated = [self Updated];
  }

  else
  {
    updated = 0;
  }

  return updated;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMIntelligencePlatformUpdated validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end