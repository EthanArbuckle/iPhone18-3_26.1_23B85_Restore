@interface _BMUniversalRecentsUserActivityLibraryNode
+ (id)Metadata;
+ (id)configurationForMetadata;
+ (id)storeConfigurationForMetadata;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMUniversalRecentsUserActivityLibraryNode

+ (id)streamWithName:(id)a3
{
  if ([a3 isEqualToString:@"Metadata"])
  {
    v4 = [a1 Metadata];
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
  v3 = +[BMUniversalRecentsMetadata validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForMetadata
{
  v3 = [a1 storeConfigurationForMetadata];
  v4 = [a1 syncPolicyForMetadata];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"FCDCC6E4-61FB-4A76-911F-5877634296FD"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"UniversalRecents.UserActivity.Metadata" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EA110 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMetadata
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"UniversalRecents.UserActivity.Metadata" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Metadata
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForMetadata];
  v3 = +[BMUniversalRecentsMetadata columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"UniversalRecents.UserActivity.Metadata" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"UniversalRecents.UserActivity.Metadata" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end