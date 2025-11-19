@interface _BMMapsLibraryNode
+ (id)Navigation;
+ (id)configurationForNavigation;
+ (id)storeConfigurationForNavigation;
+ (id)streamWithName:(id)a3;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMMapsLibraryNode

+ (id)sublibraries
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 ShareEta];
  v8[0] = v3;
  v4 = [a1 Suggestions];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)streamWithName:(id)a3
{
  if ([a3 isEqualToString:@"Navigation"])
  {
    v4 = [a1 Navigation];
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
  v3 = +[BMMapsNavigation validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

+ (id)configurationForNavigation
{
  v3 = [a1 storeConfigurationForNavigation];
  v4 = [a1 syncPolicyForNavigation];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DF5B3431-F879-414C-94C7-FD334CF966E2"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Maps.Navigation" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForNavigation
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:5242880 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Maps.Navigation" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)Navigation
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForNavigation];
  v3 = +[BMMapsNavigation columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Maps.Navigation" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Maps.Navigation" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end