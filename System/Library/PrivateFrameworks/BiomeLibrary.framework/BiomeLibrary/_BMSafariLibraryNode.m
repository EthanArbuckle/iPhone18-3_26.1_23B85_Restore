@interface _BMSafariLibraryNode
+ (id)AutoPlay;
+ (id)MemoryFootprint;
+ (id)Navigations;
+ (id)PageLoad;
+ (id)WebPagePerformance;
+ (id)WindowProxy;
+ (id)configurationForAutoPlay;
+ (id)configurationForMemoryFootprint;
+ (id)configurationForNavigations;
+ (id)configurationForPageLoad;
+ (id)configurationForWebPagePerformance;
+ (id)configurationForWindowProxy;
+ (id)storeConfigurationForAutoPlay;
+ (id)storeConfigurationForMemoryFootprint;
+ (id)storeConfigurationForNavigations;
+ (id)storeConfigurationForPageLoad;
+ (id)storeConfigurationForWebPagePerformance;
+ (id)storeConfigurationForWindowProxy;
+ (id)streamWithName:(id)a3;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMSafariLibraryNode

+ (id)sublibraries
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 Browsing];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"AutoPlay"])
  {
    v5 = [a1 AutoPlay];
LABEL_13:
    v6 = v5;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"MemoryFootprint"])
  {
    v5 = [a1 MemoryFootprint];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"Navigations"])
  {
    v5 = [a1 Navigations];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"PageLoad"])
  {
    v5 = [a1 PageLoad];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"WebPagePerformance"])
  {
    v5 = [a1 WebPagePerformance];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"WindowProxy"])
  {
    v5 = [a1 WindowProxy];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSafariAutoPlay validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMSafariMemoryFootprint validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMSafariNavigations validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMSafariPageLoad validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMSafariWebPagePerformance validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMSafariWindowProxy validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = [v2 copy];

  return v9;
}

+ (id)configurationForWindowProxy
{
  v3 = [a1 storeConfigurationForWindowProxy];
  v4 = [a1 syncPolicyForWindowProxy];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"38C11543-3679-411C-B3FF-711D03734963"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Safari.WindowProxy" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilesafari" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForWindowProxy
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:86400.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Safari.WindowProxy" domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForWebPagePerformance
{
  v3 = [a1 storeConfigurationForWebPagePerformance];
  v4 = [a1 syncPolicyForWebPagePerformance];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A5AB12EA-1F12-4971-8146-192DBEE389F5"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Safari.WebPagePerformance" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilesafari" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForWebPagePerformance
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Safari.WebPagePerformance" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForPageLoad
{
  v3 = [a1 storeConfigurationForPageLoad];
  v4 = [a1 syncPolicyForPageLoad];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"13116B78-F87C-4C58-BAEA-9967D881E811"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Safari.PageLoad" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilesafari" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPageLoad
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:86400.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Safari.PageLoad" domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForNavigations
{
  v3 = [a1 storeConfigurationForNavigations];
  v4 = [a1 syncPolicyForNavigations];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4D4CDB4A-8DCC-4D1F-8276-33FE195FE680"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Safari.Navigations" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilesafari" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForNavigations
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Safari.Navigations" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForMemoryFootprint
{
  v3 = [a1 storeConfigurationForMemoryFootprint];
  v4 = [a1 syncPolicyForMemoryFootprint];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"2C44BEA5-5638-4C67-8C65-E8428C8DCE22"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Safari.MemoryFootprint" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMemoryFootprint
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:86400.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Safari.MemoryFootprint" domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForAutoPlay
{
  v3 = [a1 storeConfigurationForAutoPlay];
  v4 = [a1 syncPolicyForAutoPlay];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C7500EE0-6B01-4A9F-8BD4-8D5D1ABDB658"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Safari.AutoPlay" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobilesafari" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAutoPlay
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Safari.AutoPlay" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)WindowProxy
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForWindowProxy];
  v3 = +[BMSafariWindowProxy columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Safari.WindowProxy" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Safari.WindowProxy" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)WebPagePerformance
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForWebPagePerformance];
  v3 = +[BMSafariWebPagePerformance columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Safari.WebPagePerformance" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Safari.WebPagePerformance" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)PageLoad
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForPageLoad];
  v3 = +[BMSafariPageLoad columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Safari.PageLoad" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Safari.PageLoad" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Navigations
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForNavigations];
  v3 = +[BMSafariNavigations columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Safari.Navigations" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Safari.Navigations" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)MemoryFootprint
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForMemoryFootprint];
  v3 = +[BMSafariMemoryFootprint columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Safari.MemoryFootprint" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Safari.MemoryFootprint" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)AutoPlay
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForAutoPlay];
  v3 = +[BMSafariAutoPlay columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Safari.AutoPlay" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Safari.AutoPlay" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end