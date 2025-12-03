@interface ML3StoreItemPlaylistData
- (ML3StoreItemPlaylistData)initWithLookupItems:(id)items;
- (ML3StoreItemPlaylistData)initWithPlaylistsData:(id)data;
- (NSArray)parsedStorePlaylistsImportProperties;
- (NSData)playlistsData;
- (id)_bestArtworkImageURLFromStoreArtworkVariants:(id)variants cropStyle:(id)style;
- (id)_bestPlaylistArtworkImageURLFromStoreArtworkVariants:(id)variants;
- (id)_playlistPropertiesForLookupItems:(id)items;
- (id)_playlistPropertiesFromPlaylistData:(id)data;
- (unint64_t)playlistCount;
@end

@implementation ML3StoreItemPlaylistData

- (id)_bestArtworkImageURLFromStoreArtworkVariants:(id)variants cropStyle:(id)style
{
  v59 = *MEMORY[0x277D85DE8];
  variantsCopy = variants;
  styleCopy = style;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = variantsCopy;
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
        sizeInfo = [v16 sizeInfo];
        [sizeInfo maxSupportedSize];
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
  sizeInfo2 = [v11 sizeInfo];
  [sizeInfo2 maxSupportedSize];
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
  v36 = getICStoreArtworkInfoImageFormatJPEGSymbolLoc_ptr;
  v57 = getICStoreArtworkInfoImageFormatJPEGSymbolLoc_ptr;
  if (!getICStoreArtworkInfoImageFormatJPEGSymbolLoc_ptr)
  {
    v49 = MEMORY[0x277D85DD0];
    v50 = 3221225472;
    v51 = __getICStoreArtworkInfoImageFormatJPEGSymbolLoc_block_invoke;
    v52 = &unk_278764EF0;
    v53 = &v54;
    v37 = iTunesCloudLibrary();
    v38 = dlsym(v37, "ICStoreArtworkInfoImageFormatJPEG");
    *(v53[1] + 24) = v38;
    getICStoreArtworkInfoImageFormatJPEGSymbolLoc_ptr = *(v53[1] + 24);
    v36 = v55[3];
  }

  _Block_object_dispose(&v54, 8);
  if (!v36)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStoreArtworkInfoImageFormatJPEG(void)"];
    [currentHandler handleFailureInFunction:v44 file:@"ML3StoreItemPlaylistData.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v39 = *v36;
  v40 = [v11 artworkURLWithSize:styleCopy cropStyle:v39 format:MSVDeviceSupportsExtendedColorDisplay() preferP3ColorSpace:{v25, v27}];

  absoluteString = [v40 absoluteString];

  return absoluteString;
}

- (id)_bestPlaylistArtworkImageURLFromStoreArtworkVariants:(id)variants
{
  variantsCopy = variants;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getICStoreArtworkInfoCropStyleSquareCenterCropSymbolLoc_ptr;
  v14 = getICStoreArtworkInfoCropStyleSquareCenterCropSymbolLoc_ptr;
  if (!getICStoreArtworkInfoCropStyleSquareCenterCropSymbolLoc_ptr)
  {
    v6 = iTunesCloudLibrary();
    v12[3] = dlsym(v6, "ICStoreArtworkInfoCropStyleSquareCenterCrop");
    getICStoreArtworkInfoCropStyleSquareCenterCropSymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v5)
  {
    v7 = [(ML3StoreItemPlaylistData *)self _bestArtworkImageURLFromStoreArtworkVariants:variantsCopy cropStyle:*v5];

    return v7;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStoreArtworkInfoCropStyleSquareCenterCrop(void)"];
    [currentHandler handleFailureInFunction:v10 file:@"ML3StoreItemPlaylistData.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (id)_playlistPropertiesFromPlaylistData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  v5 = MSVPropertyListDataClasses();
  v11 = 0;
  v6 = [v3 unarchivedObjectOfClasses:v5 fromData:dataCopy error:&v11];

  v7 = v11;
  if (!v6)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "Failed to decode playlist data. err=%{public}@", buf, 0xCu);
    }
  }

  v9 = [v6 objectForKeyedSubscript:@"playlist"];

  return v9;
}

