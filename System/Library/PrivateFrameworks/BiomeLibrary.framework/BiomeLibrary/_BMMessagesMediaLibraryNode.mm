@interface _BMMessagesMediaLibraryNode
+ (id)Rendered;
+ (id)configurationForRendered;
+ (id)storeConfigurationForRendered;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMMessagesMediaLibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Rendered"])
  {
    rendered = [self Rendered];
  }

  else
  {
    rendered = 0;
  }

  return rendered;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMessagesMediaRendered validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForRendered
{
  storeConfigurationForRendered = [self storeConfigurationForRendered];
  syncPolicyForRendered = [self syncPolicyForRendered];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DB61E363-A8DE-4536-AAA1-89B2DEC1D2A1"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Messages.Media.Rendered" eventClass:objc_opt_class() storeConfig:storeConfigurationForRendered syncPolicy:syncPolicyForRendered legacyNames:&unk_1EF3EBAC0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.MobileSMS" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForRendered
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Messages.Media.Rendered" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Rendered
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForRendered = [self configurationForRendered];
  v3 = +[BMMessagesMediaRendered columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Messages.Media.Rendered" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Messages.Media.Rendered" schema:v9 configuration:configurationForRendered];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end