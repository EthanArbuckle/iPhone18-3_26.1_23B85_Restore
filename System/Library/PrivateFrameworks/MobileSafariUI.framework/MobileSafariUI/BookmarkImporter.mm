@interface BookmarkImporter
- (BookmarkImporter)initWithBookmarkCollection:(id)collection;
- (id)_builtInBookmarkItemWithTemplate:(id)template forLocale:(id)locale deviceClass:(int64_t)class;
- (id)_builtinBookmarkWithInfo:(id)info asCarrierBookmark:(BOOL)bookmark;
- (id)_builtinFavoritesForLocale:(id)locale deviceClass:(int64_t)class;
- (id)_googleChannelReplacementStringForDeviceClass:(int64_t)class;
- (id)_lastImportedCarrierBookmarksInfo;
- (id)_myAccountBookmarkInfo;
- (id)_oldDeletedStaticBookmarks;
- (id)_uniqueYouTubeBookmarkFolderName;
- (id)test_builtinFavoritesForLocale:(id)locale deviceClass:(int64_t)class;
- (int64_t)_currentDeviceClass;
- (void)_appendBookmarksFromSource:(id)source toParent:(int)parent;
- (void)_appendBuiltinBookmarkWithInfo:(id)info toParent:(int)parent asCarrierBookmark:(BOOL)bookmark;
- (void)_clearOldDeletedStaticBookmarks;
- (void)_getCarrierBundleBuiltinBookmarkInfoWithCompletion:(id)completion;
- (void)_importBuiltinBookmarksWithCarrierBookmarkInfo:(id)info;
- (void)_importCarrierBookmarksIfNecessary;
- (void)_importFavoritesFolderBuiltinBookmarks;
- (void)_importRootFolderBuiltinBookmarks;
- (void)_setLastImportedCarrierBookmarksInfo:(id)info;
- (void)importBuiltinBookmarks;
- (void)migrateYouTubeBookmarks;
@end

@implementation BookmarkImporter

- (void)importBuiltinBookmarks
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__BookmarkImporter_importBuiltinBookmarks__block_invoke;
  v2[3] = &unk_2781DBC18;
  v2[4] = self;
  [(BookmarkImporter *)self _getCarrierBundleBuiltinBookmarkInfoWithCompletion:v2];
}

void __42__BookmarkImporter_importBuiltinBookmarks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__BookmarkImporter_importBuiltinBookmarks__block_invoke_2;
  v5[3] = &unk_2781D61F8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (BookmarkImporter)initWithBookmarkCollection:(id)collection
{
  collectionCopy = collection;
  v10.receiver = self;
  v10.super_class = BookmarkImporter;
  v6 = [(BookmarkImporter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, collection);
    v8 = v7;
  }

  return v7;
}

- (id)_oldDeletedStaticBookmarks
{
  oldDeletedStaticBookmarks = self->_oldDeletedStaticBookmarks;
  if (!oldDeletedStaticBookmarks)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:@"DeletedStaticBookmarks"];
    v6 = self->_oldDeletedStaticBookmarks;
    self->_oldDeletedStaticBookmarks = v5;

    oldDeletedStaticBookmarks = self->_oldDeletedStaticBookmarks;
  }

  return oldDeletedStaticBookmarks;
}

- (void)_clearOldDeletedStaticBookmarks
{
  oldDeletedStaticBookmarks = self->_oldDeletedStaticBookmarks;
  self->_oldDeletedStaticBookmarks = 0;

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"DeletedStaticBookmarks"];
}

