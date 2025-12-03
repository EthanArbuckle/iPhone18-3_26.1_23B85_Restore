@interface _BMDeviceWirelessLibraryNode
+ (id)APSDInterfaceStatus;
+ (id)AirplaneMode;
+ (id)Bluetooth;
+ (id)BluetoothGATTSession;
+ (id)BluetoothNearbyDevice;
+ (id)BluetoothPowerEnabled;
+ (id)BluetoothUseCase;
+ (id)CellularAvailabilityStatus;
+ (id)CellularDataEnabled;
+ (id)CellularQualityStatus;
+ (id)ConnectivityContext;
+ (id)DefaultPairedNearby;
+ (id)NFCTag;
+ (id)WakeOnWiFiStatus;
+ (id)WiFi;
+ (id)WiFiAvailabilityStatus;
+ (id)configurationForAPSDInterfaceStatus;
+ (id)configurationForAirplaneMode;
+ (id)configurationForBluetooth;
+ (id)configurationForBluetoothGATTSession;
+ (id)configurationForBluetoothNearbyDevice;
+ (id)configurationForBluetoothPowerEnabled;
+ (id)configurationForBluetoothUseCase;
+ (id)configurationForCellularAvailabilityStatus;
+ (id)configurationForCellularDataEnabled;
+ (id)configurationForCellularQualityStatus;
+ (id)configurationForConnectivityContext;
+ (id)configurationForDefaultPairedNearby;
+ (id)configurationForNFCTag;
+ (id)configurationForWakeOnWiFiStatus;
+ (id)configurationForWiFi;
+ (id)configurationForWiFiAvailabilityStatus;
+ (id)storeConfigurationForAPSDInterfaceStatus;
+ (id)storeConfigurationForAirplaneMode;
+ (id)storeConfigurationForBluetooth;
+ (id)storeConfigurationForBluetoothGATTSession;
+ (id)storeConfigurationForBluetoothNearbyDevice;
+ (id)storeConfigurationForBluetoothPowerEnabled;
+ (id)storeConfigurationForBluetoothUseCase;
+ (id)storeConfigurationForCellularAvailabilityStatus;
+ (id)storeConfigurationForCellularDataEnabled;
+ (id)storeConfigurationForCellularQualityStatus;
+ (id)storeConfigurationForConnectivityContext;
+ (id)storeConfigurationForDefaultPairedNearby;
+ (id)storeConfigurationForNFCTag;
+ (id)storeConfigurationForWakeOnWiFiStatus;
+ (id)storeConfigurationForWiFi;
+ (id)storeConfigurationForWiFiAvailabilityStatus;
+ (id)streamWithName:(id)name;
+ (id)syncPolicyForBluetooth;
+ (id)syncPolicyForCellularAvailabilityStatus;
+ (id)validKeyPaths;
@end

@implementation _BMDeviceWirelessLibraryNode

