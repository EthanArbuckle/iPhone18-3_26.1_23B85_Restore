@interface _BMSiriLibraryNode
+ (id)AssistantSuggestionFeatures;
+ (id)ContextRefreshTriggers;
+ (id)Dictation;
+ (id)Execution;
+ (id)InferredHelpfulness;
+ (id)PostSiriEngagement;
+ (id)RecognizedUser;
+ (id)SELFProcessedEvent;
+ (id)SelfTriggerSuppression;
+ (id)Service;
+ (id)SiriRequestCounts;
+ (id)TaskAggregation;
+ (id)UI;
+ (id)VoiceTriggerStatistics;
+ (id)configurationForAssistantSuggestionFeatures;
+ (id)configurationForContextRefreshTriggers;
+ (id)configurationForDictation;
+ (id)configurationForExecution;
+ (id)configurationForInferredHelpfulness;
+ (id)configurationForPostSiriEngagement;
+ (id)configurationForRecognizedUser;
+ (id)configurationForSELFProcessedEvent;
+ (id)configurationForSelfTriggerSuppression;
+ (id)configurationForService;
+ (id)configurationForSiriRequestCounts;
+ (id)configurationForTaskAggregation;
+ (id)configurationForUI;
+ (id)configurationForVoiceTriggerStatistics;
+ (id)storeConfigurationForAssistantSuggestionFeatures;
+ (id)storeConfigurationForContextRefreshTriggers;
+ (id)storeConfigurationForDictation;
+ (id)storeConfigurationForExecution;
+ (id)storeConfigurationForInferredHelpfulness;
+ (id)storeConfigurationForPostSiriEngagement;
+ (id)storeConfigurationForRecognizedUser;
+ (id)storeConfigurationForSELFProcessedEvent;
+ (id)storeConfigurationForSelfTriggerSuppression;
+ (id)storeConfigurationForService;
+ (id)storeConfigurationForSiriRequestCounts;
+ (id)storeConfigurationForTaskAggregation;
+ (id)storeConfigurationForUI;
+ (id)storeConfigurationForVoiceTriggerStatistics;
+ (id)streamWithName:(id)name;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMSiriLibraryNode

