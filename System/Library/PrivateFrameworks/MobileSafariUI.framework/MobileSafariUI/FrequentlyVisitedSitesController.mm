@interface FrequentlyVisitedSitesController
+ (FrequentlyVisitedSitesController)sharedController;
- (FrequentlyVisitedSitesController)initWithBookmarkCollection:(id)a3 history:(id)a4 bannedURLStore:(id)a5 tabCollection:(id)a6 profileIdentifier:(id)a7;
- (NSArray)suggestions;
- (WBSStartPageSuggestionsProviderDelegate)suggestionsProviderDelegate;
- (id)_canonicalizedFavoritesURLStringSet;
- (id)_frequentlyVisitedSitesURLStringSet;
- (id)fetchMetadataForSuggestion:(id)a3 completionHandler:(id)a4;
- (id)frequentlyVisitedSites;
- (void)_associateHistoryToFrequentlyVisitedSites;
- (void)_deleteFrequentlyVisistedSiteInCurrentPofile:(id)a3;
- (void)_frequentlyVisitedSitesDidChange;
- (void)_frequentlyVisitedSitesDidLoadHistory;
- (void)_historyWasLoaded:(id)a3;
- (void)_postFrequentlyVisitedSitesDidChangeNotification;
- (void)_saveFrequentlyVisitedSites:(id)a3 completionHandler:(id)a4;
- (void)_updateCachedFrequentlyVisitedSitesIfNecessary:(id)a3;
- (void)banFrequentlyVisitedSite:(id)a3 inMemoryBookmarkChangeTrackingAvailable:(BOOL)a4;
- (void)clearFrequentlyVisitedSites;
- (void)dealloc;
- (void)openNewRadarProblemURLForFrequentlyVisitedSite:(id)a3;
- (void)promoteFrequentlyVisitedSite:(id)a3 toFavoriteAtIndex:(unint64_t)a4;
- (void)saveFrequentlyVisitedSitesToBookmarksDBWithCompletion:(id)a3;
- (void)setSuggestionsProviderDelegate:(id)a3;
@end

@implementation FrequentlyVisitedSitesController

- (NSArray)suggestions
{
  v2 = [(FrequentlyVisitedSitesController *)self frequentlyVisitedSites];
  v3 = [v2 copy];

  return v3;
}

- (id)frequentlyVisitedSites
{
  [(FrequentlyVisitedSitesController *)self _updateCachedFrequentlyVisitedSitesIfNecessary:0];
  cachedFrequentlyVisitedBookmarks = self->_cachedFrequentlyVisitedBookmarks;

  return cachedFrequentlyVisitedBookmarks;
}

