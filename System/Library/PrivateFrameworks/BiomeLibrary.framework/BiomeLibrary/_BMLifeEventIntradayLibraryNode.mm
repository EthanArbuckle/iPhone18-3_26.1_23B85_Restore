@interface _BMLifeEventIntradayLibraryNode
+ (id)Activity;
+ (id)Delete;
+ (id)Update;
+ (id)configurationForActivity;
+ (id)configurationForDelete;
+ (id)configurationForUpdate;
+ (id)storeConfigurationForActivity;
+ (id)storeConfigurationForDelete;
+ (id)storeConfigurationForUpdate;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMLifeEventIntradayLibraryNode

+ (id)Activity
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForActivity = [self configurationForActivity];
  v3 = +[BMLifeEventIntradayActivity columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"LifeEvent.Intraday.Activity" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"LifeEvent.Intraday.Activity" schema:v9 configuration:configurationForActivity];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForActivity
{
  storeConfigurationForActivity = [self storeConfigurationForActivity];
  syncPolicyForActivity = [self syncPolicyForActivity];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"23927150-DD34-49FF-B2BE-2227E2B1D343"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"LifeEvent.Intraday.Activity" eventClass:objc_opt_class() storeConfig:storeConfigurationForActivity syncPolicy:syncPolicyForActivity legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForActivity
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"LifeEvent.Intraday.Activity" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForDelete
{
  storeConfigurationForDelete = [self storeConfigurationForDelete];
  syncPolicyForDelete = [self syncPolicyForDelete];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5B7E8BEA-D8BD-4C3B-8FEF-4D3E80AB8E61"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"LifeEvent.Intraday.Delete" eventClass:objc_opt_class() storeConfig:storeConfigurationForDelete syncPolicy:syncPolicyForDelete legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForDelete
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"LifeEvent.Intraday.Delete" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForUpdate
{
  storeConfigurationForUpdate = [self storeConfigurationForUpdate];
  syncPolicyForUpdate = [self syncPolicyForUpdate];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"AD76ADB9-A872-43D7-B670-40D9B0522148"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"LifeEvent.Intraday.Update" eventClass:objc_opt_class() storeConfig:storeConfigurationForUpdate syncPolicy:syncPolicyForUpdate legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForUpdate
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"LifeEvent.Intraday.Update" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Delete
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForDelete = [self configurationForDelete];
  v3 = +[BMLifeEventIntradayDelete columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"LifeEvent.Intraday.Delete" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"LifeEvent.Intraday.Delete" schema:v9 configuration:configurationForDelete];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Update
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForUpdate = [self configurationForUpdate];
  v3 = +[BMLifeEventIntradayUpdate columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"LifeEvent.Intraday.Update" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"LifeEvent.Intraday.Update" schema:v9 configuration:configurationForUpdate];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Activity"])
  {
    activity = [self Activity];
LABEL_7:
    v6 = activity;
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"Delete"])
  {
    activity = [self Delete];
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"Update"])
  {
    activity = [self Update];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMLifeEventIntradayActivity validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMLifeEventIntradayDelete validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMLifeEventIntradayUpdate validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

@end