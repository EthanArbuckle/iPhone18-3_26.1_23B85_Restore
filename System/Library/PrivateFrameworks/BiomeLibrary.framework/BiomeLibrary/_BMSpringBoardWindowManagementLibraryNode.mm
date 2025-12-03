@interface _BMSpringBoardWindowManagementLibraryNode
+ (id)StageManagerMode;
+ (id)configurationForStageManagerMode;
+ (id)storeConfigurationForStageManagerMode;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMSpringBoardWindowManagementLibraryNode

+ (id)StageManagerMode
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForStageManagerMode = [self configurationForStageManagerMode];
  v3 = +[BMSpringBoardStageManagerMode columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"SpringBoard.WindowManagement.StageManagerMode" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SpringBoard.WindowManagement.StageManagerMode" schema:v9 configuration:configurationForStageManagerMode];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForStageManagerMode
{
  storeConfigurationForStageManagerMode = [self storeConfigurationForStageManagerMode];
  syncPolicyForStageManagerMode = [self syncPolicyForStageManagerMode];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1D0A6EA6-B6F7-4306-8BCE-9171156B052A"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SpringBoard.WindowManagement.StageManagerMode" eventClass:objc_opt_class() storeConfig:storeConfigurationForStageManagerMode syncPolicy:syncPolicyForStageManagerMode legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForStageManagerMode
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"SpringBoard.WindowManagement.StageManagerMode" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"StageManagerMode"])
  {
    stageManagerMode = [self StageManagerMode];
  }

  else
  {
    stageManagerMode = 0;
  }

  return stageManagerMode;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSpringBoardStageManagerMode validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end