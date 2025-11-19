@interface _BMMLSEShareSheetLibraryNode
+ (id)ConversationUserInteraction;
+ (id)DurableFeatureStore;
+ (id)Feedback;
+ (id)LabeledDataStore;
+ (id)PeopleSuggestionsMetricsStore;
+ (id)VirtualFeatureStore;
+ (id)configurationForConversationUserInteraction;
+ (id)configurationForDurableFeatureStore;
+ (id)configurationForFeedback;
+ (id)configurationForLabeledDataStore;
+ (id)configurationForPeopleSuggestionsMetricsStore;
+ (id)configurationForVirtualFeatureStore;
+ (id)storeConfigurationForConversationUserInteraction;
+ (id)storeConfigurationForDurableFeatureStore;
+ (id)storeConfigurationForFeedback;
+ (id)storeConfigurationForLabeledDataStore;
+ (id)storeConfigurationForPeopleSuggestionsMetricsStore;
+ (id)storeConfigurationForVirtualFeatureStore;
+ (id)streamWithName:(id)a3;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMMLSEShareSheetLibraryNode

+ (id)sublibraries
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 Inference];
  v8[0] = v3;
  v4 = [a1 Metrics];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"ConversationUserInteraction"])
  {
    v5 = [a1 ConversationUserInteraction];
LABEL_13:
    v6 = v5;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"DurableFeatureStore"])
  {
    v5 = [a1 DurableFeatureStore];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"Feedback"])
  {
    v5 = [a1 Feedback];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"LabeledDataStore"])
  {
    v5 = [a1 LabeledDataStore];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"PeopleSuggestionsMetricsStore"])
  {
    v5 = [a1 PeopleSuggestionsMetricsStore];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"VirtualFeatureStore"])
  {
    v5 = [a1 VirtualFeatureStore];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMLSEConversationUserInteraction validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMMLSEDurableFeatureStore validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMMLSEShareSheetFeedback validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMMLSELabeledDataStore validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMMLSEPeopleSuggestionsMetricsStore validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMMLSEVirtualFeatureStore validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = [v2 copy];

  return v9;
}

+ (id)configurationForVirtualFeatureStore
{
  v3 = [a1 storeConfigurationForVirtualFeatureStore];
  v4 = [a1 syncPolicyForVirtualFeatureStore];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9FCB9545-A0B1-411E-9A64-19461E3008DE"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"MLSE.ShareSheet.VirtualFeatureStore" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForVirtualFeatureStore
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"MLSE.ShareSheet.VirtualFeatureStore" domain:0 segmentSize:0x200000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForPeopleSuggestionsMetricsStore
{
  v3 = [a1 storeConfigurationForPeopleSuggestionsMetricsStore];
  v4 = [a1 syncPolicyForPeopleSuggestionsMetricsStore];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DEEC2B98-B758-4A6F-99E4-EA6E3ACEB4AD"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"MLSE.ShareSheet.PeopleSuggestionsMetricsStore" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPeopleSuggestionsMetricsStore
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"MLSE.ShareSheet.PeopleSuggestionsMetricsStore" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForLabeledDataStore
{
  v3 = [a1 storeConfigurationForLabeledDataStore];
  v4 = [a1 syncPolicyForLabeledDataStore];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"430149E5-857B-45D3-AE56-E0BC709329CE"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"MLSE.ShareSheet.LabeledDataStore" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForLabeledDataStore
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:30000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"MLSE.ShareSheet.LabeledDataStore" domain:0 segmentSize:0x200000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForFeedback
{
  v3 = [a1 storeConfigurationForFeedback];
  v4 = [a1 syncPolicyForFeedback];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E7B0B540-24DC-4A28-B82A-C4885124C6C7"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"MLSE.ShareSheet.Feedback" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForFeedback
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"MLSE.ShareSheet.Feedback" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForDurableFeatureStore
{
  v3 = [a1 storeConfigurationForDurableFeatureStore];
  v4 = [a1 syncPolicyForDurableFeatureStore];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1A32CA36-C398-4658-BCE5-6DB72241A708"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"MLSE.ShareSheet.DurableFeatureStore" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForDurableFeatureStore
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"MLSE.ShareSheet.DurableFeatureStore" domain:0 segmentSize:0x200000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForConversationUserInteraction
{
  v21[3] = *MEMORY[0x1E69E9840];
  v3 = [a1 storeConfigurationForConversationUserInteraction];
  v4 = [a1 syncPolicyForConversationUserInteraction];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$uninstalled == bundleID" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"app-uninstall" predicate:v6];
  v21[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT bundleID IN $installed" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"app-uninstall-nightly" predicate:v9];
  v21[1] = v10;
  v11 = objc_alloc(MEMORY[0x1E698F330]);
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleID IN $disabledApps" argumentArray:0];
  v13 = [v11 initWithIdentifier:@"learn-from-this-app" predicate:v12];
  v21[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];

  v15 = MEMORY[0x1E698F338];
  v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B68950B3-B5B5-412A-82D6-1D45539F6089"];
  BYTE2(v20) = 0;
  LOWORD(v20) = 1;
  v17 = [v15 _libraryStreamConfigurationWithUUID:v16 streamIdentifier:@"MLSE.ShareSheet.ConversationUserInteraction" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v20 enableSubscriptionSubstream:0 enableTombstoneSubstream:v14 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)storeConfigurationForConversationUserInteraction
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0x100000 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"MLSE.ShareSheet.ConversationUserInteraction" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)VirtualFeatureStore
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForVirtualFeatureStore];
  v3 = +[BMMLSEVirtualFeatureStore columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"MLSE.ShareSheet.VirtualFeatureStore" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"MLSE.ShareSheet.VirtualFeatureStore" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)PeopleSuggestionsMetricsStore
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForPeopleSuggestionsMetricsStore];
  v3 = +[BMMLSEPeopleSuggestionsMetricsStore columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"MLSE.ShareSheet.PeopleSuggestionsMetricsStore" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"MLSE.ShareSheet.PeopleSuggestionsMetricsStore" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)LabeledDataStore
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForLabeledDataStore];
  v3 = +[BMMLSELabeledDataStore columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"MLSE.ShareSheet.LabeledDataStore" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"MLSE.ShareSheet.LabeledDataStore" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Feedback
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForFeedback];
  v3 = +[BMMLSEShareSheetFeedback columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"MLSE.ShareSheet.Feedback" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"MLSE.ShareSheet.Feedback" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)DurableFeatureStore
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForDurableFeatureStore];
  v3 = +[BMMLSEDurableFeatureStore columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"MLSE.ShareSheet.DurableFeatureStore" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"MLSE.ShareSheet.DurableFeatureStore" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)ConversationUserInteraction
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForConversationUserInteraction];
  v3 = +[BMMLSEConversationUserInteraction columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"MLSE.ShareSheet.ConversationUserInteraction" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"MLSE.ShareSheet.ConversationUserInteraction" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end