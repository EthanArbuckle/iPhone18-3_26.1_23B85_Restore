@interface _BMLighthouseLedgerLibraryNode
+ (id)DediscoPrivacyEvent;
+ (id)DeviceTelemetry;
+ (id)LighthousePluginEvent;
+ (id)MlruntimedEvent;
+ (id)TaskCustomEvent;
+ (id)TaskError;
+ (id)TaskStatus;
+ (id)TaskTelemetry;
+ (id)TrialdEvent;
+ (id)configurationForDediscoPrivacyEvent;
+ (id)configurationForDeviceTelemetry;
+ (id)configurationForLighthousePluginEvent;
+ (id)configurationForMlruntimedEvent;
+ (id)configurationForTaskCustomEvent;
+ (id)configurationForTaskError;
+ (id)configurationForTaskStatus;
+ (id)configurationForTaskTelemetry;
+ (id)configurationForTrialdEvent;
+ (id)storeConfigurationForDediscoPrivacyEvent;
+ (id)storeConfigurationForDeviceTelemetry;
+ (id)storeConfigurationForLighthousePluginEvent;
+ (id)storeConfigurationForMlruntimedEvent;
+ (id)storeConfigurationForTaskCustomEvent;
+ (id)storeConfigurationForTaskError;
+ (id)storeConfigurationForTaskStatus;
+ (id)storeConfigurationForTaskTelemetry;
+ (id)storeConfigurationForTrialdEvent;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMLighthouseLedgerLibraryNode

