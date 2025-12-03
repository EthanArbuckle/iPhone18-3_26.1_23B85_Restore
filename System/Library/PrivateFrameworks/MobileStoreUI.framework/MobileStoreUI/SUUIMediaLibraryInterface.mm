@interface SUUIMediaLibraryInterface
- (BOOL)isItemLocalAudiobook:(id)audiobook;
- (BOOL)performActionForLibraryItem:(id)item;
- (id)_newDefaultQuery;
- (id)_storePlatformKindForMediaItem:(id)item;
- (id)stateForLibraryItem:(id)item;
- (int64_t)_availabilityForMediaItem:(id)item;
- (unint64_t)_AVTypesForMediaItem:(id)item;
- (void)_restrictQueryToLocalContent:(id)content;
- (void)enumerateStatesForLibraryItems:(id)items usingBlock:(id)block;
- (void)removeMediaItemsForLibraryItems:(id)items;
@end

@implementation SUUIMediaLibraryInterface

- (void)enumerateStatesForLibraryItems:(id)items usingBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  blockCopy = block;
  v8 = SUUIMediaPlayerFramework();
  selfCopy = self;
  _newDefaultQuery = [(SUUIMediaLibraryInterface *)self _newDefaultQuery];
  v25 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreAccountID", v8);
  v24 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyIsHD", v8);
  v23 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v8);
  v21 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v8);
  v36 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = itemsCopy;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v26 = *v33;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v33 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v32 + 1) + 8 * v12);
      v14 = objc_autoreleasePoolPush();
      v15 = objc_alloc_init(SUUILibraryItemState);
      storeItemIdentifier = [v13 storeItemIdentifier];

      if (storeItemIdentifier)
      {
        storeItemIdentifier2 = [v13 storeItemIdentifier];
        v18 = [v21 predicateWithValue:storeItemIdentifier2 forProperty:v23];

        [_newDefaultQuery addFilterPredicate:v18];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __71__SUUIMediaLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke;
        v27[3] = &unk_2798FD528;
        v28 = v15;
        v29 = selfCopy;
        v30 = v24;
        v31 = v25;
        [_newDefaultQuery _enumerateUnorderedItemsUsingBlock:v27];
        [_newDefaultQuery removeFilterPredicate:v18];
      }

      blockCopy[2](blockCopy, v13, v15, &v36);
      v19 = v36;

      objc_autoreleasePoolPop(v14);
      if (v19)
      {
        break;
      }

      if (v11 == ++v12)
      {
        v11 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __71__SUUIMediaLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = a2;
    [v5 setAvailability:{objc_msgSend(v6, "_availabilityForMediaItem:", v7)}];
    [*(a1 + 32) setAVTypes:{objc_msgSend(*(a1 + 40), "_AVTypesForMediaItem:", v7)}];
    v8 = *(a1 + 32);
    v9 = [v7 valueForProperty:*(a1 + 48)];
    [v8 setHighDefinition:{objc_msgSend(v9, "BOOLValue")}];

    [*(a1 + 32) setRental:{objc_msgSend(v7, "isRental")}];
    v10 = *(a1 + 32);
    v11 = [v7 valueForProperty:*(a1 + 56)];
    [v10 setStoreAccountIdentifier:v11];

    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) _storePlatformKindForMediaItem:v7];

    [v12 setStorePlatformKind:v13];
    *a3 = 1;
  }
}

