@interface _BMMessagesCommunicationSafetyLibraryNode
+ (id)Result;
+ (id)configurationForResult;
+ (id)storeConfigurationForResult;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMMessagesCommunicationSafetyLibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Result"])
  {
    result = [self Result];
  }

  else
  {
    result = 0;
  }

  return result;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMessagesCommunicationSafetyResult validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForResult
{
  storeConfigurationForResult = [self storeConfigurationForResult];
  syncPolicyForResult = [self syncPolicyForResult];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F4CACD6F-0EEC-4890-96C7-6A408BB08463"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Messages.CommunicationSafety.Result" eventClass:objc_opt_class() storeConfig:storeConfigurationForResult syncPolicy:syncPolicyForResult legacyNames:&unk_1EF3EA2C0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.MobileSMS" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForResult
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Messages.CommunicationSafety.Result" domain:0 segmentSize:0x800000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Result
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForResult = [self configurationForResult];
  v3 = +[BMMessagesCommunicationSafetyResult columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Messages.CommunicationSafety.Result" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Messages.CommunicationSafety.Result" schema:v9 configuration:configurationForResult];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end