+ (id)WiFi
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForWiFi = [self configurationForWiFi];
  v3 = +[BMDeviceWiFi columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.WiFi" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.WiFi" schema:v9 configuration:configurationForWiFi];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForWiFi
{
  storeConfigurationForWiFi = [self storeConfigurationForWiFi];
  syncPolicyForWiFi = [self syncPolicyForWiFi];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DF033FBC-B5CF-4E16-86FA-C1B30FAB122E"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.WiFi" eventClass:objc_opt_class() storeConfig:storeConfigurationForWiFi syncPolicy:syncPolicyForWiFi legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForWiFi
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:30000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.WiFi" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)AirplaneMode
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAirplaneMode = [self configurationForAirplaneMode];
  v3 = +[BMDeviceAirplaneMode columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.AirplaneMode" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.AirplaneMode" schema:v9 configuration:configurationForAirplaneMode];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAirplaneMode
{
  storeConfigurationForAirplaneMode = [self storeConfigurationForAirplaneMode];
  syncPolicyForAirplaneMode = [self syncPolicyForAirplaneMode];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"40DB4DA1-A0B0-4198-BB81-8EF341CCAB8F"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.AirplaneMode" eventClass:objc_opt_class() storeConfig:storeConfigurationForAirplaneMode syncPolicy:syncPolicyForAirplaneMode legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAirplaneMode
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.AirplaneMode" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)APSDInterfaceStatus
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAPSDInterfaceStatus = [self configurationForAPSDInterfaceStatus];
  v3 = +[BMDeviceAPSDInterfaceStatus columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.APSDInterfaceStatus" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.APSDInterfaceStatus" schema:v9 configuration:configurationForAPSDInterfaceStatus];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAPSDInterfaceStatus
{
  storeConfigurationForAPSDInterfaceStatus = [self storeConfigurationForAPSDInterfaceStatus];
  syncPolicyForAPSDInterfaceStatus = [self syncPolicyForAPSDInterfaceStatus];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"044C3C96-6418-4E5E-8B4C-4B0994CFADA8"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.APSDInterfaceStatus" eventClass:objc_opt_class() storeConfig:storeConfigurationForAPSDInterfaceStatus syncPolicy:syncPolicyForAPSDInterfaceStatus legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAPSDInterfaceStatus
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:259200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.APSDInterfaceStatus" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Bluetooth
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForBluetooth = [self configurationForBluetooth];
  v3 = +[BMDeviceBluetooth columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.Bluetooth" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.Bluetooth" schema:v9 configuration:configurationForBluetooth];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForBluetooth
{
  storeConfigurationForBluetooth = [self storeConfigurationForBluetooth];
  syncPolicyForBluetooth = [self syncPolicyForBluetooth];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"7920E574-B675-4313-B1FB-4792805B3B25"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.Bluetooth" eventClass:objc_opt_class() storeConfig:storeConfigurationForBluetooth syncPolicy:syncPolicyForBluetooth legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForBluetooth
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.Bluetooth" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)syncPolicyForBluetooth
{
  v27[1] = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v27[0] = v21;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v20 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v26 = v20;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v19 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v25 = v19;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v4 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v24 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v22[0] = v6;
  v18 = v2;
  v23[0] = v2;
  v7 = BMDevicePlatformAsKeyString();
  v22[1] = v7;
  v23[1] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v22[2] = v8;
  v23[2] = v3;
  v9 = BMDevicePlatformAsKeyString();
  v22[3] = v9;
  v23[3] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v22[4] = v10;
  v23[4] = v17;
  v11 = BMDevicePlatformAsKeyString();
  v22[5] = v11;
  v23[5] = v5;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:6];

  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"7920E574-B675-4313-B1FB-4792805B3B25"];
  v14 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v12 syncUUID:v13 legacySyncID:0 eventClass:objc_opt_class()];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)BluetoothGATTSession
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForBluetoothGATTSession = [self configurationForBluetoothGATTSession];
  v3 = +[BMDeviceBluetoothGATTSession columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.BluetoothGATTSession" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.BluetoothGATTSession" schema:v9 configuration:configurationForBluetoothGATTSession];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForBluetoothGATTSession
{
  storeConfigurationForBluetoothGATTSession = [self storeConfigurationForBluetoothGATTSession];
  syncPolicyForBluetoothGATTSession = [self syncPolicyForBluetoothGATTSession];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"02882AFB-F125-4DAE-8ED2-9AE1B2743D7D"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.BluetoothGATTSession" eventClass:objc_opt_class() storeConfig:storeConfigurationForBluetoothGATTSession syncPolicy:syncPolicyForBluetoothGATTSession legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForBluetoothGATTSession
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.BluetoothGATTSession" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)BluetoothNearbyDevice
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForBluetoothNearbyDevice = [self configurationForBluetoothNearbyDevice];
  v3 = +[BMDeviceBluetoothNearbyDevice columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.BluetoothNearbyDevice" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.BluetoothNearbyDevice" schema:v9 configuration:configurationForBluetoothNearbyDevice];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForBluetoothNearbyDevice
{
  storeConfigurationForBluetoothNearbyDevice = [self storeConfigurationForBluetoothNearbyDevice];
  syncPolicyForBluetoothNearbyDevice = [self syncPolicyForBluetoothNearbyDevice];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"EEE3223A-C8CC-47D7-8FA0-271FD75D954F"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.BluetoothNearbyDevice" eventClass:objc_opt_class() storeConfig:storeConfigurationForBluetoothNearbyDevice syncPolicy:syncPolicyForBluetoothNearbyDevice legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForBluetoothNearbyDevice
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:25000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.BluetoothNearbyDevice" domain:0 segmentSize:0x20000 protectionClass:5 pruningPolicy:v2];

  return v3;
}

+ (id)BluetoothPowerEnabled
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForBluetoothPowerEnabled = [self configurationForBluetoothPowerEnabled];
  v3 = +[BMDeviceBluetoothPowerEnabled columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.BluetoothPowerEnabled" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.BluetoothPowerEnabled" schema:v9 configuration:configurationForBluetoothPowerEnabled];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForBluetoothPowerEnabled
{
  storeConfigurationForBluetoothPowerEnabled = [self storeConfigurationForBluetoothPowerEnabled];
  syncPolicyForBluetoothPowerEnabled = [self syncPolicyForBluetoothPowerEnabled];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F73FFD7F-1B3C-435C-AE64-86D5314E790D"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.BluetoothPowerEnabled" eventClass:objc_opt_class() storeConfig:storeConfigurationForBluetoothPowerEnabled syncPolicy:syncPolicyForBluetoothPowerEnabled legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForBluetoothPowerEnabled
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.BluetoothPowerEnabled" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)BluetoothUseCase
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForBluetoothUseCase = [self configurationForBluetoothUseCase];
  v3 = +[BMDeviceBluetoothUseCase columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.BluetoothUseCase" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.BluetoothUseCase" schema:v9 configuration:configurationForBluetoothUseCase];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForBluetoothUseCase
{
  storeConfigurationForBluetoothUseCase = [self storeConfigurationForBluetoothUseCase];
  syncPolicyForBluetoothUseCase = [self syncPolicyForBluetoothUseCase];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"01E60FD6-8451-446F-9F59-665749651E38"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.BluetoothUseCase" eventClass:objc_opt_class() storeConfig:storeConfigurationForBluetoothUseCase syncPolicy:syncPolicyForBluetoothUseCase legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForBluetoothUseCase
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:250000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.BluetoothUseCase" domain:0 segmentSize:0x100000 protectionClass:5 pruningPolicy:v2];

  return v3;
}

+ (id)CellularAvailabilityStatus
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForCellularAvailabilityStatus = [self configurationForCellularAvailabilityStatus];
  v3 = +[BMDeviceCellularAvailabilityStatus columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.CellularAvailabilityStatus" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.CellularAvailabilityStatus" schema:v9 configuration:configurationForCellularAvailabilityStatus];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForCellularAvailabilityStatus
{
  storeConfigurationForCellularAvailabilityStatus = [self storeConfigurationForCellularAvailabilityStatus];
  syncPolicyForCellularAvailabilityStatus = [self syncPolicyForCellularAvailabilityStatus];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BC47690A-50B7-420A-A8C4-5DF634E008C9"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.CellularAvailabilityStatus" eventClass:objc_opt_class() storeConfig:storeConfigurationForCellularAvailabilityStatus syncPolicy:syncPolicyForCellularAvailabilityStatus legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForCellularAvailabilityStatus
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:604800.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.CellularAvailabilityStatus" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)syncPolicyForCellularAvailabilityStatus
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v16[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v4 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v15 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v13[0] = v6;
  v14[0] = v3;
  v7 = BMDevicePlatformAsKeyString();
  v13[1] = v7;
  v14[1] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BC47690A-50B7-420A-A8C4-5DF634E008C9"];
  v10 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v8 syncUUID:v9 legacySyncID:0 eventClass:objc_opt_class()];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)CellularDataEnabled
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForCellularDataEnabled = [self configurationForCellularDataEnabled];
  v3 = +[BMDeviceCellularDataEnabled columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.CellularDataEnabled" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.CellularDataEnabled" schema:v9 configuration:configurationForCellularDataEnabled];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForCellularDataEnabled
{
  storeConfigurationForCellularDataEnabled = [self storeConfigurationForCellularDataEnabled];
  syncPolicyForCellularDataEnabled = [self syncPolicyForCellularDataEnabled];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B08AFAE4-D1DF-4623-85A3-99FE76307B84"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.CellularDataEnabled" eventClass:objc_opt_class() storeConfig:storeConfigurationForCellularDataEnabled syncPolicy:syncPolicyForCellularDataEnabled legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForCellularDataEnabled
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.CellularDataEnabled" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)CellularQualityStatus
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForCellularQualityStatus = [self configurationForCellularQualityStatus];
  v3 = +[BMDeviceCellularQualityStatus columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.CellularQualityStatus" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.CellularQualityStatus" schema:v9 configuration:configurationForCellularQualityStatus];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForCellularQualityStatus
{
  storeConfigurationForCellularQualityStatus = [self storeConfigurationForCellularQualityStatus];
  syncPolicyForCellularQualityStatus = [self syncPolicyForCellularQualityStatus];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"179E578E-A444-43C3-BF36-BB54BF1904CC"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.CellularQualityStatus" eventClass:objc_opt_class() storeConfig:storeConfigurationForCellularQualityStatus syncPolicy:syncPolicyForCellularQualityStatus legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForCellularQualityStatus
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:259200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.CellularQualityStatus" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)ConnectivityContext
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForConnectivityContext = [self configurationForConnectivityContext];
  v3 = +[BMDeviceConnectivityContext columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.ConnectivityContext" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.ConnectivityContext" schema:v9 configuration:configurationForConnectivityContext];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForConnectivityContext
{
  storeConfigurationForConnectivityContext = [self storeConfigurationForConnectivityContext];
  syncPolicyForConnectivityContext = [self syncPolicyForConnectivityContext];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"3352CC72-5879-4250-9A42-3D63D350FB09"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.ConnectivityContext" eventClass:objc_opt_class() storeConfig:storeConfigurationForConnectivityContext syncPolicy:syncPolicyForConnectivityContext legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForConnectivityContext
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.ConnectivityContext" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)DefaultPairedNearby
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForDefaultPairedNearby = [self configurationForDefaultPairedNearby];
  v3 = +[BMDeviceDefaultPairedNearby columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.DefaultPairedNearby" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.DefaultPairedNearby" schema:v9 configuration:configurationForDefaultPairedNearby];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForDefaultPairedNearby
{
  storeConfigurationForDefaultPairedNearby = [self storeConfigurationForDefaultPairedNearby];
  syncPolicyForDefaultPairedNearby = [self syncPolicyForDefaultPairedNearby];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"24D3E99E-ABBC-4DFD-997C-AA636A42E9F2"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.DefaultPairedNearby" eventClass:objc_opt_class() storeConfig:storeConfigurationForDefaultPairedNearby syncPolicy:syncPolicyForDefaultPairedNearby legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForDefaultPairedNearby
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.DefaultPairedNearby" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)NFCTag
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForNFCTag = [self configurationForNFCTag];
  v3 = +[BMDeviceNFCTag columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.NFCTag" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.NFCTag" schema:v9 configuration:configurationForNFCTag];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForNFCTag
{
  storeConfigurationForNFCTag = [self storeConfigurationForNFCTag];
  syncPolicyForNFCTag = [self syncPolicyForNFCTag];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"55DEDFF2-E05F-44E5-AD33-578E3CABFDF8"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.NFCTag" eventClass:objc_opt_class() storeConfig:storeConfigurationForNFCTag syncPolicy:syncPolicyForNFCTag legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForNFCTag
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.NFCTag" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)WakeOnWiFiStatus
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForWakeOnWiFiStatus = [self configurationForWakeOnWiFiStatus];
  v3 = +[BMDeviceWakeOnWiFiStatus columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.WakeOnWiFiStatus" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.WakeOnWiFiStatus" schema:v9 configuration:configurationForWakeOnWiFiStatus];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForWakeOnWiFiStatus
{
  storeConfigurationForWakeOnWiFiStatus = [self storeConfigurationForWakeOnWiFiStatus];
  syncPolicyForWakeOnWiFiStatus = [self syncPolicyForWakeOnWiFiStatus];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"645BAE4A-C775-4F39-87B1-658E45F43C55"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.WakeOnWiFiStatus" eventClass:objc_opt_class() storeConfig:storeConfigurationForWakeOnWiFiStatus syncPolicy:syncPolicyForWakeOnWiFiStatus legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForWakeOnWiFiStatus
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:259200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.WakeOnWiFiStatus" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)WiFiAvailabilityStatus
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForWiFiAvailabilityStatus = [self configurationForWiFiAvailabilityStatus];
  v3 = +[BMDeviceWiFiAvailabilityStatus columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Wireless.WiFiAvailabilityStatus" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Wireless.WiFiAvailabilityStatus" schema:v9 configuration:configurationForWiFiAvailabilityStatus];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForWiFiAvailabilityStatus
{
  storeConfigurationForWiFiAvailabilityStatus = [self storeConfigurationForWiFiAvailabilityStatus];
  syncPolicyForWiFiAvailabilityStatus = [self syncPolicyForWiFiAvailabilityStatus];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D24A8A28-B844-4450-8044-42DBA85D9FEF"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Wireless.WiFiAvailabilityStatus" eventClass:objc_opt_class() storeConfig:storeConfigurationForWiFiAvailabilityStatus syncPolicy:syncPolicyForWiFiAvailabilityStatus legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForWiFiAvailabilityStatus
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:259200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Wireless.WiFiAvailabilityStatus" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"AirplaneMode"])
  {
    airplaneMode = [self AirplaneMode];
LABEL_33:
    v6 = airplaneMode;
    goto LABEL_34;
  }

  if ([nameCopy isEqualToString:@"APSDInterfaceStatus"])
  {
    airplaneMode = [self APSDInterfaceStatus];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"Bluetooth"])
  {
    airplaneMode = [self Bluetooth];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"BluetoothGATTSession"])
  {
    airplaneMode = [self BluetoothGATTSession];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"BluetoothNearbyDevice"])
  {
    airplaneMode = [self BluetoothNearbyDevice];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"BluetoothPowerEnabled"])
  {
    airplaneMode = [self BluetoothPowerEnabled];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"BluetoothUseCase"])
  {
    airplaneMode = [self BluetoothUseCase];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"CellularAvailabilityStatus"])
  {
    airplaneMode = [self CellularAvailabilityStatus];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"CellularDataEnabled"])
  {
    airplaneMode = [self CellularDataEnabled];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"CellularQualityStatus"])
  {
    airplaneMode = [self CellularQualityStatus];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"ConnectivityContext"])
  {
    airplaneMode = [self ConnectivityContext];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"DefaultPairedNearby"])
  {
    airplaneMode = [self DefaultPairedNearby];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"NFCTag"])
  {
    airplaneMode = [self NFCTag];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"WakeOnWiFiStatus"])
  {
    airplaneMode = [self WakeOnWiFiStatus];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"WiFi"])
  {
    airplaneMode = [self WiFi];
    goto LABEL_33;
  }

  if ([nameCopy isEqualToString:@"WiFiAvailabilityStatus"])
  {
    airplaneMode = [self WiFiAvailabilityStatus];
    goto LABEL_33;
  }

  v6 = 0;
