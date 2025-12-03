@interface _BMIntelligenceFlowTranscriptLibraryNode
+ (id)Datastream;
+ (id)configurationForDatastream;
+ (id)storeConfigurationForDatastream;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMIntelligenceFlowTranscriptLibraryNode

+ (id)configurationForDatastream
{
  storeConfigurationForDatastream = [self storeConfigurationForDatastream];
  syncPolicyForDatastream = [self syncPolicyForDatastream];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BD282BB0-1D42-4EED-92EA-978297F981E7"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"IntelligenceFlow.Transcript.Datastream" eventClass:objc_opt_class() storeConfig:storeConfigurationForDatastream syncPolicy:syncPolicyForDatastream legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.intelligenceflow.intelligenceflowd" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForDatastream
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:604800.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"IntelligenceFlow.Transcript.Datastream" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Datastream
{
  v21[3] = *MEMORY[0x1E69E9840];
  configurationForDatastream = [self configurationForDatastream];
  v3 = +[BMIntelligenceFlowTranscriptDatastreamEvent columns];
  v4 = BMEventTimestampSQLColumn();
  v21[0] = v4;
  v5 = BMEventBodyDataSQLColumn();
  v21[1] = v5;
  v6 = BMEventClassNameSQLColumn();
  v21[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = BMEventBookmarkSQLColumns();
  v10 = [v8 arrayByAddingObjectsFromArray:v9];

  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifiers.clientSessionId" dataType:2 requestOnly:1 fieldPath:&unk_1EF3EC858 protoDataType:13 convertedType:0];
  v20[0] = v11;
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifiers.clientRequestId" dataType:2 requestOnly:1 fieldPath:&unk_1EF3EC870 protoDataType:13 convertedType:0];
  v20[1] = v12;
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifiers.sessionId" dataType:6 requestOnly:1 fieldPath:&unk_1EF3EC888 protoDataType:14 convertedType:3];
  v20[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v15 = [v10 arrayByAddingObjectsFromArray:v14];

  v16 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"IntelligenceFlow.Transcript.Datastream" columns:v15];
  v17 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"IntelligenceFlow.Transcript.Datastream" schema:v16 configuration:configurationForDatastream];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Datastream"])
  {
    datastream = [self Datastream];
  }

  else
  {
    datastream = 0;
  }

  return datastream;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMIntelligenceFlowTranscriptDatastreamEvent validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end