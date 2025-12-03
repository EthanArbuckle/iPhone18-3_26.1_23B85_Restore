@interface _BMDeviceDisplayLibraryNode
+ (id)AlwaysOn;
+ (id)Appearance;
+ (id)Backlight;
+ (id)InterfaceOrientation;
+ (id)NightShift;
+ (id)TrueTone;
+ (id)configurationForAlwaysOn;
+ (id)configurationForAppearance;
+ (id)configurationForBacklight;
+ (id)configurationForInterfaceOrientation;
+ (id)configurationForNightShift;
+ (id)configurationForTrueTone;
+ (id)storeConfigurationForAlwaysOn;
+ (id)storeConfigurationForAppearance;
+ (id)storeConfigurationForBacklight;
+ (id)storeConfigurationForInterfaceOrientation;
+ (id)storeConfigurationForNightShift;
+ (id)storeConfigurationForTrueTone;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMDeviceDisplayLibraryNode

+ (id)configurationForAlwaysOn
{
  storeConfigurationForAlwaysOn = [self storeConfigurationForAlwaysOn];
  syncPolicyForAlwaysOn = [self syncPolicyForAlwaysOn];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C7523BDE-CAB5-41F5-9935-B40C41122E6F"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Display.AlwaysOn" eventClass:objc_opt_class() storeConfig:storeConfigurationForAlwaysOn syncPolicy:syncPolicyForAlwaysOn legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAlwaysOn
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Display.AlwaysOn" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)AlwaysOn
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAlwaysOn = [self configurationForAlwaysOn];
  v3 = +[BMDisplayAlwaysOn columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Display.AlwaysOn" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Display.AlwaysOn" schema:v9 configuration:configurationForAlwaysOn];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Appearance
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAppearance = [self configurationForAppearance];
  v3 = +[BMDisplayAppearance columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Display.Appearance" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Display.Appearance" schema:v9 configuration:configurationForAppearance];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAppearance
{
  storeConfigurationForAppearance = [self storeConfigurationForAppearance];
  syncPolicyForAppearance = [self syncPolicyForAppearance];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"95D1339B-20C4-4713-BADE-0A2651DB871E"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Display.Appearance" eventClass:objc_opt_class() storeConfig:storeConfigurationForAppearance syncPolicy:syncPolicyForAppearance legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAppearance
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Display.Appearance" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForBacklight
{
  storeConfigurationForBacklight = [self storeConfigurationForBacklight];
  syncPolicyForBacklight = [self syncPolicyForBacklight];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"EED8D2CA-FB7C-41EF-B8D6-E1A33AFB2ABF"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Display.Backlight" eventClass:objc_opt_class() storeConfig:storeConfigurationForBacklight syncPolicy:syncPolicyForBacklight legacyNames:&unk_1EF3EA290 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForBacklight
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:100000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Display.Backlight" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Backlight
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForBacklight = [self configurationForBacklight];
  v3 = +[BMDeviceBacklight columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Display.Backlight" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Display.Backlight" schema:v9 configuration:configurationForBacklight];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)storeConfigurationForInterfaceOrientation
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Display.InterfaceOrientation" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)NightShift
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForNightShift = [self configurationForNightShift];
  v3 = +[BMDeviceNightShift columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Display.NightShift" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Display.NightShift" schema:v9 configuration:configurationForNightShift];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForNightShift
{
  storeConfigurationForNightShift = [self storeConfigurationForNightShift];
  syncPolicyForNightShift = [self syncPolicyForNightShift];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"026C65AE-35A8-4F92-8ED5-F8D782603FCA"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Display.NightShift" eventClass:objc_opt_class() storeConfig:storeConfigurationForNightShift syncPolicy:syncPolicyForNightShift legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForNightShift
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Display.NightShift" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForTrueTone
{
  storeConfigurationForTrueTone = [self storeConfigurationForTrueTone];
  syncPolicyForTrueTone = [self syncPolicyForTrueTone];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4DF4A2E0-BF8D-45B7-927A-9B19651D32AB"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Display.TrueTone" eventClass:objc_opt_class() storeConfig:storeConfigurationForTrueTone syncPolicy:syncPolicyForTrueTone legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTrueTone
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Display.TrueTone" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)TrueTone
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTrueTone = [self configurationForTrueTone];
  v3 = +[BMDeviceTrueTone columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Display.TrueTone" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Display.TrueTone" schema:v9 configuration:configurationForTrueTone];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)InterfaceOrientation
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForInterfaceOrientation = [self configurationForInterfaceOrientation];
  v3 = +[BMDeviceInterfaceOrientation columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Display.InterfaceOrientation" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Display.InterfaceOrientation" schema:v9 configuration:configurationForInterfaceOrientation];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForInterfaceOrientation
{
  storeConfigurationForInterfaceOrientation = [self storeConfigurationForInterfaceOrientation];
  syncPolicyForInterfaceOrientation = [self syncPolicyForInterfaceOrientation];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4613B122-5DD5-4923-A89B-3DA007BAF9EE"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Display.InterfaceOrientation" eventClass:objc_opt_class() storeConfig:storeConfigurationForInterfaceOrientation syncPolicy:syncPolicyForInterfaceOrientation legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"AlwaysOn"])
  {
    alwaysOn = [self AlwaysOn];
LABEL_13:
    v6 = alwaysOn;
    goto LABEL_14;
  }

  if ([nameCopy isEqualToString:@"Appearance"])
  {
    alwaysOn = [self Appearance];
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"Backlight"])
  {
    alwaysOn = [self Backlight];
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"InterfaceOrientation"])
  {
    alwaysOn = [self InterfaceOrientation];
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"NightShift"])
  {
    alwaysOn = [self NightShift];
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"TrueTone"])
  {
    alwaysOn = [self TrueTone];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMDisplayAlwaysOn validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMDisplayAppearance validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMDeviceBacklight validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMDeviceInterfaceOrientation validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMDeviceNightShift validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMDeviceTrueTone validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = [v2 copy];

  return v9;
}

@end