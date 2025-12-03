@interface _BMClockLibraryNode
+ (id)Alarm;
+ (id)configurationForAlarm;
+ (id)storeConfigurationForAlarm;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMClockLibraryNode

+ (id)Alarm
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAlarm = [self configurationForAlarm];
  v3 = +[BMClockAlarm columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Clock.Alarm" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Clock.Alarm" schema:v9 configuration:configurationForAlarm];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAlarm
{
  storeConfigurationForAlarm = [self storeConfigurationForAlarm];
  syncPolicyForAlarm = [self syncPolicyForAlarm];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D1DE8907-5CEC-4728-B9DF-647F0C7F97D4"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Clock.Alarm" eventClass:objc_opt_class() storeConfig:storeConfigurationForAlarm syncPolicy:syncPolicyForAlarm legacyNames:&unk_1EF3E83D0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobiletimer" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAlarm
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Clock.Alarm" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Alarm"])
  {
    alarm = [self Alarm];
  }

  else
  {
    alarm = 0;
  }

  return alarm;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMClockAlarm validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end