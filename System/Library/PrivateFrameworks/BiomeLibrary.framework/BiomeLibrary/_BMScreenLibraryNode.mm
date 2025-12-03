@interface _BMScreenLibraryNode
+ (id)Recording;
+ (id)Sharing;
+ (id)configurationForRecording;
+ (id)configurationForSharing;
+ (id)storeConfigurationForRecording;
+ (id)storeConfigurationForSharing;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMScreenLibraryNode

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Recording"])
  {
    recording = [self Recording];
LABEL_5:
    v6 = recording;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"Sharing"])
  {
    recording = [self Sharing];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMScreenRecording validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMScreenSharing validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (id)configurationForSharing
{
  storeConfigurationForSharing = [self storeConfigurationForSharing];
  syncPolicyForSharing = [self syncPolicyForSharing];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"37A3574E-F654-4D20-A83F-9184E6997188"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Screen.Sharing" eventClass:objc_opt_class() storeConfig:storeConfigurationForSharing syncPolicy:syncPolicyForSharing legacyNames:&unk_1EF3E8448 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSharing
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Screen.Sharing" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForRecording
{
  storeConfigurationForRecording = [self storeConfigurationForRecording];
  syncPolicyForRecording = [self syncPolicyForRecording];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"7AE58EC1-7524-459B-9D4F-5119EB12582E"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Screen.Recording" eventClass:objc_opt_class() storeConfig:storeConfigurationForRecording syncPolicy:syncPolicyForRecording legacyNames:&unk_1EF3E8430 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForRecording
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Screen.Recording" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Sharing
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSharing = [self configurationForSharing];
  v3 = +[BMScreenSharing columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Screen.Sharing" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Screen.Sharing" schema:v9 configuration:configurationForSharing];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Recording
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForRecording = [self configurationForRecording];
  v3 = +[BMScreenRecording columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Screen.Recording" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Screen.Recording" schema:v9 configuration:configurationForRecording];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end