+ (id)DediscoPrivacyEvent
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForDediscoPrivacyEvent = [self configurationForDediscoPrivacyEvent];
  v3 = +[BMLighthouseLedgerDediscoPrivacyEvent columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Lighthouse.Ledger.DediscoPrivacyEvent" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Lighthouse.Ledger.DediscoPrivacyEvent" schema:v9 configuration:configurationForDediscoPrivacyEvent];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForDediscoPrivacyEvent
{
  storeConfigurationForDediscoPrivacyEvent = [self storeConfigurationForDediscoPrivacyEvent];
  syncPolicyForDediscoPrivacyEvent = [self syncPolicyForDediscoPrivacyEvent];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4E669FC4-E6F5-48EF-85E1-94387D009A92"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Lighthouse.Ledger.DediscoPrivacyEvent" eventClass:objc_opt_class() storeConfig:storeConfigurationForDediscoPrivacyEvent syncPolicy:syncPolicyForDediscoPrivacyEvent legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForDediscoPrivacyEvent
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Lighthouse.Ledger.DediscoPrivacyEvent" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)DeviceTelemetry
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForDeviceTelemetry = [self configurationForDeviceTelemetry];
  v3 = +[BMLighthouseDeviceTelemetry columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Lighthouse.Ledger.DeviceTelemetry" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Lighthouse.Ledger.DeviceTelemetry" schema:v9 configuration:configurationForDeviceTelemetry];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForDeviceTelemetry
{
  storeConfigurationForDeviceTelemetry = [self storeConfigurationForDeviceTelemetry];
  syncPolicyForDeviceTelemetry = [self syncPolicyForDeviceTelemetry];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0E875153-44EC-45F9-8D07-09546C6EC068"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Lighthouse.Ledger.DeviceTelemetry" eventClass:objc_opt_class() storeConfig:storeConfigurationForDeviceTelemetry syncPolicy:syncPolicyForDeviceTelemetry legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForDeviceTelemetry
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:5184000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Lighthouse.Ledger.DeviceTelemetry" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)LighthousePluginEvent
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForLighthousePluginEvent = [self configurationForLighthousePluginEvent];
  v3 = +[BMLighthouseLedgerLighthousePluginEvent columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Lighthouse.Ledger.LighthousePluginEvent" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Lighthouse.Ledger.LighthousePluginEvent" schema:v9 configuration:configurationForLighthousePluginEvent];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForLighthousePluginEvent
{
  storeConfigurationForLighthousePluginEvent = [self storeConfigurationForLighthousePluginEvent];
  syncPolicyForLighthousePluginEvent = [self syncPolicyForLighthousePluginEvent];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BC26EB46-D87D-499F-8ACE-B67CFA6CA037"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Lighthouse.Ledger.LighthousePluginEvent" eventClass:objc_opt_class() storeConfig:storeConfigurationForLighthousePluginEvent syncPolicy:syncPolicyForLighthousePluginEvent legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForLighthousePluginEvent
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Lighthouse.Ledger.LighthousePluginEvent" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)MlruntimedEvent
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForMlruntimedEvent = [self configurationForMlruntimedEvent];
  v3 = +[BMLighthouseLedgerMlruntimedEvent columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Lighthouse.Ledger.MlruntimedEvent" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Lighthouse.Ledger.MlruntimedEvent" schema:v9 configuration:configurationForMlruntimedEvent];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForMlruntimedEvent
{
  storeConfigurationForMlruntimedEvent = [self storeConfigurationForMlruntimedEvent];
  syncPolicyForMlruntimedEvent = [self syncPolicyForMlruntimedEvent];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F6F9EAFD-CEFA-4905-85E8-A59176773D0C"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Lighthouse.Ledger.MlruntimedEvent" eventClass:objc_opt_class() storeConfig:storeConfigurationForMlruntimedEvent syncPolicy:syncPolicyForMlruntimedEvent legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMlruntimedEvent
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Lighthouse.Ledger.MlruntimedEvent" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)TaskCustomEvent
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTaskCustomEvent = [self configurationForTaskCustomEvent];
  v3 = +[BMLighthouseTaskCustomEvent columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Lighthouse.Ledger.TaskCustomEvent" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Lighthouse.Ledger.TaskCustomEvent" schema:v9 configuration:configurationForTaskCustomEvent];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForTaskCustomEvent
{
  storeConfigurationForTaskCustomEvent = [self storeConfigurationForTaskCustomEvent];
  syncPolicyForTaskCustomEvent = [self syncPolicyForTaskCustomEvent];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"FE0BC00C-41E1-4A5C-A9A6-E4E47D7135EA"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Lighthouse.Ledger.TaskCustomEvent" eventClass:objc_opt_class() storeConfig:storeConfigurationForTaskCustomEvent syncPolicy:syncPolicyForTaskCustomEvent legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTaskCustomEvent
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:50000 maxEventCount:5184000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Lighthouse.Ledger.TaskCustomEvent" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)TaskError
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTaskError = [self configurationForTaskError];
  v3 = +[BMLighthouseTaskError columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Lighthouse.Ledger.TaskError" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Lighthouse.Ledger.TaskError" schema:v9 configuration:configurationForTaskError];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForTaskError
{
  storeConfigurationForTaskError = [self storeConfigurationForTaskError];
  syncPolicyForTaskError = [self syncPolicyForTaskError];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"7C5EA70F-BD0C-4AB8-81B9-9489F1337087"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Lighthouse.Ledger.TaskError" eventClass:objc_opt_class() storeConfig:storeConfigurationForTaskError syncPolicy:syncPolicyForTaskError legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTaskError
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:5184000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Lighthouse.Ledger.TaskError" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)TaskStatus
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTaskStatus = [self configurationForTaskStatus];
  v3 = +[BMLighthouseTaskStatus columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Lighthouse.Ledger.TaskStatus" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Lighthouse.Ledger.TaskStatus" schema:v9 configuration:configurationForTaskStatus];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForTaskStatus
{
  storeConfigurationForTaskStatus = [self storeConfigurationForTaskStatus];
  syncPolicyForTaskStatus = [self syncPolicyForTaskStatus];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"76E93CEE-08B6-41A1-BF53-161578AE80F9"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Lighthouse.Ledger.TaskStatus" eventClass:objc_opt_class() storeConfig:storeConfigurationForTaskStatus syncPolicy:syncPolicyForTaskStatus legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTaskStatus
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:30000 maxEventCount:5184000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Lighthouse.Ledger.TaskStatus" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)TaskTelemetry
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTaskTelemetry = [self configurationForTaskTelemetry];
  v3 = +[BMLighthouseTaskTelemetry columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Lighthouse.Ledger.TaskTelemetry" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Lighthouse.Ledger.TaskTelemetry" schema:v9 configuration:configurationForTaskTelemetry];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForTaskTelemetry
{
  storeConfigurationForTaskTelemetry = [self storeConfigurationForTaskTelemetry];
  syncPolicyForTaskTelemetry = [self syncPolicyForTaskTelemetry];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"8066D77A-DA1B-48BE-89A6-7A7470DA10D8"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Lighthouse.Ledger.TaskTelemetry" eventClass:objc_opt_class() storeConfig:storeConfigurationForTaskTelemetry syncPolicy:syncPolicyForTaskTelemetry legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTaskTelemetry
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:50000 maxEventCount:5184000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Lighthouse.Ledger.TaskTelemetry" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)TrialdEvent
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTrialdEvent = [self configurationForTrialdEvent];
  v3 = +[BMLighthouseLedgerTrialdEvent columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Lighthouse.Ledger.TrialdEvent" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Lighthouse.Ledger.TrialdEvent" schema:v9 configuration:configurationForTrialdEvent];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForTrialdEvent
{
  storeConfigurationForTrialdEvent = [self storeConfigurationForTrialdEvent];
  syncPolicyForTrialdEvent = [self syncPolicyForTrialdEvent];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"024C50A1-F2BD-400C-9F8C-E8E8BC1D800A"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Lighthouse.Ledger.TrialdEvent" eventClass:objc_opt_class() storeConfig:storeConfigurationForTrialdEvent syncPolicy:syncPolicyForTrialdEvent legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTrialdEvent
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Lighthouse.Ledger.TrialdEvent" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"DediscoPrivacyEvent"])
  {
    dediscoPrivacyEvent = [self DediscoPrivacyEvent];
LABEL_19:
    v6 = dediscoPrivacyEvent;
    goto LABEL_20;
  }

  if ([nameCopy isEqualToString:@"DeviceTelemetry"])
  {
    dediscoPrivacyEvent = [self DeviceTelemetry];
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"LighthousePluginEvent"])
  {
    dediscoPrivacyEvent = [self LighthousePluginEvent];
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"MlruntimedEvent"])
  {
    dediscoPrivacyEvent = [self MlruntimedEvent];
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"TaskCustomEvent"])
  {
    dediscoPrivacyEvent = [self TaskCustomEvent];
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"TaskError"])
  {
    dediscoPrivacyEvent = [self TaskError];
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"TaskStatus"])
  {
    dediscoPrivacyEvent = [self TaskStatus];
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"TaskTelemetry"])
  {
    dediscoPrivacyEvent = [self TaskTelemetry];
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"TrialdEvent"])
  {
    dediscoPrivacyEvent = [self TrialdEvent];
    goto LABEL_19;
  }

  v6 = 0;
LABEL_20:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMLighthouseLedgerDediscoPrivacyEvent validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMLighthouseDeviceTelemetry validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMLighthouseLedgerLighthousePluginEvent validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMLighthouseLedgerMlruntimedEvent validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMLighthouseTaskCustomEvent validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMLighthouseTaskError validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = +[BMLighthouseTaskStatus validKeyPaths];
  [v2 addObjectsFromArray:v9];

  v10 = +[BMLighthouseTaskTelemetry validKeyPaths];
  [v2 addObjectsFromArray:v10];

  v11 = +[BMLighthouseLedgerTrialdEvent validKeyPaths];
  [v2 addObjectsFromArray:v11];

  v12 = [v2 copy];

  return v12;
}

@end