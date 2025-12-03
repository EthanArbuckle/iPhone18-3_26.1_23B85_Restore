@interface ICLinkSuggestionQuery
- (ICLinkSuggestionQuery)initWithQueryString:(id)string includeNotes:(BOOL)notes includeWebsites:(BOOL)websites;
- (id)attributesToFetch;
- (id)newSearchQueryContext;
- (id)newSearchQueryWithContext:(id)context;
@end

@implementation ICLinkSuggestionQuery

- (ICLinkSuggestionQuery)initWithQueryString:(id)string includeNotes:(BOOL)notes includeWebsites:(BOOL)websites
{
  websitesCopy = websites;
  notesCopy = notes;
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = ICLinkSuggestionQuery;
  v9 = [(ICSearchQuery *)&v12 initWithExternalRankingQueries:0];
  if (v9)
  {
    v10 = [ICSearchQueryOperation prefixMatchingQueryStringTitleForSearchString:stringCopy];
    [(ICLinkSuggestionQuery *)v9 setQueryString:v10];

    [(ICLinkSuggestionQuery *)v9 setIncludeNotes:notesCopy];
    [(ICLinkSuggestionQuery *)v9 setIncludeWebsites:websitesCopy];
  }

  return v9;
}

- (id)newSearchQueryContext
{
  v2 = objc_alloc_init(MEMORY[0x277CC34A0]);
  [v2 setDisableBlockingOnIndex:1];
  return v2;
}

- (id)newSearchQueryWithContext:(id)context
{
  v4 = MEMORY[0x277CC3498];
  contextCopy = context;
  v6 = [v4 alloc];
  queryString = [(ICLinkSuggestionQuery *)self queryString];
  v8 = [v6 initWithQueryString:queryString queryContext:contextCopy];

  return v8;
}

- (id)attributesToFetch
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CC2678];
  v7[0] = *MEMORY[0x277D36158];
  v7[1] = v2;
  v3 = *MEMORY[0x277CC2670];
  v7[2] = *MEMORY[0x277CC2760];
  v7[3] = v3;
  v4 = *MEMORY[0x277CC3070];
  v7[4] = *MEMORY[0x277CC2A80];
  v7[5] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];

  return v5;
}

@end