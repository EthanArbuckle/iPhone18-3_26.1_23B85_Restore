@interface CompletionList
+ (id)_completionsByMergingRecentSearches:(id)searches withSuggestions:(id)suggestions andLiteralSearch:(id)search queryID:(int64_t)d topHits:(id)hits forPrivateBrowsing:(BOOL)browsing;
+ (id)completionBookmarkProvider;
- (BOOL)_canUseOfflineSearchSuggestions;
- (BOOL)_defaultSearchEngineIsGoogle;
- (BOOL)_deleteCompletionListItemAndCheckIfLastInSection:(id)section atIndexPath:(id)path forItemType:(unint64_t)type;
- (BOOL)_isPegasusMapsCompositeResult:(id)result;
- (BOOL)_navigationalIntentShouldBlockSearchResult:(id)result givenFirstSearchSuggestion:(id)suggestion completionListing:(id)listing;
- (BOOL)_searchRenderTimeoutHasElapsed;
- (BOOL)_shouldFetchSearchSuggestions;
- (BOOL)_shouldSearchUIHandleEngagementForURL:(id)l;
- (BOOL)_supportsPrefixNavigationalIntent;
- (BOOL)_topHitMatchesString:(id)string;
- (BOOL)_urlString:(id)string isProbablyContainedIn:(id)in;
- (BOOL)canPerformCommand:(id)command;
- (BOOL)hasCompletions;
- (BOOL)isPresentingItemDeletionAlert;
- (BOOL)shouldHandleCardSectionEngagement:(id)engagement;
- (BOOL)shouldOverrideBackgroundViewForItem:(id)item;
- (BOOL)shouldRestoreCachedCompletions;
- (BrowserController)browserController;
- (CompletionList)initWithParsecSearchSession:(id)session browserController:(id)controller;
- (CompletionListDelegate)delegate;
- (LoadProgressObserver)loadProgressObserver;
- (NSIndexPath)indexPathOfAsTypedSearchSuggestion;
- (NSString)titleForSearchSuggestionsCompletion;
- (id)_allRecentSearches;
- (id)_bestTabCompletionItemWithTopHits:(id)hits;
- (id)_completionsRequiringFavicon;
- (id)_contextualActionForSwipeToDeleteItem:(id)item atIndexPath:(id)path itemType:(unint64_t)type;
- (id)_indexPathForEquivalentCompletionItem:(id)item;
- (id)_listingForQuery:(id)query;
- (id)_recentSearchesForQuery:(id)query;
- (id)_swipeActionForHistory:(id)history atIndexPath:(id)path;
- (id)_swipeActionForSwitchToTab:(id)tab atIndexPath:(id)path;
- (id)_swipeActionForTopHit:(id)hit atIndexPath:(id)path;
- (id)_swipeToDeleteButtonTitleForHistoryAndBookmarks:(id)bookmarks;
- (id)_swipeToDeleteDestructiveAlertTitleForHistoryAndBookmarks:(id)bookmarks forBookmarks:(id)forBookmarks;
- (id)_swipeToDeleteTitleForHistoryAndBookmarks:(id)bookmarks;
- (id)_titleForFindOnPageHeaderWithMatchCount:(unint64_t)count;
- (id)_urlFromCommand:(id)command;
- (id)cachedIconForParsecResult:(id)result;
- (id)completionsForGroupAtIndex:(unint64_t)index;
- (id)currentSearchEngineHostSuffixes;
- (id)currentWindowUUIDForTabCompletionProvider:(id)provider;
- (id)defaultSectionTitleForGroupAtIndex:(unint64_t)index;
- (id)headerViewForGroupAtIndex:(unint64_t)index;
- (id)headerViewReuseIdentifierForGroupAtIndex:(unint64_t)index;
- (id)identifierForGroupAtIndex:(unint64_t)index;
- (id)rankingFeedbackConfiguration;
- (id)selectedTabDocumentForTabCompletionProvider:(id)provider;
- (id)swipeActionsForCompletionItemAtIndexPath:(id)path;
- (id)tabDocumentForFindOnPageCompletionProvider:(id)provider;
- (id)tabGroupsForTabCompletionProvider:(id)provider;
- (id)titleForFindOnPageCompletion:(id)completion;
- (id)titleForGroupAtIndex:(unint64_t)index;
- (id)topHitForString:(id)string;
- (id)windowHostingCompletionProvider:(id)provider;
- (id)windowUUIDsToTabsForTabCompletionProvider:(id)provider;
- (void)_addResult:(id)result intoGroup:(id)group unlessHiddenBy:(id)by topHit:(id)hit;
- (void)_addSearchProviderSuggestions:(id)suggestions toListing:(id)listing;
- (void)_addURLCompletions:(id)completions toListing:(id)listing isCFSearch:(BOOL)search;
- (void)_addUniversalSearchCompletions:(id)completions toCompletionListing:(id)listing delaySiriSuggestedSite:(BOOL)site;
- (void)_cacheImageFromData:(id)data forURLString:(id)string;
- (void)_cacheResultsIfApplicable:(id)applicable;
- (void)_defaultSearchEngineChanged:(id)changed;
- (void)_deleteTopHitCompletionItem:(id)item atIndexPath:(id)path;
- (void)_postFeedback:(id)feedback;
- (void)_removeIgnoredSiriSuggestedSiteRecordsForHistoryItem:(id)item;
- (void)_removeSearchURLsFromCompletions:(id)completions;
- (void)_requestFavicons;
- (void)_searchForURLTopHits:(id)hits intoTopHits:(id)topHits;
- (void)_updateCompletionListing;
- (void)_updateIconsForSearchUIRowsInGroups:(id)groups topHit:(id)hit;
- (void)_updateOfflineSearchSuggestionAvailability;
- (void)_updateProviders;
- (void)_updateQueryIDForGroups;
- (void)cacheCurrentCompletionsAfterAcceptanceOfCompletionItem:(id)item;
- (void)cacheIconForParsecResult:(id)result;
- (void)clearCachedSearchQuery;
- (void)clearCompletionListings;
- (void)completionProvider:(id)provider didFinishCompletingString:(id)string;
- (void)configureHeaderView:(id)view forGroupAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)didEngageResult:(id)result;
- (void)didResumeSearchWithQuery:(id)query;
- (void)performCommand:(id)command;
- (void)recordIgnoredSiriSuggestedSitesWithURL:(id)l;
- (void)restoreCachedCompletions;
- (void)setLoadProgressObserver:(id)observer;
- (void)setParsecSearchSession:(id)session;
- (void)setQuery:(id)query;
- (void)setShouldIncludeNetworkedSearchSuggestions:(BOOL)suggestions;
- (void)showRecentSearches;
- (void)stopCompleting;
- (void)updateRestorationCompletionItemForCompletionItem:(id)item isCF:(BOOL)f;
- (void)willDismissViewController:(id)controller;
@end

@implementation CompletionList

