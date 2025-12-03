@interface _BMHomeKitClientLibraryNode
+ (id)AccessoryControl;
+ (id)ActionSet;
+ (id)MediaAccessoryControl;
+ (id)configurationForAccessoryControl;
+ (id)configurationForActionSet;
+ (id)configurationForMediaAccessoryControl;
+ (id)storeConfigurationForAccessoryControl;
+ (id)storeConfigurationForActionSet;
+ (id)storeConfigurationForMediaAccessoryControl;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMHomeKitClientLibraryNode

+ (id)ActionSet
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForActionSet = [self configurationForActionSet];
  v3 = +[BMHomeKitClientActionSet columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"HomeKit.Client.ActionSet" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"HomeKit.Client.ActionSet" schema:v9 configuration:configurationForActionSet];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)storeConfigurationForActionSet
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"HomeKit.Client.ActionSet" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForMediaAccessoryControl
{
  storeConfigurationForMediaAccessoryControl = [self storeConfigurationForMediaAccessoryControl];
  syncPolicyForMediaAccessoryControl = [self syncPolicyForMediaAccessoryControl];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"3F6BD669-59BB-4F24-AD3C-943A7225EB9B"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"HomeKit.Client.MediaAccessoryControl" eventClass:objc_opt_class() storeConfig:storeConfigurationForMediaAccessoryControl syncPolicy:syncPolicyForMediaAccessoryControl legacyNames:&unk_1EF3EBEB0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Home" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMediaAccessoryControl
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"HomeKit.Client.MediaAccessoryControl" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)AccessoryControl
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAccessoryControl = [self configurationForAccessoryControl];
  v3 = +[BMHomeKitClientAccessoryControl columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"HomeKit.Client.AccessoryControl" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"HomeKit.Client.AccessoryControl" schema:v9 configuration:configurationForAccessoryControl];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAccessoryControl
{
  storeConfigurationForAccessoryControl = [self storeConfigurationForAccessoryControl];
  syncPolicyForAccessoryControl = [self syncPolicyForAccessoryControl];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A51A9719-8FB9-4A6E-B2F2-1FB82C094042"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"HomeKit.Client.AccessoryControl" eventClass:objc_opt_class() storeConfig:storeConfigurationForAccessoryControl syncPolicy:syncPolicyForAccessoryControl legacyNames:&unk_1EF3EBE80 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Home" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAccessoryControl
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:25000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"HomeKit.Client.AccessoryControl" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForActionSet
{
  storeConfigurationForActionSet = [self storeConfigurationForActionSet];
  syncPolicyForActionSet = [self syncPolicyForActionSet];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B92625D2-A9B8-4645-941E-E65E433D27CF"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"HomeKit.Client.ActionSet" eventClass:objc_opt_class() storeConfig:storeConfigurationForActionSet syncPolicy:syncPolicyForActionSet legacyNames:&unk_1EF3EBE98 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.Home" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)MediaAccessoryControl
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForMediaAccessoryControl = [self configurationForMediaAccessoryControl];
  v3 = +[BMHomeKitClientMediaAccessoryControl columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"HomeKit.Client.MediaAccessoryControl" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"HomeKit.Client.MediaAccessoryControl" schema:v9 configuration:configurationForMediaAccessoryControl];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"AccessoryControl"])
  {
    accessoryControl = [self AccessoryControl];
LABEL_7:
    v6 = accessoryControl;
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"ActionSet"])
  {
    accessoryControl = [self ActionSet];
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"MediaAccessoryControl"])
  {
    accessoryControl = [self MediaAccessoryControl];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMHomeKitClientAccessoryControl validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMHomeKitClientActionSet validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMHomeKitClientMediaAccessoryControl validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

@end