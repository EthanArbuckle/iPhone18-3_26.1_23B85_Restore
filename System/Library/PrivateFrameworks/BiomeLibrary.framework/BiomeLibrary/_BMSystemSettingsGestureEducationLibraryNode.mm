@interface _BMSystemSettingsGestureEducationLibraryNode
+ (id)Multitasking;
+ (id)PillOutcome;
+ (id)configurationForMultitasking;
+ (id)configurationForPillOutcome;
+ (id)storeConfigurationForMultitasking;
+ (id)storeConfigurationForPillOutcome;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMSystemSettingsGestureEducationLibraryNode

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"Multitasking"])
  {
    v5 = [a1 Multitasking];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"PillOutcome"])
  {
    v5 = [a1 PillOutcome];
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
  v3 = [a1 storeConfigurationForPillOutcome];
  v4 = [a1 syncPolicyForPillOutcome];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"359EE8C7-72A9-4FBA-B2E7-51AC9111861B"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SystemSettings.GestureEducation.PillOutcome" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v3 = [a1 storeConfigurationForMultitasking];
  v4 = [a1 syncPolicyForMultitasking];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5F28104B-D659-40FD-A419-C8917E89AAEB"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SystemSettings.GestureEducation.Multitasking" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForPillOutcome];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SystemSettings.GestureEducation.PillOutcome" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Multitasking
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForMultitasking];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SystemSettings.GestureEducation.Multitasking" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end