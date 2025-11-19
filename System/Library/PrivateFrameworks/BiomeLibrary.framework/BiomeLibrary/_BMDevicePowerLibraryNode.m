@interface _BMDevicePowerLibraryNode
+ (id)BatteryLevel;
+ (id)EnergyMode;
+ (id)LowPowerMode;
+ (id)PluggedIn;
+ (id)configurationForBatteryLevel;
+ (id)configurationForEnergyMode;
+ (id)configurationForLowPowerMode;
+ (id)configurationForPluggedIn;
+ (id)storeConfigurationForBatteryLevel;
+ (id)storeConfigurationForEnergyMode;
+ (id)storeConfigurationForLowPowerMode;
+ (id)storeConfigurationForPluggedIn;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMDevicePowerLibraryNode

+ (id)BatteryLevel
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForBatteryLevel];
  v3 = +[BMDeviceBatteryLevel columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Power.BatteryLevel" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Power.BatteryLevel" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForBatteryLevel
{
  v3 = [a1 storeConfigurationForBatteryLevel];
  v4 = [a1 syncPolicyForBatteryLevel];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BDE9A404-9A1D-4844-A47D-92DEC7628986"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Power.BatteryLevel" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForBatteryLevel
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Power.BatteryLevel" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)PluggedIn
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForPluggedIn];
  v3 = +[BMDevicePluggedIn columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Power.PluggedIn" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Power.PluggedIn" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForPluggedIn
{
  v3 = [a1 storeConfigurationForPluggedIn];
  v4 = [a1 syncPolicyForPluggedIn];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"2FEE7364-BA27-47DB-9779-796E8D9B014E"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Power.PluggedIn" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPluggedIn
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Power.PluggedIn" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)EnergyMode
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForEnergyMode];
  v3 = +[BMEnergyMode columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Power.EnergyMode" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Power.EnergyMode" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForEnergyMode
{
  v3 = [a1 storeConfigurationForEnergyMode];
  v4 = [a1 syncPolicyForEnergyMode];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D5E993B1-3A29-4C8E-B575-DD880EF5DD66"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Power.EnergyMode" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForEnergyMode
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Power.EnergyMode" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)LowPowerMode
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForLowPowerMode];
  v3 = +[BMDeviceLowPowerMode columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Power.LowPowerMode" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Power.LowPowerMode" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForLowPowerMode
{
  v3 = [a1 storeConfigurationForLowPowerMode];
  v4 = [a1 syncPolicyForLowPowerMode];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"097B026F-5852-40F8-9DC8-FC433F1C36A2"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Power.LowPowerMode" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForLowPowerMode
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Power.LowPowerMode" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"BatteryLevel"])
  {
    v5 = [a1 BatteryLevel];
LABEL_9:
    v6 = v5;
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"EnergyMode"])
  {
    v5 = [a1 EnergyMode];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"LowPowerMode"])
  {
    v5 = [a1 LowPowerMode];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"PluggedIn"])
  {
    v5 = [a1 PluggedIn];
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMDeviceBatteryLevel validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMEnergyMode validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMDeviceLowPowerMode validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMDevicePluggedIn validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = [v2 copy];

  return v7;
}

@end