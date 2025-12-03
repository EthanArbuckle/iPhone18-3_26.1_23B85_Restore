@interface _BMMailLibraryNode
+ (id)Categorization;
+ (id)Recategorization;
+ (id)configurationForCategorization;
+ (id)configurationForRecategorization;
+ (id)storeConfigurationForCategorization;
+ (id)storeConfigurationForRecategorization;
+ (id)streamWithName:(id)name;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMMailLibraryNode

+ (id)sublibraries
{
  v6[1] = *MEMORY[0x1E69E9840];
  categorizationAnalytics = [self CategorizationAnalytics];
  v6[0] = categorizationAnalytics;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)Categorization
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForCategorization = [self configurationForCategorization];
  v3 = +[BMMailCategorization columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Mail.Categorization" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Mail.Categorization" schema:v9 configuration:configurationForCategorization];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForCategorization
{
  storeConfigurationForCategorization = [self storeConfigurationForCategorization];
  syncPolicyForCategorization = [self syncPolicyForCategorization];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"AA21D965-0903-497B-8C07-24E166528412"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Mail.Categorization" eventClass:objc_opt_class() storeConfig:storeConfigurationForCategorization syncPolicy:syncPolicyForCategorization legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilemail" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForCategorization
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Mail.Categorization" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Recategorization
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForRecategorization = [self configurationForRecategorization];
  v3 = +[BMMailRecategorization columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Mail.Recategorization" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Mail.Recategorization" schema:v9 configuration:configurationForRecategorization];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForRecategorization
{
  storeConfigurationForRecategorization = [self storeConfigurationForRecategorization];
  syncPolicyForRecategorization = [self syncPolicyForRecategorization];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"38885812-A0DB-4DEF-9B31-CA4198DA0D51"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Mail.Recategorization" eventClass:objc_opt_class() storeConfig:storeConfigurationForRecategorization syncPolicy:syncPolicyForRecategorization legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilemail" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForRecategorization
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Mail.Recategorization" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Categorization"])
  {
    categorization = [self Categorization];
LABEL_5:
    v6 = categorization;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"Recategorization"])
  {
    categorization = [self Recategorization];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMailCategorization validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMMailRecategorization validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

@end