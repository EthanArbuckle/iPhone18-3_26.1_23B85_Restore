@interface _BMSageLibraryNode
+ (id)Transcript;
+ (id)configurationForTranscript;
+ (id)storeConfigurationForTranscript;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMSageLibraryNode

+ (id)Transcript
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTranscript = [self configurationForTranscript];
  v3 = +[BMSageTranscript columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Sage.Transcript" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Sage.Transcript" schema:v9 configuration:configurationForTranscript];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForTranscript
{
  storeConfigurationForTranscript = [self storeConfigurationForTranscript];
  syncPolicyForTranscript = [self syncPolicyForTranscript];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"43D0B640-3E84-4752-A4E7-04DA7F281F47"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Sage.Transcript" eventClass:objc_opt_class() storeConfig:storeConfigurationForTranscript syncPolicy:syncPolicyForTranscript legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTranscript
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:604800.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Sage.Transcript" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Transcript"])
  {
    transcript = [self Transcript];
  }

  else
  {
    transcript = 0;
  }

  return transcript;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSageTranscript validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end