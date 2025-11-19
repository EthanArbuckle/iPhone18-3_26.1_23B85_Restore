@interface SUUIMediaLibraryInterface
- (BOOL)isItemLocalAudiobook:(id)a3;
- (BOOL)performActionForLibraryItem:(id)a3;
- (id)_newDefaultQuery;
- (id)_storePlatformKindForMediaItem:(id)a3;
- (id)stateForLibraryItem:(id)a3;
- (int64_t)_availabilityForMediaItem:(id)a3;
- (unint64_t)_AVTypesForMediaItem:(id)a3;
- (void)_restrictQueryToLocalContent:(id)a3;
- (void)enumerateStatesForLibraryItems:(id)a3 usingBlock:(id)a4;
- (void)removeMediaItemsForLibraryItems:(id)a3;
@end

@implementation SUUIMediaLibraryInterface

- (void)enumerateStatesForLibraryItems:(id)a3 usingBlock:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SUUIMediaPlayerFramework();
  v22 = self;
  v9 = [(SUUIMediaLibraryInterface *)self _newDefaultQuery];
  v25 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreAccountID", v8);
  v24 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyIsHD", v8);
  v23 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v8);
  v21 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v8);
  v36 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v6;
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
      v16 = [v13 storeItemIdentifier];

      if (v16)
      {
        v17 = [v13 storeItemIdentifier];
        v18 = [v21 predicateWithValue:v17 forProperty:v23];

        [v9 addFilterPredicate:v18];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __71__SUUIMediaLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke;
        v27[3] = &unk_2798FD528;
        v28 = v15;
        v29 = v22;
        v30 = v24;
        v31 = v25;
        [v9 _enumerateUnorderedItemsUsingBlock:v27];
        [v9 removeFilterPredicate:v18];
      }

      v7[2](v7, v13, v15, &v36);
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

- (BOOL)performActionForLibraryItem:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SUUIMediaPlayerFramework();
  v6 = SUUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v5);
  v7 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v5);
  v8 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v5);
  v9 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyMediaType", v5);
  v10 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStorePlaylistID", v5);
  v61 = v6;
  v11 = objc_alloc_init(v6);
  v12 = v4;
  v13 = [v4 storeItemIdentifier];
  v14 = v7;
  v15 = [v7 predicateWithValue:v13 forProperty:v8];
  [v11 addFilterPredicate:v15];

  v64 = v9;
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{v8, v9, v10, 0}];
  [v11 setItemPropertiesToFetch:v16];

  v17 = self;
  [(SUUIMediaLibraryInterface *)self _restrictQueryToLocalContent:v11];
  v63 = v11;
  v18 = [v11 items];
  v19 = [v18 firstObject];

  v20 = [v19 mediaType];
  v21 = [v19 mediaType];
  if (v19 && (v20 & 0xFF00) != 0 && (v21 & 0x800) == 0)
  {
    v22 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = v12;
    v24 = [v12 storeItemIdentifier];
    v25 = [v22 initWithFormat:@"videos://play?adam-id=%lld&allowCloudPlayback=1", objc_msgSend(v24, "longLongValue")];

    v26 = [MEMORY[0x277CBEBC0] URLWithString:v25];
    SUUIMetricsOpenSensitiveURL(v26, 0);

    v27 = 1;
    v28 = v64;
  }

  else
  {
    v58 = v21;
    v29 = [(objc_class *)v61 albumsQuery];
    [(SUUIMediaLibraryInterface *)self _restrictQueryToLocalContent:v29];
    v23 = v12;
    v30 = [v12 storeItemIdentifier];
    v31 = v14;
    v60 = v10;
    v32 = [v14 predicateWithValue:v30 forProperty:v10];
    [v29 addFilterPredicate:v32];

    v59 = v29;
    v33 = [v29 items];
    v34 = [v33 count];
    v35 = 0;
    if (!v19 || v34)
    {
      v10 = v60;
      v28 = v64;
    }

    else
    {
      v36 = [v19 valueForProperty:v60];
      if (v36)
      {
        if (([v19 mediaType] & 4) != 0)
        {
          [(objc_class *)v61 audiobooksQuery];
        }

        else
        {
          [(objc_class *)v61 albumsQuery];
        }
        v37 = ;

        [(SUUIMediaLibraryInterface *)v17 _restrictQueryToLocalContent:v37];
        v38 = [v31 predicateWithValue:v36 forProperty:v60];
        [v37 addFilterPredicate:v38];

        v39 = [v37 items];

        v35 = [v19 valueForProperty:v8];
        v33 = v39;
        v59 = v37;
      }

      else
      {
        v35 = 0;
      }

      v28 = v64;

      v10 = v60;
    }

    v40 = [v33 count];
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
        v56 = v33;
        v57 = v23;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v44 = v33;
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
        v33 = v56;
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

- (BOOL)isItemLocalAudiobook:(id)a3
{
  v3 = a3;
  v4 = SUUIMediaPlayerFramework();
  v5 = SUUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v4);
  v6 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v4);
  v7 = [v5 audiobooksQuery];
  v8 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStorePlaylistID", v4);
  v9 = [v3 storeItemIdentifier];

  v10 = [v6 predicateWithValue:v9 forProperty:v8];

  [v7 addFilterPredicate:v10];
  v11 = [v7 items];
  LOBYTE(v8) = [v11 count] != 0;

  return v8;
}

