@interface CompletionList
+ (id)_completionsByMergingRecentSearches:(id)a3 withSuggestions:(id)a4 andLiteralSearch:(id)a5 queryID:(int64_t)a6 topHits:(id)a7 forPrivateBrowsing:(BOOL)a8;
+ (id)completionBookmarkProvider;
- (BOOL)_canUseOfflineSearchSuggestions;
- (BOOL)_defaultSearchEngineIsGoogle;
- (BOOL)_deleteCompletionListItemAndCheckIfLastInSection:(id)a3 atIndexPath:(id)a4 forItemType:(unint64_t)a5;
- (BOOL)_isPegasusMapsCompositeResult:(id)a3;
- (BOOL)_navigationalIntentShouldBlockSearchResult:(id)a3 givenFirstSearchSuggestion:(id)a4 completionListing:(id)a5;
- (BOOL)_searchRenderTimeoutHasElapsed;
- (BOOL)_shouldFetchSearchSuggestions;
- (BOOL)_shouldSearchUIHandleEngagementForURL:(id)a3;
- (BOOL)_supportsPrefixNavigationalIntent;
- (BOOL)_topHitMatchesString:(id)a3;
- (BOOL)_urlString:(id)a3 isProbablyContainedIn:(id)a4;
- (BOOL)canPerformCommand:(id)a3;
- (BOOL)hasCompletions;
- (BOOL)isPresentingItemDeletionAlert;
- (BOOL)shouldHandleCardSectionEngagement:(id)a3;
- (BOOL)shouldOverrideBackgroundViewForItem:(id)a3;
- (BOOL)shouldRestoreCachedCompletions;
- (BrowserController)browserController;
- (CompletionList)initWithParsecSearchSession:(id)a3 browserController:(id)a4;
- (CompletionListDelegate)delegate;
- (LoadProgressObserver)loadProgressObserver;
- (NSIndexPath)indexPathOfAsTypedSearchSuggestion;
- (NSString)titleForSearchSuggestionsCompletion;
- (id)_allRecentSearches;
- (id)_bestTabCompletionItemWithTopHits:(id)a3;
- (id)_completionsRequiringFavicon;
- (id)_contextualActionForSwipeToDeleteItem:(id)a3 atIndexPath:(id)a4 itemType:(unint64_t)a5;
- (id)_indexPathForEquivalentCompletionItem:(id)a3;
- (id)_listingForQuery:(id)a3;
- (id)_recentSearchesForQuery:(id)a3;
- (id)_swipeActionForHistory:(id)a3 atIndexPath:(id)a4;
- (id)_swipeActionForSwitchToTab:(id)a3 atIndexPath:(id)a4;
- (id)_swipeActionForTopHit:(id)a3 atIndexPath:(id)a4;
- (id)_swipeToDeleteButtonTitleForHistoryAndBookmarks:(id)a3;
- (id)_swipeToDeleteDestructiveAlertTitleForHistoryAndBookmarks:(id)a3 forBookmarks:(id)a4;
- (id)_swipeToDeleteTitleForHistoryAndBookmarks:(id)a3;
- (id)_titleForFindOnPageHeaderWithMatchCount:(unint64_t)a3;
- (id)_urlFromCommand:(id)a3;
- (id)cachedIconForParsecResult:(id)a3;
- (id)completionsForGroupAtIndex:(unint64_t)a3;
- (id)currentSearchEngineHostSuffixes;
- (id)currentWindowUUIDForTabCompletionProvider:(id)a3;
- (id)defaultSectionTitleForGroupAtIndex:(unint64_t)a3;
- (id)headerViewForGroupAtIndex:(unint64_t)a3;
- (id)headerViewReuseIdentifierForGroupAtIndex:(unint64_t)a3;
- (id)identifierForGroupAtIndex:(unint64_t)a3;
- (id)rankingFeedbackConfiguration;
- (id)selectedTabDocumentForTabCompletionProvider:(id)a3;
- (id)swipeActionsForCompletionItemAtIndexPath:(id)a3;
- (id)tabDocumentForFindOnPageCompletionProvider:(id)a3;
- (id)tabGroupsForTabCompletionProvider:(id)a3;
- (id)titleForFindOnPageCompletion:(id)a3;
- (id)titleForGroupAtIndex:(unint64_t)a3;
- (id)topHitForString:(id)a3;
- (id)windowHostingCompletionProvider:(id)a3;
- (id)windowUUIDsToTabsForTabCompletionProvider:(id)a3;
- (void)_addResult:(id)a3 intoGroup:(id)a4 unlessHiddenBy:(id)a5 topHit:(id)a6;
- (void)_addSearchProviderSuggestions:(id)a3 toListing:(id)a4;
- (void)_addURLCompletions:(id)a3 toListing:(id)a4 isCFSearch:(BOOL)a5;
- (void)_addUniversalSearchCompletions:(id)a3 toCompletionListing:(id)a4 delaySiriSuggestedSite:(BOOL)a5;
- (void)_cacheImageFromData:(id)a3 forURLString:(id)a4;
- (void)_cacheResultsIfApplicable:(id)a3;
- (void)_defaultSearchEngineChanged:(id)a3;
- (void)_deleteTopHitCompletionItem:(id)a3 atIndexPath:(id)a4;
- (void)_postFeedback:(id)a3;
- (void)_removeIgnoredSiriSuggestedSiteRecordsForHistoryItem:(id)a3;
- (void)_removeSearchURLsFromCompletions:(id)a3;
- (void)_requestFavicons;
- (void)_searchForURLTopHits:(id)a3 intoTopHits:(id)a4;
- (void)_updateCompletionListing;
- (void)_updateIconsForSearchUIRowsInGroups:(id)a3 topHit:(id)a4;
- (void)_updateOfflineSearchSuggestionAvailability;
- (void)_updateProviders;
- (void)_updateQueryIDForGroups;
- (void)cacheCurrentCompletionsAfterAcceptanceOfCompletionItem:(id)a3;
- (void)cacheIconForParsecResult:(id)a3;
- (void)clearCachedSearchQuery;
- (void)clearCompletionListings;
- (void)completionProvider:(id)a3 didFinishCompletingString:(id)a4;
- (void)configureHeaderView:(id)a3 forGroupAtIndex:(unint64_t)a4;
- (void)dealloc;
- (void)didEngageResult:(id)a3;
- (void)didResumeSearchWithQuery:(id)a3;
- (void)performCommand:(id)a3;
- (void)recordIgnoredSiriSuggestedSitesWithURL:(id)a3;
- (void)restoreCachedCompletions;
- (void)setLoadProgressObserver:(id)a3;
- (void)setParsecSearchSession:(id)a3;
- (void)setQuery:(id)a3;
- (void)setShouldIncludeNetworkedSearchSuggestions:(BOOL)a3;
- (void)showRecentSearches;
- (void)stopCompleting;
- (void)updateRestorationCompletionItemForCompletionItem:(id)a3 isCF:(BOOL)a4;
- (void)willDismissViewController:(id)a3;
@end

@implementation CompletionList

- (CompletionList)initWithParsecSearchSession:(id)a3 browserController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CompletionList;
  v8 = [(CompletionList *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_browserController, v7);
    [(CompletionList *)v9 setParsecSearchSession:v6];
    [(CompletionList *)v9 _updateOfflineSearchSuggestionAvailability];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.mobilesafari.IgnoredSiriSuggestedSites", v10);
    ignoredSiriSuggestedSitesQueue = v9->_ignoredSiriSuggestedSitesQueue;
    v9->_ignoredSiriSuggestedSitesQueue = v11;

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v9 selector:sel__defaultSearchEngineChanged_ name:*MEMORY[0x277D49BE0] object:0];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v9 selector:sel__defaultSearchEngineChanged_ name:*MEMORY[0x277D4A950] object:0];

    v15 = v9;
  }

  return v9;
}

- (void)showRecentSearches
{
  v3 = [objc_alloc(MEMORY[0x277D49ED8]) initWithQueryString:&stru_2827BF158];
  query = self->_query;
  self->_query = v3;

  v5 = [[CompletionGroupListing alloc] initWithQuery:self->_query titleProvider:self options:0];
  currentListing = self->_currentListing;
  self->_currentListing = v5;

  v7 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  v8 = self->_query;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [WeakRetained activeSearchEngine];
  [v7 didBeginSearchOfType:2 withQuery:v8 endpoint:{objc_msgSend(v10, "parsecSearchEndpointType")}];

  [(CompletionList *)self _addSearchProviderSuggestions:MEMORY[0x277CBEBF8] toListing:self->_currentListing];
  v11 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  [v11 didReceiveResultsForQuery:self->_query searchType:2];

  objc_storeStrong(&self->_listingOnDisplay, self->_currentListing);
  v19 = [(CompletionGroupListing *)self->_listingOnDisplay groups];
  v12 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  v13 = [MEMORY[0x277CBEAA8] now];
  [v13 timeIntervalSinceNow];
  v15 = -v14;
  v16 = [(WBSCompletionQuery *)self->_query queryID];
  v17 = [(CompletionList *)self rankingFeedbackConfiguration];
  [v12 didRankSections:v19 blendingDuration:MEMORY[0x277CBEC10] feedbackForHiddenAndDuplicateResults:v16 forQueryID:v17 rankingFeedbackConfiguration:v15];

  v18 = objc_loadWeakRetained(&self->_delegate);
  [v18 completionListDidUpdate:self forQuery:self->_query];
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens allValues];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
        [v9 cancelRequestsWithTokens:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = CompletionList;
  [(CompletionList *)&v10 dealloc];
}

- (void)_defaultSearchEngineChanged:(id)a3
{
  v4 = self->_query;
  [(CompletionList *)self stopCompleting];
  [(CompletionList *)self setQuery:v4];
}

- (id)_recentSearchesForQuery:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = +[RecentWebSearchesController sharedController];
  v7 = [v4 queryString];
  v8 = [v6 recentSearchesMatchingPrefix:v7];

  v9 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [SearchSuggestion alloc];
        v17 = -[SearchSuggestion initWithRecentSearchString:userQuery:forPrivateBrowsing:](v16, "initWithRecentSearchString:userQuery:forPrivateBrowsing:", v15, v4, [WeakRetained isPrivateBrowsingEnabled]);
        [v9 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)_allRecentSearches
{
  v3 = +[RecentWebSearchesController sharedController];
  v4 = [v3 recentWebSearchEntriesFilteredByTimeIntervalForDisplayInMainRecentSearchesView];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__CompletionList__allRecentSearches__block_invoke;
  v7[3] = &unk_2781DC218;
  v7[4] = self;
  v5 = [v4 safari_mapObjectsUsingBlock:v7];

  return v5;
}

SearchSuggestion *__36__CompletionList__allRecentSearches__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SearchSuggestion alloc];
  v5 = [v3 searchString];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  v7 = -[SearchSuggestion initWithRecentSearchString:userQuery:forPrivateBrowsing:](v4, "initWithRecentSearchString:userQuery:forPrivateBrowsing:", v5, 0, [WeakRetained isPrivateBrowsingEnabled]);

  return v7;
}

+ (id)_completionsByMergingRecentSearches:(id)a3 withSuggestions:(id)a4 andLiteralSearch:(id)a5 queryID:(int64_t)a6 topHits:(id)a7 forPrivateBrowsing:(BOOL)a8
{
  v52 = a8;
  v49 = a6;
  v71 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [MEMORY[0x277CBEB38] dictionary];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v65;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v65 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v64 + 1) + 8 * i);
        v22 = [v21 string];
        [v15 setObject:v21 forKeyedSubscript:v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v18);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v23 = v11;
  v24 = [v23 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v61;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v61 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v60 + 1) + 8 * j);
        v29 = [v28 string];
        [v15 setObject:v28 forKeyedSubscript:v29];
      }

      v25 = [v23 countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v25);
  }

  v30 = MEMORY[0x277D49ED8];
  v31 = [v23 safari_mapObjectsUsingBlock:&__block_literal_global_71];
  v32 = [v16 safari_mapObjectsUsingBlock:&__block_literal_global_71];
  v33 = [v30 recentAndSuggestedCompletionStringsByMergingRecentSearches:v31 withSuggestions:v32 literalSearch:v13];

  v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v23, "count") + objc_msgSend(v33, "count") + 1}];
  v35 = [MEMORY[0x277CDB8A8] sharedInstance];
  v36 = [v35 defaultSearchEngineForPrivateBrowsing:v52];

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __122__CompletionList__completionsByMergingRecentSearches_withSuggestions_andLiteralSearch_queryID_topHits_forPrivateBrowsing___block_invoke_2;
  v58[3] = &unk_2781DC260;
  v50 = v36;
  v59 = v50;
  v51 = [v14 safari_mapAndFilterObjectsUsingBlock:v58];
  if (v13)
  {
    if ([MEMORY[0x277D49A08] isStreamlinedCompletionListEnabled])
    {
      v37 = [v13 safari_stringByTrimmingWhitespace];
      v38 = [v37 lowercaseString];
      if ([v51 containsObject:v38])
      {
        v39 = [MEMORY[0x277D49A08] isStreamlinedCompletionListEnabled];

        if (v39)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

LABEL_23:
      v40 = [objc_alloc(MEMORY[0x277D49ED8]) initWithQueryString:v13 queryID:v49];
      v41 = [[SearchSuggestion alloc] initWithUserTypedQuery:v40 forPrivateBrowsing:v52];
      [v34 addObject:v41];

      goto LABEL_24;
    }

    if (([MEMORY[0x277D49A08] isStreamlinedCompletionListEnabled] & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  v53 = v13;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v42 = v33;
  v43 = [v42 countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v55;
    do
    {
      for (k = 0; k != v44; ++k)
      {
        if (*v55 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [v15 objectForKeyedSubscript:{*(*(&v54 + 1) + 8 * k), v49}];
        [v34 addObject:v47];
      }

      v44 = [v42 countByEnumeratingWithState:&v54 objects:v68 count:16];
    }

    while (v44);
  }

  return v34;
}

id __122__CompletionList__completionsByMergingRecentSearches_withSuggestions_andLiteralSearch_queryID_topHits_forPrivateBrowsing___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEBC0];
  v4 = [a2 originalURLString];
  v5 = [v3 URLWithString:v4];
  v6 = [v2 userVisibleQueryFromSearchURL:v5];
  v7 = [v6 lowercaseString];

  return v7;
}

- (id)_titleForFindOnPageHeaderWithMatchCount:(unint64_t)a3
{
  v5 = &stru_2827BF158;
  if ((_SFDeviceIsPad() & 1) == 0 && *MEMORY[0x277D292B8] != a3)
  {
    v6 = *MEMORY[0x277CDB930];
    if (*MEMORY[0x277CDB930] >= a3)
    {
      v9 = MEMORY[0x277CCABB8];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v9 localizedStringFromNumber:v8 numberStyle:1];
    }

    else
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = _WBSLocalizedString();
      [v7 localizedStringWithFormat:v8, v6];
    }
    v10 = ;

    if (a3 < 2)
    {
      if (a3 != 1)
      {
        v5 = _WBSLocalizedString();
        goto LABEL_12;
      }

      v14 = MEMORY[0x277CCACA8];
      v12 = _WBSLocalizedString();
      v13 = [v14 localizedStringWithFormat:v12, 1];
    }

    else
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = _WBSLocalizedString();
      v13 = [v11 stringWithFormat:v12, v10];
    }

    v5 = v13;

LABEL_12:
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v16 = [WeakRetained tabController];
  v17 = [v16 activeTabDocument];
  [v17 isPDFDocument];

  v18 = MEMORY[0x277CCACA8];
  v19 = _WBSLocalizedString();
  v20 = [v18 stringWithFormat:v19, v5];

  return v20;
}

