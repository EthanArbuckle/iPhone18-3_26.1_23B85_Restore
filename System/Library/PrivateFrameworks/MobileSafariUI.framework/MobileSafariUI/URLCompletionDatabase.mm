@interface URLCompletionDatabase
- (URLCompletionDatabase)initWithCloudTabStore:(id)a3 profileIdentifier:(id)a4 searchableCollectionsMask:(int)a5 bookmarkProvider:(id)a6;
- (id)fakeBookmarkMatchDataWithURLString:(id)a3 title:(id)a4 shouldPreload:(BOOL)a5;
- (void)_updateCloudDevices:(id)a3;
- (void)dealloc;
- (void)enumerateMatchDataForTypedStringHint:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 options:(unint64_t)a5 withBlock:(id)a6;
@end

@implementation URLCompletionDatabase

- (URLCompletionDatabase)initWithCloudTabStore:(id)a3 profileIdentifier:(id)a4 searchableCollectionsMask:(int)a5 bookmarkProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = URLCompletionDatabase;
  v14 = [(WBSURLCompletionDatabase *)&v27 init];
  v15 = v14;
  if (v14)
  {
    [(WBSURLCompletionDatabase *)v14 setDataSource:v14];
    v15->_searchableCollectionsMask = a5;
    v16 = [v12 copy];
    profileIdentifier = v15->_profileIdentifier;
    v15->_profileIdentifier = v16;

    objc_storeStrong(&v15->_cloudTabStore, a3);
    v18 = dispatch_queue_create("com.apple.mobilesafari.iCloudTabsAccessQueue", 0);
    cloudTabsAccessQueue = v15->_cloudTabsAccessQueue;
    v15->_cloudTabsAccessQueue = v18;

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:v15 selector:sel__updateCloudDevices_ name:@"CloudTabStoreDidUpdateNotification" object:0];
    v21 = objc_alloc_init(MEMORY[0x277CBEA78]);
    bookmarksCache = v15->_bookmarksCache;
    v15->_bookmarksCache = v21;

    [(NSCache *)v15->_bookmarksCache setCountLimit:1];
    objc_storeStrong(&v15->_bookmarkProvider, a6);
    v23 = +[Application sharedApplication];
    v24 = [v23 tabGroupManager];
    [v24 addCloudTabsObserver:v15];

    v25 = v15;
  }

  return v15;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = URLCompletionDatabase;
  [(URLCompletionDatabase *)&v4 dealloc];
}

- (void)_updateCloudDevices:(id)a3
{
  cloudTabsAccessQueue = self->_cloudTabsAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__URLCompletionDatabase__updateCloudDevices___block_invoke;
  block[3] = &unk_2781D60B8;
  block[4] = self;
  dispatch_sync(cloudTabsAccessQueue, block);
}

void __45__URLCompletionDatabase__updateCloudDevices___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 128) syncedRemoteCloudTabDevicesForProfileWithIdentifier:*(*(a1 + 32) + 168)];
  v2 = [v5 copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;
}

