@interface _BMMediaAnalysisVideoAnalysisLibraryNode
+ (id)PerAsset;
+ (id)PerLibrary;
+ (id)configurationForPerAsset;
+ (id)configurationForPerLibrary;
+ (id)storeConfigurationForPerAsset;
+ (id)storeConfigurationForPerLibrary;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMMediaAnalysisVideoAnalysisLibraryNode

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"PerAsset"])
  {
    perAsset = [self PerAsset];
LABEL_5:
    v6 = perAsset;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"PerLibrary"])
  {
    perAsset = [self PerLibrary];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMediaAnalysisPerAsset validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMMediaAnalysisPerLibrary validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (id)configurationForPerLibrary
{
  storeConfigurationForPerLibrary = [self storeConfigurationForPerLibrary];
  syncPolicyForPerLibrary = [self syncPolicyForPerLibrary];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9E33625B-B1D2-4580-98B8-BA493575E321"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"MediaAnalysis.VideoAnalysis.PerLibrary" eventClass:objc_opt_class() storeConfig:storeConfigurationForPerLibrary syncPolicy:syncPolicyForPerLibrary legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPerLibrary
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"MediaAnalysis.VideoAnalysis.PerLibrary" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)configurationForPerAsset
{
  storeConfigurationForPerAsset = [self storeConfigurationForPerAsset];
  syncPolicyForPerAsset = [self syncPolicyForPerAsset];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"2DF8A203-72BF-4B22-AC5F-145A1AF5810A"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"MediaAnalysis.VideoAnalysis.PerAsset" eventClass:objc_opt_class() storeConfig:storeConfigurationForPerAsset syncPolicy:syncPolicyForPerAsset legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPerAsset
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"MediaAnalysis.VideoAnalysis.PerAsset" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)PerLibrary
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPerLibrary = [self configurationForPerLibrary];
  v3 = +[BMMediaAnalysisPerLibrary columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"MediaAnalysis.VideoAnalysis.PerLibrary" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"MediaAnalysis.VideoAnalysis.PerLibrary" schema:v9 configuration:configurationForPerLibrary];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)PerAsset
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPerAsset = [self configurationForPerAsset];
  v3 = +[BMMediaAnalysisPerAsset columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"MediaAnalysis.VideoAnalysis.PerAsset" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"MediaAnalysis.VideoAnalysis.PerAsset" schema:v9 configuration:configurationForPerAsset];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end