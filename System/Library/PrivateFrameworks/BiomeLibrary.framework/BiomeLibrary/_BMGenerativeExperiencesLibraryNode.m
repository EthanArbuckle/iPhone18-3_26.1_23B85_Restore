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
+ (id)streamWithName:(id)a3;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMGenerativeExperiencesLibraryNode

+ (id)TransparencyLog
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForTransparencyLog];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GenerativeExperiences.TransparencyLog" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForTransparencyLog
{
  v3 = [a1 storeConfigurationForTransparencyLog];
  v4 = [a1 syncPolicyForTransparencyLog];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D80BEF5D-C1C8-48E4-8BE9-F05062A6CC4D"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GenerativeExperiences.TransparencyLog" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.AppleIntelligenceReport" pruningTriggers:? spaceAttributionOwner:?];

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
  v3 = [a1 GeneratedImageFeatures];
  v8[0] = v3;
  v4 = [a1 WritingToolsFeatures];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)configurationForFailureTracking
{
  v3 = [a1 storeConfigurationForFailureTracking];
  v4 = [a1 syncPolicyForFailureTracking];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E180C680-A5DE-4BA5-A376-DF1C18F41F62"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GenerativeExperiences.FailureTracking" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForGuardrailResult];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GenerativeExperiences.GuardrailResult" schema:v9 configuration:v2];

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
  v2 = [a1 configurationForPromptTags];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GenerativeExperiences.PromptTags" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForPromptTags
{
  v3 = [a1 storeConfigurationForPromptTags];
  v4 = [a1 syncPolicyForPromptTags];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"18424FEF-7218-4155-BD47-4CA5E3AEC82C"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GenerativeExperiences.PromptTags" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

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
  v2 = [a1 configurationForFailureTracking];
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
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"GenerativeExperiences.FailureTracking" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForGuardrailResult
{
  v3 = [a1 storeConfigurationForGuardrailResult];
  v4 = [a1 syncPolicyForGuardrailResult];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"2A663C6A-6BFF-46B2-8780-3C65344CF1AA"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"GenerativeExperiences.GuardrailResult" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"FailureTracking"])
  {
    v5 = [a1 FailureTracking];
LABEL_9:
    v6 = v5;
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"GuardrailResult"])
  {
    v5 = [a1 GuardrailResult];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"PromptTags"])
  {
    v5 = [a1 PromptTags];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"TransparencyLog"])
  {
    v5 = [a1 TransparencyLog];
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