- (CompletionList)initWithParsecSearchSession:(id)session browserController:(id)controller
{
  sessionCopy = session;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = CompletionList;
  v8 = [(CompletionList *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_browserController, controllerCopy);
    [(CompletionList *)v9 setParsecSearchSession:sessionCopy];
    [(CompletionList *)v9 _updateOfflineSearchSuggestionAvailability];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.mobilesafari.IgnoredSiriSuggestedSites", v10);
    ignoredSiriSuggestedSitesQueue = v9->_ignoredSiriSuggestedSitesQueue;
    v9->_ignoredSiriSuggestedSitesQueue = v11;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__defaultSearchEngineChanged_ name:*MEMORY[0x277D49BE0] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel__defaultSearchEngineChanged_ name:*MEMORY[0x277D4A950] object:0];

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

  feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  v8 = self->_query;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  activeSearchEngine = [WeakRetained activeSearchEngine];
  [feedbackDispatcher didBeginSearchOfType:2 withQuery:v8 endpoint:{objc_msgSend(activeSearchEngine, "parsecSearchEndpointType")}];

  [(CompletionList *)self _addSearchProviderSuggestions:MEMORY[0x277CBEBF8] toListing:self->_currentListing];
  feedbackDispatcher2 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  [feedbackDispatcher2 didReceiveResultsForQuery:self->_query searchType:2];

  objc_storeStrong(&self->_listingOnDisplay, self->_currentListing);
  groups = [(CompletionGroupListing *)self->_listingOnDisplay groups];
  feedbackDispatcher3 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  v13 = [MEMORY[0x277CBEAA8] now];
  [v13 timeIntervalSinceNow];
  v15 = -v14;
  queryID = [(WBSCompletionQuery *)self->_query queryID];
  rankingFeedbackConfiguration = [(CompletionList *)self rankingFeedbackConfiguration];
  [feedbackDispatcher3 didRankSections:groups blendingDuration:MEMORY[0x277CBEC10] feedbackForHiddenAndDuplicateResults:queryID forQueryID:rankingFeedbackConfiguration rankingFeedbackConfiguration:v15];

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
  allValues = [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens allValues];
  v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
        [mEMORY[0x277D28F58] cancelRequestsWithTokens:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = CompletionList;
  [(CompletionList *)&v10 dealloc];
}

- (void)_defaultSearchEngineChanged:(id)changed
{
  v4 = self->_query;
  [(CompletionList *)self stopCompleting];
  [(CompletionList *)self setQuery:v4];
}

- (id)_recentSearchesForQuery:(id)query
{
  v24 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = +[RecentWebSearchesController sharedController];
  queryString = [queryCopy queryString];
  v8 = [v6 recentSearchesMatchingPrefix:queryString];

  array = [MEMORY[0x277CBEB18] array];
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
        v17 = -[SearchSuggestion initWithRecentSearchString:userQuery:forPrivateBrowsing:](v16, "initWithRecentSearchString:userQuery:forPrivateBrowsing:", v15, queryCopy, [WeakRetained isPrivateBrowsingEnabled]);
        [array addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  return array;
}

- (id)_allRecentSearches
{
  v3 = +[RecentWebSearchesController sharedController];
  recentWebSearchEntriesFilteredByTimeIntervalForDisplayInMainRecentSearchesView = [v3 recentWebSearchEntriesFilteredByTimeIntervalForDisplayInMainRecentSearchesView];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__CompletionList__allRecentSearches__block_invoke;
  v7[3] = &unk_2781DC218;
  v7[4] = self;
  v5 = [recentWebSearchEntriesFilteredByTimeIntervalForDisplayInMainRecentSearchesView safari_mapObjectsUsingBlock:v7];

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

+ (id)_completionsByMergingRecentSearches:(id)searches withSuggestions:(id)suggestions andLiteralSearch:(id)search queryID:(int64_t)d topHits:(id)hits forPrivateBrowsing:(BOOL)browsing
{
  browsingCopy = browsing;
  dCopy = d;
  v71 = *MEMORY[0x277D85DE8];
  searchesCopy = searches;
  suggestionsCopy = suggestions;
  searchCopy = search;
  hitsCopy = hits;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v16 = suggestionsCopy;
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
        string = [v21 string];
        [dictionary setObject:v21 forKeyedSubscript:string];
      }

      v18 = [v16 countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v18);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v23 = searchesCopy;
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
        string2 = [v28 string];
        [dictionary setObject:v28 forKeyedSubscript:string2];
      }

      v25 = [v23 countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v25);
  }

  v30 = MEMORY[0x277D49ED8];
  v31 = [v23 safari_mapObjectsUsingBlock:&__block_literal_global_71];
  v32 = [v16 safari_mapObjectsUsingBlock:&__block_literal_global_71];
  v33 = [v30 recentAndSuggestedCompletionStringsByMergingRecentSearches:v31 withSuggestions:v32 literalSearch:searchCopy];

  v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v23, "count") + objc_msgSend(v33, "count") + 1}];
  mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
  v36 = [mEMORY[0x277CDB8A8] defaultSearchEngineForPrivateBrowsing:browsingCopy];

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __122__CompletionList__completionsByMergingRecentSearches_withSuggestions_andLiteralSearch_queryID_topHits_forPrivateBrowsing___block_invoke_2;
  v58[3] = &unk_2781DC260;
  v50 = v36;
  v59 = v50;
  v51 = [hitsCopy safari_mapAndFilterObjectsUsingBlock:v58];
  if (searchCopy)
  {
    if ([MEMORY[0x277D49A08] isStreamlinedCompletionListEnabled])
    {
      safari_stringByTrimmingWhitespace = [searchCopy safari_stringByTrimmingWhitespace];
      lowercaseString = [safari_stringByTrimmingWhitespace lowercaseString];
      if ([v51 containsObject:lowercaseString])
      {
        isStreamlinedCompletionListEnabled = [MEMORY[0x277D49A08] isStreamlinedCompletionListEnabled];

        if (isStreamlinedCompletionListEnabled)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

LABEL_23:
      v40 = [objc_alloc(MEMORY[0x277D49ED8]) initWithQueryString:searchCopy queryID:dCopy];
      v41 = [[SearchSuggestion alloc] initWithUserTypedQuery:v40 forPrivateBrowsing:browsingCopy];
      [v34 addObject:v41];

      goto LABEL_24;
    }

    if (([MEMORY[0x277D49A08] isStreamlinedCompletionListEnabled] & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  v53 = searchCopy;
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

        v47 = [dictionary objectForKeyedSubscript:{*(*(&v54 + 1) + 8 * k), dCopy}];
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

- (id)_titleForFindOnPageHeaderWithMatchCount:(unint64_t)count
{
  v5 = &stru_2827BF158;
  if ((_SFDeviceIsPad() & 1) == 0 && *MEMORY[0x277D292B8] != count)
  {
    v6 = *MEMORY[0x277CDB930];
    if (*MEMORY[0x277CDB930] >= count)
    {
      v9 = MEMORY[0x277CCABB8];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
      [v9 localizedStringFromNumber:v8 numberStyle:1];
    }

    else
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = _WBSLocalizedString();
      [v7 localizedStringWithFormat:v8, v6];
    }
    v10 = ;

    if (count < 2)
    {
      if (count != 1)
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
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  [activeTabDocument isPDFDocument];

  v18 = MEMORY[0x277CCACA8];
  v19 = _WBSLocalizedString();
  v20 = [v18 stringWithFormat:v19, v5];

  return v20;
}

- (void)_removeSearchURLsFromCompletions:(id)completions
{
  completionsCopy = completions;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  activeSearchEngine = [WeakRetained activeSearchEngine];

  if ([completionsCopy count])
  {
    v6 = 0;
    do
    {
      v7 = [completionsCopy objectAtIndex:v6];
      userVisibleURLString = [v7 userVisibleURLString];
      v9 = [MEMORY[0x277CBEBC0] safari_URLWithUserTypedString:userVisibleURLString];
      v10 = [activeSearchEngine urlIsValidSearch:v9];

      if (v10)
      {
        [completionsCopy removeObjectAtIndex:v6];
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < [completionsCopy count]);
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
  activeSearchEngine = [WeakRetained activeSearchEngine];
  shortName = [activeSearchEngine shortName];
  v5 = [shortName isEqualToString:*MEMORY[0x277D49D90]];

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

- (void)_addURLCompletions:(id)completions toListing:(id)listing isCFSearch:(BOOL)search
{
  searchCopy = search;
  v53 = *MEMORY[0x277D85DE8];
  completionsCopy = completions;
  listingCopy = listing;
  rewrittenQuery = self->_rewrittenQuery;
  if (rewrittenQuery)
  {
    queryString = [(WBSCompletionQuery *)rewrittenQuery queryString];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v12 = completionsCopy;
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

          sfSearchResultValue = [*(*(&v45 + 1) + 8 * i) sfSearchResultValue];
          [sfSearchResultValue setCorrectedQuery:queryString];
        }

        v14 = [v12 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v14);
    }
  }

  v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  activeSearchEngine = [WeakRetained activeSearchEngine];
  query = self->_rewrittenQuery;
  if (!query)
  {
    query = self->_query;
  }

  v22 = [MEMORY[0x277D4A030] filterOutUnlikelyMatchesFromTopHits:completionsCopy forQuery:query searchProvider:activeSearchEngine];

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
    parsecSearchSession = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider parsecSearchSession];
    rewrittenQueryStringFromParsec = [parsecSearchSession rewrittenQueryStringFromParsec];

    v28 = [objc_alloc(MEMORY[0x277D49ED8]) initWithQueryString:rewrittenQueryStringFromParsec];
    v29 = self->_rewrittenQuery;
    self->_rewrittenQuery = v28;

    effectiveProfileIdentifier = [WeakRetained effectiveProfileIdentifier];
    [(WBSCompletionQuery *)self->_rewrittenQuery setProfileIdentifierToFilterResults:effectiveProfileIdentifier];

    [(WBSCompletionQuery *)self->_rewrittenQuery setTriggerEvent:18];
    v31 = [self->_URLCompletionProvider completionsForQuery:self->_rewrittenQuery isCFSearch:searchCopy];

    if (!v31)
    {
      [listingCopy setNeedsParsecDatabaseQueryRewrite];
      goto LABEL_28;
    }

    v40 = WeakRetained;
    v32 = [MEMORY[0x277D4A030] filterOutUnlikelyMatchesBeforeTopHitPromotionFromMatches:v31 forQuery:self->_rewrittenQuery searchProvider:activeSearchEngine];

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

          sfSearchResultValue2 = [*(*(&v41 + 1) + 8 * j) sfSearchResultValue];
          [sfSearchResultValue2 setCorrectedQuery:rewrittenQueryStringFromParsec];
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

  [listingCopy setURLCompletionMatches:v22];
  [listingCopy setLocalTopHits:v18];
  [listingCopy setRewrittenQuery:self->_rewrittenQuery];
  rewrittenQueryStringFromParsec = v22;
LABEL_28:
}

- (void)_addUniversalSearchCompletions:(id)completions toCompletionListing:(id)listing delaySiriSuggestedSite:(BOOL)site
{
  siteCopy = site;
  v117 = *MEMORY[0x277D85DE8];
  completionsCopy = completions;
  listingCopy = listing;
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

  if ([completionsCopy count])
  {
    topHits = [listingCopy topHits];
    v92 = listingCopy;
    topHitAddresses = [listingCopy topHitAddresses];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
    firstObject = [topHits firstObject];
    v103 = [(CompletionList *)self _isPegasusMapsCompositeResult:completionsCopy];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v90 = completionsCopy;
    obj = completionsCopy;
    v14 = [obj countByEnumeratingWithState:&v109 objects:v116 count:16];
    v95 = topHits;
    v98 = topHitAddresses;
    v99 = firstObject;
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

        resultType = [v19 resultType];
        v21 = WBSIsEqual();

        if (!v21)
        {
          goto LABEL_44;
        }

        siriSuggestedSitesURLStringsToIgnore = self->_siriSuggestedSitesURLStringsToIgnore;
        v23 = [v19 url];
        absoluteString = [v23 absoluteString];
        LODWORD(siriSuggestedSitesURLStringsToIgnore) = [(NSSet *)siriSuggestedSitesURLStringsToIgnore containsObject:absoluteString];

        if (siriSuggestedSitesURLStringsToIgnore)
        {
          mEMORY[0x277D4A0A0] = [MEMORY[0x277D4A0A0] shared];
          if (![mEMORY[0x277D4A0A0] inExperiment])
          {
            goto LABEL_19;
          }

          firstObject2 = [(NSArray *)self->_searchParametersList firstObject];
          if (![firstObject2 shouldEmitTriggerLoggingForHidingIgnoredSiriSuggestedWebsite])
          {
            goto LABEL_18;
          }

          searchParameters = [MEMORY[0x277D4A030] searchParameters];
          thresholdForHidingIgnoredSiriSuggestedSites = [searchParameters thresholdForHidingIgnoredSiriSuggestedSites];

          if (thresholdForHidingIgnoredSiriSuggestedSites)
          {
            mEMORY[0x277D4A0A0] = objc_alloc_init(MEMORY[0x277D4C360]);
            [mEMORY[0x277D4A0A0] setQueryId:{-[WBSCompletionQuery queryID](self->_query, "queryID")}];
            codePathUUIDForHideIgnoredSiriSuggestedWebsites = [MEMORY[0x277D4A0A8] codePathUUIDForHideIgnoredSiriSuggestedWebsites];
            [mEMORY[0x277D4A0A0] setCodepathId:codePathUUIDForHideIgnoredSiriSuggestedWebsites];

            firstObject2 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
            [firstObject2 didHideRepeatedlyIgnoredSiriSuggestedSiteWithFeedbackEvent:mEMORY[0x277D4A0A0]];
LABEL_18:

LABEL_19:
          }

          searchParameters2 = [MEMORY[0x277D4A030] searchParameters];
          if ([searchParameters2 thresholdForHidingIgnoredSiriSuggestedSites])
          {
            searchParameters3 = [MEMORY[0x277D4A030] searchParameters];
            shouldHideIgnoredSiriSuggestedSites = [searchParameters3 shouldHideIgnoredSiriSuggestedSites];

            if (shouldHideIgnoredSiriSuggestedSites)
            {
              v33 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                v34 = v33;
                v35 = [v19 url];
                absoluteString2 = [v35 absoluteString];
                *buf = 138739971;
                v115 = absoluteString2;
                _os_log_impl(&dword_215819000, v34, OS_LOG_TYPE_INFO, "Hiding repeatedly ignored Siri suggested site: %{sensitive}@", buf, 0xCu);
              }

              v37 = objc_alloc_init(MEMORY[0x277D4C5B8]);
              [v37 setHideReason:1];
              [v19 setSafariAttributes:v37];
              v38 = v19;

              v93 = v38;
              topHits = v95;
LABEL_43:
              topHitAddresses = v98;
              firstObject = v99;
              goto LABEL_59;
            }
          }

          else
          {
          }
        }

        if ([(CompletionList *)self _supportsPrefixNavigationalIntent])
        {
          topHits = v95;
          firstObject = v99;
          if (!siteCopy)
          {
            topHitAddresses = v98;
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
                integerValue = [(NSNumber *)previousPrefixNavigationalIntent integerValue];
                searchParameters4 = [MEMORY[0x277D4A030] searchParameters];
                prefixNavigationalIntentThreshold = [searchParameters4 prefixNavigationalIntentThreshold];
                integerValue2 = [prefixNavigationalIntentThreshold integerValue];

                if (integerValue >= integerValue2)
                {
                  v41 = 1;
                  topHits = v95;
                }

                else
                {
                  v47 = *location;
                  *location = 0;

                  v48 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
                  topHits = v95;
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                  {
                    v49 = v48;
                    v50 = [v19 url];
                    absoluteString3 = [v50 absoluteString];
                    *buf = 138739971;
                    v115 = absoluteString3;
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

            topHitAddresses = v98;
            firstObject = v99;
            serverCompletion = [v19 serverCompletion];
            previousServerCompletion = self->_previousServerCompletion;
            self->_previousServerCompletion = serverCompletion;

            if (!v41)
            {
              goto LABEL_59;
            }

            goto LABEL_45;
          }

          searchSuggestions = [v92 searchSuggestions];
          firstObject3 = [searchSuggestions firstObject];
          v56 = [(CompletionList *)self _navigationalIntentShouldBlockSearchResult:v19 givenFirstSearchSuggestion:firstObject3 completionListing:v92];

          if (v56)
          {
            v57 = *location;
            *location = 0;

            v58 = WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              v59 = v58;
              v60 = [v19 url];
              absoluteString4 = [v60 absoluteString];
              *buf = 138739971;
              v115 = absoluteString4;
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
          topHits = v95;
        }

LABEL_44:
        topHitAddresses = v98;
        firstObject = v99;
LABEL_45:
        [v19 setQueryId:{-[WBSCompletionQuery queryID](self->_query, "queryID")}];
        if (![topHits count] && objc_msgSend(v19, "topHit") && v17 <= 1)
        {
          selfCopy2 = self;
          v67 = v19;
          v68 = array3;
LABEL_58:
          [(CompletionList *)selfCopy2 _addResult:v67 intoGroup:v68 unlessHiddenBy:topHitAddresses topHit:firstObject];
          ++v17;
          goto LABEL_59;
        }

        if ([v19 placement] != 2 && v17 <= 1)
        {
          selfCopy2 = self;
          v67 = v19;
          v68 = array;
          goto LABEL_58;
        }

        if (v16 <= 1)
        {
          [(CompletionList *)self _addResult:v19 intoGroup:array2 unlessHiddenBy:topHitAddresses topHit:firstObject];
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

        listingCopy = v92;
        v73 = v93;
        [v92 setHiddenSiriSuggestedSite:v93];
        if (![topHits count] && objc_msgSend(array3, "count"))
        {
          [v92 setParsecTopHits:array3];
        }

        calculationResultItem = [v92 calculationResultItem];
        v75 = calculationResultItem;
        completionsCopy = v90;
        if (!calculationResultItem || ([calculationResultItem calculationResult], v76 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend(v76, "isCurrencyConversion"), v76, (v77 & 1) == 0))
        {
          [v92 setTopParsecResults:array];
        }

        if ([MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled])
        {
          v104 = v75;
          string = [MEMORY[0x277CCAB68] string];
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v79 = array;
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
                uuidString = [v84 uuidString];
                v86 = [v84 url];
                absoluteString5 = [v86 absoluteString];
                safari_urlHashesOfComponents = [absoluteString5 safari_urlHashesOfComponents];
                [string appendFormat:@" %@ <%@>, ", uuidString, safari_urlHashesOfComponents];
              }

              v81 = [v79 countByEnumeratingWithState:&v105 objects:v113 count:16];
            }

            while (v81);
          }

          v89 = WBS_LOG_CHANNEL_PREFIXParsec();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            [CompletionList _addUniversalSearchCompletions:string toCompletionListing:v89 delaySiriSuggestedSite:?];
          }

          completionsCopy = v90;
          listingCopy = v92;
          v73 = v93;
          topHits = v95;
          topHitAddresses = v98;
          v75 = v104;
        }

        [listingCopy setBottomParsecResults:array2];

        break;
      }
    }
  }
}

- (void)_addSearchProviderSuggestions:(id)suggestions toListing:(id)listing
{
  v42[1] = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  listingCopy = listing;
  queryString = [(WBSCompletionQuery *)self->_query queryString];
  delayedSiriSuggestedSite = self->_delayedSiriSuggestedSite;
  if (delayedSiriSuggestedSite)
  {
    firstObject = [suggestionsCopy firstObject];
    v11 = [(CompletionList *)self _navigationalIntentShouldBlockSearchResult:delayedSiriSuggestedSite givenFirstSearchSuggestion:firstObject completionListing:listingCopy];

    if (!v11)
    {
      v42[0] = self->_delayedSiriSuggestedSite;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
      [(CompletionList *)self _addUniversalSearchCompletions:v17 toCompletionListing:listingCopy delaySiriSuggestedSite:0];
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
        absoluteString = [v15 absoluteString];
        *buf = 138739971;
        v41 = absoluteString;
        _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_INFO, "Hiding Siri Suggested Site due to query having navigational intent: %{sensitive}@", buf, 0xCu);
      }

      v17 = objc_alloc_init(MEMORY[0x277D4C5B8]);
      [v17 setHideReason:2];
      [(SFSearchResult *)self->_delayedSiriSuggestedSite setSafariAttributes:v17];
      [listingCopy setHiddenSiriSuggestedSite:self->_delayedSiriSuggestedSite];
      goto LABEL_8;
    }
  }

LABEL_9:
  firstObject2 = [suggestionsCopy firstObject];
  prefixNavigationalIntent = [firstObject2 prefixNavigationalIntent];
  previousPrefixNavigationalIntent = self->_previousPrefixNavigationalIntent;
  self->_previousPrefixNavigationalIntent = prefixNavigationalIntent;

  if (self->_showingRecentSearches || self->_inputTypeOfStringToComplete != 1 && [queryString length])
  {
    v21 = [(CompletionProvider *)self->_quickWebsiteSearchProvider completionsForQuery:self->_query];
    firstObject3 = [v21 firstObject];
    [listingCopy setQuickWebsiteSearchItem:firstObject3];

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
    queryID = [(WBSCompletionQuery *)self->_query queryID];
    topHits = [listingCopy topHits];
    WeakRetained = objc_loadWeakRetained(&self->_browserController);
    v28 = [v24 _completionsByMergingRecentSearches:v23 withSuggestions:suggestionsCopy andLiteralSearch:queryString queryID:queryID topHits:topHits forPrivateBrowsing:{objc_msgSend(WeakRetained, "isPrivateBrowsingEnabled")}];

    v38 = queryString;
    v39 = suggestionsCopy;
    if ([suggestionsCopy count])
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
          string = [v32 string];
          topHitAddresses = [listingCopy topHitAddresses];
          if ([(CompletionList *)self _urlString:string isProbablyContainedIn:topHitAddresses])
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

    [listingCopy setSuggestedSites:v30];
    if (self->_showingRecentSearches)
    {
      v36 = v23;
    }

    else
    {
      v36 = v28;
    }

    [listingCopy setSearchSuggestions:v36 fromSource:v37];

    queryString = v38;
    suggestionsCopy = v39;
  }
}