- (id)stateForLibraryItem:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SUUILibraryItemState);
  v6 = SUUIMediaPlayerFramework();
  v7 = [(SUUIMediaLibraryInterface *)self _newDefaultQuery];
  v8 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreAccountID", v6);
  v9 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyIsHD", v6);
  v10 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v6);
  v11 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v6);
  v12 = [v4 storeItemIdentifier];

  v13 = [v11 predicateWithValue:v12 forProperty:v10];

  [v7 addFilterPredicate:v13];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __49__SUUIMediaLibraryInterface_stateForLibraryItem___block_invoke;
  v20[3] = &unk_2798FD528;
  v14 = v5;
  v21 = v14;
  v22 = self;
  v23 = v9;
  v24 = v8;
  v15 = v8;
  v16 = v9;
  [v7 _enumerateUnorderedItemsUsingBlock:v20];
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

- (void)removeMediaItemsForLibraryItems:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = SUUIMediaPlayerFramework();
  v5 = SUUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v4);
  v6 = SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v4);
  v19 = SUUIWeakLinkedClassForString(&cfstr_Mpmedialibrary.isa, v4);
  v7 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v4);
  v8 = objc_alloc_init(v5);
  v9 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
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

        v14 = [*(*(&v21 + 1) + 8 * v13) storeItemIdentifier];
        v15 = [v6 predicateWithValue:v14 forProperty:v7];

        [v8 addFilterPredicate:v15];
        v16 = [v8 items];
        v17 = [v16 firstObject];

        if (v17)
        {
          [v9 addObject:v17];
        }

        [v8 removeFilterPredicate:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  if ([v9 count])
  {
    v18 = [v19 defaultMediaLibrary];
    [v18 removeItems:v9];
  }
}

- (int64_t)_availabilityForMediaItem:(id)a3
{
  v3 = a3;
  if (_availabilityForMediaItem__sOnce != -1)
  {
    [SUUIMediaLibraryInterface _availabilityForMediaItem:];
  }

  v4 = [v3 valueForProperty:_availabilityForMediaItem__sFamilyAccountIDProperty];
  if ([v4 unsignedLongLongValue] && (objc_msgSend(v3, "mediaType") & 0x300) != 0)
  {
    v5 = [v3 valueForProperty:_availabilityForMediaItem__sFilePathProperty];
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

- (unint64_t)_AVTypesForMediaItem:(id)a3
{
  if (([a3 mediaType] & 0xFF00) != 0)
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

- (void)_restrictQueryToLocalContent:(id)a3
{
  v3 = a3;
  v4 = SUUIMediaPlayerFramework();
  v5 = *SUUIWeakLinkedSymbolForString("MPMediaItemPropertyIsLocal", v4);
  v6 = [SUUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa v4)];

  [v3 addFilterPredicate:v6];
}

- (id)_storePlatformKindForMediaItem:(id)a3
{
  v3 = [a3 mediaType];
  result = 0;
  if (v3 <= 255)
  {
    if (v3 > 3)
    {
      if (v3 == 4)
      {
        return @"book";
      }

      if (v3 != 8)
      {
        return result;
      }
    }

    else
    {
      if (v3 == 1)
      {
        return @"song";
      }

      if (v3 != 2)
      {
        return result;
      }
    }

    return @"podcastEpisode";
  }

  if (v3 <= 1023)
  {
    v5 = @"tvEpisode";
    if (v3 != 512)
    {
      v5 = 0;
    }

    if (v3 == 256)
    {
      return @"movie";
    }

    else
    {
      return v5;
    }
  }

  switch(v3)
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