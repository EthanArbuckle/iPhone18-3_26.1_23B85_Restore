@interface _BMSystemSettingsGestureEducationLibraryNode
+ (id)Multitasking;
+ (id)PillOutcome;
+ (id)configurationForMultitasking;
+ (id)configurationForPillOutcome;
+ (id)storeConfigurationForMultitasking;
+ (id)storeConfigurationForPillOutcome;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMSystemSettingsGestureEducationLibraryNode

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Multitasking"])
  {
    multitasking = [self Multitasking];
LABEL_5:
    v6 = multitasking;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"PillOutcome"])
  {
    multitasking = [self PillOutcome];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSystemSettingsMultitasking validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMSystemSettingsPillOutcome validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (id)configurationForPillOutcome
{
  storeConfigurationForPillOutcome = [self storeConfigurationForPillOutcome];
  syncPolicyForPillOutcome = [self syncPolicyForPillOutcome];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"359EE8C7-72A9-4FBA-B2E7-51AC9111861B"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SystemSettings.GestureEducation.PillOutcome" eventClass:objc_opt_class() storeConfig:storeConfigurationForPillOutcome syncPolicy:syncPolicyForPillOutcome legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPillOutcome
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"SystemSettings.GestureEducation.PillOutcome" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForMultitasking
{
  storeConfigurationForMultitasking = [self storeConfigurationForMultitasking];
  syncPolicyForMultitasking = [self syncPolicyForMultitasking];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5F28104B-D659-40FD-A419-C8917E89AAEB"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SystemSettings.GestureEducation.Multitasking" eventClass:objc_opt_class() storeConfig:storeConfigurationForMultitasking syncPolicy:syncPolicyForMultitasking legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMultitasking
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"SystemSettings.GestureEducation.Multitasking" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)PillOutcome
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPillOutcome = [self configurationForPillOutcome];
  v3 = +[BMSystemSettingsPillOutcome columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"SystemSettings.GestureEducation.PillOutcome" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SystemSettings.GestureEducation.PillOutcome" schema:v9 configuration:configurationForPillOutcome];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Multitasking
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForMultitasking = [self configurationForMultitasking];
  v3 = +[BMSystemSettingsMultitasking columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"SystemSettings.GestureEducation.Multitasking" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SystemSettings.GestureEducation.Multitasking" schema:v9 configuration:configurationForMultitasking];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end