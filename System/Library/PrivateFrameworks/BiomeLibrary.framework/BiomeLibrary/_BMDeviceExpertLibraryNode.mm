@interface _BMDeviceExpertLibraryNode
+ (id)Troubleshooting;
+ (id)configurationForTroubleshooting;
+ (id)storeConfigurationForTroubleshooting;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMDeviceExpertLibraryNode

+ (id)configurationForTroubleshooting
{
  storeConfigurationForTroubleshooting = [self storeConfigurationForTroubleshooting];
  syncPolicyForTroubleshooting = [self syncPolicyForTroubleshooting];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"889B6472-601D-4CC7-AD96-2D77DEA980E1"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"DeviceExpert.Troubleshooting" eventClass:objc_opt_class() storeConfig:storeConfigurationForTroubleshooting syncPolicy:syncPolicyForTroubleshooting legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)Troubleshooting
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForTroubleshooting = [self configurationForTroubleshooting];
  v3 = +[BMDeviceExpertTroubleshooting columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"DeviceExpert.Troubleshooting" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"DeviceExpert.Troubleshooting" schema:v9 configuration:configurationForTroubleshooting];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)storeConfigurationForTroubleshooting
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:100000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"DeviceExpert.Troubleshooting" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Troubleshooting"])
  {
    troubleshooting = [self Troubleshooting];
  }

  else
  {
    troubleshooting = 0;
  }

  return troubleshooting;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMDeviceExpertTroubleshooting validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end