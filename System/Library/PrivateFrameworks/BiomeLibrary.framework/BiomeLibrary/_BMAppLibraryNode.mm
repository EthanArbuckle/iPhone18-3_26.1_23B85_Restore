@interface _BMAppLibraryNode
+ (id)Activity;
+ (id)ContextualActions;
+ (id)EventEngagement;
+ (id)InFocus;
+ (id)Install;
+ (id)Installation;
+ (id)Intent;
+ (id)LanguageConsumption;
+ (id)LocationActivity;
+ (id)MediaUsage;
+ (id)RelevantShortcuts;
+ (id)WebUsage;
+ (id)configurationForActivity;
+ (id)configurationForContextualActions;
+ (id)configurationForEventEngagement;
+ (id)configurationForInFocus;
+ (id)configurationForInstall;
+ (id)configurationForInstallation;
+ (id)configurationForIntent;
+ (id)configurationForLanguageConsumption;
+ (id)configurationForLocationActivity;
+ (id)configurationForMediaUsage;
+ (id)configurationForRelevantShortcuts;
+ (id)configurationForWebUsage;
+ (id)storeConfigurationForActivity;
+ (id)storeConfigurationForContextualActions;
+ (id)storeConfigurationForEventEngagement;
+ (id)storeConfigurationForInFocus;
+ (id)storeConfigurationForInstall;
+ (id)storeConfigurationForInstallation;
+ (id)storeConfigurationForIntent;
+ (id)storeConfigurationForLanguageConsumption;
+ (id)storeConfigurationForLocationActivity;
+ (id)storeConfigurationForMediaUsage;
+ (id)storeConfigurationForRelevantShortcuts;
+ (id)storeConfigurationForWebUsage;
+ (id)streamWithName:(id)name;
+ (id)sublibraries;
+ (id)syncPolicyForInFocus;
+ (id)validKeyPaths;
@end

@implementation _BMAppLibraryNode

