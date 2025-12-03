@interface MPIdentifierSet(NanoMusicSync)
+ (id)nms_identifierSetWithLibraryPersistentID:()NanoMusicSync modelKind:;
- (id)nms_syncInfoAlbumIdentifier;
- (id)nms_syncInfoPlaylistIdentifier;
- (id)nms_universalStoreLookupID;
@end

@implementation MPIdentifierSet(NanoMusicSync)

- (id)nms_universalStoreLookupID
{
  universalStore = [self universalStore];
  globalPlaylistID = [universalStore globalPlaylistID];
  v4 = globalPlaylistID;
  if (globalPlaylistID)
  {
    universalCloudLibraryID = globalPlaylistID;
  }

  else
  {
    v6 = MEMORY[0x277CCABB0];
    universalStore2 = [self universalStore];
    v8 = [v6 numberWithLongLong:{objc_msgSend(universalStore2, "adamID")}];
    v9 = MPStoreItemMetadataStringNormalizeStoreIDValue();
    v10 = v9;
    if (v9)
    {
      universalCloudLibraryID = v9;
    }

    else
    {
      universalStore3 = [self universalStore];
      universalCloudLibraryID = [universalStore3 universalCloudLibraryID];
    }
  }

  return universalCloudLibraryID;
}

- (id)nms_syncInfoPlaylistIdentifier
{
  universalStore = [self universalStore];
  globalPlaylistID = [universalStore globalPlaylistID];

  if (globalPlaylistID)
  {
    universalStore2 = [self universalStore];
    globalPlaylistID2 = [universalStore2 globalPlaylistID];
  }

  else
  {
    personalizedStore = [self personalizedStore];
    cloudID = [personalizedStore cloudID];

    v8 = MEMORY[0x277CCABB0];
    if (cloudID)
    {
      universalStore2 = [self personalizedStore];
      [v8 numberWithUnsignedLongLong:{objc_msgSend(universalStore2, "cloudID")}];
    }

    else
    {
      universalStore2 = [self library];
      [v8 numberWithLongLong:{objc_msgSend(universalStore2, "persistentID")}];
    }
    v9 = ;
    globalPlaylistID2 = [v9 stringValue];
  }

  return globalPlaylistID2;
}

- (id)nms_syncInfoAlbumIdentifier
{
  universalStore = [self universalStore];
  adamID = [universalStore adamID];

  if (adamID)
  {
    v4 = MEMORY[0x277CCABB0];
    universalStore2 = [self universalStore];
    adamID2 = [universalStore2 adamID];
LABEL_3:
    v7 = [v4 numberWithLongLong:adamID2];
    stringValue = [v7 stringValue];

    goto LABEL_6;
  }

  personalizedStore = [self personalizedStore];
  cloudAlbumID = [personalizedStore cloudAlbumID];

  if (!cloudAlbumID)
  {
    v4 = MEMORY[0x277CCABB0];
    universalStore2 = [self library];
    adamID2 = [universalStore2 persistentID];
    goto LABEL_3;
  }

  universalStore2 = [self personalizedStore];
  stringValue = [universalStore2 cloudAlbumID];
LABEL_6:

  return stringValue;
}

+ (id)nms_identifierSetWithLibraryPersistentID:()NanoMusicSync modelKind:
{
  v6 = a4;
  v7 = [self alloc];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__MPIdentifierSet_NanoMusicSync__nms_identifierSetWithLibraryPersistentID_modelKind___block_invoke;
  v10[3] = &__block_descriptor_40_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8l;
  v10[4] = a3;
  v8 = [v7 initWithModelKind:v6 block:v10];

  return v8;
}

@end