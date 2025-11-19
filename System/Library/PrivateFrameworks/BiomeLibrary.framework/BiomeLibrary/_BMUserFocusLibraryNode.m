@interface _BMUserFocusLibraryNode
+ (id)Activity;
+ (id)ComputedMode;
+ (id)DoNotDisturbWhileDriving;
+ (id)InferredMode;
+ (id)SleepMode;
+ (id)StatusChange;
+ (id)configurationForActivity;
+ (id)configurationForComputedMode;
+ (id)configurationForDoNotDisturbWhileDriving;
+ (id)configurationForInferredMode;
+ (id)configurationForSleepMode;
+ (id)configurationForStatusChange;
+ (id)storeConfigurationForActivity;
+ (id)storeConfigurationForComputedMode;
+ (id)storeConfigurationForDoNotDisturbWhileDriving;
+ (id)storeConfigurationForInferredMode;
+ (id)storeConfigurationForSleepMode;
+ (id)storeConfigurationForStatusChange;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMUserFocusLibraryNode

+ (id)storeConfigurationForComputedMode
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"UserFocus.ComputedMode" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)ComputedMode
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForComputedMode];
  v3 = +[BMUserFocusModeComputed columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"UserFocus.ComputedMode" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"UserFocus.ComputedMode" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForComputedMode
{
  v3 = [a1 storeConfigurationForComputedMode];
  v4 = [a1 syncPolicyForComputedMode];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BA2108BB-663B-4278-9E99-ACB23A63F726"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"UserFocus.ComputedMode" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EBC70 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"Activity"])
  {
    v5 = [a1 Activity];
LABEL_13:
    v6 = v5;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"ComputedMode"])
  {
    v5 = [a1 ComputedMode];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"DoNotDisturbWhileDriving"])
  {
    v5 = [a1 DoNotDisturbWhileDriving];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"InferredMode"])
  {
    v5 = [a1 InferredMode];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"SleepMode"])
  {
    v5 = [a1 SleepMode];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"StatusChange"])
  {
    v5 = [a1 StatusChange];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMUserFocusActivity validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMUserFocusModeComputed validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMUserFocusDoNotDisturbWhileDriving validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMUserFocusInferredMode validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMUserFocusSleepMode validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMUserFocusStatusChange validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = [v2 copy];

  return v9;
}

+ (id)configurationForStatusChange
{
  v3 = [a1 storeConfigurationForStatusChange];
  v4 = [a1 syncPolicyForStatusChange];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"940F0F5E-33BD-47C1-9C07-2F65F77700D2"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"UserFocus.StatusChange" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EBCD0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForStatusChange
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"UserFocus.StatusChange" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForSleepMode
{
  v3 = [a1 storeConfigurationForSleepMode];
  v4 = [a1 syncPolicyForSleepMode];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"45187294-E7A3-41A6-BC86-20F30921E2F1"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"UserFocus.SleepMode" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EBCB8 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSleepMode
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"UserFocus.SleepMode" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForInferredMode
{
  v3 = [a1 storeConfigurationForInferredMode];
  v4 = [a1 syncPolicyForInferredMode];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"748D6F6E-D6C9-4DE7-AF80-202914CCD86E"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"UserFocus.InferredMode" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EBCA0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForInferredMode
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"UserFocus.InferredMode" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForDoNotDisturbWhileDriving
{
  v3 = [a1 storeConfigurationForDoNotDisturbWhileDriving];
  v4 = [a1 syncPolicyForDoNotDisturbWhileDriving];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"7FF44AAD-D59F-4EEC-B610-FB71D22AD3CE"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"UserFocus.DoNotDisturbWhileDriving" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EBC88 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForDoNotDisturbWhileDriving
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"UserFocus.DoNotDisturbWhileDriving" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForActivity
{
  v3 = [a1 storeConfigurationForActivity];
  v4 = [a1 syncPolicyForActivity];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"EA3370C8-9BA7-43CF-B930-98C90B1596A4"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"UserFocus.Activity" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EBC58 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForActivity
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"UserFocus.Activity" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)StatusChange
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForStatusChange];
  v3 = +[BMUserFocusStatusChange columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"UserFocus.StatusChange" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"UserFocus.StatusChange" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)SleepMode
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForSleepMode];
  v3 = +[BMUserFocusSleepMode columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"UserFocus.SleepMode" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"UserFocus.SleepMode" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)InferredMode
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForInferredMode];
  v3 = +[BMUserFocusInferredMode columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"UserFocus.InferredMode" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"UserFocus.InferredMode" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)DoNotDisturbWhileDriving
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForDoNotDisturbWhileDriving];
  v3 = +[BMUserFocusDoNotDisturbWhileDriving columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"UserFocus.DoNotDisturbWhileDriving" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"UserFocus.DoNotDisturbWhileDriving" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Activity
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForActivity];
  v3 = +[BMUserFocusActivity columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"UserFocus.Activity" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"UserFocus.Activity" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end