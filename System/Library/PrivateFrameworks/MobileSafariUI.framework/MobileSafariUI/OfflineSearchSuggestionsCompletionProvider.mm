@interface OfflineSearchSuggestionsCompletionProvider
- (OfflineSearchSuggestionsCompletionProvider)initWithMaximumNumberOfSuggestions:(unint64_t)suggestions forPrivateBrowsing:(BOOL)browsing;
- (void)offlineSearchSuggestionsFetcher:(id)fetcher didFindSuggestions:(id)suggestions forQuery:(id)query;
- (void)setQueryToComplete:(id)complete;
@end

@implementation OfflineSearchSuggestionsCompletionProvider

- (OfflineSearchSuggestionsCompletionProvider)initWithMaximumNumberOfSuggestions:(unint64_t)suggestions forPrivateBrowsing:(BOOL)browsing
{
  v11.receiver = self;
  v11.super_class = OfflineSearchSuggestionsCompletionProvider;
  v6 = [(CompletionProvider *)&v11 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D49FA8]) initWithMaximumSuggestionsToFetch:suggestions];
    offlineSearchSuggestionsFetcher = v6->_offlineSearchSuggestionsFetcher;
    v6->_offlineSearchSuggestionsFetcher = v7;

    [(WBSOfflineSearchSuggestionsFetcher *)v6->_offlineSearchSuggestionsFetcher setDelegate:v6];
    v6->_forPrivateBrowsing = browsing;
    v9 = v6;
  }

  return v6;
}

- (void)setQueryToComplete:(id)complete
{
  completeCopy = complete;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_currentCompletionQuery, complete);
    [(WBSOfflineSearchSuggestionsFetcher *)self->_offlineSearchSuggestionsFetcher setCurrentQuery:completeCopy];
  }
}

- (void)offlineSearchSuggestionsFetcher:(id)fetcher didFindSuggestions:(id)suggestions forQuery:(id)query
{
  queryCopy = query;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __106__OfflineSearchSuggestionsCompletionProvider_offlineSearchSuggestionsFetcher_didFindSuggestions_forQuery___block_invoke;
  v14 = &unk_2781D9358;
  v15 = queryCopy;
  selfCopy = self;
  v8 = queryCopy;
  v9 = [suggestions safari_mapObjectsUsingBlock:&v11];
  queryString = [v8 queryString];
  [(CompletionProvider *)self setCompletions:v9 forString:queryString];
}

SearchSuggestion *__106__OfflineSearchSuggestionsCompletionProvider_offlineSearchSuggestionsFetcher_didFindSuggestions_forQuery___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SearchSuggestion alloc] initWithSearchEngineSuggestion:v3 postFixString:0 userQuery:*(a1 + 32) forPrivateBrowsing:*(*(a1 + 40) + 56) isOfflineSearchSuggestion:1];

  return v4;
}

@end