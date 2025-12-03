@interface _BMFeedbackLibraryNode
+ (id)EvaluationResponse;
+ (id)TextImageToImageEvaluationData;
+ (id)TextToImageEvaluationData;
+ (id)TextToTextEvaluationData;
+ (id)configurationForEvaluationResponse;
+ (id)configurationForTextImageToImageEvaluationData;
+ (id)configurationForTextToImageEvaluationData;
+ (id)configurationForTextToTextEvaluationData;
+ (id)storeConfigurationForEvaluationResponse;
+ (id)storeConfigurationForTextImageToImageEvaluationData;
+ (id)storeConfigurationForTextToImageEvaluationData;
+ (id)storeConfigurationForTextToTextEvaluationData;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMFeedbackLibraryNode

+ (id)storeConfigurationForEvaluationResponse
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Feedback.EvaluationResponse" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)EvaluationResponse
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForEvaluationResponse = [self configurationForEvaluationResponse];
  v3 = +[BMFeedbackEvaluationResponse columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Feedback.EvaluationResponse" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Feedback.EvaluationResponse" schema:v9 configuration:configurationForEvaluationResponse];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForEvaluationResponse
{
  storeConfigurationForEvaluationResponse = [self storeConfigurationForEvaluationResponse];
  syncPolicyForEvaluationResponse = [self syncPolicyForEvaluationResponse];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B88AA895-D8F1-4CB8-983E-4CD272F3D93E"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Feedback.EvaluationResponse" eventClass:objc_opt_class() storeConfig:storeConfigurationForEvaluationResponse syncPolicy:syncPolicyForEvaluationResponse legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)TextImageToImageEvaluationData
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTextImageToImageEvaluationData = [self configurationForTextImageToImageEvaluationData];
  v3 = +[BMFeedbackTextImageToImageEvaluationData columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Feedback.TextImageToImageEvaluationData" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Feedback.TextImageToImageEvaluationData" schema:v9 configuration:configurationForTextImageToImageEvaluationData];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)storeConfigurationForTextImageToImageEvaluationData
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Feedback.TextImageToImageEvaluationData" domain:0 segmentSize:0x100000 protectionClass:2 pruningPolicy:v2];

  return v3;
}

+ (id)storeConfigurationForTextToImageEvaluationData
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Feedback.TextToImageEvaluationData" domain:0 segmentSize:0x100000 protectionClass:2 pruningPolicy:v2];

  return v3;
}

+ (id)TextToImageEvaluationData
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTextToImageEvaluationData = [self configurationForTextToImageEvaluationData];
  v3 = +[BMFeedbackTextToImageEvaluationData columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Feedback.TextToImageEvaluationData" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Feedback.TextToImageEvaluationData" schema:v9 configuration:configurationForTextToImageEvaluationData];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForTextToImageEvaluationData
{
  storeConfigurationForTextToImageEvaluationData = [self storeConfigurationForTextToImageEvaluationData];
  syncPolicyForTextToImageEvaluationData = [self syncPolicyForTextToImageEvaluationData];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DBE2E2CE-C003-4116-BFCC-02DAC557A569"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Feedback.TextToImageEvaluationData" eventClass:objc_opt_class() storeConfig:storeConfigurationForTextToImageEvaluationData syncPolicy:syncPolicyForTextToImageEvaluationData legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)TextToTextEvaluationData
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTextToTextEvaluationData = [self configurationForTextToTextEvaluationData];
  v3 = +[BMFeedbackTextToTextEvaluationData columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Feedback.TextToTextEvaluationData" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Feedback.TextToTextEvaluationData" schema:v9 configuration:configurationForTextToTextEvaluationData];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)storeConfigurationForTextToTextEvaluationData
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Feedback.TextToTextEvaluationData" domain:0 segmentSize:0x100000 protectionClass:2 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForTextImageToImageEvaluationData
{
  storeConfigurationForTextImageToImageEvaluationData = [self storeConfigurationForTextImageToImageEvaluationData];
  syncPolicyForTextImageToImageEvaluationData = [self syncPolicyForTextImageToImageEvaluationData];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5E1FAC51-8912-4FE7-BA6E-7071A4241966"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Feedback.TextImageToImageEvaluationData" eventClass:objc_opt_class() storeConfig:storeConfigurationForTextImageToImageEvaluationData syncPolicy:syncPolicyForTextImageToImageEvaluationData legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)configurationForTextToTextEvaluationData
{
  storeConfigurationForTextToTextEvaluationData = [self storeConfigurationForTextToTextEvaluationData];
  syncPolicyForTextToTextEvaluationData = [self syncPolicyForTextToTextEvaluationData];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"3E98CDE2-2C6B-4F4A-99AA-99D433B3191C"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Feedback.TextToTextEvaluationData" eventClass:objc_opt_class() storeConfig:storeConfigurationForTextToTextEvaluationData syncPolicy:syncPolicyForTextToTextEvaluationData legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"EvaluationResponse"])
  {
    evaluationResponse = [self EvaluationResponse];
LABEL_9:
    v6 = evaluationResponse;
    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"TextImageToImageEvaluationData"])
  {
    evaluationResponse = [self TextImageToImageEvaluationData];
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"TextToImageEvaluationData"])
  {
    evaluationResponse = [self TextToImageEvaluationData];
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"TextToTextEvaluationData"])
  {
    evaluationResponse = [self TextToTextEvaluationData];
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMFeedbackEvaluationResponse validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMFeedbackTextImageToImageEvaluationData validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMFeedbackTextToImageEvaluationData validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMFeedbackTextToTextEvaluationData validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = [v2 copy];

  return v7;
}

@end