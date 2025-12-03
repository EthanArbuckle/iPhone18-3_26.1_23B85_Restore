@interface _BMLocationMicroLocationLibraryNode
+ (id)Localization;
+ (id)TruthTag;
+ (id)configurationForLocalization;
+ (id)configurationForTruthTag;
+ (id)storeConfigurationForLocalization;
+ (id)storeConfigurationForTruthTag;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMLocationMicroLocationLibraryNode

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Localization"])
  {
    localization = [self Localization];
LABEL_5:
    v6 = localization;
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"TruthTag"])
  {
    localization = [self TruthTag];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMicroLocationLocalization validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMMicroLocationTruthTag validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = [v2 copy];

  return v5;
}

+ (id)configurationForTruthTag
{
  storeConfigurationForTruthTag = [self storeConfigurationForTruthTag];
  syncPolicyForTruthTag = [self syncPolicyForTruthTag];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BCE11012-4CD2-4DB8-932C-AEA6906FA9F1"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Location.MicroLocation.TruthTag" eventClass:objc_opt_class() storeConfig:storeConfigurationForTruthTag syncPolicy:syncPolicyForTruthTag legacyNames:&unk_1EF3EAE18 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForTruthTag
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Location.MicroLocation.TruthTag" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForLocalization
{
  storeConfigurationForLocalization = [self storeConfigurationForLocalization];
  syncPolicyForLocalization = [self syncPolicyForLocalization];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0A504BD2-BD70-4EEE-80C8-42B3A59CAE96"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Location.MicroLocation.Localization" eventClass:objc_opt_class() storeConfig:storeConfigurationForLocalization syncPolicy:syncPolicyForLocalization legacyNames:&unk_1EF3EAE00 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForLocalization
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Location.MicroLocation.Localization" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)TruthTag
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTruthTag = [self configurationForTruthTag];
  v3 = +[BMMicroLocationTruthTag columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Location.MicroLocation.TruthTag" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Location.MicroLocation.TruthTag" schema:v9 configuration:configurationForTruthTag];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Localization
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForLocalization = [self configurationForLocalization];
  v3 = +[BMMicroLocationLocalization columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Location.MicroLocation.Localization" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Location.MicroLocation.Localization" schema:v9 configuration:configurationForLocalization];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end