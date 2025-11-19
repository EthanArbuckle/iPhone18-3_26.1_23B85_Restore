@interface FindOnPageCompletionItem
- (BOOL)isEquivalentTo:(id)a3;
- (FindOnPageCompletionItem)initWithString:(id)a3 numberOfMatches:(unint64_t)a4 forQueryID:(int64_t)a5;
- (NSArray)tableItemEqualityInfo;
- (id)completionTableViewCellForCompletionList:(id)a3;
- (id)searchFieldIconForCompletionList:(id)a3;
- (id)string;
- (void)acceptCompletionWithActionHandler:(id)a3;
- (void)auditAcceptedCompletionWithRank:(unint64_t)a3;
- (void)configureCompletionTableViewCell:(id)a3 forCompletionList:(id)a4;
- (void)setQuery:(id)a3;
@end

@implementation FindOnPageCompletionItem

- (FindOnPageCompletionItem)initWithString:(id)a3 numberOfMatches:(unint64_t)a4 forQueryID:(int64_t)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = FindOnPageCompletionItem;
  v9 = [(FindOnPageCompletionItem *)&v16 init];
  if (v9)
  {
    v10 = [MEMORY[0x277D4C690] textWithString:v8];
    [(FindOnPageCompletionItem *)v9 setTitle:v10];

    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    [(FindOnPageCompletionItem *)v9 setIdentifier:v12];

    [(FindOnPageCompletionItem *)v9 setType:2];
    v13 = [@"com.apple.Safari.CompletionList." stringByAppendingString:@"FindOnPage"];
    [(FindOnPageCompletionItem *)v9 setResultBundleId:v13];
    [(FindOnPageCompletionItem *)v9 setSectionBundleIdentifier:v13];
    v9->_parsecQueryID = a5;
    v9->_numberOfMatches = a4;
    v14 = v9;
  }

  return v9;
}

- (id)searchFieldIconForCompletionList:(id)a3
{
  v3 = MEMORY[0x277D755B8];
  v4 = systemImageNameForCompletionIcon(8);
  v5 = [v3 systemImageNamed:v4];

  return v5;
}

- (id)completionTableViewCellForCompletionList:(id)a3
{
  v4 = [FindOnPageCompletionTableViewCell alloc];
  IsPad = _SFDeviceIsPad();
  v6 = [(FindOnPageCompletionItem *)self completionTableViewCellReuseIdentifier];
  v7 = [(FindOnPageCompletionTableViewCell *)v4 initWithStyle:IsPad reuseIdentifier:v6];

  return v7;
}

- (id)string
{
  v2 = [(FindOnPageCompletionItem *)self title];
  v3 = [v2 text];

  return v3;
}

- (void)configureCompletionTableViewCell:(id)a3 forCompletionList:(id)a4
{
  v19 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = _WBSLocalizedString();
  v7 = [(FindOnPageCompletionItem *)self string];
  v8 = [v5 stringWithFormat:v6, v7];
  v9 = [v19 textLabel];
  [v9 setText:v8];

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

    v17 = [v19 detailTextLabel];
    v18 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [v17 setFont:v18];

    [v17 setText:v11];
  }

  [(UITableViewCell *)v19 safari_setCompletionIcon:?];
  [v19 setAccessibilityIdentifier:@"FindOnPage"];
}

- (void)acceptCompletionWithActionHandler:(id)a3
{
  v9 = a3;
  v4 = [(FindOnPageCompletionItem *)self string];
  v5 = [v9 browserController];
  v6 = [v5 tabController];
  v7 = [v6 activeTabDocument];
  v8 = [v7 findInteraction];
  [v8 setSearchText:v4];

  [v9 findOnPage];
}

- (void)auditAcceptedCompletionWithRank:(unint64_t)a3
{
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didAcceptCompletionItemOfType:2 atRank:a3];

  v5 = [MEMORY[0x277D499B8] sharedLogger];
  [v5 didFindOnPageWithTrigger:2];
}

- (BOOL)isEquivalentTo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[FindOnPageCompletionItem string](self, "string"), v5 = objc_claimAutoreleasedReturnValue(), [v4 string], v6 = objc_claimAutoreleasedReturnValue(), v7 = WBSIsEqual(), v6, v5, v7))
  {
    numberOfMatches = self->_numberOfMatches;
    v9 = numberOfMatches == [v4 numberOfMatches];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSArray)tableItemEqualityInfo
{
  v3 = [(FindOnPageCompletionItem *)self string];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfMatches];
  v11 = CompletionListTableItemEqualityInfo(2, v4, v5, v6, v7, v8, v9, v10, v3);

  return v11;
}

- (void)setQuery:(id)a3
{
  v8 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_query, a3);
    v5 = MEMORY[0x277D4C690];
    v6 = [v8 queryString];
    v7 = [v5 textWithString:v6];
    [(FindOnPageCompletionItem *)self setTitle:v7];
  }
}

@end