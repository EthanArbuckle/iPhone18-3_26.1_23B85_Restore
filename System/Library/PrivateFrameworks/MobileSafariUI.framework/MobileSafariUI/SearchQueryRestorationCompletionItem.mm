@interface SearchQueryRestorationCompletionItem
- (BOOL)isEquivalentTo:(id)a3;
- (NSArray)tableItemEqualityInfo;
- (NSString)matchedTextForInputAnalytics;
- (SFSearchResult)sfSearchResultValue;
- (SearchQueryRestorationCompletionItem)initWithQuery:(id)a3;
- (id)completionTableViewCellForCompletionList:(id)a3;
- (id)searchFieldIconForCompletionList:(id)a3;
- (void)auditAcceptedCompletionWithRank:(unint64_t)a3;
- (void)configureCompletionTableViewCell:(id)a3 forCompletionList:(id)a4;
@end

@implementation SearchQueryRestorationCompletionItem

- (SearchQueryRestorationCompletionItem)initWithQuery:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SearchQueryRestorationCompletionItem;
  v6 = [(SearchQueryRestorationCompletionItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queryToRestore, a3);
    v7->_parsecQueryID = [(WBSCompletionQuery *)v7->_queryToRestore queryID];
    v8 = v7;
  }

  return v7;
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
  v4 = objc_alloc(MEMORY[0x277D75B48]);
  v5 = [(SearchQueryRestorationCompletionItem *)self completionTableViewCellReuseIdentifier];
  v6 = [v4 initWithStyle:0 reuseIdentifier:v5];

  return v6;
}

- (void)configureCompletionTableViewCell:(id)a3 forCompletionList:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v10 = a3;
  v6 = _WBSLocalizedString();
  v7 = [(WBSCompletionQuery *)self->_queryToRestore queryString];
  v8 = [v5 stringWithFormat:v6, v7];
  v9 = [v10 textLabel];
  [v9 setText:v8];

  [(UITableViewCell *)v10 safari_setCompletionIcon:?];
}

- (void)auditAcceptedCompletionWithRank:(unint64_t)a3
{
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didAcceptCompletionItemOfType:3 atRank:a3];
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

    v7 = [(SearchQueryRestorationCompletionItem *)self parsecDomainIdentifier];
    v8 = [@"com.apple.Safari.CompletionList." stringByAppendingString:v7];

    v9 = [(WBSCompletionQuery *)self->_queryToRestore queryString];
    [(SFSearchResult *)self->_sfSearchResultValue setUserInput:v9];

    [(SFSearchResult *)self->_sfSearchResultValue setQueryId:[(WBSCompletionQuery *)self->_queryToRestore queryID]];
    [(SFSearchResult *)self->_sfSearchResultValue setResultBundleId:v8];
    [(SFSearchResult *)self->_sfSearchResultValue setSectionBundleIdentifier:v8];
    v10 = MEMORY[0x277D4C690];
    v11 = [(WBSCompletionQuery *)self->_queryToRestore queryString];
    v12 = [v10 textWithString:v11];
    [(SFSearchResult *)self->_sfSearchResultValue setTitle:v12];

    [(SFSearchResult *)self->_sfSearchResultValue setType:2];
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
    v5 = [(SearchQueryRestorationCompletionItem *)self queryToRestore];
    v6 = [v5 queryString];
    v7 = [v4 queryToRestore];
    v8 = [v7 queryString];
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
  v2 = [(SearchQueryRestorationCompletionItem *)self queryToRestore];
  v3 = [v2 queryString];
  v11 = CompletionListTableItemEqualityInfo(1, v4, v5, v6, v7, v8, v9, v10, v3);

  return v11;
}

- (NSString)matchedTextForInputAnalytics
{
  v2 = [(SearchQueryRestorationCompletionItem *)self queryToRestore];
  v3 = [v2 queryString];

  return v3;
}

@end