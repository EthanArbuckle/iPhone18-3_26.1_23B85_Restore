@interface _BMAppIntentsLibraryNode
+ (id)Transcript;
+ (id)configurationForTranscript;
+ (id)storeConfigurationForTranscript;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMAppIntentsLibraryNode

+ (id)Transcript
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTranscript = [self configurationForTranscript];
  v3 = +[BMAppIntentInvocation columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"App.Intents.Transcript" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"App.Intents.Transcript" schema:v9 configuration:configurationForTranscript];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForTranscript
{
  storeConfigurationForTranscript = [self storeConfigurationForTranscript];
  syncPolicyForTranscript = [self syncPolicyForTranscript];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B883B95C-4835-4BC3-A9C9-CFF5AC181283"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"App.Intents.Transcript" eventClass:objc_opt_class() storeConfig:storeConfigurationForTranscript syncPolicy:syncPolicyForTranscript legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTranscript
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"App.Intents.Transcript" domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v2];

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
  v3 = +[BMAppIntentInvocation validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end