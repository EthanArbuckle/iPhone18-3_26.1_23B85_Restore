@interface ReadingListForYouDataSource
- (ReadingListForYouDataSource)initWithBookmarkProvider:(id)a3 accessQueue:(id)a4 imageCache:(id)a5;
- (void)dealloc;
- (void)retrieveRecommendationsMatchingTopic:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation ReadingListForYouDataSource

- (ReadingListForYouDataSource)initWithBookmarkProvider:(id)a3 accessQueue:(id)a4 imageCache:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ReadingListForYouDataSource;
  v12 = [(ReadingListForYouDataSource *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bookmarkProvider, a3);
    objc_storeStrong(&v13->_bookmarkProviderAccessQueue, a4);
    objc_storeStrong(&v13->_leadImageCache, a5);
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v13 selector:sel__readingListContentsDidChange_ name:@"ReadingListBookmarkDidUpdateNotification" object:0];
    [v14 addObserver:v13 selector:sel__readingListContentsDidChange_ name:*MEMORY[0x277D7B608] object:0];
    [v14 addObserver:v13 selector:sel__readingListContentsDidChange_ name:@"ReadingListBookmarkAddedNotification" object:0];
    [v14 addObserver:v13 selector:sel__readingListContentsDidChange_ name:@"bookmarkCollectionHasBecomeAvailableNotification" object:0];
    v15 = v13;
  }

  return v13;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ReadingListForYouDataSource;
  [(ReadingListForYouDataSource *)&v4 dealloc];
}

- (void)retrieveRecommendationsMatchingTopic:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ReadingListForYouDataSource;
  [(WBSForYouRecommendationMediatorDataSource *)&v14 emitStartRetrievingRecommendationsPerformanceMarker];
  if (v7)
  {
    v8 = [v6 title];
    if ([v8 length])
    {
      bookmarkProviderAccessQueue = self->_bookmarkProviderAccessQueue;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __90__ReadingListForYouDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke;
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

void __90__ReadingListForYouDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) readingListWithUnreadOnly:1 filteredUsingString:*(a1 + 40)];
  v3 = [v2 bookmarkArray];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__ReadingListForYouDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke_2;
  v7[3] = &unk_2781D5430;
  v8 = v3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __90__ReadingListForYouDataSource_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = [MEMORY[0x277CBEB18] array];
  v27 = a1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    v25 = v2;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
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
              v13 = [v7 dateAdded];
              v14 = [v12 initWithTitle:v9 url:v11 lastSeenDate:v13 source:1 topicSource:{objc_msgSend(*(v27 + 40), "source")}];

              v15 = _WBSLocalizedString();
              [v14 setFootnote:v15];

              v16 = [v7 UUID];
              [v14 setSourceID:v16];

              v17 = MEMORY[0x277CBEB98];
              v18 = [*(v27 + 40) title];
              v19 = [v17 setWithObject:v18];
              [v14 addOriginalQueries:v19];

              v20 = [v7 readingListIconURL];
              if ([v20 length])
              {
                v21 = [MEMORY[0x277CBEBC0] URLWithString:v20];
                [v14 setImageURL:v21];
              }

              v22 = *(*(v27 + 48) + 24);
              v23 = [v7 readingListIconUUID];
              v24 = [v22 loadImageSynchronouslyForIconUUID:v23];
              [v14 setImage:v24];

              [v26 addObject:v14];
              v2 = v25;
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v4);
  }

  (*(*(v27 + 56) + 16))();
}

@end