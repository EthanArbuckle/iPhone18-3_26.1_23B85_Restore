@interface _BMOasisAnalyticsGazeKitLibraryNode
+ (id)GazeEnrollment;
+ (id)GazeMotionClassifier;
+ (id)GazeTracking;
+ (id)configurationForGazeEnrollment;
+ (id)configurationForGazeMotionClassifier;
+ (id)configurationForGazeTracking;
+ (id)storeConfigurationForGazeEnrollment;
+ (id)storeConfigurationForGazeMotionClassifier;
+ (id)storeConfigurationForGazeTracking;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMOasisAnalyticsGazeKitLibraryNode

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"GazeEnrollment"])
  {
    v5 = [a1 GazeEnrollment];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"GazeMotionClassifier"])
  {
    v5 = [a1 GazeMotionClassifier];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"GazeTracking"])
  {
    v5 = [a1 GazeTracking];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMOasisAnalyticsGazeEnrollment validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMOasisAnalyticsGazeMotionClassifier validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMOasisAnalyticsGazeTracking validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

+ (id)configurationForGazeTracking
{
  v3 = [a1 storeConfigurationForGazeTracking];
  v4 = [a1 syncPolicyForGazeTracking];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"CD80618E-FA35-4F92-8105-D0D7DC9B61CE"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"OasisAnalytics.GazeKit.GazeTracking" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForGazeTracking
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"OasisAnalytics.GazeKit.GazeTracking" domain:0 segmentSize:10485760 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)configurationForGazeMotionClassifier
{
  v3 = [a1 storeConfigurationForGazeMotionClassifier];
  v4 = [a1 syncPolicyForGazeMotionClassifier];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1F8330DA-8916-426F-9A48-8999C730377D"];
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"OasisAnalytics.GazeKit.GazeMotionClassifier" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForGazeMotionClassifier
{
  v2 = objc_alloc(MEMORY[0x1E698F120]);
  v3 = [v2 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  v4 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"OasisAnalytics.GazeKit.GazeMotionClassifier" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v3];

  return v4;
}

+ (id)configurationForGazeEnrollment
{
  v3 = [a1 storeConfigurationForGazeEnrollment];
  v4 = [a1 syncPolicyForGazeEnrollment];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0775AE5E-BC14-4C33-A835-A043E4826103"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"OasisAnalytics.GazeKit.GazeEnrollment" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForGazeEnrollment
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"OasisAnalytics.GazeKit.GazeEnrollment" domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)GazeTracking
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForGazeTracking];
  v3 = +[BMOasisAnalyticsGazeTracking columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"OasisAnalytics.GazeKit.GazeTracking" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"OasisAnalytics.GazeKit.GazeTracking" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)GazeMotionClassifier
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForGazeMotionClassifier];
  v3 = +[BMOasisAnalyticsGazeMotionClassifier columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"OasisAnalytics.GazeKit.GazeMotionClassifier" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"OasisAnalytics.GazeKit.GazeMotionClassifier" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)GazeEnrollment
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForGazeEnrollment];
  v3 = +[BMOasisAnalyticsGazeEnrollment columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"OasisAnalytics.GazeKit.GazeEnrollment" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"OasisAnalytics.GazeKit.GazeEnrollment" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end