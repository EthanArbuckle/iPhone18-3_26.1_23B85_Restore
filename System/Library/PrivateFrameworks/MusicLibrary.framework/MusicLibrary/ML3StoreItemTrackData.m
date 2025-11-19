@interface ML3StoreItemTrackData
- (BOOL)_platformMetadataItem:(id)a3 matchesKind:(id)a4;
- (BOOL)_platformMetadataItemIsAUCAudioKind:(id)a3;
- (BOOL)_platformMetadataItemIsAUCKind:(id)a3;
- (BOOL)_platformMetadataItemIsAUCVideoKind:(id)a3;
- (BOOL)_platformMetadataItemIsMovieKind:(id)a3;
- (BOOL)_platformMetadataItemIsMusicKind:(id)a3;
- (BOOL)_platformMetadataItemIsMusicVideoKind:(id)a3;
- (BOOL)_platformMetadataItemIsSongKind:(id)a3;
- (BOOL)_platformMetadataItemIsTVShowKind:(id)a3;
- (BOOL)_platformMetadataItemIsVideoKind:(id)a3;
- (ML3StoreItemTrackData)initWithLookupItems:(id)a3;
- (ML3StoreItemTrackData)initWithTrackData:(id)a3;
- (NSArray)parsedStoreItemsImportProperties;
- (NSData)trackData;
- (double)_songDurationFromOffersArray:(id)a3;
- (id)_allSongItemsFromCollectionLookupItem:(id)a3;
- (id)_allSongItemsFromLookupItems:(id)a3;
- (id)_artworkTokenForItemWithCollectionID:(int64_t)a3 itemID:(int64_t)a4;
- (id)_artworkTokenFromLookupItem:(id)a3;
- (id)_bestAlbumArtworkImageURLFromStoreArtworkVariants:(id)a3;
- (id)_bestArtworkImageURLFromStoreArtworkVariants:(id)a3 cropStyle:(id)a4;
- (id)_bestPlaylistArtworkImageURLFromStoreArtworkVariants:(id)a3;
- (id)_importDictionaryForLookupItem:(id)a3 parentCollectionCache:(id)a4;
- (id)_lookupItemArtworksForArtworkDictionaries:(id)a3;
- (id)_parentDictForItemAlbumId:(id)a3;
- (id)_storeItemsImportPropertiesFromLookupItems:(id)a3;
- (id)_storeItemsImportPropertiesFromTrackData:(id)a3;
- (id)_storePlatformDateFormatter;
- (int64_t)_episodeTypeFromVideoSubTypeString:(id)a3;
- (unint64_t)trackCount;
@end

@implementation ML3StoreItemTrackData

