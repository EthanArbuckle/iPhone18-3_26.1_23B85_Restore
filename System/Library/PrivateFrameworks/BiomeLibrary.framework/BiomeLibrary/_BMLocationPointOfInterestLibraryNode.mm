@interface _BMLocationPointOfInterestLibraryNode
+ (id)Category;
+ (id)configurationForCategory;
+ (id)storeConfigurationForCategory;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMLocationPointOfInterestLibraryNode

+ (id)Category
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForCategory = [self configurationForCategory];
  v3 = +[BMLocationPointOfInterestCategory columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Location.PointOfInterest.Category" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Location.PointOfInterest.Category" schema:v9 configuration:configurationForCategory];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForCategory
{
  storeConfigurationForCategory = [self storeConfigurationForCategory];
  syncPolicyForCategory = [self syncPolicyForCategory];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"FD53D167-D32E-477A-98F7-65C5C0CA6BC4"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Location.PointOfInterest.Category" eventClass:objc_opt_class() storeConfig:storeConfigurationForCategory syncPolicy:syncPolicyForCategory legacyNames:&unk_1EF3E8790 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForCategory
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Location.PointOfInterest.Category" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"Category"])
  {
    category = [self Category];
  }

  else
  {
    category = 0;
  }

  return category;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMLocationPointOfInterestCategory validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end