- (id)_builtinFavoritesForLocale:(id)locale deviceClass:(int64_t)class
{
  v44[8] = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v29 = [localeCopy objectForKey:*MEMORY[0x277CBE690]];
  if (![(__CFString *)v29 length])
  {

    v29 = @"US";
  }

  v28 = [MEMORY[0x277CBEB98] setWithObjects:{@"CN", 0}];
  v27 = [MEMORY[0x277CBEB98] setWithObjects:{@"TW", 0}];
  v26 = [MEMORY[0x277CBEB98] setWithObjects:{@"HK", @"MO", 0}];
  v25 = [MEMORY[0x277CBEB98] setWithObjects:{@"RU", @"UA", @"TR", @"KZ", @"BY", 0}];
  v24 = [MEMORY[0x277CBEB98] setWithObjects:{@"NL", @"DK", @"FI", @"NO", @"PL", @"PT", @"TH", @"HR", @"CZ", @"IL", @"HU", @"SK", @"KR", 0}];
  v23 = [MEMORY[0x277CBEB98] setWithObjects:{@"JP", 0}];
  v22 = [MEMORY[0x277CBEB98] setWithObjects:{@"GB", 0}];
  v21 = [MEMORY[0x277CBEB98] setWithObjects:{@"IN", 0}];
  if ([v28 containsObject:v29])
  {
    v44[0] = @"Apple";
    v44[1] = @"iCloud";
    v44[2] = @"Baidu";
    v44[3] = @"Sogou";
    v44[4] = @"Qihoo";
    v44[5] = @"Bing";
    v44[6] = @"Baike";
    v44[7] = @"Sina";
    v6 = v44;
LABEL_9:
    v7 = 8;
    goto LABEL_10;
  }

  if ([v27 containsObject:v29])
  {
    v43[0] = @"Apple";
    v43[1] = @"iCloud";
    v43[2] = @"Google";
    v43[3] = @"Yahoo";
    v43[4] = @"Wikipedia";
    v43[5] = @"Facebook";
    v43[6] = @"Twitter";
    v43[7] = @"iPeen";
    v6 = v43;
    goto LABEL_9;
  }

  if ([v26 containsObject:v29])
  {
    v42[0] = @"Apple";
    v42[1] = @"iCloud";
    v42[2] = @"Google";
    v42[3] = @"Yahoo";
    v42[4] = @"Wikipedia";
    v42[5] = @"Facebook";
    v42[6] = @"Twitter";
    v42[7] = @"OpenRice";
    v6 = v42;
    goto LABEL_9;
  }

  if ([v25 containsObject:v29])
  {
    v41[0] = @"Apple";
    v41[1] = @"Yandex";
    v41[2] = @"Bing";
    v41[3] = @"Google";
    v6 = v41;
LABEL_24:
    v7 = 4;
    goto LABEL_10;
  }

  if ([v24 containsObject:v29])
  {
    v40[0] = @"Apple";
    v40[1] = @"Bing";
    v40[2] = @"Google";
    v6 = v40;
    v7 = 3;
  }

  else
  {
    if ([v23 containsObject:v29])
    {
      v39[0] = @"Apple";
      v39[1] = @"iCloud";
      v39[2] = @"Google";
      v39[3] = @"Yahoo";
      v39[4] = @"Wikipedia";
      v39[5] = @"Facebook";
      v39[6] = @"Twitter";
      v39[7] = @"Asahi";
      v6 = v39;
      goto LABEL_9;
    }

    if ([v22 containsObject:v29])
    {
      v38[0] = @"Apple";
      v38[1] = @"iCloud";
      v38[2] = @"Google";
      v38[3] = @"Yahoo";
      v38[4] = @"Wikipedia";
      v38[5] = @"Facebook";
      v38[6] = @"Twitter";
      v38[7] = @"BBC";
      v6 = v38;
      goto LABEL_9;
    }

    if (![v21 containsObject:v29])
    {
      v36[0] = @"Apple";
      v36[1] = @"Bing";
      v36[2] = @"Google";
      v36[3] = @"Yahoo";
      v6 = v36;
      goto LABEL_24;
    }

    v37[0] = @"Apple";
    v37[1] = @"iCloud";
    v37[2] = @"Google";
    v37[3] = @"Yahoo";
    v37[4] = @"Facebook";
    v37[5] = @"Zomato";
    v6 = v37;
    v7 = 8;
    v37[6] = @"NDTV";
    v37[7] = @"Hotstar";
  }

LABEL_10:
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:v7];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
  v9 = MEMORY[0x277CBEAC0];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle pathForResource:@"BuiltInBookmarkItems" ofType:@"plist"];
  v12 = [v9 dictionaryWithContentsOfFile:v11];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v20;
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [v12 objectForKey:*(*(&v31 + 1) + 8 * i)];
        v18 = [(BookmarkImporter *)self _builtInBookmarkItemWithTemplate:v17 forLocale:localeCopy deviceClass:class];

        if (v18)
        {
          [v8 addObject:v18];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  return v8;
}