+ (id)configurationForUI
{
  storeConfigurationForUI = [self storeConfigurationForUI];
  syncPolicyForUI = [self syncPolicyForUI];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"22FF3C9C-8F2C-4670-BE6A-775941F6BCA0"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.UI" eventClass:objc_opt_class() storeConfig:storeConfigurationForUI syncPolicy:syncPolicyForUI legacyNames:&unk_1EF3EBF88 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)UI
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForUI = [self configurationForUI];
  v3 = +[BMSiriUI columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.UI" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.UI" schema:v9 configuration:configurationForUI];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)storeConfigurationForUI
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.UI" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)storeConfigurationForExecution
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Execution" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Execution
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForExecution = [self configurationForExecution];
  v3 = +[BMSiriExecution columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Execution" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Execution" schema:v9 configuration:configurationForExecution];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForExecution
{
  v18[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForExecution = [self storeConfigurationForExecution];
  syncPolicyForExecution = [self syncPolicyForExecution];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C4ABC4BA-BC8E-4517-AEFA-8BFF300DDD51"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.Execution" eventClass:objc_opt_class() storeConfig:storeConfigurationForExecution syncPolicy:syncPolicyForExecution legacyNames:&unk_1EF3EBF40 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)PostSiriEngagement
{
  v19 = *MEMORY[0x1E69E9840];
  configurationForPostSiriEngagement = [self configurationForPostSiriEngagement];
  v3 = +[BMSiriPostSiriEngagement columns];
  v4 = BMEventTimestampSQLColumn();
  v16 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v17 = v5;
  v6 = BMEventClassNameSQLColumn();
  v18 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v16, v17}];

  v9 = BMEventBookmarkSQLColumns();
  v10 = [v8 arrayByAddingObjectsFromArray:v9];

  v11 = [v10 arrayByAddingObjectsFromArray:MEMORY[0x1E695E0F0]];

  v12 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.PostSiriEngagement" columns:v11];
  v13 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.PostSiriEngagement" schema:v12 configuration:configurationForPostSiriEngagement];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)configurationForPostSiriEngagement
{
  v18[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForPostSiriEngagement = [self storeConfigurationForPostSiriEngagement];
  syncPolicyForPostSiriEngagement = [self syncPolicyForPostSiriEngagement];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D079ECAC-7B06-4830-84BD-54AB0D17E7DE"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.PostSiriEngagement" eventClass:objc_opt_class() storeConfig:storeConfigurationForPostSiriEngagement syncPolicy:syncPolicyForPostSiriEngagement legacyNames:&unk_1EF3EBF70 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForPostSiriEngagement
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.PostSiriEngagement" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)sublibraries
{
  v19[13] = *MEMORY[0x1E69E9840];
  analyticsIdentifiers = [self AnalyticsIdentifiers];
  v19[0] = analyticsIdentifiers;
  appSelection = [self AppSelection];
  v19[1] = appSelection;
  v16 = [self ASR];
  v19[2] = v16;
  audio = [self Audio];
  v19[3] = audio;
  feedbackLearning = [self FeedbackLearning];
  v19[4] = feedbackLearning;
  health = [self Health];
  v19[5] = health;
  metrics = [self Metrics];
  v19[6] = metrics;
  oDDI = [self ODDI];
  v19[7] = oDDI;
  onDeviceAnalytics = [self OnDeviceAnalytics];
  v19[8] = onDeviceAnalytics;
  orchestration = [self Orchestration];
  v19[9] = orchestration;
  privateLearning = [self PrivateLearning];
  v19[10] = privateLearning;
  remembers = [self Remembers];
  v19[11] = remembers;
  userEngagement = [self UserEngagement];
  v19[12] = userEngagement;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:13];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)SELFProcessedEvent
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSELFProcessedEvent = [self configurationForSELFProcessedEvent];
  v3 = +[BMSiriSELFProcessedEvent columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.SELFProcessedEvent" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.SELFProcessedEvent" schema:v9 configuration:configurationForSELFProcessedEvent];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForSELFProcessedEvent
{
  v18[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForSELFProcessedEvent = [self storeConfigurationForSELFProcessedEvent];
  syncPolicyForSELFProcessedEvent = [self syncPolicyForSELFProcessedEvent];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"106573F0-1C67-4CEF-951C-0736F49E7B57"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.SELFProcessedEvent" eventClass:objc_opt_class() storeConfig:storeConfigurationForSELFProcessedEvent syncPolicy:syncPolicyForSELFProcessedEvent legacyNames:0 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForSELFProcessedEvent
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:50000 maxEventCount:691200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.SELFProcessedEvent" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForSelfTriggerSuppression
{
  storeConfigurationForSelfTriggerSuppression = [self storeConfigurationForSelfTriggerSuppression];
  syncPolicyForSelfTriggerSuppression = [self syncPolicyForSelfTriggerSuppression];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A3406BE3-483E-4D59-9376-7DEEB24319F6"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.SelfTriggerSuppression" eventClass:objc_opt_class() storeConfig:storeConfigurationForSelfTriggerSuppression syncPolicy:syncPolicyForSelfTriggerSuppression legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSelfTriggerSuppression
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:30000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.SelfTriggerSuppression" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)ContextRefreshTriggers
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForContextRefreshTriggers = [self configurationForContextRefreshTriggers];
  v3 = +[BMSiriContextRefreshTriggers columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.ContextRefreshTriggers" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.ContextRefreshTriggers" schema:v9 configuration:configurationForContextRefreshTriggers];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForContextRefreshTriggers
{
  storeConfigurationForContextRefreshTriggers = [self storeConfigurationForContextRefreshTriggers];
  syncPolicyForContextRefreshTriggers = [self syncPolicyForContextRefreshTriggers];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D2D1AB25-945A-41A6-BF86-59DEA046C830"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.ContextRefreshTriggers" eventClass:objc_opt_class() storeConfig:storeConfigurationForContextRefreshTriggers syncPolicy:syncPolicyForContextRefreshTriggers legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForContextRefreshTriggers
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.ContextRefreshTriggers" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)SelfTriggerSuppression
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSelfTriggerSuppression = [self configurationForSelfTriggerSuppression];
  v3 = +[BMSiriSelfTriggerSuppression columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.SelfTriggerSuppression" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.SelfTriggerSuppression" schema:v9 configuration:configurationForSelfTriggerSuppression];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Dictation
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForDictation = [self configurationForDictation];
  v3 = +[BMSiriDictation columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Dictation" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Dictation" schema:v9 configuration:configurationForDictation];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForDictation
{
  v18[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForDictation = [self storeConfigurationForDictation];
  syncPolicyForDictation = [self syncPolicyForDictation];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B3376BEF-1D90-4AC9-85C3-24AFC1B42285"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.Dictation" eventClass:objc_opt_class() storeConfig:storeConfigurationForDictation syncPolicy:syncPolicyForDictation legacyNames:&unk_1EF3EBF28 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForDictation
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:14515200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Dictation" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"AssistantSuggestionFeatures"])
  {
    assistantSuggestionFeatures = [self AssistantSuggestionFeatures];
LABEL_29:
    v6 = assistantSuggestionFeatures;
    goto LABEL_30;
  }

  if ([nameCopy isEqualToString:@"ContextRefreshTriggers"])
  {
    assistantSuggestionFeatures = [self ContextRefreshTriggers];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"Dictation"])
  {
    assistantSuggestionFeatures = [self Dictation];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"Execution"])
  {
    assistantSuggestionFeatures = [self Execution];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"InferredHelpfulness"])
  {
    assistantSuggestionFeatures = [self InferredHelpfulness];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"PostSiriEngagement"])
  {
    assistantSuggestionFeatures = [self PostSiriEngagement];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"RecognizedUser"])
  {
    assistantSuggestionFeatures = [self RecognizedUser];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"SELFProcessedEvent"])
  {
    assistantSuggestionFeatures = [self SELFProcessedEvent];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"SelfTriggerSuppression"])
  {
    assistantSuggestionFeatures = [self SelfTriggerSuppression];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"Service"])
  {
    assistantSuggestionFeatures = [self Service];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"SiriRequestCounts"])
  {
    assistantSuggestionFeatures = [self SiriRequestCounts];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"TaskAggregation"])
  {
    assistantSuggestionFeatures = [self TaskAggregation];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"UI"])
  {
    assistantSuggestionFeatures = [self UI];
    goto LABEL_29;
  }

  if ([nameCopy isEqualToString:@"VoiceTriggerStatistics"])
  {
    assistantSuggestionFeatures = [self VoiceTriggerStatistics];
    goto LABEL_29;
  }

  v6 = 0;