- (id)_playlistPropertiesForLookupItems:(id)items
{
  v61 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = itemsCopy;
  v45 = [obj countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v45)
  {
    v44 = *v48;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v48 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v47 + 1) + 8 * i);
        kind = [v5 kind];
        v56 = 0;
        v57 = &v56;
        v58 = 0x2020000000;
        v7 = getICStorePlatformMetadataKindPlaylistSymbolLoc_ptr;
        v59 = getICStorePlatformMetadataKindPlaylistSymbolLoc_ptr;
        if (!getICStorePlatformMetadataKindPlaylistSymbolLoc_ptr)
        {
          v51 = MEMORY[0x277D85DD0];
          v52 = 3221225472;
          v53 = __getICStorePlatformMetadataKindPlaylistSymbolLoc_block_invoke;
          v54 = &unk_278764EF0;
          v55 = &v56;
          v8 = iTunesCloudLibrary();
          v9 = dlsym(v8, "ICStorePlatformMetadataKindPlaylist");
          *(v55[1] + 24) = v9;
          getICStorePlatformMetadataKindPlaylistSymbolLoc_ptr = *(v55[1] + 24);
          v7 = v57[3];
        }

        _Block_object_dispose(&v56, 8);
        if (!v7)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformMetadataKindPlaylist(void)"];
          [currentHandler handleFailureInFunction:v39 file:@"ML3StoreItemPlaylistData.m" lineNumber:21 description:{@"%s", dlerror()}];

          __break(1u);
        }

        v10 = [kind isEqualToString:*v7];

        if (v10)
        {
          v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
          metadataDictionary = [v5 metadataDictionary];
          v13 = [metadataDictionary objectForKeyedSubscript:@"name"];

          if (v13)
          {
            v14 = [metadataDictionary objectForKeyedSubscript:@"name"];
            [v11 setObject:v14 forKeyedSubscript:&unk_2840C9650];
          }

          v15 = [metadataDictionary objectForKeyedSubscript:@"playlistId"];

          if (v15)
          {
            v16 = [metadataDictionary objectForKeyedSubscript:@"playlistId"];
            [v11 setObject:v16 forKeyedSubscript:&unk_2840C9668];
          }

          v17 = [metadataDictionary objectForKeyedSubscript:@"curatorName"];

          if (v17)
          {
            v18 = [metadataDictionary objectForKeyedSubscript:@"curatorName"];
            [v11 setObject:v18 forKeyedSubscript:&unk_2840C9680];
          }

          v19 = [metadataDictionary objectForKeyedSubscript:@"versionHash"];

          if (v19)
          {
            v20 = [metadataDictionary objectForKeyedSubscript:@"versionHash"];
            [v11 setObject:v20 forKeyedSubscript:&unk_2840C9698];
          }

          v21 = [metadataDictionary objectForKeyedSubscript:@"isChart"];

          if (v21)
          {
            v22 = [metadataDictionary objectForKeyedSubscript:@"isChart"];
            [v11 setObject:v22 forKeyedSubscript:&unk_2840C96B0];
          }

          v46 = [metadataDictionary objectForKeyedSubscript:@"description"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v46;
            if (!v23)
            {
              goto LABEL_26;
            }

LABEL_25:
            v43 = v23;
            [v11 setObject:v23 forKeyedSubscript:&unk_2840C96C8];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              allValues = [v46 allValues];
              firstObject = [allValues firstObject];

              v23 = firstObject;
              if (firstObject)
              {
                goto LABEL_25;
              }
            }

LABEL_26:
            v43 = 0;
          }

          artworkInfos = [v5 artworkInfos];
          v27 = [(ML3StoreItemPlaylistData *)self _bestPlaylistArtworkImageURLFromStoreArtworkVariants:artworkInfos];
          if (v27)
          {
            [v11 setObject:v27 forKeyedSubscript:&unk_2840C96E0];
          }

          [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_2840C96F8];
          v28 = MEMORY[0x277CCABB0];
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v29 = [v28 numberWithDouble:?];
          [v11 setObject:v29 forKeyedSubscript:&unk_2840C9710];
          [v11 setObject:v29 forKeyedSubscript:&unk_2840C9728];
          v30 = [metadataDictionary objectForKey:@"lastModifiedDate"];
          if (v30)
          {
            v31 = objc_alloc_init(MEMORY[0x277CCA968]);
            v32 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
            [v31 setLocale:v32];

            [v31 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
            v33 = [v31 dateFromString:v30];
            v34 = MEMORY[0x277CCABB0];
            [v33 timeIntervalSinceReferenceDate];
            v35 = [v34 numberWithDouble:?];
            [v11 setObject:v35 forKeyedSubscript:&unk_2840C9728];
          }

          v36 = [metadataDictionary objectForKeyedSubscript:@"childrenIds"];
          if (v36)
          {
            [v11 setObject:v36 forKeyedSubscript:@"childrenIds"];
          }

          if (v11)
          {
            [array addObject:v11];
          }

          continue;
        }
      }

      v45 = [obj countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v45);
  }

  return array;
}

