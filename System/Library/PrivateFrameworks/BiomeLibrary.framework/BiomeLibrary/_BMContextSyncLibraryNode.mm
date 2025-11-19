@interface _BMContextSyncLibraryNode
+ (id)AppInFocus;
+ (id)CellularAvailabilityStatus;
+ (id)DeviceActivityLevel;
+ (id)LOI;
+ (id)WalletTransaction;
+ (id)configurationForAppInFocus;
+ (id)configurationForCellularAvailabilityStatus;
+ (id)configurationForDeviceActivityLevel;
+ (id)configurationForLOI;
+ (id)configurationForWalletTransaction;
+ (id)storeConfigurationForAppInFocus;
+ (id)storeConfigurationForCellularAvailabilityStatus;
+ (id)storeConfigurationForDeviceActivityLevel;
+ (id)storeConfigurationForLOI;
+ (id)storeConfigurationForWalletTransaction;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMContextSyncLibraryNode

+ (id)AppInFocus
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForAppInFocus];
  v3 = +[BMContextSyncAppInFocus columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ContextSync.AppInFocus" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ContextSync.AppInFocus" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAppInFocus
{
  v3 = [a1 storeConfigurationForAppInFocus];
  v4 = [a1 syncPolicyForAppInFocus];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"638F2DFF-DEDF-482A-9267-B06F3C730481"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ContextSync.AppInFocus" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAppInFocus
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ContextSync.AppInFocus" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)CellularAvailabilityStatus
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForCellularAvailabilityStatus];
  v3 = +[BMContextSyncCellularAvailabilityStatus columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ContextSync.CellularAvailabilityStatus" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ContextSync.CellularAvailabilityStatus" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForCellularAvailabilityStatus
{
  v3 = [a1 storeConfigurationForCellularAvailabilityStatus];
  v4 = [a1 syncPolicyForCellularAvailabilityStatus];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BEED8CDB-3CA7-42DC-959B-8E8232BE520E"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ContextSync.CellularAvailabilityStatus" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForCellularAvailabilityStatus
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ContextSync.CellularAvailabilityStatus" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)DeviceActivityLevel
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForDeviceActivityLevel];
  v3 = +[BMContextSyncDeviceActivityLevel columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ContextSync.DeviceActivityLevel" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ContextSync.DeviceActivityLevel" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForDeviceActivityLevel
{
  v3 = [a1 storeConfigurationForDeviceActivityLevel];
  v4 = [a1 syncPolicyForDeviceActivityLevel];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"AF7B26C6-8378-457B-9BD4-30B9E1CEE366"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ContextSync.DeviceActivityLevel" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForDeviceActivityLevel
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:20000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ContextSync.DeviceActivityLevel" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)LOI
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForLOI];
  v3 = +[BMContextSyncLOI columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ContextSync.LOI" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ContextSync.LOI" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForLOI
{
  v3 = [a1 storeConfigurationForLOI];
  v4 = [a1 syncPolicyForLOI];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"CA8BE74B-B9ED-4ADC-9E81-CB6E67F5EB23"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ContextSync.LOI" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForLOI
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ContextSync.LOI" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)WalletTransaction
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForWalletTransaction];
  v3 = +[BMContextSyncWalletTransaction columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"ContextSync.WalletTransaction" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"ContextSync.WalletTransaction" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForWalletTransaction
{
  v3 = [a1 storeConfigurationForWalletTransaction];
  v4 = [a1 syncPolicyForWalletTransaction];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C2D71310-E246-4A7E-898D-B7D792F17865"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"ContextSync.WalletTransaction" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForWalletTransaction
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"ContextSync.WalletTransaction" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"AppInFocus"])
  {
    v5 = [a1 AppInFocus];
LABEL_11:
    v6 = v5;
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"CellularAvailabilityStatus"])
  {
    v5 = [a1 CellularAvailabilityStatus];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"DeviceActivityLevel"])
  {
    v5 = [a1 DeviceActivityLevel];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"LOI"])
  {
    v5 = [a1 LOI];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"WalletTransaction"])
  {
    v5 = [a1 WalletTransaction];
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMContextSyncAppInFocus validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMContextSyncCellularAvailabilityStatus validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMContextSyncDeviceActivityLevel validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMContextSyncLOI validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMContextSyncWalletTransaction validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = [v2 copy];

  return v8;
}

@end