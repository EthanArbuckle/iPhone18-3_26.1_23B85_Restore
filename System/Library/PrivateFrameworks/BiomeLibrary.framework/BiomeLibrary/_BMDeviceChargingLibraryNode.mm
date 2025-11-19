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
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMDeviceChargingLibraryNode

+ (id)configurationForAccessoryChargingSession
{
  v3 = [a1 storeConfigurationForAccessoryChargingSession];
  v4 = [a1 syncPolicyForAccessoryChargingSession];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"8F50E0E2-9097-45C5-98C1-457BC6E04E94"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Charging.AccessoryChargingSession" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)BatteryGauging
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForBatteryGauging];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Charging.BatteryGauging" schema:v9 configuration:v2];

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
  v2 = [a1 configurationForSmartCharging];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Charging.SmartCharging" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForSmartCharging
{
  v3 = [a1 storeConfigurationForSmartCharging];
  v4 = [a1 syncPolicyForSmartCharging];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C6411451-3DA6-4B4F-988E-B26198A2686A"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Charging.SmartCharging" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v3 = [a1 storeConfigurationForBatteryGauging];
  v4 = [a1 syncPolicyForBatteryGauging];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B512E57E-8794-45A9-A70B-BE54A7933BDB"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Charging.BatteryGauging" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)AccessoryChargingSession
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForAccessoryChargingSession];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Charging.AccessoryChargingSession" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"AccessoryChargingSession"])
  {
    v5 = [a1 AccessoryChargingSession];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"BatteryGauging"])
  {
    v5 = [a1 BatteryGauging];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"SmartCharging"])
  {
    v5 = [a1 SmartCharging];
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