- (void)enumerateMatchDataForTypedStringHint:(id)a3 filterResultsUsingProfileIdentifier:(id)a4 options:(unint64_t)a5 withBlock:(id)a6
{
  v80 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v49 = a4;
  v10 = a6;
  v11 = +[Application sharedApplication];
  v12 = [v11 historyController];
  v48 = [v12 historyForProfileIdentifier:v49 loadIfNeeded:1];

  group = dispatch_group_create();
  searchableCollectionsMask = self->_searchableCollectionsMask;
  if ((searchableCollectionsMask & 4) != 0)
  {
    v14 = [MEMORY[0x277CBEB18] array];
    dispatch_group_enter(group);
    v15 = [MEMORY[0x277CBEAA8] date];
    [v15 timeIntervalSinceReferenceDate];
    v17 = v16;
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke;
    v75[3] = &unk_2781DB760;
    v76 = v48;
    v18 = v14;
    v77 = v18;
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_2;
    v72[3] = &unk_2781DB788;
    v73 = v53;
    v74 = group;
    [v76 searchForUserTypedString:v73 options:a5 currentTime:v75 enumerationBlock:v72 completionHandler:v17];

    searchableCollectionsMask = self->_searchableCollectionsMask;
    v50 = v18;
    if ((searchableCollectionsMask & 2) == 0)
    {
LABEL_3:
      if ((searchableCollectionsMask & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v50 = 0;
    if ((searchableCollectionsMask & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  cloudTabsAccessQueue = self->_cloudTabsAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_285;
  block[3] = &unk_2781DB7B0;
  block[4] = self;
  v69 = v53;
  v71 = a5;
  v70 = v10;
  dispatch_sync(cloudTabsAccessQueue, block);

  searchableCollectionsMask = self->_searchableCollectionsMask;
  if ((searchableCollectionsMask & 1) == 0)
  {
LABEL_4:
    if ((searchableCollectionsMask & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

LABEL_8:
  bookmarksCache = self->_bookmarksCache;
  v21 = [v53 normalizedString];
  v47 = [(NSCache *)bookmarksCache objectForKey:v21];

  if (v47)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v47;
    v22 = [obj countByEnumeratingWithState:&v64 objects:v79 count:16];
    if (v22)
    {
      v23 = *v65;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v65 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v64 + 1) + 8 * i);
          v26 = [v25 address];
          v27 = [v25 title];
          hasMatchWithOptions = SafariShared::BookmarkAndHistoryCompletionMatch::hasMatchWithOptions();

          if (hasMatchWithOptions)
          {
            v31 = matchDataWithBookmark(v25, v29, v30);
            (*(v10 + 2))(v10, v31);
          }
        }

        v22 = [obj countByEnumeratingWithState:&v64 objects:v79 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v32 = [v53 components];
    v33 = [v32 firstObject];
    v34 = v33;
    if (v33)
    {
      obj = v33;
    }

    else
    {
      obj = [v53 normalizedString];
    }

    v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:16];
    bookmarkProvider = self->_bookmarkProvider;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_2_287;
    v58[3] = &unk_2781DB7D8;
    v37 = v53;
    v59 = v37;
    v63 = a5;
    v38 = v35;
    v60 = v38;
    v62 = v10;
    v61 = v48;
    [(WBBookmarkProvider *)bookmarkProvider enumerateBookmarks:1 andReadingListItems:1 matchingString:obj usingBlock:v58];
    v39 = self->_bookmarksCache;
    v40 = [v37 normalizedString];
    [(NSCache *)v39 setObject:v38 forKey:v40];
  }

  if ((self->_searchableCollectionsMask & 4) != 0)
  {
LABEL_24:
    v41 = dispatch_time(0, 2000000000);
    if (dispatch_group_wait(group, v41))
    {
      v42 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [URLCompletionDatabase enumerateMatchDataForTypedStringHint:v53 filterResultsUsingProfileIdentifier:v42 options:? withBlock:?];
      }
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v43 = v50;
      v44 = [v43 countByEnumeratingWithState:&v54 objects:v78 count:16];
      if (v44)
      {
        v45 = *v55;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v55 != v45)
            {
              objc_enumerationMutation(v43);
            }

            (*(v10 + 2))(v10, *(*(&v54 + 1) + 8 * j));
          }

          v44 = [v43 countByEnumeratingWithState:&v54 objects:v78 count:16];
        }

        while (v44);
      }
    }
  }

LABEL_35:
}

void __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 originalURLString];
  v6 = [v4 itemForURLString:v5];

  if (v6)
  {
    [*(a1 + 40) addObject:v7];
  }
}

void __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 safari_privacyPreservingDescription];
      __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_2_cold_1(v5, a1, v6, v4);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_285(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(v2 + 136))
  {
    v3 = [*(v2 + 128) syncedRemoteCloudTabDevicesForProfileWithIdentifier:*(v2 + 168)];
    v4 = [v3 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 136);
    *(v5 + 136) = v4;

    v2 = *(a1 + 32);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(v2 + 136);
  v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v19 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v21 = [v8 tabs];
        v9 = [v21 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v9)
        {
          v10 = *v23;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v21);
              }

              v12 = *(*(&v22 + 1) + 8 * j);
              v13 = [v12 url];
              v14 = [v13 absoluteString];

              v15 = [v12 title];
              if (SafariShared::BookmarkAndHistoryCompletionMatch::hasMatchWithOptions())
              {
                v16 = *(a1 + 48);
                v17 = [objc_alloc(MEMORY[0x277D28E88]) initWithCloudTabItem:v12 device:v8];
                (*(v16 + 16))(v16, v17);
              }
            }

            v9 = [v21 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v9);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }
}

void __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_2_287(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = a2;
  v6 = a4;
  if (SafariShared::BookmarkAndHistoryCompletionMatch::hasMatchWithOptions())
  {
    v7 = v6[2](v6);
    [*(a1 + 40) addObject:v7];
    v8 = *(a1 + 56);
    v11 = matchDataWithBookmark(v7, v9, v10);
    (*(v8 + 16))(v8, v11);
  }
}

- (id)fakeBookmarkMatchDataWithURLString:(id)a3 title:(id)a4 shouldPreload:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x277D7B5A0]) initWithTitle:v8 address:v7 collectionType:0];
  v10 = [objc_alloc(MEMORY[0x277D28E80]) initWithBookmark:v9 shouldPreload:v5 isSynthesizedTopHit:1];

  return v10;
}

- (void)enumerateMatchDataForTypedStringHint:(uint64_t)a1 filterResultsUsingProfileIdentifier:(NSObject *)a2 options:withBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 141558275;
  v3 = 1752392040;
  v4 = 2117;
  v5 = a1;
  _os_log_error_impl(&dword_215819000, a2, OS_LOG_TYPE_ERROR, "Timeout while processing user-typed string: %{sensitive, mask.hash}@", &v2, 0x16u);
}

void __116__URLCompletionDatabase_enumerateMatchDataForTypedStringHint_filterResultsUsingProfileIdentifier_options_withBlock___block_invoke_2_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(a2 + 32);
  *buf = 138543875;
  *(buf + 4) = a1;
  *(buf + 6) = 2160;
  *(buf + 14) = 1752392040;
  *(buf + 11) = 2117;
  *(buf + 3) = v5;
  _os_log_error_impl(&dword_215819000, log, OS_LOG_TYPE_ERROR, "Error searching history: %{public}@ for user-typed string: %{sensitive, mask.hash}@", buf, 0x20u);
}

@end