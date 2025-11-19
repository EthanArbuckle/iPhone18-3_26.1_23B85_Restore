@interface SearchSuggestionProvider
- (BOOL)supportsPrefixNavigationalIntent;
- (LoadProgressObserver)loadProgressObserver;
- (UniversalSearchSession)universalSearchSession;
- (id)initForPrivateBrowsing:(BOOL)a3;
- (void)dealloc;
- (void)setQueryToComplete:(id)a3;
- (void)stop;
@end

@implementation SearchSuggestionProvider

- (id)initForPrivateBrowsing:(BOOL)a3
{
  v3 = a3;
  v17.receiver = self;
  v17.super_class = SearchSuggestionProvider;
  v4 = [(CompletionProvider *)&v17 init];
  if (v4)
  {
    v5 = MEMORY[0x277D7B810];
    v6 = _SFApplicationNameForUserAgent();
    v7 = [v5 _standardUserAgentWithApplicationName:v6];
    userAgentString = v4->_userAgentString;
    v4->_userAgentString = v7;

    v9 = objc_alloc(MEMORY[0x277D4A810]);
    v10 = [MEMORY[0x277CDB8A8] sharedInstance];
    v11 = [v10 defaultSearchEngineForPrivateBrowsing:v3];
    v12 = [v11 suggestionsURLTemplate];
    v13 = [v9 initWithSuggestionsURLTemplate:v12];
    searchSuggestionsFetcher = v4->_searchSuggestionsFetcher;
    v4->_searchSuggestionsFetcher = v13;

    v4->_forPrivateBrowsing = v3;
    v15 = v4;
  }

  return v4;
}

- (void)setQueryToComplete:(id)a3
{
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_currentCompletionQuery, a3);
    v6 = [v5 queryString];
    v7 = [v6 copy];

    forPrivateBrowsing = self->_forPrivateBrowsing;
    v9 = [MEMORY[0x277D499B8] sharedLogger];
    [v9 didRequestSearchSuggestions];

    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_loadProgressObserver);
    [WeakRetained didStartLoadingResource];
    searchSuggestionsFetcher = self->_searchSuggestionsFetcher;
    userAgentString = self->_userAgentString;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__SearchSuggestionProvider_setQueryToComplete___block_invoke;
    v15[3] = &unk_2781D8C90;
    v13 = WeakRetained;
    v16 = v13;
    objc_copyWeak(&v19, &location);
    v17 = v5;
    v20 = forPrivateBrowsing;
    v14 = v7;
    v18 = v14;
    [(WBSSearchSuggestionsFetcher *)searchSuggestionsFetcher updateSuggestionsRequestWithSearchTerms:v14 userAgentString:userAgentString completionHandler:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __47__SearchSuggestionProvider_setQueryToComplete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) didStopLoadingResource];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = [v6 domain];
      if ([v8 isEqualToString:*MEMORY[0x277D4A468]])
      {
        v9 = [v6 code];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      [WeakRetained fail];
    }

    else
    {
      v10 = [v5 suggestions];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __47__SearchSuggestionProvider_setQueryToComplete___block_invoke_2;
      v15[3] = &unk_2781D8C68;
      v11 = v5;
      v16 = v11;
      v17 = *(a1 + 40);
      v18 = *(a1 + 64);
      v12 = [v10 safari_mapObjectsUsingBlock:v15];

      if ([WeakRetained supportsPrefixNavigationalIntent])
      {
        v13 = [v11 prefixNavigationalIntent];
        v14 = [v12 firstObject];
        [v14 setPrefixNavigationalIntent:v13];
      }

      [WeakRetained setCompletions:v12 forString:*(a1 + 48)];
    }
  }

LABEL_11:
}

SearchSuggestion *__47__SearchSuggestionProvider_setQueryToComplete___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SearchSuggestion alloc];
  v5 = [*(a1 + 32) postFixSuggestions];
  v6 = [v5 objectForKeyedSubscript:v3];
  v7 = [(SearchSuggestion *)v4 initWithSearchEngineSuggestion:v3 postFixString:v6 userQuery:*(a1 + 40) forPrivateBrowsing:*(a1 + 48) isOfflineSearchSuggestion:0];

  return v7;
}

- (void)stop
{
  [(WBSSearchSuggestionsFetcher *)self->_searchSuggestionsFetcher cancelExistingSuggestionsRequest];
  searchSuggestionsFetcher = self->_searchSuggestionsFetcher;

  [(WBSSearchSuggestionsFetcher *)searchSuggestionsFetcher disconnectFromSearchHelperIfNecessary];
}

- (void)dealloc
{
  [(WBSSearchSuggestionsFetcher *)self->_searchSuggestionsFetcher disconnectFromSearchHelperIfNecessary];
  v3.receiver = self;
  v3.super_class = SearchSuggestionProvider;
  [(SearchSuggestionProvider *)&v3 dealloc];
}

- (BOOL)supportsPrefixNavigationalIntent
{
  if (self->_forPrivateBrowsing)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CDB8A8] sharedInstance];
  v4 = [v3 defaultSearchEngineForPrivateBrowsing:0];
  v5 = [v4 searchEngineIdentifier];
  v2 = 0;
  if ([v5 isEqualToString:*MEMORY[0x277D4A940]])
  {
    v6 = [MEMORY[0x277D4A030] searchParameters];
    v7 = [v6 prefixNavigationalIntentThreshold];
    v2 = v7 != 0;
  }

  return v2;
}

- (LoadProgressObserver)loadProgressObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_loadProgressObserver);

  return WeakRetained;
}

- (UniversalSearchSession)universalSearchSession
{
  WeakRetained = objc_loadWeakRetained(&self->_universalSearchSession);

  return WeakRetained;
}

@end