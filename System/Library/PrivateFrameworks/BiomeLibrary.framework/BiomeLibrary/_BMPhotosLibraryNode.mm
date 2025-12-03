@interface _BMPhotosLibraryNode
+ (id)Delete;
+ (id)Edit;
+ (id)Engagement;
+ (id)Favorite;
+ (id)Live;
+ (id)Map;
+ (id)MemoryCreation;
+ (id)Picker;
+ (id)Search;
+ (id)Share;
+ (id)Style;
+ (id)UserAnalytics;
+ (id)configurationForDelete;
+ (id)configurationForEdit;
+ (id)configurationForEngagement;
+ (id)configurationForFavorite;
+ (id)configurationForLive;
+ (id)configurationForMap;
+ (id)configurationForMemoryCreation;
+ (id)configurationForPicker;
+ (id)configurationForSearch;
+ (id)configurationForShare;
+ (id)configurationForStyle;
+ (id)configurationForUserAnalytics;
+ (id)storeConfigurationForDelete;
+ (id)storeConfigurationForEdit;
+ (id)storeConfigurationForEngagement;
+ (id)storeConfigurationForFavorite;
+ (id)storeConfigurationForLive;
+ (id)storeConfigurationForMap;
+ (id)storeConfigurationForMemoryCreation;
+ (id)storeConfigurationForPicker;
+ (id)storeConfigurationForSearch;
+ (id)storeConfigurationForShare;
+ (id)storeConfigurationForStyle;
+ (id)storeConfigurationForUserAnalytics;
+ (id)streamWithName:(id)name;
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMPhotosLibraryNode

+ (id)sublibraries
{
  v8[2] = *MEMORY[0x1E69E9840];
  autonamingSuggestions = [self AutonamingSuggestions];
  v8[0] = autonamingSuggestions;
  memories = [self Memories];
  v8[1] = memories;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)streamWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Delete"])
  {
    delete = [self Delete];
LABEL_25:
    v6 = delete;
    goto LABEL_26;
  }

  if ([nameCopy isEqualToString:@"Edit"])
  {
    delete = [self Edit];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"Engagement"])
  {
    delete = [self Engagement];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"Favorite"])
  {
    delete = [self Favorite];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"Live"])
  {
    delete = [self Live];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"Map"])
  {
    delete = [self Map];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"MemoryCreation"])
  {
    delete = [self MemoryCreation];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"Picker"])
  {
    delete = [self Picker];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"Search"])
  {
    delete = [self Search];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"Share"])
  {
    delete = [self Share];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"Style"])
  {
    delete = [self Style];
    goto LABEL_25;
  }

  if ([nameCopy isEqualToString:@"UserAnalytics"])
  {
    delete = [self UserAnalytics];
    goto LABEL_25;
  }

  v6 = 0;
LABEL_26:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMPhotosDelete validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMPhotosEdit validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMPhotosEngagement validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMPhotosFavorite validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMPhotosLive validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMPhotosMap validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = +[BMPhotosMemoryCreation validKeyPaths];
  [v2 addObjectsFromArray:v9];

  v10 = +[BMPhotosPicker validKeyPaths];
  [v2 addObjectsFromArray:v10];

  v11 = +[BMPhotosSearch validKeyPaths];
  [v2 addObjectsFromArray:v11];

  v12 = +[BMPhotosShare validKeyPaths];
  [v2 addObjectsFromArray:v12];

  v13 = +[BMPhotosStyle validKeyPaths];
  [v2 addObjectsFromArray:v13];

  v14 = +[BMPhotosUserAnalytics validKeyPaths];
  [v2 addObjectsFromArray:v14];

  v15 = [v2 copy];

  return v15;
}

