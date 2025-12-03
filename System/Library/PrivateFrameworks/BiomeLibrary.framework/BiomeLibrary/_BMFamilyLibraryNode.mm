@interface _BMFamilyLibraryNode
+ (id)AskToBuy;
+ (id)configurationForAskToBuy;
+ (id)storeConfigurationForAskToBuy;
+ (id)streamWithName:(id)name;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMFamilyLibraryNode

+ (id)sublibraries
{
  v6[1] = *MEMORY[0x1E69E9840];
  screenTime = [self ScreenTime];
  v6[0] = screenTime;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)AskToBuy
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAskToBuy = [self configurationForAskToBuy];
  v3 = +[BMFamilyAskToBuy columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Family.AskToBuy" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Family.AskToBuy" schema:v9 configuration:configurationForAskToBuy];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAskToBuy
{
  storeConfigurationForAskToBuy = [self storeConfigurationForAskToBuy];
  syncPolicyForAskToBuy = [self syncPolicyForAskToBuy];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"77728FAD-64C7-4AA5-B987-B7D59846D3DA"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Family.AskToBuy" eventClass:objc_opt_class() storeConfig:storeConfigurationForAskToBuy syncPolicy:syncPolicyForAskToBuy legacyNames:&unk_1EF3E8F88 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAskToBuy
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:86400.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Family.AskToBuy" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"AskToBuy"])
  {
    askToBuy = [self AskToBuy];
  }

  else
  {
    askToBuy = 0;
  }

  return askToBuy;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMFamilyAskToBuy validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end