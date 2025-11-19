@interface _BMMomentsEventsLibraryNode
+ (id)Engagement;
+ (id)EngagementLight;
+ (id)Notifications;
+ (id)configurationForEngagement;
+ (id)configurationForEngagementLight;
+ (id)configurationForNotifications;
+ (id)storeConfigurationForEngagement;
+ (id)storeConfigurationForEngagementLight;
+ (id)storeConfigurationForNotifications;
+ (id)streamWithName:(id)a3;
+ (id)syncPolicyForEngagement;
+ (id)syncPolicyForNotifications;
+ (id)validKeyPaths;
@end

@implementation _BMMomentsEventsLibraryNode

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"Engagement"])
  {
    v5 = [a1 Engagement];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"EngagementLight"])
  {
    v5 = [a1 EngagementLight];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"Notifications"])
  {
    v5 = [a1 Notifications];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMomentsEngagement validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMMomentsEngagementLight validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMMomentsNotifications validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

+ (id)configurationForNotifications
{
  v3 = [a1 storeConfigurationForNotifications];
  v4 = [a1 syncPolicyForNotifications];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"7AA39C8F-2B9F-417D-83AE-849D68345CB8"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Moments.Events.Notifications" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)syncPolicyForNotifications
{
  v21[1] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v21[0] = v16;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v3 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:2];
  v20 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v5 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:2];
  v19 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v7 = BMDevicePlatformAsKeyString();
  v17[0] = v7;
  v18[0] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v17[1] = v8;
  v18[1] = v4;
  v9 = BMDevicePlatformAsKeyString();
  v17[2] = v9;
  v18[2] = v6;
  v10 = BMDevicePlatformAsKeyString();
  v17[3] = v10;
  v18[3] = v6;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"7AA39C8F-2B9F-417D-83AE-849D68345CB8"];
  v13 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v11 syncUUID:v12 legacySyncID:0 eventClass:objc_opt_class()];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)storeConfigurationForNotifications
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:10000 maxEventCount:604800.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Moments.Events.Notifications" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForEngagementLight
{
  v3 = [a1 storeConfigurationForEngagementLight];
  v4 = [a1 syncPolicyForEngagementLight];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1F153660-9EFE-4858-950F-57A83D74185E"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Moments.Events.EngagementLight" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForEngagementLight
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Moments.Events.EngagementLight" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)configurationForEngagement
{
  v3 = [a1 storeConfigurationForEngagement];
  v4 = [a1 syncPolicyForEngagement];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4C66F537-A426-4AC0-B65C-6F2CF2D92E8D"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Moments.Events.Engagement" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)syncPolicyForEngagement
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:3 direction:3];
  v3 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v14[0] = v2;
  v14[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v5 = BMDevicePlatformAsKeyString();
  v12[0] = v5;
  v13[0] = v4;
  v6 = BMDevicePlatformAsKeyString();
  v12[1] = v6;
  v13[1] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4C66F537-A426-4AC0-B65C-6F2CF2D92E8D"];
  v9 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v7 syncUUID:v8 legacySyncID:0 eventClass:objc_opt_class()];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)storeConfigurationForEngagement
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Moments.Events.Engagement" domain:0 segmentSize:0x20000 protectionClass:2 pruningPolicy:v2];

  return v3;
}

+ (id)Notifications
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForNotifications];
  v3 = +[BMMomentsNotifications columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Moments.Events.Notifications" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Moments.Events.Notifications" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)EngagementLight
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForEngagementLight];
  v3 = +[BMMomentsEngagementLight columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Moments.Events.EngagementLight" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Moments.Events.EngagementLight" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Engagement
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForEngagement];
  v3 = +[BMMomentsEngagement columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Moments.Events.Engagement" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Moments.Events.Engagement" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end