- (id)_canonicalizedFavoritesURLStringSet
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(WebBookmarkCollection *)self->_bookmarkCollection bookmarksInFavoritesList];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v4 = [MEMORY[0x277D4A0A0] shared];
  v5 = [v4 isAllowFavoritesInFrequentlyVisitedEnabled];

  if ((v5 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) address];
          v12 = [v11 safari_canonicalURLStringForFrequentlyVisitedSites];

          if ([v12 length])
          {
            [v3 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  return v3;
}

- (id)_frequentlyVisitedSitesURLStringSet
{
  v2 = [(FrequentlyVisitedSitesController *)self frequentlyVisitedSites];
  v3 = [v2 safari_setByApplyingBlock:&__block_literal_global_17];

  return v3;
}

- (WBSStartPageSuggestionsProviderDelegate)suggestionsProviderDelegate
{
  v2 = objc_getAssociatedObject(self, &suggestionsProviderDelegateKey);
  v3 = [v2 object];

  return v3;
}

- (void)setSuggestionsProviderDelegate:(id)a3
{
  v4 = [MEMORY[0x277D49B88] wrapperWithObject:a3];
  objc_setAssociatedObject(self, &suggestionsProviderDelegateKey, v4, 1);
}

- (void)_frequentlyVisitedSitesDidLoadHistory
{
  [(FrequentlyVisitedSitesController *)self _frequentlyVisitedSitesDidChange];
  v4 = [(FrequentlyVisitedSitesController *)self suggestionsProviderDelegate];
  v3 = [(FrequentlyVisitedSitesController *)self frequentlyVisitedSites];
  [v4 startPageSuggestionsProvider:self forceReloadSuggestions:v3];
}

- (void)_postFrequentlyVisitedSitesDidChangeNotification
{
  v5.receiver = self;
  v5.super_class = FrequentlyVisitedSitesController;
  [(WBSFrequentlyVisitedSitesController *)&v5 _postFrequentlyVisitedSitesDidChangeNotification];
  [(FrequentlyVisitedSitesController *)self _frequentlyVisitedSitesDidChange];
  v3 = [(FrequentlyVisitedSitesController *)self suggestionsProviderDelegate];
  v4 = [(FrequentlyVisitedSitesController *)self frequentlyVisitedSites];
  [v3 startPageSuggestionsProvider:self didUpdateSuggestions:v4];
}

- (void)_frequentlyVisitedSitesDidChange
{
  v3 = [(FrequentlyVisitedSitesController *)self frequentlyVisitedSites];
  v4 = [v3 copy];

  if ([MEMORY[0x277D28F58] hasSharedSiteMetadataManager])
  {
    v5 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __89__FrequentlyVisitedSitesController_SuggestionsProvider___frequentlyVisitedSitesDidChange__block_invoke;
    v12[3] = &unk_2781D8038;
    v6 = v5;
    v13 = v6;
    [(NSArray *)v4 enumerateObjectsUsingBlock:v12];
    lastSeenFrequentlyVisitedSites = self->_lastSeenFrequentlyVisitedSites;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __89__FrequentlyVisitedSitesController_SuggestionsProvider___frequentlyVisitedSitesDidChange__block_invoke_2;
    v10[3] = &unk_2781D8038;
    v11 = v6;
    v8 = v6;
    [(NSArray *)lastSeenFrequentlyVisitedSites enumerateObjectsUsingBlock:v10];
  }

  v9 = self->_lastSeenFrequentlyVisitedSites;
  self->_lastSeenFrequentlyVisitedSites = v4;
}

void __89__FrequentlyVisitedSitesController_SuggestionsProvider___frequentlyVisitedSitesDidChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 linkPresentationMetadataProvider];
  v4 = [v3 address];

  [v5 retainResponseForURLString:v4];
}

void __89__FrequentlyVisitedSitesController_SuggestionsProvider___frequentlyVisitedSitesDidChange__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 linkPresentationMetadataProvider];
  v4 = [v3 address];

  [v5 releaseResponseForURLString:v4];
}

- (id)fetchMetadataForSuggestion:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([MEMORY[0x277D28F58] hasSharedSiteMetadataManager])
  {
    v7 = MEMORY[0x277D4A790];
    v8 = v5;
    v9 = [v7 alloc];
    v10 = MEMORY[0x277CBEBC0];
    v11 = [v8 address];

    v12 = [v10 URLWithString:v11];
    v13 = [v9 initWithURL:v12];

    v14 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __102__FrequentlyVisitedSitesController_SuggestionsProvider__fetchMetadataForSuggestion_completionHandler___block_invoke;
    v17[3] = &unk_2781D8060;
    v18 = v6;
    v15 = [v14 registerRequest:v13 priority:2 responseHandler:v17];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
    v15 = 0;
  }

  return v15;
}

void __102__FrequentlyVisitedSitesController_SuggestionsProvider__fetchMetadataForSuggestion_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D4A788] unpackMetadataFromResponse:a2];
  (*(*(a1 + 32) + 16))();
}

+ (FrequentlyVisitedSitesController)sharedController
{
  v2 = [NSClassFromString(@"Application") sharedApplication];
  v3 = [v2 historyController];

  v4 = [v3 frequentlyVisitedSitesControllerForProfileIdentifier:*MEMORY[0x277D49BD8] loadIfNeeded:1];

  return v4;
}