- (id)_bestArtworkImageURLFromStoreArtworkVariants:(id)a3 cropStyle:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v58 count:16];
  v9 = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  v11 = 0;
  if (v8)
  {
    v12 = *v46;
    v13 = *(MEMORY[0x277CBF3A8] + 8);
    v14 = *MEMORY[0x277CBF3A8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v45 + 1) + 8 * i);
        v17 = [v16 sizeInfo];
        [v17 maxSupportedSize];
        v19 = v18;
        v21 = v20;

        if (v19 > v14 || v21 > v13)
        {
          v23 = v16;

          v13 = v21;
          v14 = v19;
          v11 = v23;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v8);
  }

  MSVGetMaximumScreenSize();
  v25 = v24;
  v27 = v26;
  v28 = [v11 sizeInfo];
  [v28 maxSupportedSize];
  v30 = v29;
  v32 = v31;

  if (v30 != v9 || v32 != v10)
  {
    MSVImageUtilitiesMakeBoundingBoxSize();
    v25 = v34;
    v27 = v35;
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v36 = getICStoreArtworkInfoImageFormatJPEGSymbolLoc_ptr_18222;
  v57 = getICStoreArtworkInfoImageFormatJPEGSymbolLoc_ptr_18222;
  if (!getICStoreArtworkInfoImageFormatJPEGSymbolLoc_ptr_18222)
  {
    v49 = MEMORY[0x277D85DD0];
    v50 = 3221225472;
    v51 = __getICStoreArtworkInfoImageFormatJPEGSymbolLoc_block_invoke_18223;
    v52 = &unk_278764EF0;
    v53 = &v54;
    v37 = iTunesCloudLibrary_18224();
    v38 = dlsym(v37, "ICStoreArtworkInfoImageFormatJPEG");
    *(v53[1] + 24) = v38;
    getICStoreArtworkInfoImageFormatJPEGSymbolLoc_ptr_18222 = *(v53[1] + 24);
    v36 = v55[3];
  }

  _Block_object_dispose(&v54, 8);
  if (!v36)
  {
    v43 = [MEMORY[0x277CCA890] currentHandler];
    v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStoreArtworkInfoImageFormatJPEG(void)"];
    [v43 handleFailureInFunction:v44 file:@"ML3StoreItemTrackData.m" lineNumber:43 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v39 = *v36;
  v40 = [v11 artworkURLWithSize:v6 cropStyle:v39 format:MSVDeviceSupportsExtendedColorDisplay() preferP3ColorSpace:{v25, v27}];

  v41 = [v40 absoluteString];

  return v41;
}

- (id)_bestPlaylistArtworkImageURLFromStoreArtworkVariants:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getICStoreArtworkInfoCropStyleSquareCenterCropSymbolLoc_ptr_18239;
  v14 = getICStoreArtworkInfoCropStyleSquareCenterCropSymbolLoc_ptr_18239;
  if (!getICStoreArtworkInfoCropStyleSquareCenterCropSymbolLoc_ptr_18239)
  {
    v6 = iTunesCloudLibrary_18224();
    v12[3] = dlsym(v6, "ICStoreArtworkInfoCropStyleSquareCenterCrop");
    getICStoreArtworkInfoCropStyleSquareCenterCropSymbolLoc_ptr_18239 = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v5)
  {
    v7 = [(ML3StoreItemTrackData *)self _bestArtworkImageURLFromStoreArtworkVariants:v4 cropStyle:*v5];

    return v7;
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStoreArtworkInfoCropStyleSquareCenterCrop(void)"];
    [v9 handleFailureInFunction:v10 file:@"ML3StoreItemTrackData.m" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (id)_bestAlbumArtworkImageURLFromStoreArtworkVariants:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getICStoreArtworkInfoCropStyleBoundedBoxSymbolLoc_ptr;
  v14 = getICStoreArtworkInfoCropStyleBoundedBoxSymbolLoc_ptr;
  if (!getICStoreArtworkInfoCropStyleBoundedBoxSymbolLoc_ptr)
  {
    v6 = iTunesCloudLibrary_18224();
    v12[3] = dlsym(v6, "ICStoreArtworkInfoCropStyleBoundedBox");
    getICStoreArtworkInfoCropStyleBoundedBoxSymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v5)
  {
    v7 = [(ML3StoreItemTrackData *)self _bestArtworkImageURLFromStoreArtworkVariants:v4 cropStyle:*v5];

    return v7;
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStoreArtworkInfoCropStyleBoundedBox(void)"];
    [v9 handleFailureInFunction:v10 file:@"ML3StoreItemTrackData.m" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (BOOL)_platformMetadataItemIsMovieKind:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getICStorePlatformMetadataKindMovieSymbolLoc_ptr;
  v14 = getICStorePlatformMetadataKindMovieSymbolLoc_ptr;
  if (!getICStorePlatformMetadataKindMovieSymbolLoc_ptr)
  {
    v6 = iTunesCloudLibrary_18224();
    v12[3] = dlsym(v6, "ICStorePlatformMetadataKindMovie");
    getICStorePlatformMetadataKindMovieSymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v5)
  {
    v7 = [(ML3StoreItemTrackData *)self _platformMetadataItem:v4 matchesKind:*v5];

    return v7;
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformMetadataKindMovie(void)"];
    [v9 handleFailureInFunction:v10 file:@"ML3StoreItemTrackData.m" lineNumber:37 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (BOOL)_platformMetadataItemIsTVShowKind:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getICStorePlatformMetadataKindTVEpisodeSymbolLoc_ptr;
  v14 = getICStorePlatformMetadataKindTVEpisodeSymbolLoc_ptr;
  if (!getICStorePlatformMetadataKindTVEpisodeSymbolLoc_ptr)
  {
    v6 = iTunesCloudLibrary_18224();
    v12[3] = dlsym(v6, "ICStorePlatformMetadataKindTVEpisode");
    getICStorePlatformMetadataKindTVEpisodeSymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v5)
  {
    v7 = [(ML3StoreItemTrackData *)self _platformMetadataItem:v4 matchesKind:*v5];

    return v7;
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformMetadataKindTVEpisode(void)"];
    [v9 handleFailureInFunction:v10 file:@"ML3StoreItemTrackData.m" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (BOOL)_platformMetadataItemIsVideoKind:(id)a3
{
  v4 = a3;
  v5 = [(ML3StoreItemTrackData *)self _platformMetadataItemIsTVShowKind:v4]|| [(ML3StoreItemTrackData *)self _platformMetadataItemIsMovieKind:v4];

  return v5;
}

- (BOOL)_platformMetadataItemIsAUCVideoKind:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getICStorePlatformMetadataKindUploadedVideoSymbolLoc_ptr;
  v14 = getICStorePlatformMetadataKindUploadedVideoSymbolLoc_ptr;
  if (!getICStorePlatformMetadataKindUploadedVideoSymbolLoc_ptr)
  {
    v6 = iTunesCloudLibrary_18224();
    v12[3] = dlsym(v6, "ICStorePlatformMetadataKindUploadedVideo");
    getICStorePlatformMetadataKindUploadedVideoSymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v5)
  {
    v7 = [(ML3StoreItemTrackData *)self _platformMetadataItem:v4 matchesKind:*v5];

    return v7;
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformMetadataKindUploadedVideo(void)"];
    [v9 handleFailureInFunction:v10 file:@"ML3StoreItemTrackData.m" lineNumber:35 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (BOOL)_platformMetadataItemIsAUCAudioKind:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getICStorePlatformMetadataKindUploadedAudioSymbolLoc_ptr;
  v14 = getICStorePlatformMetadataKindUploadedAudioSymbolLoc_ptr;
  if (!getICStorePlatformMetadataKindUploadedAudioSymbolLoc_ptr)
  {
    v6 = iTunesCloudLibrary_18224();
    v12[3] = dlsym(v6, "ICStorePlatformMetadataKindUploadedAudio");
    getICStorePlatformMetadataKindUploadedAudioSymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v5)
  {
    v7 = [(ML3StoreItemTrackData *)self _platformMetadataItem:v4 matchesKind:*v5];

    return v7;
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformMetadataKindUploadedAudio(void)"];
    [v9 handleFailureInFunction:v10 file:@"ML3StoreItemTrackData.m" lineNumber:34 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (BOOL)_platformMetadataItemIsAUCKind:(id)a3
{
  v4 = a3;
  v5 = [(ML3StoreItemTrackData *)self _platformMetadataItemIsAUCAudioKind:v4]|| [(ML3StoreItemTrackData *)self _platformMetadataItemIsAUCVideoKind:v4];

  return v5;
}

- (BOOL)_platformMetadataItemIsMusicVideoKind:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getICStorePlatformMetadataKindMusicVideoSymbolLoc_ptr;
  v14 = getICStorePlatformMetadataKindMusicVideoSymbolLoc_ptr;
  if (!getICStorePlatformMetadataKindMusicVideoSymbolLoc_ptr)
  {
    v6 = iTunesCloudLibrary_18224();
    v12[3] = dlsym(v6, "ICStorePlatformMetadataKindMusicVideo");
    getICStorePlatformMetadataKindMusicVideoSymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v5)
  {
    v7 = [(ML3StoreItemTrackData *)self _platformMetadataItem:v4 matchesKind:*v5];

    return v7;
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformMetadataKindMusicVideo(void)"];
    [v9 handleFailureInFunction:v10 file:@"ML3StoreItemTrackData.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (BOOL)_platformMetadataItemIsSongKind:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getICStorePlatformMetadataKindSongSymbolLoc_ptr;
  v14 = getICStorePlatformMetadataKindSongSymbolLoc_ptr;
  if (!getICStorePlatformMetadataKindSongSymbolLoc_ptr)
  {
    v6 = iTunesCloudLibrary_18224();
    v12[3] = dlsym(v6, "ICStorePlatformMetadataKindSong");
    getICStorePlatformMetadataKindSongSymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v5)
  {
    v7 = [(ML3StoreItemTrackData *)self _platformMetadataItem:v4 matchesKind:*v5];

    return v7;
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformMetadataKindSong(void)"];
    [v9 handleFailureInFunction:v10 file:@"ML3StoreItemTrackData.m" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (BOOL)_platformMetadataItemIsMusicKind:(id)a3
{
  v4 = a3;
  v5 = [(ML3StoreItemTrackData *)self _platformMetadataItemIsSongKind:v4]|| [(ML3StoreItemTrackData *)self _platformMetadataItemIsMusicVideoKind:v4];

  return v5;
}

- (BOOL)_platformMetadataItem:(id)a3 matchesKind:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 kind];
  if (v7)
  {
    v8 = [v5 kind];
    v9 = [v8 compare:v6 options:1] == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_allSongItemsFromCollectionLookupItem:(id)a3
{
  v71[1] = *MEMORY[0x277D85DE8];
  v56 = a3;
  v3 = MEMORY[0x277CBEB98];
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v4 = getICStorePlatformMetadataKindAlbumSymbolLoc_ptr;
  v69 = getICStorePlatformMetadataKindAlbumSymbolLoc_ptr;
  if (!getICStorePlatformMetadataKindAlbumSymbolLoc_ptr)
  {
    v61 = MEMORY[0x277D85DD0];
    v62 = 3221225472;
    v63 = __getICStorePlatformMetadataKindAlbumSymbolLoc_block_invoke;
    v64 = &unk_278764EF0;
    v65 = &v66;
    v5 = iTunesCloudLibrary_18224();
    v67[3] = dlsym(v5, "ICStorePlatformMetadataKindAlbum");
    getICStorePlatformMetadataKindAlbumSymbolLoc_ptr = *(v65[1] + 24);
    v4 = v67[3];
  }

  _Block_object_dispose(&v66, 8);
  if (!v4)
  {
    v46 = [MEMORY[0x277CCA890] currentHandler];
    v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformMetadataKindAlbum(void)"];
    [v46 handleFailureInFunction:v47 file:@"ML3StoreItemTrackData.m" lineNumber:39 description:{@"%s", dlerror()}];

    goto LABEL_50;
  }

  v6 = *v4;
  v7 = getICStorePlatformMetadataKindArtist();
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v8 = getICStorePlatformMetadataKindPlaylistSymbolLoc_ptr_18250;
  v69 = getICStorePlatformMetadataKindPlaylistSymbolLoc_ptr_18250;
  if (!getICStorePlatformMetadataKindPlaylistSymbolLoc_ptr_18250)
  {
    v61 = MEMORY[0x277D85DD0];
    v62 = 3221225472;
    v63 = __getICStorePlatformMetadataKindPlaylistSymbolLoc_block_invoke_18251;
    v64 = &unk_278764EF0;
    v65 = &v66;
    v9 = iTunesCloudLibrary_18224();
    v67[3] = dlsym(v9, "ICStorePlatformMetadataKindPlaylist");
    getICStorePlatformMetadataKindPlaylistSymbolLoc_ptr_18250 = *(v65[1] + 24);
    v8 = v67[3];
  }

  _Block_object_dispose(&v66, 8);
  if (!v8)
  {
    v48 = [MEMORY[0x277CCA890] currentHandler];
    v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformMetadataKindPlaylist(void)"];
    [v48 handleFailureInFunction:v49 file:@"ML3StoreItemTrackData.m" lineNumber:30 description:{@"%s", dlerror()}];

    goto LABEL_50;
  }

  v10 = *v8;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v11 = getICStorePlatformMetadataKindTVSeasonSymbolLoc_ptr;
  v69 = getICStorePlatformMetadataKindTVSeasonSymbolLoc_ptr;
  if (!getICStorePlatformMetadataKindTVSeasonSymbolLoc_ptr)
  {
    v61 = MEMORY[0x277D85DD0];
    v62 = 3221225472;
    v63 = __getICStorePlatformMetadataKindTVSeasonSymbolLoc_block_invoke;
    v64 = &unk_278764EF0;
    v65 = &v66;
    v12 = iTunesCloudLibrary_18224();
    v67[3] = dlsym(v12, "ICStorePlatformMetadataKindTVSeason");
    getICStorePlatformMetadataKindTVSeasonSymbolLoc_ptr = *(v65[1] + 24);
    v11 = v67[3];
  }

  _Block_object_dispose(&v66, 8);
  if (!v11)
  {
    v50 = [MEMORY[0x277CCA890] currentHandler];
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformMetadataKindTVSeason(void)"];
    [v50 handleFailureInFunction:v51 file:@"ML3StoreItemTrackData.m" lineNumber:38 description:{@"%s", dlerror()}];

LABEL_50:
    __break(1u);
  }

  v53 = [v3 setWithObjects:{v6, v7, v10, *v11, 0}];

  v52 = [v56 kind];
  if ([(ML3StoreItemTrackData *)self _platformMetadataItemIsMusicKind:v56]|| [(ML3StoreItemTrackData *)self _platformMetadataItemIsAUCKind:v56]|| [(ML3StoreItemTrackData *)self _platformMetadataItemIsVideoKind:v56])
  {
    v71[0] = v56;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
  }

  else if ([v53 containsObject:v52])
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = [v56 metadataDictionary];
    v16 = [v15 objectForKey:@"children"];
    v17 = [v15 objectForKey:@"childrenIds"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v20 = [v15 objectForKey:@"children"];
      v19 = [v20 allKeys];
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v19;
    v21 = [obj countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v21)
    {
      v22 = *v58;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v58 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [v16 objectForKey:*(*(&v57 + 1) + 8 * i)];
          v25 = [v24 mutableCopy];

          v26 = [v56 kind];
          v27 = getICStorePlatformMetadataKindArtist();
          LOBYTE(v24) = [v26 isEqualToString:v27];

          if ((v24 & 1) == 0)
          {
            v28 = [v15 objectForKeyedSubscript:@"artwork"];

            if (v28)
            {
              v29 = [v15 objectForKeyedSubscript:@"artwork"];
              [v25 setObject:v29 forKeyedSubscript:@"albumArtwork"];
            }

            v30 = [v15 objectForKeyedSubscript:@"artistId"];

            if (v30)
            {
              v31 = [v15 objectForKeyedSubscript:@"artistId"];
              [v25 setObject:v31 forKeyedSubscript:@"albumArtistId"];
            }

            v32 = [v15 objectForKeyedSubscript:@"artistName"];

            if (v32)
            {
              v33 = [v15 objectForKeyedSubscript:@"artistName"];
              [v25 setObject:v33 forKeyedSubscript:@"albumArtistName"];
            }

            v34 = [v15 objectForKeyedSubscript:@"copyright"];

            if (v34)
            {
              v35 = [v15 objectForKeyedSubscript:@"copyright"];
              [v25 setObject:v35 forKeyedSubscript:@"copyright"];
            }

            v36 = [v15 objectForKeyedSubscript:@"isMasteredForItunes"];

            if (v36)
            {
              v37 = [v15 objectForKeyedSubscript:@"isMasteredForItunes"];
              [v25 setObject:v37 forKeyedSubscript:@"isMasteredForItunes"];
            }

            v38 = [v15 objectForKeyedSubscript:@"isCompilation"];

            if (v38)
            {
              v39 = [v15 objectForKeyedSubscript:@"isCompilation"];
              [v25 setObject:v39 forKeyedSubscript:@"isCompilation"];
            }

            v40 = [v15 objectForKeyedSubscript:@"seasonNumber"];

            if (v40)
            {
              v41 = [v15 objectForKeyedSubscript:@"seasonNumber"];
              [v25 setObject:v41 forKeyedSubscript:@"episodeSeasonNumber"];
            }
          }

          v66 = 0;
          v67 = &v66;
          v68 = 0x2050000000;
          v42 = getICStorePlatformMetadataClass_softClass;
          v69 = getICStorePlatformMetadataClass_softClass;
          if (!getICStorePlatformMetadataClass_softClass)
          {
            v61 = MEMORY[0x277D85DD0];
            v62 = 3221225472;
            v63 = __getICStorePlatformMetadataClass_block_invoke;
            v64 = &unk_278764EF0;
            v65 = &v66;
            __getICStorePlatformMetadataClass_block_invoke(&v61);
            v42 = v67[3];
          }

          v43 = v42;
          _Block_object_dispose(&v66, 8);
          v44 = [[v42 alloc] initWithMetadataDictionary:v25];
          v45 = [(ML3StoreItemTrackData *)self _allSongItemsFromCollectionLookupItem:v44];
          [v13 addObjectsFromArray:v45];
        }

        v21 = [obj countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v21);
    }
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (id)_allSongItemsFromLookupItems:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(ML3StoreItemTrackData *)self _allSongItemsFromCollectionLookupItem:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (double)_songDurationFromOffersArray:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
  v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v17)
  {
    v3 = 0;
    v16 = *v23;
    v4 = 0.0;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:@"assets"];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v19;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v19 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [*(*(&v18 + 1) + 8 * j) objectForKeyedSubscript:@"duration"];
              if (objc_opt_respondsToSelector())
              {
                [v11 doubleValue];
                v4 = v4 + v12;
                ++v3;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v8);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
    v13 = v4 / v3;
  }

  else
  {
    v13 = NAN;
  }

  return v13;
}

- (id)_lookupItemArtworksForArtworkDictionaries:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25[0] = v13;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];

    v13 = v3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v13;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v24 count:16];
    if (v5)
    {
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = 0;
            v21 = &v20;
            v22 = 0x2050000000;
            v9 = getICStoreArtworkInfoClass_softClass;
            v23 = getICStoreArtworkInfoClass_softClass;
            if (!getICStoreArtworkInfoClass_softClass)
            {
              v19[0] = MEMORY[0x277D85DD0];
              v19[1] = 3221225472;
              v19[2] = __getICStoreArtworkInfoClass_block_invoke;
              v19[3] = &unk_278764EF0;
              v19[4] = &v20;
              __getICStoreArtworkInfoClass_block_invoke(v19);
              v9 = v21[3];
            }

            v10 = v9;
            _Block_object_dispose(&v20, 8);
            v11 = [[v9 alloc] initWithArtworkResponseDictionary:v8];
            if (v11)
            {
              [v14 addObject:v11];
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v15 objects:v24 count:16];
      }

      while (v5);
    }
  }

  return v14;
}

- (int64_t)_episodeTypeFromVideoSubTypeString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"episode"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"episodebonus"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"seasonbonus"))
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"tvtrailer"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"tvextra"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"tvinterview"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_artworkTokenForItemWithCollectionID:(int64_t)a3 itemID:(int64_t)a4
{
  if (a3 >= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"store_collection_id=%lld", a4, a3];
    v4 = LABEL_5:;
    goto LABEL_6;
  }

  if (a4 >= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"store_item_id=%lld", a4, a4];
    goto LABEL_5;
  }

  v6 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v6 UUIDString];

LABEL_6:

  return v4;
}

- (id)_artworkTokenFromLookupItem:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionStoreAdamID];
  v6 = [v4 storeAdamID];

  return [(ML3StoreItemTrackData *)self _artworkTokenForItemWithCollectionID:v5 itemID:v6];
}

- (id)_importDictionaryForLookupItem:(id)a3 parentCollectionCache:(id)a4
{
  v205 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v175 = a4;
  v183 = v6;
  if (![(ML3StoreItemTrackData *)self _platformMetadataItemIsMusicKind:v6]&& ![(ML3StoreItemTrackData *)self _platformMetadataItemIsAUCKind:v6]&& ![(ML3StoreItemTrackData *)self _platformMetadataItemIsVideoKind:v6])
  {
    log = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v119 = [v6 kind];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v119;
      _os_log_impl(&dword_22D2FA000, log, OS_LOG_TYPE_ERROR, "[ML3StoreItemTrackData] unsupported item kind %{public}@", &buf, 0xCu);
    }

    v184 = 0;
    goto LABEL_178;
  }

  v184 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([(ML3StoreItemTrackData *)self _platformMetadataItemIsMusicVideoKind:v6]|| [(ML3StoreItemTrackData *)self _platformMetadataItemIsAUCVideoKind:v6])
  {
    v7 = 1032;
  }

  else if ([(ML3StoreItemTrackData *)self _platformMetadataItemIsTVShowKind:v6])
  {
    v7 = 512;
  }

  else if ([(ML3StoreItemTrackData *)self _platformMetadataItemIsMovieKind:v6])
  {
    v7 = 2048;
  }

  else
  {
    v7 = 8;
  }

  log = [v6 metadataDictionary];
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "storeAdamID")}];
  [v184 setObject:v8 forKeyedSubscript:&unk_2840C97A0];

  v9 = [v6 artistName];

  if (v9)
  {
    v10 = [v6 artistName];
    [v184 setObject:v10 forKeyedSubscript:&unk_2840C97B8];
  }

  v11 = [log objectForKeyedSubscript:@"artistId"];

  if (v11)
  {
    v12 = [log objectForKeyedSubscript:@"artistId"];
    [v184 setObject:v12 forKeyedSubscript:&unk_2840C97D0];
  }

  v13 = [log objectForKeyedSubscript:@"collectionId"];

  if (v13)
  {
    v14 = [log objectForKeyedSubscript:@"collectionId"];
    [v184 setObject:v14 forKeyedSubscript:&unk_2840C97E8];
  }

  v15 = [log objectForKeyedSubscript:@"collectionName"];

  if (v15)
  {
    v16 = [log objectForKeyedSubscript:@"collectionName"];
    [v184 setObject:v16 forKeyedSubscript:&unk_2840C9800];
  }

  v17 = [log objectForKeyedSubscript:@"name"];

  if (v17)
  {
    v18 = [log objectForKeyedSubscript:@"name"];
    [v184 setObject:v18 forKeyedSubscript:&unk_2840C9818];
  }

  v19 = [log objectForKeyedSubscript:@"trackNumber"];

  if (v19)
  {
    v20 = [log objectForKeyedSubscript:@"trackNumber"];
    [v184 setObject:v20 forKeyedSubscript:&unk_2840C9830];
  }

  v21 = [log objectForKeyedSubscript:@"discNumber"];

  if (v21)
  {
    v22 = [log objectForKeyedSubscript:@"discNumber"];
    [v184 setObject:v22 forKeyedSubscript:&unk_2840C9848];
  }

  v23 = [log objectForKeyedSubscript:@"copyright"];

  if (v23)
  {
    v24 = [log objectForKeyedSubscript:@"copyright"];
    [v184 setObject:v24 forKeyedSubscript:&unk_2840C9860];
  }

  v25 = [log objectForKeyedSubscript:@"isCompilation"];

  if (v25)
  {
    v26 = [log objectForKeyedSubscript:@"isCompilation"];
    [v184 setObject:v26 forKeyedSubscript:&unk_2840C9878];
  }

  v27 = [log objectForKeyedSubscript:@"isMasteredForItunes"];

  if (v27)
  {
    v28 = [log objectForKeyedSubscript:@"isMasteredForItunes"];
    [v184 setObject:v28 forKeyedSubscript:&unk_2840C9890];
  }

  v29 = [log objectForKeyedSubscript:@"ml3td_radio_station_id"];

  if (v29)
  {
    v30 = [log objectForKeyedSubscript:@"ml3td_radio_station_id"];
    [v184 setObject:v30 forKeyedSubscript:&unk_2840C98A8];
  }

  v31 = [log objectForKeyedSubscript:@"ml3td_advertisement_unique_id"];

  if (v31)
  {
    v32 = [log objectForKeyedSubscript:@"ml3td_advertisement_unique_id"];
    [v184 setObject:v32 forKeyedSubscript:&unk_2840C98C0];
  }

  v33 = [log objectForKeyedSubscript:@"ml3td_advertisement_type"];

  if (v33)
  {
    v34 = [log objectForKeyedSubscript:@"ml3td_advertisement_type"];
    [v184 setObject:v34 forKeyedSubscript:&unk_2840C98D8];
  }

  v35 = [log objectForKeyedSubscript:@"showComposer"];

  if (v35)
  {
    v36 = [log objectForKeyedSubscript:@"showComposer"];
    [v184 setObject:v36 forKeyedSubscript:&unk_2840C98F0];
  }

  v37 = [log objectForKeyedSubscript:@"work"];

  if (v37)
  {
    v38 = [log objectForKeyedSubscript:@"work"];
    [v184 setObject:v38 forKeyedSubscript:&unk_2840C9908];
  }

  v39 = [log objectForKeyedSubscript:@"shouldBookmarkPlayPosition"];

  if (v39)
  {
    v40 = [log objectForKeyedSubscript:@"shouldBookmarkPlayPosition"];
    [v184 setObject:v40 forKeyedSubscript:&unk_2840C9920];
  }

  v41 = [log objectForKeyedSubscript:@"episodeSeasonNumber"];

  if (v41)
  {
    v42 = [log objectForKeyedSubscript:@"episodeSeasonNumber"];
    [v184 setObject:v42 forKeyedSubscript:&unk_2840C9938];
  }

  v43 = [log objectForKeyedSubscript:@"excludeFromShuffle"];

  if (v43)
  {
    v44 = [log objectForKeyedSubscript:@"excludeFromShuffle"];
    [v184 setObject:v44 forKeyedSubscript:&unk_2840C9950];
  }

  v45 = [log objectForKeyedSubscript:@"wasAvailableForSubs"];

  if (v45)
  {
    v46 = [log objectForKeyedSubscript:@"wasAvailableForSubs"];
    [v184 setObject:v46 forKeyedSubscript:&unk_2840C9968];
  }

  v47 = [log objectForKeyedSubscript:@"episodeDisplayLabel"];

  if (v47)
  {
    v48 = [log objectForKeyedSubscript:@"episodeDisplayLabel"];
    [v184 setObject:v48 forKeyedSubscript:&unk_2840C9980];
  }

  v49 = [log objectForKeyedSubscript:@"hasLyrics"];

  if (v49)
  {
    v50 = [log objectForKeyedSubscript:@"hasLyrics"];
    [v184 setObject:v50 forKeyedSubscript:&unk_2840C9998];
  }

  v51 = [log objectForKeyedSubscript:@"hasTimeSyncedLyrics"];

  if (v51)
  {
    v52 = [log objectForKeyedSubscript:@"hasTimeSyncedLyrics"];
    [v184 setObject:v52 forKeyedSubscript:&unk_2840C99B0];
  }

  v53 = [log objectForKeyedSubscript:@"isVocalAttenuationAllowed"];

  if (v53)
  {
    v54 = [log objectForKeyedSubscript:@"isVocalAttenuationAllowed"];
    [v184 setObject:v54 forKeyedSubscript:&unk_2840C99C8];
  }

  v55 = [v6 formerStoreAdamIDs];
  v56 = [v55 count];

  if (v56)
  {
    v57 = [v183 formerStoreAdamIDs];
    [v184 setObject:v57 forKeyedSubscript:&unk_2840C99E0];
  }

  v58 = [log objectForKeyedSubscript:@"albumArtistId"];
  if (v58)
  {
    v59 = [log objectForKeyedSubscript:@"albumArtistName"];

    if (v59)
    {
      v60 = [log objectForKeyedSubscript:@"albumArtistId"];

      if (v60)
      {
        v61 = [log objectForKeyedSubscript:@"albumArtistId"];
        [v184 setObject:v61 forKeyedSubscript:&unk_2840C99F8];
      }

      v62 = [log objectForKeyedSubscript:@"albumArtistName"];

      if (!v62)
      {
        goto LABEL_71;
      }

      v63 = [log objectForKeyedSubscript:@"albumArtistName"];
      [v184 setObject:v63 forKeyedSubscript:&unk_2840C9A10];
      goto LABEL_70;
    }
  }

  v64 = [log objectForKeyedSubscript:@"collectionId"];

  if (!v64)
  {
    goto LABEL_71;
  }

  v63 = [log objectForKeyedSubscript:@"collectionId"];
  v65 = [v175 objectForKeyedSubscript:v63];
  if (v65)
  {
    goto LABEL_65;
  }

  v65 = [(ML3StoreItemTrackData *)self _parentDictForItemAlbumId:v63];
  if (v65)
  {
    [v175 setObject:v65 forKeyedSubscript:v63];
LABEL_65:
    v66 = [v65 objectForKeyedSubscript:@"albumArtistId"];

    if (v66)
    {
      v67 = [v65 objectForKeyedSubscript:@"albumArtistId"];
      [v184 setObject:v67 forKeyedSubscript:&unk_2840C99F8];
    }

    v68 = [v65 objectForKeyedSubscript:@"albumArtistName"];

    if (v68)
    {
      v69 = [v65 objectForKeyedSubscript:@"albumArtistName"];
      [v184 setObject:v69 forKeyedSubscript:&unk_2840C9A10];
    }
  }

LABEL_70:
LABEL_71:
  if ([(ML3StoreItemTrackData *)self _platformMetadataItemIsAUCKind:v183])
  {
    v70 = [v184 objectForKeyedSubscript:&unk_2840C9818];

    if (!v70)
    {
      v71 = [log objectForKeyedSubscript:@"title"];

      if (v71)
      {
        v72 = [log objectForKeyedSubscript:@"title"];
        [v184 setObject:v72 forKeyedSubscript:&unk_2840C9818];
      }
    }
  }

  if ((v7 & 0x200) != 0)
  {
    v73 = [v183 artistName];

    if (v73)
    {
      v74 = [v183 artistName];
      [v184 setObject:v74 forKeyedSubscript:&unk_2840C9A28];
    }

    v75 = [log objectForKeyedSubscript:@"trackNumber"];

    if (v75)
    {
      v76 = [log objectForKeyedSubscript:@"trackNumber"];
      [v184 setObject:v76 forKeyedSubscript:&unk_2840C9A40];
    }

    v77 = [log objectForKeyedSubscript:@"videoSubType"];
    v78 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ML3StoreItemTrackData _episodeTypeFromVideoSubTypeString:](self, "_episodeTypeFromVideoSubTypeString:", v77)}];
    [v184 setObject:v78 forKeyedSubscript:&unk_2840C9A58];

    v79 = [log objectForKeyedSubscript:@"screenshots"];
    v80 = [(ML3StoreItemTrackData *)self _lookupItemArtworksForArtworkDictionaries:v79];
    v81 = [(ML3StoreItemTrackData *)self _bestAlbumArtworkImageURLFromStoreArtworkVariants:v80];
    if (v81)
    {
      [v184 setObject:v81 forKeyedSubscript:&unk_2840C9A70];
    }
  }

  v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  [v184 setObject:v82 forKeyedSubscript:&unk_2840C9A88];

  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  [v184 setObject:v83 forKeyedSubscript:&unk_2840C9AA0];

  v84 = MEMORY[0x277CCABB0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v176 = [v84 numberWithDouble:?];
  [v184 setObject:v176 forKeyedSubscript:&unk_2840C9AB8];
  [v184 setObject:v176 forKeyedSubscript:&unk_2840C9AD0];
  v180 = [log objectForKeyedSubscript:@"releaseDate"];
  if (v180)
  {
    v85 = [(ML3StoreItemTrackData *)self _storePlatformDateFormatter];
    v86 = [v85 dateFromString:v180];

    v87 = MEMORY[0x277CCABB0];
    [v86 timeIntervalSinceReferenceDate];
    v88 = [v87 numberWithDouble:?];
    [v184 setObject:v88 forKeyedSubscript:&unk_2840C9AE8];
  }

  v182 = [log objectForKeyedSubscript:@"offers"];
  if (v182)
  {
    [(ML3StoreItemTrackData *)self _songDurationFromOffersArray:v182];
    v90 = [MEMORY[0x277CCABB0] numberWithDouble:v89 * 1000.0];
    [v184 setObject:v90 forKeyedSubscript:&unk_2840C9B00];

    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v91 = v182;
    v92 = 0;
    v93 = [v91 countByEnumeratingWithState:&v191 objects:v200 count:16];
    if (v93)
    {
      v94 = *v192;
      do
      {
        for (i = 0; i != v93; ++i)
        {
          if (*v192 != v94)
          {
            objc_enumerationMutation(v91);
          }

          v96 = [*(*(&v191 + 1) + 8 * i) objectForKeyedSubscript:@"type"];
          v97 = [v96 isEqualToString:@"subscription"];

          v92 |= v97;
        }

        v93 = [v91 countByEnumeratingWithState:&v191 objects:v200 count:16];
      }

      while (v93);
    }

    v98 = [MEMORY[0x277CCABB0] numberWithBool:v92 & 1];
    [v184 setObject:v98 forKeyedSubscript:&unk_2840C9B18];
  }

  v179 = [log objectForKeyedSubscript:@"genreNames"];
  if ([v179 count])
  {
    v99 = [v179 firstObject];
    [v184 setObject:v99 forKeyedSubscript:&unk_2840C9B30];
  }

  v100 = [v183 artworkInfos];
  if ([v100 count])
  {
    v101 = v100;
  }

  else
  {
    v102 = [log objectForKeyedSubscript:@"albumArtwork"];
    v103 = [(ML3StoreItemTrackData *)self _lookupItemArtworksForArtworkDictionaries:v102];

    v101 = v103;
  }

  v174 = v101;
  v178 = [(ML3StoreItemTrackData *)self _bestAlbumArtworkImageURLFromStoreArtworkVariants:?];
  if (v178)
  {
    [v184 setObject:v178 forKeyedSubscript:&unk_2840C9B48];
  }

  v181 = [log objectForKeyedSubscript:@"contentRatingsBySystem"];
  if (v181)
  {
    v104 = [v181 allKeys];
    v105 = [v104 firstObject];

    v106 = [v181 objectForKey:v105];
    v107 = v106;
    if (v106)
    {
      v108 = [v106 objectForKeyedSubscript:@"name"];
      v109 = v108;
      if (v108)
      {
        v110 = v108;
      }

      else
      {
        v110 = &stru_28408B690;
      }

      v111 = v110;

      v112 = [v107 objectForKeyedSubscript:@"value"];
      if ([v105 isEqualToString:@"riaa"])
      {
        if (([(__CFString *)v111 isEqualToString:@"Explicit"]& 1) != 0)
        {
          v113 = 1;
        }

        else if ([(__CFString *)v111 isEqualToString:@"Clean"])
        {
          v113 = 2;
        }

        else
        {
          v113 = 0;
        }
      }

      else
      {
        v114 = [v107 objectForKey:@"advisories"];
        v115 = v114;
        if (v114)
        {
          v116 = v114;
        }

        else
        {
          v116 = &stru_28408B690;
        }

        v117 = v116;

        if (objc_opt_respondsToSelector())
        {
          v118 = [v112 integerValue];
        }

        else
        {
          v118 = 0;
        }

        v120 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@|%@|%ld|%@", v105, v111, v118, v117];
        [v184 setObject:v120 forKeyedSubscript:&unk_2840C9B60];

        v113 = 0;
      }

      v121 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v113];
      [v184 setObject:v121 forKeyedSubscript:&unk_2840C9B78];

      if (v112)
      {
        v122 = v112;
      }

      else
      {
        v122 = &unk_2840C9B90;
      }

      [v184 setObject:v122 forKeyedSubscript:&unk_2840C9BA8];
    }
  }

  v177 = [log objectForKeyedSubscript:@"composer"];
  if (v177)
  {
    v123 = [v177 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v123 length])
    {
      [v184 setObject:v123 forKeyedSubscript:&unk_2840C9BC0];
    }
  }

  [v183 audioTraits];
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  obj = v188 = 0u;
  v124 = 0;
  v125 = [obj countByEnumeratingWithState:&v187 objects:v199 count:16];
  if (v125)
  {
    v126 = *v188;
    do
    {
      for (j = 0; j != v125; ++j)
      {
        if (*v188 != v126)
        {
          objc_enumerationMutation(obj);
        }

        v128 = *(*(&v187 + 1) + 8 * j);
        v195 = 0;
        v196 = &v195;
        v197 = 0x2020000000;
        v129 = getICStorePlatformAudioTraitSpatialSymbolLoc_ptr;
        v198 = getICStorePlatformAudioTraitSpatialSymbolLoc_ptr;
        if (!getICStorePlatformAudioTraitSpatialSymbolLoc_ptr)
        {
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v202 = __getICStorePlatformAudioTraitSpatialSymbolLoc_block_invoke;
          v203 = &unk_278764EF0;
          v204 = &v195;
          v130 = iTunesCloudLibrary_18224();
          v131 = dlsym(v130, "ICStorePlatformAudioTraitSpatial");
          *(v204[1] + 24) = v131;
          getICStorePlatformAudioTraitSpatialSymbolLoc_ptr = *(v204[1] + 24);
          v129 = v196[3];
        }

        _Block_object_dispose(&v195, 8);
        if (!v129)
        {
          v162 = [MEMORY[0x277CCA890] currentHandler];
          v163 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformAudioTraitSpatial(void)"];
          [v162 handleFailureInFunction:v163 file:@"ML3StoreItemTrackData.m" lineNumber:44 description:{@"%s", dlerror()}];

          goto LABEL_185;
        }

        v132 = *v129;
        v133 = [v128 isEqualToString:v132];

        if (v133)
        {
          v124 |= 0x20uLL;
        }

        else
        {
          v195 = 0;
          v196 = &v195;
          v197 = 0x2020000000;
          v134 = getICStorePlatformAudioTraitLosslessSymbolLoc_ptr;
          v198 = getICStorePlatformAudioTraitLosslessSymbolLoc_ptr;
          if (!getICStorePlatformAudioTraitLosslessSymbolLoc_ptr)
          {
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 3221225472;
            v202 = __getICStorePlatformAudioTraitLosslessSymbolLoc_block_invoke;
            v203 = &unk_278764EF0;
            v204 = &v195;
            v135 = iTunesCloudLibrary_18224();
            v136 = dlsym(v135, "ICStorePlatformAudioTraitLossless");
            *(v204[1] + 24) = v136;
            getICStorePlatformAudioTraitLosslessSymbolLoc_ptr = *(v204[1] + 24);
            v134 = v196[3];
          }

          _Block_object_dispose(&v195, 8);
          if (!v134)
          {
            v164 = [MEMORY[0x277CCA890] currentHandler];
            v165 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformAudioTraitLossless(void)"];
            [v164 handleFailureInFunction:v165 file:@"ML3StoreItemTrackData.m" lineNumber:45 description:{@"%s", dlerror()}];

            goto LABEL_185;
          }

          v137 = *v134;
          v138 = [v128 isEqualToString:v137];

          if (v138)
          {
            v124 |= 4uLL;
          }

          else
          {
            v195 = 0;
            v196 = &v195;
            v197 = 0x2020000000;
            v139 = getICStorePlatformAudioTraitHiResLosslessSymbolLoc_ptr;
            v198 = getICStorePlatformAudioTraitHiResLosslessSymbolLoc_ptr;
            if (!getICStorePlatformAudioTraitHiResLosslessSymbolLoc_ptr)
            {
              *&buf = MEMORY[0x277D85DD0];
              *(&buf + 1) = 3221225472;
              v202 = __getICStorePlatformAudioTraitHiResLosslessSymbolLoc_block_invoke;
              v203 = &unk_278764EF0;
              v204 = &v195;
              v140 = iTunesCloudLibrary_18224();
              v141 = dlsym(v140, "ICStorePlatformAudioTraitHiResLossless");
              *(v204[1] + 24) = v141;
              getICStorePlatformAudioTraitHiResLosslessSymbolLoc_ptr = *(v204[1] + 24);
              v139 = v196[3];
            }

            _Block_object_dispose(&v195, 8);
            if (!v139)
            {
              v166 = [MEMORY[0x277CCA890] currentHandler];
              v167 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformAudioTraitHiResLossless(void)"];
              [v166 handleFailureInFunction:v167 file:@"ML3StoreItemTrackData.m" lineNumber:46 description:{@"%s", dlerror()}];

              goto LABEL_185;
            }

            v142 = *v139;
            v143 = [v128 isEqualToString:v142];

            if (v143)
            {
              v124 |= 0x10uLL;
            }

            else
            {
              v195 = 0;
              v196 = &v195;
              v197 = 0x2020000000;
              v144 = getICStorePlatformAudioTraitLossyStereoSymbolLoc_ptr;
              v198 = getICStorePlatformAudioTraitLossyStereoSymbolLoc_ptr;
              if (!getICStorePlatformAudioTraitLossyStereoSymbolLoc_ptr)
              {
                *&buf = MEMORY[0x277D85DD0];
                *(&buf + 1) = 3221225472;
                v202 = __getICStorePlatformAudioTraitLossyStereoSymbolLoc_block_invoke;
                v203 = &unk_278764EF0;
                v204 = &v195;
                v145 = iTunesCloudLibrary_18224();
                v146 = dlsym(v145, "ICStorePlatformAudioTraitLossyStereo");
                *(v204[1] + 24) = v146;
                getICStorePlatformAudioTraitLossyStereoSymbolLoc_ptr = *(v204[1] + 24);
                v144 = v196[3];
              }

              _Block_object_dispose(&v195, 8);
              if (!v144)
              {
                v168 = [MEMORY[0x277CCA890] currentHandler];
                v169 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformAudioTraitLossyStereo(void)"];
                [v168 handleFailureInFunction:v169 file:@"ML3StoreItemTrackData.m" lineNumber:49 description:{@"%s", dlerror()}];

                goto LABEL_185;
              }

              v147 = *v144;
              v148 = [v128 isEqualToString:v147];

              if (v148)
              {
                v124 |= 8uLL;
              }

              else
              {
                v195 = 0;
                v196 = &v195;
                v197 = 0x2020000000;
                v149 = getICStorePlatformAudioTraitAtmosSymbolLoc_ptr;
                v198 = getICStorePlatformAudioTraitAtmosSymbolLoc_ptr;
                if (!getICStorePlatformAudioTraitAtmosSymbolLoc_ptr)
                {
                  *&buf = MEMORY[0x277D85DD0];
                  *(&buf + 1) = 3221225472;
                  v202 = __getICStorePlatformAudioTraitAtmosSymbolLoc_block_invoke;
                  v203 = &unk_278764EF0;
                  v204 = &v195;
                  v150 = iTunesCloudLibrary_18224();
                  v151 = dlsym(v150, "ICStorePlatformAudioTraitAtmos");
                  *(v204[1] + 24) = v151;
                  getICStorePlatformAudioTraitAtmosSymbolLoc_ptr = *(v204[1] + 24);
                  v149 = v196[3];
                }

                _Block_object_dispose(&v195, 8);
                if (!v149)
                {
                  v170 = [MEMORY[0x277CCA890] currentHandler];
                  v171 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformAudioTraitAtmos(void)"];
                  [v170 handleFailureInFunction:v171 file:@"ML3StoreItemTrackData.m" lineNumber:47 description:{@"%s", dlerror()}];

                  goto LABEL_185;
                }

                v152 = *v149;
                v153 = [v128 isEqualToString:v152];

                if (v153)
                {
                  v124 |= 1uLL;
                }

                else
                {
                  v195 = 0;
                  v196 = &v195;
                  v197 = 0x2020000000;
                  v154 = getICStorePlatformAudioTraitSurroundSymbolLoc_ptr;
                  v198 = getICStorePlatformAudioTraitSurroundSymbolLoc_ptr;
                  if (!getICStorePlatformAudioTraitSurroundSymbolLoc_ptr)
                  {
                    *&buf = MEMORY[0x277D85DD0];
                    *(&buf + 1) = 3221225472;
                    v202 = __getICStorePlatformAudioTraitSurroundSymbolLoc_block_invoke;
                    v203 = &unk_278764EF0;
                    v204 = &v195;
                    v155 = iTunesCloudLibrary_18224();
                    v156 = dlsym(v155, "ICStorePlatformAudioTraitSurround");
                    *(v204[1] + 24) = v156;
                    getICStorePlatformAudioTraitSurroundSymbolLoc_ptr = *(v204[1] + 24);
                    v154 = v196[3];
                  }

                  _Block_object_dispose(&v195, 8);
                  if (!v154)
                  {
                    v172 = [MEMORY[0x277CCA890] currentHandler];
                    v173 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformAudioTraitSurround(void)"];
                    [v172 handleFailureInFunction:v173 file:@"ML3StoreItemTrackData.m" lineNumber:48 description:{@"%s", dlerror()}];

LABEL_185:
                    __break(1u);
                  }

                  v157 = *v154;
                  v158 = [v128 isEqualToString:v157];

                  if (v158)
                  {
                    v124 |= 2uLL;
                  }

                  else
                  {
                    v159 = os_log_create("com.apple.amp.medialibrary", "Default");
                    if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
                    {
                      LODWORD(buf) = 138543362;
                      *(&buf + 4) = v128;
                      _os_log_impl(&dword_22D2FA000, v159, OS_LOG_TYPE_ERROR, "[ML3StoreItemTrackData] unsupported audio trait %{public}@", &buf, 0xCu);
                    }
                  }
                }
              }
            }
          }
        }
      }

      v125 = [obj countByEnumeratingWithState:&v187 objects:v199 count:16];
    }

    while (v125);
  }

  v160 = [MEMORY[0x277CCABB0] numberWithInteger:v124];
  [v184 setObject:v160 forKeyedSubscript:&unk_2840C9BD8];

