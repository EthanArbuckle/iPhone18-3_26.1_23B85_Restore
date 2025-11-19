@interface _BMSiriAnalyticsIdentifiersLibraryNode
+ (id)HomeSeed;
+ (id)UserAggregationId;
+ (id)UserSamplingId;
+ (id)UserSeed;
+ (id)configurationForHomeSeed;
+ (id)configurationForUserAggregationId;
+ (id)configurationForUserSamplingId;
+ (id)configurationForUserSeed;
+ (id)storeConfigurationForHomeSeed;
+ (id)storeConfigurationForUserAggregationId;
+ (id)storeConfigurationForUserSamplingId;
+ (id)storeConfigurationForUserSeed;
+ (id)streamWithName:(id)a3;
+ (id)syncPolicyForHomeSeed;
+ (id)syncPolicyForUserAggregationId;
+ (id)syncPolicyForUserSamplingId;
+ (id)syncPolicyForUserSeed;
+ (id)validKeyPaths;
@end

@implementation _BMSiriAnalyticsIdentifiersLibraryNode

+ (id)syncPolicyForUserSeed
{
  v36[1] = *MEMORY[0x1E69E9840];
  v29 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v36[0] = v29;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v28 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v35 = v28;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v27 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:1];
  v34 = v27;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v26 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:1];
  v33 = v26;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v24 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v32 = v24;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v30[0] = v6;
  v7 = v2;
  v25 = v2;
  v31[0] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v30[1] = v8;
  v31[1] = v7;
  v9 = BMDevicePlatformAsKeyString();
  v30[2] = v9;
  v23 = v3;
  v31[2] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v30[3] = v10;
  v31[3] = v3;
  v11 = BMDevicePlatformAsKeyString();
  v30[4] = v11;
  v31[4] = v22;
  v12 = BMDevicePlatformAsKeyString();
  v30[5] = v12;
  v13 = v4;
  v21 = v4;
  v31[5] = v4;
  v14 = BMDevicePlatformAsKeyString();
  v30[6] = v14;
  v31[6] = v13;
  v15 = BMDevicePlatformAsKeyString();
  v30[7] = v15;
  v31[7] = v5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];

  v17 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C77E2ABD-DFCE-4DC4-9A62-D747818A3D9E"];
  v18 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v16 syncUUID:v17 legacySyncID:0 eventClass:objc_opt_class()];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)UserSeed
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForUserSeed];
  v3 = +[BMSiriUserSeed columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.AnalyticsIdentifiers.UserSeed" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.AnalyticsIdentifiers.UserSeed" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)HomeSeed
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForHomeSeed];
  v3 = +[BMSiriHomeSeed columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.AnalyticsIdentifiers.HomeSeed" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.AnalyticsIdentifiers.HomeSeed" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForUserSeed
{
  v3 = [a1 storeConfigurationForUserSeed];
  v4 = [a1 syncPolicyForUserSeed];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C77E2ABD-DFCE-4DC4-9A62-D747818A3D9E"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.AnalyticsIdentifiers.UserSeed" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForUserSeed
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2505600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.AnalyticsIdentifiers.UserSeed" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"HomeSeed"])
  {
    v5 = [a1 HomeSeed];
LABEL_9:
    v6 = v5;
    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"UserAggregationId"])
  {
    v5 = [a1 UserAggregationId];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"UserSamplingId"])
  {
    v5 = [a1 UserSamplingId];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"UserSeed"])
  {
    v5 = [a1 UserSeed];
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMSiriHomeSeed validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMSiriUserAggregationId validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMSiriUserSamplingId validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMSiriUserSeed validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = [v2 copy];

  return v7;
}