- (void)_removeSearchURLsFromCompletions:(id)a3
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v5 = [WeakRetained activeSearchEngine];

  if ([v11 count])
  {
    v6 = 0;
    do
    {
      v7 = [v11 objectAtIndex:v6];
      v8 = [v7 userVisibleURLString];
      v9 = [MEMORY[0x277CBEBC0] safari_URLWithUserTypedString:v8];
      v10 = [v5 urlIsValidSearch:v9];

      if (v10)
      {
        [v11 removeObjectAtIndex:v6];
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < [v11 count]);
  }
}

- (BOOL)_canUseOfflineSearchSuggestions
{
  if (-[CompletionList _defaultSearchEngineIsGoogle](self, "_defaultSearchEngineIsGoogle") && -[OfflineSearchSuggestionsCompletionProvider areOfflineSearchSuggestionsAvailable](self->_offlineSearchSuggestionsCompletionProvider, "areOfflineSearchSuggestionsAvailable") && ([MEMORY[0x277CBEBD0] standardUserDefaults], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLForKey:", *MEMORY[0x277D49B90]), v3, (v4 & 1) == 0))
  {
    return !self->_haveReceivedNetworkedSuggestions;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_defaultSearchEngineIsGoogle
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained activeSearchEngine];
  v4 = [v3 shortName];
  v5 = [v4 isEqualToString:*MEMORY[0x277D49D90]];

  return v5;
}

- (BOOL)_shouldFetchSearchSuggestions
{
  if (self->_shouldIncludeNetworkedSearchSuggestions || (v3 = [(CompletionList *)self _canUseOfflineSearchSuggestions]))
  {
    LOBYTE(v3) = self->_inputTypeOfStringToComplete - 3 < 0xFFFFFFFFFFFFFFFELL;
  }

  return v3;
}

- (void)_addURLCompletions:(id)a3 toListing:(id)a4 isCFSearch:(BOOL)a5
{
  v5 = a5;
  v53 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  rewrittenQuery = self->_rewrittenQuery;
  if (rewrittenQuery)
  {
    v11 = [(WBSCompletionQuery *)rewrittenQuery queryString];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v46;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v45 + 1) + 8 * i) sfSearchResultValue];
          [v17 setCorrectedQuery:v11];
        }

        v14 = [v12 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v14);
    }
  }

  v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v20 = [WeakRetained activeSearchEngine];
  query = self->_rewrittenQuery;
  if (!query)
  {
    query = self->_query;
  }

  v22 = [MEMORY[0x277D4A030] filterOutUnlikelyMatchesFromTopHits:v8 forQuery:query searchProvider:v20];

  [(CompletionList *)self _searchForURLTopHits:v22 intoTopHits:v18];
  v23 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = v23;
    v25 = [v18 count];
    *buf = 134217984;
    v51 = v25;
    _os_log_impl(&dword_215819000, v24, OS_LOG_TYPE_INFO, "Number of local TopHits: %lu", buf, 0xCu);
  }

  if (![v18 count] && self->_tryParsecRewritesIfNoTopHit)
  {
    self->_tryParsecRewritesIfNoTopHit = 0;
    v26 = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider parsecSearchSession];
    v27 = [v26 rewrittenQueryStringFromParsec];

    v28 = [objc_alloc(MEMORY[0x277D49ED8]) initWithQueryString:v27];
    v29 = self->_rewrittenQuery;
    self->_rewrittenQuery = v28;

    v30 = [WeakRetained effectiveProfileIdentifier];
    [(WBSCompletionQuery *)self->_rewrittenQuery setProfileIdentifierToFilterResults:v30];

    [(WBSCompletionQuery *)self->_rewrittenQuery setTriggerEvent:18];
    v31 = [self->_URLCompletionProvider completionsForQuery:self->_rewrittenQuery isCFSearch:v5];

    if (!v31)
    {
      [v9 setNeedsParsecDatabaseQueryRewrite];
      goto LABEL_28;
    }

    v40 = WeakRetained;
    v32 = [MEMORY[0x277D4A030] filterOutUnlikelyMatchesBeforeTopHitPromotionFromMatches:v31 forQuery:self->_rewrittenQuery searchProvider:v20];

    [(CompletionList *)self _searchForURLTopHits:v32 intoTopHits:v18];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = v32;
    v33 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v42;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v42 != v35)
          {
            objc_enumerationMutation(v22);
          }

          v37 = [*(*(&v41 + 1) + 8 * j) sfSearchResultValue];
          [v37 setCorrectedQuery:v27];
        }

        v34 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v34);
    }

    WeakRetained = v40;
  }

  v38 = [v18 count];
  if (v38)
  {
    v39 = [v22 subarrayWithRange:{v38, objc_msgSend(v22, "count") - v38}];

    v22 = v39;
  }

  [v9 setURLCompletionMatches:v22];
  [v9 setLocalTopHits:v18];
  [v9 setRewrittenQuery:self->_rewrittenQuery];
  v27 = v22;
LABEL_28:
}

- (void)_addUniversalSearchCompletions:(id)a3 toCompletionListing:(id)a4 delaySiriSuggestedSite:(BOOL)a5
{
  v94 = a5;
  v117 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled])
  {
    v9 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CompletionList _addUniversalSearchCompletions:toCompletionListing:delaySiriSuggestedSite:];
    }
  }

  delayedSiriSuggestedSite = self->_delayedSiriSuggestedSite;
  location = &self->_delayedSiriSuggestedSite;
  self->_delayedSiriSuggestedSite = 0;

  if ([v7 count])
  {
    v11 = [v8 topHits];
    v92 = v8;
    v12 = [v8 topHitAddresses];
    v100 = [MEMORY[0x277CBEB18] array];
    v97 = [MEMORY[0x277CBEB18] array];
    v96 = [MEMORY[0x277CBEB18] array];
    v13 = [v11 firstObject];
    v103 = [(CompletionList *)self _isPegasusMapsCompositeResult:v7];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v90 = v7;
    obj = v7;
    v14 = [obj countByEnumeratingWithState:&v109 objects:v116 count:16];
    v95 = v11;
    v98 = v12;
    v99 = v13;
    if (!v14)
    {
      v93 = 0;
      goto LABEL_70;
    }

    v15 = v14;
    v93 = 0;
    v16 = 0;
    v17 = 0;
    v102 = *v110;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v110 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v109 + 1) + 8 * v18);
        if (v103 || [*(*(&v109 + 1) + 8 * v18) placement] == 2)
        {
          goto LABEL_45;
        }

        v20 = [v19 resultType];
        v21 = WBSIsEqual();

        if (!v21)
        {
          goto LABEL_44;
        }

        siriSuggestedSitesURLStringsToIgnore = self->_siriSuggestedSitesURLStringsToIgnore;
        v23 = [v19 url];
        v24 = [v23 absoluteString];
        LODWORD(siriSuggestedSitesURLStringsToIgnore) = [(NSSet *)siriSuggestedSitesURLStringsToIgnore containsObject:v24];

        if (siriSuggestedSitesURLStringsToIgnore)
        {
          v25 = [MEMORY[0x277D4A0A0] shared];
          if (![v25 inExperiment])
          {
            goto LABEL_19;
          }

          v26 = [(NSArray *)self->_searchParametersList firstObject];
          if (![v26 shouldEmitTriggerLoggingForHidingIgnoredSiriSuggestedWebsite])
          {
            goto LABEL_18;
          }

          v27 = [MEMORY[0x277D4A030] searchParameters];
          v28 = [v27 thresholdForHidingIgnoredSiriSuggestedSites];

          if (v28)
          {
            v25 = objc_alloc_init(MEMORY[0x277D4C360]);
            [v25 setQueryId:{-[WBSCompletionQuery queryID](self->_query, "queryID")}];
            v29 = [MEMORY[0x277D4A0A8] codePathUUIDForHideIgnoredSiriSuggestedWebsites];
            [v25 setCodepathId:v29];

            v26 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
            [v26 didHideRepeatedlyIgnoredSiriSuggestedSiteWithFeedbackEvent:v25];
LABEL_18:

LABEL_19:
          }

          v30 = [MEMORY[0x277D4A030] searchParameters];
          if ([v30 thresholdForHidingIgnoredSiriSuggestedSites])
          {
            v31 = [MEMORY[0x277D4A030] searchParameters];
            v32 = [v31 shouldHideIgnoredSiriSuggestedSites];

            if (v32)
            {
              v33 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                v34 = v33;
                v35 = [v19 url];
                v36 = [v35 absoluteString];
                *buf = 138739971;
                v115 = v36;
                _os_log_impl(&dword_215819000, v34, OS_LOG_TYPE_INFO, "Hiding repeatedly ignored Siri suggested site: %{sensitive}@", buf, 0xCu);
              }

              v37 = objc_alloc_init(MEMORY[0x277D4C5B8]);
              [v37 setHideReason:1];
              [v19 setSafariAttributes:v37];
              v38 = v19;

              v93 = v38;
              v11 = v95;
LABEL_43:
              v12 = v98;
              v13 = v99;
              goto LABEL_59;
            }
          }

          else
          {
          }
        }

        if ([(CompletionList *)self _supportsPrefixNavigationalIntent])
        {
          v11 = v95;
          v13 = v99;
          if (!v94)
          {
            v12 = v98;
            goto LABEL_45;
          }

          [v92 setServerCompletionDidMatchFirstSearchSuggestionFrom3rdParty:0];
          if ([v92 isAwaitingSearchProvider])
          {
            if (self->_previousServerCompletion && self->_previousPrefixNavigationalIntent && ([v19 serverCompletion], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isEqualToString:", self->_previousServerCompletion), v39, v40))
            {
              [v92 setPrefixNavigationalIntent:self->_previousPrefixNavigationalIntent];
              v41 = 1;
              [v92 setServerCompletionDidMatchFirstSearchSuggestionFrom3rdParty:1];
              previousPrefixNavigationalIntent = self->_previousPrefixNavigationalIntent;
              if (previousPrefixNavigationalIntent)
              {
                v43 = [(NSNumber *)previousPrefixNavigationalIntent integerValue];
                v44 = [MEMORY[0x277D4A030] searchParameters];
                v45 = [v44 prefixNavigationalIntentThreshold];
                v46 = [v45 integerValue];

                if (v43 >= v46)
                {
                  v41 = 1;
                  v11 = v95;
                }

                else
                {
                  v47 = *location;
                  *location = 0;

                  v48 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
                  v11 = v95;
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                  {
                    v49 = v48;
                    v50 = [v19 url];
                    v51 = [v50 absoluteString];
                    *buf = 138739971;
                    v115 = v51;
                    _os_log_impl(&dword_215819000, v49, OS_LOG_TYPE_INFO, "Hiding Siri Suggested Site due to query having navigational intent: %{sensitive}@", buf, 0xCu);
                  }

                  v52 = objc_alloc_init(MEMORY[0x277D4C5B8]);
                  [v52 setHideReason:2];
                  [v19 setSafariAttributes:v52];
                  v53 = v19;

                  v41 = 0;
                  v93 = v53;
                }
              }
            }

            else
            {
              objc_storeStrong(location, v19);
              shouldForceSuppressionOfSiriSuggestedSite = self->_shouldForceSuppressionOfSiriSuggestedSite;
              if (!shouldForceSuppressionOfSiriSuggestedSite)
              {
                shouldForceSuppressionOfSiriSuggestedSite = self->_previousPrefixNavigationalIntent != 0;
              }

              v41 = !shouldForceSuppressionOfSiriSuggestedSite;
              self->_shouldForceSuppressionOfSiriSuggestedSite = 0;
            }

            v12 = v98;
            v13 = v99;
            v70 = [v19 serverCompletion];
            previousServerCompletion = self->_previousServerCompletion;
            self->_previousServerCompletion = v70;

            if (!v41)
            {
              goto LABEL_59;
            }

            goto LABEL_45;
          }

          v54 = [v92 searchSuggestions];
          v55 = [v54 firstObject];
          v56 = [(CompletionList *)self _navigationalIntentShouldBlockSearchResult:v19 givenFirstSearchSuggestion:v55 completionListing:v92];

          if (v56)
          {
            v57 = *location;
            *location = 0;

            v58 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v59 = v58;
              v60 = [v19 url];
              v61 = [v60 absoluteString];
              *buf = 138739971;
              v115 = v61;
              _os_log_impl(&dword_215819000, v59, OS_LOG_TYPE_INFO, "Hiding Siri Suggested Site due to query having navigational intent: %{sensitive}@", buf, 0xCu);
            }

            v62 = objc_alloc_init(MEMORY[0x277D4C5B8]);
            [v62 setHideReason:2];
            [v19 setSafariAttributes:v62];
            v63 = v19;

            v93 = v63;
            goto LABEL_43;
          }
        }

        else
        {
          v11 = v95;
        }

LABEL_44:
        v12 = v98;
        v13 = v99;
LABEL_45:
        [v19 setQueryId:{-[WBSCompletionQuery queryID](self->_query, "queryID")}];
        if (![v11 count] && objc_msgSend(v19, "topHit") && v17 <= 1)
        {
          v66 = self;
          v67 = v19;
          v68 = v96;
LABEL_58:
          [(CompletionList *)v66 _addResult:v67 intoGroup:v68 unlessHiddenBy:v12 topHit:v13];
          ++v17;
          goto LABEL_59;
        }

        if ([v19 placement] != 2 && v17 <= 1)
        {
          v66 = self;
          v67 = v19;
          v68 = v100;
          goto LABEL_58;
        }

        if (v16 <= 1)
        {
          [(CompletionList *)self _addResult:v19 intoGroup:v97 unlessHiddenBy:v12 topHit:v13];
          ++v16;
        }

LABEL_59:
        ++v18;
      }

      while (v15 != v18);
      v72 = [obj countByEnumeratingWithState:&v109 objects:v116 count:16];
      v15 = v72;
      if (!v72)
      {
LABEL_70:

        v8 = v92;
        v73 = v93;
        [v92 setHiddenSiriSuggestedSite:v93];
        if (![v11 count] && objc_msgSend(v96, "count"))
        {
          [v92 setParsecTopHits:v96];
        }

        v74 = [v92 calculationResultItem];
        v75 = v74;
        v7 = v90;
        if (!v74 || ([v74 calculationResult], v76 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend(v76, "isCurrencyConversion"), v76, (v77 & 1) == 0))
        {
          [v92 setTopParsecResults:v100];
        }

        if ([MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled])
        {
          v104 = v75;
          v78 = [MEMORY[0x277CCAB68] string];
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v79 = v100;
          v80 = [v79 countByEnumeratingWithState:&v105 objects:v113 count:16];
          if (v80)
          {
            v81 = v80;
            v82 = *v106;
            do
            {
              for (i = 0; i != v81; ++i)
              {
                if (*v106 != v82)
                {
                  objc_enumerationMutation(v79);
                }

                v84 = *(*(&v105 + 1) + 8 * i);
                v85 = [v84 uuidString];
                v86 = [v84 url];
                v87 = [v86 absoluteString];
                v88 = [v87 safari_urlHashesOfComponents];
                [v78 appendFormat:@" %@ <%@>, ", v85, v88];
              }

              v81 = [v79 countByEnumeratingWithState:&v105 objects:v113 count:16];
            }

            while (v81);
          }

          v89 = WBS_LOG_CHANNEL_PREFIXParsec();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            [CompletionList _addUniversalSearchCompletions:v78 toCompletionListing:v89 delaySiriSuggestedSite:?];
          }

          v7 = v90;
          v8 = v92;
          v73 = v93;
          v11 = v95;
          v12 = v98;
          v75 = v104;
        }

        [v8 setBottomParsecResults:v97];

        break;
      }
    }
  }
}

