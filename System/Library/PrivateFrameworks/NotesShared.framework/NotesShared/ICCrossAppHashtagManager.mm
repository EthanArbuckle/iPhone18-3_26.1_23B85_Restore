@interface ICCrossAppHashtagManager
+ (id)hashtagDisplayTextsFromOtherApps;
+ (void)prefetchHashtagDisplayTextsFromOtherApps;
+ (void)updateUserDefaultsCacheIfNecessaryWithNewlyFetchedHastags:(id)a3;
@end

@implementation ICCrossAppHashtagManager

+ (id)hashtagDisplayTextsFromOtherApps
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v3 = [v2 objectForKey:@"CrossAppHashtagDisplayText"];

  objc_opt_class();
  v4 = ICCheckedDynamicCast();
  v5 = v4;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    objc_opt_class();
    v11 = ICDynamicCast();
    v12 = [MEMORY[0x277CBEB98] setWithArray:{v11, v14}];
  }

  else
  {
LABEL_12:
    v12 = objc_opt_new();
  }

  return v12;
}

+ (void)prefetchHashtagDisplayTextsFromOtherApps
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleIDsForHashtagSupportingAppsOtherThanNotes];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__33;
  v15[4] = __Block_byref_object_dispose__33;
  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [objc_alloc(MEMORY[0x277CC3418]) initWithQueryString:0 bundleIDs:v3];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__ICCrossAppHashtagManager_prefetchHashtagDisplayTextsFromOtherApps__block_invoke;
  v14[3] = &unk_278197918;
  v14[4] = v15;
  [v4 setHashTagCompletionHandler:v14];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __68__ICCrossAppHashtagManager_prefetchHashtagDisplayTextsFromOtherApps__block_invoke_15;
  v10 = &unk_278197940;
  v12 = v15;
  v5 = v3;
  v11 = v5;
  v13 = a1;
  [v4 setCompletionHandler:&v7];
  v6 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Starting to fetch hashtags from bundleIDs: %@", buf, 0xCu);
  }

  [v4 start];
  _Block_object_dispose(v15, 8);
}

void __68__ICCrossAppHashtagManager_prefetchHashtagDisplayTextsFromOtherApps__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = [v3 count];
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "hashTagCompletionHandler returned %lu hasthags", &v7, 0xCu);
  }

  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = [v3 allObjects];
  [v5 addObjectsFromArray:v6];
}

void __68__ICCrossAppHashtagManager_prefetchHashtagDisplayTextsFromOtherApps__block_invoke_15(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"success.";
    if (v3)
    {
      v5 = v3;
    }

    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "hashtagQuery completed with %@", &v9, 0xCu);
  }

  if (!v3)
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(*(*(a1 + 40) + 8) + 40) count];
      v8 = *(a1 + 32);
      v9 = 134218242;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Fetched %lu hasthags from bundleIDs: %@", &v9, 0x16u);
    }

    [*(a1 + 48) updateUserDefaultsCacheIfNecessaryWithNewlyFetchedHastags:*(*(*(a1 + 40) + 8) + 40)];
  }
}

+ (void)updateUserDefaultsCacheIfNecessaryWithNewlyFetchedHastags:(id)a3
{
  v8 = a3;
  v4 = [a1 hashtagDisplayTextsFromOtherApps];
  if (([v8 isEqualToSet:v4] & 1) == 0)
  {
    v5 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
    v6 = [v8 allObjects];
    [v5 setObject:v6 forKey:@"CrossAppHashtagDisplayText"];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"ICCrossAppHashtagDisplayTextUpdatedNotification" object:0];
  }
}

@end