- (FrequentlyVisitedSitesController)initWithBookmarkCollection:(id)a3 history:(id)a4 bannedURLStore:(id)a5 tabCollection:(id)a6 profileIdentifier:(id)a7
{
  v13 = a3;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = FrequentlyVisitedSitesController;
  v15 = [(WBSFrequentlyVisitedSitesController *)&v25 initWithHistory:a4 bannedURLStore:a5 profileIdentifier:a7];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bookmarkCollection, a3);
    objc_storeStrong(&v16->_tabCollection, a6);
    if ([*(&v16->super.super.isa + *MEMORY[0x277D4A8D0]) isEqualToString:*MEMORY[0x277D49BD8]])
    {
      v17 = [(WebBookmarkCollection *)v16->_bookmarkCollection frequentlyVisitedSitesList];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 bookmarkArray];
        v20 = [v19 mutableCopy];
        cachedFrequentlyVisitedBookmarks = v16->_cachedFrequentlyVisitedBookmarks;
        v16->_cachedFrequentlyVisitedBookmarks = v20;

        v16->_bookmarksNeedToSave = 1;
        [(WebBookmarkCollection *)v16->_bookmarkCollection deleteFrequentlyVisitedSitesFolder];
        [(FrequentlyVisitedSitesController *)v16 _postFrequentlyVisitedSitesDidChangeNotification];
      }
    }

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 addObserver:v16 selector:sel__historyWasLoaded_ name:*MEMORY[0x277D4A248] object:0];

    v23 = v16;
  }

  return v16;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  if ([MEMORY[0x277D28F58] hasSharedSiteMetadataManager])
  {
    v4 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
    lastSeenFrequentlyVisitedSites = self->_lastSeenFrequentlyVisitedSites;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__FrequentlyVisitedSitesController_dealloc__block_invoke;
    v8[3] = &unk_2781D8038;
    v9 = v4;
    v6 = v4;
    [(NSArray *)lastSeenFrequentlyVisitedSites enumerateObjectsUsingBlock:v8];
  }

  v7.receiver = self;
  v7.super_class = FrequentlyVisitedSitesController;
  [(FrequentlyVisitedSitesController *)&v7 dealloc];
}

void __43__FrequentlyVisitedSitesController_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 linkPresentationMetadataProvider];
  v4 = [v3 address];

  [v5 releaseResponseForURLString:v4];
}

- (void)_updateCachedFrequentlyVisitedSitesIfNecessary:(id)a3
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &__block_literal_global_44;
  }

  v5 = _Block_copy(v4);
  v6 = v5;
  if (self->_cachedFrequentlyVisitedBookmarks)
  {
    (*(v5 + 2))(v5);
  }

  else
  {
    v7 = [MEMORY[0x277CBEB18] array];
    cachedFrequentlyVisitedBookmarks = self->_cachedFrequentlyVisitedBookmarks;
    self->_cachedFrequentlyVisitedBookmarks = v7;

    tabCollection = self->_tabCollection;
    v10 = *(&self->super.super.isa + *MEMORY[0x277D4A8D0]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __83__FrequentlyVisitedSitesController__updateCachedFrequentlyVisitedSitesIfNecessary___block_invoke_2;
    v11[3] = &unk_2781D9200;
    v11[4] = self;
    v12 = v6;
    [(WBTabCollection *)tabCollection frequentlyVisitedSitesForProfileWithIdentifier:v10 completionHandler:v11];
  }
}

void __83__FrequentlyVisitedSitesController__updateCachedFrequentlyVisitedSitesIfNecessary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__FrequentlyVisitedSitesController__updateCachedFrequentlyVisitedSitesIfNecessary___block_invoke_3;
    block[3] = &unk_2781D53E0;
    block[4] = *(a1 + 32);
    v6 = v3;
    v7 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __83__FrequentlyVisitedSitesController__updateCachedFrequentlyVisitedSitesIfNecessary___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  [*(a1 + 32) _associateHistoryToFrequentlyVisitedSites];
  (*(*(a1 + 48) + 16))();
  v5 = *(a1 + 32);

  return [v5 _postFrequentlyVisitedSitesDidChangeNotification];
}

- (void)clearFrequentlyVisitedSites
{
  cachedFrequentlyVisitedBookmarks = self->_cachedFrequentlyVisitedBookmarks;
  self->_cachedFrequentlyVisitedBookmarks = 0;

  [(FrequentlyVisitedSitesController *)self _clearFrequentlyVisitedSitesInBookmarksDB];
  v4.receiver = self;
  v4.super_class = FrequentlyVisitedSitesController;
  [(WBSFrequentlyVisitedSitesController *)&v4 clearFrequentlyVisitedSites];
}