- (void)_addSearchProviderSuggestions:(id)a3 toListing:(id)a4
{
  v42[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WBSCompletionQuery *)self->_query queryString];
  delayedSiriSuggestedSite = self->_delayedSiriSuggestedSite;
  if (delayedSiriSuggestedSite)
  {
    v10 = [v6 firstObject];
    v11 = [(CompletionList *)self _navigationalIntentShouldBlockSearchResult:delayedSiriSuggestedSite givenFirstSearchSuggestion:v10 completionListing:v7];

    if (!v11)
    {
      v42[0] = self->_delayedSiriSuggestedSite;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
      [(CompletionList *)self _addUniversalSearchCompletions:v17 toCompletionListing:v7 delaySiriSuggestedSite:0];
LABEL_8:

      goto LABEL_9;
    }

    if (self->_delayedSiriSuggestedSite)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = self->_delayedSiriSuggestedSite;
        v14 = v12;
        v15 = [(SFSearchResult *)v13 url];
        v16 = [v15 absoluteString];
        *buf = 138739971;
        v41 = v16;
        _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_INFO, "Hiding Siri Suggested Site due to query having navigational intent: %{sensitive}@", buf, 0xCu);
      }

      v17 = objc_alloc_init(MEMORY[0x277D4C5B8]);
      [v17 setHideReason:2];
      [(SFSearchResult *)self->_delayedSiriSuggestedSite setSafariAttributes:v17];
      [v7 setHiddenSiriSuggestedSite:self->_delayedSiriSuggestedSite];
      goto LABEL_8;
    }
  }

LABEL_9:
  v18 = [v6 firstObject];
  v19 = [v18 prefixNavigationalIntent];
  previousPrefixNavigationalIntent = self->_previousPrefixNavigationalIntent;
  self->_previousPrefixNavigationalIntent = v19;

  if (self->_showingRecentSearches || self->_inputTypeOfStringToComplete != 1 && [v8 length])
  {
    v21 = [(CompletionProvider *)self->_quickWebsiteSearchProvider completionsForQuery:self->_query];
    v22 = [v21 firstObject];
    [v7 setQuickWebsiteSearchItem:v22];

    if (self->_showingRecentSearches)
    {
      [(CompletionList *)self _allRecentSearches];
    }

    else
    {
      [(CompletionList *)self _recentSearchesForQuery:self->_query];
    }
    v23 = ;
    v24 = objc_opt_class();
    v25 = [(WBSCompletionQuery *)self->_query queryID];
    v26 = [v7 topHits];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v28 = [v24 _completionsByMergingRecentSearches:v23 withSuggestions:v6 andLiteralSearch:v8 queryID:v25 topHits:v26 forPrivateBrowsing:{objc_msgSend(WeakRetained, "isPrivateBrowsingEnabled")}];

    v38 = v8;
    v39 = v6;
    if ([v6 count])
    {
      v29 = 3;
    }

    else
    {
      v29 = [v23 count] != 0;
    }

    v37 = v29;
    v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    if ([v28 count])
    {
      v31 = 0;
      do
      {
        v32 = [v28 objectAtIndex:v31];
        if ([v32 goesToURL])
        {
          [v28 removeObjectAtIndex:v31];
          v33 = [v32 string];
          v34 = [v7 topHitAddresses];
          if ([(CompletionList *)self _urlString:v33 isProbablyContainedIn:v34])
          {
          }

          else
          {
            v35 = [v30 count];

            if (v35 <= 2)
            {
              [v30 addObject:v32];
            }
          }
        }

        else
        {
          ++v31;
        }
      }

      while (v31 < [v28 count]);
    }

    [v7 setSuggestedSites:v30];
    if (self->_showingRecentSearches)
    {
      v36 = v23;
    }

    else
    {
      v36 = v28;
    }

    [v7 setSearchSuggestions:v36 fromSource:v37];

    v8 = v38;
    v6 = v39;
  }
}

- (id)_listingForQuery:(id)a3
{
  v46[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [MEMORY[0x277D4A030] searchParameters];
  v7 = [v6 isCFSearch];

  v8 = 96;
  if (v7)
  {
    v8 = 104;
  }

  v9 = *(&self->super.isa + v8);
  v10 = [(CompletionProvider *)self->_quickWebsiteSearchProvider completionsForQuery:v4];
  v11 = [v10 firstObject];
  [(CompletionGroupListing *)v9 setQuickWebsiteSearchItem:v11];

  v12 = [(CompletionProvider *)self->_calculationResultProvider completionsForQuery:v4];
  v13 = [v12 firstObject];
  [(CompletionGroupListing *)v9 setCalculationResultItem:v13];

  if (self->_usingPencilInput)
  {
    v14 = [self->_pencilInputCompletionProvider completionsForQuery:v4];
    v15 = [v14 firstObject];
    [(CompletionGroupListing *)v9 setPencilCompletionItem:v15];
  }

  else
  {
    [(CompletionGroupListing *)v9 setPencilCompletionItem:0];
  }

  if ([WeakRetained canFindOnPage])
  {
    v16 = [(FindOnPageCompletionProvider *)self->_findOnPageProvider completionsForQuery:v4];
    v17 = [v16 firstObject];
    [(CompletionGroupListing *)v9 setFindOnPageCompletionItem:v17];
  }

  else
  {
    [(CompletionGroupListing *)v9 setFindOnPageCompletionItem:0];
  }

  if ([(CompletionGroupListing *)v9 isAwaitingCompletionDatabase]|| self->_tryParsecRewritesIfNoTopHit)
  {
    if (self->_rewrittenQuery)
    {
      rewrittenQuery = self->_rewrittenQuery;
    }

    else
    {
      rewrittenQuery = v4;
    }

    v19 = [self->_URLCompletionProvider completionsForQuery:rewrittenQuery isCFSearch:v7];
    if ([self->_URLCompletionProvider isFailing]|| v19)
    {
      [(CompletionGroupListing *)v9 markDatabaseResultsReceived];
      if (v19)
      {
        [(CompletionList *)self _addURLCompletions:v19 toListing:v9 isCFSearch:v7];
      }
    }
  }

  v20 = [(CompletionGroupListing *)v9 isAwaitingCompletionDatabase];
  if ([MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled])
  {
    v21 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [(CompletionList *)!v20 _listingForQuery:v21];
    }
  }

  if (!(v20 | ![(CompletionGroupListing *)v9 isAwaitingParsec]))
  {
    universalSearchProvider = self->_universalSearchProvider;
    if (universalSearchProvider)
    {
      v23 = self->_parsecSearchSession != 0;
    }

    else
    {
      v23 = 0;
    }

    v24 = [(UniversalSearchCompletionProvider *)universalSearchProvider completionsForQuery:v4];
    if ([MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled])
    {
      v25 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [(CompletionList *)v23 _listingForQuery:v25, v24];
      }
    }

    if (v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = v23;
    }

    if ((v26 & 1) == 0)
    {
      [(CompletionGroupListing *)v9 markParsecResultsReceived];
      [(CompletionList *)self _addUniversalSearchCompletions:v24 toCompletionListing:v9 delaySiriSuggestedSite:[(CompletionGroupListing *)v9 isAwaitingSearchProvider]];
    }
  }

  v27 = [self->_tabCompletionProvider completionsForQuery:v4];
  if (v27 && [(CompletionGroupListing *)v9 isAwaitingTabCompletion]&& ![(CompletionGroupListing *)v9 isAwaitingParsec])
  {

    if (v20)
    {
      goto LABEL_41;
    }

    [(CompletionGroupListing *)v9 markTabCompletionReceived];
    v27 = [(CompletionGroupListing *)v9 topHits];
    v28 = [(CompletionList *)self _bestTabCompletionItemWithTopHits:v27];
    [(CompletionGroupListing *)v9 setTabCompletionMatch:v28];
  }

LABEL_41:
  if ([(CompletionGroupListing *)v9 isAwaitingSearchProvider])
  {
    v29 = [(CompletionList *)self _shouldFetchSearchSuggestions];
    if (v29 && self->_shouldIncludeNetworkedSearchSuggestions)
    {
      v30 = [(CompletionProvider *)self->_suggestionProvider completionsForQuery:v4];
    }

    else
    {
      v30 = 0;
    }

    v31 = [v30 count];
    v32 = !v29;
    if (v31)
    {
      v32 = 1;
    }

    if ((v32 & 1) != 0 || ![(CompletionList *)self _canUseOfflineSearchSuggestions])
    {
      v34 = 0;
    }

    else
    {
      v33 = [self->_offlineSearchSuggestionsCompletionProvider completionsForQuery:v4];

      v34 = 1;
      v30 = v33;
    }

    if (v30)
    {
      v35 = 0;
    }

    else
    {
      v35 = v29;
    }

    if (v35 && ![(CompletionProvider *)self->_suggestionProvider isFailing]|| [(CompletionGroupListing *)v9 isAwaitingParsec])
    {
      listingOnDisplay = self->_listingOnDisplay;
      if (v9 != listingOnDisplay)
      {
        v37 = [(CompletionGroupListing *)listingOnDisplay searchSuggestions];
        if (![v37 count])
        {
          v38 = -[SearchSuggestion initWithUserTypedQuery:forPrivateBrowsing:]([SearchSuggestion alloc], "initWithUserTypedQuery:forPrivateBrowsing:", v4, [WeakRetained isPrivateBrowsingEnabled]);
          v46[0] = v38;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];

          v37 = v39;
        }

        if ([(CompletionGroupListing *)self->_listingOnDisplay searchSuggestionsSource]== 1)
        {
          v40 = 1;
        }

        else
        {
          v43 = self->_listingOnDisplay;
          if (v43 && (![(CompletionGroupListing *)v43 isAwaitingSearchProvider]|| [(CompletionGroupListing *)self->_listingOnDisplay searchSuggestionsSource]))
          {
            v40 = 2;
          }

          else
          {
            v40 = 0;
          }
        }

        v44 = [(CompletionGroupListing *)self->_listingOnDisplay suggestedSites];
        [(CompletionGroupListing *)v9 setSuggestedSites:v44];

        [(CompletionGroupListing *)v9 setSearchSuggestions:v37 fromSource:v40];
      }
    }

    else
    {
      if (!v34 || !self->_shouldIncludeNetworkedSearchSuggestions || [(CompletionProvider *)self->_suggestionProvider isFailing])
      {
        suggestionProvider = self->_suggestionProvider;
        if (suggestionProvider)
        {
          v42 = ![(CompletionProvider *)suggestionProvider isFailing];
        }

        else
        {
          LOBYTE(v42) = 0;
        }

        self->_haveReceivedNetworkedSuggestions = v42;
        [(CompletionGroupListing *)v9 markSearchResultsReceived];
      }

      [(CompletionList *)self _addSearchProviderSuggestions:v30 toListing:v9];
    }
  }

  return v9;
}

- (id)titleForFindOnPageCompletion:(id)a3
{
  v4 = [a3 numberOfMatches];

  return [(CompletionList *)self _titleForFindOnPageHeaderWithMatchCount:v4];
}

- (NSString)titleForSearchSuggestionsCompletion
{
  if (self->_showingRecentSearches)
  {
    v2 = _WBSLocalizedString();
    goto LABEL_8;
  }

  v4 = [MEMORY[0x277CDB8A8] sharedInstance];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [v4 defaultSearchEngineForPrivateBrowsing:{objc_msgSend(WeakRetained, "isPrivateBrowsingEnabled")}];

  v7 = MEMORY[0x277CCACA8];
  v8 = _WBSLocalizedString();
  v9 = [v6 displayName];
  v10 = [v7 stringWithFormat:v8, v9];

  if (self->_shouldIncludeNetworkedSearchSuggestions || [(CompletionList *)self _canUseOfflineSearchSuggestions])
  {
    v11 = v10;
  }

  else
  {
    v13 = [v6 shortName];
    v14 = [v13 isEqualToString:*MEMORY[0x277D4A948]];

    if (!v14)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = _WBSLocalizedString();
      v17 = [v6 displayName];
      v2 = [v15 stringWithFormat:v16, v17];

      goto LABEL_7;
    }

    v11 = [v6 displayName];
  }

  v2 = v11;
LABEL_7:

LABEL_8:

  return v2;
}

- (void)_addResult:(id)a3 intoGroup:(id)a4 unlessHiddenBy:(id)a5 topHit:(id)a6
{
  v57[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v57[0] = v10;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
  [(CompletionList *)self _cacheResultsIfApplicable:v14];

  v15 = [v10 sectionBundleIdentifier];
  if ([v15 isEqualToString:@"com.apple.parsec.maps"])
  {
    v16 = 0;
  }

  else
  {
    v17 = [v10 url];

    if (!v17)
    {
      v16 = 0;
      goto LABEL_21;
    }

    v18 = [v10 url];
    v56 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];

    v20 = [MEMORY[0x277D4A030] searchParameters];
    v21 = [v20 isDedupeThroughAlternativeURLsEnabled];

    if (v21)
    {
      v22 = [v10 alternativeURLs];
      v23 = [v19 arrayByAddingObjectsFromArray:v22];

      v19 = v23;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v15 = v19;
    v24 = [v15 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v24)
    {
      v25 = v24;
      v47 = v11;
      v26 = *v50;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v50 != v26)
          {
            objc_enumerationMutation(v15);
          }

          v28 = [*(*(&v49 + 1) + 8 * i) absoluteString];
          v29 = [v28 safari_simplifiedUserVisibleURLStringWithSimplifications:3 forDisplayOnly:0 simplifiedStringOffset:0];

          LOBYTE(v28) = [(CompletionList *)self _urlString:v29 isProbablyContainedIn:v12];
          if (v28)
          {
            v16 = 1;
            goto LABEL_16;
          }
        }

        v25 = [v15 countByEnumeratingWithState:&v49 objects:v55 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }

      v16 = 0;
LABEL_16:
      v11 = v47;
    }

    else
    {
      v16 = 0;
    }
  }

