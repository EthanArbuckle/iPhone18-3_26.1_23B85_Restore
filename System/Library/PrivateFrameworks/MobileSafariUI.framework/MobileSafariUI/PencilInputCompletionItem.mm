@interface PencilInputCompletionItem
- (BOOL)isEquivalentTo:(id)to;
- (NSArray)tableItemEqualityInfo;
- (NSString)matchedTextForInputAnalytics;
- (NSString)text;
- (PencilInputCompletionItem)initWithUserQuery:(id)query navigationURL:(id)l searchQuery:(id)searchQuery;
- (SFSearchResult)sfSearchResultValue;
- (id)completionTableViewCellForCompletionList:(id)list;
- (id)searchFieldIconForCompletionList:(id)list;
- (int64_t)matchTypeForInputAnalytics;
- (void)acceptCompletionWithActionHandler:(id)handler;
- (void)auditAcceptedCompletionWithRank:(unint64_t)rank;
- (void)configureCompletionTableViewCell:(id)cell forCompletionList:(id)list;
@end

@implementation PencilInputCompletionItem

- (PencilInputCompletionItem)initWithUserQuery:(id)query navigationURL:(id)l searchQuery:(id)searchQuery
{
  queryCopy = query;
  lCopy = l;
  searchQueryCopy = searchQuery;
  v16.receiver = self;
  v16.super_class = PencilInputCompletionItem;
  v12 = [(PencilInputCompletionItem *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userQuery, query);
    objc_storeStrong(&v13->_navigationURL, l);
    objc_storeStrong(&v13->_searchQuery, searchQuery);
    v13->_parsecQueryID = [(WBSCompletionQuery *)v13->_userQuery queryID];
    v14 = v13;
  }

  return v13;
}

- (id)searchFieldIconForCompletionList:(id)list
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
    safari_sfSearchResultWithUniqueIdentifier = [MEMORY[0x277D4C5D0] safari_sfSearchResultWithUniqueIdentifier];
    v6 = self->_sfSearchResultValue;
    self->_sfSearchResultValue = safari_sfSearchResultWithUniqueIdentifier;

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

- (id)completionTableViewCellForCompletionList:(id)list
{
  v4 = objc_alloc(MEMORY[0x277D75B48]);
  completionTableViewCellReuseIdentifier = [(PencilInputCompletionItem *)self completionTableViewCellReuseIdentifier];
  v6 = [v4 initWithStyle:3 reuseIdentifier:completionTableViewCellReuseIdentifier];

  return v6;
}

- (NSString)text
{
  navigationURL = self->_navigationURL;
  if (navigationURL)
  {
    safari_userVisibleString = [(NSURL *)navigationURL safari_userVisibleString];
    safari_simplifiedUserVisibleURLString = [safari_userVisibleString safari_simplifiedUserVisibleURLString];

    v6 = MEMORY[0x277CCACA8];
    v7 = _WBSLocalizedString();
    v8 = [v6 stringWithFormat:v7, safari_simplifiedUserVisibleURLString];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    safari_simplifiedUserVisibleURLString = _WBSLocalizedString();
    v8 = [v9 stringWithFormat:safari_simplifiedUserVisibleURLString, self->_searchQuery];
  }

  return v8;
}

- (void)configureCompletionTableViewCell:(id)cell forCompletionList:(id)list
{
  cellCopy = cell;
  text = [(PencilInputCompletionItem *)self text];
  textLabel = [cellCopy textLabel];
  [textLabel setText:text];

  [(UITableViewCell *)cellCopy safari_setCompletionIcon:?];
  [cellCopy setAccessibilityIdentifier:@"PencilInput"];
}

- (void)acceptCompletionWithActionHandler:(id)handler
{
  if (self->_navigationURL)
  {
    [handler goToURL:?];
  }

  else
  {
    [handler search:self->_searchQuery];
  }
}

- (void)auditAcceptedCompletionWithRank:(unint64_t)rank
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didAcceptCompletionItemOfType:4 atRank:rank];
}

- (BOOL)isEquivalentTo:(id)to
{
  toCopy = to;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [(PencilInputCompletionItem *)self text];
    text2 = [toCopy text];
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
  text = [(PencilInputCompletionItem *)self text];
  v10 = CompletionListTableItemEqualityInfo(1, v3, v4, v5, v6, v7, v8, v9, text);

  return v10;
}

- (NSString)matchedTextForInputAnalytics
{
  absoluteString = [(NSURL *)self->_navigationURL absoluteString];
  searchQuery = absoluteString;
  if (!absoluteString)
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