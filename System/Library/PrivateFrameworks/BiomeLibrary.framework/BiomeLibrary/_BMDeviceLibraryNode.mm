@interface _BMDeviceLibraryNode
+ (id)BootSession;
+ (id)KeybagLocked;
+ (id)Metadata;
+ (id)ScreenLocked;
+ (id)SilentMode;
+ (id)TimeZone;
+ (id)configurationForBootSession;
+ (id)configurationForKeybagLocked;
+ (id)configurationForMetadata;
+ (id)configurationForScreenLocked;
+ (id)configurationForSilentMode;
+ (id)configurationForTimeZone;
+ (id)storeConfigurationForBootSession;
+ (id)storeConfigurationForKeybagLocked;
+ (id)storeConfigurationForMetadata;
+ (id)storeConfigurationForScreenLocked;
+ (id)storeConfigurationForSilentMode;
+ (id)storeConfigurationForTimeZone;
+ (id)streamWithName:(id)name;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMDeviceLibraryNode

+ (id)ScreenLocked
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForScreenLocked = [self configurationForScreenLocked];
  v3 = +[BMDeviceScreenLocked columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.ScreenLocked" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.ScreenLocked" schema:v9 configuration:configurationForScreenLocked];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForScreenLocked
{
  storeConfigurationForScreenLocked = [self storeConfigurationForScreenLocked];
  syncPolicyForScreenLocked = [self syncPolicyForScreenLocked];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"FFC34BE2-247E-48A2-A938-9BEDED035AC0"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.ScreenLocked" eventClass:objc_opt_class() storeConfig:storeConfigurationForScreenLocked syncPolicy:syncPolicyForScreenLocked legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForScreenLocked
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:100000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.ScreenLocked" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)sublibraries
{
  v15[9] = *MEMORY[0x1E69E9840];
  activity = [self Activity];
  audio = [self Audio];
  v15[1] = audio;
  charging = [self Charging];
  v15[2] = charging;
  display = [self Display];
  v15[3] = display;
  externalDisplay = [self ExternalDisplay];
  v15[4] = externalDisplay;
  networking = [self Networking];
  v15[5] = networking;
  power = [self Power];
  v15[6] = power;
  thermals = [self Thermals];
  v15[7] = thermals;
  wireless = [self Wireless];
  v15[8] = wireless;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:9];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)TimeZone
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTimeZone = [self configurationForTimeZone];
  v3 = +[BMDeviceTimeZone columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.TimeZone" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.TimeZone" schema:v9 configuration:configurationForTimeZone];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForTimeZone
{
  storeConfigurationForTimeZone = [self storeConfigurationForTimeZone];
  syncPolicyForTimeZone = [self syncPolicyForTimeZone];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"005DDB73-4A3B-42B7-9248-B79DD750A796"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.TimeZone" eventClass:objc_opt_class() storeConfig:storeConfigurationForTimeZone syncPolicy:syncPolicyForTimeZone legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTimeZone
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:31536000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.TimeZone" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)BootSession
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForBootSession = [self configurationForBootSession];
  v3 = +[BMDeviceBootSession columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.BootSession" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.BootSession" schema:v9 configuration:configurationForBootSession];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForBootSession
{
  storeConfigurationForBootSession = [self storeConfigurationForBootSession];
  syncPolicyForBootSession = [self syncPolicyForBootSession];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E4B4BD0A-356B-4F9A-B205-FAE36BC5131A"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.BootSession" eventClass:objc_opt_class() storeConfig:storeConfigurationForBootSession syncPolicy:syncPolicyForBootSession legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)KeybagLocked
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForKeybagLocked = [self configurationForKeybagLocked];
  v3 = +[BMDeviceKeybagLocked columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.KeybagLocked" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.KeybagLocked" schema:v9 configuration:configurationForKeybagLocked];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForKeybagLocked
{
  storeConfigurationForKeybagLocked = [self storeConfigurationForKeybagLocked];
  syncPolicyForKeybagLocked = [self syncPolicyForKeybagLocked];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"ABD50648-7A45-4CBE-B030-1D6CEC26F9F9"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.KeybagLocked" eventClass:objc_opt_class() storeConfig:storeConfigurationForKeybagLocked syncPolicy:syncPolicyForKeybagLocked legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForKeybagLocked
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.KeybagLocked" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Metadata
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForMetadata = [self configurationForMetadata];
  v3 = +[BMDeviceMetadata columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Metadata" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Metadata" schema:v9 configuration:configurationForMetadata];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForMetadata
{
  storeConfigurationForMetadata = [self storeConfigurationForMetadata];
  syncPolicyForMetadata = [self syncPolicyForMetadata];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"64604D4C-2A61-4066-964C-DE45160E49E7"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Metadata" eventClass:objc_opt_class() storeConfig:storeConfigurationForMetadata syncPolicy:syncPolicyForMetadata legacyNames:&unk_1EF3E8658 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMetadata
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x20000 maxStreamSize:10000 maxEventCount:*MEMORY[0x1E698F100]];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Metadata" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)SilentMode
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSilentMode = [self configurationForSilentMode];
  v3 = +[BMDeviceSilentMode columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.SilentMode" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.SilentMode" schema:v9 configuration:configurationForSilentMode];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForSilentMode
{
  storeConfigurationForSilentMode = [self storeConfigurationForSilentMode];
  syncPolicyForSilentMode = [self syncPolicyForSilentMode];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"42F54E31-3FCF-4F6D-BC40-F903BFD3049F"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.SilentMode" eventClass:objc_opt_class() storeConfig:storeConfigurationForSilentMode syncPolicy:syncPolicyForSilentMode legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSilentMode
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.SilentMode" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)storeConfigurationForBootSession
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.BootSession" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"BootSession"])
  {
    bootSession = [self BootSession];
LABEL_13:
    v6 = bootSession;
    goto LABEL_14;
  }

  if ([nameCopy isEqualToString:@"KeybagLocked"])
  {
    bootSession = [self KeybagLocked];
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"Metadata"])
  {
    bootSession = [self Metadata];
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"ScreenLocked"])
  {
    bootSession = [self ScreenLocked];
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"SilentMode"])
  {
    bootSession = [self SilentMode];
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"TimeZone"])
  {
    bootSession = [self TimeZone];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMDeviceBootSession validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMDeviceKeybagLocked validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMDeviceMetadata validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMDeviceScreenLocked validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMDeviceSilentMode validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMDeviceTimeZone validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = [v2 copy];

  return v9;
}

@end