- (id)test_builtinFavoritesForLocale:(id)locale deviceClass:(int64_t)class
{
  v4 = [(BookmarkImporter *)self _builtinFavoritesForLocale:locale deviceClass:class];

  return v4;
}

- (id)_googleChannelReplacementStringForDeviceClass:(int64_t)class
{
  if (class)
  {
    return @"ipad_bm";
  }

  else
  {
    return @"iphone_bm";
  }
}

- (id)_builtInBookmarkItemWithTemplate:(id)template forLocale:(id)locale deviceClass:(int64_t)class
{
  v36 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  localeCopy = locale;
  v27 = templateCopy;
  if (!templateCopy)
  {
    v14 = 0;
    goto LABEL_33;
  }

  v23 = [templateCopy objectForKey:@"LocalizedTitle"];
  v24 = [templateCopy objectForKey:@"LocalizedURL"];
  v22 = [localeCopy objectForKey:*MEMORY[0x277CBE690]];
  v25 = [localeCopy objectForKey:*MEMORY[0x277CBE6C8]];
  v9 = [v22 length];
  v10 = [v25 length];
  v28 = 0;
  if ([v23 count] && v9 | v10)
  {
    v28 = 0;
    if (v9 && v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v25, v22];
      v28 = [v23 objectForKey:v11];
    }

    if (!v28 && v10)
    {
      v28 = [v23 objectForKey:v25];
    }
  }

  v12 = 0;
  if ([v24 count])
  {
    if (v9)
    {
      if (!v10 || ([MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v25, v22], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "objectForKey:", v13), v12 = objc_claimAutoreleasedReturnValue(), v13, !v12))
      {
        v12 = [v24 objectForKey:v22];
        if (!v12)
        {
          if (v10)
          {
            v12 = [v24 objectForKey:v25];
          }
        }
      }
    }
  }

  if (v28)
  {
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v28 = [templateCopy objectForKey:@"Title"];
    if (!v12)
    {
LABEL_22:
      v12 = [templateCopy objectForKey:@"URL"];
    }
  }

  [templateCopy objectForKey:@"URLQueryStringParameterKeys"];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v15 = v30 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v16)
  {
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v15);
        }

        if ([*(*(&v29 + 1) + 8 * i) isEqualToString:@"$GOOGLE_CHANNEL"])
        {
          v19 = [(BookmarkImporter *)self _googleChannelReplacementStringForDeviceClass:class];
          v20 = [v12 stringByReplacingOccurrencesOfString:@"$GOOGLE_CHANNEL" withString:v19];

          v12 = v20;
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v16);
  }

  v33[0] = @"Title";
  v33[1] = @"URL";
  v34[0] = v28;
  v34[1] = v12;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

LABEL_33:

  return v14;
}

- (void)_getCarrierBundleBuiltinBookmarkInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if ((MGGetBoolAnswer() & 1) == 0)
  {
    completionCopy[2](completionCopy, MEMORY[0x277CBEBF8]);
  }

  v4 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BookmarkImporter__getCarrierBundleBuiltinBookmarkInfoWithCompletion___block_invoke;
  block[3] = &unk_2781D6330;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(v4, block);
}

void __71__BookmarkImporter__getCarrierBundleBuiltinBookmarkInfoWithCompletion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__15;
  v18 = __Block_byref_object_dispose__15;
  v19 = [MEMORY[0x277CBEB18] array];
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v3 = dispatch_queue_create("com.apple.BookmarkImporter", v2);

  v4 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v3];
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__BookmarkImporter__getCarrierBundleBuiltinBookmarkInfoWithCompletion___block_invoke_252;
  v10[3] = &unk_2781DBBF0;
  v6 = v5;
  v11 = v6;
  v7 = v4;
  v12 = v7;
  v13 = &v14;
  [v7 getSubscriptionInfo:v10];
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if ([v15[5] count])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v15[5] count];
      *buf = 134217984;
      v21 = v9;
      _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Successfully imported %ld carrier bookmarks.", buf, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  _Block_object_dispose(&v14, 8);
}

