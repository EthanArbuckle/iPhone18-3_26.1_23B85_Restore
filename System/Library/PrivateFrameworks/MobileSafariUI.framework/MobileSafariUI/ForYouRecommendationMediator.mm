@interface ForYouRecommendationMediator
- (ForYouRecommendationMediator)initWithContextClient:(id)a3 featureManager:(id)a4 historyProvider:(id)a5;
- (id)_cloudTabsDataSourceIfAvailable;
- (id)_loadDemoSuggestions;
- (id)dataSources;
- (void)_cloudTabFeatureAvailabilityDidChange:(id)a3;
- (void)dealloc;
- (void)fetchImageForRecommendation:(id)a3 completionHandler:(id)a4;
- (void)loadLinkPresentationMetadataForMessageWithGUID:(id)a3 completionHandler:(id)a4;
- (void)updatedRecommendationsForTopics:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation ForYouRecommendationMediator

- (ForYouRecommendationMediator)initWithContextClient:(id)a3 featureManager:(id)a4 historyProvider:(id)a5
{
  v9 = a4;
  v17.receiver = self;
  v17.super_class = ForYouRecommendationMediator;
  v10 = [(WBSForYouRecommendationMediator *)&v17 initWithContextClient:a3 historyProvider:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_featureManager, a4);
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v11 selector:sel__cloudTabFeatureAvailabilityDidChange_ name:*MEMORY[0x277D7B858] object:v11->_featureManager];

    v13 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:0 diameter:26.0];
    monogrammer = v11->_monogrammer;
    v11->_monogrammer = v13;

    v11->_rendererLock._os_unfair_lock_opaque = 0;
    v15 = v11;
  }

  return v11;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ForYouRecommendationMediator;
  [(WBSForYouRecommendationMediator *)&v4 dealloc];
}

- (void)loadLinkPresentationMetadataForMessageWithGUID:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SafariSandboxBrokerConnection);
  [(WBSUISafariSandboxBrokerConnection *)v7 loadLinkPresentationMetdataForMessageWithGUID:v6 completionHandler:v5];
}

- (id)dataSources
{
  if (!self->_bookmarkCollection)
  {
    v3 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
    bookmarkCollection = self->_bookmarkCollection;
    self->_bookmarkCollection = v3;

    v5 = [objc_alloc(MEMORY[0x277D7B5B0]) initReadonlySafariBookmarkCollection];
    bookmarkProvider = self->_bookmarkProvider;
    self->_bookmarkProvider = v5;

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.mobilesafari.%@.bookmarkProviderAccess.%p", objc_opt_class(), self];
    v8 = dispatch_queue_create([v7 UTF8String], 0);
    bookmarkProviderAccessQueue = self->_bookmarkProviderAccessQueue;
    self->_bookmarkProviderAccessQueue = v8;
  }

  v10 = [MEMORY[0x277CBEB18] array];
  if (!self->_bookmarksDataSource)
  {
    v11 = [[BookmarksForYouDataSource alloc] initWithBookmarkProvider:self->_bookmarkProvider accessQueue:self->_bookmarkProviderAccessQueue bookmarkCollection:self->_bookmarkCollection];
    bookmarksDataSource = self->_bookmarksDataSource;
    self->_bookmarksDataSource = v11;
  }

  if (!self->_readingListDataSource)
  {
    v13 = [ReadingListForYouDataSource alloc];
    v14 = self->_bookmarkProvider;
    v15 = self->_bookmarkProviderAccessQueue;
    v16 = +[Application sharedApplication];
    v17 = [v16 readingListLeadImageCache];
    v18 = [(ReadingListForYouDataSource *)v13 initWithBookmarkProvider:v14 accessQueue:v15 imageCache:v17];
    readingListDataSource = self->_readingListDataSource;
    self->_readingListDataSource = v18;
  }

  [v10 addObject:self->_bookmarksDataSource];
  [v10 addObject:self->_readingListDataSource];
  v20 = +[Application sharedApplication];
  v21 = [v20 forYouRecentParsecResultsManager];
  [v10 addObject:v21];

  v22 = [(ForYouRecommendationMediator *)self _cloudTabsDataSourceIfAvailable];
  if (v22)
  {
    [v10 addObject:v22];
  }

  return v10;
}

