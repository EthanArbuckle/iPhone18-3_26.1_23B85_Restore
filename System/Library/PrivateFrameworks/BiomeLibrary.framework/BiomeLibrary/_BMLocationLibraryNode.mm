@interface _BMLocationLibraryNode
+ (id)HashedCoordinates;
+ (id)MicroLocationVisit;
+ (id)Semantic;
+ (id)SignificantVisit;
+ (id)Visit;
+ (id)configurationForHashedCoordinates;
+ (id)configurationForMicroLocationVisit;
+ (id)configurationForSemantic;
+ (id)configurationForSignificantVisit;
+ (id)configurationForVisit;
+ (id)storeConfigurationForHashedCoordinates;
+ (id)storeConfigurationForMicroLocationVisit;
+ (id)storeConfigurationForSemantic;
+ (id)storeConfigurationForSignificantVisit;
+ (id)storeConfigurationForVisit;
+ (id)streamWithName:(id)name;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMLocationLibraryNode

+ (id)MicroLocationVisit
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForMicroLocationVisit = [self configurationForMicroLocationVisit];
  v3 = +[BMLocationMicroLocationVisit columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Location.MicroLocationVisit" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Location.MicroLocationVisit" schema:v9 configuration:configurationForMicroLocationVisit];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForMicroLocationVisit
{
  storeConfigurationForMicroLocationVisit = [self storeConfigurationForMicroLocationVisit];
  syncPolicyForMicroLocationVisit = [self syncPolicyForMicroLocationVisit];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D973E44D-D444-43B2-B656-2F572EFCA03F"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Location.MicroLocationVisit" eventClass:objc_opt_class() storeConfig:storeConfigurationForMicroLocationVisit syncPolicy:syncPolicyForMicroLocationVisit legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMicroLocationVisit
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:4233600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Location.MicroLocationVisit" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)sublibraries
{
  v9[3] = *MEMORY[0x1E69E9840];
  emergency = [self Emergency];
  microLocation = [self MicroLocation];
  v9[1] = microLocation;
  pointOfInterest = [self PointOfInterest];
  v9[2] = pointOfInterest;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)Visit
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForVisit = [self configurationForVisit];
  v3 = +[BMLocationVisit columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Location.Visit" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Location.Visit" schema:v9 configuration:configurationForVisit];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForVisit
{
  storeConfigurationForVisit = [self storeConfigurationForVisit];
  syncPolicyForVisit = [self syncPolicyForVisit];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00FEC37A-43FE-428E-9CC1-AA6E5CCE5EE2"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Location.Visit" eventClass:objc_opt_class() storeConfig:storeConfigurationForVisit syncPolicy:syncPolicyForVisit legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForVisit
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Location.Visit" domain:0 segmentSize:0x100000 protectionClass:2 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"HashedCoordinates"])
  {
    hashedCoordinates = [self HashedCoordinates];
LABEL_11:
    v6 = hashedCoordinates;
    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"MicroLocationVisit"])
  {
    hashedCoordinates = [self MicroLocationVisit];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"Semantic"])
  {
    hashedCoordinates = [self Semantic];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"SignificantVisit"])
  {
    hashedCoordinates = [self SignificantVisit];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"Visit"])
  {
    hashedCoordinates = [self Visit];
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMLocationHashedCoordinates validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMLocationMicroLocationVisit validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMLocationSemantic validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMLocationSignificantVisit validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMLocationVisit validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = [v2 copy];

  return v8;
}

+ (id)configurationForSignificantVisit
{
  storeConfigurationForSignificantVisit = [self storeConfigurationForSignificantVisit];
  syncPolicyForSignificantVisit = [self syncPolicyForSignificantVisit];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"7A03F83B-6242-4F92-8EE6-DB1EAC77F546"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Location.SignificantVisit" eventClass:objc_opt_class() storeConfig:storeConfigurationForSignificantVisit syncPolicy:syncPolicyForSignificantVisit legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSignificantVisit
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Location.SignificantVisit" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForSemantic
{
  v15[1] = *MEMORY[0x1E69E9840];
  storeConfigurationForSemantic = [self storeConfigurationForSemantic];
  syncPolicyForSemantic = [self syncPolicyForSemantic];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"reset-privacy-and-location-warnings" predicate:v6];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  v9 = MEMORY[0x1E698F338];
  v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"024238EA-AB88-46BE-9D43-E0A6442135D3"];
  BYTE2(v14) = 1;
  LOWORD(v14) = 1;
  v11 = [v9 _libraryStreamConfigurationWithUUID:v10 streamIdentifier:@"Location.Semantic" eventClass:objc_opt_class() storeConfig:storeConfigurationForSemantic syncPolicy:syncPolicyForSemantic legacyNames:&unk_1EF3EB508 internalMetadata:0 enableSubscriptions:v14 enableSubscriptionSubstream:0 enableTombstoneSubstream:v8 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)storeConfigurationForSemantic
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Location.Semantic" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForHashedCoordinates
{
  storeConfigurationForHashedCoordinates = [self storeConfigurationForHashedCoordinates];
  syncPolicyForHashedCoordinates = [self syncPolicyForHashedCoordinates];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F6D9CEC1-83A8-4682-A94C-120F98197DBE"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Location.HashedCoordinates" eventClass:objc_opt_class() storeConfig:storeConfigurationForHashedCoordinates syncPolicy:syncPolicyForHashedCoordinates legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForHashedCoordinates
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Location.HashedCoordinates" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)SignificantVisit
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSignificantVisit = [self configurationForSignificantVisit];
  v3 = +[BMLocationSignificantVisit columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Location.SignificantVisit" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Location.SignificantVisit" schema:v9 configuration:configurationForSignificantVisit];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Semantic
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSemantic = [self configurationForSemantic];
  v3 = +[BMLocationSemantic columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Location.Semantic" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Location.Semantic" schema:v9 configuration:configurationForSemantic];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)HashedCoordinates
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForHashedCoordinates = [self configurationForHashedCoordinates];
  v3 = +[BMLocationHashedCoordinates columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Location.HashedCoordinates" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Location.HashedCoordinates" schema:v9 configuration:configurationForHashedCoordinates];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end