LABEL_34:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMDeviceAirplaneMode validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMDeviceAPSDInterfaceStatus validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMDeviceBluetooth validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMDeviceBluetoothGATTSession validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMDeviceBluetoothNearbyDevice validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMDeviceBluetoothPowerEnabled validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = +[BMDeviceBluetoothUseCase validKeyPaths];
  [v2 addObjectsFromArray:v9];

  v10 = +[BMDeviceCellularAvailabilityStatus validKeyPaths];
  [v2 addObjectsFromArray:v10];

  v11 = +[BMDeviceCellularDataEnabled validKeyPaths];
  [v2 addObjectsFromArray:v11];

  v12 = +[BMDeviceCellularQualityStatus validKeyPaths];
  [v2 addObjectsFromArray:v12];

  v13 = +[BMDeviceConnectivityContext validKeyPaths];
  [v2 addObjectsFromArray:v13];

  v14 = +[BMDeviceDefaultPairedNearby validKeyPaths];
  [v2 addObjectsFromArray:v14];

  v15 = +[BMDeviceNFCTag validKeyPaths];
  [v2 addObjectsFromArray:v15];

  v16 = +[BMDeviceWakeOnWiFiStatus validKeyPaths];
  [v2 addObjectsFromArray:v16];

  v17 = +[BMDeviceWiFi validKeyPaths];
  [v2 addObjectsFromArray:v17];

  v18 = +[BMDeviceWiFiAvailabilityStatus validKeyPaths];
  [v2 addObjectsFromArray:v18];

  v19 = [v2 copy];

  return v19;
}

@end