LABEL_21:
  v48 = 0;
  v30 = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider shouldHideParsecResult:v10 basedOnHideRankGivenTopHit:v13 indexOfTopHitInFrequentlyVisitedSites:&v48];
  v31 = [v13 sfSearchResultValue];
  v32 = [v31 identifier];
  v33 = [v32 length];

  if (v33)
  {
    if (v16)
    {
LABEL_23:
      v34 = objc_alloc(MEMORY[0x277D4C580]);
      v54 = v10;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
      v36 = [v11 count] - 1;
      v37 = v34;
      v38 = v31;
      v39 = v35;
      v40 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v41 = [MEMORY[0x277CCAD78] UUID];
    v42 = [v41 UUIDString];
    [v31 setIdentifier:v42];

    if (v16)
    {
      goto LABEL_23;
    }
  }

  if (!v30)
  {
    [v11 addObject:v10];
    goto LABEL_29;
  }

  v43 = objc_alloc(MEMORY[0x277D4C580]);
  v53 = v10;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
  v36 = [v11 count] - 1;
  v37 = v43;
  v38 = v31;
  v39 = 0;
  v40 = v35;
LABEL_27:
  v44 = [v37 initWithResult:v38 hiddenResults:v39 duplicateResults:v40 localResultPosition:v36];
  rankingFeedbackForHiddenOrDuplicateResults = self->_rankingFeedbackForHiddenOrDuplicateResults;
  v46 = [v31 identifier];
  [(NSMutableDictionary *)rankingFeedbackForHiddenOrDuplicateResults setObject:v44 forKeyedSubscript:v46];

LABEL_29:
}

- (void)_cacheResultsIfApplicable:(id)a3
{
  v3 = a3;
  v4 = +[Application sharedApplication];
  v5 = [v4 forYouRecentParsecResultsManager];

  [v5 appendResultsIfApplicable:v3];
}

- (id)_bestTabCompletionItemWithTopHits:(id)a3
{
  v4 = a3;
  v5 = [(CompletionList *)self tabCompletionProvider];
  v6 = [v5 isFailing];

  if (v6)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v8 = [v4 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v4 firstObject];

    if (!v9)
    {
      v11 = 0;
      goto LABEL_8;
    }

    v10 = MEMORY[0x277CBEBC0];
    v8 = [v9 userVisibleURLString];
    v11 = [v10 safari_URLWithUserTypedString:v8];
  }

  else
  {
    v11 = 0;
    v9 = 0;
  }

LABEL_8:
  v12 = [(CompletionList *)self tabCompletionProvider];
  v13 = [(CompletionList *)self query];
  v7 = [v12 bestTabCompletionMatchForQuery:v13 withTopHitURL:v11];

LABEL_9:

  return v7;
}

- (void)_searchForURLTopHits:(id)a3 intoTopHits:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v13 + 1) + 8 * v11);
      if (![v12 isTopHit])
      {
        break;
      }

      [v6 addObject:v12];
      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)_urlString:(id)a3 isProbablyContainedIn:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = MEMORY[0x277CBEBC0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__CompletionList__urlString_isProbablyContainedIn___block_invoke;
    v10[3] = &unk_2781DC288;
    v11 = v6;
    v12 = &v13;
    [v7 safari_enumeratePossibleURLsForUserTypedString:v5 withBlock:v10];
    v8 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void __51__CompletionList__urlString_isProbablyContainedIn___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 safari_userVisibleString];
  v6 = [v5 safari_urlStringForCompletionDeduplication];

  if ([*(a1 + 32) containsObject:v6])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)_updateIconsForSearchUIRowsInGroups:(id)a3 topHit:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v20 = *v28;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = [v8 completions];
        if ([v9 count] < 2 || (objc_msgSend(v9, "lastObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
        {
          v22 = v9;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v12 = [v8 results];
          v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v24;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v24 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v23 + 1) + 8 * j);
                v18 = [v6 sfSearchResultValue];
                if (v17 == v18)
                {
                  v19 = 7;
                }

                else
                {
                  v19 = 5;
                }

                [v17 safari_setCompletionIconForCompactRow:v19];
              }

              v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v14);
          }

          v9 = v22;
        }
      }

      v21 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }
}

- (void)_updateCompletionListing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained completionListHasScheduledDismissal:self];
  v4 = WeakRetained;
  if ((v3 & 1) == 0)
  {
    v5 = [(WBSCompletionQuery *)self->_query queryString];
    if ([v5 length])
    {
    }

    else
    {
      showingRecentSearches = self->_showingRecentSearches;

      if (!showingRecentSearches)
      {
        [(CompletionList *)self clearCompletionListings];
        [WeakRetained completionListDidUpdate:self forQuery:self->_query];
LABEL_52:
        v4 = WeakRetained;
        goto LABEL_53;
      }
    }

    v7 = [MEMORY[0x277CBEB38] dictionary];
    rankingFeedbackForHiddenOrDuplicateResults = self->_rankingFeedbackForHiddenOrDuplicateResults;
    self->_rankingFeedbackForHiddenOrDuplicateResults = v7;

    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = [(NSArray *)self->_searchParametersList firstObject];
    v11 = [v10 isCFSearch];

    if (v11)
    {
      v12 = [(NSArray *)self->_searchParametersList firstObject];
      [MEMORY[0x277D4A030] setSearchParameters:v12];

      v13 = [self->_URLCompletionProvider cfErrorForQuery:self->_query];
      if (!v13)
      {
        v14 = [(CompletionList *)self _listingForQuery:self->_query];
        goto LABEL_10;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = 0;
LABEL_10:
    v15 = [(NSArray *)self->_searchParametersList lastObject];
    [MEMORY[0x277D4A030] setSearchParameters:v15];

    v16 = [(CompletionList *)self _listingForQuery:self->_query];
    v17 = [v16 topHit];
    v18 = [v16 isAwaitingCompletionDatabase];
    if (([v16 isAwaitingParsec] & 1) == 0 && (v18 & 1) == 0)
    {
      v19 = v13;
      v20 = [(WBSCompletionQuery *)self->_query queryString];
      v21 = [v20 copy];
      stringMatchedByTopHit = self->_stringMatchedByTopHit;
      self->_stringMatchedByTopHit = v21;

      v23 = [(WBSCompletionQuery *)self->_rewrittenQuery queryString];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = [(WBSCompletionQuery *)self->_query queryString];
      }

      v26 = v25;

      v27 = [(NSString *)self->_stringMatchedByTopHit length];
      if (v27)
      {
        v27 = [v17 reflectedStringForUserTypedString:v26];
      }

      matchingStringInTopHit = self->_matchingStringInTopHit;
      self->_matchingStringInTopHit = v27;

      if (!self->_matchingStringInTopHit && [(CompletionItem *)self->_topHit isEquivalentTo:v17])
      {
        objc_storeStrong(&self->_matchingStringInTopHit, v26);
      }

      if ([(NSString *)self->_matchingStringInTopHit length])
      {
        v29 = v17;
      }

      else
      {
        v29 = 0;
      }

      objc_storeStrong(&self->_topHit, v29);
      v30 = *MEMORY[0x277D4A2B0];
      v31 = [(CompletionItem *)self->_topHit sfSearchResultValue];
      [v31 setResultBundleId:v30];

      if ([(NSString *)self->_stringMatchedByTopHit length])
      {
        [WeakRetained completionList:self topHitDidBecomeReadyForString:self->_matchingStringInTopHit];
      }

      v13 = v19;
    }

    if ([v16 isSufficientlyComputedForDisplay])
    {
      objc_storeStrong(&self->_listingOnDisplay, v16);
      v71 = v14;
      objc_storeStrong(&self->_cfListingOnDisplay, v14);
      v32 = [(CompletionGroupListing *)self->_listingOnDisplay groups];
      v33 = [(NSMutableDictionary *)self->_rankingFeedbackForHiddenOrDuplicateResults copy];
      v34 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
      v72 = v9;
      [v9 timeIntervalSinceNow];
      v36 = -v35;
      v37 = [(WBSCompletionQuery *)self->_query queryID];
      v38 = [(CompletionList *)self rankingFeedbackConfiguration];
      [v34 didRankSections:v32 blendingDuration:v33 feedbackForHiddenAndDuplicateResults:v37 forQueryID:v38 rankingFeedbackConfiguration:v36];

      if (v11)
      {
        if (v13)
        {
          v39 = v32;
          v40 = 0;
        }

        else
        {
          v69 = v33;
          v41 = [(CompletionGroupListing *)self->_cfListingOnDisplay groups];
          v42 = [(CompletionGroupListing *)self->_listingOnDisplay groups];
          v43 = v41;
          v44 = v42;
          v45 = [v43 count];
          v46 = [v44 count];
          v47 = v45 == v46;
          v40 = v45 != v46;
          if (v47)
          {
            if ([v43 count])
            {
              v48 = 0;
              v63 = v32;
              v64 = 0;
              v68 = v43;
              v65 = v44;
              while (1)
              {
                v70 = v48;
                v66 = [v43 objectAtIndexedSubscript:{v48, v63, v64}];
                v49 = [v66 title];
                v50 = [v44 objectAtIndexedSubscript:v48];
                v51 = [v50 title];
                v52 = WBSIsEqual();

                v43 = v68;
                v67 = v52;
                if (!v52)
                {
LABEL_44:
                  v40 = v67 ^ 1u;
                  goto LABEL_48;
                }

                v53 = [v68 objectAtIndexedSubscript:v70];
                v54 = [v53 completions];

                v55 = [v44 objectAtIndexedSubscript:v70];
                v56 = [v55 completions];

                v57 = [v54 count];
                if (v57 != [v56 count])
                {

                  v40 = 1;
                  goto LABEL_46;
                }

                if ([v54 count])
                {
                  break;
                }

LABEL_43:

                v48 = v70 + 1;
                v43 = v68;
                v32 = v63;
                v13 = v64;
                v44 = v65;
                if (v70 + 1 >= [v68 count])
                {
                  goto LABEL_44;
                }
              }

              v58 = 0;
              while (1)
              {
                v59 = [v54 objectAtIndexedSubscript:v58];
                v60 = [v56 objectAtIndexedSubscript:v58];
                v61 = [v59 isEquivalentTo:v60];

                if ((v61 & 1) == 0)
                {
                  break;
                }

                if (++v58 >= [v54 count])
                {
                  goto LABEL_43;
                }
              }

              v40 = 1;
              v32 = v63;
              v13 = v64;
              v43 = v68;
LABEL_46:
              v44 = v65;
            }

            else
            {
              v40 = 0;
            }
          }

LABEL_48:
          v39 = v32;

          v33 = v69;
        }

        v62 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
        [v62 triggeredExperimentWithTreatmentId:self->_treatmentId withQueryID:-[WBSCompletionQuery queryID](self->_query cfDiffered:"queryID") cfUsed:v40 cfError:{1, v13}];

        v32 = v39;
      }

      [WeakRetained completionListDidUpdate:self forQuery:self->_query];
      [(CompletionList *)self _requestFavicons];

      v14 = v71;
      v9 = v72;
    }

    else if ([(CompletionGroupListing *)self->_listingOnDisplay updateWithQuery:self->_query])
    {
      [WeakRetained completionListDidUpdate:self forQuery:self->_query];
    }

    goto LABEL_52;
  }

LABEL_53:
}

- (id)rankingFeedbackConfiguration
{
  if (!self->_rankingFeedbackConfiguration)
  {
    v3 = objc_alloc_init(MEMORY[0x277D49FD0]);
    rankingFeedbackConfiguration = self->_rankingFeedbackConfiguration;
    self->_rankingFeedbackConfiguration = v3;
  }

  v5 = [(CompletionGroupListing *)self->_listingOnDisplay prefixNavigationalIntent];
  [(WBSParsecRankingFeedbackConfiguration *)self->_rankingFeedbackConfiguration setPrefixNavigationalIntent:v5];

  [(WBSParsecRankingFeedbackConfiguration *)self->_rankingFeedbackConfiguration setServerCompletionDidMatchFirstSearchSuggestionFrom3rdParty:[(CompletionGroupListing *)self->_listingOnDisplay serverCompletionDidMatchFirstSearchSuggestionFrom3rdParty]];
  v6 = [(CompletionGroupListing *)self->_listingOnDisplay hiddenSiriSuggestedSite];
  [(WBSParsecRankingFeedbackConfiguration *)self->_rankingFeedbackConfiguration setHiddenSiriSuggestedSite:v6];

  v7 = self->_rankingFeedbackConfiguration;

  return v7;
}

- (void)clearCompletionListings
{
  query = self->_query;
  self->_query = 0;

  currentListing = self->_currentListing;
  self->_currentListing = 0;

  listingOnDisplay = self->_listingOnDisplay;
  self->_listingOnDisplay = 0;

  cfListingOnDisplay = self->_cfListingOnDisplay;
  self->_cfListingOnDisplay = 0;

  currentCFListing = self->_currentCFListing;
  self->_currentCFListing = 0;

  self->_haveReceivedNetworkedSuggestions = 0;
  self->_showingRecentSearches = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained completionListDidUpdate:self forQuery:self->_query];
}

- (BOOL)_searchRenderTimeoutHasElapsed
{
  [(NSDate *)self->_searchRenderTimeoutStartTime timeIntervalSinceNow];
  v4 = -v3;
  v5 = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider searchRenderTimeout];
  [v5 doubleValue];
  if (v6 / 1000.0 >= v4)
  {
    v11 = 0;
  }

  else
  {
    [(NSDate *)self->_minRenderTimeoutStartTime timeIntervalSinceNow];
    v8 = -v7;
    v9 = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider minRenderTimeout];
    [v9 doubleValue];
    v11 = v10 / 1000.0 < v8;
  }

  return v11;
}

+ (id)completionBookmarkProvider
{
  if (completionBookmarkProvider_onceToken != -1)
  {
    +[CompletionList completionBookmarkProvider];
  }

  v3 = completionBookmarkProvider_bookmarkProvider;

  return v3;
}

void __44__CompletionList_completionBookmarkProvider__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277D7B5B0]) initReadonlySafariBookmarkCollection];
  v1 = completionBookmarkProvider_bookmarkProvider;
  completionBookmarkProvider_bookmarkProvider = v0;
}