- (id)_listingForQuery:(id)query
{
  v46[1] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  searchParameters = [MEMORY[0x277D4A030] searchParameters];
  isCFSearch = [searchParameters isCFSearch];

  v8 = 96;
  if (isCFSearch)
  {
    v8 = 104;
  }

  v9 = *(&self->super.isa + v8);
  v10 = [(CompletionProvider *)self->_quickWebsiteSearchProvider completionsForQuery:queryCopy];
  firstObject = [v10 firstObject];
  [(CompletionGroupListing *)v9 setQuickWebsiteSearchItem:firstObject];

  v12 = [(CompletionProvider *)self->_calculationResultProvider completionsForQuery:queryCopy];
  firstObject2 = [v12 firstObject];
  [(CompletionGroupListing *)v9 setCalculationResultItem:firstObject2];

  if (self->_usingPencilInput)
  {
    v14 = [self->_pencilInputCompletionProvider completionsForQuery:queryCopy];
    firstObject3 = [v14 firstObject];
    [(CompletionGroupListing *)v9 setPencilCompletionItem:firstObject3];
  }

  else
  {
    [(CompletionGroupListing *)v9 setPencilCompletionItem:0];
  }

  if ([WeakRetained canFindOnPage])
  {
    v16 = [(FindOnPageCompletionProvider *)self->_findOnPageProvider completionsForQuery:queryCopy];
    firstObject4 = [v16 firstObject];
    [(CompletionGroupListing *)v9 setFindOnPageCompletionItem:firstObject4];
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
      rewrittenQuery = queryCopy;
    }

    v19 = [self->_URLCompletionProvider completionsForQuery:rewrittenQuery isCFSearch:isCFSearch];
    if ([self->_URLCompletionProvider isFailing]|| v19)
    {
      [(CompletionGroupListing *)v9 markDatabaseResultsReceived];
      if (v19)
      {
        [(CompletionList *)self _addURLCompletions:v19 toListing:v9 isCFSearch:isCFSearch];
      }
    }
  }

  isAwaitingCompletionDatabase = [(CompletionGroupListing *)v9 isAwaitingCompletionDatabase];
  if ([MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled])
  {
    v21 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [(CompletionList *)!isAwaitingCompletionDatabase _listingForQuery:v21];
    }
  }

  if (!(isAwaitingCompletionDatabase | ![(CompletionGroupListing *)v9 isAwaitingParsec]))
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

    v24 = [(UniversalSearchCompletionProvider *)universalSearchProvider completionsForQuery:queryCopy];
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

  topHits = [self->_tabCompletionProvider completionsForQuery:queryCopy];
  if (topHits && [(CompletionGroupListing *)v9 isAwaitingTabCompletion]&& ![(CompletionGroupListing *)v9 isAwaitingParsec])
  {

    if (isAwaitingCompletionDatabase)
    {
      goto LABEL_41;
    }

    [(CompletionGroupListing *)v9 markTabCompletionReceived];
    topHits = [(CompletionGroupListing *)v9 topHits];
    v28 = [(CompletionList *)self _bestTabCompletionItemWithTopHits:topHits];
    [(CompletionGroupListing *)v9 setTabCompletionMatch:v28];
  }

