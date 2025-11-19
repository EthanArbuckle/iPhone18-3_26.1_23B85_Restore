@interface _BMSharePlayLibraryNode
+ (id)GroupActivitySession;
+ (id)configurationForGroupActivitySession;
+ (id)storeConfigurationForGroupActivitySession;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMSharePlayLibraryNode

+ (id)streamWithName:(id)a3
{
  if ([a3 isEqualToString:@"GroupActivitySession"])
  {
    v4 = [a1 GroupActivitySession];
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
  v3 = +[BMSharePlayGroupActivitySession validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForGroupActivitySession
{
  v3 = [a1 storeConfigurationForGroupActivitySession];
  v4 = [a1 syncPolicyForGroupActivitySession];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C109D386-39DC-4C10-9E61-545C3963F811"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SharePlay.GroupActivitySession" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EBBB0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForGroupActivitySession
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"SharePlay.GroupActivitySession" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)GroupActivitySession
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForGroupActivitySession];
  v3 = +[BMSharePlayGroupActivitySession columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"SharePlay.GroupActivitySession" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SharePlay.GroupActivitySession" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end