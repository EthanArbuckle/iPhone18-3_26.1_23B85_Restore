@interface _BMGenerativeExperiencesLibraryNode
+ (id)FailureTracking;
+ (id)GuardrailResult;
+ (id)PromptTags;
+ (id)TransparencyLog;
+ (id)configurationForFailureTracking;
+ (id)configurationForGuardrailResult;
+ (id)configurationForPromptTags;
+ (id)configurationForTransparencyLog;
+ (id)storeConfigurationForFailureTracking;
+ (id)storeConfigurationForGuardrailResult;
+ (id)storeConfigurationForPromptTags;
+ (id)storeConfigurationForTransparencyLog;
+ (id)streamWithName:(id)name;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMGenerativeExperiencesLibraryNode

+ (id)TransparencyLog
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTransparencyLog = [self configurationForTransparencyLog];
  v3 = +[BMGenerativeExperiencesTransparencyLog columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"GenerativeExperiences.TransparencyLog" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GenerativeExperiences.TransparencyLog" schema:v9 configuration:configurationForTransparencyLog];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForTransparencyLog
{
  storeConfigurationForTransparencyLog = [self storeConfigurationForTransparencyLog];
  syncPolicyForTransparencyLog = [self syncPolicyForTransparencyLog];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D80BEF5D-C1C8-48E4-8BE9-F05062A6CC4D"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GenerativeExperiences.TransparencyLog" eventClass:objc_opt_class() storeConfig:storeConfigurationForTransparencyLog syncPolicy:syncPolicyForTransparencyLog legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.AppleIntelligenceReport" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTransparencyLog
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:604800.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"GenerativeExperiences.TransparencyLog" domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)sublibraries
{
  v8[2] = *MEMORY[0x1E69E9840];
  generatedImageFeatures = [self GeneratedImageFeatures];
  v8[0] = generatedImageFeatures;
  writingToolsFeatures = [self WritingToolsFeatures];
  v8[1] = writingToolsFeatures;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)configurationForFailureTracking
{
  storeConfigurationForFailureTracking = [self storeConfigurationForFailureTracking];
  syncPolicyForFailureTracking = [self syncPolicyForFailureTracking];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E180C680-A5DE-4BA5-A376-DF1C18F41F62"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GenerativeExperiences.FailureTracking" eventClass:objc_opt_class() storeConfig:storeConfigurationForFailureTracking syncPolicy:syncPolicyForFailureTracking legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForFailureTracking
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"GenerativeExperiences.FailureTracking" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)GuardrailResult
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForGuardrailResult = [self configurationForGuardrailResult];
  v3 = +[BMGenerativeExperiencesGuardrailResult columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"GenerativeExperiences.GuardrailResult" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GenerativeExperiences.GuardrailResult" schema:v9 configuration:configurationForGuardrailResult];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)storeConfigurationForGuardrailResult
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"GenerativeExperiences.GuardrailResult" domain:1 segmentSize:0x40000 protectionClass:0 pruningPolicy:v3];

  return v4;
}

+ (id)PromptTags
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPromptTags = [self configurationForPromptTags];
  v3 = +[BMGenerativeExperiencesPromptTags columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"GenerativeExperiences.PromptTags" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GenerativeExperiences.PromptTags" schema:v9 configuration:configurationForPromptTags];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForPromptTags
{
  storeConfigurationForPromptTags = [self storeConfigurationForPromptTags];
  syncPolicyForPromptTags = [self syncPolicyForPromptTags];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"18424FEF-7218-4155-BD47-4CA5E3AEC82C"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GenerativeExperiences.PromptTags" eventClass:objc_opt_class() storeConfig:storeConfigurationForPromptTags syncPolicy:syncPolicyForPromptTags legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPromptTags
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:1209600.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"GenerativeExperiences.PromptTags" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)FailureTracking
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForFailureTracking = [self configurationForFailureTracking];
  v3 = +[BMGenerativeExperiencesFailureTracking columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"GenerativeExperiences.FailureTracking" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GenerativeExperiences.FailureTracking" schema:v9 configuration:configurationForFailureTracking];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForGuardrailResult
{
  storeConfigurationForGuardrailResult = [self storeConfigurationForGuardrailResult];
  syncPolicyForGuardrailResult = [self syncPolicyForGuardrailResult];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"2A663C6A-6BFF-46B2-8780-3C65344CF1AA"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GenerativeExperiences.GuardrailResult" eventClass:objc_opt_class() storeConfig:storeConfigurationForGuardrailResult syncPolicy:syncPolicyForGuardrailResult legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"FailureTracking"])
  {
    failureTracking = [self FailureTracking];
LABEL_9:
    v6 = failureTracking;
    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"GuardrailResult"])
  {
    failureTracking = [self GuardrailResult];
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"PromptTags"])
  {
    failureTracking = [self PromptTags];
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"TransparencyLog"])
  {
    failureTracking = [self TransparencyLog];
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMGenerativeExperiencesFailureTracking validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMGenerativeExperiencesGuardrailResult validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMGenerativeExperiencesPromptTags validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMGenerativeExperiencesTransparencyLog validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = [v2 copy];

  return v7;
}

@end