+ (id)storeConfigurationForInFocus
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:75000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.InFocus" domain:0 segmentSize:0x80000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForInFocus
{
  v18[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForInFocus = [self storeConfigurationForInFocus];
  syncPolicyForInFocus = [self syncPolicyForInFocus];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$uninstalled IN {bundleID argumentArray:parentBundleID, extensionHostID}", 0];
  v7 = [v5 initWithIdentifier:@"app-uninstall" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"type != 3 AND NOT ALL {bundleID argumentArray:parentBundleID, extensionHostID} IN $installed", 0];
  v10 = [v8 initWithIdentifier:@"app-uninstall-nightly" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0171748D-1B75-47EB-B34D-008EDC2F7A6A"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"App.InFocus" eventClass:objc_opt_class() storeConfig:storeConfigurationForInFocus syncPolicy:syncPolicyForInFocus legacyNames:&unk_1EF3E8D78 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)syncPolicyForInFocus
{
  v34[2] = *MEMORY[0x1E69E9840];
  v27 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:3 direction:3];
  v26 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v34[0] = v27;
  v34[1] = v26;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v25 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:3 direction:3];
  v24 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v33[0] = v25;
  v33[1] = v24;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v23 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:2];
  v32 = v23;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v22 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v31 = v22;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v20 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v30 = v20;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v28[0] = v6;
  v21 = v2;
  v29[0] = v2;
  v7 = BMDevicePlatformAsKeyString();
  v28[1] = v7;
  v29[1] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v28[2] = v8;
  v19 = v3;
  v29[2] = v3;
  v9 = BMDevicePlatformAsKeyString();
  v28[3] = v9;
  v29[3] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v28[4] = v10;
  v29[4] = v18;
  v11 = BMDevicePlatformAsKeyString();
  v28[5] = v11;
  v29[5] = v4;
  v12 = BMDevicePlatformAsKeyString();
  v28[6] = v12;
  v29[6] = v5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:7];

  v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0171748D-1B75-47EB-B34D-008EDC2F7A6A"];
  v15 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v13 syncUUID:v14 legacySyncID:@"public/AppLaunch" eventClass:objc_opt_class()];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)InFocus
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForInFocus = [self configurationForInFocus];
  v3 = +[BMAppInFocus columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.InFocus" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.InFocus" schema:v9 configuration:configurationForInFocus];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)sublibraries
{
  v9[3] = *MEMORY[0x1E69E9840];
  clip = [self Clip];
  intents = [self Intents];
  v9[1] = intents;
  webApp = [self WebApp];
  v9[2] = webApp;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)Intent
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForIntent = [self configurationForIntent];
  v3 = +[BMAppIntent columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.Intent" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.Intent" schema:v9 configuration:configurationForIntent];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForIntent
{
  v30[6] = *MEMORY[0x1E69E9840];
  storeConfigurationForIntent = [self storeConfigurationForIntent];
  syncPolicyForIntent = [self syncPolicyForIntent];
  v3 = objc_alloc(MEMORY[0x1E698F330]);
  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$uninstalled == bundleID" argumentArray:0];
  v26 = [v3 initWithIdentifier:@"app-uninstall" predicate:v27];
  v30[0] = v26;
  v4 = objc_alloc(MEMORY[0x1E698F330]);
  v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT bundleID IN $installed" argumentArray:0];
  v5 = [v4 initWithIdentifier:@"app-uninstall-nightly" predicate:v25];
  v30[1] = v5;
  v6 = objc_alloc(MEMORY[0x1E698F330]);
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"donatedBySiri == YES" argumentArray:0];
  v8 = [v6 initWithIdentifier:@"delete-siri-dictation-history" predicate:v7];
  v30[2] = v8;
  v9 = objc_alloc(MEMORY[0x1E698F330]);
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"donatedBySiri == YES" argumentArray:0];
  v11 = [v9 initWithIdentifier:@"disable-siri" predicate:v10];
  v30[3] = v11;
  v12 = objc_alloc(MEMORY[0x1E698F330]);
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleID == $app AND (itemID IN $intentIdentifiers OR groupIdentifier IN $intentGroupIdentifiers)" argumentArray:0];
  v14 = [v12 initWithIdentifier:@"intent-deletion" predicate:v13];
  v30[4] = v14;
  v15 = objc_alloc(MEMORY[0x1E698F330]);
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleID IN $disabledApps" argumentArray:0];
  v17 = [v15 initWithIdentifier:@"learn-from-this-app" predicate:v16];
  v30[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:6];

  v19 = MEMORY[0x1E698F338];
  v20 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E89116F4-E17C-48DA-BD91-00BFE0BF38AC"];
  BYTE2(v24) = 1;
  LOWORD(v24) = 1;
  v21 = [v19 _libraryStreamConfigurationWithUUID:v20 streamIdentifier:@"App.Intent" eventClass:objc_opt_class() storeConfig:storeConfigurationForIntent syncPolicy:syncPolicyForIntent legacyNames:&unk_1EF3E8D90 internalMetadata:0 enableSubscriptions:v24 enableSubscriptionSubstream:0 enableTombstoneSubstream:v18 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)storeConfigurationForIntent
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:30000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.Intent" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Activity
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForActivity = [self configurationForActivity];
  v3 = +[BMAppActivity columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.Activity" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.Activity" schema:v9 configuration:configurationForActivity];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForActivity
{
  storeConfigurationForActivity = [self storeConfigurationForActivity];
  syncPolicyForActivity = [self syncPolicyForActivity];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"59D1C2D9-756A-43B6-9781-0D02E71C80E3"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"App.Activity" eventClass:objc_opt_class() storeConfig:storeConfigurationForActivity syncPolicy:syncPolicyForActivity legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForActivity
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.Activity" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)ContextualActions
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForContextualActions = [self configurationForContextualActions];
  v3 = +[BMAppContextualActions columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.ContextualActions" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.ContextualActions" schema:v9 configuration:configurationForContextualActions];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForContextualActions
{
  storeConfigurationForContextualActions = [self storeConfigurationForContextualActions];
  syncPolicyForContextualActions = [self syncPolicyForContextualActions];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"16AF2653-AB71-4FD2-8277-52E85C71AB54"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"App.ContextualActions" eventClass:objc_opt_class() storeConfig:storeConfigurationForContextualActions syncPolicy:syncPolicyForContextualActions legacyNames:&unk_1EF3E8D60 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForContextualActions
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.ContextualActions" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Install
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForInstall = [self configurationForInstall];
  v3 = +[BMAppInstall columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.Install" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.Install" schema:v9 configuration:configurationForInstall];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForInstall
{
  storeConfigurationForInstall = [self storeConfigurationForInstall];
  syncPolicyForInstall = [self syncPolicyForInstall];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"3DA6B559-B626-4C8F-8ED4-2B9263D08FC2"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"App.Install" eventClass:objc_opt_class() storeConfig:storeConfigurationForInstall syncPolicy:syncPolicyForInstall legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForInstall
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:500 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.Install" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Installation
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForInstallation = [self configurationForInstallation];
  v3 = +[BMAppInstallation columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.Installation" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.Installation" schema:v9 configuration:configurationForInstallation];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForInstallation
{
  storeConfigurationForInstallation = [self storeConfigurationForInstallation];
  syncPolicyForInstallation = [self syncPolicyForInstallation];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F6F45604-8C80-4A9F-8E33-564D5FC98B58"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"App.Installation" eventClass:objc_opt_class() storeConfig:storeConfigurationForInstallation syncPolicy:syncPolicyForInstallation legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForInstallation
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.Installation" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)LanguageConsumption
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForLanguageConsumption = [self configurationForLanguageConsumption];
  v3 = +[BMAppLanguageConsumption columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.LanguageConsumption" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.LanguageConsumption" schema:v9 configuration:configurationForLanguageConsumption];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForLanguageConsumption
{
  storeConfigurationForLanguageConsumption = [self storeConfigurationForLanguageConsumption];
  syncPolicyForLanguageConsumption = [self syncPolicyForLanguageConsumption];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B4E2EC3A-D5BF-4562-95F4-0F6852380A93"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"App.LanguageConsumption" eventClass:objc_opt_class() storeConfig:storeConfigurationForLanguageConsumption syncPolicy:syncPolicyForLanguageConsumption legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForLanguageConsumption
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.LanguageConsumption" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)LocationActivity
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForLocationActivity = [self configurationForLocationActivity];
  v3 = +[BMAppLocationActivity columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.LocationActivity" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.LocationActivity" schema:v9 configuration:configurationForLocationActivity];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForLocationActivity
{
  v21[3] = *MEMORY[0x1E69E9840];
  storeConfigurationForLocationActivity = [self storeConfigurationForLocationActivity];
  syncPolicyForLocationActivity = [self syncPolicyForLocationActivity];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$uninstalled IN {bundleID argumentArray:sourceBundleID}", 0];
  v7 = [v5 initWithIdentifier:@"app-uninstall" predicate:v6];
  v21[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT ALL {bundleID argumentArray:sourceBundleID} IN $installed", 0];
  v10 = [v8 initWithIdentifier:@"app-uninstall-nightly" predicate:v9];
  v21[1] = v10;
  v11 = objc_alloc(MEMORY[0x1E698F330]);
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v13 = [v11 initWithIdentifier:@"reset-privacy-and-location-warnings" predicate:v12];
  v21[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];

  v15 = MEMORY[0x1E698F338];
  v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"3C653F00-4857-4409-9663-FE53B5627185"];
  BYTE2(v20) = 1;
  LOWORD(v20) = 1;
  v17 = [v15 _libraryStreamConfigurationWithUUID:v16 streamIdentifier:@"App.LocationActivity" eventClass:objc_opt_class() storeConfig:storeConfigurationForLocationActivity syncPolicy:syncPolicyForLocationActivity legacyNames:0 internalMetadata:0 enableSubscriptions:v20 enableSubscriptionSubstream:0 enableTombstoneSubstream:v14 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)storeConfigurationForLocationActivity
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:5242880 maxStreamSize:10000 maxEventCount:172800.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.LocationActivity" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)MediaUsage
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForMediaUsage = [self configurationForMediaUsage];
  v3 = +[BMAppMediaUsage columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.MediaUsage" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.MediaUsage" schema:v9 configuration:configurationForMediaUsage];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForMediaUsage
{
  storeConfigurationForMediaUsage = [self storeConfigurationForMediaUsage];
  syncPolicyForMediaUsage = [self syncPolicyForMediaUsage];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"CE38AAA5-6FA3-41D6-9720-B2D8290001EC"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"App.MediaUsage" eventClass:objc_opt_class() storeConfig:storeConfigurationForMediaUsage syncPolicy:syncPolicyForMediaUsage legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMediaUsage
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.MediaUsage" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)RelevantShortcuts
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForRelevantShortcuts = [self configurationForRelevantShortcuts];
  v3 = +[BMAppRelevantShortcuts columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.RelevantShortcuts" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.RelevantShortcuts" schema:v9 configuration:configurationForRelevantShortcuts];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForRelevantShortcuts
{
  storeConfigurationForRelevantShortcuts = [self storeConfigurationForRelevantShortcuts];
  syncPolicyForRelevantShortcuts = [self syncPolicyForRelevantShortcuts];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"16D4F2CD-3916-4930-B78E-FBD52BC44897"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"App.RelevantShortcuts" eventClass:objc_opt_class() storeConfig:storeConfigurationForRelevantShortcuts syncPolicy:syncPolicyForRelevantShortcuts legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForRelevantShortcuts
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.RelevantShortcuts" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)WebUsage
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForWebUsage = [self configurationForWebUsage];
  v3 = +[BMAppWebUsage columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.WebUsage" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.WebUsage" schema:v9 configuration:configurationForWebUsage];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForWebUsage
{
  storeConfigurationForWebUsage = [self storeConfigurationForWebUsage];
  syncPolicyForWebUsage = [self syncPolicyForWebUsage];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D3BDB19A-865C-4532-A5B2-EC35A4053E59"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"App.WebUsage" eventClass:objc_opt_class() storeConfig:storeConfigurationForWebUsage syncPolicy:syncPolicyForWebUsage legacyNames:&unk_1EF3E8DA8 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForWebUsage
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.WebUsage" domain:0 segmentSize:0x80000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Activity"])
  {
    activity = [self Activity];
LABEL_25:
    v6 = activity;
    goto LABEL_26;
  }

  if ([nameCopy isEqualToString:@"ContextualActions"])
  {
    activity = [self ContextualActions];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"EventEngagement"])
  {
    activity = [self EventEngagement];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"InFocus"])
  {
    activity = [self InFocus];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"Install"])
  {
    activity = [self Install];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"Installation"])
  {
    activity = [self Installation];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"Intent"])
  {
    activity = [self Intent];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"LanguageConsumption"])
  {
    activity = [self LanguageConsumption];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"LocationActivity"])
  {
    activity = [self LocationActivity];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"MediaUsage"])
  {
    activity = [self MediaUsage];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"RelevantShortcuts"])
  {
    activity = [self RelevantShortcuts];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"WebUsage"])
  {
    activity = [self WebUsage];
    goto LABEL_25;
  }

  v6 = 0;
