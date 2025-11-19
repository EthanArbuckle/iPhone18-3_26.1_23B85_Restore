@interface PPTSearchSuggestionProvider
- (id)_generateResultsForQuery:(id)a3;
- (void)setQueryToComplete:(id)a3;
@end

@implementation PPTSearchSuggestionProvider

- (void)setQueryToComplete:(id)a3
{
  v4 = a3;
  v5 = [v4 queryString];
  v6 = [v5 isEqualToString:self->querySimulated];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 queryString];
    v8 = [v7 copy];
    querySimulated = self->querySimulated;
    self->querySimulated = v8;

    v10 = MEMORY[0x277CBEBB8];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__PPTSearchSuggestionProvider_setQueryToComplete___block_invoke;
    v13[3] = &unk_2781D9558;
    v13[4] = self;
    v14 = v4;
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

- (id)_generateResultsForQuery:(id)a3
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 queryString];
  v5 = [[SearchSuggestion alloc] initWithSearchEngineSuggestion:v4 postFixString:0 userQuery:v3 forPrivateBrowsing:0 isOfflineSearchSuggestion:0];
  v6 = [SearchSuggestion alloc];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@a", v4];
  v8 = [(SearchSuggestion *)v6 initWithSearchEngineSuggestion:v7 postFixString:0 userQuery:v3 forPrivateBrowsing:0 isOfflineSearchSuggestion:0];

  v9 = [SearchSuggestion alloc];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ab", v4];
  v11 = [(SearchSuggestion *)v9 initWithSearchEngineSuggestion:v10 postFixString:0 userQuery:v3 forPrivateBrowsing:0 isOfflineSearchSuggestion:0];

  v12 = [SearchSuggestion alloc];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@abc", v4];
  v14 = [(SearchSuggestion *)v12 initWithSearchEngineSuggestion:v13 postFixString:0 userQuery:v3 forPrivateBrowsing:0 isOfflineSearchSuggestion:0];

  v17[0] = v5;
  v17[1] = v8;
  v17[2] = v11;
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
}

@end