LABEL_30:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSiriAssistantSuggestionFeatures validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMSiriContextRefreshTriggers validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMSiriDictation validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMSiriExecution validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMSiriInferredHelpfulness validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMSiriPostSiriEngagement validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = +[BMSiriRecognizedUser validKeyPaths];
  [v2 addObjectsFromArray:v9];

  v10 = +[BMSiriSELFProcessedEvent validKeyPaths];
  [v2 addObjectsFromArray:v10];

  v11 = +[BMSiriSelfTriggerSuppression validKeyPaths];
  [v2 addObjectsFromArray:v11];

  v12 = +[BMSiriService validKeyPaths];
  [v2 addObjectsFromArray:v12];

  v13 = +[BMSiriRequestCounts validKeyPaths];
  [v2 addObjectsFromArray:v13];

  v14 = +[BMSiriTaskAggregation validKeyPaths];
  [v2 addObjectsFromArray:v14];

  v15 = +[BMSiriUI validKeyPaths];
  [v2 addObjectsFromArray:v15];

  v16 = +[BMSiriVoiceTriggerStatistics validKeyPaths];
  [v2 addObjectsFromArray:v16];

  v17 = [v2 copy];

  return v17;
}

+ (id)configurationForVoiceTriggerStatistics
{
  storeConfigurationForVoiceTriggerStatistics = [self storeConfigurationForVoiceTriggerStatistics];
  syncPolicyForVoiceTriggerStatistics = [self syncPolicyForVoiceTriggerStatistics];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BCAF9EC2-20CA-4DB7-BD8C-EB128E0DA225"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.VoiceTriggerStatistics" eventClass:objc_opt_class() storeConfig:storeConfigurationForVoiceTriggerStatistics syncPolicy:syncPolicyForVoiceTriggerStatistics legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForVoiceTriggerStatistics
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:25000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.VoiceTriggerStatistics" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForTaskAggregation
{
  storeConfigurationForTaskAggregation = [self storeConfigurationForTaskAggregation];
  syncPolicyForTaskAggregation = [self syncPolicyForTaskAggregation];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"65C175CB-EEA9-4A46-AB4A-F0F0AB78CEF8"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.TaskAggregation" eventClass:objc_opt_class() storeConfig:storeConfigurationForTaskAggregation syncPolicy:syncPolicyForTaskAggregation legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTaskAggregation
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.TaskAggregation" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForSiriRequestCounts
{
  storeConfigurationForSiriRequestCounts = [self storeConfigurationForSiriRequestCounts];
  syncPolicyForSiriRequestCounts = [self syncPolicyForSiriRequestCounts];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0981E4C7-38C3-44B1-954E-E4AF45568430"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.SiriRequestCounts" eventClass:objc_opt_class() storeConfig:storeConfigurationForSiriRequestCounts syncPolicy:syncPolicyForSiriRequestCounts legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSiriRequestCounts
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.SiriRequestCounts" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForService
{
  v18[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForService = [self storeConfigurationForService];
  syncPolicyForService = [self syncPolicyForService];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"3053CE72-8134-48D4-BBE0-1012A1308BD6"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.Service" eventClass:objc_opt_class() storeConfig:storeConfigurationForService syncPolicy:syncPolicyForService legacyNames:0 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForService
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.Service" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForRecognizedUser
{
  v18[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForRecognizedUser = [self storeConfigurationForRecognizedUser];
  syncPolicyForRecognizedUser = [self syncPolicyForRecognizedUser];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"66E40C34-C973-483F-92C5-162C854420A4"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.RecognizedUser" eventClass:objc_opt_class() storeConfig:storeConfigurationForRecognizedUser syncPolicy:syncPolicyForRecognizedUser legacyNames:0 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForRecognizedUser
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.RecognizedUser" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForInferredHelpfulness
{
  storeConfigurationForInferredHelpfulness = [self storeConfigurationForInferredHelpfulness];
  syncPolicyForInferredHelpfulness = [self syncPolicyForInferredHelpfulness];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C066A011-66C6-4E74-96FE-869B3F2B6BEB"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.InferredHelpfulness" eventClass:objc_opt_class() storeConfig:storeConfigurationForInferredHelpfulness syncPolicy:syncPolicyForInferredHelpfulness legacyNames:&unk_1EF3EBF58 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForInferredHelpfulness
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.InferredHelpfulness" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForAssistantSuggestionFeatures
{
  v18[2] = *MEMORY[0x1E69E9840];
  storeConfigurationForAssistantSuggestionFeatures = [self storeConfigurationForAssistantSuggestionFeatures];
  syncPolicyForAssistantSuggestionFeatures = [self syncPolicyForAssistantSuggestionFeatures];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"delete-siri-dictation-history" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"disable-siri" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B66D84F7-4914-4208-A051-18DD239DACFC"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Siri.AssistantSuggestionFeatures" eventClass:objc_opt_class() storeConfig:storeConfigurationForAssistantSuggestionFeatures syncPolicy:syncPolicyForAssistantSuggestionFeatures legacyNames:0 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForAssistantSuggestionFeatures
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:15811200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.AssistantSuggestionFeatures" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)VoiceTriggerStatistics
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForVoiceTriggerStatistics = [self configurationForVoiceTriggerStatistics];
  v3 = +[BMSiriVoiceTriggerStatistics columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.VoiceTriggerStatistics" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.VoiceTriggerStatistics" schema:v9 configuration:configurationForVoiceTriggerStatistics];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)TaskAggregation
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTaskAggregation = [self configurationForTaskAggregation];
  v3 = +[BMSiriTaskAggregation columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.TaskAggregation" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.TaskAggregation" schema:v9 configuration:configurationForTaskAggregation];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)SiriRequestCounts
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSiriRequestCounts = [self configurationForSiriRequestCounts];
  v3 = +[BMSiriRequestCounts columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.SiriRequestCounts" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.SiriRequestCounts" schema:v9 configuration:configurationForSiriRequestCounts];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Service
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForService = [self configurationForService];
  v3 = +[BMSiriService columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.Service" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.Service" schema:v9 configuration:configurationForService];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)RecognizedUser
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForRecognizedUser = [self configurationForRecognizedUser];
  v3 = +[BMSiriRecognizedUser columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.RecognizedUser" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.RecognizedUser" schema:v9 configuration:configurationForRecognizedUser];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)InferredHelpfulness
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForInferredHelpfulness = [self configurationForInferredHelpfulness];
  v3 = +[BMSiriInferredHelpfulness columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.InferredHelpfulness" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.InferredHelpfulness" schema:v9 configuration:configurationForInferredHelpfulness];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)AssistantSuggestionFeatures
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAssistantSuggestionFeatures = [self configurationForAssistantSuggestionFeatures];
  v3 = +[BMSiriAssistantSuggestionFeatures columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.AssistantSuggestionFeatures" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.AssistantSuggestionFeatures" schema:v9 configuration:configurationForAssistantSuggestionFeatures];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end