@interface _CNAutocompleteNonCachingSearchProvider
- (id)calendarServerSearch;
- (id)directoryServerSearch;
- (id)localExtensionSearches;
- (id)localSearch;
- (id)predictionSearch;
- (id)recentsSearch;
- (id)stewieSearch;
- (id)suggestionsSearch;
@end

@implementation _CNAutocompleteNonCachingSearchProvider

- (id)predictionSearch
{
  v2 = objc_alloc_init(CNAutocompletePredictionSearch);

  return v2;
}

- (id)localSearch
{
  v2 = objc_alloc_init(CNAutocompleteLocalSearch);

  return v2;
}

- (id)recentsSearch
{
  v2 = objc_alloc_init(CNAutocompleteRecentsSearch);

  return v2;
}

- (id)stewieSearch
{
  v2 = objc_alloc_init(CNAutocompleteStewieSearch);

  return v2;
}

- (id)suggestionsSearch
{
  v2 = objc_alloc_init(CNAutocompleteSuggestionsSearch);

  return v2;
}

- (id)localExtensionSearches
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(CNAutocompleteLocalExtensionSearch);
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)directoryServerSearch
{
  v2 = objc_alloc_init(CNAutocompleteDirectoryServerSearch);

  return v2;
}

- (id)calendarServerSearch
{
  v2 = objc_alloc_init(CNAutocompleteCalendarServerSearch);

  return v2;
}

@end