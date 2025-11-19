@interface BookmarksForYouDataSource
- (BookmarksForYouDataSource)initWithBookmarkProvider:(id)a3 accessQueue:(id)a4 bookmarkCollection:(id)a5;
- (void)dealloc;
- (void)retrieveRecommendationsMatchingTopic:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation BookmarksForYouDataSource

- (BookmarksForYouDataSource)initWithBookmarkProvider:(id)a3 accessQueue:(id)a4 bookmarkCollection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = BookmarksForYouDataSource;
  v12 = [(BookmarksForYouDataSource *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bookmarkProvider, a3);
    objc_storeStrong(&v13->_bookmarkProviderAccessQueue, a4);
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v13 selector:sel__bookmarksDidChangeWithNotification_ name:*MEMORY[0x277D7B618] object:v11];
    [v14 addObserver:v13 selector:sel__bookmarksDidChangeWithNotification_ name:*MEMORY[0x277D7B608] object:v11];
    v15 = v13;
  }

  return v13;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BookmarksForYouDataSource;
  [(BookmarksForYouDataSource *)&v4 dealloc];
}

- (void)retrieveRecommendationsMatchingTopic:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = BookmarksForYouDataSource;
  [(WBSForYouRecommendationMediatorDataSource *)&v14 emitStartRetrievingRecommendationsPerformanceMarker];
  if (v7)
  {
    v8 = [v6 title];
    if ([v8 length])
    {
      bookmarkProviderAccessQueue = self->_bookmarkProviderAccessQueue;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __88__BookmarksForYouDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke;
      v10[3] = &unk_2781D5430;
      v10[4] = self;
      v11 = v8;
      v12 = v6;
      v13 = v7;
      dispatch_async(bookmarkProviderAccessQueue, v10);
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

void __88__BookmarksForYouDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) bookmarksMatchingString:*(a1 + 40)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__BookmarksForYouDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke_2;
  v9[3] = &unk_2781DB6E8;
  v9[4] = *(a1 + 32);
  v3 = [v2 safari_filterObjectsUsingBlock:v9];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__BookmarksForYouDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke_3;
  v5[3] = &unk_2781D53E0;
  v6 = v3;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __88__BookmarksForYouDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [*(*(a1 + 32) + 8) bookmarkWithID:{objc_msgSend(a2, "parentID")}];
  if ([v2 isReadingListFolder] & 1) != 0 || (objc_msgSend(v2, "isFrequentlyVisitedSitesFolder") & 1) != 0 || (objc_msgSend(v2, "isWebFilterAllowedSitesFolder"))
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isBookmarksBarFolder] ^ 1;
  }

  return v3;
}

void __88__BookmarksForYouDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v24 = [MEMORY[0x277CBEB18] array];
  group = dispatch_group_create();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = a1;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    v22 = v2;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v8 = [v7 title];
        v9 = [v8 safari_userVisibleTitleIgnoringFullURLString];

        if ([v9 length])
        {
          v10 = [v7 address];
          if ([v10 length])
          {
            v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
            if (v11)
            {
              v12 = objc_alloc(MEMORY[0x277D4A758]);
              v13 = [MEMORY[0x277CBEAA8] distantPast];
              v14 = [v12 initWithTitle:v9 url:v11 lastSeenDate:v13 source:0 topicSource:{objc_msgSend(*(v23 + 40), "source")}];

              v15 = _WBSLocalizedString();
              [v14 setFootnote:v15];

              v16 = MEMORY[0x277CBEB98];
              v17 = [*(v23 + 40) title];
              v18 = [v16 setWithObject:v17];
              [v14 addOriginalQueries:v18];

              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __88__BookmarksForYouDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke_4;
              block[3] = &unk_2781D4C88;
              v30 = v14;
              v31 = v7;
              v19 = v14;
              dispatch_group_async(group, MEMORY[0x277D85CD0], block);
              [v24 addObject:v19];

              v2 = v22;
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v4);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __88__BookmarksForYouDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke_5;
  v26[3] = &unk_2781D5D28;
  v20 = *(v23 + 48);
  v27 = v24;
  v28 = v20;
  v21 = v24;
  dispatch_group_notify(group, MEMORY[0x277D85CD0], v26);
}

void __88__BookmarksForYouDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [(WebBookmarkCollection *)MEMORY[0x277D7B5A8] leadImageURLForBookmark:?];
  [*(a1 + 32) setImageURL:v2];
}

@end