LABEL_41:
  if ([(CompletionGroupListing *)v9 isAwaitingSearchProvider])
  {
    _shouldFetchSearchSuggestions = [(CompletionList *)self _shouldFetchSearchSuggestions];
    if (_shouldFetchSearchSuggestions && self->_shouldIncludeNetworkedSearchSuggestions)
    {
      v30 = [(CompletionProvider *)self->_suggestionProvider completionsForQuery:queryCopy];
    }

    else
    {
      v30 = 0;
    }

    v31 = [v30 count];
    v32 = !_shouldFetchSearchSuggestions;
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
      v33 = [self->_offlineSearchSuggestionsCompletionProvider completionsForQuery:queryCopy];

      v34 = 1;
      v30 = v33;
    }

    if (v30)
    {
      v35 = 0;
    }

    else
    {
      v35 = _shouldFetchSearchSuggestions;
    }

    if (v35 && ![(CompletionProvider *)self->_suggestionProvider isFailing]|| [(CompletionGroupListing *)v9 isAwaitingParsec])
    {
      listingOnDisplay = self->_listingOnDisplay;
      if (v9 != listingOnDisplay)
      {
        searchSuggestions = [(CompletionGroupListing *)listingOnDisplay searchSuggestions];
        if (![searchSuggestions count])
        {
          v38 = -[SearchSuggestion initWithUserTypedQuery:forPrivateBrowsing:]([SearchSuggestion alloc], "initWithUserTypedQuery:forPrivateBrowsing:", queryCopy, [WeakRetained isPrivateBrowsingEnabled]);
          v46[0] = v38;
          v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];

          searchSuggestions = v39;
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

        suggestedSites = [(CompletionGroupListing *)self->_listingOnDisplay suggestedSites];
        [(CompletionGroupListing *)v9 setSuggestedSites:suggestedSites];

        [(CompletionGroupListing *)v9 setSearchSuggestions:searchSuggestions fromSource:v40];
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

- (id)titleForFindOnPageCompletion:(id)completion
{
  numberOfMatches = [completion numberOfMatches];

  return [(CompletionList *)self _titleForFindOnPageHeaderWithMatchCount:numberOfMatches];
}

- (NSString)titleForSearchSuggestionsCompletion
{
  if (self->_showingRecentSearches)
  {
    v2 = _WBSLocalizedString();
    goto LABEL_8;
  }

  mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [mEMORY[0x277CDB8A8] defaultSearchEngineForPrivateBrowsing:{objc_msgSend(WeakRetained, "isPrivateBrowsingEnabled")}];

  v7 = MEMORY[0x277CCACA8];
  v8 = _WBSLocalizedString();
  displayName = [v6 displayName];
  v10 = [v7 stringWithFormat:v8, displayName];

  if (self->_shouldIncludeNetworkedSearchSuggestions || [(CompletionList *)self _canUseOfflineSearchSuggestions])
  {
    displayName3 = v10;
  }

  else
  {
    shortName = [v6 shortName];
    v14 = [shortName isEqualToString:*MEMORY[0x277D4A948]];

    if (!v14)
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = _WBSLocalizedString();
      displayName2 = [v6 displayName];
      v2 = [v15 stringWithFormat:v16, displayName2];

      goto LABEL_7;
    }

    displayName3 = [v6 displayName];
  }

  v2 = displayName3;
LABEL_7:

LABEL_8:

  return v2;
}

- (void)_addResult:(id)result intoGroup:(id)group unlessHiddenBy:(id)by topHit:(id)hit
{
  v57[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  groupCopy = group;
  byCopy = by;
  hitCopy = hit;
  v57[0] = resultCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
  [(CompletionList *)self _cacheResultsIfApplicable:v14];

  sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
  if ([sectionBundleIdentifier isEqualToString:@"com.apple.parsec.maps"])
  {
    v16 = 0;
  }

  else
  {
    v17 = [resultCopy url];

    if (!v17)
    {
      v16 = 0;
      goto LABEL_21;
    }

    v18 = [resultCopy url];
    v56 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];

    searchParameters = [MEMORY[0x277D4A030] searchParameters];
    isDedupeThroughAlternativeURLsEnabled = [searchParameters isDedupeThroughAlternativeURLsEnabled];

    if (isDedupeThroughAlternativeURLsEnabled)
    {
      alternativeURLs = [resultCopy alternativeURLs];
      v23 = [v19 arrayByAddingObjectsFromArray:alternativeURLs];

      v19 = v23;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    sectionBundleIdentifier = v19;
    v24 = [sectionBundleIdentifier countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v24)
    {
      v25 = v24;
      v47 = groupCopy;
      v26 = *v50;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v50 != v26)
          {
            objc_enumerationMutation(sectionBundleIdentifier);
          }

          absoluteString = [*(*(&v49 + 1) + 8 * i) absoluteString];
          v29 = [absoluteString safari_simplifiedUserVisibleURLStringWithSimplifications:3 forDisplayOnly:0 simplifiedStringOffset:0];

          LOBYTE(absoluteString) = [(CompletionList *)self _urlString:v29 isProbablyContainedIn:byCopy];
          if (absoluteString)
          {
            v16 = 1;
            goto LABEL_16;
          }
        }

        v25 = [sectionBundleIdentifier countByEnumeratingWithState:&v49 objects:v55 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }

      v16 = 0;
LABEL_16:
      groupCopy = v47;
    }

    else
    {
      v16 = 0;
    }
  }

LABEL_21:
  v48 = 0;
  v30 = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider shouldHideParsecResult:resultCopy basedOnHideRankGivenTopHit:hitCopy indexOfTopHitInFrequentlyVisitedSites:&v48];
  sfSearchResultValue = [hitCopy sfSearchResultValue];
  identifier = [sfSearchResultValue identifier];
  v33 = [identifier length];

  if (v33)
  {
    if (v16)
    {
LABEL_23:
      v34 = objc_alloc(MEMORY[0x277D4C580]);
      v54 = resultCopy;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
      v36 = [groupCopy count] - 1;
      v37 = v34;
      v38 = sfSearchResultValue;
      v39 = v35;
      v40 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [sfSearchResultValue setIdentifier:uUIDString];

    if (v16)
    {
      goto LABEL_23;
    }
  }

  if (!v30)
  {
    [groupCopy addObject:resultCopy];
    goto LABEL_29;
  }

  v43 = objc_alloc(MEMORY[0x277D4C580]);
  v53 = resultCopy;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
  v36 = [groupCopy count] - 1;
  v37 = v43;
  v38 = sfSearchResultValue;
  v39 = 0;
  v40 = v35;
LABEL_27:
  v44 = [v37 initWithResult:v38 hiddenResults:v39 duplicateResults:v40 localResultPosition:v36];
  rankingFeedbackForHiddenOrDuplicateResults = self->_rankingFeedbackForHiddenOrDuplicateResults;
  identifier2 = [sfSearchResultValue identifier];
  [(NSMutableDictionary *)rankingFeedbackForHiddenOrDuplicateResults setObject:v44 forKeyedSubscript:identifier2];

LABEL_29:
}

- (void)_cacheResultsIfApplicable:(id)applicable
{
  applicableCopy = applicable;
  v4 = +[Application sharedApplication];
  forYouRecentParsecResultsManager = [v4 forYouRecentParsecResultsManager];

  [forYouRecentParsecResultsManager appendResultsIfApplicable:applicableCopy];
}

- (id)_bestTabCompletionItemWithTopHits:(id)hits
{
  hitsCopy = hits;
  tabCompletionProvider = [(CompletionList *)self tabCompletionProvider];
  isFailing = [tabCompletionProvider isFailing];

  if (isFailing)
  {
    v7 = 0;
    goto LABEL_9;
  }

  firstObject = [hitsCopy firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject2 = [hitsCopy firstObject];

    if (!firstObject2)
    {
      v11 = 0;
      goto LABEL_8;
    }

    v10 = MEMORY[0x277CBEBC0];
    firstObject = [firstObject2 userVisibleURLString];
    v11 = [v10 safari_URLWithUserTypedString:firstObject];
  }

  else
  {
    v11 = 0;
    firstObject2 = 0;
  }

LABEL_8:
  tabCompletionProvider2 = [(CompletionList *)self tabCompletionProvider];
  query = [(CompletionList *)self query];
  v7 = [tabCompletionProvider2 bestTabCompletionMatchForQuery:query withTopHitURL:v11];

LABEL_9:

  return v7;
}

