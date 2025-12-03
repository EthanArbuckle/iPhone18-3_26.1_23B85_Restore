@interface PPTSearchSuggestionProvider
- (id)_generateResultsForQuery:(id)query;
- (void)setQueryToComplete:(id)complete;
@end

@implementation PPTSearchSuggestionProvider

- (void)setQueryToComplete:(id)complete
{
  completeCopy = complete;
  queryString = [completeCopy queryString];
  v6 = [queryString isEqualToString:self->querySimulated];

  if ((v6 & 1) == 0)
  {
    queryString2 = [completeCopy queryString];
    v8 = [queryString2 copy];
    querySimulated = self->querySimulated;
    self->querySimulated = v8;

    v10 = MEMORY[0x277CBEBB8];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__PPTSearchSuggestionProvider_setQueryToComplete___block_invoke;
    v13[3] = &unk_2781D9558;
    v13[4] = self;
    v14 = completeCopy;
    v11 = [v10 scheduledTimerWithTimeInterval:0 repeats:v13 block:0.1];
    networkDelaySimulatorTimer = self->networkDelaySimulatorTimer;
    self->networkDelaySimulatorTimer = v11;
  }
}

void __50__PPTSearchSuggestionProvider_setQueryToComplete___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _generateResultsForQuery:*(a1 + 40)];
  [v2 setCompletions:v3 forString:*(*(a1 + 32) + 96)];
}

- (id)_generateResultsForQuery:(id)query
{
  v17[4] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  queryString = [queryCopy queryString];
  v5 = [[SearchSuggestion alloc] initWithSearchEngineSuggestion:queryString postFixString:0 userQuery:queryCopy forPrivateBrowsing:0 isOfflineSearchSuggestion:0];
  v6 = [SearchSuggestion alloc];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@a", queryString];
  v8 = [(SearchSuggestion *)v6 initWithSearchEngineSuggestion:v7 postFixString:0 userQuery:queryCopy forPrivateBrowsing:0 isOfflineSearchSuggestion:0];

  v9 = [SearchSuggestion alloc];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ab", queryString];
  v11 = [(SearchSuggestion *)v9 initWithSearchEngineSuggestion:v10 postFixString:0 userQuery:queryCopy forPrivateBrowsing:0 isOfflineSearchSuggestion:0];

  v12 = [SearchSuggestion alloc];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@abc", queryString];
  v14 = [(SearchSuggestion *)v12 initWithSearchEngineSuggestion:v13 postFixString:0 userQuery:queryCopy forPrivateBrowsing:0 isOfflineSearchSuggestion:0];

  v17[0] = v5;
  v17[1] = v8;
  v17[2] = v11;
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
}

@end