- (void)_updateProviders
{
  if (self->_showingRecentSearches)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  v5 = [v4 activeTabDocument];
  v6 = +[Application sharedApplication];
  v7 = [v6 isRunningPPT];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x277D4A0A8] searchParameters];
    searchParametersList = self->_searchParametersList;
    self->_searchParametersList = v8;

    v10 = [MEMORY[0x277D4A0A0] shared];
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x277D4A0A0] shared];
      v13 = [v12 identifiers];

      if (v13)
      {
        v14 = [v13 treatmentId];
        treatmentId = self->_treatmentId;
        self->_treatmentId = v14;
      }
    }
  }

  URLCompletionProvider = self->_URLCompletionProvider;
  if (!URLCompletionProvider)
  {
    v17 = [v4 profileCloudTabStore];
    v18 = [URLCompletionProvider alloc];
    v19 = [objc_opt_class() completionBookmarkProvider];
    v20 = [v4 activeProfileIdentifier];
    v21 = [(URLCompletionProvider *)v18 initWithBookmarkProvider:v19 cloudTabStore:v17 profileIdentifier:v20 maxResults:16 searchableCollectionsMask:7];
    v22 = self->_URLCompletionProvider;
    self->_URLCompletionProvider = v21;

    [self->_URLCompletionProvider setDelegate:self];
    [self->_URLCompletionProvider setProvidesTopHits:1];

    URLCompletionProvider = self->_URLCompletionProvider;
  }

  [URLCompletionProvider setSearchParametersList:self->_searchParametersList];
  if (!self->_universalSearchProvider && self->_parsecSearchSession)
  {
    v23 = +[Application sharedApplication];
    v24 = [v23 historyController];
    v25 = [v4 activeProfileIdentifier];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = *MEMORY[0x277D49BD8];
    }

    v28 = [v24 frequentlyVisitedSitesControllerForProfileIdentifier:v27 loadIfNeeded:1];

    v29 = [[UniversalSearchCompletionProvider alloc] initWithFrequentlyVisitedSitesController:v28];
    universalSearchProvider = self->_universalSearchProvider;
    self->_universalSearchProvider = v29;

    [(CompletionProvider *)self->_universalSearchProvider setDelegate:self];
  }

  if (!self->_parsecSearchSession)
  {
    [(CompletionProvider *)self->_universalSearchProvider setDelegate:0];
    v31 = self->_universalSearchProvider;
    self->_universalSearchProvider = 0;
  }

  if (!self->_pencilInputCompletionProvider)
  {
    v32 = objc_alloc_init(PencilInputCompletionProvider);
    pencilInputCompletionProvider = self->_pencilInputCompletionProvider;
    self->_pencilInputCompletionProvider = v32;

    [self->_pencilInputCompletionProvider setDelegate:self];
  }

  suggestionProvider = self->_suggestionProvider;
  if (self->_shouldIncludeNetworkedSearchSuggestions)
  {
    if (suggestionProvider)
    {
      goto LABEL_24;
    }

    v35 = -[SearchSuggestionProvider initForPrivateBrowsing:]([SearchSuggestionProvider alloc], "initForPrivateBrowsing:", [WeakRetained isPrivateBrowsingEnabled]);
    v36 = self->_suggestionProvider;
    self->_suggestionProvider = v35;

    [(CompletionProvider *)self->_suggestionProvider setDelegate:self];
    v37 = objc_loadWeakRetained(&self->_loadProgressObserver);
    [(SearchSuggestionProvider *)self->_suggestionProvider setLoadProgressObserver:v37];
  }

  else
  {
    if (!suggestionProvider)
    {
      goto LABEL_24;
    }

    [(SearchSuggestionProvider *)suggestionProvider stop];
    [(CompletionProvider *)self->_suggestionProvider setDelegate:0];
    [(SearchSuggestionProvider *)self->_suggestionProvider setLoadProgressObserver:0];
    v37 = self->_suggestionProvider;
    self->_suggestionProvider = 0;
  }

LABEL_24:
  if ([(CompletionList *)self _shouldFetchSearchSuggestions]&& [(CompletionList *)self _canUseOfflineSearchSuggestions])
  {
    v38 = [self->_offlineSearchSuggestionsCompletionProvider completionsForQuery:self->_query];
  }

  [self->_URLCompletionProvider setParsecSearchSession:self->_parsecSearchSession];
  [(UniversalSearchCompletionProvider *)self->_universalSearchProvider setParsecSearchSession:self->_parsecSearchSession];
  [(SearchSuggestionProvider *)self->_suggestionProvider setUniversalSearchSession:self->_parsecSearchSession];
  v39 = self->_URLCompletionProvider;
  rewrittenQuery = self->_rewrittenQuery;
  if (!rewrittenQuery)
  {
    rewrittenQuery = self->_query;
  }

  v41 = [(NSArray *)self->_searchParametersList firstObject];
  v42 = -[URLCompletionProvider completionsForQuery:isCFSearch:](v39, "completionsForQuery:isCFSearch:", rewrittenQuery, [v41 isCFSearch]);

  v43 = [(CompletionProvider *)self->_suggestionProvider completionsForQuery:self->_query];
  v44 = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider completionsForQuery:self->_query];
  searchRenderTimeoutStartTime = self->_searchRenderTimeoutStartTime;
  self->_searchRenderTimeoutStartTime = 0;

  otherRenderTimeoutStartTime = self->_otherRenderTimeoutStartTime;
  self->_otherRenderTimeoutStartTime = 0;

  v47 = [MEMORY[0x277CBEAA8] date];
  minRenderTimeoutStartTime = self->_minRenderTimeoutStartTime;
  self->_minRenderTimeoutStartTime = v47;

  if (self->_findOnPageProvider || ([v5 isBlank] & 1) != 0)
  {
    if ([v5 isBlank])
    {
      findOnPageProvider = self->_findOnPageProvider;
      self->_findOnPageProvider = 0;
    }
  }

  else
  {
    v50 = objc_alloc_init(FindOnPageCompletionProvider);
    v51 = self->_findOnPageProvider;
    self->_findOnPageProvider = v50;

    [(CompletionProvider *)self->_findOnPageProvider setDelegate:self];
    [(FindOnPageCompletionProvider *)self->_findOnPageProvider setDataSource:self];
  }

  v52 = [(FindOnPageCompletionProvider *)self->_findOnPageProvider completionsForQuery:self->_query];
  quickWebsiteSearchProvider = self->_quickWebsiteSearchProvider;
  if (!quickWebsiteSearchProvider)
  {
    v54 = objc_alloc_init(QuickWebsiteSearchCompletionProvider);
    v55 = self->_quickWebsiteSearchProvider;
    self->_quickWebsiteSearchProvider = v54;

    [(CompletionProvider *)self->_quickWebsiteSearchProvider setDelegate:self];
    quickWebsiteSearchProvider = self->_quickWebsiteSearchProvider;
  }

  v56 = [(CompletionProvider *)quickWebsiteSearchProvider completionsForQuery:self->_query];
  tabCompletionProvider = self->_tabCompletionProvider;
  if (!tabCompletionProvider)
  {
    v58 = objc_alloc_init(TabCompletionProvider);
    v59 = self->_tabCompletionProvider;
    self->_tabCompletionProvider = v58;

    [self->_tabCompletionProvider setDelegate:self];
    [(TabCompletionProvider *)self->_tabCompletionProvider setTabCompletionProviderDataSource:self];
    tabCompletionProvider = self->_tabCompletionProvider;
  }

  v60 = [tabCompletionProvider completionsForQuery:self->_query];
  calculationResultProvider = self->_calculationResultProvider;
  if (!calculationResultProvider)
  {
    v62 = objc_alloc_init(CalculationResultCompletionProvider);
    v63 = self->_calculationResultProvider;
    self->_calculationResultProvider = v62;

    [(CompletionProvider *)self->_calculationResultProvider setDelegate:self];
    calculationResultProvider = self->_calculationResultProvider;
  }

  v64 = [(CompletionProvider *)calculationResultProvider completionsForQuery:self->_query];
}

- (void)setQuery:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (self->_query != v5)
  {
    showingRecentSearches = self->_showingRecentSearches;
    v8 = [(WBSCompletionQuery *)v5 queryString];
    v9 = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
    v10 = [v8 stringByTrimmingCharactersInSet:v9];
    v11 = [v10 length];

    self->_showingRecentSearches = v11 == 0;
    if (showingRecentSearches && v11)
    {
      [(CompletionList *)self clearCompletionListings];
    }

    objc_storeStrong(&self->_query, a3);
    v12 = [(WBSCompletionQuery *)v6 queryString];
    self->_inputTypeOfStringToComplete = WBSUnifiedFieldInputTypeForString();

    v13 = [(WBSCompletionQuery *)self->_query queryString];
    if ([v13 length])
    {
      v14 = self->_showingRecentSearches;

      if (v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    [(CompletionList *)self _updateProviders];
    firstRemoteCompletionProviderToRespondToQuery = self->_firstRemoteCompletionProviderToRespondToQuery;
    self->_firstRemoteCompletionProviderToRespondToQuery = 0;

    self->_tryParsecRewritesIfNoTopHit = 0;
    rewrittenQuery = self->_rewrittenQuery;
    self->_rewrittenQuery = 0;

    [(CompletionList *)self clearCachedSearchQuery];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    siriSuggestedSitesURLStringsToIgnore = self->_siriSuggestedSitesURLStringsToIgnore;
    self->_siriSuggestedSitesURLStringsToIgnore = 0;

    objc_initWeak(&location, self);
    v19 = [MEMORY[0x277D49F90] sharedController];
    v20 = [WeakRetained tabController];
    v21 = [v20 activeProfileIdentifier];
    v22 = [(WBSCompletionQuery *)v6 queryString];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __27__CompletionList_setQuery___block_invoke;
    v41[3] = &unk_2781DC2B0;
    objc_copyWeak(&v42, &location);
    [v19 getIgnoredSiriSuggestedSitesURLStringsInProfile:v21 withQuery:v22 completionHandler:v41];

    listingOnDisplay = self->_listingOnDisplay;
    v24 = (!listingOnDisplay || [(CompletionGroupListing *)listingOnDisplay isEmpty]) && !self->_executingVoiceSearch;
    if ([WeakRetained isPrivateBrowsingEnabled])
    {
      v24 |= 2uLL;
    }

    v25 = [MEMORY[0x277D4A0A8] searchParameters];
    v26 = [v25 firstObject];
    v27 = [v26 isCFSearch];

    if (v27)
    {
      v28 = [[CompletionGroupListing alloc] initWithQuery:self->_query titleProvider:self options:v24];
      currentCFListing = self->_currentCFListing;
      self->_currentCFListing = v28;
    }

    v30 = [[CompletionGroupListing alloc] initWithQuery:self->_query titleProvider:self options:v24];
    currentListing = self->_currentListing;
    self->_currentListing = v30;

    [(CompletionList *)self _updateCompletionListing];
    [(NSTimer *)self->_parsecTimeout invalidate];
    v32 = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider minRenderTimeout];
    v33 = [v32 integerValue];

    if (v33 < *MEMORY[0x277D4A2E0] || v33 > *MEMORY[0x277D4A2E8])
    {
      v35 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
      v34 = *MEMORY[0x277D4A2A8];
      if (v36)
      {
        universalSearchProvider = self->_universalSearchProvider;
        *buf = 134218498;
        v45 = v33;
        v46 = 2048;
        v47 = v34;
        v48 = 2112;
        v49 = universalSearchProvider;
        _os_log_error_impl(&dword_215819000, v35, OS_LOG_TYPE_ERROR, "Parsec returned an invalid minRenderTimeout value of %lu ms. Using default value of %lu ms. _universalSearchProvider is %@", buf, 0x20u);
      }
    }

    else
    {
      v34 = v33;
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __27__CompletionList_setQuery___block_invoke_99;
    v40[3] = &unk_2781DC2D8;
    v40[4] = self;
    v40[5] = v34;
    v37 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v40 block:v34 / 1000.0];
    parsecTimeout = self->_parsecTimeout;
    self->_parsecTimeout = v37;

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

LABEL_23:
}

void __27__CompletionList_setQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__CompletionList_setQuery___block_invoke_2;
  block[3] = &unk_2781D6060;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __27__CompletionList_setQuery___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained[34] queryString];
    v4 = WBSIsEqual();

    WeakRetained = v5;
    if (v4)
    {
      objc_storeStrong(v5 + 20, *(a1 + 40));
      WeakRetained = v5;
    }
  }
}

uint64_t __27__CompletionList_setQuery___block_invoke_99(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;

  result = [*(*(a1 + 32) + 96) isAwaitingParsec];
  if (result)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __27__CompletionList_setQuery___block_invoke_99_cold_1(a1, v5);
    }

    [*(*(a1 + 32) + 96) markParsecResultsReceived];
    return [*(a1 + 32) _updateCompletionListing];
  }

  return result;
}

- (void)setParsecSearchSession:(id)a3
{
  v5 = a3;
  if (self->_parsecSearchSession != v5)
  {
    objc_storeStrong(&self->_parsecSearchSession, a3);
    [(CompletionList *)self _updateProviders];
    if (!self->_parsecSearchSession)
    {
      if ([(CompletionGroupListing *)self->_listingOnDisplay numberOfGroups])
      {
        [(CompletionList *)self _updateCompletionListing];
      }
    }
  }
}

- (void)setLoadProgressObserver:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_loadProgressObserver);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_loadProgressObserver, obj);
    [(SearchSuggestionProvider *)self->_suggestionProvider setLoadProgressObserver:obj];
  }
}

- (BOOL)_topHitMatchesString:(id)a3
{
  v4 = a3;
  stringMatchedByTopHit = self->_stringMatchedByTopHit;
  if (!stringMatchedByTopHit)
  {
    goto LABEL_8;
  }

  if ([(NSString *)stringMatchedByTopHit isEqualToString:v4])
  {
    v6 = 1;
    goto LABEL_13;
  }

  if (!self->_topHit)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_13;
  }

  v7 = [(CompletionGroupListing *)self->_currentListing topHit];
  if ([(CompletionItem *)self->_topHit isEquivalentTo:v7])
  {
    v8 = [(WBSCompletionQuery *)self->_rewrittenQuery queryString];
    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v9 = [(WBSCompletionQuery *)self->_query queryString];
      v6 = v9 != 0;
    }
  }

  else
  {
    v6 = [(NSString *)self->_matchingStringInTopHit safari_hasCaseInsensitivePrefix:v4];
  }

LABEL_13:
  return v6;
}

