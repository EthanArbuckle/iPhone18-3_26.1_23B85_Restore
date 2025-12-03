@interface _BMAppleIntelligenceLibraryNode
+ (id)Availability;
+ (id)configurationForAvailability;
+ (id)storeConfigurationForAvailability;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMAppleIntelligenceLibraryNode

+ (id)Availability
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForAvailability = [self configurationForAvailability];
  v3 = +[BMAppleIntelligenceAvailability columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"AppleIntelligence.Availability" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"AppleIntelligence.Availability" schema:v9 configuration:configurationForAvailability];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForAvailability
{
  storeConfigurationForAvailability = [self storeConfigurationForAvailability];
  syncPolicyForAvailability = [self syncPolicyForAvailability];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A1447F72-0E3D-45E8-92A4-C2F2D11485C8"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"AppleIntelligence.Availability" eventClass:objc_opt_class() storeConfig:storeConfigurationForAvailability syncPolicy:syncPolicyForAvailability legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAvailability
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"AppleIntelligence.Availability" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Availability"])
  {
    availability = [self Availability];
  }

  else
  {
    availability = 0;
  }

  return availability;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMAppleIntelligenceAvailability validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end