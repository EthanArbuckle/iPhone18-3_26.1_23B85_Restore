@interface _BMSystemSettingsLibraryNode
+ (id)AppearanceSetup;
+ (id)ChildMultitaskingSetup;
+ (id)SearchTerms;
+ (id)configurationForAppearanceSetup;
+ (id)configurationForChildMultitaskingSetup;
+ (id)configurationForSearchTerms;
+ (id)storeConfigurationForAppearanceSetup;
+ (id)storeConfigurationForChildMultitaskingSetup;
+ (id)storeConfigurationForSearchTerms;
+ (id)streamWithName:(id)a3;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMSystemSettingsLibraryNode

+ (id)sublibraries
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 GestureEducation];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"AppearanceSetup"])
  {
    v5 = [a1 AppearanceSetup];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"ChildMultitaskingSetup"])
  {
    v5 = [a1 ChildMultitaskingSetup];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"SearchTerms"])
  {
    v5 = [a1 SearchTerms];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSystemSettingsAppearanceSetup validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMSystemSettingsChildMultitaskingSetup validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMSystemSettingsSearchTerms validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

+ (id)configurationForSearchTerms
{
  v3 = [a1 storeConfigurationForSearchTerms];
  v4 = [a1 syncPolicyForSearchTerms];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"8542704B-813A-40D9-BEFF-B422445FB40F"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SystemSettings.SearchTerms" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSearchTerms
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"SystemSettings.SearchTerms" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForChildMultitaskingSetup
{
  v3 = [a1 storeConfigurationForChildMultitaskingSetup];
  v4 = [a1 syncPolicyForChildMultitaskingSetup];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"08A95594-A3F1-4274-A5AA-AD569DC25BE7"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SystemSettings.ChildMultitaskingSetup" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForChildMultitaskingSetup
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"SystemSettings.ChildMultitaskingSetup" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForAppearanceSetup
{
  v3 = [a1 storeConfigurationForAppearanceSetup];
  v4 = [a1 syncPolicyForAppearanceSetup];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A5403BAB-1A1E-4151-BC68-34A9F711AFE9"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SystemSettings.AppearanceSetup" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAppearanceSetup
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"SystemSettings.AppearanceSetup" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)SearchTerms
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForSearchTerms];
  v3 = +[BMSystemSettingsSearchTerms columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"SystemSettings.SearchTerms" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SystemSettings.SearchTerms" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)ChildMultitaskingSetup
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForChildMultitaskingSetup];
  v3 = +[BMSystemSettingsChildMultitaskingSetup columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"SystemSettings.ChildMultitaskingSetup" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SystemSettings.ChildMultitaskingSetup" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)AppearanceSetup
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForAppearanceSetup];
  v3 = +[BMSystemSettingsAppearanceSetup columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"SystemSettings.AppearanceSetup" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SystemSettings.AppearanceSetup" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end