void __71__BookmarkImporter__getCarrierBundleBuiltinBookmarkInfoWithCompletion___block_invoke_252(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v18 = v5;
  v19 = v6;
  if (!v5 || v6)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = [v7 safari_privacyPreservingDescription];
      __71__BookmarkImporter__getCarrierBundleBuiltinBookmarkInfoWithCompletion___block_invoke_252_cold_1(v17, buf, v8);
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [v5 subscriptionsInUse];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          dispatch_group_enter(*(a1 + 32));
          v13 = *(a1 + 32);
          v14 = *(a1 + 40);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __71__BookmarkImporter__getCarrierBundleBuiltinBookmarkInfoWithCompletion___block_invoke_253;
          v20[3] = &unk_2781DBBC8;
          v15 = v13;
          v16 = *(a1 + 48);
          v21 = v15;
          v22 = v16;
          [v14 copyCarrierBookmarks:v12 completion:v20];
        }

        v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __71__BookmarkImporter__getCarrierBundleBuiltinBookmarkInfoWithCompletion___block_invoke_253(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v7 safari_privacyPreservingDescription];
      __71__BookmarkImporter__getCarrierBundleBuiltinBookmarkInfoWithCompletion___block_invoke_253_cold_1(v10, v11, v9);
    }
  }

  else
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v8);
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
    objc_sync_exit(v8);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (id)_myAccountBookmarkInfo
{
  v24 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_carrierBookmarkInfo;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = *v18;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [v7 safari_stringForKey:@"MyAccountURLTitle_Localized"];
        v9 = [v7 safari_stringForKey:@"MyAccountURL"];
        safari_bestURLForUserTypedString = [v9 safari_bestURLForUserTypedString];
        absoluteString = [safari_bestURLForUserTypedString absoluteString];

        if (v8)
        {
          v12 = absoluteString == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {

          v14 = array;
          array = 0;
          goto LABEL_14;
        }

        v21[0] = @"Title";
        v21[1] = @"URL";
        v22[0] = v8;
        v22[1] = absoluteString;
        v21[2] = @"BookmarkType";
        v22[2] = @"CarrierBookmark";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
        [(NSArray *)array addObject:v13];
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v14 = obj;
LABEL_14:

  return array;
}

- (id)_builtinBookmarkWithInfo:(id)info asCarrierBookmark:(BOOL)bookmark
{
  infoCopy = info;
  currentDevice = [MEMORY[0x277D499F0] currentDevice];
  deviceClass = [currentDevice deviceClass];

  v9 = deviceClass != 3;
  if (deviceClass == 3)
  {
    v10 = @"iPadTitle";
LABEL_5:
    v11 = [infoCopy objectForKey:v10];
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (deviceClass == 1)
  {
    v10 = @"iPhoneTitle";
    goto LABEL_5;
  }

  v9 = 0;
LABEL_8:
  v11 = [infoCopy objectForKey:@"Title"];
LABEL_9:
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [mainBundle localizedStringForKey:v11 value:&stru_2827BF158 table:@"BuiltinBookmarks"];

  if (!v13)
  {
    v19 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [BookmarkImporter _builtinBookmarkWithInfo:asCarrierBookmark:];
    }

    goto LABEL_14;
  }

  v14 = [infoCopy objectForKey:@"IsFolder"];
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue)
  {
    v16 = objc_alloc(MEMORY[0x277D7B5A0]);
    configuration = [(WebBookmarkCollection *)self->_collection configuration];
    v18 = [v16 initFolderWithParentID:0 collectionType:{objc_msgSend(configuration, "collectionType")}];

    [v18 setTitle:v13];
    goto LABEL_26;
  }

  if (deviceClass == 3)
  {
    v20 = [infoCopy objectForKey:@"iPadURL"];
    if (v9)
    {
LABEL_17:
      v21 = [infoCopy objectForKey:@"iPhoneURL"];

      v20 = v21;
      if (v21)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v20 = 0;
    if (v9)
    {
      goto LABEL_17;
    }
  }

  if (v20)
  {
    goto LABEL_22;
  }

LABEL_21:
  v20 = [infoCopy objectForKey:@"URL"];
  if (!v20)
  {
    v26 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [BookmarkImporter _builtinBookmarkWithInfo:asCarrierBookmark:];
    }

LABEL_14:
    v18 = 0;
    goto LABEL_26;
  }

LABEL_22:
  v22 = [infoCopy safari_stringForKey:@"BookmarkType"];
  v23 = v22;
  if (bookmark || [v22 isEqualToString:@"CarrierBookmark"])
  {
    v24 = [objc_alloc(MEMORY[0x277D7B5A0]) initCarrierBookmarkWithTitle:v13 address:v20];
  }

  else if ([v23 isEqualToString:@"DeviceBookmark"])
  {
    v24 = [objc_alloc(MEMORY[0x277D7B5A0]) initBuiltinDeviceBookmarkWithTitle:v13 address:v20];
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x277D7B5A0]) initBuiltinBookmarkWithTitle:v13 address:v20];
  }

  v18 = v24;

