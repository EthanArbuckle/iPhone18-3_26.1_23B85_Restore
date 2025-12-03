@interface _BMSafariBrowsingLibraryNode
+ (id)Assistant;
+ (id)configurationForAssistant;
+ (id)storeConfigurationForAssistant;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMSafariBrowsingLibraryNode

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Assistant"])
  {
    assistant = [self Assistant];
  }

  else
  {
    assistant = 0;
  }

  return assistant;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSafariBrowsingAssistant validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForAssistant
{
  storeConfigurationForAssistant = [self storeConfigurationForAssistant];
  syncPolicyForAssistant = [self syncPolicyForAssistant];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"02833708-122B-4CA4-9F4A-0116AF97B9DE"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Safari.Browsing.Assistant" eventClass:objc_opt_class() storeConfig:storeConfigurationForAssistant syncPolicy:syncPolicyForAssistant legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilesafari" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAssistant
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:20000 maxEventCount:604800.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Safari.Browsing.Assistant" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Assistant
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAssistant = [self configurationForAssistant];
  v3 = +[BMSafariBrowsingAssistant columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Safari.Browsing.Assistant" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Safari.Browsing.Assistant" schema:v9 configuration:configurationForAssistant];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end