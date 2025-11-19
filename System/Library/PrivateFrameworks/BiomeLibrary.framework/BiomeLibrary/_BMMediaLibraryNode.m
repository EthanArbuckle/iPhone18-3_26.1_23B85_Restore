@interface _BMMediaLibraryNode
+ (id)NowPlaying;
+ (id)Route;
+ (id)StreamingStats;
+ (id)configurationForNowPlaying;
+ (id)configurationForRoute;
+ (id)configurationForStreamingStats;
+ (id)storeConfigurationForNowPlaying;
+ (id)storeConfigurationForRoute;
+ (id)storeConfigurationForStreamingStats;
+ (id)streamWithName:(id)a3;
+ (id)syncPolicyForNowPlaying;
+ (id)validKeyPaths;
@end

@implementation _BMMediaLibraryNode

+ (id)NowPlaying
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForNowPlaying];
  v3 = +[BMMediaNowPlaying columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Media.NowPlaying" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Media.NowPlaying" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForNowPlaying
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = [a1 storeConfigurationForNowPlaying];
  v4 = [a1 syncPolicyForNowPlaying];
  v5 = objc_alloc(MEMORY[0x1E698F330]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$uninstalled == bundleID" argumentArray:0];
  v7 = [v5 initWithIdentifier:@"app-uninstall" predicate:v6];
  v18[0] = v7;
  v8 = objc_alloc(MEMORY[0x1E698F330]);
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT bundleID IN $installed" argumentArray:0];
  v10 = [v8 initWithIdentifier:@"app-uninstall-nightly" predicate:v9];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

  v12 = MEMORY[0x1E698F338];
  v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5015B088-E292-411F-9AEB-40E2B4BF3931"];
  BYTE2(v17) = 1;
  LOWORD(v17) = 1;
  v14 = [v12 _libraryStreamConfigurationWithUUID:v13 streamIdentifier:@"Media.NowPlaying" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:&unk_1EF3EB010 internalMetadata:0 enableSubscriptions:v17 enableSubscriptionSubstream:0 enableTombstoneSubstream:v11 allowedClients:0 pruningTriggers:v18[0] spaceAttributionOwner:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)storeConfigurationForNowPlaying
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:250000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Media.NowPlaying" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)syncPolicyForNowPlaying
{
  v22[1] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v22[0] = v17;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v16 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v21 = v16;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v4 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v20 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v18[0] = v6;
  v19[0] = v2;
  v7 = BMDevicePlatformAsKeyString();
  v18[1] = v7;
  v19[1] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v18[2] = v8;
  v19[2] = v3;
  v9 = BMDevicePlatformAsKeyString();
  v18[3] = v9;
  v19[3] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v18[4] = v10;
  v19[4] = v5;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];

  v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5015B088-E292-411F-9AEB-40E2B4BF3931"];
  v13 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v11 syncUUID:v12 legacySyncID:@"public/NowPlaying" eventClass:objc_opt_class()];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)Route
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForRoute];
  v3 = +[BMMediaRoute columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Media.Route" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Media.Route" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForRoute
{
  v3 = [a1 storeConfigurationForRoute];
  v4 = [a1 syncPolicyForRoute];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"31C87A4F-1C7A-4EC8-A9CB-7B816C316E49"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Media.Route" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForRoute
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Media.Route" domain:0 segmentSize:0x20000 protectionClass:5 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"NowPlaying"])
  {
    v5 = [a1 NowPlaying];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"Route"])
  {
    v5 = [a1 Route];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"StreamingStats"])
  {
    v5 = [a1 StreamingStats];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMMediaNowPlaying validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMMediaRoute validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMMediaStreamingStats validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

+ (id)configurationForStreamingStats
{
  v3 = [a1 storeConfigurationForStreamingStats];
  v4 = [a1 syncPolicyForStreamingStats];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"DB4BAB4D-DD4F-45B3-8D34-24D42CFC55D8"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Media.StreamingStats" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForStreamingStats
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Media.StreamingStats" domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)StreamingStats
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForStreamingStats];
  v3 = +[BMMediaStreamingStats columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Media.StreamingStats" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Media.StreamingStats" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end