LABEL_26:

  return v18;
}

- (void)_appendBookmarksFromSource:(id)source toParent:(int)parent
{
  v4 = *&parent;
  v35 = *MEMORY[0x277D85DE8];
  if ([source isEqualToString:@"CarrierBundle"])
  {
    _myAccountBookmarkInfo = [(BookmarkImporter *)self _myAccountBookmarkInfo];
    if ([_myAccountBookmarkInfo count])
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = _myAccountBookmarkInfo;
      v7 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v7)
      {
        v8 = *v29;
        do
        {
          v9 = 0;
          do
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(v6);
            }

            [(BookmarkImporter *)self _appendBuiltinBookmarkWithInfo:*(*(&v28 + 1) + 8 * v9++) toParent:v4 asCarrierBookmark:1];
          }

          while (v7 != v9);
          v7 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
        }

        while (v7);
      }
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_carrierBookmarkInfo;
    v10 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [*(*(&v24 + 1) + 8 * v12) safari_arrayForKey:@"CarrierBookmarks"];
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
          if (v15)
          {
            v16 = *v21;
            do
            {
              v17 = 0;
              do
              {
                if (*v21 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                [(BookmarkImporter *)self _appendBuiltinBookmarkWithInfo:*(*(&v20 + 1) + 8 * v17++) toParent:v4 asCarrierBookmark:1];
              }

              while (v15 != v17);
              v15 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
            }

            while (v15);
          }

          ++v12;
        }

        while (v12 != v10);
        v10 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v10);
    }

    [(BookmarkImporter *)self _setLastImportedCarrierBookmarksInfo:self->_carrierBookmarkInfo];
  }
}

