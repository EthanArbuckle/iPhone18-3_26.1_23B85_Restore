@interface _BMSiriRemembersLibraryNode
+ (id)AssistantSuggestions;
+ (id)AudioHistory;
+ (id)CallHistory;
+ (id)HomeHistory;
+ (id)Intent;
+ (id)InteractionHistory;
+ (id)MessageHistory;
+ (id)configurationForAssistantSuggestions;
+ (id)configurationForAudioHistory;
+ (id)configurationForCallHistory;
+ (id)configurationForHomeHistory;
+ (id)configurationForIntent;
+ (id)configurationForInteractionHistory;
+ (id)configurationForMessageHistory;
+ (id)storeConfigurationForAssistantSuggestions;
+ (id)storeConfigurationForAudioHistory;
+ (id)storeConfigurationForCallHistory;
+ (id)storeConfigurationForHomeHistory;
+ (id)storeConfigurationForIntent;
+ (id)storeConfigurationForInteractionHistory;
+ (id)storeConfigurationForMessageHistory;
+ (id)streamWithName:(id)a3;
+ (id)syncPolicyForAssistantSuggestions;
+ (id)syncPolicyForAudioHistory;
+ (id)syncPolicyForCallHistory;
+ (id)syncPolicyForInteractionHistory;
+ (id)syncPolicyForMessageHistory;
+ (id)validKeyPaths;
@end

@implementation _BMSiriRemembersLibraryNode

