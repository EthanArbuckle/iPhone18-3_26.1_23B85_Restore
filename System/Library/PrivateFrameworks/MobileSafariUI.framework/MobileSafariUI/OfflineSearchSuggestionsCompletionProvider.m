@interface OfflineSearchSuggestionsCompletionProvider
- (OfflineSearchSuggestionsCompletionProvider)initWithMaximumNumberOfSuggestions:(unint64_t)a3 forPrivateBrowsing:(BOOL)a4;
- (void)offlineSearchSuggestionsFetcher:(id)a3 didFindSuggestions:(id)a4 forQuery:(id)a5;
- (void)setQueryToComplete:(id)a3;
@end

@implementation OfflineSearchSuggestionsCompletionProvider

- (OfflineSearchSuggestionsCompletionProvider)initWithMaximumNumberOfSuggestions:(unint64_t)a3 forPrivateBrowsing:(BOOL)a4
{
  v11.receiver = self;
  v11.super_class = OfflineSearchSuggestionsCompletionProvider;
  v6 = [(CompletionProvider *)&v11 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D49FA8]) initWithMaximumSuggestionsToFetch:a3];
    offlineSearchSuggestionsFetcher = v6->_offlineSearchSuggestionsFetcher;
    v6->_offlineSearchSuggestionsFetcher = v7;

    [(WBSOfflineSearchSuggestionsFetcher *)v6->_offlineSearchSuggestionsFetcher setDelegate:v6];
    v6->_forPrivateBrowsing = a4;
    v9 = v6;
  }

  return v6;
}

- (void)setQueryToComplete:(id)a3
{
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_currentCompletionQuery, a3);
    [(WBSOfflineSearchSuggestionsFetcher *)self->_offlineSearchSuggestionsFetcher setCurrentQuery:v5];
  }
}

- (void)offlineSearchSuggestionsFetcher:(id)a3 didFindSuggestions:(id)a4 forQuery:(id)a5
{
  v7 = a5;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __106__OfflineSearchSuggestionsCompletionProvider_offlineSearchSuggestionsFetcher_didFindSuggestions_forQuery___block_invoke;
  v14 = &unk_2781D9358;
  v15 = v7;
  v16 = self;
  v8 = v7;
  v9 = [a4 safari_mapObjectsUsingBlock:&v11];
  v10 = [v8 queryString];
  [(CompletionProvider *)self setCompletions:v9 forString:v10];
}

SearchSuggestion *__106__OfflineSearchSuggestionsCompletionProvider_offlineSearchSuggestionsFetcher_didFindSuggestions_forQuery___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SearchSuggestion alloc] initWithSearchEngineSuggestion:v3 postFixString:0 userQuery:*(a1 + 32) forPrivateBrowsing:*(*(a1 + 40) + 56) isOfflineSearchSuggestion:1];

  return v4;
}

@end