- (id)_cloudTabsDataSourceIfAvailable
{
  v3 = [(WBUFeatureManager *)self->_featureManager isCloudTabsAvailable];
  cloudTabsDataSource = self->_cloudTabsDataSource;
  if (v3)
  {
    if (!cloudTabsDataSource)
    {
      v5 = [CloudTabsForYouDataSource alloc];
      v6 = +[CloudTabStore sharedCloudTabStore];
      v7 = [(CloudTabsForYouDataSource *)v5 initWithTabStore:v6];
      v8 = self->_cloudTabsDataSource;
      self->_cloudTabsDataSource = v7;

      cloudTabsDataSource = self->_cloudTabsDataSource;
    }

    v9 = cloudTabsDataSource;
  }

  else
  {
    self->_cloudTabsDataSource = 0;

    v9 = 0;
  }

  return v9;
}

- (void)fetchImageForRecommendation:(id)a3 completionHandler:(id)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 contact];
  if (v8)
  {
    os_unfair_lock_lock(&self->_rendererLock);
    if (!self->_avatarImageRenderer)
    {
      v9 = objc_alloc(MEMORY[0x277CBDBD0]);
      v10 = [MEMORY[0x277CBDBD8] defaultSettings];
      v11 = [v9 initWithSettings:v10];
      avatarImageRenderer = self->_avatarImageRenderer;
      self->_avatarImageRenderer = v11;
    }

    os_unfair_lock_unlock(&self->_rendererLock);
    v13 = [(CNMonogrammer *)self->_monogrammer monogramForContact:v8];
    [v6 setContactImage:v13];

    v14 = MEMORY[0x277CBEAF8];
    v15 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v16 = [v15 firstObject];
    v17 = [v14 characterDirectionForLanguage:v16] == 2;

    v18 = MEMORY[0x277CBDBE0];
    v19 = [MEMORY[0x277D759A0] mainScreen];
    [v19 scale];
    v21 = [v18 scopeWithPointSize:v17 scale:0 rightToLeft:16.0 style:{16.0, v20}];

    v22 = self->_avatarImageRenderer;
    v31[0] = v8;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __78__ForYouRecommendationMediator_fetchImageForRecommendation_completionHandler___block_invoke;
    v29[3] = &unk_2781DBD78;
    v30 = v6;
    v24 = [(CNAvatarImageRenderer *)v22 renderAvatarsForContacts:v23 scope:v21 imageHandler:v29];

    v25 = dispatch_time(0, 200000000);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __78__ForYouRecommendationMediator_fetchImageForRecommendation_completionHandler___block_invoke_3;
    v27[3] = &unk_2781D4D90;
    v28 = v7;
    dispatch_after(v25, MEMORY[0x277D85CD0], v27);
  }

  else
  {
    if ([v6 source] == 5)
    {
      v26 = [(CNMonogrammer *)self->_monogrammer silhouetteMonogram];
      [v6 setContactImage:v26];
    }

    v7[2](v7);
  }
}

void __78__ForYouRecommendationMediator_fetchImageForRecommendation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __78__ForYouRecommendationMediator_fetchImageForRecommendation_completionHandler___block_invoke_2;
    v4[3] = &unk_2781D4C88;
    v5 = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

- (void)_cloudTabFeatureAvailabilityDidChange:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x277D4A208] object:self];
}

- (void)updatedRecommendationsForTopics:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ForYouRecommendationMediator *)self _loadDemoSuggestions];
  if ([v8 count])
  {
    v7[2](v7, v8);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ForYouRecommendationMediator;
    [(WBSForYouRecommendationMediator *)&v9 updatedRecommendationsForTopics:v6 withCompletionHandler:v7];
  }
}

- (id)_loadDemoSuggestions
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 arrayForKey:*MEMORY[0x277D291E8]];

  if ([v4 count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__ForYouRecommendationMediator__loadDemoSuggestions__block_invoke;
    v7[3] = &unk_2781DBDA0;
    v7[4] = self;
    v5 = [v4 safari_mapAndFilterObjectsUsingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __52__ForYouRecommendationMediator__loadDemoSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) recommendationFromDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end