@interface _BMMailCategorizationAnalyticsLibraryNode
+ (id)Read;
+ (id)Recategorize;
+ (id)Receive;
+ (id)configurationForRead;
+ (id)configurationForRecategorize;
+ (id)configurationForReceive;
+ (id)storeConfigurationForRead;
+ (id)storeConfigurationForRecategorize;
+ (id)storeConfigurationForReceive;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMMailCategorizationAnalyticsLibraryNode

+ (id)Receive
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForReceive = [self configurationForReceive];
  v3 = +[BMMailCategorizationAnalyticsReceive columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Mail.CategorizationAnalytics.Receive" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Mail.CategorizationAnalytics.Receive" schema:v9 configuration:configurationForReceive];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForReceive
{
  storeConfigurationForReceive = [self storeConfigurationForReceive];
  syncPolicyForReceive = [self syncPolicyForReceive];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"59553F07-B258-4673-9330-FBBE528D8B14"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 0;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Mail.CategorizationAnalytics.Receive" eventClass:objc_opt_class() storeConfig:storeConfigurationForReceive syncPolicy:syncPolicyForReceive legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilemail" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForReceive
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Mail.CategorizationAnalytics.Receive" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)Recategorize
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForRecategorize = [self configurationForRecategorize];
  v3 = +[BMMailCategorizationAnalyticsRecategorize columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Mail.CategorizationAnalytics.Recategorize" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Mail.CategorizationAnalytics.Recategorize" schema:v9 configuration:configurationForRecategorize];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForRecategorize
{
  storeConfigurationForRecategorize = [self storeConfigurationForRecategorize];
  syncPolicyForRecategorize = [self syncPolicyForRecategorize];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BCBB9D23-BBAD-4098-AD01-E559530E75DF"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 0;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Mail.CategorizationAnalytics.Recategorize" eventClass:objc_opt_class() storeConfig:storeConfigurationForRecategorize syncPolicy:syncPolicyForRecategorize legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilemail" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForRecategorize
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Mail.CategorizationAnalytics.Recategorize" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)Read
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForRead = [self configurationForRead];
  v3 = +[BMMailCategorizationAnalyticsRead columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Mail.CategorizationAnalytics.Read" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Mail.CategorizationAnalytics.Read" schema:v9 configuration:configurationForRead];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForRead
{
  storeConfigurationForRead = [self storeConfigurationForRead];
  syncPolicyForRead = [self syncPolicyForRead];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0BF1FBAF-EF49-493C-A5E9-FA1B7CE8F097"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 0;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Mail.CategorizationAnalytics.Read" eventClass:objc_opt_class() storeConfig:storeConfigurationForRead syncPolicy:syncPolicyForRead legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilemail" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForRead
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Mail.CategorizationAnalytics.Read" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Read"])
  {
    read = [self Read];
LABEL_7:
    v6 = read;
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"Recategorize"])
  {
    read = [self Recategorize];
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"Receive"])
  {
    read = [self Receive];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMailCategorizationAnalyticsRead validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMMailCategorizationAnalyticsRecategorize validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMMailCategorizationAnalyticsReceive validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

@end