- (unint64_t)playlistCount
{
  parsedStorePlaylistsImportProperties = [(ML3StoreItemPlaylistData *)self parsedStorePlaylistsImportProperties];
  v3 = [parsedStorePlaylistsImportProperties count];

  return v3;
}

- (NSArray)parsedStorePlaylistsImportProperties
{
  parsedPlaylistsImportProperties = self->_parsedPlaylistsImportProperties;
  if (!parsedPlaylistsImportProperties)
  {
    if (self->_lookupItems)
    {
      v4 = [(ML3StoreItemPlaylistData *)self _playlistPropertiesForLookupItems:?];
LABEL_6:
      v5 = self->_parsedPlaylistsImportProperties;
      self->_parsedPlaylistsImportProperties = v4;

      parsedPlaylistsImportProperties = self->_parsedPlaylistsImportProperties;
      goto LABEL_7;
    }

    if (self->_playlistData)
    {
      v4 = [(ML3StoreItemPlaylistData *)self _playlistPropertiesFromPlaylistData:?];
      goto LABEL_6;
    }

    parsedPlaylistsImportProperties = 0;
  }

LABEL_7:

  return parsedPlaylistsImportProperties;
}

- (NSData)playlistsData
{
  v8[1] = *MEMORY[0x277D85DE8];
  parsedStorePlaylistsImportProperties = [(ML3StoreItemPlaylistData *)self parsedStorePlaylistsImportProperties];
  v3 = parsedStorePlaylistsImportProperties;
  if (parsedStorePlaylistsImportProperties)
  {
    v7 = @"playlist";
    v8[0] = parsedStorePlaylistsImportProperties;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ML3StoreItemPlaylistData)initWithPlaylistsData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = ML3StoreItemPlaylistData;
  v5 = [(ML3StoreItemPlaylistData *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    playlistData = v5->_playlistData;
    v5->_playlistData = v6;
  }

  return v5;
}

- (ML3StoreItemPlaylistData)initWithLookupItems:(id)items
{
  itemsCopy = items;
  v10.receiver = self;
  v10.super_class = ML3StoreItemPlaylistData;
  v5 = [(ML3StoreItemPlaylistData *)&v10 init];
  if (v5)
  {
    v6 = [itemsCopy copy];
    lookupItems = v5->_lookupItems;
    v5->_lookupItems = v6;

    parsedPlaylistsImportProperties = v5->_parsedPlaylistsImportProperties;
    v5->_parsedPlaylistsImportProperties = 0;
  }

  return v5;
}

@end