- (BOOL)performActionForLibraryItem:(id)item
{
  v70 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = SUUIMediaPlayerFramework();
  v6 = SUUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v5);
  v7 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v5);
  v8 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v5);
  v9 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyMediaType", v5);
  v10 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStorePlaylistID", v5);
  v61 = v6;
  v11 = objc_alloc_init(v6);
  v12 = itemCopy;
  storeItemIdentifier = [itemCopy storeItemIdentifier];
  v14 = v7;
  v15 = [v7 predicateWithValue:storeItemIdentifier forProperty:v8];
  [v11 addFilterPredicate:v15];

  v64 = v9;
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{v8, v9, v10, 0}];
  [v11 setItemPropertiesToFetch:v16];

  selfCopy = self;
  [(SUUIMediaLibraryInterface *)self _restrictQueryToLocalContent:v11];
  v63 = v11;
  items = [v11 items];
  firstObject = [items firstObject];

  mediaType = [firstObject mediaType];
  mediaType2 = [firstObject mediaType];
  if (firstObject && (mediaType & 0xFF00) != 0 && (mediaType2 & 0x800) == 0)
  {
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = v12;
    storeItemIdentifier2 = [v12 storeItemIdentifier];
    v25 = [v22 initWithFormat:@"videos://play?adam-id=%lld&allowCloudPlayback=1", objc_msgSend(storeItemIdentifier2, "longLongValue")];

    v26 = [MEMORY[0x277CBEBC0] URLWithString:v25];
    SUUIMetricsOpenSensitiveURL(v26, 0);

    v27 = 1;
    v28 = v64;
  }

  else
  {
    v58 = mediaType2;
    albumsQuery = [(objc_class *)v61 albumsQuery];
    [(SUUIMediaLibraryInterface *)self _restrictQueryToLocalContent:albumsQuery];
    v23 = v12;
    storeItemIdentifier3 = [v12 storeItemIdentifier];
    v31 = v14;
    v60 = v10;
    v32 = [v14 predicateWithValue:storeItemIdentifier3 forProperty:v10];
    [albumsQuery addFilterPredicate:v32];

    v59 = albumsQuery;
    items2 = [albumsQuery items];
    v34 = [items2 count];
    v35 = 0;
    if (!firstObject || v34)
    {
      v10 = v60;
      v28 = v64;
    }

    else
    {
      v36 = [firstObject valueForProperty:v60];
      if (v36)
      {
        if (([firstObject mediaType] & 4) != 0)
        {
          [(objc_class *)v61 audiobooksQuery];
        }

        else
        {
          [(objc_class *)v61 albumsQuery];
        }
        v37 = ;

        [(SUUIMediaLibraryInterface *)selfCopy _restrictQueryToLocalContent:v37];
        v38 = [v31 predicateWithValue:v36 forProperty:v60];
        [v37 addFilterPredicate:v38];

        items3 = [v37 items];

        v35 = [firstObject valueForProperty:v8];
        items2 = items3;
        v59 = v37;
      }

      else
      {
        v35 = 0;
      }

      v28 = v64;

      v10 = v60;
    }

    v40 = [items2 count];
    v27 = v40 != 0;
    if (v40)
    {
      v41 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Mpmediaitemcol.isa v5))];
      v42 = [SUUIWeakLinkedClassForString(&cfstr_Mpmusicplayerc.isa v5)];
      v62 = v41;
      [v42 setQueueWithItemCollection:v41];
      v43 = v58;
      if (v35)
      {
        v55 = v27;
        v56 = items2;
        v57 = v23;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v44 = items2;
        v45 = [v44 countByEnumeratingWithState:&v65 objects:v69 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v66;
          v54 = v42;
          while (2)
          {
            for (i = 0; i != v46; ++i)
            {
              if (*v66 != v47)
              {
                objc_enumerationMutation(v44);
              }

              v49 = *(*(&v65 + 1) + 8 * i);
              v50 = [v49 valueForProperty:v8];
              v51 = [v50 isEqualToNumber:v35];

              if (v51)
              {
                v42 = v54;
                [v54 setNowPlayingItem:v49];
                goto LABEL_27;
              }
            }

            v46 = [v44 countByEnumeratingWithState:&v65 objects:v69 count:16];
            v42 = v54;
            if (v46)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:

        v23 = v57;
        v43 = v58;
        v28 = v64;
        v10 = v60;
        items2 = v56;
        v27 = v55;
      }

      [v42 play];
      if ((v43 & 0x800) != 0)
      {
        v52 = [MEMORY[0x277CBEBC0] URLWithString:@"music://tab/?tab=library&library-menu=com.apple.Music.LibraryView.MusicVideos"];
        SUUIMetricsOpenSensitiveURL(v52, 0);
      }
    }
  }

  return v27;
}

- (BOOL)isItemLocalAudiobook:(id)audiobook
{
  audiobookCopy = audiobook;
  v4 = SUUIMediaPlayerFramework();
  v5 = SUUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v4);
  v6 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v4);
  audiobooksQuery = [v5 audiobooksQuery];
  v8 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStorePlaylistID", v4);
  storeItemIdentifier = [audiobookCopy storeItemIdentifier];

  v10 = [v6 predicateWithValue:storeItemIdentifier forProperty:v8];

  [audiobooksQuery addFilterPredicate:v10];
  items = [audiobooksQuery items];
  LOBYTE(v8) = [items count] != 0;

  return v8;
}

- (id)stateForLibraryItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(SUUILibraryItemState);
  v6 = SUUIMediaPlayerFramework();
  _newDefaultQuery = [(SUUIMediaLibraryInterface *)self _newDefaultQuery];
  v8 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreAccountID", v6);
  v9 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyIsHD", v6);
  v10 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v6);
  v11 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v6);
  storeItemIdentifier = [itemCopy storeItemIdentifier];

  v13 = [v11 predicateWithValue:storeItemIdentifier forProperty:v10];

  [_newDefaultQuery addFilterPredicate:v13];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __49__SUUIMediaLibraryInterface_stateForLibraryItem___block_invoke;
  v20[3] = &unk_2798FD528;
  v14 = v5;
  v21 = v14;
  selfCopy = self;
  v23 = v9;
  v24 = v8;
  v15 = v8;
  v16 = v9;
  [_newDefaultQuery _enumerateUnorderedItemsUsingBlock:v20];
  v17 = v24;
  v18 = v14;

  return v14;
}