- (id)topHitForString:(id)a3
{
  if ([(CompletionList *)self _topHitMatchesString:a3])
  {
    v4 = self->_topHit;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)completionProvider:(id)a3 didFinishCompletingString:(id)a4
{
  v28 = a3;
  v7 = a4;
  v8 = [(WBSCompletionQuery *)self->_query queryString];
  if ([v7 isEqualToString:v8])
  {
  }

  else
  {
    v9 = [(WBSCompletionQuery *)self->_rewrittenQuery queryString];
    v10 = [v7 isEqualToString:v9];

    if (!v10)
    {
      goto LABEL_29;
    }
  }

  if (!self->_queryRestorationCompletionItem)
  {
    v11 = v28;
    if (self->_suggestionProvider == v28 && !self->_firstRemoteCompletionProviderToRespondToQuery)
    {
      v12 = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider searchRenderTimeout];
      v13 = [v12 integerValue];

      v11 = v28;
      if (v13)
      {
        objc_storeStrong(&self->_firstRemoteCompletionProviderToRespondToQuery, a3);
        v14 = [MEMORY[0x277CBEAA8] date];
        searchRenderTimeoutStartTime = self->_searchRenderTimeoutStartTime;
        self->_searchRenderTimeoutStartTime = v14;

        v11 = v28;
      }
    }

    universalSearchProvider = self->_universalSearchProvider;
    if (universalSearchProvider == v11)
    {
      v17 = [(UniversalSearchCompletionProvider *)universalSearchProvider parsecSearchSession];
      v18 = [v17 rewrittenQueryStringFromParsec];

      if (v18)
      {
        self->_tryParsecRewritesIfNoTopHit = 1;
      }

      if (!self->_firstRemoteCompletionProviderToRespondToQuery)
      {
        v23 = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider otherRenderTimeout];
        v24 = [v23 integerValue];

        if (v24 >= 1)
        {
          objc_storeStrong(&self->_firstRemoteCompletionProviderToRespondToQuery, a3);
          v25 = [MEMORY[0x277CBEAA8] date];
          otherRenderTimeoutStartTime = self->_otherRenderTimeoutStartTime;
          self->_otherRenderTimeoutStartTime = v25;
          goto LABEL_18;
        }
      }

      if (self->_searchRenderTimeoutStartTime && [(CompletionList *)self _searchRenderTimeoutHasElapsed])
      {
        otherRenderTimeoutStartTime = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
        v20 = objc_alloc(MEMORY[0x277D4C590]);
        v21 = [(CompletionProvider *)v28 completionsForQuery:self->_query];
        v22 = [v20 initWithResults:v21];
        [otherRenderTimeoutStartTime postFeedback:v22 forQueryID:{-[WBSCompletionQuery queryID](self->_query, "queryID")}];

LABEL_18:
      }
    }

    if ([(CompletionGroupListing *)self->_currentListing isAwaitingParsec]|| [(CompletionGroupListing *)self->_currentListing isAwaitingCompletionDatabase])
    {
      v26 = 0;
    }

    else
    {
      v26 = ![(CompletionGroupListing *)self->_currentListing isAwaitingTabCompletion];
    }

    if (self->_suggestionProvider == v28)
    {
      v27 = 1;
      if (!v26)
      {
LABEL_28:
        [(CompletionList *)self _updateCompletionListing];
        goto LABEL_29;
      }
    }

    else
    {
      v27 = self->_offlineSearchSuggestionsCompletionProvider == v28;
      if (!v26)
      {
        goto LABEL_28;
      }
    }

    if (!(v27 | ![(CompletionGroupListing *)self->_currentListing isAwaitingSearchProvider]))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_29:
}

- (id)windowHostingCompletionProvider:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained window];

  return v4;
}

- (id)currentSearchEngineHostSuffixes
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained activeSearchEngine];
  v4 = [v3 hostSuffixes];

  return v4;
}

- (id)defaultSectionTitleForGroupAtIndex:(unint64_t)a3
{
  v3 = [(CompletionList *)self _groupOrNilAtIndex:a3];
  v4 = [v3 defaultHeaderTitle];

  return v4;
}

- (id)titleForGroupAtIndex:(unint64_t)a3
{
  v3 = [(CompletionList *)self _groupOrNilAtIndex:a3];
  v4 = [v3 title];

  return v4;
}

- (id)identifierForGroupAtIndex:(unint64_t)a3
{
  v3 = [(CompletionList *)self _groupOrNilAtIndex:a3];
  v4 = [v3 groupIdentifier];

  return v4;
}

- (id)completionsForGroupAtIndex:(unint64_t)a3
{
  v3 = [(CompletionList *)self _groupOrNilAtIndex:a3];
  v4 = [v3 completions];

  return v4;
}

- (id)headerViewReuseIdentifierForGroupAtIndex:(unint64_t)a3
{
  v3 = [(CompletionList *)self _groupOrNilAtIndex:a3];
  v4 = [v3 headerViewReuseIdentifier];

  return v4;
}

- (id)headerViewForGroupAtIndex:(unint64_t)a3
{
  v3 = [(CompletionList *)self _groupOrNilAtIndex:a3];
  v4 = [v3 headerView];

  return v4;
}

- (void)configureHeaderView:(id)a3 forGroupAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CompletionList *)self _groupOrNilAtIndex:a4];
  [v7 configureHeaderView:v6 forCompletionList:self];
}

- (BOOL)hasCompletions
{
  listingOnDisplay = self->_listingOnDisplay;
  if (listingOnDisplay)
  {
    LOBYTE(listingOnDisplay) = ![(CompletionGroupListing *)listingOnDisplay isEmpty];
  }

  return listingOnDisplay;
}

- (void)setShouldIncludeNetworkedSearchSuggestions:(BOOL)a3
{
  if (self->_shouldIncludeNetworkedSearchSuggestions != a3)
  {
    self->_shouldIncludeNetworkedSearchSuggestions = a3;
    [(CompletionList *)self _updateProviders];

    [(CompletionList *)self _updateCompletionListing];
  }
}

- (void)stopCompleting
{
  [(SearchSuggestionProvider *)self->_suggestionProvider stop];
  [(CompletionProvider *)self->_suggestionProvider setDelegate:0];
  suggestionProvider = self->_suggestionProvider;
  self->_suggestionProvider = 0;

  [(CompletionProvider *)self->_findOnPageProvider setDelegate:0];
  findOnPageProvider = self->_findOnPageProvider;
  self->_findOnPageProvider = 0;

  [self->_URLCompletionProvider clearCachedCompletions];
  [(CompletionProvider *)self->_universalSearchProvider setDelegate:0];
  universalSearchProvider = self->_universalSearchProvider;
  self->_universalSearchProvider = 0;

  [self->_tabCompletionProvider setDelegate:0];
  [(TabCompletionProvider *)self->_tabCompletionProvider setTabCompletionProviderDataSource:0];
  tabCompletionProvider = self->_tabCompletionProvider;
  self->_tabCompletionProvider = 0;

  [(CompletionProvider *)self->_calculationResultProvider setDelegate:0];
  calculationResultProvider = self->_calculationResultProvider;
  self->_calculationResultProvider = 0;

  listingOnDisplay = self->_listingOnDisplay;
  self->_listingOnDisplay = 0;

  query = self->_query;
  self->_query = 0;
}

- (void)updateRestorationCompletionItemForCompletionItem:(id)a3 isCF:(BOOL)a4
{
  if (a4)
  {
    v5 = 24;
  }

  else
  {
    v5 = 32;
  }

  v6 = *(&self->super.isa + v5);
  listingOnDisplay = self->_listingOnDisplay;
  v8 = [(SearchQueryRestorationCompletionItem *)v6 listingToRestore];

  if (listingOnDisplay != v8)
  {
    v9 = [[SearchQueryRestorationCompletionItem alloc] initWithQuery:self->_query];

    [(SearchQueryRestorationCompletionItem *)v9 setListingToRestore:self->_listingOnDisplay];
    v6 = v9;
  }

  v10 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = v6;
}

- (void)cacheCurrentCompletionsAfterAcceptanceOfCompletionItem:(id)a3
{
  v6 = a3;
  [CompletionList updateRestorationCompletionItemForCompletionItem:"updateRestorationCompletionItemForCompletionItem:isCF:" isCF:?];
  v4 = [(NSArray *)self->_searchParametersList firstObject];
  v5 = [v4 isCFSearch];

  if (v5)
  {
    [(CompletionList *)self updateRestorationCompletionItemForCompletionItem:v6 isCF:1];
  }
}

- (BOOL)shouldRestoreCachedCompletions
{
  v3 = [(SearchQueryRestorationCompletionItem *)self->_queryRestorationCompletionItem queryToRestore];
  v4 = [v3 queryString];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [WeakRetained tabController];
  v7 = [v6 activeTabDocument];

  if ([v7 isSearchPage])
  {
    v8 = [v7 currentSearchQuery];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 isEqualToString:v4];
    }

    else
    {
      v11 = [v7 currentSearchQueryAllowingQueryThatLooksLikeURL];
      v10 = [v11 isEqualToString:v4];
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)restoreCachedCompletions
{
  v3 = [(SearchQueryRestorationCompletionItem *)self->_queryRestorationCompletionItem listingToRestore];
  listingOnDisplay = self->_listingOnDisplay;
  self->_listingOnDisplay = v3;

  v5 = [(NSArray *)self->_searchParametersList firstObject];
  v6 = [v5 isCFSearch];

  if (v6)
  {
    v7 = [(SearchQueryRestorationCompletionItem *)self->_cfQueryRestorationCompletionItem listingToRestore];
    cfListingOnDisplay = self->_cfListingOnDisplay;
    self->_cfListingOnDisplay = v7;
  }

  v9 = objc_alloc(MEMORY[0x277D49ED8]);
  v10 = [(SearchQueryRestorationCompletionItem *)self->_queryRestorationCompletionItem queryToRestore];
  v11 = [v10 queryString];
  v12 = [v9 initWithQueryString:v11 triggerEvent:26];
  query = self->_query;
  self->_query = v12;

  [(CompletionList *)self _updateQueryIDForGroups];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained completionListDidRestoreCachedCompletions:self];
}

- (void)_updateQueryIDForGroups
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(CompletionGroupListing *)self->_listingOnDisplay groups];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = [v8 completions];
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v15;
          do
          {
            v13 = 0;
            do
            {
              if (*v15 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v14 + 1) + 8 * v13++) setParsecQueryID:{-[WBSCompletionQuery queryID](self->_query, "queryID")}];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }
}

- (void)didResumeSearchWithQuery:(id)a3
{
  listingOnDisplay = self->_listingOnDisplay;
  v5 = a3;
  v15 = [(CompletionGroupListing *)listingOnDisplay groups];
  v6 = objc_alloc(MEMORY[0x277D49ED8]);
  v7 = [v5 queryString];

  v8 = [v6 initWithQueryString:v7];
  query = self->_query;
  self->_query = v8;

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v11 = [WeakRetained effectiveProfileIdentifier];
  [(WBSCompletionQuery *)self->_query setProfileIdentifierToFilterResults:v11];

  [(CompletionList *)self _updateQueryIDForGroups];
  v12 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  v13 = [(WBSCompletionQuery *)self->_query queryID];
  v14 = [(CompletionList *)self rankingFeedbackConfiguration];
  [v12 didRankSections:v15 blendingDuration:0 feedbackForHiddenAndDuplicateResults:v13 forQueryID:v14 rankingFeedbackConfiguration:0.0];
}

- (void)clearCachedSearchQuery
{
  queryRestorationCompletionItem = self->_queryRestorationCompletionItem;
  self->_queryRestorationCompletionItem = 0;
}

- (id)swipeActionsForCompletionItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 row];
  v7 = -[CompletionGroupListing groupAtIndex:](self->_listingOnDisplay, "groupAtIndex:", [v4 section]);
  v8 = [v7 completions];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

  v10 = [(CompletionGroupListing *)self->_listingOnDisplay parsecTopHits];
  if ([v10 count] || v5 != -[CompletionGroupListing indexOfTopHitsGroup](self->_listingOnDisplay, "indexOfTopHitsGroup"))
  {
  }

  else
  {
    v11 = [(CompletionGroupListing *)self->_listingOnDisplay localTopHits];
    v12 = [v11 count];

    if (v6 < v12)
    {
      v13 = [(CompletionGroupListing *)self->_listingOnDisplay localTopHits];
      v14 = [v13 objectAtIndexedSubscript:v6];
      v15 = [(CompletionList *)self _swipeActionForTopHit:v14 atIndexPath:v4];

      goto LABEL_11;
    }
  }

  if (v5 == [(CompletionGroupListing *)self->_listingOnDisplay indexOfBookmarksAndHistoryGroup])
  {
    v16 = [(CompletionGroupListing *)self->_listingOnDisplay groups];
    v17 = [v16 objectAtIndexedSubscript:{-[CompletionGroupListing indexOfBookmarksAndHistoryGroup](self->_listingOnDisplay, "indexOfBookmarksAndHistoryGroup")}];

    v18 = [v17 completions];
    v19 = [v18 objectAtIndexedSubscript:v6];

    v15 = [(CompletionList *)self _swipeActionForHistory:v19 atIndexPath:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [(CompletionList *)self _swipeActionForSwitchToTab:v9 atIndexPath:v4];
    }

    else
    {
      v15 = MEMORY[0x277CBEBF8];
    }
  }

LABEL_11:

  return v15;
}

- (id)_swipeActionForTopHit:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isTopHit])
  {
    v8 = [(CompletionList *)self _contextualActionForSwipeToDeleteItem:v6 atIndexPath:v7 itemType:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (id)_swipeActionForHistory:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v9 = [(CompletionList *)self _contextualActionForSwipeToDeleteItem:v6 atIndexPath:v7 itemType:v8];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (id)_swipeActionForSwitchToTab:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(CompletionList *)self _contextualActionForSwipeToDeleteItem:v6 atIndexPath:v7 itemType:3];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (BOOL)isPresentingItemDeletionAlert
{
  v3 = [(UIAlertController *)self->_destructiveDeletionAlert parentViewController];
  if (v3)
  {
    destructiveDeletionAlertIsPending = 1;
  }

  else
  {
    destructiveDeletionAlertIsPending = self->_destructiveDeletionAlertIsPending;
  }

  return destructiveDeletionAlertIsPending;
}

- (id)_swipeToDeleteTitleForHistoryAndBookmarks:(id)a3
{
  v3 = a3;
  if (![v3 containsReadingListItem] && !objc_msgSend(v3, "containsBookmark"))
  {
    [v3 onlyContainsCloudTab];
  }

  v4 = _WBSLocalizedString();

  return v4;
}

- (id)_swipeToDeleteButtonTitleForHistoryAndBookmarks:(id)a3
{
  [a3 onlyContainsCloudTab];
  v3 = _WBSLocalizedString();

  return v3;
}

- (id)_swipeToDeleteDestructiveAlertTitleForHistoryAndBookmarks:(id)a3 forBookmarks:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([a3 onlyContainsCloudTab])
  {
    goto LABEL_2;
  }

  v6 = [v5 count];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_8:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if ([*(*(&v16 + 1) + 8 * v12) bookmarkType] == 1)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    if (v6 != 1 && v6 != 2)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = _WBSLocalizedString();
      [v13 localizedStringWithFormat:v14, objc_msgSend(v8, "count")];
      goto LABEL_23;
    }

    goto LABEL_2;
  }

LABEL_14:

  if (v6)
  {
    if (v6 == 1)
    {
LABEL_2:
      v6 = _WBSLocalizedString();
      goto LABEL_3;
    }

    v15 = MEMORY[0x277CCACA8];
    v14 = _WBSLocalizedString();
    [v15 localizedStringWithFormat:v14, v6];
    v6 = LABEL_23:;
  }

LABEL_3:

  return v6;
}

