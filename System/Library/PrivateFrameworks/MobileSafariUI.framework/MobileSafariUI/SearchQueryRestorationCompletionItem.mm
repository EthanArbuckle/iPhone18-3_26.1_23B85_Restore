@interface SearchQueryRestorationCompletionItem
- (BOOL)isEquivalentTo:(id)to;
- (NSArray)tableItemEqualityInfo;
- (NSString)matchedTextForInputAnalytics;
- (SFSearchResult)sfSearchResultValue;
- (SearchQueryRestorationCompletionItem)initWithQuery:(id)query;
- (id)completionTableViewCellForCompletionList:(id)list;
- (id)searchFieldIconForCompletionList:(id)list;
- (void)auditAcceptedCompletionWithRank:(unint64_t)rank;
- (void)configureCompletionTableViewCell:(id)cell forCompletionList:(id)list;
@end

@implementation SearchQueryRestorationCompletionItem

- (SearchQueryRestorationCompletionItem)initWithQuery:(id)query
{
  queryCopy = query;
  v10.receiver = self;
  v10.super_class = SearchQueryRestorationCompletionItem;
  v6 = [(SearchQueryRestorationCompletionItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queryToRestore, query);
    v7->_parsecQueryID = [(WBSCompletionQuery *)v7->_queryToRestore queryID];
    v8 = v7;
  }

  return v7;
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
  v4 = objc_alloc(MEMORY[0x277D75B48]);
  completionTableViewCellReuseIdentifier = [(SearchQueryRestorationCompletionItem *)self completionTableViewCellReuseIdentifier];
  v6 = [v4 initWithStyle:0 reuseIdentifier:completionTableViewCellReuseIdentifier];

  return v6;
}

- (void)configureCompletionTableViewCell:(id)cell forCompletionList:(id)list
{
  v5 = MEMORY[0x277CCACA8];
  cellCopy = cell;
  v6 = _WBSLocalizedString();
  queryString = [(WBSCompletionQuery *)self->_queryToRestore queryString];
  v8 = [v5 stringWithFormat:v6, queryString];
  textLabel = [cellCopy textLabel];
  [textLabel setText:v8];

  [(UITableViewCell *)cellCopy safari_setCompletionIcon:?];
}

- (void)auditAcceptedCompletionWithRank:(unint64_t)rank
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didAcceptCompletionItemOfType:3 atRank:rank];
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

    parsecDomainIdentifier = [(SearchQueryRestorationCompletionItem *)self parsecDomainIdentifier];
    v8 = [@"com.apple.Safari.CompletionList." stringByAppendingString:parsecDomainIdentifier];

    queryString = [(WBSCompletionQuery *)self->_queryToRestore queryString];
    [(SFSearchResult *)self->_sfSearchResultValue setUserInput:queryString];

    [(SFSearchResult *)self->_sfSearchResultValue setQueryId:[(WBSCompletionQuery *)self->_queryToRestore queryID]];
    [(SFSearchResult *)self->_sfSearchResultValue setResultBundleId:v8];
    [(SFSearchResult *)self->_sfSearchResultValue setSectionBundleIdentifier:v8];
    v10 = MEMORY[0x277D4C690];
    queryString2 = [(WBSCompletionQuery *)self->_queryToRestore queryString];
    v12 = [v10 textWithString:queryString2];
    [(SFSearchResult *)self->_sfSearchResultValue setTitle:v12];

    [(SFSearchResult *)self->_sfSearchResultValue setType:2];
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
    queryToRestore = [(SearchQueryRestorationCompletionItem *)self queryToRestore];
    queryString = [queryToRestore queryString];
    queryToRestore2 = [toCopy queryToRestore];
    queryString2 = [queryToRestore2 queryString];
    v9 = WBSIsEqual();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSArray)tableItemEqualityInfo
{
  queryToRestore = [(SearchQueryRestorationCompletionItem *)self queryToRestore];
  queryString = [queryToRestore queryString];
  v11 = CompletionListTableItemEqualityInfo(1, v4, v5, v6, v7, v8, v9, v10, queryString);

  return v11;
}

- (NSString)matchedTextForInputAnalytics
{
  queryToRestore = [(SearchQueryRestorationCompletionItem *)self queryToRestore];
  queryString = [queryToRestore queryString];

  return queryString;
}

@end