@interface _BMSiriMetricsLibraryNode
+ (id)OnDeviceDigestExperimentMetrics;
+ (id)OnDeviceDigestSegmentsCohorts;
+ (id)OnDeviceDigestUsageMetrics;
+ (id)configurationForOnDeviceDigestExperimentMetrics;
+ (id)configurationForOnDeviceDigestSegmentsCohorts;
+ (id)configurationForOnDeviceDigestUsageMetrics;
+ (id)storeConfigurationForOnDeviceDigestExperimentMetrics;
+ (id)storeConfigurationForOnDeviceDigestSegmentsCohorts;
+ (id)storeConfigurationForOnDeviceDigestUsageMetrics;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMSiriMetricsLibraryNode

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"OnDeviceDigestExperimentMetrics"])
  {
    onDeviceDigestExperimentMetrics = [self OnDeviceDigestExperimentMetrics];
LABEL_7:
    v6 = onDeviceDigestExperimentMetrics;
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"OnDeviceDigestSegmentsCohorts"])
  {
    onDeviceDigestExperimentMetrics = [self OnDeviceDigestSegmentsCohorts];
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"OnDeviceDigestUsageMetrics"])
  {
    onDeviceDigestExperimentMetrics = [self OnDeviceDigestUsageMetrics];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSiriOnDeviceDigestExperimentMetrics validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMSiriOnDeviceDigestSegmentsCohorts validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMSiriOnDeviceDigestUsageMetrics validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

+ (id)configurationForOnDeviceDigestUsageMetrics
{
  v15[1] = *MEMORY[0x1E69E9840];
  storeConfigurationForOnDeviceDigestUsageMetrics = [self storeConfigurationForOnDeviceDigestUsageMetrics];
  syncPolicyForOnDeviceDigestUsageMetrics = [self syncPolicyForOnDeviceDigestUsageMetrics];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  v9 = MEMORY[0x1E698F338];
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"3620FF69-C102-4450-A9D2-9747F208ED9C"];
  BYTE2(v14) = 1;
  LOWORD(v14) = 1;
  v11 = [v9 _libraryStreamConfigurationWithUUID:v10 streamIdentifier:@"Siri.Metrics.OnDeviceDigestUsageMetrics" eventClass:objc_opt_class() storeConfig:storeConfigurationForOnDeviceDigestUsageMetrics syncPolicy:syncPolicyForOnDeviceDigestUsageMetrics legacyNames:0 internalMetadata:0 enableSubscriptions:v14 enableSubscriptionSubstream:0 enableTombstoneSubstream:v8 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)storeConfigurationForOnDeviceDigestUsageMetrics
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Metrics.OnDeviceDigestUsageMetrics" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForOnDeviceDigestSegmentsCohorts
{
  storeConfigurationForOnDeviceDigestSegmentsCohorts = [self storeConfigurationForOnDeviceDigestSegmentsCohorts];
  syncPolicyForOnDeviceDigestSegmentsCohorts = [self syncPolicyForOnDeviceDigestSegmentsCohorts];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E34F02A4-CDB9-4031-8B01-1A96FCFBEBDD"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.Metrics.OnDeviceDigestSegmentsCohorts" eventClass:objc_opt_class() storeConfig:storeConfigurationForOnDeviceDigestSegmentsCohorts syncPolicy:syncPolicyForOnDeviceDigestSegmentsCohorts legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForOnDeviceDigestSegmentsCohorts
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Metrics.OnDeviceDigestSegmentsCohorts" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForOnDeviceDigestExperimentMetrics
{
  storeConfigurationForOnDeviceDigestExperimentMetrics = [self storeConfigurationForOnDeviceDigestExperimentMetrics];
  syncPolicyForOnDeviceDigestExperimentMetrics = [self syncPolicyForOnDeviceDigestExperimentMetrics];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"16B948EB-DD3D-48D7-8263-3F193B73FBC3"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.Metrics.OnDeviceDigestExperimentMetrics" eventClass:objc_opt_class() storeConfig:storeConfigurationForOnDeviceDigestExperimentMetrics syncPolicy:syncPolicyForOnDeviceDigestExperimentMetrics legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForOnDeviceDigestExperimentMetrics
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Metrics.OnDeviceDigestExperimentMetrics" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)OnDeviceDigestUsageMetrics
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForOnDeviceDigestUsageMetrics = [self configurationForOnDeviceDigestUsageMetrics];
  v3 = +[BMSiriOnDeviceDigestUsageMetrics columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Metrics.OnDeviceDigestUsageMetrics" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Metrics.OnDeviceDigestUsageMetrics" schema:v9 configuration:configurationForOnDeviceDigestUsageMetrics];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)OnDeviceDigestSegmentsCohorts
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForOnDeviceDigestSegmentsCohorts = [self configurationForOnDeviceDigestSegmentsCohorts];
  v3 = +[BMSiriOnDeviceDigestSegmentsCohorts columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Metrics.OnDeviceDigestSegmentsCohorts" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Metrics.OnDeviceDigestSegmentsCohorts" schema:v9 configuration:configurationForOnDeviceDigestSegmentsCohorts];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)OnDeviceDigestExperimentMetrics
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForOnDeviceDigestExperimentMetrics = [self configurationForOnDeviceDigestExperimentMetrics];
  v3 = +[BMSiriOnDeviceDigestExperimentMetrics columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Metrics.OnDeviceDigestExperimentMetrics" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Metrics.OnDeviceDigestExperimentMetrics" schema:v9 configuration:configurationForOnDeviceDigestExperimentMetrics];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end