+ (id)configurationForUserAnalytics
{
  storeConfigurationForUserAnalytics = [self storeConfigurationForUserAnalytics];
  syncPolicyForUserAnalytics = [self syncPolicyForUserAnalytics];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B8C80FCE-33C9-47B6-9F6D-1DE933FA6A8A"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.UserAnalytics" eventClass:objc_opt_class() storeConfig:storeConfigurationForUserAnalytics syncPolicy:syncPolicyForUserAnalytics legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForUserAnalytics
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.UserAnalytics" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForStyle
{
  storeConfigurationForStyle = [self storeConfigurationForStyle];
  syncPolicyForStyle = [self syncPolicyForStyle];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"8F7776C5-9222-44DA-9B24-D3C1045FF427"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Style" eventClass:objc_opt_class() storeConfig:storeConfigurationForStyle syncPolicy:syncPolicyForStyle legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForStyle
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:31536000.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Style" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForShare
{
  storeConfigurationForShare = [self storeConfigurationForShare];
  syncPolicyForShare = [self syncPolicyForShare];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0E2362E0-A646-4D08-ADBF-B53EE7840CF3"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Share" eventClass:objc_opt_class() storeConfig:storeConfigurationForShare syncPolicy:syncPolicyForShare legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForShare
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:2500 maxEventCount:31449600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Share" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForSearch
{
  storeConfigurationForSearch = [self storeConfigurationForSearch];
  syncPolicyForSearch = [self syncPolicyForSearch];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"50A448E4-A6FF-47CC-97A4-15293AF061DB"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Search" eventClass:objc_opt_class() storeConfig:storeConfigurationForSearch syncPolicy:syncPolicyForSearch legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForSearch
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Search" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForPicker
{
  storeConfigurationForPicker = [self storeConfigurationForPicker];
  syncPolicyForPicker = [self syncPolicyForPicker];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"126CA7D9-8D9C-4BC4-BD06-9D3260444F5F"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Picker" eventClass:objc_opt_class() storeConfig:storeConfigurationForPicker syncPolicy:syncPolicyForPicker legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForPicker
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Picker" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForMemoryCreation
{
  storeConfigurationForMemoryCreation = [self storeConfigurationForMemoryCreation];
  syncPolicyForMemoryCreation = [self syncPolicyForMemoryCreation];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E1C064C8-0BB3-4ABC-9AF1-05FEAF4D4542"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.MemoryCreation" eventClass:objc_opt_class() storeConfig:storeConfigurationForMemoryCreation syncPolicy:syncPolicyForMemoryCreation legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMemoryCreation
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.MemoryCreation" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForMap
{
  storeConfigurationForMap = [self storeConfigurationForMap];
  syncPolicyForMap = [self syncPolicyForMap];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"B2CEDB75-B08A-4076-95A4-A909F37AE339"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Map" eventClass:objc_opt_class() storeConfig:storeConfigurationForMap syncPolicy:syncPolicyForMap legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMap
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Map" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForLive
{
  storeConfigurationForLive = [self storeConfigurationForLive];
  syncPolicyForLive = [self syncPolicyForLive];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"F5195AD3-9D99-43B8-ACF6-A5D8792F8E95"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Live" eventClass:objc_opt_class() storeConfig:storeConfigurationForLive syncPolicy:syncPolicyForLive legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForLive
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:31449600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Live" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForFavorite
{
  storeConfigurationForFavorite = [self storeConfigurationForFavorite];
  syncPolicyForFavorite = [self syncPolicyForFavorite];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"A23015CE-C8AB-4ED6-B29E-ED9A2B456535"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Favorite" eventClass:objc_opt_class() storeConfig:storeConfigurationForFavorite syncPolicy:syncPolicyForFavorite legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForFavorite
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:31449600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Favorite" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForEngagement
{
  storeConfigurationForEngagement = [self storeConfigurationForEngagement];
  syncPolicyForEngagement = [self syncPolicyForEngagement];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"44D22D46-24D2-49DB-96BD-C5477736FDD4"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Engagement" eventClass:objc_opt_class() storeConfig:storeConfigurationForEngagement syncPolicy:syncPolicyForEngagement legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForEngagement
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1500 maxEventCount:31449600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Engagement" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForEdit
{
  storeConfigurationForEdit = [self storeConfigurationForEdit];
  syncPolicyForEdit = [self syncPolicyForEdit];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BD80BD8C-F742-4DCC-BB64-E67135D0FF11"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Edit" eventClass:objc_opt_class() storeConfig:storeConfigurationForEdit syncPolicy:syncPolicyForEdit legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForEdit
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:31449600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Edit" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForDelete
{
  storeConfigurationForDelete = [self storeConfigurationForDelete];
  syncPolicyForDelete = [self syncPolicyForDelete];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1E716AF0-7A34-4C15-8E80-C43B3AF4DE74"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Delete" eventClass:objc_opt_class() storeConfig:storeConfigurationForDelete syncPolicy:syncPolicyForDelete legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForDelete
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:31449600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Delete" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)UserAnalytics
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForUserAnalytics = [self configurationForUserAnalytics];
  v3 = +[BMPhotosUserAnalytics columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.UserAnalytics" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.UserAnalytics" schema:v9 configuration:configurationForUserAnalytics];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Style
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForStyle = [self configurationForStyle];
  v3 = +[BMPhotosStyle columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Style" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Style" schema:v9 configuration:configurationForStyle];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Share
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForShare = [self configurationForShare];
  v3 = +[BMPhotosShare columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Share" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Share" schema:v9 configuration:configurationForShare];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Search
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForSearch = [self configurationForSearch];
  v3 = +[BMPhotosSearch columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Search" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Search" schema:v9 configuration:configurationForSearch];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Picker
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForPicker = [self configurationForPicker];
  v3 = +[BMPhotosPicker columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Picker" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Picker" schema:v9 configuration:configurationForPicker];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)MemoryCreation
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForMemoryCreation = [self configurationForMemoryCreation];
  v3 = +[BMPhotosMemoryCreation columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.MemoryCreation" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.MemoryCreation" schema:v9 configuration:configurationForMemoryCreation];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Map
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForMap = [self configurationForMap];
  v3 = +[BMPhotosMap columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Map" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Map" schema:v9 configuration:configurationForMap];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Live
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForLive = [self configurationForLive];
  v3 = +[BMPhotosLive columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Live" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Live" schema:v9 configuration:configurationForLive];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Favorite
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForFavorite = [self configurationForFavorite];
  v3 = +[BMPhotosFavorite columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Favorite" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Favorite" schema:v9 configuration:configurationForFavorite];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Engagement
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForEngagement = [self configurationForEngagement];
  v3 = +[BMPhotosEngagement columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Engagement" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Engagement" schema:v9 configuration:configurationForEngagement];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Edit
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForEdit = [self configurationForEdit];
  v3 = +[BMPhotosEdit columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Edit" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Edit" schema:v9 configuration:configurationForEdit];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Delete
{
  v16 = *MEMORY[0x1E69E9840];
  configurationForDelete = [self configurationForDelete];
  v3 = +[BMPhotosDelete columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Delete" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Delete" schema:v9 configuration:configurationForDelete];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end