- (void)promoteFrequentlyVisitedSite:(id)a3 toFavoriteAtIndex:(unint64_t)a4
{
  v6 = MEMORY[0x277D7B5A0];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [v7 title];
  v10 = [v7 address];
  v11 = [(WebBookmarkCollection *)self->_bookmarkCollection configuration];
  v15 = [v8 initWithTitle:v9 address:v10 collectionType:{objc_msgSend(v11, "collectionType")}];

  v12 = [v7 iconData];
  [v15 setIconData:v12];

  [v15 setFetchedIconData:{objc_msgSend(v7, "fetchedIconData")}];
  [(FrequentlyVisitedSitesController *)self _deleteFrequentlyVisistedSiteInCurrentPofile:v7];
  bookmarkCollection = self->_bookmarkCollection;
  v14 = [(WebBookmarkCollection *)bookmarkCollection favoritesFolder];
  -[WebBookmarkCollection moveBookmark:toFolderWithID:](bookmarkCollection, "moveBookmark:toFolderWithID:", v15, [v14 identifier]);

  [(WebBookmarkCollection *)self->_bookmarkCollection saveBookmark:v15];
  [(WebBookmarkCollection *)self->_bookmarkCollection reorderBookmark:v15 toIndex:a4];
  LOBYTE(a4) = [v7 isInserted];

  if ((a4 & 1) == 0)
  {
    [(FrequentlyVisitedSitesController *)self _postFrequentlyVisitedSitesDidChangeNotification];
  }
}

- (void)_deleteFrequentlyVisistedSiteInCurrentPofile:(id)a3
{
  [(NSMutableArray *)self->_cachedFrequentlyVisitedBookmarks removeObject:a3];
  [(WBTabCollection *)self->_tabCollection setFrequentlyVisitedSites:self->_cachedFrequentlyVisitedBookmarks forProfileWithIdentifier:*(&self->super.super.isa + *MEMORY[0x277D4A8D0]) completionHandler:0];

  [(FrequentlyVisitedSitesController *)self _postFrequentlyVisitedSitesDidChangeNotification];
}

- (void)banFrequentlyVisitedSite:(id)a3 inMemoryBookmarkChangeTrackingAvailable:(BOOL)a4
{
  v5 = *(&self->super.super.isa + *MEMORY[0x277D4A8C0]);
  v7 = a3;
  v6 = [v7 address];
  [v5 addURLString:v6];

  [(FrequentlyVisitedSitesController *)self _deleteFrequentlyVisistedSiteInCurrentPofile:v7];
}

- (void)saveFrequentlyVisitedSitesToBookmarksDBWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bookmarksNeedToSave)
  {
    tabCollection = self->_tabCollection;
    cachedFrequentlyVisitedBookmarks = self->_cachedFrequentlyVisitedBookmarks;
    v8 = *(&self->super.super.isa + *MEMORY[0x277D4A8D0]);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __90__FrequentlyVisitedSitesController_saveFrequentlyVisitedSitesToBookmarksDBWithCompletion___block_invoke;
    v9[3] = &unk_2781D87B0;
    v10 = v4;
    [(WBTabCollection *)tabCollection setFrequentlyVisitedSites:cachedFrequentlyVisitedBookmarks forProfileWithIdentifier:v8 completionHandler:v9];
    self->_bookmarksNeedToSave = 0;
  }

  else
  {
    v4[2](v4);
  }
}

