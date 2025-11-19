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
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMMailCategorizationAnalyticsLibraryNode

+ (id)Receive
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForReceive];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Mail.CategorizationAnalytics.Receive" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForReceive
{
  v3 = [a1 storeConfigurationForReceive];
  v4 = [a1 syncPolicyForReceive];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"59553F07-B258-4673-9330-FBBE528D8B14"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 0;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Mail.CategorizationAnalytics.Receive" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilemail" pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForRecategorize];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Mail.CategorizationAnalytics.Recategorize" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForRecategorize
{
  v3 = [a1 storeConfigurationForRecategorize];
  v4 = [a1 syncPolicyForRecategorize];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BCBB9D23-BBAD-4098-AD01-E559530E75DF"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 0;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Mail.CategorizationAnalytics.Recategorize" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilemail" pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForRead];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Mail.CategorizationAnalytics.Read" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForRead
{
  v3 = [a1 storeConfigurationForRead];
  v4 = [a1 syncPolicyForRead];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0BF1FBAF-EF49-493C-A5E9-FA1B7CE8F097"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 0;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Mail.CategorizationAnalytics.Read" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilemail" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForRead
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Mail.CategorizationAnalytics.Read" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"Read"])
  {
    v5 = [a1 Read];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"Recategorize"])
  {
    v5 = [a1 Recategorize];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"Receive"])
  {
    v5 = [a1 Receive];
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