@interface _BMTrialExperimentLibraryNode
+ (id)NamespaceUpdates;
+ (id)configurationForNamespaceUpdates;
+ (id)storeConfigurationForNamespaceUpdates;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMTrialExperimentLibraryNode

+ (id)streamWithName:(id)a3
{
  if ([a3 isEqualToString:@"NamespaceUpdates"])
  {
    v4 = [a1 NamespaceUpdates];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMTrialNamespaceUpdates validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForNamespaceUpdates
{
  v3 = [a1 storeConfigurationForNamespaceUpdates];
  v4 = [a1 syncPolicyForNamespaceUpdates];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DBD6E49F-36D5-4E40-9D33-10A5C6DB37F7"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Trial.Experiment.NamespaceUpdates" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.triald" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForNamespaceUpdates
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:63072000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Trial.Experiment.NamespaceUpdates" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)NamespaceUpdates
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForNamespaceUpdates];
  v3 = +[BMTrialNamespaceUpdates columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Trial.Experiment.NamespaceUpdates" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Trial.Experiment.NamespaceUpdates" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end