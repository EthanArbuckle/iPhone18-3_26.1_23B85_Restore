@interface _BMProactiveHarvestingLibraryNode
+ (id)Mail;
+ (id)Messages;
+ (id)Notes;
+ (id)NotificationStacks;
+ (id)Notifications;
+ (id)ParsecSearch;
+ (id)Reminders;
+ (id)ThirdPartyApp;
+ (id)configurationForMail;
+ (id)configurationForMessages;
+ (id)configurationForNotes;
+ (id)configurationForNotificationStacks;
+ (id)configurationForNotifications;
+ (id)configurationForParsecSearch;
+ (id)configurationForReminders;
+ (id)configurationForThirdPartyApp;
+ (id)storeConfigurationForMail;
+ (id)storeConfigurationForMessages;
+ (id)storeConfigurationForNotes;
+ (id)storeConfigurationForNotificationStacks;
+ (id)storeConfigurationForNotifications;
+ (id)storeConfigurationForParsecSearch;
+ (id)storeConfigurationForReminders;
+ (id)storeConfigurationForThirdPartyApp;
+ (id)streamWithName:(id)a3;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMProactiveHarvestingLibraryNode

+ (id)sublibraries
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = [a1 News];
  v10[0] = v3;
  v4 = [a1 Photos];
  v10[1] = v4;
  v5 = [a1 Safari];
  v10[2] = v5;
  v6 = [a1 Siri];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"Mail"])
  {
    v5 = [a1 Mail];
LABEL_17:
    v6 = v5;
    goto LABEL_18;
  }

  if ([v4 isEqualToString:@"Messages"])
  {
    v5 = [a1 Messages];
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"Notes"])
  {
    v5 = [a1 Notes];
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"Notifications"])
  {
    v5 = [a1 Notifications];
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"NotificationStacks"])
  {
    v5 = [a1 NotificationStacks];
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"ParsecSearch"])
  {
    v5 = [a1 ParsecSearch];
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"Reminders"])
  {
    v5 = [a1 Reminders];
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"ThirdPartyApp"])
  {
    v5 = [a1 ThirdPartyApp];
    goto LABEL_17;
  }

  v6 = 0;
LABEL_18:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMProactiveHarvestingMail validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMProactiveHarvestingMessages validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMProactiveHarvestingNotes validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMProactiveHarvestingNotifications validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMProactiveHarvestingNotificationStack validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMProactiveHarvestingParsecSearch validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = +[BMProactiveHarvestingReminders validKeyPaths];
  [v2 addObjectsFromArray:v9];

  v10 = +[BMProactiveHarvestingThirdPartyApp validKeyPaths];
  [v2 addObjectsFromArray:v10];

  v11 = [v2 copy];

  return v11;
}

+ (id)configurationForThirdPartyApp
{
  v3 = [a1 storeConfigurationForThirdPartyApp];
  v4 = [a1 syncPolicyForThirdPartyApp];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"948A6E0C-F78A-40DC-A755-487D0E2B069E"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ProactiveHarvesting.ThirdPartyApp" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EB178 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForThirdPartyApp
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x40000000 maxStreamSize:100000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ProactiveHarvesting.ThirdPartyApp" domain:0 segmentSize:0x1000000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForReminders
{
  v3 = [a1 storeConfigurationForReminders];
  v4 = [a1 syncPolicyForReminders];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C6181708-A1BE-4857-AA65-3CBCB3CF3302"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ProactiveHarvesting.Reminders" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EB160 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForReminders
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x40000000 maxStreamSize:100000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ProactiveHarvesting.Reminders" domain:0 segmentSize:0x1000000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForParsecSearch
{
  v3 = [a1 storeConfigurationForParsecSearch];
  v4 = [a1 syncPolicyForParsecSearch];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"708EC8A6-814B-44EB-A621-51E95D10A439"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ProactiveHarvesting.ParsecSearch" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EB148 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForParsecSearch
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x40000000 maxStreamSize:20000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ProactiveHarvesting.ParsecSearch" domain:0 segmentSize:0x1000000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForNotificationStacks
{
  v3 = [a1 storeConfigurationForNotificationStacks];
  v4 = [a1 syncPolicyForNotificationStacks];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0C5B5D72-3BAC-40C3-9BEA-48691108C52A"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ProactiveHarvesting.NotificationStacks" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForNotificationStacks
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:20000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ProactiveHarvesting.NotificationStacks" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForNotifications
{
  v3 = [a1 storeConfigurationForNotifications];
  v4 = [a1 syncPolicyForNotifications];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B805350C-6937-49F5-AF22-427E969DD86B"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ProactiveHarvesting.Notifications" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForNotifications
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:20000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ProactiveHarvesting.Notifications" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForNotes
{
  v3 = [a1 storeConfigurationForNotes];
  v4 = [a1 syncPolicyForNotes];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DCB33C5D-DA04-410B-8AB9-4A2297870199"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ProactiveHarvesting.Notes" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EB130 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForNotes
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x40000000 maxStreamSize:20000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ProactiveHarvesting.Notes" domain:0 segmentSize:0x1000000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForMessages
{
  v3 = [a1 storeConfigurationForMessages];
  v4 = [a1 syncPolicyForMessages];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A0DADC40-2F64-4F05-8E50-5D1C6FD7E5AA"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ProactiveHarvesting.Messages" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EB118 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMessages
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x40000000 maxStreamSize:20000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ProactiveHarvesting.Messages" domain:0 segmentSize:0x1000000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForMail
{
  v3 = [a1 storeConfigurationForMail];
  v4 = [a1 syncPolicyForMail];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"87257C5B-4D69-4EE8-AD36-71FF5DBE3BD8"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ProactiveHarvesting.Mail" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EB100 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMail
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x40000000 maxStreamSize:100000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ProactiveHarvesting.Mail" domain:0 segmentSize:0x1000000 protectionClass:2 pruningPolicy:v2];

  return v3;
}

+ (id)ThirdPartyApp
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForThirdPartyApp];
  v3 = +[BMProactiveHarvestingThirdPartyApp columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ProactiveHarvesting.ThirdPartyApp" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ProactiveHarvesting.ThirdPartyApp" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Reminders
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForReminders];
  v3 = +[BMProactiveHarvestingReminders columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ProactiveHarvesting.Reminders" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ProactiveHarvesting.Reminders" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)ParsecSearch
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForParsecSearch];
  v3 = +[BMProactiveHarvestingParsecSearch columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ProactiveHarvesting.ParsecSearch" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ProactiveHarvesting.ParsecSearch" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)NotificationStacks
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForNotificationStacks];
  v3 = +[BMProactiveHarvestingNotificationStack columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ProactiveHarvesting.NotificationStacks" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ProactiveHarvesting.NotificationStacks" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Notifications
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForNotifications];
  v3 = +[BMProactiveHarvestingNotifications columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ProactiveHarvesting.Notifications" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ProactiveHarvesting.Notifications" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Notes
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForNotes];
  v3 = +[BMProactiveHarvestingNotes columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ProactiveHarvesting.Notes" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ProactiveHarvesting.Notes" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Messages
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForMessages];
  v3 = +[BMProactiveHarvestingMessages columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ProactiveHarvesting.Messages" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ProactiveHarvesting.Messages" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Mail
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForMail];
  v3 = +[BMProactiveHarvestingMail columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ProactiveHarvesting.Mail" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ProactiveHarvesting.Mail" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end