LABEL_178:
  return v184;
}

- (id)_parentDictForItemAlbumId:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__18466;
  v29 = __Block_byref_object_dispose__18467;
  v30 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 stringValue];
  }

  v5 = v4;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v6 = getICStorePlatformRequestClass_softClass;
  v39 = getICStorePlatformRequestClass_softClass;
  if (!getICStorePlatformRequestClass_softClass)
  {
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __getICStorePlatformRequestClass_block_invoke;
    v34 = &unk_278764EF0;
    v35 = &v36;
    __getICStorePlatformRequestClass_block_invoke(&v31);
    v6 = v37[3];
  }

  v7 = v6;
  _Block_object_dispose(&v36, 8);
  v8 = objc_alloc_init(v6);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v9 = getICStoreRequestContextClass_softClass;
  v39 = getICStoreRequestContextClass_softClass;
  if (!getICStoreRequestContextClass_softClass)
  {
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __getICStoreRequestContextClass_block_invoke;
    v34 = &unk_278764EF0;
    v35 = &v36;
    __getICStoreRequestContextClass_block_invoke(&v31);
    v9 = v37[3];
  }

  v10 = v9;
  _Block_object_dispose(&v36, 8);
  v11 = [v9 alloc];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v12 = getICUserIdentityClass_softClass;
  v39 = getICUserIdentityClass_softClass;
  if (!getICUserIdentityClass_softClass)
  {
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __getICUserIdentityClass_block_invoke;
    v34 = &unk_278764EF0;
    v35 = &v36;
    __getICUserIdentityClass_block_invoke(&v31);
    v12 = v37[3];
  }

  v13 = v12;
  _Block_object_dispose(&v36, 8);
  v14 = [v12 activeAccount];
  v15 = [v11 initWithIdentity:v14];

  [v8 setRequestContext:v15];
  [v8 setKeyProfile:@"album-parent"];
  v40[0] = v5;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  [v8 setItemIdentifiers:v16];

  [v8 setPersonalizationStyle:0];
  v17 = dispatch_semaphore_create(0);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __51__ML3StoreItemTrackData__parentDictForItemAlbumId___block_invoke;
  v22[3] = &unk_278763D60;
  v24 = &v25;
  v18 = v17;
  v23 = v18;
  v19 = [v8 performWithResponseHandler:v22];
  dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  v20 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v20;
}

