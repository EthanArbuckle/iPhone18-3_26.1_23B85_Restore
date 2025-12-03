@interface _BMMessagesLibraryNode
+ (id)Read;
+ (id)configurationForRead;
+ (id)storeConfigurationForRead;
+ (id)streamWithName:(id)name;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMMessagesLibraryNode

+ (id)sublibraries
{
  v10[4] = *MEMORY[0x1E69E9840];
  communicationSafety = [self CommunicationSafety];
  v10[0] = communicationSafety;
  media = [self Media];
  v10[1] = media;
  search = [self Search];
  v10[2] = search;
  sharedWithYou = [self SharedWithYou];
  v10[3] = sharedWithYou;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Read"])
  {
    read = [self Read];
  }

  else
  {
    read = 0;
  }

  return read;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMessagesRead validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForRead
{
  storeConfigurationForRead = [self storeConfigurationForRead];
  syncPolicyForRead = [self syncPolicyForRead];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"33251B1D-BB7E-46CC-BFE1-F7E7F3C56C21"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Messages.Read" eventClass:objc_opt_class() storeConfig:storeConfigurationForRead syncPolicy:syncPolicyForRead legacyNames:&unk_1EF3E8C88 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.MobileSMS" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForRead
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:25000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Messages.Read" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Read
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForRead = [self configurationForRead];
  v3 = +[BMMessagesRead columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Messages.Read" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Messages.Read" schema:v9 configuration:configurationForRead];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end