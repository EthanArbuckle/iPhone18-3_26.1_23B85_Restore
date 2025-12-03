@interface _BMDeviceChargingLibraryNode
+ (id)AccessoryChargingSession;
+ (id)BatteryGauging;
+ (id)SmartCharging;
+ (id)configurationForAccessoryChargingSession;
+ (id)configurationForBatteryGauging;
+ (id)configurationForSmartCharging;
+ (id)storeConfigurationForAccessoryChargingSession;
+ (id)storeConfigurationForBatteryGauging;
+ (id)storeConfigurationForSmartCharging;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMDeviceChargingLibraryNode

+ (id)configurationForAccessoryChargingSession
{
  storeConfigurationForAccessoryChargingSession = [self storeConfigurationForAccessoryChargingSession];
  syncPolicyForAccessoryChargingSession = [self syncPolicyForAccessoryChargingSession];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"8F50E0E2-9097-45C5-98C1-457BC6E04E94"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Charging.AccessoryChargingSession" eventClass:objc_opt_class() storeConfig:storeConfigurationForAccessoryChargingSession syncPolicy:syncPolicyForAccessoryChargingSession legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)BatteryGauging
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForBatteryGauging = [self configurationForBatteryGauging];
  v3 = +[BMDeviceBatteryGauging columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Charging.BatteryGauging" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Charging.BatteryGauging" schema:v9 configuration:configurationForBatteryGauging];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)storeConfigurationForBatteryGauging
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Charging.BatteryGauging" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)SmartCharging
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSmartCharging = [self configurationForSmartCharging];
  v3 = +[BMDeviceSmartCharging columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Charging.SmartCharging" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Charging.SmartCharging" schema:v9 configuration:configurationForSmartCharging];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForSmartCharging
{
  storeConfigurationForSmartCharging = [self storeConfigurationForSmartCharging];
  syncPolicyForSmartCharging = [self syncPolicyForSmartCharging];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C6411451-3DA6-4B4F-988E-B26198A2686A"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Charging.SmartCharging" eventClass:objc_opt_class() storeConfig:storeConfigurationForSmartCharging syncPolicy:syncPolicyForSmartCharging legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSmartCharging
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Charging.SmartCharging" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)storeConfigurationForAccessoryChargingSession
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Charging.AccessoryChargingSession" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForBatteryGauging
{
  storeConfigurationForBatteryGauging = [self storeConfigurationForBatteryGauging];
  syncPolicyForBatteryGauging = [self syncPolicyForBatteryGauging];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B512E57E-8794-45A9-A70B-BE54A7933BDB"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Charging.BatteryGauging" eventClass:objc_opt_class() storeConfig:storeConfigurationForBatteryGauging syncPolicy:syncPolicyForBatteryGauging legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)AccessoryChargingSession
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAccessoryChargingSession = [self configurationForAccessoryChargingSession];
  v3 = +[BMDeviceAccessoryChargingSession columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Charging.AccessoryChargingSession" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Charging.AccessoryChargingSession" schema:v9 configuration:configurationForAccessoryChargingSession];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"AccessoryChargingSession"])
  {
    accessoryChargingSession = [self AccessoryChargingSession];
LABEL_7:
    v6 = accessoryChargingSession;
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"BatteryGauging"])
  {
    accessoryChargingSession = [self BatteryGauging];
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"SmartCharging"])
  {
    accessoryChargingSession = [self SmartCharging];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMDeviceAccessoryChargingSession validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMDeviceBatteryGauging validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMDeviceSmartCharging validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

@end