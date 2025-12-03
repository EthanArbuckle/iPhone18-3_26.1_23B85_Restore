@interface FindOnPageCompletionItem
- (BOOL)isEquivalentTo:(id)to;
- (FindOnPageCompletionItem)initWithString:(id)string numberOfMatches:(unint64_t)matches forQueryID:(int64_t)d;
- (NSArray)tableItemEqualityInfo;
- (id)completionTableViewCellForCompletionList:(id)list;
- (id)searchFieldIconForCompletionList:(id)list;
- (id)string;
- (void)acceptCompletionWithActionHandler:(id)handler;
- (void)auditAcceptedCompletionWithRank:(unint64_t)rank;
- (void)configureCompletionTableViewCell:(id)cell forCompletionList:(id)list;
- (void)setQuery:(id)query;
@end

@implementation FindOnPageCompletionItem

- (FindOnPageCompletionItem)initWithString:(id)string numberOfMatches:(unint64_t)matches forQueryID:(int64_t)d
{
  stringCopy = string;
  v16.receiver = self;
  v16.super_class = FindOnPageCompletionItem;
  v9 = [(FindOnPageCompletionItem *)&v16 init];
  if (v9)
  {
    v10 = [MEMORY[0x277D4C690] textWithString:stringCopy];
    [(FindOnPageCompletionItem *)v9 setTitle:v10];

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(FindOnPageCompletionItem *)v9 setIdentifier:uUIDString];

    [(FindOnPageCompletionItem *)v9 setType:2];
    v13 = [@"com.apple.Safari.CompletionList." stringByAppendingString:@"FindOnPage"];
    [(FindOnPageCompletionItem *)v9 setResultBundleId:v13];
    [(FindOnPageCompletionItem *)v9 setSectionBundleIdentifier:v13];
    v9->_parsecQueryID = d;
    v9->_numberOfMatches = matches;
    v14 = v9;
  }

  return v9;
}

- (id)searchFieldIconForCompletionList:(id)list
{
  v3 = MEMORY[0x277D755B8];
  v4 = systemImageNameForCompletionIcon(8);
  v5 = [v3 systemImageNamed:v4];

  return v5;
}

- (id)completionTableViewCellForCompletionList:(id)list
{
  v4 = [FindOnPageCompletionTableViewCell alloc];
  IsPad = _SFDeviceIsPad();
  completionTableViewCellReuseIdentifier = [(FindOnPageCompletionItem *)self completionTableViewCellReuseIdentifier];
  v7 = [(FindOnPageCompletionTableViewCell *)v4 initWithStyle:IsPad reuseIdentifier:completionTableViewCellReuseIdentifier];

  return v7;
}

- (id)string
{
  title = [(FindOnPageCompletionItem *)self title];
  text = [title text];

  return text;
}

- (void)configureCompletionTableViewCell:(id)cell forCompletionList:(id)list
{
  cellCopy = cell;
  v5 = MEMORY[0x277CCACA8];
  v6 = _WBSLocalizedString();
  string = [(FindOnPageCompletionItem *)self string];
  v8 = [v5 stringWithFormat:v6, string];
  textLabel = [cellCopy textLabel];
  [textLabel setText:v8];

  if (_SFDeviceIsPad())
  {
    numberOfMatches = self->_numberOfMatches;
    if (numberOfMatches == *MEMORY[0x277D292B8])
    {
      v11 = &stru_2827BF158;
    }

    else if (numberOfMatches == 1)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = _WBSLocalizedString();
      v11 = [v12 localizedStringWithFormat:v13, 1];
    }

    else if (numberOfMatches)
    {
      v14 = *MEMORY[0x277CDB930];
      v15 = MEMORY[0x277CCACA8];
      if (numberOfMatches >= *MEMORY[0x277CDB930])
      {
        v16 = _WBSLocalizedString();
        [v15 localizedStringWithFormat:v16, v14];
      }

      else
      {
        v16 = _WBSLocalizedString();
        [v15 localizedStringWithFormat:v16, self->_numberOfMatches];
      }
      v11 = ;
    }

    else
    {
      v11 = _WBSLocalizedString();
    }

    detailTextLabel = [cellCopy detailTextLabel];
    v18 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [detailTextLabel setFont:v18];

    [detailTextLabel setText:v11];
  }

  [(UITableViewCell *)cellCopy safari_setCompletionIcon:?];
  [cellCopy setAccessibilityIdentifier:@"FindOnPage"];
}

- (void)acceptCompletionWithActionHandler:(id)handler
{
  handlerCopy = handler;
  string = [(FindOnPageCompletionItem *)self string];
  browserController = [handlerCopy browserController];
  tabController = [browserController tabController];
  activeTabDocument = [tabController activeTabDocument];
  findInteraction = [activeTabDocument findInteraction];
  [findInteraction setSearchText:string];

  [handlerCopy findOnPage];
}

- (void)auditAcceptedCompletionWithRank:(unint64_t)rank
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didAcceptCompletionItemOfType:2 atRank:rank];

  mEMORY[0x277D499B8]2 = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8]2 didFindOnPageWithTrigger:2];
}

- (BOOL)isEquivalentTo:(id)to
{
  toCopy = to;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[FindOnPageCompletionItem string](self, "string"), v5 = objc_claimAutoreleasedReturnValue(), [toCopy string], v6 = objc_claimAutoreleasedReturnValue(), v7 = WBSIsEqual(), v6, v5, v7))
  {
    numberOfMatches = self->_numberOfMatches;
    v9 = numberOfMatches == [toCopy numberOfMatches];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSArray)tableItemEqualityInfo
{
  string = [(FindOnPageCompletionItem *)self string];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfMatches];
  v11 = CompletionListTableItemEqualityInfo(2, v4, v5, v6, v7, v8, v9, v10, string);

  return v11;
}

- (void)setQuery:(id)query
{
  queryCopy = query;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_query, query);
    v5 = MEMORY[0x277D4C690];
    queryString = [queryCopy queryString];
    v7 = [v5 textWithString:queryString];
    [(FindOnPageCompletionItem *)self setTitle:v7];
  }
}

@end