- (void)_appendBuiltinBookmarkWithInfo:(id)info toParent:(int)parent asCarrierBookmark:(BOOL)bookmark
{
  bookmarkCopy = bookmark;
  v6 = *&parent;
  v28 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v9 = [infoCopy safari_stringForKey:@"BookmarkType"];
  v10 = [v9 isEqualToString:@"BookmarkArray"];

  if (v10)
  {
    if (!bookmarkCopy)
    {
      v11 = [infoCopy safari_stringForKey:@"BookmarkArraySource"];
      [(BookmarkImporter *)self _appendBookmarksFromSource:v11 toParent:v6];
    }
  }

  else
  {
    v12 = [(BookmarkImporter *)self _builtinBookmarkWithInfo:infoCopy asCarrierBookmark:bookmarkCopy];
    if (v12 && (-[BookmarkImporter _oldDeletedStaticBookmarks](self, "_oldDeletedStaticBookmarks"), v13 = objc_claimAutoreleasedReturnValue(), [v12 address], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "containsObject:", v14), v14, v13, (v15 & 1) == 0))
    {
      [(WebBookmarkCollection *)self->_collection moveBookmark:v12 toFolderWithID:v6];
      [(WebBookmarkCollection *)self->_collection saveBookmark:v12];
      if ([v12 isFolder])
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v17 = [infoCopy objectForKey:{@"Bookmarks", 0}];
        v18 = [v17 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v18)
        {
          v19 = *v22;
          do
          {
            v20 = 0;
            do
            {
              if (*v22 != v19)
              {
                objc_enumerationMutation(v17);
              }

              -[BookmarkImporter _appendBuiltinBookmarkWithInfo:toParent:asCarrierBookmark:](self, "_appendBuiltinBookmarkWithInfo:toParent:asCarrierBookmark:", *(*(&v21 + 1) + 8 * v20++), [v12 identifier], bookmarkCopy);
            }

            while (v18 != v20);
            v18 = [v17 countByEnumeratingWithState:&v21 objects:v27 count:16];
          }

          while (v18);
        }
      }
    }

    else
    {
      v16 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v26 = v6;
        _os_log_impl(&dword_215819000, v16, OS_LOG_TYPE_DEFAULT, "Not appending bookmark to folder %d", buf, 8u);
      }
    }
  }
}

- (void)_importRootFolderBuiltinBookmarks
{
  v20 = *MEMORY[0x277D85DE8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle URLForResource:@"BuiltinBookmarks" withExtension:@"plist"];

  v5 = [MEMORY[0x277CBEB18] arrayWithContentsOfURL:v4];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v19 = [v5 count];
    _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_INFO, "Importing %zd root level built-in bookmarks", buf, 0xCu);
  }

  rootBookmark = [(WebBookmarkCollection *)self->_collection rootBookmark];
  identifier = [rootBookmark identifier];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [(BookmarkImporter *)self _appendBuiltinBookmarkWithInfo:*(*(&v13 + 1) + 8 * v12++) toParent:identifier asCarrierBookmark:0, v13];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_importCarrierBookmarksIfNecessary
{
  carrierBookmarkInfo = self->_carrierBookmarkInfo;
  _lastImportedCarrierBookmarksInfo = [(BookmarkImporter *)self _lastImportedCarrierBookmarksInfo];
  LOBYTE(carrierBookmarkInfo) = [(NSArray *)carrierBookmarkInfo isEqual:_lastImportedCarrierBookmarksInfo];

  if ((carrierBookmarkInfo & 1) == 0)
  {
    [(WebBookmarkCollection *)self->_collection clearCarrierBookmarks];
    rootBookmark = [(WebBookmarkCollection *)self->_collection rootBookmark];
    identifier = [rootBookmark identifier];

    [(BookmarkImporter *)self _appendBookmarksFromSource:@"CarrierBundle" toParent:identifier];
  }
}

- (id)_lastImportedCarrierBookmarksInfo
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(WebBookmarkCollection *)self->_collection syncDataForKey:@"LastImportedCarrierBookmarksArray"];
  if (v3)
  {
LABEL_4:
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v4 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7[0] = v4;
        v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
      }

      else
      {
        v5 = 0;
      }
    }

    goto LABEL_10;
  }

  v3 = [(WebBookmarkCollection *)self->_collection syncDataForKey:@"LastImportedCarrierBookmarksDictionary"];
  if (v3)
  {
    [(WebBookmarkCollection *)self->_collection setSyncData:0 forKey:@"LastImportedCarrierBookmarksDictionary"];
    goto LABEL_4;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (void)_setLastImportedCarrierBookmarksInfo:(id)info
{
  infoCopy = info;
  v6 = infoCopy;
  if (infoCopy)
  {
    v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:infoCopy format:200 options:0 error:0];
  }

  else
  {
    v5 = 0;
  }

  [(WebBookmarkCollection *)self->_collection setSyncData:v5 forKey:@"LastImportedCarrierBookmarksArray"];
}

- (int64_t)_currentDeviceClass
{
  currentDevice = [MEMORY[0x277D499F0] currentDevice];
  deviceClass = [currentDevice deviceClass];

  return deviceClass == 3;
}