LABEL_26:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMAppActivity validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMAppContextualActions validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMAppEventEngagement validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMAppInFocus validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMAppInstall validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMAppInstallation validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = +[BMAppIntent validKeyPaths];
  [v2 addObjectsFromArray:v9];

  v10 = +[BMAppLanguageConsumption validKeyPaths];
  [v2 addObjectsFromArray:v10];

  v11 = +[BMAppLocationActivity validKeyPaths];
  [v2 addObjectsFromArray:v11];

  v12 = +[BMAppMediaUsage validKeyPaths];
  [v2 addObjectsFromArray:v12];

  v13 = +[BMAppRelevantShortcuts validKeyPaths];
  [v2 addObjectsFromArray:v13];

  v14 = +[BMAppWebUsage validKeyPaths];
  [v2 addObjectsFromArray:v14];

  v15 = [v2 copy];

  return v15;
}

+ (id)configurationForEventEngagement
{
  storeConfigurationForEventEngagement = [self storeConfigurationForEventEngagement];
  syncPolicyForEventEngagement = [self syncPolicyForEventEngagement];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"520CCFB6-806B-4E07-B8B9-83A2340A90FA"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"App.EventEngagement" eventClass:objc_opt_class() storeConfig:storeConfigurationForEventEngagement syncPolicy:syncPolicyForEventEngagement legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForEventEngagement
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.EventEngagement" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)EventEngagement
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForEventEngagement = [self configurationForEventEngagement];
  v3 = +[BMAppEventEngagement columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.EventEngagement" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.EventEngagement" schema:v9 configuration:configurationForEventEngagement];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end