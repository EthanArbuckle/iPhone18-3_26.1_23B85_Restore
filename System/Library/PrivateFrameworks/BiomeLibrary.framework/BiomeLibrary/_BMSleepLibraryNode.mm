@interface _BMSleepLibraryNode
+ (id)ScheduleState;
+ (id)Session;
+ (id)configurationForScheduleState;
+ (id)configurationForSession;
+ (id)storeConfigurationForScheduleState;
+ (id)storeConfigurationForSession;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMSleepLibraryNode

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"ScheduleState"])
  {
    scheduleState = [self ScheduleState];
LABEL_5:
    v6 = scheduleState;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"Session"])
  {
    scheduleState = [self Session];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSleepScheduleState validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMSleepSession validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (id)configurationForSession
{
  storeConfigurationForSession = [self storeConfigurationForSession];
  syncPolicyForSession = [self syncPolicyForSession];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4A3059F6-531F-41BE-A640-843E5DBB400B"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Sleep.Session" eventClass:objc_opt_class() storeConfig:storeConfigurationForSession syncPolicy:syncPolicyForSession legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.healthlited" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSession
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x100000 maxStreamSize:1000 maxEventCount:604800.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Sleep.Session" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForScheduleState
{
  storeConfigurationForScheduleState = [self storeConfigurationForScheduleState];
  syncPolicyForScheduleState = [self syncPolicyForScheduleState];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"38B60F4C-BF3C-419C-9917-4E906A95240F"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Sleep.ScheduleState" eventClass:objc_opt_class() storeConfig:storeConfigurationForScheduleState syncPolicy:syncPolicyForScheduleState legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForScheduleState
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Sleep.ScheduleState" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Session
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSession = [self configurationForSession];
  v3 = +[BMSleepSession columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Sleep.Session" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Sleep.Session" schema:v9 configuration:configurationForSession];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)ScheduleState
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForScheduleState = [self configurationForScheduleState];
  v3 = +[BMSleepScheduleState columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Sleep.ScheduleState" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Sleep.ScheduleState" schema:v9 configuration:configurationForScheduleState];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end