- (void)_searchForURLTopHits:(id)hits intoTopHits:(id)topHits
{
  v18 = *MEMORY[0x277D85DE8];
  hitsCopy = hits;
  topHitsCopy = topHits;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = hitsCopy;
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

      [topHitsCopy addObject:v12];
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

- (BOOL)_urlString:(id)string isProbablyContainedIn:(id)in
{
  stringCopy = string;
  inCopy = in;
  if ([stringCopy length])
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
    v11 = inCopy;
    v12 = &v13;
    [v7 safari_enumeratePossibleURLsForUserTypedString:stringCopy withBlock:v10];
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

- (void)_updateIconsForSearchUIRowsInGroups:(id)groups topHit:(id)hit
{
  v33 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  hitCopy = hit;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = [groupsCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v20 = *v28;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(groupsCopy);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        completions = [v8 completions];
        if ([completions count] < 2 || (objc_msgSend(completions, "lastObject"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
        {
          v22 = completions;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          results = [v8 results];
          v13 = [results countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                  objc_enumerationMutation(results);
                }

                v17 = *(*(&v23 + 1) + 8 * j);
                sfSearchResultValue = [hitCopy sfSearchResultValue];
                if (v17 == sfSearchResultValue)
                {
                  v19 = 7;
                }

                else
                {
                  v19 = 5;
                }

                [v17 safari_setCompletionIconForCompactRow:v19];
              }

              v14 = [results countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v14);
          }

          completions = v22;
        }
      }

      v21 = [groupsCopy countByEnumeratingWithState:&v27 objects:v32 count:16];
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
    queryString = [(WBSCompletionQuery *)self->_query queryString];
    if ([queryString length])
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    rankingFeedbackForHiddenOrDuplicateResults = self->_rankingFeedbackForHiddenOrDuplicateResults;
    self->_rankingFeedbackForHiddenOrDuplicateResults = dictionary;

    v9 = [MEMORY[0x277CBEAA8] now];
    firstObject = [(NSArray *)self->_searchParametersList firstObject];
    isCFSearch = [firstObject isCFSearch];

    if (isCFSearch)
    {
      firstObject2 = [(NSArray *)self->_searchParametersList firstObject];
      [MEMORY[0x277D4A030] setSearchParameters:firstObject2];

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
    lastObject = [(NSArray *)self->_searchParametersList lastObject];
    [MEMORY[0x277D4A030] setSearchParameters:lastObject];

    v16 = [(CompletionList *)self _listingForQuery:self->_query];
    topHit = [v16 topHit];
    isAwaitingCompletionDatabase = [v16 isAwaitingCompletionDatabase];
    if (([v16 isAwaitingParsec] & 1) == 0 && (isAwaitingCompletionDatabase & 1) == 0)
    {
      v19 = v13;
      queryString2 = [(WBSCompletionQuery *)self->_query queryString];
      v21 = [queryString2 copy];
      stringMatchedByTopHit = self->_stringMatchedByTopHit;
      self->_stringMatchedByTopHit = v21;

      queryString3 = [(WBSCompletionQuery *)self->_rewrittenQuery queryString];
      v24 = queryString3;
      if (queryString3)
      {
        queryString4 = queryString3;
      }

      else
      {
        queryString4 = [(WBSCompletionQuery *)self->_query queryString];
      }

      v26 = queryString4;

      v27 = [(NSString *)self->_stringMatchedByTopHit length];
      if (v27)
      {
        v27 = [topHit reflectedStringForUserTypedString:v26];
      }

      matchingStringInTopHit = self->_matchingStringInTopHit;
      self->_matchingStringInTopHit = v27;

      if (!self->_matchingStringInTopHit && [(CompletionItem *)self->_topHit isEquivalentTo:topHit])
      {
        objc_storeStrong(&self->_matchingStringInTopHit, v26);
      }

      if ([(NSString *)self->_matchingStringInTopHit length])
      {
        v29 = topHit;
      }

      else
      {
        v29 = 0;
      }

      objc_storeStrong(&self->_topHit, v29);
      v30 = *MEMORY[0x277D4A2B0];
      sfSearchResultValue = [(CompletionItem *)self->_topHit sfSearchResultValue];
      [sfSearchResultValue setResultBundleId:v30];

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
      groups = [(CompletionGroupListing *)self->_listingOnDisplay groups];
      v33 = [(NSMutableDictionary *)self->_rankingFeedbackForHiddenOrDuplicateResults copy];
      feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
      v72 = v9;
      [v9 timeIntervalSinceNow];
      v36 = -v35;
      queryID = [(WBSCompletionQuery *)self->_query queryID];
      rankingFeedbackConfiguration = [(CompletionList *)self rankingFeedbackConfiguration];
      [feedbackDispatcher didRankSections:groups blendingDuration:v33 feedbackForHiddenAndDuplicateResults:queryID forQueryID:rankingFeedbackConfiguration rankingFeedbackConfiguration:v36];

      if (isCFSearch)
      {
        if (v13)
        {
          v39 = groups;
          v40 = 0;
        }

        else
        {
          v69 = v33;
          groups2 = [(CompletionGroupListing *)self->_cfListingOnDisplay groups];
          groups3 = [(CompletionGroupListing *)self->_listingOnDisplay groups];
          v43 = groups2;
          v44 = groups3;
          v45 = [v43 count];
          v46 = [v44 count];
          v47 = v45 == v46;
          v40 = v45 != v46;
          if (v47)
          {
            if ([v43 count])
            {
              v48 = 0;
              v63 = groups;
              v64 = 0;
              v68 = v43;
              v65 = v44;
              while (1)
              {
                v70 = v48;
                v66 = [v43 objectAtIndexedSubscript:{v48, v63, v64}];
                title = [v66 title];
                v50 = [v44 objectAtIndexedSubscript:v48];
                title2 = [v50 title];
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
                completions = [v53 completions];

                v55 = [v44 objectAtIndexedSubscript:v70];
                completions2 = [v55 completions];

                v57 = [completions count];
                if (v57 != [completions2 count])
                {

                  v40 = 1;
                  goto LABEL_46;
                }

                if ([completions count])
                {
                  break;
                }

LABEL_43:

                v48 = v70 + 1;
                v43 = v68;
                groups = v63;
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
                v59 = [completions objectAtIndexedSubscript:v58];
                v60 = [completions2 objectAtIndexedSubscript:v58];
                v61 = [v59 isEquivalentTo:v60];

                if ((v61 & 1) == 0)
                {
                  break;
                }

                if (++v58 >= [completions count])
                {
                  goto LABEL_43;
                }
              }

              v40 = 1;
              groups = v63;
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
          v39 = groups;

          v33 = v69;
        }

        feedbackDispatcher2 = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
        [feedbackDispatcher2 triggeredExperimentWithTreatmentId:self->_treatmentId withQueryID:-[WBSCompletionQuery queryID](self->_query cfDiffered:"queryID") cfUsed:v40 cfError:{1, v13}];

        groups = v39;
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

  prefixNavigationalIntent = [(CompletionGroupListing *)self->_listingOnDisplay prefixNavigationalIntent];
  [(WBSParsecRankingFeedbackConfiguration *)self->_rankingFeedbackConfiguration setPrefixNavigationalIntent:prefixNavigationalIntent];

  [(WBSParsecRankingFeedbackConfiguration *)self->_rankingFeedbackConfiguration setServerCompletionDidMatchFirstSearchSuggestionFrom3rdParty:[(CompletionGroupListing *)self->_listingOnDisplay serverCompletionDidMatchFirstSearchSuggestionFrom3rdParty]];
  hiddenSiriSuggestedSite = [(CompletionGroupListing *)self->_listingOnDisplay hiddenSiriSuggestedSite];
  [(WBSParsecRankingFeedbackConfiguration *)self->_rankingFeedbackConfiguration setHiddenSiriSuggestedSite:hiddenSiriSuggestedSite];

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
  searchRenderTimeout = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider searchRenderTimeout];
  [searchRenderTimeout doubleValue];
  if (v6 / 1000.0 >= v4)
  {
    v11 = 0;
  }

  else
  {
    [(NSDate *)self->_minRenderTimeoutStartTime timeIntervalSinceNow];
    v8 = -v7;
    minRenderTimeout = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider minRenderTimeout];
    [minRenderTimeout doubleValue];
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
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  v6 = +[Application sharedApplication];
  isRunningPPT = [v6 isRunningPPT];

  if ((isRunningPPT & 1) == 0)
  {
    searchParameters = [MEMORY[0x277D4A0A8] searchParameters];
    searchParametersList = self->_searchParametersList;
    self->_searchParametersList = searchParameters;

    mEMORY[0x277D4A0A0] = [MEMORY[0x277D4A0A0] shared];
    if (mEMORY[0x277D4A0A0])
    {
      v11 = mEMORY[0x277D4A0A0];
      mEMORY[0x277D4A0A0]2 = [MEMORY[0x277D4A0A0] shared];
      identifiers = [mEMORY[0x277D4A0A0]2 identifiers];

      if (identifiers)
      {
        treatmentId = [identifiers treatmentId];
        treatmentId = self->_treatmentId;
        self->_treatmentId = treatmentId;
      }
    }
  }

  URLCompletionProvider = self->_URLCompletionProvider;
  if (!URLCompletionProvider)
  {
    profileCloudTabStore = [tabController profileCloudTabStore];
    v18 = [URLCompletionProvider alloc];
    completionBookmarkProvider = [objc_opt_class() completionBookmarkProvider];
    activeProfileIdentifier = [tabController activeProfileIdentifier];
    v21 = [(URLCompletionProvider *)v18 initWithBookmarkProvider:completionBookmarkProvider cloudTabStore:profileCloudTabStore profileIdentifier:activeProfileIdentifier maxResults:16 searchableCollectionsMask:7];
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
    historyController = [v23 historyController];
    activeProfileIdentifier2 = [tabController activeProfileIdentifier];
    v26 = activeProfileIdentifier2;
    if (activeProfileIdentifier2)
    {
      v27 = activeProfileIdentifier2;
    }

    else
    {
      v27 = *MEMORY[0x277D49BD8];
    }

    v28 = [historyController frequentlyVisitedSitesControllerForProfileIdentifier:v27 loadIfNeeded:1];

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

  firstObject = [(NSArray *)self->_searchParametersList firstObject];
  v42 = -[URLCompletionProvider completionsForQuery:isCFSearch:](v39, "completionsForQuery:isCFSearch:", rewrittenQuery, [firstObject isCFSearch]);

  v43 = [(CompletionProvider *)self->_suggestionProvider completionsForQuery:self->_query];
  v44 = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider completionsForQuery:self->_query];
  searchRenderTimeoutStartTime = self->_searchRenderTimeoutStartTime;
  self->_searchRenderTimeoutStartTime = 0;

  otherRenderTimeoutStartTime = self->_otherRenderTimeoutStartTime;
  self->_otherRenderTimeoutStartTime = 0;

  date = [MEMORY[0x277CBEAA8] date];
  minRenderTimeoutStartTime = self->_minRenderTimeoutStartTime;
  self->_minRenderTimeoutStartTime = date;

  if (self->_findOnPageProvider || ([activeTabDocument isBlank] & 1) != 0)
  {
    if ([activeTabDocument isBlank])
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

- (void)setQuery:(id)query
{
  v50 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v6 = queryCopy;
  if (self->_query != queryCopy)
  {
    showingRecentSearches = self->_showingRecentSearches;
    queryString = [(WBSCompletionQuery *)queryCopy queryString];
    safari_whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] safari_whitespaceAndNewlineCharacterSet];
    v10 = [queryString stringByTrimmingCharactersInSet:safari_whitespaceAndNewlineCharacterSet];
    v11 = [v10 length];

    self->_showingRecentSearches = v11 == 0;
    if (showingRecentSearches && v11)
    {
      [(CompletionList *)self clearCompletionListings];
    }

    objc_storeStrong(&self->_query, query);
    queryString2 = [(WBSCompletionQuery *)v6 queryString];
    self->_inputTypeOfStringToComplete = WBSUnifiedFieldInputTypeForString();

    queryString3 = [(WBSCompletionQuery *)self->_query queryString];
    if ([queryString3 length])
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
    mEMORY[0x277D49F90] = [MEMORY[0x277D49F90] sharedController];
    tabController = [WeakRetained tabController];
    activeProfileIdentifier = [tabController activeProfileIdentifier];
    queryString4 = [(WBSCompletionQuery *)v6 queryString];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __27__CompletionList_setQuery___block_invoke;
    v41[3] = &unk_2781DC2B0;
    objc_copyWeak(&v42, &location);
    [mEMORY[0x277D49F90] getIgnoredSiriSuggestedSitesURLStringsInProfile:activeProfileIdentifier withQuery:queryString4 completionHandler:v41];

    listingOnDisplay = self->_listingOnDisplay;
    v24 = (!listingOnDisplay || [(CompletionGroupListing *)listingOnDisplay isEmpty]) && !self->_executingVoiceSearch;
    if ([WeakRetained isPrivateBrowsingEnabled])
    {
      v24 |= 2uLL;
    }

    searchParameters = [MEMORY[0x277D4A0A8] searchParameters];
    firstObject = [searchParameters firstObject];
    isCFSearch = [firstObject isCFSearch];

    if (isCFSearch)
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
    minRenderTimeout = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider minRenderTimeout];
    integerValue = [minRenderTimeout integerValue];

    if (integerValue < *MEMORY[0x277D4A2E0] || integerValue > *MEMORY[0x277D4A2E8])
    {
      v35 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
      v34 = *MEMORY[0x277D4A2A8];
      if (v36)
      {
        universalSearchProvider = self->_universalSearchProvider;
        *buf = 134218498;
        v45 = integerValue;
        v46 = 2048;
        v47 = v34;
        v48 = 2112;
        v49 = universalSearchProvider;
        _os_log_error_impl(&dword_215819000, v35, OS_LOG_TYPE_ERROR, "Parsec returned an invalid minRenderTimeout value of %lu ms. Using default value of %lu ms. _universalSearchProvider is %@", buf, 0x20u);
      }
    }

    else
    {
      v34 = integerValue;
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

- (void)setParsecSearchSession:(id)session
{
  sessionCopy = session;
  if (self->_parsecSearchSession != sessionCopy)
  {
    objc_storeStrong(&self->_parsecSearchSession, session);
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

- (void)setLoadProgressObserver:(id)observer
{
  obj = observer;
  WeakRetained = objc_loadWeakRetained(&self->_loadProgressObserver);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_loadProgressObserver, obj);
    [(SearchSuggestionProvider *)self->_suggestionProvider setLoadProgressObserver:obj];
  }
}

- (BOOL)_topHitMatchesString:(id)string
{
  stringCopy = string;
  stringMatchedByTopHit = self->_stringMatchedByTopHit;
  if (!stringMatchedByTopHit)
  {
    goto LABEL_8;
  }

  if ([(NSString *)stringMatchedByTopHit isEqualToString:stringCopy])
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

  topHit = [(CompletionGroupListing *)self->_currentListing topHit];
  if ([(CompletionItem *)self->_topHit isEquivalentTo:topHit])
  {
    queryString = [(WBSCompletionQuery *)self->_rewrittenQuery queryString];
    if (queryString)
    {
      v6 = 1;
    }

    else
    {
      queryString2 = [(WBSCompletionQuery *)self->_query queryString];
      v6 = queryString2 != 0;
    }
  }

  else
  {
    v6 = [(NSString *)self->_matchingStringInTopHit safari_hasCaseInsensitivePrefix:stringCopy];
  }

LABEL_13:
  return v6;
}

- (id)topHitForString:(id)string
{
  if ([(CompletionList *)self _topHitMatchesString:string])
  {
    v4 = self->_topHit;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)completionProvider:(id)provider didFinishCompletingString:(id)string
{
  providerCopy = provider;
  stringCopy = string;
  queryString = [(WBSCompletionQuery *)self->_query queryString];
  if ([stringCopy isEqualToString:queryString])
  {
  }

  else
  {
    queryString2 = [(WBSCompletionQuery *)self->_rewrittenQuery queryString];
    v10 = [stringCopy isEqualToString:queryString2];

    if (!v10)
    {
      goto LABEL_29;
    }
  }

  if (!self->_queryRestorationCompletionItem)
  {
    v11 = providerCopy;
    if (self->_suggestionProvider == providerCopy && !self->_firstRemoteCompletionProviderToRespondToQuery)
    {
      searchRenderTimeout = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider searchRenderTimeout];
      integerValue = [searchRenderTimeout integerValue];

      v11 = providerCopy;
      if (integerValue)
      {
        objc_storeStrong(&self->_firstRemoteCompletionProviderToRespondToQuery, provider);
        date = [MEMORY[0x277CBEAA8] date];
        searchRenderTimeoutStartTime = self->_searchRenderTimeoutStartTime;
        self->_searchRenderTimeoutStartTime = date;

        v11 = providerCopy;
      }
    }

    universalSearchProvider = self->_universalSearchProvider;
    if (universalSearchProvider == v11)
    {
      parsecSearchSession = [(UniversalSearchCompletionProvider *)universalSearchProvider parsecSearchSession];
      rewrittenQueryStringFromParsec = [parsecSearchSession rewrittenQueryStringFromParsec];

      if (rewrittenQueryStringFromParsec)
      {
        self->_tryParsecRewritesIfNoTopHit = 1;
      }

      if (!self->_firstRemoteCompletionProviderToRespondToQuery)
      {
        otherRenderTimeout = [(UniversalSearchCompletionProvider *)self->_universalSearchProvider otherRenderTimeout];
        integerValue2 = [otherRenderTimeout integerValue];

        if (integerValue2 >= 1)
        {
          objc_storeStrong(&self->_firstRemoteCompletionProviderToRespondToQuery, provider);
          date2 = [MEMORY[0x277CBEAA8] date];
          otherRenderTimeoutStartTime = self->_otherRenderTimeoutStartTime;
          self->_otherRenderTimeoutStartTime = date2;
          goto LABEL_18;
        }
      }

      if (self->_searchRenderTimeoutStartTime && [(CompletionList *)self _searchRenderTimeoutHasElapsed])
      {
        otherRenderTimeoutStartTime = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
        v20 = objc_alloc(MEMORY[0x277D4C590]);
        v21 = [(CompletionProvider *)providerCopy completionsForQuery:self->_query];
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

    if (self->_suggestionProvider == providerCopy)
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
      v27 = self->_offlineSearchSuggestionsCompletionProvider == providerCopy;
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

- (id)windowHostingCompletionProvider:(id)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  window = [WeakRetained window];

  return window;
}

- (id)currentSearchEngineHostSuffixes
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  activeSearchEngine = [WeakRetained activeSearchEngine];
  hostSuffixes = [activeSearchEngine hostSuffixes];

  return hostSuffixes;
}

- (id)defaultSectionTitleForGroupAtIndex:(unint64_t)index
{
  v3 = [(CompletionList *)self _groupOrNilAtIndex:index];
  defaultHeaderTitle = [v3 defaultHeaderTitle];

  return defaultHeaderTitle;
}

- (id)titleForGroupAtIndex:(unint64_t)index
{
  v3 = [(CompletionList *)self _groupOrNilAtIndex:index];
  title = [v3 title];

  return title;
}

- (id)identifierForGroupAtIndex:(unint64_t)index
{
  v3 = [(CompletionList *)self _groupOrNilAtIndex:index];
  groupIdentifier = [v3 groupIdentifier];

  return groupIdentifier;
}

- (id)completionsForGroupAtIndex:(unint64_t)index
{
  v3 = [(CompletionList *)self _groupOrNilAtIndex:index];
  completions = [v3 completions];

  return completions;
}

- (id)headerViewReuseIdentifierForGroupAtIndex:(unint64_t)index
{
  v3 = [(CompletionList *)self _groupOrNilAtIndex:index];
  headerViewReuseIdentifier = [v3 headerViewReuseIdentifier];

  return headerViewReuseIdentifier;
}

- (id)headerViewForGroupAtIndex:(unint64_t)index
{
  v3 = [(CompletionList *)self _groupOrNilAtIndex:index];
  headerView = [v3 headerView];

  return headerView;
}

- (void)configureHeaderView:(id)view forGroupAtIndex:(unint64_t)index
{
  viewCopy = view;
  v7 = [(CompletionList *)self _groupOrNilAtIndex:index];
  [v7 configureHeaderView:viewCopy forCompletionList:self];
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

- (void)setShouldIncludeNetworkedSearchSuggestions:(BOOL)suggestions
{
  if (self->_shouldIncludeNetworkedSearchSuggestions != suggestions)
  {
    self->_shouldIncludeNetworkedSearchSuggestions = suggestions;
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

- (void)updateRestorationCompletionItemForCompletionItem:(id)item isCF:(BOOL)f
{
  if (f)
  {
    v5 = 24;
  }

  else
  {
    v5 = 32;
  }

  v6 = *(&self->super.isa + v5);
  listingOnDisplay = self->_listingOnDisplay;
  listingToRestore = [(SearchQueryRestorationCompletionItem *)v6 listingToRestore];

  if (listingOnDisplay != listingToRestore)
  {
    v9 = [[SearchQueryRestorationCompletionItem alloc] initWithQuery:self->_query];

    [(SearchQueryRestorationCompletionItem *)v9 setListingToRestore:self->_listingOnDisplay];
    v6 = v9;
  }

  v10 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = v6;
}

- (void)cacheCurrentCompletionsAfterAcceptanceOfCompletionItem:(id)item
{
  itemCopy = item;
  [CompletionList updateRestorationCompletionItemForCompletionItem:"updateRestorationCompletionItemForCompletionItem:isCF:" isCF:?];
  firstObject = [(NSArray *)self->_searchParametersList firstObject];
  isCFSearch = [firstObject isCFSearch];

  if (isCFSearch)
  {
    [(CompletionList *)self updateRestorationCompletionItemForCompletionItem:itemCopy isCF:1];
  }
}

- (BOOL)shouldRestoreCachedCompletions
{
  queryToRestore = [(SearchQueryRestorationCompletionItem *)self->_queryRestorationCompletionItem queryToRestore];
  queryString = [queryToRestore queryString];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];

  if ([activeTabDocument isSearchPage])
  {
    currentSearchQuery = [activeTabDocument currentSearchQuery];
    v9 = currentSearchQuery;
    if (currentSearchQuery)
    {
      v10 = [currentSearchQuery isEqualToString:queryString];
    }

    else
    {
      currentSearchQueryAllowingQueryThatLooksLikeURL = [activeTabDocument currentSearchQueryAllowingQueryThatLooksLikeURL];
      v10 = [currentSearchQueryAllowingQueryThatLooksLikeURL isEqualToString:queryString];
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
  listingToRestore = [(SearchQueryRestorationCompletionItem *)self->_queryRestorationCompletionItem listingToRestore];
  listingOnDisplay = self->_listingOnDisplay;
  self->_listingOnDisplay = listingToRestore;

  firstObject = [(NSArray *)self->_searchParametersList firstObject];
  isCFSearch = [firstObject isCFSearch];

  if (isCFSearch)
  {
    listingToRestore2 = [(SearchQueryRestorationCompletionItem *)self->_cfQueryRestorationCompletionItem listingToRestore];
    cfListingOnDisplay = self->_cfListingOnDisplay;
    self->_cfListingOnDisplay = listingToRestore2;
  }

  v9 = objc_alloc(MEMORY[0x277D49ED8]);
  queryToRestore = [(SearchQueryRestorationCompletionItem *)self->_queryRestorationCompletionItem queryToRestore];
  queryString = [queryToRestore queryString];
  v12 = [v9 initWithQueryString:queryString triggerEvent:26];
  query = self->_query;
  self->_query = v12;

  [(CompletionList *)self _updateQueryIDForGroups];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained completionListDidRestoreCachedCompletions:self];
}

- (void)_updateQueryIDForGroups
{
  v24 = *MEMORY[0x277D85DE8];
  groups = [(CompletionGroupListing *)self->_listingOnDisplay groups];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [groups countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(groups);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        completions = [v8 completions];
        v10 = [completions countByEnumeratingWithState:&v14 objects:v22 count:16];
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
                objc_enumerationMutation(completions);
              }

              [*(*(&v14 + 1) + 8 * v13++) setParsecQueryID:{-[WBSCompletionQuery queryID](self->_query, "queryID")}];
            }

            while (v11 != v13);
            v11 = [completions countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [groups countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }
}

- (void)didResumeSearchWithQuery:(id)query
{
  listingOnDisplay = self->_listingOnDisplay;
  queryCopy = query;
  groups = [(CompletionGroupListing *)listingOnDisplay groups];
  v6 = objc_alloc(MEMORY[0x277D49ED8]);
  queryString = [queryCopy queryString];

  v8 = [v6 initWithQueryString:queryString];
  query = self->_query;
  self->_query = v8;

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  effectiveProfileIdentifier = [WeakRetained effectiveProfileIdentifier];
  [(WBSCompletionQuery *)self->_query setProfileIdentifierToFilterResults:effectiveProfileIdentifier];

  [(CompletionList *)self _updateQueryIDForGroups];
  feedbackDispatcher = [(WBSParsecDSession *)self->_parsecSearchSession feedbackDispatcher];
  queryID = [(WBSCompletionQuery *)self->_query queryID];
  rankingFeedbackConfiguration = [(CompletionList *)self rankingFeedbackConfiguration];
  [feedbackDispatcher didRankSections:groups blendingDuration:0 feedbackForHiddenAndDuplicateResults:queryID forQueryID:rankingFeedbackConfiguration rankingFeedbackConfiguration:0.0];
}

- (void)clearCachedSearchQuery
{
  queryRestorationCompletionItem = self->_queryRestorationCompletionItem;
  self->_queryRestorationCompletionItem = 0;
}

- (id)swipeActionsForCompletionItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v6 = [pathCopy row];
  v7 = -[CompletionGroupListing groupAtIndex:](self->_listingOnDisplay, "groupAtIndex:", [pathCopy section]);
  completions = [v7 completions];
  v9 = [completions objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  parsecTopHits = [(CompletionGroupListing *)self->_listingOnDisplay parsecTopHits];
  if ([parsecTopHits count] || section != -[CompletionGroupListing indexOfTopHitsGroup](self->_listingOnDisplay, "indexOfTopHitsGroup"))
  {
  }

  else
  {
    localTopHits = [(CompletionGroupListing *)self->_listingOnDisplay localTopHits];
    v12 = [localTopHits count];

    if (v6 < v12)
    {
      localTopHits2 = [(CompletionGroupListing *)self->_listingOnDisplay localTopHits];
      v14 = [localTopHits2 objectAtIndexedSubscript:v6];
      v15 = [(CompletionList *)self _swipeActionForTopHit:v14 atIndexPath:pathCopy];

      goto LABEL_11;
    }
  }

  if (section == [(CompletionGroupListing *)self->_listingOnDisplay indexOfBookmarksAndHistoryGroup])
  {
    groups = [(CompletionGroupListing *)self->_listingOnDisplay groups];
    v17 = [groups objectAtIndexedSubscript:{-[CompletionGroupListing indexOfBookmarksAndHistoryGroup](self->_listingOnDisplay, "indexOfBookmarksAndHistoryGroup")}];

    completions2 = [v17 completions];
    v19 = [completions2 objectAtIndexedSubscript:v6];

    v15 = [(CompletionList *)self _swipeActionForHistory:v19 atIndexPath:pathCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [(CompletionList *)self _swipeActionForSwitchToTab:v9 atIndexPath:pathCopy];
    }

    else
    {
      v15 = MEMORY[0x277CBEBF8];
    }
  }

LABEL_11:

  return v15;
}

- (id)_swipeActionForTopHit:(id)hit atIndexPath:(id)path
{
  hitCopy = hit;
  pathCopy = path;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [hitCopy isTopHit])
  {
    v8 = [(CompletionList *)self _contextualActionForSwipeToDeleteItem:hitCopy atIndexPath:pathCopy itemType:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (id)_swipeActionForHistory:(id)history atIndexPath:(id)path
{
  historyCopy = history;
  pathCopy = path;
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

    v9 = [(CompletionList *)self _contextualActionForSwipeToDeleteItem:historyCopy atIndexPath:pathCopy itemType:v8];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (id)_swipeActionForSwitchToTab:(id)tab atIndexPath:(id)path
{
  tabCopy = tab;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(CompletionList *)self _contextualActionForSwipeToDeleteItem:tabCopy atIndexPath:pathCopy itemType:3];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (BOOL)isPresentingItemDeletionAlert
{
  parentViewController = [(UIAlertController *)self->_destructiveDeletionAlert parentViewController];
  if (parentViewController)
  {
    destructiveDeletionAlertIsPending = 1;
  }

  else
  {
    destructiveDeletionAlertIsPending = self->_destructiveDeletionAlertIsPending;
  }

  return destructiveDeletionAlertIsPending;
}

- (id)_swipeToDeleteTitleForHistoryAndBookmarks:(id)bookmarks
{
  bookmarksCopy = bookmarks;
  if (![bookmarksCopy containsReadingListItem] && !objc_msgSend(bookmarksCopy, "containsBookmark"))
  {
    [bookmarksCopy onlyContainsCloudTab];
  }

  v4 = _WBSLocalizedString();

  return v4;
}

- (id)_swipeToDeleteButtonTitleForHistoryAndBookmarks:(id)bookmarks
{
  [bookmarks onlyContainsCloudTab];
  v3 = _WBSLocalizedString();

  return v3;
}

- (id)_swipeToDeleteDestructiveAlertTitleForHistoryAndBookmarks:(id)bookmarks forBookmarks:(id)forBookmarks
{
  v21 = *MEMORY[0x277D85DE8];
  forBookmarksCopy = forBookmarks;
  if ([bookmarks onlyContainsCloudTab])
  {
    goto LABEL_2;
  }

  v6 = [forBookmarksCopy count];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = forBookmarksCopy;
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

- (id)_contextualActionForSwipeToDeleteItem:(id)item atIndexPath:(id)path itemType:(unint64_t)type
{
  v48[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  history = [activeTabDocument history];

  originalURLString = [itemCopy originalURLString];
  v33 = [history itemForURLString:originalURLString];

  v13 = _WBSLocalizedString();
  safariBookmarkCollection = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
  originalURLString2 = [itemCopy originalURLString];
  v32 = [safariBookmarkCollection bookmarksMatchingString:originalURLString2];

  if (type - 1 >= 2)
  {
    if (type != 3)
    {
      v21 = 0;
      LOBYTE(onlyContainsCloudTab) = 0;
      v22 = 0;
      v30 = 0;
      goto LABEL_10;
    }

    v30 = _WBSLocalizedString();
    v21 = _WBSLocalizedString();
    v19 = _WBSLocalizedString();
    LOBYTE(onlyContainsCloudTab) = 0;
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
    v36 = itemCopy;
    v37 = pathCopy;
    v44[1] = type;
    v38 = history;
    v39 = v33;
    v24 = v21;
    v40 = v24;
    v25 = v30;
    v41 = v25;
    v46 = onlyContainsCloudTab;
    v42 = safariBookmarkCollection;
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
    v16 = itemCopy;
    if (([v16 isSynthesized] & 1) == 0)
    {
      containsReadingListItem = [v16 containsReadingListItem];
      containsBookmark = [v16 containsBookmark];
      onlyContainsCloudTab = [v16 onlyContainsCloudTab];
      v19 = [(CompletionList *)self _swipeToDeleteTitleForHistoryAndBookmarks:v16];

      v30 = [(CompletionList *)self _swipeToDeleteButtonTitleForHistoryAndBookmarks:v16];
      v20 = [(CompletionList *)self _swipeToDeleteDestructiveAlertTitleForHistoryAndBookmarks:v16 forBookmarks:v32];
      v21 = v20;
      if ((v33 != 0) | (containsReadingListItem | containsBookmark | onlyContainsCloudTab) & 1)
      {
        v22 = containsReadingListItem | containsBookmark | onlyContainsCloudTab;
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

- (BOOL)_deleteCompletionListItemAndCheckIfLastInSection:(id)section atIndexPath:(id)path forItemType:(unint64_t)type
{
  sectionCopy = section;
  pathCopy = path;
  v10 = pathCopy;
  switch(type)
  {
    case 3uLL:
      v14 = -[CompletionGroupListing deleteSwitchToTabItemAndReturnWhetherSectionIsEmpty:inSection:atIndex:](self->_listingOnDisplay, "deleteSwitchToTabItemAndReturnWhetherSectionIsEmpty:inSection:atIndex:", sectionCopy, [pathCopy section], objc_msgSend(pathCopy, "row"));
      goto LABEL_8;
    case 2uLL:
      v14 = -[CompletionGroupListing deleteHistoryItemAndCheckIfLastInSection:atIndex:](self->_listingOnDisplay, "deleteHistoryItemAndCheckIfLastInSection:atIndex:", sectionCopy, [pathCopy row]);
LABEL_8:
      v12 = v14;
      break;
    case 1uLL:
      [(CompletionList *)self _deleteTopHitCompletionItem:sectionCopy atIndexPath:pathCopy];
      localTopHits = [(CompletionGroupListing *)self->_listingOnDisplay localTopHits];
      v12 = [localTopHits count] == 0;

      topHit = self->_topHit;
      if (topHit == sectionCopy)
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

- (void)_deleteTopHitCompletionItem:(id)item atIndexPath:(id)path
{
  listingOnDisplay = self->_listingOnDisplay;
  itemCopy = item;
  -[CompletionGroupListing deleteTopHit:atIndex:](listingOnDisplay, "deleteTopHit:atIndex:", itemCopy, [path row]);
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    urlStringToFaviconRequestTokens = self->_urlStringToFaviconRequestTokens;
    self->_urlStringToFaviconRequestTokens = dictionary;
  }

  _completionsRequiringFavicon = [(CompletionList *)self _completionsRequiringFavicon];
  v8 = MEMORY[0x277CBEB98];
  v9 = [_completionsRequiringFavicon safari_mapObjectsUsingBlock:&__block_literal_global_162_1];
  v30 = [v8 setWithArray:v9];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  allKeys = [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v11)
  {
    v12 = *v43;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v43 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        if (([v30 containsObject:v14] & 1) == 0)
        {
          mEMORY[0x277D28F58] = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
          v16 = [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens objectForKeyedSubscript:v14];
          [mEMORY[0x277D28F58] cancelRequestsWithTokens:v16];

          [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens setObject:0 forKeyedSubscript:v14];
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v11);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = _completionsRequiringFavicon;
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
        originalURLString = [v19 originalURLString];
        v21 = objc_alloc(MEMORY[0x277D4A730]);
        v22 = [MEMORY[0x277CBEBC0] URLWithString:originalURLString];
        v23 = [v21 initWithURL:v22 iconSize:0 fallbackType:{24.0, 24.0}];

        v34 = 0;
        v35 = &v34;
        v36 = 0x2020000000;
        v37 = 1;
        objc_initWeak(&location, self);
        mEMORY[0x277D28F58]2 = [MEMORY[0x277D28F58] sharedSiteMetadataManager];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __34__CompletionList__requestFavicons__block_invoke_2;
        v31[3] = &unk_2781DC378;
        objc_copyWeak(&v32, &location);
        v31[4] = v19;
        v31[5] = &v34;
        v25 = [mEMORY[0x277D28F58]2 registerRequest:v23 priority:2 responseHandler:v31];

        *(v35 + 24) = 0;
        v26 = [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens objectForKeyedSubscript:originalURLString];

        if (v26)
        {
          v27 = [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens objectForKeyedSubscript:originalURLString];
          [v27 addObject:v25];
        }

        else
        {
          v27 = [MEMORY[0x277CBEB18] arrayWithObject:v25];
          [(NSMutableDictionary *)self->_urlStringToFaviconRequestTokens setObject:v27 forKeyedSubscript:originalURLString];
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
  parsecTopHits = [(CompletionGroupListing *)self->_listingOnDisplay parsecTopHits];
  if (parsecTopHits)
  {
    localTopHits = 0;
  }

  else
  {
    localTopHits = [(CompletionGroupListing *)self->_listingOnDisplay localTopHits];
  }

  return localTopHits;
}

- (id)_indexPathForEquivalentCompletionItem:(id)item
{
  itemCopy = item;
  groups = [(CompletionGroupListing *)self->_listingOnDisplay groups];
  if ([groups count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [groups objectAtIndexedSubscript:v6];
      completions = [v7 completions];
      v9 = [completions count];

      if (v9)
      {
        break;
      }

LABEL_9:

      if (++v6 >= [groups count])
      {
        goto LABEL_10;
      }
    }

    v10 = 0;
    while (1)
    {
      completions2 = [v7 completions];
      v12 = [completions2 objectAtIndexedSubscript:v10];

      if (([itemCopy isEqual:v12] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(itemCopy, "isEquivalentTo:", v12))
      {
        break;
      }

      ++v10;
      completions3 = [v7 completions];
      v14 = [completions3 count];

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

- (void)cacheIconForParsecResult:(id)result
{
  resultCopy = result;
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

  originalURLString = [resultCopy originalURLString];
  v10 = [(NSCache *)self->_parsecIconCache objectForKey:originalURLString];
  if (v10)
  {
  }

  else if (([(NSMutableSet *)self->_urlStringsLoadingParsecIcon containsObject:originalURLString]& 1) == 0)
  {
    v11 = [resultCopy safari_firstInlineCardSectionOfClass:objc_opt_class()];
    thumbnail = [v11 thumbnail];

    if (thumbnail || ([resultCopy safari_firstInlineCardSectionOfClass:objc_opt_class()], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "image"), thumbnail = objc_claimAutoreleasedReturnValue(), v13, thumbnail))
    {
      imageData = [thumbnail imageData];

      if (imageData)
      {
        imageData2 = [thumbnail imageData];
        [(CompletionList *)self _cacheImageFromData:imageData2 forURLString:originalURLString];
      }

      else
      {
        [(NSMutableSet *)self->_urlStringsLoadingParsecIcon addObject:originalURLString];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __43__CompletionList_cacheIconForParsecResult___block_invoke;
        v16[3] = &unk_2781DC3A0;
        v16[4] = self;
        v17 = originalURLString;
        [thumbnail loadImageDataWithCompletionHandler:v16];
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

- (void)_cacheImageFromData:(id)data forURLString:(id)string
{
  dataCopy = data;
  stringCopy = string;
  if (dataCopy)
  {
    v8 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:dataCopy];
    if (v8)
    {
      [(NSCache *)self->_parsecIconCache setObject:v8 forKey:stringCopy];
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

- (id)cachedIconForParsecResult:(id)result
{
  parsecIconCache = self->_parsecIconCache;
  originalURLString = [result originalURLString];
  v5 = [(NSCache *)parsecIconCache objectForKey:originalURLString];

  return v5;
}

- (NSIndexPath)indexPathOfAsTypedSearchSuggestion
{
  indexOfSearchSuggestionsGroup = [(CompletionGroupListing *)self->_listingOnDisplay indexOfSearchSuggestionsGroup];
  if (indexOfSearchSuggestionsGroup == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v5 = indexOfSearchSuggestionsGroup;
    searchSuggestions = [(CompletionGroupListing *)self->_listingOnDisplay searchSuggestions];
    firstObject = [searchSuggestions firstObject];

    string = [firstObject string];
    queryString = [(WBSCompletionQuery *)self->_query queryString];
    v10 = [string isEqualToString:queryString];

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

- (BOOL)shouldOverrideBackgroundViewForItem:(id)item
{
  itemCopy = item;
  v5 = [(CompletionList *)self completionsForGroupAtIndex:0];
  if ([v5 count] == 1)
  {
    firstObject = [v5 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject2 = [v5 firstObject];
      resultType = [firstObject2 resultType];
      v9 = [resultType isEqualToString:@"maps"];

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

  firstObject3 = [v5 firstObject];
  v11 = firstObject3 != itemCopy;

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

- (void)recordIgnoredSiriSuggestedSitesWithURL:(id)l
{
  lCopy = l;
  query = [(CompletionGroupListing *)self->_listingOnDisplay query];
  queryString = [query queryString];

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeProfileIdentifier = [tabController activeProfileIdentifier];

  parsecTopHits = [(CompletionGroupListing *)self->_listingOnDisplay parsecTopHits];
  v11 = parsecTopHits;
  v12 = MEMORY[0x277CBEBF8];
  if (parsecTopHits)
  {
    v13 = parsecTopHits;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v14 = v13;

  topParsecResults = [(CompletionGroupListing *)self->_listingOnDisplay topParsecResults];
  v16 = topParsecResults;
  if (topParsecResults)
  {
    v17 = topParsecResults;
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
  selfCopy = self;
  v29 = lCopy;
  v30 = activeProfileIdentifier;
  v31 = queryString;
  v20 = queryString;
  v21 = activeProfileIdentifier;
  v22 = lCopy;
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

- (void)_removeIgnoredSiriSuggestedSiteRecordsForHistoryItem:(id)item
{
  v12 = [item url];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeProfileIdentifier = [tabController activeProfileIdentifier];

  mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
  v8 = [mEMORY[0x277CDB8A8] userVisibleQueryFromSearchURL:v12];

  mEMORY[0x277D49F90] = [MEMORY[0x277D49F90] sharedController];
  v10 = mEMORY[0x277D49F90];
  if (v8)
  {
    [mEMORY[0x277D49F90] removeIgnoredSiriSuggestedSitesInProfile:activeProfileIdentifier query:v8];
  }

  else
  {
    host = [v12 host];
    [v10 removeIgnoredSiriSuggestedSitesInProfile:activeProfileIdentifier visitedURLHost:host];
  }
}

- (BOOL)_isPegasusMapsCompositeResult:(id)result
{
  resultCopy = result;
  if ([resultCopy count] < 2)
  {
    v8 = 0;
  }

  else
  {
    v4 = MEMORY[0x277D49FD8];
    v5 = [resultCopy objectAtIndexedSubscript:0];
    if ([v4 typeForSFSearchResult:v5] == 2)
    {
      v6 = MEMORY[0x277D49FD8];
      v7 = [resultCopy objectAtIndexedSubscript:1];
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
  supportsPrefixNavigationalIntent = [(SearchSuggestionProvider *)self->_suggestionProvider supportsPrefixNavigationalIntent];
  if (supportsPrefixNavigationalIntent)
  {
    LOBYTE(supportsPrefixNavigationalIntent) = ![(UniversalSearchCompletionProvider *)self->_universalSearchProvider disableNavigationalIntentProbability];
  }

  return supportsPrefixNavigationalIntent;
}

- (BOOL)_navigationalIntentShouldBlockSearchResult:(id)result givenFirstSearchSuggestion:(id)suggestion completionListing:(id)listing
{
  resultCopy = result;
  suggestionCopy = suggestion;
  listingCopy = listing;
  if ([(CompletionList *)self _supportsPrefixNavigationalIntent])
  {
    serverCompletion = [resultCopy serverCompletion];
    string = [suggestionCopy string];
    prefixNavigationalIntent = [suggestionCopy prefixNavigationalIntent];
    [listingCopy setPrefixNavigationalIntent:prefixNavigationalIntent];
    searchParameters = [MEMORY[0x277D4A030] searchParameters];
    if ([searchParameters checkServerCompletionForPrefixNavigationalIntent])
    {
      v15 = 0;
      if (!serverCompletion || !string)
      {
        goto LABEL_13;
      }

      v16 = [serverCompletion isEqualToString:string];

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

    searchParameters2 = [MEMORY[0x277D4A030] searchParameters];
    checkServerCompletionForPrefixNavigationalIntent = [searchParameters2 checkServerCompletionForPrefixNavigationalIntent];

    if (checkServerCompletionForPrefixNavigationalIntent)
    {
      [listingCopy setServerCompletionDidMatchFirstSearchSuggestionFrom3rdParty:1];
    }

    if (!prefixNavigationalIntent)
    {
      goto LABEL_14;
    }

    integerValue = [prefixNavigationalIntent integerValue];
    searchParameters = [MEMORY[0x277D4A030] searchParameters];
    prefixNavigationalIntentThreshold = [searchParameters prefixNavigationalIntentThreshold];
    v15 = integerValue < [prefixNavigationalIntentThreshold integerValue];

LABEL_13:
LABEL_15:

    goto LABEL_16;
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (id)tabDocumentForFindOnPageCompletionProvider:(id)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];

  return activeTabDocument;
}

- (id)windowUUIDsToTabsForTabCompletionProvider:(id)provider
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  isPrivateBrowsingEnabled = [WeakRetained isPrivateBrowsingEnabled];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  browserWindowController = [WeakRetained browserWindowController];
  browserControllers = [browserWindowController browserControllers];

  v7 = [browserControllers countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(browserControllers);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (isPrivateBrowsingEnabled == [v11 isPrivateBrowsingEnabled])
        {
          activeProfileIdentifier = [WeakRetained activeProfileIdentifier];
          activeProfileIdentifier2 = [v11 activeProfileIdentifier];
          v14 = [activeProfileIdentifier isEqualToString:activeProfileIdentifier2];

          if (v14)
          {
            tabController = [v11 tabController];
            currentTabs = [tabController currentTabs];
            uUID = [v11 UUID];
            [dictionary setObject:currentTabs forKeyedSubscript:uUID];
          }
        }
      }

      v8 = [browserControllers countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (id)selectedTabDocumentForTabCompletionProvider:(id)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];

  return activeTabDocument;
}

- (id)tabGroupsForTabCompletionProvider:(id)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  nonActiveTabGroupsInCurrentBrowsingMode = [tabController nonActiveTabGroupsInCurrentBrowsingMode];

  return nonActiveTabGroupsInCurrentBrowsingMode;
}

- (id)currentWindowUUIDForTabCompletionProvider:(id)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  uUID = [WeakRetained UUID];

  return uUID;
}

- (BOOL)canPerformCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CompletionList *)self _urlFromCommand:commandCopy];
    v6 = ![(CompletionList *)self _shouldSearchUIHandleEngagementForURL:v5];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)performCommand:(id)command
{
  commandCopy = command;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = commandCopy;
  if (isKindOfClass)
  {
    v6 = commandCopy;
    v7 = [(CompletionList *)self _urlFromCommand:v6];
    punchout = [v6 punchout];
    if (objc_opt_respondsToSelector())
    {
      forceOpenInBrowser = [punchout forceOpenInBrowser];
    }

    else
    {
      forceOpenInBrowser = 0;
    }

    delegate = [(CompletionList *)self delegate];
    [delegate completionList:self willGoToURL:v7 fromPegasusSearchResult:self->_pegasusSearchResult forImageAttribution:forceOpenInBrowser];

    pegasusSearchResult = self->_pegasusSearchResult;
    self->_pegasusSearchResult = 0;

    self->_safariShouldHandleCardSectionEngagement = 0;
    v5 = commandCopy;
  }
}

- (id)_urlFromCommand:(id)command
{
  punchout = [command punchout];
  preferredOpenableURL = [punchout preferredOpenableURL];

  return preferredOpenableURL;
}

- (BOOL)shouldHandleCardSectionEngagement:(id)engagement
{
  engagementCopy = engagement;
  destination = [engagementCopy destination];
  preferredOpenableURL = [destination preferredOpenableURL];

  v7 = [(CompletionList *)self _shouldSearchUIHandleEngagementForURL:preferredOpenableURL];
  if (!v7)
  {
    destination2 = [engagementCopy destination];
    if (objc_opt_respondsToSelector())
    {
      forceOpenInBrowser = [destination2 forceOpenInBrowser];
    }

    else
    {
      forceOpenInBrowser = 0;
    }

    delegate = [(CompletionList *)self delegate];
    [delegate completionList:self willGoToURL:preferredOpenableURL fromPegasusSearchResult:self->_pegasusSearchResult forImageAttribution:forceOpenInBrowser];

    pegasusSearchResult = self->_pegasusSearchResult;
    self->_pegasusSearchResult = 0;

    self->_safariShouldHandleCardSectionEngagement = 0;
  }

  return v7;
}

- (BOOL)_shouldSearchUIHandleEngagementForURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  v8 = 1;
  if (self->_safariShouldHandleCardSectionEngagement)
  {
    host = [lCopy host];
    v7 = [host isEqualToString:@"weather.apple.com"];

    if ((v7 & 1) == 0 && (([v5 safari_isHTTPURL] & 1) != 0 || objc_msgSend(v5, "safari_isHTTPSURL")))
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)willDismissViewController:(id)controller
{
  delegate = [(CompletionList *)self delegate];
  [delegate completionListDidDismissSearchUIViewController:self];
}

- (void)didEngageResult:(id)result
{
  resultCopy = result;
  [(CompletionList *)self _postFeedback:resultCopy];
  self->_safariShouldHandleCardSectionEngagement = 1;
  result = [resultCopy result];

  pegasusSearchResult = self->_pegasusSearchResult;
  self->_pegasusSearchResult = result;
}

- (void)_postFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v4 = +[UniversalSearchSession sharedSession];
  feedbackDispatcher = [v4 feedbackDispatcher];
  query = [(CompletionList *)self query];
  queryID = [query queryID];
  if (!queryID)
  {
    queryID = [MEMORY[0x277D49ED8] currentQueryID];
  }

  [feedbackDispatcher postFeedback:feedbackCopy forQueryID:queryID];
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