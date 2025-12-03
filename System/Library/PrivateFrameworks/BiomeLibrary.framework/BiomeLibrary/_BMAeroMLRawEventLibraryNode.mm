@interface _BMAeroMLRawEventLibraryNode
+ (id)PhotosSearchSession;
+ (id)configurationForPhotosSearchSession;
+ (id)storeConfigurationForPhotosSearchSession;
+ (id)streamWithName:(id)name;
+ (id)validKeyPaths;
@end

@implementation _BMAeroMLRawEventLibraryNode

+ (id)PhotosSearchSession
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPhotosSearchSession = [self configurationForPhotosSearchSession];
  v3 = +[BMAeroMLPhotosSearchSession columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"AeroML.RawEvent.PhotosSearchSession" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"AeroML.RawEvent.PhotosSearchSession" schema:v9 configuration:configurationForPhotosSearchSession];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)configurationForPhotosSearchSession
{
  storeConfigurationForPhotosSearchSession = [self storeConfigurationForPhotosSearchSession];
  syncPolicyForPhotosSearchSession = [self syncPolicyForPhotosSearchSession];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"2507B610-0283-4F0D-9074-0833AC706B2F"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"AeroML.RawEvent.PhotosSearchSession" eventClass:objc_opt_class() storeConfig:storeConfigurationForPhotosSearchSession syncPolicy:syncPolicyForPhotosSearchSession legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:0 pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPhotosSearchSession
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"AeroML.RawEvent.PhotosSearchSession" domain:0 segmentSize:0x200000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)streamWithName:(id)name
{
  if ([name isEqualToString:@"PhotosSearchSession"])
  {
    photosSearchSession = [self PhotosSearchSession];
  }

  else
  {
    photosSearchSession = 0;
  }

  return photosSearchSession;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMAeroMLPhotosSearchSession validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = [v2 copy];

  return v4;
}

@end