- (id)_contextualActionForSwipeToDeleteItem:(id)a3 atIndexPath:(id)a4 itemType:(unint64_t)a5
{
  v48[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v31 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v10 = [WeakRetained tabController];
  v11 = [v10 activeTabDocument];
  v34 = [v11 history];

  v12 = [v8 originalURLString];
  v33 = [v34 itemForURLString:v12];

  v13 = _WBSLocalizedString();
  v14 = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
  v15 = [v8 originalURLString];
  v32 = [v14 bookmarksMatchingString:v15];

  if (a5 - 1 >= 2)
  {
    if (a5 != 3)
    {
      v21 = 0;
      LOBYTE(v18) = 0;
      v22 = 0;
      v30 = 0;
      goto LABEL_10;
    }

    v30 = _WBSLocalizedString();
    v21 = _WBSLocalizedString();
    v19 = _WBSLocalizedString();
    LOBYTE(v18) = 0;
    v22 = 1;
    v16 = v13;
LABEL_8:

    v13 = v19;
LABEL_10:
    objc_initWeak(&location, self);
    v23 = MEMORY[0x277D753C0];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __77__CompletionList__contextualActionForSwipeToDeleteItem_atIndexPath_itemType___block_invoke;
    v35[3] = &unk_2781DC350;
    objc_copyWeak(v44, &location);
    v45 = v22 & 1;
    v36 = v8;
    v37 = v31;
    v44[1] = a5;
    v38 = v34;
    v39 = v33;
    v24 = v21;
    v40 = v24;
    v25 = v30;
    v41 = v25;
    v46 = v18;
    v42 = v14;
    v43 = v32;
    v26 = [v23 contextualActionWithStyle:1 title:v13 handler:v35];
    v48[0] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];

    objc_destroyWeak(v44);
    objc_destroyWeak(&location);

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v8;
    if (([v16 isSynthesized] & 1) == 0)
    {
      v17 = [v16 containsReadingListItem];
      v29 = [v16 containsBookmark];
      v18 = [v16 onlyContainsCloudTab];
      v19 = [(CompletionList *)self _swipeToDeleteTitleForHistoryAndBookmarks:v16];

      v30 = [(CompletionList *)self _swipeToDeleteButtonTitleForHistoryAndBookmarks:v16];
      v20 = [(CompletionList *)self _swipeToDeleteDestructiveAlertTitleForHistoryAndBookmarks:v16 forBookmarks:v32];
      v21 = v20;
      if ((v33 != 0) | (v17 | v29 | v18) & 1)
      {
        v22 = v17 | v29 | v18;
        goto LABEL_8;
      }

      v13 = v19;
    }
  }

  v27 = MEMORY[0x277CBEBF8];
LABEL_14:

  return v27;
}

void __77__CompletionList__contextualActionForSwipeToDeleteItem_atIndexPath_itemType___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    if (*(a1 + 112))
    {
      v12 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 64) message:0 preferredStyle:1];
      v30 = v7;
      v13 = *(v11 + 21);
      *(v11 + 21) = v12;

      v14 = MEMORY[0x277D750F8];
      v15 = _WBSLocalizedString();
      v16 = [v14 actionWithTitle:v15 style:1 handler:&__block_literal_global_154_0];

      v17 = MEMORY[0x277D750F8];
      v18 = *(a1 + 72);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __77__CompletionList__contextualActionForSwipeToDeleteItem_atIndexPath_itemType___block_invoke_3;
      v32[3] = &unk_2781DC328;
      v32[4] = v11;
      v38 = &v41;
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v39 = *(a1 + 104);
      v21 = *(a1 + 56);
      v22 = *(a1 + 48);
      *&v23 = v21;
      *(&v23 + 1) = v22;
      *&v24 = v19;
      *(&v24 + 1) = v20;
      v33 = v24;
      v34 = v23;
      v40 = *(a1 + 113);
      v35 = *(a1 + 80);
      v36 = *(a1 + 88);
      v37 = v9;
      v25 = [v17 actionWithTitle:v18 style:2 handler:v32];
      v26 = [v11 browserController];
      [*(v11 + 21) addAction:v16];
      [*(v11 + 21) addAction:v25];
      *(v11 + 176) = 1;
      v27 = [v26 viewControllerToPresentFrom];
      v28 = *(v11 + 21);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __77__CompletionList__contextualActionForSwipeToDeleteItem_atIndexPath_itemType___block_invoke_5;
      v31[3] = &unk_2781D4D40;
      v31[4] = v11;
      [v27 presentViewController:v28 animated:1 completion:v31];

      v7 = v30;
    }

    else
    {
      v29 = [WeakRetained _deleteCompletionListItemAndCheckIfLastInSection:*(a1 + 32) atIndexPath:*(a1 + 40) forItemType:*(a1 + 104)];
      *(v42 + 24) = v29;
      [*(a1 + 48) removeItem:*(a1 + 56)];
      [v11 _removeIgnoredSiriSuggestedSiteRecordsForHistoryItem:*(a1 + 56)];
      [*(v11 + 38) clearCachedCompletions];
      v16 = objc_loadWeakRetained(v11 + 32);
      [v16 completionList:v11 didRemoveItem:*(a1 + 32) wasLastInSection:*(v42 + 24) atIndexPath:*(a1 + 40) withCompletionHandler:v9];
    }

    _Block_object_dispose(&v41, 8);
  }
}

void __77__CompletionList__contextualActionForSwipeToDeleteItem_atIndexPath_itemType___block_invoke_3(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) browserController];
  *(*(*(a1 + 96) + 8) + 24) = [*(a1 + 32) _deleteCompletionListItemAndCheckIfLastInSection:*(a1 + 40) atIndexPath:*(a1 + 48) forItemType:*(a1 + 104)];
  if (*(a1 + 56))
  {
    [*(a1 + 64) removeItem:?];
    [*(a1 + 32) _removeIgnoredSiriSuggestedSiteRecordsForHistoryItem:*(a1 + 56)];
  }

  [*(*(a1 + 32) + 304) clearCachedCompletions];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (*(a1 + 112) & 1) == 0)
  {
    [*(a1 + 72) deleteBookmarks:*(a1 + 80) postChangeNotification:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v3 = [v2 browserWindowController];
      v4 = [v3 browserControllers];

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v22;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v22 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v21 + 1) + 8 * i);
            v10 = [*(a1 + 40) tabUUID];
            if ([v9 containsTabWithUUID:v10])
            {
              [v9 closeTabWithUUID:v10];
              goto LABEL_20;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_22;
    }

    if (*(a1 + 112) == 1)
    {
      v11 = *(a1 + 40);
      v12 = [v11 data];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v14 = [v11 data];
      v4 = v14;
      if (isKindOfClass)
      {
        v10 = [v2 cloudTabStore];

        v15 = [v4 cloudTab];
        v16 = [v4 device];
        [v10 closeTab:v15 onDevice:v16];

LABEL_20:
      }

      else
      {
        v17 = [v14 cloudTabsAndProviders];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __77__CompletionList__contextualActionForSwipeToDeleteItem_atIndexPath_itemType___block_invoke_4;
        v19[3] = &unk_2781DC300;
        v20 = v2;
        [v17 enumerateKeysAndObjectsUsingBlock:v19];
      }

LABEL_22:
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 256));
  [WeakRetained completionList:*(a1 + 32) didRemoveItem:*(a1 + 40) wasLastInSection:*(*(*(a1 + 96) + 8) + 24) atIndexPath:*(a1 + 48) withCompletionHandler:*(a1 + 88)];
}

void __77__CompletionList__contextualActionForSwipeToDeleteItem_atIndexPath_itemType___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 cloudTabStore];
  [v7 closeTab:v6 onDevice:v5];
}

- (BOOL)_deleteCompletionListItemAndCheckIfLastInSection:(id)a3 atIndexPath:(id)a4 forItemType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  switch(a5)
  {
    case 3uLL:
      v14 = -[CompletionGroupListing deleteSwitchToTabItemAndReturnWhetherSectionIsEmpty:inSection:atIndex:](self->_listingOnDisplay, "deleteSwitchToTabItemAndReturnWhetherSectionIsEmpty:inSection:atIndex:", v8, [v9 section], objc_msgSend(v9, "row"));
      goto LABEL_8;
    case 2uLL:
      v14 = -[CompletionGroupListing deleteHistoryItemAndCheckIfLastInSection:atIndex:](self->_listingOnDisplay, "deleteHistoryItemAndCheckIfLastInSection:atIndex:", v8, [v9 row]);
LABEL_8:
      v12 = v14;
      break;
    case 1uLL:
      [(CompletionList *)self _deleteTopHitCompletionItem:v8 atIndexPath:v9];
      v11 = [(CompletionGroupListing *)self->_listingOnDisplay localTopHits];
      v12 = [v11 count] == 0;

      topHit = self->_topHit;
      if (topHit == v8)
      {
        self->_topHit = 0;
      }

      break;
    default:
      v12 = 0;
      break;
  }

  return v12;
}

- (void)_deleteTopHitCompletionItem:(id)a3 atIndexPath:(id)a4
{
  listingOnDisplay = self->_listingOnDisplay;
  v6 = a3;
  -[CompletionGroupListing deleteTopHit:atIndex:](listingOnDisplay, "deleteTopHit:atIndex:", v6, [a4 row]);
}

- (void)_requestFavicons
{
  v48 = *MEMORY[0x277D85DE8];
  if (!self->_faviconCache)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    faviconCache = self->_faviconCache;
    self->_faviconCache = v3;
  }

  if (!self->_urlStringToFaviconRequestTokens)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    urlStringToFaviconRequestTokens = self->_urlStringToFaviconRequestTokens;
    self->_urlStringToFaviconRequestTokens = v5;
  }

  v7 = [(CompletionList *)self _completionsRequiringFavicon];
  v8 = MEMORY[0x277CBEB98];
  v9 = [v7 safari_mapObjectsUsingBlock:&__block_literal_global_162_1];
  v30 = [v8 setWithArray:v9];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens allKeys];
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v11)
  {
    v12 = *v43;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        if (([v30 containsObject:v14] & 1) == 0)
        {
          v15 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
          v16 = [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens objectForKeyedSubscript:v14];
          [v15 cancelRequestsWithTokens:v16];

          [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens setObject:0 forKeyedSubscript:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v11);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v17 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v17)
  {
    v29 = *v39;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v38 + 1) + 8 * j);
        v20 = [v19 originalURLString];
        v21 = objc_alloc(MEMORY[0x277D4A730]);
        v22 = [MEMORY[0x277CBEBC0] URLWithString:v20];
        v23 = [v21 initWithURL:v22 iconSize:0 fallbackType:{24.0, 24.0}];

        v34 = 0;
        v35 = &v34;
        v36 = 0x2020000000;
        v37 = 1;
        objc_initWeak(&location, self);
        v24 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __34__CompletionList__requestFavicons__block_invoke_2;
        v31[3] = &unk_2781DC378;
        objc_copyWeak(&v32, &location);
        v31[4] = v19;
        v31[5] = &v34;
        v25 = [v24 registerRequest:v23 priority:2 responseHandler:v31];

        *(v35 + 24) = 0;
        v26 = [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens objectForKeyedSubscript:v20];

        if (v26)
        {
          v27 = [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens objectForKeyedSubscript:v20];
          [v27 addObject:v25];
        }

        else
        {
          v27 = [MEMORY[0x277CBEB18] arrayWithObject:v25];
          [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens setObject:v27 forKeyedSubscript:v20];
        }

        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
        _Block_object_dispose(&v34, 8);
      }

      v17 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v17);
  }
}

void __34__CompletionList__requestFavicons__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [v3 favicon];
    if (v5)
    {
      v6 = v5;
      v7 = [MEMORY[0x277D4A780] resizedImage:v5 withSize:{24.0, 24.0}];

      [v7 sf_registerFaviconForDarkUserInterfaceStyleWithSize:{24.0, 24.0}];
      v8 = [*(a1 + 32) originalURLString];
      if ([v8 length])
      {
        v9 = *(WeakRetained + 37);
        v10 = [*(a1 + 32) originalURLString];
        [v9 setObject:v7 forKey:v10];
      }

      else
      {
        v11 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __34__CompletionList__requestFavicons__block_invoke_2_cold_1();
        }
      }

      v12 = [WeakRetained _indexPathForEquivalentCompletionItem:*(a1 + 32)];
      v13 = v12;
      if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && v12)
      {
        v14 = objc_loadWeakRetained(WeakRetained + 32);
        [v14 completionList:WeakRetained didFetchFavicon:v7 forRowAtIndexPath:v13];
      }
    }
  }
}

- (id)_completionsRequiringFavicon
{
  v3 = [(CompletionGroupListing *)self->_listingOnDisplay parsecTopHits];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(CompletionGroupListing *)self->_listingOnDisplay localTopHits];
  }

  return v4;
}

- (id)_indexPathForEquivalentCompletionItem:(id)a3
{
  v4 = a3;
  v5 = [(CompletionGroupListing *)self->_listingOnDisplay groups];
  if ([v5 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 objectAtIndexedSubscript:v6];
      v8 = [v7 completions];
      v9 = [v8 count];

      if (v9)
      {
        break;
      }

LABEL_9:

      if (++v6 >= [v5 count])
      {
        goto LABEL_10;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = [v7 completions];
      v12 = [v11 objectAtIndexedSubscript:v10];

      if (([v4 isEqual:v12] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v4, "isEquivalentTo:", v12))
      {
        break;
      }

      ++v10;
      v13 = [v7 completions];
      v14 = [v13 count];

      if (v10 >= v14)
      {
        goto LABEL_9;
      }
    }

    v15 = [MEMORY[0x277CCAA70] indexPathForRow:v10 inSection:v6];
  }

  else
  {
LABEL_10:
    v15 = 0;
  }

  return v15;
}

- (void)cacheIconForParsecResult:(id)a3
{
  v4 = a3;
  if (!self->_parsecIconCache)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
    parsecIconCache = self->_parsecIconCache;
    self->_parsecIconCache = v5;
  }

  if (!self->_urlStringsLoadingParsecIcon)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    urlStringsLoadingParsecIcon = self->_urlStringsLoadingParsecIcon;
    self->_urlStringsLoadingParsecIcon = v7;
  }

  v9 = [v4 originalURLString];
  v10 = [(NSCache *)self->_parsecIconCache objectForKey:v9];
  if (v10)
  {
  }

  else if (([(NSMutableSet *)self->_urlStringsLoadingParsecIcon containsObject:v9]& 1) == 0)
  {
    v11 = [v4 safari_firstInlineCardSectionOfClass:objc_opt_class()];
    v12 = [v11 thumbnail];

    if (v12 || ([v4 safari_firstInlineCardSectionOfClass:objc_opt_class()], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "image"), v12 = objc_claimAutoreleasedReturnValue(), v13, v12))
    {
      v14 = [v12 imageData];

      if (v14)
      {
        v15 = [v12 imageData];
        [(CompletionList *)self _cacheImageFromData:v15 forURLString:v9];
      }

      else
      {
        [(NSMutableSet *)self->_urlStringsLoadingParsecIcon addObject:v9];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __43__CompletionList_cacheIconForParsecResult___block_invoke;
        v16[3] = &unk_2781DC3A0;
        v16[4] = self;
        v17 = v9;
        [v12 loadImageDataWithCompletionHandler:v16];
      }
    }
  }
}