- (void)_saveFrequentlyVisitedSites:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBTabCollection *)self->_tabCollection frequentlyVisitedSitesFolderIDForProfileWithIdentifier:*(&self->super.super.isa + *MEMORY[0x277D4A8D0])];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__FrequentlyVisitedSitesController__saveFrequentlyVisitedSites_completionHandler___block_invoke;
  v11[3] = &unk_2781D9248;
  v12 = v6;
  v13 = self;
  v15 = v8;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __82__FrequentlyVisitedSitesController__saveFrequentlyVisitedSites_completionHandler___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(*(a1 + 40) + 64), "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v36 = a1;
  v3 = *(*(a1 + 40) + 64);
  v4 = [v3 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v47;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v47 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v46 + 1) + 8 * i);
        v9 = [v8 address];
        [v2 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v5);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = v36;
  obj = *(v36 + 32);
  v11 = v35;
  v41 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v41)
  {
    v39 = *v43;
    v38 = *MEMORY[0x277D7B620];
    v40 = v2;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v43 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * j);
        v14 = [v13 title];
        v15 = [v13 urlString];
        v16 = [v2 objectForKeyedSubscript:v15];
        if (v16)
        {
          v17 = MEMORY[0x277CCABB0];
          [v13 score];
          v18 = [v17 numberWithFloat:?];
          [v16 setLocalAttributesValue:v18 forKey:v38];

          v19 = v16;
        }

        else
        {
          v20 = objc_alloc(MEMORY[0x277D7B5A0]);
          v21 = *(v10 + 56);
          v22 = [*(*(v10 + 40) + 48) configuration];
          v23 = [v22 collectionType];
          v24 = MEMORY[0x277CCABB0];
          [v13 score];
          v25 = [v24 numberWithFloat:?];
          v19 = [v20 initWithTitle:v14 address:v15 parentID:v21 subtype:5 deviceIdentifier:0 collectionType:v23 score:v25];

          v11 = v35;
          v10 = v36;
        }

        v26 = *(*(v10 + 40) + *MEMORY[0x277D4A8C8]);
        v27 = MEMORY[0x277CBEBC0];
        v28 = [v19 address];
        v29 = [v27 URLWithString:v28];
        v30 = [v26 itemForURL:v29];
        [v19 setHistoryItem:v30];

        [v11 addObject:v19];
        v2 = v40;
      }

      v41 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v41);
  }

  v31 = *(v10 + 40);
  v32 = *(v31 + 64);
  *(v31 + 64) = v11;
  v33 = v11;

  *(*(v10 + 40) + 56) = 1;
  v34 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
  [v34 scheduleLowPriorityRequestForBookmarks:*(*(v10 + 40) + 64)];

  (*(*(v10 + 48) + 16))();
}

- (void)_historyWasLoaded:(id)a3
{
  [(FrequentlyVisitedSitesController *)self _associateHistoryToFrequentlyVisitedSites];

  [(FrequentlyVisitedSitesController *)self _frequentlyVisitedSitesDidLoadHistory];
}

- (void)_associateHistoryToFrequentlyVisitedSites
{
  cachedFrequentlyVisitedBookmarks = self->_cachedFrequentlyVisitedBookmarks;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__FrequentlyVisitedSitesController__associateHistoryToFrequentlyVisitedSites__block_invoke;
  v3[3] = &unk_2781D8038;
  v3[4] = self;
  [(NSMutableArray *)cachedFrequentlyVisitedBookmarks enumerateObjectsUsingBlock:v3];
}

void __77__FrequentlyVisitedSitesController__associateHistoryToFrequentlyVisitedSites__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + *MEMORY[0x277D4A8C8]);
  v3 = MEMORY[0x277CBEBC0];
  v4 = a2;
  v7 = [v4 address];
  v5 = [v3 URLWithString:v7];
  v6 = [v2 itemForURL:v5];
  [v4 setHistoryItem:v6];
}

- (void)openNewRadarProblemURLForFrequentlyVisitedSite:(id)a3
{
  v4 = [a3 address];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83__FrequentlyVisitedSitesController_openNewRadarProblemURLForFrequentlyVisitedSite___block_invoke;
  v5[3] = &unk_2781D9270;
  v5[4] = self;
  [(WBSFrequentlyVisitedSitesController *)self descriptionOfAllFrequentlyVisitedSitesForProblematicSiteURLString:v4 completionHandler:v5];
}

void __83__FrequentlyVisitedSitesController_openNewRadarProblemURLForFrequentlyVisitedSite___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [objc_opt_class() newRadarProblemURLWithInformationForProblematicFrequentlyVisitedSite:v6 informationForOtherFrequentlyVisitedSites:v5 inProfile:*(*(a1 + 32) + *MEMORY[0x277D4A8D0])];

  v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v7 openURL:v8 withOptions:0];
}

@end