void __51__ML3StoreItemTrackData__parentDictForItemAlbumId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 allItems];
    v7 = [v6 firstObject];

    if (v7)
    {
      v8 = [MEMORY[0x277CBEB38] dictionary];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if ([v7 artistStoreAdamID])
      {
        v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[NSObject artistStoreAdamID](v7, "artistStoreAdamID")}];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v11 forKeyedSubscript:@"albumArtistId"];
      }

      v12 = [v7 artistName];

      if (v12)
      {
        v13 = [v7 artistName];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v13 forKeyedSubscript:@"albumArtistName"];
      }
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v5;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "[ML3StoreItemTrackData] Error fetching album parent store content for item add. %{public}@", &v14, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_storeItemsImportPropertiesFromTrackData:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAC8];
  v4 = a3;
  v5 = MSVPropertyListDataClasses();
  v11 = 0;
  v6 = [v3 unarchivedObjectOfClasses:v5 fromData:v4 error:&v11];

  v7 = v11;
  if (!v6)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "[ML3StoreItemTrackData] Failed to decode track data. err=%{public}@", buf, 0xCu);
    }
  }

  v9 = [v6 objectForKeyedSubscript:@"track_items"];

  return v9;
}

- (id)_storeItemsImportPropertiesFromLookupItems:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = self;
  v19 = v4;
  v5 = [(ML3StoreItemTrackData *)self _allSongItemsFromLookupItems:v4];
  v6 = [MEMORY[0x277CBEB58] set];
  v21 = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 storeAdamID];
        v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
        v15 = [v6 containsObject:v14];

        if (v15)
        {
          v16 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v29 = v13;
            _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "[ML3StoreItemTrackData] not including item with store identifier:%lld", buf, 0xCu);
          }
        }

        else
        {
          v16 = [(ML3StoreItemTrackData *)v20 _importDictionaryForLookupItem:v11 parentCollectionCache:v21];
          [v22 addObject:v16];
          v17 = [MEMORY[0x277CCABB0] numberWithLongLong:v13];
          [v6 addObject:v17];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v8);
  }

  return v22;
}