+ (id)MessageHistory
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForMessageHistory];
  v3 = +[BMSiriMessageHistory columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Remembers.MessageHistory" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Remembers.MessageHistory" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)CallHistory
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForCallHistory];
  v3 = +[BMSiriCallHistory columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Remembers.CallHistory" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Remembers.CallHistory" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForCallHistory
{
  v30[6] = *MEMORY[0x1E69E9840];
  v29 = [a1 storeConfigurationForCallHistory];
  v28 = [a1 syncPolicyForCallHistory];
  v3 = objc_alloc(MEMORY[0x1E698F330]);
  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$uninstalled == interaction.appBundleId" argumentArray:0];
  v26 = [v3 initWithIdentifier:@"app-uninstall" predicate:v27];
  v30[0] = v26;
  v4 = objc_alloc(MEMORY[0x1E698F330]);
  v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT interaction.appBundleId IN $installed" argumentArray:0];
  v5 = [v4 initWithIdentifier:@"app-uninstall-nightly" predicate:v25];
  v30[1] = v5;
  v6 = objc_alloc(MEMORY[0x1E698F330]);
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v8 = [v6 initWithIdentifier:@"delete-siri-dictation-history" predicate:v7];
  v30[2] = v8;
  v9 = objc_alloc(MEMORY[0x1E698F330]);
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v11 = [v9 initWithIdentifier:@"disable-siri" predicate:v10];
  v30[3] = v11;
  v12 = objc_alloc(MEMORY[0x1E698F330]);
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"interaction.appBundleId == $app AND (interaction.appIntentInteractionIdentifier IN $intentIdentifiers OR interaction.groupIdentifier IN $intentGroupIdentifiers)" argumentArray:0];
  v14 = [v12 initWithIdentifier:@"intent-deletion" predicate:v13];
  v30[4] = v14;
  v15 = objc_alloc(MEMORY[0x1E698F330]);
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"interaction.appBundleId IN $disabledApps" argumentArray:0];
  v17 = [v15 initWithIdentifier:@"learn-from-this-app" predicate:v16];
  v30[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:6];

  v19 = MEMORY[0x1E698F338];
  v20 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F31A4964-E2CE-4AE1-A0B9-7BF60EFCD204"];
  BYTE2(v24) = 1;
  LOWORD(v24) = 1;
  v21 = [v19 _libraryStreamConfigurationWithUUID:v20 streamIdentifier:@"Siri.Remembers.CallHistory" eventClass:objc_opt_class() storeConfig:v29 syncPolicy:v28 legacyNames:0 internalMetadata:0 enableSubscriptions:v24 enableSubscriptionSubstream:0 enableTombstoneSubstream:v18 allowedClients:@"com.apple.siriinferenced" pruningTriggers:? spaceAttributionOwner:?];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)storeConfigurationForCallHistory
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:50000 maxEventCount:31536000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Remembers.CallHistory" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)syncPolicyForCallHistory
{
  v22[1] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v22[0] = v17;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v16 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v21 = v16;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v4 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v20 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v18[0] = v6;
  v19[0] = v2;
  v7 = BMDevicePlatformAsKeyString();
  v18[1] = v7;
  v19[1] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v18[2] = v8;
  v19[2] = v3;
  v9 = BMDevicePlatformAsKeyString();
  v18[3] = v9;
  v19[3] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v18[4] = v10;
  v19[4] = v5;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];

  v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F31A4964-E2CE-4AE1-A0B9-7BF60EFCD204"];
  v13 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v11 syncUUID:v12 legacySyncID:0 eventClass:objc_opt_class()];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)InteractionHistory
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForInteractionHistory];
  v3 = +[BMSiriInteractionHistory columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Remembers.InteractionHistory" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Remembers.InteractionHistory" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)syncPolicyForInteractionHistory
{
  v22[1] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v22[0] = v17;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v16 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v21 = v16;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v4 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v20 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v18[0] = v6;
  v19[0] = v2;
  v7 = BMDevicePlatformAsKeyString();
  v18[1] = v7;
  v19[1] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v18[2] = v8;
  v19[2] = v3;
  v9 = BMDevicePlatformAsKeyString();
  v18[3] = v9;
  v19[3] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v18[4] = v10;
  v19[4] = v5;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];

  v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5270D95A-22C7-4BF1-95E8-DD85C54B8813"];
  v13 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v11 syncUUID:v12 legacySyncID:0 eventClass:objc_opt_class()];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)storeConfigurationForInteractionHistory
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Remembers.InteractionHistory" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForInteractionHistory
{
  v30[6] = *MEMORY[0x1E69E9840];
  v29 = [a1 storeConfigurationForInteractionHistory];
  v28 = [a1 syncPolicyForInteractionHistory];
  v3 = objc_alloc(MEMORY[0x1E698F330]);
  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$uninstalled == interaction.appBundleId" argumentArray:0];
  v26 = [v3 initWithIdentifier:@"app-uninstall" predicate:v27];
  v30[0] = v26;
  v4 = objc_alloc(MEMORY[0x1E698F330]);
  v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT interaction.appBundleId IN $installed" argumentArray:0];
  v5 = [v4 initWithIdentifier:@"app-uninstall-nightly" predicate:v25];
  v30[1] = v5;
  v6 = objc_alloc(MEMORY[0x1E698F330]);
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v8 = [v6 initWithIdentifier:@"delete-siri-dictation-history" predicate:v7];
  v30[2] = v8;
  v9 = objc_alloc(MEMORY[0x1E698F330]);
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v11 = [v9 initWithIdentifier:@"disable-siri" predicate:v10];
  v30[3] = v11;
  v12 = objc_alloc(MEMORY[0x1E698F330]);
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"interaction.appBundleId == $app AND (interaction.appIntentInteractionIdentifier IN $intentIdentifiers OR interaction.groupIdentifier IN $intentGroupIdentifiers)" argumentArray:0];
  v14 = [v12 initWithIdentifier:@"intent-deletion" predicate:v13];
  v30[4] = v14;
  v15 = objc_alloc(MEMORY[0x1E698F330]);
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"interaction.appBundleId IN $disabledApps" argumentArray:0];
  v17 = [v15 initWithIdentifier:@"learn-from-this-app" predicate:v16];
  v30[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:6];

  v19 = MEMORY[0x1E698F338];
  v20 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5270D95A-22C7-4BF1-95E8-DD85C54B8813"];
  BYTE2(v24) = 1;
  LOWORD(v24) = 1;
  v21 = [v19 _libraryStreamConfigurationWithUUID:v20 streamIdentifier:@"Siri.Remembers.InteractionHistory" eventClass:objc_opt_class() storeConfig:v29 syncPolicy:v28 legacyNames:0 internalMetadata:0 enableSubscriptions:v24 enableSubscriptionSubstream:0 enableTombstoneSubstream:v18 allowedClients:@"com.apple.siriinferenced" pruningTriggers:? spaceAttributionOwner:?];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)configurationForMessageHistory
{
  v30[6] = *MEMORY[0x1E69E9840];
  v29 = [a1 storeConfigurationForMessageHistory];
  v28 = [a1 syncPolicyForMessageHistory];
  v3 = objc_alloc(MEMORY[0x1E698F330]);
  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$uninstalled == interaction.appBundleId" argumentArray:0];
  v26 = [v3 initWithIdentifier:@"app-uninstall" predicate:v27];
  v30[0] = v26;
  v4 = objc_alloc(MEMORY[0x1E698F330]);
  v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT interaction.appBundleId IN $installed" argumentArray:0];
  v5 = [v4 initWithIdentifier:@"app-uninstall-nightly" predicate:v25];
  v30[1] = v5;
  v6 = objc_alloc(MEMORY[0x1E698F330]);
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v8 = [v6 initWithIdentifier:@"delete-siri-dictation-history" predicate:v7];
  v30[2] = v8;
  v9 = objc_alloc(MEMORY[0x1E698F330]);
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v11 = [v9 initWithIdentifier:@"disable-siri" predicate:v10];
  v30[3] = v11;
  v12 = objc_alloc(MEMORY[0x1E698F330]);
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"interaction.appBundleId == $app AND (interaction.appIntentInteractionIdentifier IN $intentIdentifiers OR interaction.groupIdentifier IN $intentGroupIdentifiers)" argumentArray:0];
  v14 = [v12 initWithIdentifier:@"intent-deletion" predicate:v13];
  v30[4] = v14;
  v15 = objc_alloc(MEMORY[0x1E698F330]);
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"interaction.appBundleId IN $disabledApps" argumentArray:0];
  v17 = [v15 initWithIdentifier:@"learn-from-this-app" predicate:v16];
  v30[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:6];

  v19 = MEMORY[0x1E698F338];
  v20 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"6F5F436A-25E2-4C0C-86E6-BB4A82C3502E"];
  BYTE2(v24) = 1;
  LOWORD(v24) = 1;
  v21 = [v19 _libraryStreamConfigurationWithUUID:v20 streamIdentifier:@"Siri.Remembers.MessageHistory" eventClass:objc_opt_class() storeConfig:v29 syncPolicy:v28 legacyNames:0 internalMetadata:0 enableSubscriptions:v24 enableSubscriptionSubstream:0 enableTombstoneSubstream:v18 allowedClients:@"com.apple.siriinferenced" pruningTriggers:? spaceAttributionOwner:?];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)storeConfigurationForMessageHistory
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:31536000.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Remembers.MessageHistory" domain:0 segmentSize:0x200000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)syncPolicyForMessageHistory
{
  v22[1] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v22[0] = v17;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v16 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v21 = v16;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v4 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v20 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v18[0] = v6;
  v19[0] = v2;
  v7 = BMDevicePlatformAsKeyString();
  v18[1] = v7;
  v19[1] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v18[2] = v8;
  v19[2] = v3;
  v9 = BMDevicePlatformAsKeyString();
  v18[3] = v9;
  v19[3] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v18[4] = v10;
  v19[4] = v5;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];

  v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"6F5F436A-25E2-4C0C-86E6-BB4A82C3502E"];
  v13 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v11 syncUUID:v12 legacySyncID:0 eventClass:objc_opt_class()];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)AssistantSuggestions
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForAssistantSuggestions];
  v3 = +[BMSiriAssistantSuggestions columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Remembers.AssistantSuggestions" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Remembers.AssistantSuggestions" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAssistantSuggestions
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23 = [a1 storeConfigurationForAssistantSuggestions];
  v22 = [a1 syncPolicyForAssistantSuggestions];
  v3 = objc_alloc(MEMORY[0x1E698F330]);
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$uninstalled == interaction.appBundleId" argumentArray:0];
  v5 = [v3 initWithIdentifier:@"app-uninstall" predicate:v4];
  v24[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E698F330]);
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT ALL {interaction.appBundleId} IN $installed" argumentArray:0];
  v8 = [v6 initWithIdentifier:@"app-uninstall-nightly" predicate:v7];
  v24[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E698F330]);
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v11 = [v9 initWithIdentifier:@"delete-siri-dictation-history" predicate:v10];
  v24[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E698F330]);
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v14 = [v12 initWithIdentifier:@"disable-siri" predicate:v13];
  v24[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];

  v16 = MEMORY[0x1E698F338];
  v17 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"2CC2F1F2-28F6-4E22-9042-95AD00BBB2E2"];
  BYTE2(v21) = 1;
  LOWORD(v21) = 1;
  v18 = [v16 _libraryStreamConfigurationWithUUID:v17 streamIdentifier:@"Siri.Remembers.AssistantSuggestions" eventClass:objc_opt_class() storeConfig:v23 syncPolicy:v22 legacyNames:0 internalMetadata:0 enableSubscriptions:v21 enableSubscriptionSubstream:0 enableTombstoneSubstream:v15 allowedClients:@"com.apple.siriinferenced" pruningTriggers:? spaceAttributionOwner:?];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)storeConfigurationForAssistantSuggestions
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:31536000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Remembers.AssistantSuggestions" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)syncPolicyForAssistantSuggestions
{
  v27[1] = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v27[0] = v21;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v20 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v26 = v20;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v19 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v25 = v19;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v18 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v24 = v18;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v22[0] = v6;
  v17 = v2;
  v23[0] = v2;
  v7 = BMDevicePlatformAsKeyString();
  v22[1] = v7;
  v23[1] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v22[2] = v8;
  v23[2] = v3;
  v9 = BMDevicePlatformAsKeyString();
  v22[3] = v9;
  v23[3] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v22[4] = v10;
  v23[4] = v4;
  v11 = BMDevicePlatformAsKeyString();
  v22[5] = v11;
  v23[5] = v5;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:6];

  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"2CC2F1F2-28F6-4E22-9042-95AD00BBB2E2"];
  v14 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v12 syncUUID:v13 legacySyncID:0 eventClass:objc_opt_class()];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)AudioHistory
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForAudioHistory];
  v3 = +[BMSiriAudioHistory columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Remembers.AudioHistory" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Remembers.AudioHistory" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAudioHistory
{
  v30[6] = *MEMORY[0x1E69E9840];
  v29 = [a1 storeConfigurationForAudioHistory];
  v28 = [a1 syncPolicyForAudioHistory];
  v3 = objc_alloc(MEMORY[0x1E698F330]);
  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$uninstalled == interaction.appBundleId" argumentArray:0];
  v26 = [v3 initWithIdentifier:@"app-uninstall" predicate:v27];
  v30[0] = v26;
  v4 = objc_alloc(MEMORY[0x1E698F330]);
  v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT interaction.appBundleId IN $installed" argumentArray:0];
  v5 = [v4 initWithIdentifier:@"app-uninstall-nightly" predicate:v25];
  v30[1] = v5;
  v6 = objc_alloc(MEMORY[0x1E698F330]);
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v8 = [v6 initWithIdentifier:@"delete-siri-dictation-history" predicate:v7];
  v30[2] = v8;
  v9 = objc_alloc(MEMORY[0x1E698F330]);
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v11 = [v9 initWithIdentifier:@"disable-siri" predicate:v10];
  v30[3] = v11;
  v12 = objc_alloc(MEMORY[0x1E698F330]);
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"interaction.appBundleId == $app AND (interaction.appIntentInteractionIdentifier IN $intentIdentifiers OR interaction.groupIdentifier IN $intentGroupIdentifiers)" argumentArray:0];
  v14 = [v12 initWithIdentifier:@"intent-deletion" predicate:v13];
  v30[4] = v14;
  v15 = objc_alloc(MEMORY[0x1E698F330]);
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"interaction.appBundleId IN $disabledApps" argumentArray:0];
  v17 = [v15 initWithIdentifier:@"learn-from-this-app" predicate:v16];
  v30[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:6];

  v19 = MEMORY[0x1E698F338];
  v20 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"80C15BA8-7E6F-4985-BC29-6335B88D590A"];
  BYTE2(v24) = 1;
  LOWORD(v24) = 1;
  v21 = [v19 _libraryStreamConfigurationWithUUID:v20 streamIdentifier:@"Siri.Remembers.AudioHistory" eventClass:objc_opt_class() storeConfig:v29 syncPolicy:v28 legacyNames:0 internalMetadata:0 enableSubscriptions:v24 enableSubscriptionSubstream:0 enableTombstoneSubstream:v18 allowedClients:@"com.apple.siriinferenced" pruningTriggers:? spaceAttributionOwner:?];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)storeConfigurationForAudioHistory
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:50000 maxEventCount:15552000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Remembers.AudioHistory" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)syncPolicyForAudioHistory
{
  v27[1] = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v27[0] = v21;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v20 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v26 = v20;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v19 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v25 = v19;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v18 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v24 = v18;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v22[0] = v6;
  v17 = v2;
  v23[0] = v2;
  v7 = BMDevicePlatformAsKeyString();
  v22[1] = v7;
  v23[1] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v22[2] = v8;
  v23[2] = v3;
  v9 = BMDevicePlatformAsKeyString();
  v22[3] = v9;
  v23[3] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v22[4] = v10;
  v23[4] = v4;
  v11 = BMDevicePlatformAsKeyString();
  v22[5] = v11;
  v23[5] = v5;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:6];

  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"80C15BA8-7E6F-4985-BC29-6335B88D590A"];
  v14 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v12 syncUUID:v13 legacySyncID:0 eventClass:objc_opt_class()];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)Intent
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForIntent];
  v3 = +[BMSiriIntent columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Remembers.Intent" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Remembers.Intent" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForIntent
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 storeConfigurationForIntent];
  v4 = [a1 syncPolicyForIntent];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E1411DC0-1A96-4FC2-9402-68BB4BC8E19D"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.Remembers.Intent" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EC300 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:@"com.apple.siriinferenced" pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForIntent
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Remembers.Intent" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"AssistantSuggestions"])
  {
    v5 = [a1 AssistantSuggestions];
LABEL_15:
    v6 = v5;
    goto LABEL_16;
  }

  if ([v4 isEqualToString:@"AudioHistory"])
  {
    v5 = [a1 AudioHistory];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"CallHistory"])
  {
    v5 = [a1 CallHistory];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"HomeHistory"])
  {
    v5 = [a1 HomeHistory];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"Intent"])
  {
    v5 = [a1 Intent];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"InteractionHistory"])
  {
    v5 = [a1 InteractionHistory];
    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"MessageHistory"])
  {
    v5 = [a1 MessageHistory];
    goto LABEL_15;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSiriAssistantSuggestions validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMSiriAudioHistory validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMSiriCallHistory validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMSiriHomeHistory validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMSiriIntent validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMSiriInteractionHistory validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = +[BMSiriMessageHistory validKeyPaths];
  [v2 addObjectsFromArray:v9];

  v10 = [v2 copy];

  return v10;
}

+ (id)configurationForHomeHistory
{
  v3 = [a1 storeConfigurationForHomeHistory];
  v4 = [a1 syncPolicyForHomeHistory];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"2A547182-AF14-4DCE-BF23-C42E38DBEC9B"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.Remembers.HomeHistory" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.siriinferenced" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForHomeHistory
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:31536000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Remembers.HomeHistory" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)HomeHistory
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForHomeHistory];
  v3 = +[BMSiriHomeHistory columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Remembers.HomeHistory" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Remembers.HomeHistory" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end