void __43__CompletionList_cacheIconForParsecResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CompletionList_cacheIconForParsecResult___block_invoke_2;
  block[3] = &unk_2781D58E8;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __43__CompletionList_cacheIconForParsecResult___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _cacheImageFromData:*(a1 + 40) forURLString:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 224);
  v3 = *(a1 + 48);

  return [v2 removeObject:v3];
}

- (void)_cacheImageFromData:(id)a3 forURLString:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v6];
    if (v8)
    {
      [(NSCache *)self->_parsecIconCache setObject:v8 forKey:v7];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained completionListDidFetchParsecIcon:self];
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CompletionList _cacheImageFromData:forURLString:];
      }
    }
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CompletionList _cacheImageFromData:forURLString:];
    }
  }
}

- (id)cachedIconForParsecResult:(id)a3
{
  parsecIconCache = self->_parsecIconCache;
  v4 = [a3 originalURLString];
  v5 = [(NSCache *)parsecIconCache objectForKey:v4];

  return v5;
}

- (NSIndexPath)indexPathOfAsTypedSearchSuggestion
{
  v3 = [(CompletionGroupListing *)self->_listingOnDisplay indexOfSearchSuggestionsGroup];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = v3;
    v6 = [(CompletionGroupListing *)self->_listingOnDisplay searchSuggestions];
    v7 = [v6 firstObject];

    v8 = [v7 string];
    v9 = [(WBSCompletionQuery *)self->_query queryString];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v4 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v5];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)shouldOverrideBackgroundViewForItem:(id)a3
{
  v4 = a3;
  v5 = [(CompletionList *)self completionsForGroupAtIndex:0];
  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 firstObject];
      v8 = [v7 resultType];
      v9 = [v8 isEqualToString:@"maps"];

      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  if ([v5 count] > 1)
  {
LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  v10 = [v5 firstObject];
  v11 = v10 != v4;

LABEL_9:
  return v11;
}

- (void)_updateOfflineSearchSuggestionAvailability
{
  if ([(CompletionList *)self _defaultSearchEngineIsGoogle])
  {
    offlineSearchSuggestionsCompletionProvider = self->_offlineSearchSuggestionsCompletionProvider;
    if (offlineSearchSuggestionsCompletionProvider)
    {

      [(OfflineSearchSuggestionsCompletionProvider *)offlineSearchSuggestionsCompletionProvider updateOfflineSearchSuggestionAvailability];
    }

    else
    {
      v4 = [OfflineSearchSuggestionsCompletionProvider alloc];
      WeakRetained = objc_loadWeakRetained(&self->_browserController);
      v6 = -[OfflineSearchSuggestionsCompletionProvider initWithMaximumNumberOfSuggestions:forPrivateBrowsing:](v4, "initWithMaximumNumberOfSuggestions:forPrivateBrowsing:", 9, [WeakRetained isPrivateBrowsingEnabled]);
      v7 = self->_offlineSearchSuggestionsCompletionProvider;
      self->_offlineSearchSuggestionsCompletionProvider = v6;

      v8 = self->_offlineSearchSuggestionsCompletionProvider;

      [(CompletionProvider *)v8 setDelegate:self];
    }
  }
}

- (void)recordIgnoredSiriSuggestedSitesWithURL:(id)a3
{
  v4 = a3;
  v5 = [(CompletionGroupListing *)self->_listingOnDisplay query];
  v6 = [v5 queryString];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v8 = [WeakRetained tabController];
  v9 = [v8 activeProfileIdentifier];

  v10 = [(CompletionGroupListing *)self->_listingOnDisplay parsecTopHits];
  v11 = v10;
  v12 = MEMORY[0x277CBEBF8];
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v14 = v13;

  v15 = [(CompletionGroupListing *)self->_listingOnDisplay topParsecResults];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  v18 = v17;

  ignoredSiriSuggestedSitesQueue = self->_ignoredSiriSuggestedSitesQueue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __57__CompletionList_recordIgnoredSiriSuggestedSitesWithURL___block_invoke;
  v25[3] = &unk_2781D7CE8;
  v26 = v14;
  v27 = v18;
  v28 = self;
  v29 = v4;
  v30 = v9;
  v31 = v6;
  v20 = v6;
  v21 = v9;
  v22 = v4;
  v23 = v18;
  v24 = v14;
  dispatch_async(ignoredSiriSuggestedSitesQueue, v25);
}

void __57__CompletionList_recordIgnoredSiriSuggestedSitesWithURL___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) safari_arrayByAddingObjectsFromArrayIfNotDuplicates:*(a1 + 40)];
  if (([*(a1 + 48) _isPegasusMapsCompositeResult:v2] & 1) == 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = v2;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = v4;
    v6 = *v30;
    v28 = v3;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [v8 resultType];
        if (WBSIsEqual())
        {
          v10 = [v8 url];
          v11 = WBSIsEqual();

          if (v11)
          {
            continue;
          }

          v12 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = v12;
            v14 = [v8 url];
            v15 = [v14 absoluteString];
            v16 = *(a1 + 64);
            v17 = *(a1 + 72);
            *buf = 138740483;
            v34 = v15;
            v35 = 2117;
            v36 = v16;
            v37 = 2117;
            v38 = v17;
            _os_log_impl(&dword_215819000, v13, OS_LOG_TYPE_INFO, "Recording an ignored Siri suggested site with URL: %{sensitive}@ profile: %{sensitive}@ query: %{sensitive}@.", buf, 0x20u);
          }

          v9 = [MEMORY[0x277D49F90] sharedController];
          v18 = [v8 url];
          v19 = [v18 absoluteString];
          v20 = *(a1 + 64);
          v21 = *(a1 + 72);
          v22 = [*(a1 + 56) absoluteString];
          [v9 addIgnoredSiriSuggestedSiteWithURLString:v19 inProfile:v20 withQuery:v21 visitedURLString:v22];

          v3 = v28;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (!v5)
      {
LABEL_15:

        v23 = [MEMORY[0x277D49F90] sharedController];
        v25 = *(a1 + 64);
        v24 = *(a1 + 72);
        v26 = [*(a1 + 56) absoluteString];
        [v23 updateTimestampsOfIgnoredSiriSuggestedSitesInProfile:v25 query:v24 visitedURLString:v26];

        v2 = v27;
        break;
      }
    }
  }
}

- (void)_removeIgnoredSiriSuggestedSiteRecordsForHistoryItem:(id)a3
{
  v12 = [a3 url];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v5 = [WeakRetained tabController];
  v6 = [v5 activeProfileIdentifier];

  v7 = [MEMORY[0x277CDB8A8] sharedInstance];
  v8 = [v7 userVisibleQueryFromSearchURL:v12];

  v9 = [MEMORY[0x277D49F90] sharedController];
  v10 = v9;
  if (v8)
  {
    [v9 removeIgnoredSiriSuggestedSitesInProfile:v6 query:v8];
  }

  else
  {
    v11 = [v12 host];
    [v10 removeIgnoredSiriSuggestedSitesInProfile:v6 visitedURLHost:v11];
  }
}

- (BOOL)_isPegasusMapsCompositeResult:(id)a3
{
  v3 = a3;
  if ([v3 count] < 2)
  {
    v8 = 0;
  }

  else
  {
    v4 = MEMORY[0x277D49FD8];
    v5 = [v3 objectAtIndexedSubscript:0];
    if ([v4 typeForSFSearchResult:v5] == 2)
    {
      v6 = MEMORY[0x277D49FD8];
      v7 = [v3 objectAtIndexedSubscript:1];
      v8 = [v6 typeForSFSearchResult:v7] == 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)_supportsPrefixNavigationalIntent
{
  v3 = [(SearchSuggestionProvider *)self->_suggestionProvider supportsPrefixNavigationalIntent];
  if (v3)
  {
    LOBYTE(v3) = ![(UniversalSearchCompletionProvider *)self->_universalSearchProvider disableNavigationalIntentProbability];
  }

  return v3;
}

- (BOOL)_navigationalIntentShouldBlockSearchResult:(id)a3 givenFirstSearchSuggestion:(id)a4 completionListing:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CompletionList *)self _supportsPrefixNavigationalIntent])
  {
    v11 = [v8 serverCompletion];
    v12 = [v9 string];
    v13 = [v9 prefixNavigationalIntent];
    [v10 setPrefixNavigationalIntent:v13];
    v14 = [MEMORY[0x277D4A030] searchParameters];
    if ([v14 checkServerCompletionForPrefixNavigationalIntent])
    {
      v15 = 0;
      if (!v11 || !v12)
      {
        goto LABEL_13;
      }

      v16 = [v11 isEqualToString:v12];

      if ((v16 & 1) == 0)
      {
LABEL_14:
        v15 = 0;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v17 = [MEMORY[0x277D4A030] searchParameters];
    v18 = [v17 checkServerCompletionForPrefixNavigationalIntent];

    if (v18)
    {
      [v10 setServerCompletionDidMatchFirstSearchSuggestionFrom3rdParty:1];
    }

    if (!v13)
    {
      goto LABEL_14;
    }

    v19 = [v13 integerValue];
    v14 = [MEMORY[0x277D4A030] searchParameters];
    v20 = [v14 prefixNavigationalIntentThreshold];
    v15 = v19 < [v20 integerValue];

LABEL_13:
LABEL_15:

    goto LABEL_16;
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (id)tabDocumentForFindOnPageCompletionProvider:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  v5 = [v4 activeTabDocument];

  return v5;
}

- (id)windowUUIDsToTabsForTabCompletionProvider:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained isPrivateBrowsingEnabled];
  v19 = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [WeakRetained browserWindowController];
  v6 = [v5 browserControllers];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (v4 == [v11 isPrivateBrowsingEnabled])
        {
          v12 = [WeakRetained activeProfileIdentifier];
          v13 = [v11 activeProfileIdentifier];
          v14 = [v12 isEqualToString:v13];

          if (v14)
          {
            v15 = [v11 tabController];
            v16 = [v15 currentTabs];
            v17 = [v11 UUID];
            [v19 setObject:v16 forKeyedSubscript:v17];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  return v19;
}

- (id)selectedTabDocumentForTabCompletionProvider:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  v5 = [v4 activeTabDocument];

  return v5;
}

- (id)tabGroupsForTabCompletionProvider:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  v5 = [v4 nonActiveTabGroupsInCurrentBrowsingMode];

  return v5;
}

- (id)currentWindowUUIDForTabCompletionProvider:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained UUID];

  return v4;
}

- (BOOL)canPerformCommand:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CompletionList *)self _urlFromCommand:v4];
    v6 = ![(CompletionList *)self _shouldSearchUIHandleEngagementForURL:v5];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)performCommand:(id)a3
{
  v12 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v12;
  if (isKindOfClass)
  {
    v6 = v12;
    v7 = [(CompletionList *)self _urlFromCommand:v6];
    v8 = [v6 punchout];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 forceOpenInBrowser];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(CompletionList *)self delegate];
    [v10 completionList:self willGoToURL:v7 fromPegasusSearchResult:self->_pegasusSearchResult forImageAttribution:v9];

    pegasusSearchResult = self->_pegasusSearchResult;
    self->_pegasusSearchResult = 0;

    self->_safariShouldHandleCardSectionEngagement = 0;
    v5 = v12;
  }
}

- (id)_urlFromCommand:(id)a3
{
  v3 = [a3 punchout];
  v4 = [v3 preferredOpenableURL];

  return v4;
}

- (BOOL)shouldHandleCardSectionEngagement:(id)a3
{
  v4 = a3;
  v5 = [v4 destination];
  v6 = [v5 preferredOpenableURL];

  v7 = [(CompletionList *)self _shouldSearchUIHandleEngagementForURL:v6];
  if (!v7)
  {
    v8 = [v4 destination];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 forceOpenInBrowser];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(CompletionList *)self delegate];
    [v10 completionList:self willGoToURL:v6 fromPegasusSearchResult:self->_pegasusSearchResult forImageAttribution:v9];

    pegasusSearchResult = self->_pegasusSearchResult;
    self->_pegasusSearchResult = 0;

    self->_safariShouldHandleCardSectionEngagement = 0;
  }

  return v7;
}

- (BOOL)_shouldSearchUIHandleEngagementForURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  v8 = 1;
  if (self->_safariShouldHandleCardSectionEngagement)
  {
    v6 = [v4 host];
    v7 = [v6 isEqualToString:@"weather.apple.com"];

    if ((v7 & 1) == 0 && (([v5 safari_isHTTPURL] & 1) != 0 || objc_msgSend(v5, "safari_isHTTPSURL")))
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)willDismissViewController:(id)a3
{
  v4 = [(CompletionList *)self delegate];
  [v4 completionListDidDismissSearchUIViewController:self];
}

- (void)didEngageResult:(id)a3
{
  v4 = a3;
  [(CompletionList *)self _postFeedback:v4];
  self->_safariShouldHandleCardSectionEngagement = 1;
  v5 = [v4 result];

  pegasusSearchResult = self->_pegasusSearchResult;
  self->_pegasusSearchResult = v5;
}

- (void)_postFeedback:(id)a3
{
  v8 = a3;
  v4 = +[UniversalSearchSession sharedSession];
  v5 = [v4 feedbackDispatcher];
  v6 = [(CompletionList *)self query];
  v7 = [v6 queryID];
  if (!v7)
  {
    v7 = [MEMORY[0x277D49ED8] currentQueryID];
  }

  [v5 postFeedback:v8 forQueryID:v7];
}

- (BrowserController)browserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);

  return WeakRetained;
}

- (CompletionListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (LoadProgressObserver)loadProgressObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_loadProgressObserver);

  return WeakRetained;
}

- (void)_addUniversalSearchCompletions:(uint64_t)a1 toCompletionListing:(NSObject *)a2 delaySiriSuggestedSite:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_215819000, a2, OS_LOG_TYPE_DEBUG, "Top Pegasus' results set for Completion List: [%{public}@]", &v2, 0xCu);
}

- (void)_listingForQuery:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_215819000, a2, OS_LOG_TYPE_DEBUG, "URL Completions  have Arrived: (%d)", v2, 8u);
}

- (void)_listingForQuery:(void *)a3 .cold.2(char a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a1 & 1;
  v5 = a2;
  v6[0] = 67109376;
  v6[1] = v4;
  v7 = 1024;
  v8 = [a3 count];
  _os_log_debug_impl(&dword_215819000, v5, OS_LOG_TYPE_DEBUG, "Universal search provider is valid: (%i) and universal search completions count: (%d)", v6, 0xEu);
}

void __27__CompletionList_setQuery___block_invoke_99_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_215819000, a2, OS_LOG_TYPE_ERROR, "Timed out waiting for Parsec results with timeout value of %ld", &v3, 0xCu);
}

@end