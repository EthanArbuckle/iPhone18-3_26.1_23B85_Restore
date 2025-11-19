@interface _BMTextUnderstandingDocumentUnderstandingLibraryNode
+ (id)Poem;
+ (id)PoemAnalytics;
+ (id)PoemBuffer;
+ (id)configurationForPoem;
+ (id)configurationForPoemAnalytics;
+ (id)configurationForPoemBuffer;
+ (id)storeConfigurationForPoem;
+ (id)storeConfigurationForPoemAnalytics;
+ (id)storeConfigurationForPoemBuffer;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMTextUnderstandingDocumentUnderstandingLibraryNode

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"Poem"])
  {
    v5 = [a1 Poem];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"PoemAnalytics"])
  {
    v5 = [a1 PoemAnalytics];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"PoemBuffer"])
  {
    v5 = [a1 PoemBuffer];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMTextUnderstandingPoem validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMTextUnderstandingPoemAnalytics validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMTextUnderstandingPoemBuffer validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

+ (id)configurationForPoemBuffer
{
  v3 = [a1 storeConfigurationForPoemBuffer];
  v4 = [a1 syncPolicyForPoemBuffer];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DA3E57AB-70D4-4A05-AADE-5D98466D9137"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"TextUnderstanding.DocumentUnderstanding.PoemBuffer" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPoemBuffer
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"TextUnderstanding.DocumentUnderstanding.PoemBuffer" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForPoemAnalytics
{
  v3 = [a1 storeConfigurationForPoemAnalytics];
  v4 = [a1 syncPolicyForPoemAnalytics];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"3E554CD4-21D8-41A4-8718-3659E4ED8B2D"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"TextUnderstanding.DocumentUnderstanding.PoemAnalytics" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPoemAnalytics
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"TextUnderstanding.DocumentUnderstanding.PoemAnalytics" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForPoem
{
  v3 = [a1 storeConfigurationForPoem];
  v4 = [a1 syncPolicyForPoem];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"6D346CE9-6964-4E1D-9031-74CA45BEE8C0"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"TextUnderstanding.DocumentUnderstanding.Poem" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPoem
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"TextUnderstanding.DocumentUnderstanding.Poem" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)PoemBuffer
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForPoemBuffer];
  v3 = +[BMTextUnderstandingPoemBuffer columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"TextUnderstanding.DocumentUnderstanding.PoemBuffer" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"TextUnderstanding.DocumentUnderstanding.PoemBuffer" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)PoemAnalytics
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForPoemAnalytics];
  v3 = +[BMTextUnderstandingPoemAnalytics columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"TextUnderstanding.DocumentUnderstanding.PoemAnalytics" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"TextUnderstanding.DocumentUnderstanding.PoemAnalytics" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Poem
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForPoem];
  v3 = +[BMTextUnderstandingPoem columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"TextUnderstanding.DocumentUnderstanding.Poem" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"TextUnderstanding.DocumentUnderstanding.Poem" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end