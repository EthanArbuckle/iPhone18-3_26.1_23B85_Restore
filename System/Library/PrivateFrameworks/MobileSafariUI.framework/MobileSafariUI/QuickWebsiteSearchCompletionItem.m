@interface QuickWebsiteSearchCompletionItem
- (BOOL)isEquivalentTo:(id)a3;
- (NSArray)tableItemEqualityInfo;
- (NSString)matchedTextForInputAnalytics;
- (QuickWebsiteSearchCompletionItem)initWithProvider:(id)a3 query:(id)a4 forQueryID:(int64_t)a5;
- (SFSearchResult)sfSearchResultValue;
- (id)completionTableViewCellForCompletionList:(id)a3;
- (id)searchFieldIconForCompletionList:(id)a3;
- (void)acceptCompletionWithActionHandler:(id)a3;
- (void)auditAcceptedCompletionWithRank:(unint64_t)a3;
- (void)configureCompletionTableViewCell:(id)a3 forCompletionList:(id)a4;
- (void)setQuery:(id)a3;
@end

@implementation QuickWebsiteSearchCompletionItem

- (QuickWebsiteSearchCompletionItem)initWithProvider:(id)a3 query:(id)a4 forQueryID:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = QuickWebsiteSearchCompletionItem;
  v11 = [(QuickWebsiteSearchCompletionItem *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_searchProvider, a3);
    objc_storeStrong(&v12->_searchQuery, a4);
    v12->_parsecQueryID = a5;
    v13 = v12;
  }

  return v12;
}

- (id)searchFieldIconForCompletionList:(id)a3
{
  v3 = MEMORY[0x277D755B8];
  v4 = systemImageNameForCompletionIcon(4);
  v5 = [v3 systemImageNamed:v4];

  return v5;
}

- (id)completionTableViewCellForCompletionList:(id)a3
{
  v4 = [SearchSuggestionTableViewCell alloc];
  v5 = [(QuickWebsiteSearchCompletionItem *)self completionTableViewCellReuseIdentifier];
  v6 = [(SearchSuggestionTableViewCell *)v4 initWithStyle:0 reuseIdentifier:v5];

  return v6;
}

- (void)configureCompletionTableViewCell:(id)a3 forCompletionList:(id)a4
{
  v12 = a3;
  v5 = [v12 textLabel];
  [v5 setLineBreakMode:4];

  v6 = [v12 textLabel];
  v7 = MEMORY[0x277CCACA8];
  v8 = _WBSLocalizedString();
  v9 = [(WBSQuickWebsiteSearchProvider *)self->_searchProvider displayName];
  v10 = [(QuickWebsiteSearchQuery *)self->_searchQuery searchTerms];
  v11 = [v7 stringWithFormat:v8, v9, v10];
  [v6 setText:v11];

  [(UITableViewCell *)v12 safari_setCompletionIcon:?];
  [v12 setAccessibilityIdentifier:@"QuickWebsiteSearch"];
}

- (void)acceptCompletionWithActionHandler:(id)a3
{
  v4 = MEMORY[0x277D4A028];
  v5 = a3;
  v6 = [v4 sharedController];
  [v6 didPerformSearchWithProvider:self->_searchProvider];

  v9 = [(WBSQuickWebsiteSearchProvider *)self->_searchProvider searchURLTemplate];
  v7 = [(QuickWebsiteSearchQuery *)self->_searchQuery searchTerms];
  v8 = [v9 URLWithSearchTerms:v7];
  [v5 goToURL:v8];
}

- (void)auditAcceptedCompletionWithRank:(unint64_t)a3
{
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didAcceptCompletionItemOfType:7 atRank:a3];
}

- (SFSearchResult)sfSearchResultValue
{
  sfSearchResultValue = self->_sfSearchResultValue;
  if (sfSearchResultValue)
  {
    v3 = sfSearchResultValue;
  }

  else
  {
    v5 = [MEMORY[0x277D4C5D0] safari_sfSearchResultWithUniqueIdentifier];
    v6 = self->_sfSearchResultValue;
    self->_sfSearchResultValue = v5;

    v7 = MEMORY[0x277D4C690];
    v8 = [(QuickWebsiteSearchQuery *)self->_searchQuery searchTerms];
    v9 = [v7 textWithString:v8];
    [(SFSearchResult *)self->_sfSearchResultValue setTitle:v9];

    v10 = [@"com.apple.Safari.CompletionList." stringByAppendingString:@"QuickWebsiteSearch"];
    [(SFSearchResult *)self->_sfSearchResultValue setResultBundleId:v10];
    [(SFSearchResult *)self->_sfSearchResultValue setSectionBundleIdentifier:v10];
    [(SFSearchResult *)self->_sfSearchResultValue setType:1];
    v3 = self->_sfSearchResultValue;
  }

  return v3;
}

- (BOOL)isEquivalentTo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(QuickWebsiteSearchCompletionItem *)self searchProvider];
    v7 = [v6 displayName];
    v8 = [v5 searchProvider];
    v9 = [v8 displayName];
    v10 = WBSIsEqual();

    if (v10)
    {
      v11 = [(QuickWebsiteSearchCompletionItem *)self searchQuery];
      v12 = [v11 searchTerms];
      v13 = [v5 searchQuery];
      v14 = [v13 searchTerms];
      v15 = WBSIsEqual();
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSArray)tableItemEqualityInfo
{
  v3 = [(QuickWebsiteSearchCompletionItem *)self searchProvider];
  v4 = [v3 displayName];
  v5 = [(QuickWebsiteSearchCompletionItem *)self searchQuery];
  v15 = [v5 searchTerms];
  v13 = CompletionListTableItemEqualityInfo(2, v6, v7, v8, v9, v10, v11, v12, v4);

  return v13;
}

- (void)setQuery:(id)a3
{
  v8 = a3;
  v4 = [(QuickWebsiteSearchQuery *)self->_searchQuery completionQuery];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    v6 = [[QuickWebsiteSearchQuery alloc] initWithUserEnteredQuery:v8];
    searchQuery = self->_searchQuery;
    self->_searchQuery = v6;
  }
}

- (NSString)matchedTextForInputAnalytics
{
  v3 = [(WBSQuickWebsiteSearchProvider *)self->_searchProvider searchURLTemplate];
  v4 = [(QuickWebsiteSearchQuery *)self->_searchQuery searchTerms];
  v5 = [v3 URLWithSearchTerms:v4];
  v6 = [v5 absoluteString];

  return v6;
}

@end