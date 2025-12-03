@interface _BMSpringBoardDominoLibraryNode
+ (id)StackRotation;
+ (id)ViewAppearance;
+ (id)WidgetTap;
+ (id)configurationForStackRotation;
+ (id)configurationForViewAppearance;
+ (id)configurationForWidgetTap;
+ (id)storeConfigurationForStackRotation;
+ (id)storeConfigurationForViewAppearance;
+ (id)storeConfigurationForWidgetTap;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMSpringBoardDominoLibraryNode

+ (id)ViewAppearance
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForViewAppearance = [self configurationForViewAppearance];
  v3 = +[BMSpringBoardDominoViewAppearance columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"SpringBoard.Domino.ViewAppearance" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SpringBoard.Domino.ViewAppearance" schema:v9 configuration:configurationForViewAppearance];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)WidgetTap
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForWidgetTap = [self configurationForWidgetTap];
  v3 = +[BMSpringBoardDominoWidgetTap columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"SpringBoard.Domino.WidgetTap" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SpringBoard.Domino.WidgetTap" schema:v9 configuration:configurationForWidgetTap];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)StackRotation
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForStackRotation = [self configurationForStackRotation];
  v3 = +[BMSpringBoardDominoStackRotation columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"SpringBoard.Domino.StackRotation" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"SpringBoard.Domino.StackRotation" schema:v9 configuration:configurationForStackRotation];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForStackRotation
{
  storeConfigurationForStackRotation = [self storeConfigurationForStackRotation];
  syncPolicyForStackRotation = [self syncPolicyForStackRotation];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D6EEBB33-D861-4F09-916F-D62B9F6EB258"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SpringBoard.Domino.StackRotation" eventClass:objc_opt_class() storeConfig:storeConfigurationForStackRotation syncPolicy:syncPolicyForStackRotation legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForStackRotation
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"SpringBoard.Domino.StackRotation" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForViewAppearance
{
  storeConfigurationForViewAppearance = [self storeConfigurationForViewAppearance];
  syncPolicyForViewAppearance = [self syncPolicyForViewAppearance];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"8C5D6487-7756-4AE1-B234-1474AE7EB921"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SpringBoard.Domino.ViewAppearance" eventClass:objc_opt_class() storeConfig:storeConfigurationForViewAppearance syncPolicy:syncPolicyForViewAppearance legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForViewAppearance
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"SpringBoard.Domino.ViewAppearance" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForWidgetTap
{
  storeConfigurationForWidgetTap = [self storeConfigurationForWidgetTap];
  syncPolicyForWidgetTap = [self syncPolicyForWidgetTap];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C9269789-2CDD-4734-8876-0634E60A76D8"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"SpringBoard.Domino.WidgetTap" eventClass:objc_opt_class() storeConfig:storeConfigurationForWidgetTap syncPolicy:syncPolicyForWidgetTap legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForWidgetTap
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"SpringBoard.Domino.WidgetTap" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"StackRotation"])
  {
    stackRotation = [self StackRotation];
LABEL_7:
    v6 = stackRotation;
    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"ViewAppearance"])
  {
    stackRotation = [self ViewAppearance];
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"WidgetTap"])
  {
    stackRotation = [self WidgetTap];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSpringBoardDominoStackRotation validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMSpringBoardDominoViewAppearance validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMSpringBoardDominoWidgetTap validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

@end