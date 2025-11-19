@interface PencilInputCompletionItem
- (BOOL)isEquivalentTo:(id)a3;
- (NSArray)tableItemEqualityInfo;
- (NSString)matchedTextForInputAnalytics;
- (NSString)text;
- (PencilInputCompletionItem)initWithUserQuery:(id)a3 navigationURL:(id)a4 searchQuery:(id)a5;
- (SFSearchResult)sfSearchResultValue;
- (id)completionTableViewCellForCompletionList:(id)a3;
- (id)searchFieldIconForCompletionList:(id)a3;
- (int64_t)matchTypeForInputAnalytics;
- (void)acceptCompletionWithActionHandler:(id)a3;
- (void)auditAcceptedCompletionWithRank:(unint64_t)a3;
- (void)configureCompletionTableViewCell:(id)a3 forCompletionList:(id)a4;
@end

@implementation PencilInputCompletionItem

- (PencilInputCompletionItem)initWithUserQuery:(id)a3 navigationURL:(id)a4 searchQuery:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = PencilInputCompletionItem;
  v12 = [(PencilInputCompletionItem *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userQuery, a3);
    objc_storeStrong(&v13->_navigationURL, a4);
    objc_storeStrong(&v13->_searchQuery, a5);
    v13->_parsecQueryID = [(WBSCompletionQuery *)v13->_userQuery queryID];
    v14 = v13;
  }

  return v13;
}

- (id)searchFieldIconForCompletionList:(id)a3
{
  v3 = MEMORY[0x277D755B8];
  v4 = systemImageNameForCompletionIcon(7);
  v5 = [v3 systemImageNamed:v4];

  return v5;
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

    [(SFSearchResult *)self->_sfSearchResultValue setUserInput:self->_searchQuery];
    [(SFSearchResult *)self->_sfSearchResultValue setQueryId:[(WBSCompletionQuery *)self->_userQuery queryID]];
    v7 = [@"com.apple.Safari.CompletionList." stringByAppendingString:@"PencilInput"];
    [(SFSearchResult *)self->_sfSearchResultValue setResultBundleId:v7];
    [(SFSearchResult *)self->_sfSearchResultValue setSectionBundleIdentifier:v7];
    [(SFSearchResult *)self->_sfSearchResultValue setType:2];
    v3 = self->_sfSearchResultValue;
  }

  return v3;
}

- (id)completionTableViewCellForCompletionList:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277D75B48]);
  v5 = [(PencilInputCompletionItem *)self completionTableViewCellReuseIdentifier];
  v6 = [v4 initWithStyle:3 reuseIdentifier:v5];

  return v6;
}

- (NSString)text
{
  navigationURL = self->_navigationURL;
  if (navigationURL)
  {
    v4 = [(NSURL *)navigationURL safari_userVisibleString];
    v5 = [v4 safari_simplifiedUserVisibleURLString];

    v6 = MEMORY[0x277CCACA8];
    v7 = _WBSLocalizedString();
    v8 = [v6 stringWithFormat:v7, v5];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v5 = _WBSLocalizedString();
    v8 = [v9 stringWithFormat:v5, self->_searchQuery];
  }

  return v8;
}

- (void)configureCompletionTableViewCell:(id)a3 forCompletionList:(id)a4
{
  v7 = a3;
  v5 = [(PencilInputCompletionItem *)self text];
  v6 = [v7 textLabel];
  [v6 setText:v5];

  [(UITableViewCell *)v7 safari_setCompletionIcon:?];
  [v7 setAccessibilityIdentifier:@"PencilInput"];
}

- (void)acceptCompletionWithActionHandler:(id)a3
{
  if (self->_navigationURL)
  {
    [a3 goToURL:?];
  }

  else
  {
    [a3 search:self->_searchQuery];
  }
}

- (void)auditAcceptedCompletionWithRank:(unint64_t)a3
{
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didAcceptCompletionItemOfType:4 atRank:a3];
}

- (BOOL)isEquivalentTo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PencilInputCompletionItem *)self text];
    v6 = [v4 text];
    v7 = WBSIsEqual();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)tableItemEqualityInfo
{
  v2 = [(PencilInputCompletionItem *)self text];
  v10 = CompletionListTableItemEqualityInfo(1, v3, v4, v5, v6, v7, v8, v9, v2);

  return v10;
}

- (NSString)matchedTextForInputAnalytics
{
  v3 = [(NSURL *)self->_navigationURL absoluteString];
  searchQuery = v3;
  if (!v3)
  {
    searchQuery = self->_searchQuery;
  }

  v5 = searchQuery;

  return searchQuery;
}

- (int64_t)matchTypeForInputAnalytics
{
  if (self->_navigationURL)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end