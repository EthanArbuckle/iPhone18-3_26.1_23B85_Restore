@interface _BMAeroMLInsightsLibraryNode
+ (id)PhotosSearchInsights;
+ (id)configurationForPhotosSearchInsights;
+ (id)storeConfigurationForPhotosSearchInsights;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMAeroMLInsightsLibraryNode

+ (id)PhotosSearchInsights
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPhotosSearchInsights = [self configurationForPhotosSearchInsights];
  v3 = +[BMAeroMLPhotosSearchInsights columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"AeroML.Insights.PhotosSearchInsights" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"AeroML.Insights.PhotosSearchInsights" schema:v9 configuration:configurationForPhotosSearchInsights];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForPhotosSearchInsights
{
  storeConfigurationForPhotosSearchInsights = [self storeConfigurationForPhotosSearchInsights];
  syncPolicyForPhotosSearchInsights = [self syncPolicyForPhotosSearchInsights];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C447AE9B-480C-4A3B-A2B9-AA9316EE4BEB"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"AeroML.Insights.PhotosSearchInsights" eventClass:objc_opt_class() storeConfig:storeConfigurationForPhotosSearchInsights syncPolicy:syncPolicyForPhotosSearchInsights legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPhotosSearchInsights
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"AeroML.Insights.PhotosSearchInsights" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"PhotosSearchInsights"])
  {
    photosSearchInsights = [self PhotosSearchInsights];
  }

  else
  {
    photosSearchInsights = 0;
  }

  return photosSearchInsights;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMAeroMLPhotosSearchInsights validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end