+ (id)configurationForUserSamplingId
{
  v3 = [a1 storeConfigurationForUserSamplingId];
  v4 = [a1 syncPolicyForUserSamplingId];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"23F3900D-BC06-406F-A65B-536BF3205823"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.AnalyticsIdentifiers.UserSamplingId" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)syncPolicyForUserSamplingId
{
  v36[1] = *MEMORY[0x1E69E9840];
  v29 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v36[0] = v29;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v28 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v35 = v28;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v27 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:1];
  v34 = v27;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v26 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:1];
  v33 = v26;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v24 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v32 = v24;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v30[0] = v6;
  v7 = v2;
  v25 = v2;
  v31[0] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v30[1] = v8;
  v31[1] = v7;
  v9 = BMDevicePlatformAsKeyString();
  v30[2] = v9;
  v23 = v3;
  v31[2] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v30[3] = v10;
  v31[3] = v3;
  v11 = BMDevicePlatformAsKeyString();
  v30[4] = v11;
  v31[4] = v22;
  v12 = BMDevicePlatformAsKeyString();
  v30[5] = v12;
  v13 = v4;
  v21 = v4;
  v31[5] = v4;
  v14 = BMDevicePlatformAsKeyString();
  v30[6] = v14;
  v31[6] = v13;
  v15 = BMDevicePlatformAsKeyString();
  v30[7] = v15;
  v31[7] = v5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];

  v17 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"23F3900D-BC06-406F-A65B-536BF3205823"];
  v18 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v16 syncUUID:v17 legacySyncID:0 eventClass:objc_opt_class()];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)storeConfigurationForUserSamplingId
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:17366400.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.AnalyticsIdentifiers.UserSamplingId" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForUserAggregationId
{
  v3 = [a1 storeConfigurationForUserAggregationId];
  v4 = [a1 syncPolicyForUserAggregationId];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9B3BB3E8-DB19-4624-AA4A-50097329A86C"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.AnalyticsIdentifiers.UserAggregationId" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)syncPolicyForUserAggregationId
{
  v36[1] = *MEMORY[0x1E69E9840];
  v29 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v36[0] = v29;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v28 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v35 = v28;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v27 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:1];
  v34 = v27;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v26 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:1];
  v33 = v26;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v24 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v32 = v24;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v30[0] = v6;
  v7 = v2;
  v25 = v2;
  v31[0] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v30[1] = v8;
  v31[1] = v7;
  v9 = BMDevicePlatformAsKeyString();
  v30[2] = v9;
  v23 = v3;
  v31[2] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v30[3] = v10;
  v31[3] = v3;
  v11 = BMDevicePlatformAsKeyString();
  v30[4] = v11;
  v31[4] = v22;
  v12 = BMDevicePlatformAsKeyString();
  v30[5] = v12;
  v13 = v4;
  v21 = v4;
  v31[5] = v4;
  v14 = BMDevicePlatformAsKeyString();
  v30[6] = v14;
  v31[6] = v13;
  v15 = BMDevicePlatformAsKeyString();
  v30[7] = v15;
  v31[7] = v5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];

  v17 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9B3BB3E8-DB19-4624-AA4A-50097329A86C"];
  v18 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v16 syncUUID:v17 legacySyncID:0 eventClass:objc_opt_class()];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)storeConfigurationForUserAggregationId
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:48643200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.AnalyticsIdentifiers.UserAggregationId" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForHomeSeed
{
  v3 = [a1 storeConfigurationForHomeSeed];
  v4 = [a1 syncPolicyForHomeSeed];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"35B696BC-2762-41E3-9498-C6CEE401ADB9"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Siri.AnalyticsIdentifiers.HomeSeed" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)syncPolicyForHomeSeed
{
  v36[1] = *MEMORY[0x1E69E9840];
  v29 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v36[0] = v29;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v28 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:1];
  v35 = v28;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v27 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:1];
  v34 = v27;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v26 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:3];
  v33 = v26;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v24 = [objc_alloc(MEMORY[0x1E698F340]) initWithTransportType:2 direction:1];
  v32 = v24;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v6 = BMDevicePlatformAsKeyString();
  v30[0] = v6;
  v7 = v2;
  v25 = v2;
  v31[0] = v2;
  v8 = BMDevicePlatformAsKeyString();
  v30[1] = v8;
  v31[1] = v7;
  v9 = BMDevicePlatformAsKeyString();
  v30[2] = v9;
  v23 = v3;
  v31[2] = v3;
  v10 = BMDevicePlatformAsKeyString();
  v30[3] = v10;
  v31[3] = v3;
  v11 = BMDevicePlatformAsKeyString();
  v30[4] = v11;
  v31[4] = v22;
  v12 = BMDevicePlatformAsKeyString();
  v30[5] = v12;
  v13 = v4;
  v21 = v4;
  v31[5] = v4;
  v14 = BMDevicePlatformAsKeyString();
  v30[6] = v14;
  v31[6] = v13;
  v15 = BMDevicePlatformAsKeyString();
  v30[7] = v15;
  v31[7] = v5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];

  v17 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"35B696BC-2762-41E3-9498-C6CEE401ADB9"];
  v18 = [objc_alloc(MEMORY[0x1E698F348]) initWithPolicyDictionary:v16 syncUUID:v17 legacySyncID:0 eventClass:objc_opt_class()];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)storeConfigurationForHomeSeed
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2505600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Siri.AnalyticsIdentifiers.HomeSeed" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)UserSamplingId
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForUserSamplingId];
  v3 = +[BMSiriUserSamplingId columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.AnalyticsIdentifiers.UserSamplingId" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.AnalyticsIdentifiers.UserSamplingId" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)UserAggregationId
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForUserAggregationId];
  v3 = +[BMSiriUserAggregationId columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Siri.AnalyticsIdentifiers.UserAggregationId" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Siri.AnalyticsIdentifiers.UserAggregationId" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end