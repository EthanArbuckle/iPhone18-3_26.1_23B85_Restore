@interface _BMDeviceNetworkingLibraryNode
+ (id)EdgeSelection;
+ (id)configurationForEdgeSelection;
+ (id)storeConfigurationForEdgeSelection;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMDeviceNetworkingLibraryNode

+ (id)EdgeSelection
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForEdgeSelection = [self configurationForEdgeSelection];
  v3 = +[BMDeviceEdgeSelection columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Device.Networking.EdgeSelection" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Device.Networking.EdgeSelection" schema:v9 configuration:configurationForEdgeSelection];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForEdgeSelection
{
  storeConfigurationForEdgeSelection = [self storeConfigurationForEdgeSelection];
  syncPolicyForEdgeSelection = [self syncPolicyForEdgeSelection];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"23633610-77A2-4538-A579-1EF78456EDDC"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Device.Networking.EdgeSelection" eventClass:objc_opt_class() storeConfig:storeConfigurationForEdgeSelection syncPolicy:syncPolicyForEdgeSelection legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForEdgeSelection
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Device.Networking.EdgeSelection" domain:1 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"EdgeSelection"])
  {
    edgeSelection = [self EdgeSelection];
  }

  else
  {
    edgeSelection = 0;
  }

  return edgeSelection;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMDeviceEdgeSelection validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end