- (void)_importFavoritesFolderBuiltinBookmarks
{
  v23 = *MEMORY[0x277D85DE8];
  bookmarksBarBookmark = [(WebBookmarkCollection *)self->_collection bookmarksBarBookmark];
  if (!bookmarksBarBookmark)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BookmarkImporter _importFavoritesFolderBuiltinBookmarks];
    }
  }

  identifier = [bookmarksBarBookmark identifier];
  v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v22) = identifier;
    _os_log_impl(&dword_215819000, v6, OS_LOG_TYPE_INFO, "Attempting to import built-in favorites into favorite folder with identifier %d", buf, 8u);
  }

  _currentDeviceClass = [(BookmarkImporter *)self _currentDeviceClass];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [(BookmarkImporter *)self _builtinFavoritesForLocale:currentLocale deviceClass:_currentDeviceClass];

  v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v9 count];
    *buf = 134217984;
    v22 = v11;
    _os_log_impl(&dword_215819000, v10, OS_LOG_TYPE_INFO, "There are %zd built-in favorites for user's locale", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [(BookmarkImporter *)self _appendBuiltinBookmarkWithInfo:*(*(&v16 + 1) + 8 * i) toParent:identifier asCarrierBookmark:0, v16];
      }

      v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_importBuiltinBookmarksWithCarrierBookmarkInfo:(id)info
{
  infoCopy = info;
  objc_storeStrong(&self->_carrierBookmarkInfo, info);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"DidImportBuiltinBookmarks"])
  {
    v7 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_215819000, v7, OS_LOG_TYPE_INFO, "Safari has already imported built-in bookmarks; No need to import them again", buf, 2u);
    }

    MEMORY[0x2160748B0](buf, @"com.apple.MobileSafari.BookmarkImporter");
    if ([MEMORY[0x277D7B5A8] lockSync])
    {
      [(BookmarkImporter *)self _importCarrierBookmarksIfNecessary];
      [MEMORY[0x277D7B5A8] unlockSync];
    }

    else
    {
      v10 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [BookmarkImporter _importBuiltinBookmarksWithCarrierBookmarkInfo:];
      }
    }
  }

  else
  {
    MEMORY[0x2160748B0](buf, @"com.apple.MobileSafari.BookmarkImporter");
    if ([MEMORY[0x277D7B5A8] lockSync])
    {
      if ([(WebBookmarkCollection *)self->_collection isEmpty])
      {
        v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_INFO, "Bookmarks collection is empty. Importing built-in bookmarks at root level", v15, 2u);
        }

        [(BookmarkImporter *)self _importRootFolderBuiltinBookmarks];
      }

      else
      {
        v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_215819000, v11, OS_LOG_TYPE_INFO, "Bookmarks collection is not empty. Importing carrier bookmarks if needed", v15, 2u);
        }

        [(BookmarkImporter *)self _importCarrierBookmarksIfNecessary];
      }

      bookmarksBarList = [(WebBookmarkCollection *)self->_collection bookmarksBarList];
      bookmarkCount = [bookmarksBarList bookmarkCount];

      if (!bookmarkCount)
      {
        v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_INFO, "Favorites folder is empty. Importing built-in bookmarks for Favorites", v15, 2u);
        }

        [(BookmarkImporter *)self _importFavoritesFolderBuiltinBookmarks];
      }

      [MEMORY[0x277D7B5A8] unlockSync];
      [(BookmarkImporter *)self _clearOldDeletedStaticBookmarks];
      [standardUserDefaults setBool:1 forKey:@"DidImportBuiltinBookmarks"];
    }

    else
    {
      v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [BookmarkImporter _importBuiltinBookmarksWithCarrierBookmarkInfo:];
      }
    }
  }

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(buf);
}