- (id)_storePlatformDateFormatter
{
  storePlatformDateFormatter = self->_storePlatformDateFormatter;
  if (!storePlatformDateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = self->_storePlatformDateFormatter;
    self->_storePlatformDateFormatter = v4;

    [(NSDateFormatter *)self->_storePlatformDateFormatter setDateFormat:@"YYYY-MM-dd"];
    storePlatformDateFormatter = self->_storePlatformDateFormatter;
  }

  return storePlatformDateFormatter;
}

- (unint64_t)trackCount
{
  v2 = [(ML3StoreItemTrackData *)self parsedStoreItemsImportProperties];
  v3 = [v2 count];

  return v3;
}

- (NSArray)parsedStoreItemsImportProperties
{
  parsedStoreItemsImportProperties = self->_parsedStoreItemsImportProperties;
  if (!parsedStoreItemsImportProperties)
  {
    if (self->_lookupItems)
    {
      v4 = [(ML3StoreItemTrackData *)self _storeItemsImportPropertiesFromLookupItems:?];
LABEL_6:
      v5 = self->_parsedStoreItemsImportProperties;
      self->_parsedStoreItemsImportProperties = v4;

      parsedStoreItemsImportProperties = self->_parsedStoreItemsImportProperties;
      goto LABEL_7;
    }

    if (self->_trackData)
    {
      v4 = [(ML3StoreItemTrackData *)self _storeItemsImportPropertiesFromTrackData:?];
      goto LABEL_6;
    }

    parsedStoreItemsImportProperties = 0;
  }

LABEL_7:

  return parsedStoreItemsImportProperties;
}

- (NSData)trackData
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(ML3StoreItemTrackData *)self parsedStoreItemsImportProperties];
  v3 = v2;
  if (v2)
  {
    v7 = @"track_items";
    v8[0] = v2;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ML3StoreItemTrackData)initWithTrackData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ML3StoreItemTrackData;
  v5 = [(ML3StoreItemTrackData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    trackData = v5->_trackData;
    v5->_trackData = v6;
  }

  return v5;
}

- (ML3StoreItemTrackData)initWithLookupItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ML3StoreItemTrackData;
  v5 = [(ML3StoreItemTrackData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    lookupItems = v5->_lookupItems;
    v5->_lookupItems = v6;
  }

  return v5;
}

@end