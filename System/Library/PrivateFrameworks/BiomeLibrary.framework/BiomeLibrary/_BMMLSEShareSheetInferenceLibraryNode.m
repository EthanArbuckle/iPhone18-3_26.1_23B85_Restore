@interface _BMMLSEShareSheetInferenceLibraryNode
+ (id)AppSuggestions;
+ (id)PeopleSuggestions;
+ (id)configurationForAppSuggestions;
+ (id)configurationForPeopleSuggestions;
+ (id)storeConfigurationForAppSuggestions;
+ (id)storeConfigurationForPeopleSuggestions;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMMLSEShareSheetInferenceLibraryNode

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"AppSuggestions"])
  {
    v5 = [a1 AppSuggestions];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"PeopleSuggestions"])
  {
    v5 = [a1 PeopleSuggestions];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMLSEShareSheetInferenceAppSuggestions validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMMLSEShareSheetInferencePeopleSuggestions validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (id)configurationForPeopleSuggestions
{
  v3 = [a1 storeConfigurationForPeopleSuggestions];
  v4 = [a1 syncPolicyForPeopleSuggestions];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"77F2C2B4-16EE-4209-AEC3-E5AC291106AE"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"MLSE.ShareSheet.Inference.PeopleSuggestions" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPeopleSuggestions
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"MLSE.ShareSheet.Inference.PeopleSuggestions" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForAppSuggestions
{
  v3 = [a1 storeConfigurationForAppSuggestions];
  v4 = [a1 syncPolicyForAppSuggestions];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"EE433BE4-CA8F-4797-A820-C381AF699C7C"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"MLSE.ShareSheet.Inference.AppSuggestions" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAppSuggestions
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"MLSE.ShareSheet.Inference.AppSuggestions" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)PeopleSuggestions
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForPeopleSuggestions];
  v3 = +[BMMLSEShareSheetInferencePeopleSuggestions columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"MLSE.ShareSheet.Inference.PeopleSuggestions" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"MLSE.ShareSheet.Inference.PeopleSuggestions" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)AppSuggestions
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForAppSuggestions];
  v3 = +[BMMLSEShareSheetInferenceAppSuggestions columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"MLSE.ShareSheet.Inference.AppSuggestions" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"MLSE.ShareSheet.Inference.AppSuggestions" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end