@interface _BMPhotosMemoriesLibraryNode
+ (id)AddToMemories;
+ (id)Curation;
+ (id)MoviePlayed;
+ (id)Notification;
+ (id)Shared;
+ (id)Viewed;
+ (id)configurationForAddToMemories;
+ (id)configurationForCuration;
+ (id)configurationForMoviePlayed;
+ (id)configurationForNotification;
+ (id)configurationForShared;
+ (id)configurationForViewed;
+ (id)storeConfigurationForAddToMemories;
+ (id)storeConfigurationForCuration;
+ (id)storeConfigurationForMoviePlayed;
+ (id)storeConfigurationForNotification;
+ (id)storeConfigurationForShared;
+ (id)storeConfigurationForViewed;
+ (id)streamWithName:(id)a3;
+ (id)validKeyPaths;
@end

@implementation _BMPhotosMemoriesLibraryNode

+ (id)streamWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"AddToMemories"])
  {
    v5 = [a1 AddToMemories];
LABEL_13:
    v6 = v5;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"Curation"])
  {
    v5 = [a1 Curation];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"MoviePlayed"])
  {
    v5 = [a1 MoviePlayed];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"Notification"])
  {
    v5 = [a1 Notification];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"Shared"])
  {
    v5 = [a1 Shared];
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"Viewed"])
  {
    v5 = [a1 Viewed];
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = +[BMPhotosAddToMemories validKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[BMPhotosCuration validKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[BMPhotosMoviePlayed validKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = +[BMPhotosNotification validKeyPaths];
  [v2 addObjectsFromArray:v6];

  v7 = +[BMPhotosMemoriesShared validKeyPaths];
  [v2 addObjectsFromArray:v7];

  v8 = +[BMPhotosMemoriesViewed validKeyPaths];
  [v2 addObjectsFromArray:v8];

  v9 = [v2 copy];

  return v9;
}

+ (id)configurationForViewed
{
  v3 = [a1 storeConfigurationForViewed];
  v4 = [a1 syncPolicyForViewed];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0CA97DAE-A48B-4609-91A6-3CC17E5ACB26"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Memories.Viewed" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForViewed
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:31449600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Memories.Viewed" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForShared
{
  v3 = [a1 storeConfigurationForShared];
  v4 = [a1 syncPolicyForShared];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1E95A2A3-CA17-4DBE-9B5C-E9BD6C6855E4"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Memories.Shared" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForShared
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:15724800.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Memories.Shared" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForNotification
{
  v3 = [a1 storeConfigurationForNotification];
  v4 = [a1 syncPolicyForNotification];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C54C6758-8994-46F6-B4DC-566D394692E7"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Memories.Notification" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForNotification
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:31449600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Memories.Notification" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForMoviePlayed
{
  v3 = [a1 storeConfigurationForMoviePlayed];
  v4 = [a1 syncPolicyForMoviePlayed];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"2F0273EF-7A8E-49E7-8646-FB3FEEDD780E"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Memories.MoviePlayed" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForMoviePlayed
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:31449600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Memories.MoviePlayed" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForCuration
{
  v3 = [a1 storeConfigurationForCuration];
  v4 = [a1 syncPolicyForCuration];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0624885B-3656-4879-AC15-A56AD03D690B"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Memories.Curation" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForCuration
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:31449600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Memories.Curation" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)configurationForAddToMemories
{
  v3 = [a1 storeConfigurationForAddToMemories];
  v4 = [a1 syncPolicyForAddToMemories];
  v5 = MEMORY[0x1E698F338];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"985AAF74-3CCA-4F43-BC58-0329AEADB604"];
  BYTE2(v9) = 1;
  LOWORD(v9) = 1;
  v7 = [v5 _libraryStreamConfigurationWithUUID:v6 streamIdentifier:@"Photos.Memories.AddToMemories" eventClass:objc_opt_class() storeConfig:v3 syncPolicy:v4 legacyNames:0 internalMetadata:0 enableSubscriptions:v9 enableSubscriptionSubstream:0 enableTombstoneSubstream:0 allowedClients:@"com.apple.mobileslideshow" pruningTriggers:? spaceAttributionOwner:?];

  return v7;
}

+ (id)storeConfigurationForAddToMemories
{
  v2 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:31449600.0];
  v3 = [MEMORY[0x1E698F130] newLibraryStoreConfigForStreamIdentifier:@"Photos.Memories.AddToMemories" domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v2];

  return v3;
}

+ (id)Viewed
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForViewed];
  v3 = +[BMPhotosMemoriesViewed columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Memories.Viewed" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Memories.Viewed" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Shared
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForShared];
  v3 = +[BMPhotosMemoriesShared columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Memories.Shared" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Memories.Shared" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Notification
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForNotification];
  v3 = +[BMPhotosNotification columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Memories.Notification" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Memories.Notification" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)MoviePlayed
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForMoviePlayed];
  v3 = +[BMPhotosMoviePlayed columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Memories.MoviePlayed" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Memories.MoviePlayed" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)Curation
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForCuration];
  v3 = +[BMPhotosCuration columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Memories.Curation" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Memories.Curation" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)AddToMemories
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 configurationForAddToMemories];
  v3 = +[BMPhotosAddToMemories columns];
  v4 = BMEventTimestampSQLColumn();
  v13 = v4;
  v5 = BMEventBodyDataSQLColumn();
  v14 = v5;
  v6 = BMEventClassNameSQLColumn();
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v9 = [objc_alloc(MEMORY[0x1E698F2F0]) initWithTableName:@"Photos.Memories.AddToMemories" columns:v8];
  v10 = [objc_alloc(MEMORY[0x1E698F320]) initWithIdentifier:@"Photos.Memories.AddToMemories" schema:v9 configuration:v2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end