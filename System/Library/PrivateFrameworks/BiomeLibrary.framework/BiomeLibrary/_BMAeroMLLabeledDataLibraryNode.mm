@interface _BMAeroMLLabeledDataLibraryNode
+ (id)PhotosSearchLabeledData;
+ (id)configurationForPhotosSearchLabeledData;
+ (id)storeConfigurationForPhotosSearchLabeledData;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMAeroMLLabeledDataLibraryNode

+ (id)PhotosSearchLabeledData
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPhotosSearchLabeledData = [self configurationForPhotosSearchLabeledData];
  v3 = +[BMAeroMLPhotosSearchLabeledData columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"AeroML.LabeledData.PhotosSearchLabeledData" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"AeroML.LabeledData.PhotosSearchLabeledData" schema:v9 configuration:configurationForPhotosSearchLabeledData];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForPhotosSearchLabeledData
{
  storeConfigurationForPhotosSearchLabeledData = [self storeConfigurationForPhotosSearchLabeledData];
  syncPolicyForPhotosSearchLabeledData = [self syncPolicyForPhotosSearchLabeledData];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5449DAFE-E197-4488-BB2C-2BDF6E25E84D"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"AeroML.LabeledData.PhotosSearchLabeledData" eventClass:objc_opt_class() storeConfig:storeConfigurationForPhotosSearchLabeledData syncPolicy:syncPolicyForPhotosSearchLabeledData legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPhotosSearchLabeledData
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"AeroML.LabeledData.PhotosSearchLabeledData" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"PhotosSearchLabeledData"])
  {
    photosSearchLabeledData = [self PhotosSearchLabeledData];
  }

  else
  {
    photosSearchLabeledData = 0;
  }

  return photosSearchLabeledData;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMAeroMLPhotosSearchLabeledData validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end