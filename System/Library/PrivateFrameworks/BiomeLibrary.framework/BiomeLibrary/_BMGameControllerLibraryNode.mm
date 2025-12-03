@interface _BMGameControllerLibraryNode
+ (id)Connected;
+ (id)configurationForConnected;
+ (id)storeConfigurationForConnected;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMGameControllerLibraryNode

+ (id)Connected
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForConnected = [self configurationForConnected];
  v3 = +[BMGameControllerConnected columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"GameController.Connected" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GameController.Connected" schema:v9 configuration:configurationForConnected];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForConnected
{
  storeConfigurationForConnected = [self storeConfigurationForConnected];
  syncPolicyForConnected = [self syncPolicyForConnected];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A60FD4B0-C9C3-4360-8EF4-52177DBADDA8"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GameController.Connected" eventClass:objc_opt_class() storeConfig:storeConfigurationForConnected syncPolicy:syncPolicyForConnected legacyNames:&unk_1EF3EB658 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForConnected
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"GameController.Connected" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Connected"])
  {
    connected = [self Connected];
  }

  else
  {
    connected = 0;
  }

  return connected;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMGameControllerConnected validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end