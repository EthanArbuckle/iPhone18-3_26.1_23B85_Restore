@interface QuickWebsiteSearchCompletionItem
- (BOOL)isEquivalentTo:(id)to;
- (NSArray)tableItemEqualityInfo;
- (NSString)matchedTextForInputAnalytics;
- (QuickWebsiteSearchCompletionItem)initWithProvider:(id)provider query:(id)query forQueryID:(int64_t)d;
- (SFSearchResult)sfSearchResultValue;
- (id)completionTableViewCellForCompletionList:(id)list;
- (id)searchFieldIconForCompletionList:(id)list;
- (void)acceptCompletionWithActionHandler:(id)handler;
- (void)auditAcceptedCompletionWithRank:(unint64_t)rank;
- (void)configureCompletionTableViewCell:(id)cell forCompletionList:(id)list;
- (void)setQuery:(id)query;
@end

@implementation QuickWebsiteSearchCompletionItem

- (QuickWebsiteSearchCompletionItem)initWithProvider:(id)provider query:(id)query forQueryID:(int64_t)d
{
  providerCopy = provider;
  queryCopy = query;
  v15.receiver = self;
  v15.super_class = QuickWebsiteSearchCompletionItem;
  v11 = [(QuickWebsiteSearchCompletionItem *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_searchProvider, provider);
    objc_storeStrong(&v12->_searchQuery, query);
    v12->_parsecQueryID = d;
    v13 = v12;
  }

  return v12;
}

- (id)searchFieldIconForCompletionList:(id)list
{
  v3 = MEMORY[0x277D755B8];
  v4 = systemImageNameForCompletionIcon(4);
  v5 = [v3 systemImageNamed:v4];

  return v5;
}

- (id)completionTableViewCellForCompletionList:(id)list
{
  v4 = [SearchSuggestionTableViewCell alloc];
  completionTableViewCellReuseIdentifier = [(QuickWebsiteSearchCompletionItem *)self completionTableViewCellReuseIdentifier];
  v6 = [(SearchSuggestionTableViewCell *)v4 initWithStyle:0 reuseIdentifier:completionTableViewCellReuseIdentifier];

  return v6;
}

- (void)configureCompletionTableViewCell:(id)cell forCompletionList:(id)list
{
  cellCopy = cell;
  textLabel = [cellCopy textLabel];
  [textLabel setLineBreakMode:4];

  textLabel2 = [cellCopy textLabel];
  v7 = MEMORY[0x277CCACA8];
  v8 = _WBSLocalizedString();
  displayName = [(WBSQuickWebsiteSearchProvider *)self->_searchProvider displayName];
  searchTerms = [(QuickWebsiteSearchQuery *)self->_searchQuery searchTerms];
  v11 = [v7 stringWithFormat:v8, displayName, searchTerms];
  [textLabel2 setText:v11];

  [(UITableViewCell *)cellCopy safari_setCompletionIcon:?];
  [cellCopy setAccessibilityIdentifier:@"QuickWebsiteSearch"];
}

- (void)acceptCompletionWithActionHandler:(id)handler
{
  v4 = MEMORY[0x277D4A028];
  handlerCopy = handler;
  sharedController = [v4 sharedController];
  [sharedController didPerformSearchWithProvider:self->_searchProvider];

  searchURLTemplate = [(WBSQuickWebsiteSearchProvider *)self->_searchProvider searchURLTemplate];
  searchTerms = [(QuickWebsiteSearchQuery *)self->_searchQuery searchTerms];
  v8 = [searchURLTemplate URLWithSearchTerms:searchTerms];
  [handlerCopy goToURL:v8];
}

- (void)auditAcceptedCompletionWithRank:(unint64_t)rank
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didAcceptCompletionItemOfType:7 atRank:rank];
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
    safari_sfSearchResultWithUniqueIdentifier = [MEMORY[0x277D4C5D0] safari_sfSearchResultWithUniqueIdentifier];
    v6 = self->_sfSearchResultValue;
    self->_sfSearchResultValue = safari_sfSearchResultWithUniqueIdentifier;

    v7 = MEMORY[0x277D4C690];
    searchTerms = [(QuickWebsiteSearchQuery *)self->_searchQuery searchTerms];
    v9 = [v7 textWithString:searchTerms];
    [(SFSearchResult *)self->_sfSearchResultValue setTitle:v9];

    v10 = [@"com.apple.Safari.CompletionList." stringByAppendingString:@"QuickWebsiteSearch"];
    [(SFSearchResult *)self->_sfSearchResultValue setResultBundleId:v10];
    [(SFSearchResult *)self->_sfSearchResultValue setSectionBundleIdentifier:v10];
    [(SFSearchResult *)self->_sfSearchResultValue setType:1];
    v3 = self->_sfSearchResultValue;
  }

  return v3;
}

- (BOOL)isEquivalentTo:(id)to
{
  toCopy = to;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = toCopy;
    searchProvider = [(QuickWebsiteSearchCompletionItem *)self searchProvider];
    displayName = [searchProvider displayName];
    searchProvider2 = [v5 searchProvider];
    displayName2 = [searchProvider2 displayName];
    v10 = WBSIsEqual();

    if (v10)
    {
      searchQuery = [(QuickWebsiteSearchCompletionItem *)self searchQuery];
      searchTerms = [searchQuery searchTerms];
      searchQuery2 = [v5 searchQuery];
      searchTerms2 = [searchQuery2 searchTerms];
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
  searchProvider = [(QuickWebsiteSearchCompletionItem *)self searchProvider];
  displayName = [searchProvider displayName];
  searchQuery = [(QuickWebsiteSearchCompletionItem *)self searchQuery];
  searchTerms = [searchQuery searchTerms];
  v13 = CompletionListTableItemEqualityInfo(2, v6, v7, v8, v9, v10, v11, v12, displayName);

  return v13;
}

- (void)setQuery:(id)query
{
  queryCopy = query;
  completionQuery = [(QuickWebsiteSearchQuery *)self->_searchQuery completionQuery];
  v5 = WBSIsEqual();

  if ((v5 & 1) == 0)
  {
    v6 = [[QuickWebsiteSearchQuery alloc] initWithUserEnteredQuery:queryCopy];
    searchQuery = self->_searchQuery;
    self->_searchQuery = v6;
  }
}

- (NSString)matchedTextForInputAnalytics
{
  searchURLTemplate = [(WBSQuickWebsiteSearchProvider *)self->_searchProvider searchURLTemplate];
  searchTerms = [(QuickWebsiteSearchQuery *)self->_searchQuery searchTerms];
  v5 = [searchURLTemplate URLWithSearchTerms:searchTerms];
  absoluteString = [v5 absoluteString];

  return absoluteString;
}

@end