@interface _BMSiriASRLibraryNode
+ (id)ContextualReplayRecord;
+ (id)RequestMetricsRecord;
+ (id)configurationForContextualReplayRecord;
+ (id)configurationForRequestMetricsRecord;
+ (id)storeConfigurationForContextualReplayRecord;
+ (id)storeConfigurationForRequestMetricsRecord;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMSiriASRLibraryNode

+ (id)storeConfigurationForRequestMetricsRecord
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.ASR.RequestMetricsRecord" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)storeConfigurationForContextualReplayRecord
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:104857600 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.ASR.ContextualReplayRecord" domain:0 segmentSize:10485760 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)RequestMetricsRecord
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForRequestMetricsRecord = [self configurationForRequestMetricsRecord];
  v3 = +[BMASRRequestMetricsRecord columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.ASR.RequestMetricsRecord" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.ASR.RequestMetricsRecord" schema:v9 configuration:configurationForRequestMetricsRecord];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForRequestMetricsRecord
{
  storeConfigurationForRequestMetricsRecord = [self storeConfigurationForRequestMetricsRecord];
  syncPolicyForRequestMetricsRecord = [self syncPolicyForRequestMetricsRecord];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"72ABA4E9-B73E-4B29-AAC9-8B78805054ED"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.ASR.RequestMetricsRecord" eventClass:objc_opt_class() storeConfig:storeConfigurationForRequestMetricsRecord syncPolicy:syncPolicyForRequestMetricsRecord legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.speech.localspeechrecognition" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)ContextualReplayRecord
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForContextualReplayRecord = [self configurationForContextualReplayRecord];
  v3 = +[BMASRContextualReplayRecord columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.ASR.ContextualReplayRecord" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.ASR.ContextualReplayRecord" schema:v9 configuration:configurationForContextualReplayRecord];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForContextualReplayRecord
{
  v18[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForContextualReplayRecord = [self storeConfigurationForContextualReplayRecord];
  syncPolicyForContextualReplayRecord = [self syncPolicyForContextualReplayRecord];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"donatedBySiri == YES" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"donatedBySiri == YES" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"FDD87131-94FB-4643-AAB8-9264039F5F56"];
  BYTE2(v17) = 0;
  LOWORD(v17) = 0;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.ASR.ContextualReplayRecord" eventClass:objc_opt_class() storeConfig:storeConfigurationForContextualReplayRecord syncPolicy:syncPolicyForContextualReplayRecord legacyNames:0 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"ContextualReplayRecord"])
  {
    contextualReplayRecord = [self ContextualReplayRecord];
LABEL_5:
    v6 = contextualReplayRecord;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"RequestMetricsRecord"])
  {
    contextualReplayRecord = [self RequestMetricsRecord];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMASRContextualReplayRecord validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMASRRequestMetricsRecord validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

@end