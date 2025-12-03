@interface _BMMapsShareLibraryNode
+ (id)ETAFeedback;
+ (id)configurationForETAFeedback;
+ (id)storeConfigurationForETAFeedback;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMMapsShareLibraryNode

+ (id)ETAFeedback
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForETAFeedback = [self configurationForETAFeedback];
  v3 = +[BMMapsShareETAFeedback columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"MapsShare.ETAFeedback" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"MapsShare.ETAFeedback" schema:v9 configuration:configurationForETAFeedback];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForETAFeedback
{
  storeConfigurationForETAFeedback = [self storeConfigurationForETAFeedback];
  syncPolicyForETAFeedback = [self syncPolicyForETAFeedback];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"584105F6-EA3C-4EC9-B8AF-B33AA95D9CB2"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"MapsShare.ETAFeedback" eventClass:objc_opt_class() storeConfig:storeConfigurationForETAFeedback syncPolicy:syncPolicyForETAFeedback legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForETAFeedback
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:14515200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"MapsShare.ETAFeedback" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"ETAFeedback"])
  {
    eTAFeedback = [self ETAFeedback];
  }

  else
  {
    eTAFeedback = 0;
  }

  return eTAFeedback;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMapsShareETAFeedback validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end