void __49__SUUIMediaLibraryInterface_stateForLibraryItem___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = a2;
    [v5 setAvailability:{objc_msgSend(v6, "_availabilityForMediaItem:", v7)}];
    [*(a1 + 32) setAVTypes:{objc_msgSend(*(a1 + 40), "_AVTypesForMediaItem:", v7)}];
    v8 = *(a1 + 32);
    v9 = [v7 valueForProperty:*(a1 + 48)];
    [v8 setHighDefinition:{objc_msgSend(v9, "BOOLValue")}];

    [*(a1 + 32) setRental:{objc_msgSend(v7, "isRental")}];
    v10 = *(a1 + 32);
    v11 = [v7 valueForProperty:*(a1 + 56)];
    [v10 setStoreAccountIdentifier:v11];

    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) _storePlatformKindForMediaItem:v7];

    [v12 setStorePlatformKind:v13];
    *a3 = 1;
  }
}

- (void)removeMediaItemsForLibraryItems:(id)items
{
  v26 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = SUUIMediaPlayerFramework();
  v5 = SUUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v4);
  v6 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v4);
  v19 = SUUIWeakLinkedClassForString(&cfstr_Mpmedialibrary.isa, v4);
  v7 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v4);
  v8 = objc_alloc_init(v5);
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = itemsCopy;
  v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        storeItemIdentifier = [*(*(&v21 + 1) + 8 * v13) storeItemIdentifier];
        v15 = [v6 predicateWithValue:storeItemIdentifier forProperty:v7];

        [v8 addFilterPredicate:v15];
        items = [v8 items];
        firstObject = [items firstObject];

        if (firstObject)
        {
          [array addObject:firstObject];
        }

        [v8 removeFilterPredicate:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  if ([array count])
  {
    defaultMediaLibrary = [v19 defaultMediaLibrary];
    [defaultMediaLibrary removeItems:array];
  }
}

- (int64_t)_availabilityForMediaItem:(id)item
{
  itemCopy = item;
  if (_availabilityForMediaItem__sOnce != -1)
  {
    [SUUIMediaLibraryInterface _availabilityForMediaItem:];
  }

  v4 = [itemCopy valueForProperty:_availabilityForMediaItem__sFamilyAccountIDProperty];
  if ([v4 unsignedLongLongValue] && (objc_msgSend(itemCopy, "mediaType") & 0x300) != 0)
  {
    v5 = [itemCopy valueForProperty:_availabilityForMediaItem__sFilePathProperty];
    if ([v5 length])
    {
      v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v5 isDirectory:0];
      v7 = [[_availabilityForMediaItem__sPlayerItemClass alloc] initWithURL:v6];
      if ([v7 isContentAuthorizedForPlayback])
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

id __55__SUUIMediaLibraryInterface__availabilityForMediaItem___block_invoke()
{
  v0 = SUUIMediaPlayerFramework();
  v1 = SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreFamilyAccountID", v0);
  objc_storeStrong(&_availabilityForMediaItem__sFamilyAccountIDProperty, *v1);
  v2 = SUUIWeakLinkedSymbolForString("MPMediaItemPropertyFilePath", v0);
  objc_storeStrong(&_availabilityForMediaItem__sFilePathProperty, *v2);
  v3 = SUUIAVFoundationFramework();
  result = SUUIWeakLinkedClassForString(&cfstr_Avplayeritem.isa, v3);
  _availabilityForMediaItem__sPlayerItemClass = result;
  return result;
}

- (unint64_t)_AVTypesForMediaItem:(id)item
{
  if (([item mediaType] & 0xFF00) != 0)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

- (id)_newDefaultQuery
{
  v3 = SUUIMediaPlayerFramework();
  v4 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v3));
  [(SUUIMediaLibraryInterface *)self _restrictQueryToLocalContent:v4];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v5 addObject:{*SUUIWeakLinkedSymbolForString("MPMediaItemPropertyIsHD", v3)}];
  [v5 addObject:{*SUUIWeakLinkedSymbolForString("MPMediaItemPropertyIsRental", v3)}];
  [v5 addObject:{*SUUIWeakLinkedSymbolForString("MPMediaItemPropertyMediaType", v3)}];
  [v5 addObject:{*SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreAccountID", v3)}];
  [v4 setItemPropertiesToFetch:v5];

  return v4;
}

- (void)_restrictQueryToLocalContent:(id)content
{
  contentCopy = content;
  v4 = SUUIMediaPlayerFramework();
  v5 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyIsLocal", v4);
  v6 = [SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa v4)];

  [contentCopy addFilterPredicate:v6];
}

- (id)_storePlatformKindForMediaItem:(id)item
{
  mediaType = [item mediaType];
  result = 0;
  if (mediaType <= 255)
  {
    if (mediaType > 3)
    {
      if (mediaType == 4)
      {
        return @"book";
      }

      if (mediaType != 8)
      {
        return result;
      }
    }

    else
    {
      if (mediaType == 1)
      {
        return @"song";
      }

      if (mediaType != 2)
      {
        return result;
      }
    }

    return @"podcastEpisode";
  }

  if (mediaType <= 1023)
  {
    v5 = @"tvEpisode";
    if (mediaType != 512)
    {
      v5 = 0;
    }

    if (mediaType == 256)
    {
      return @"movie";
    }

    else
    {
      return v5;
    }
  }

  switch(mediaType)
  {
    case 1024:
      return @"podcastEpisode";
    case 2048:
      return @"musicVideo";
    case 4096:
      return @"podcastEpisode";
  }

  return result;
}

@end