- (id)_uniqueYouTubeBookmarkFolderName
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = [(WebBookmarkCollection *)self->_collection subfoldersOfID:0];
  v2 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v20, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = v20;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        title = [v7 title];
        v9 = title == 0;

        if (!v9)
        {
          title2 = [v7 title];
          [v2 addObject:title2];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  currentDevice = [MEMORY[0x277D499F0] currentDevice];
  userAssignedName = [currentDevice userAssignedName];

  if (userAssignedName)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"YouTube – %@", userAssignedName];
  }

  else
  {
    v13 = @"YouTube";
  }

  v14 = v13;
  v15 = 1;
  for (j = v14; [v2 containsObject:j]; j = v18)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@" (%u)", v15];
    v18 = [(__CFString *)v14 stringByAppendingString:v17];

    v15 = (v15 + 1);
  }

  return j;
}

- (void)migrateYouTubeBookmarks
{
  v33 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (([standardUserDefaults BOOLForKey:@"DidMigrateYouTubeBookmarks"] & 1) == 0)
  {
    v3 = SafariNonContaineredLibraryPath();
    v23 = [v3 stringByAppendingPathComponent:@"Preferences/com.apple.youtube.dp.plist"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:v23])
    {
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v23];
      v21 = v4;
      if (v4)
      {
        v20 = [v4 objectForKey:@"Bookmarks"];
        if ([v20 count])
        {
          MEMORY[0x2160748B0](v31, @"com.apple.MobileSafari.BookmarkImporter");
          if ([MEMORY[0x277D7B5A8] lockSync])
          {
            v5 = objc_alloc(MEMORY[0x277D7B5A0]);
            configuration = [(WebBookmarkCollection *)self->_collection configuration];
            v26 = [v5 initFolderWithParentID:0 collectionType:{objc_msgSend(configuration, "collectionType")}];

            _uniqueYouTubeBookmarkFolderName = [(BookmarkImporter *)self _uniqueYouTubeBookmarkFolderName];
            [v26 setTitle:_uniqueYouTubeBookmarkFolderName];

            [(WebBookmarkCollection *)self->_collection saveBookmark:v26];
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            obj = v20;
            v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
            if (v8)
            {
              v9 = *v28;
              do
              {
                for (i = 0; i != v8; ++i)
                {
                  if (*v28 != v9)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v11 = *(*(&v27 + 1) + 8 * i);
                  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"youtu.be/%@", v11];
                  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://youtu.be/%@", v11];
                  v14 = objc_alloc(MEMORY[0x277D7B5A0]);
                  configuration2 = [(WebBookmarkCollection *)self->_collection configuration];
                  v16 = [v14 initWithTitle:v12 address:v13 collectionType:{objc_msgSend(configuration2, "collectionType")}];

                  -[WebBookmarkCollection moveBookmark:toFolderWithID:](self->_collection, "moveBookmark:toFolderWithID:", v16, [v26 identifier]);
                  [(WebBookmarkCollection *)self->_collection saveBookmark:v16];
                }

                v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
              }

              while (v8);
            }

            [MEMORY[0x277D7B5A8] unlockSync];
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v18 = [defaultManager2 _web_removeFileOnlyAtPath:v23];

            if ((v18 & 1) == 0)
            {
              v19 = WBS_LOG_CHANNEL_PREFIXDataMigration();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                [BookmarkImporter migrateYouTubeBookmarks];
              }
            }

            [standardUserDefaults setBool:1 forKey:@"DidMigrateYouTubeBookmarks"];
          }

          SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v31);
        }

        else
        {
          [standardUserDefaults setBool:1 forKey:@"DidMigrateYouTubeBookmarks"];
        }
      }

      else
      {
        [standardUserDefaults setBool:1 forKey:@"DidMigrateYouTubeBookmarks"];
      }
    }

    else
    {
      [standardUserDefaults setBool:1 forKey:@"DidMigrateYouTubeBookmarks"];
    }
  }
}

void __71__BookmarkImporter__getCarrierBundleBuiltinBookmarkInfoWithCompletion___block_invoke_252_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_215819000, log, OS_LOG_TYPE_ERROR, "Failed to retrieve carrier subscription info: %{public}@", buf, 0xCu);
}

void __71__BookmarkImporter__getCarrierBundleBuiltinBookmarkInfoWithCompletion___block_invoke_253_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_215819000, log, OS_LOG_TYPE_ERROR, "Failed to copy carrier bookmarks: %{public}@", buf, 0xCu);
}

@end