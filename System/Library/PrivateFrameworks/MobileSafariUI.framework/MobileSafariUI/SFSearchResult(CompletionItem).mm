@interface SFSearchResult(CompletionItem)
+ (void)safari_prewarmSearchUI;
- (NewsCompletionHeaderView)completionTableHeaderView;
- (__CFString)completionTableHeaderViewReuseIdentifier;
- (__CFString)completionTableViewCellReuseIdentifier;
- (id)completionTableViewCellForCompletionList:()CompletionItem;
- (id)reflectedStringForUserTypedString:()CompletionItem;
- (id)safari_titleForReflection;
- (id)searchFieldIconForCompletionList:()CompletionItem;
- (id)tableItemEqualityInfo;
- (id)urlStringForHistoryServiceCompletionList;
- (id)userVisibleURLString;
- (uint64_t)completionCellBackgroundModeInTopSection;
- (uint64_t)isEquivalentTo:()CompletionItem;
- (void)acceptCompletionWithActionHandler:()CompletionItem;
- (void)auditAcceptedCompletionWithRank:()CompletionItem;
- (void)configureCompletionTableHeaderView:()CompletionItem forCompletionListGroup:;
- (void)configureCompletionTableViewCell:()CompletionItem forCompletionList:;
- (void)safari_configureBackgroundColorForCompletionList:()CompletionItem;
- (void)safari_setCompletionIconForCompactRow:()CompletionItem;
@end

@implementation SFSearchResult(CompletionItem)

- (id)searchFieldIconForCompletionList:()CompletionItem
{
  v4 = a3;
  v5 = [v4 cachedIconForParsecResult:a1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    [v4 cacheIconForParsecResult:a1];
    v8 = MEMORY[0x277D755B8];
    v9 = systemImageNameForCompletionIcon(5);
    v7 = [v8 systemImageNamed:v9];
  }

  return v7;
}

- (id)completionTableViewCellForCompletionList:()CompletionItem
{
  v4 = a3;
  v5 = [getSearchUIClass() rowViewForResult:a1 style:0 feedbackDelegate:v4];

  return v5;
}

+ (void)safari_prewarmSearchUI
{
  if (safari_prewarmSearchUI_onceToken != -1)
  {
    +[SFSearchResult(CompletionItem) safari_prewarmSearchUI];
  }
}

- (void)configureCompletionTableViewCell:()CompletionItem forCompletionList:
{
  v7 = a3;
  [a1 safari_configureBackgroundColorForCompletionList:a4];
  v6 = [a1 resultType];
  [v7 setAccessibilityIdentifier:v6];

  if (objc_opt_respondsToSelector())
  {
    [v7 updateWithResult:a1];
  }
}

- (NewsCompletionHeaderView)completionTableHeaderView
{
  if ([(SFSearchResult *)a1 safari_willShowNewsHeader])
  {
    v2 = [NewsCompletionHeaderView alloc];
    v3 = [a1 completionTableHeaderViewReuseIdentifier];
    v4 = [(NewsCompletionHeaderView *)v2 initWithReuseIdentifier:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)acceptCompletionWithActionHandler:()CompletionItem
{
  getSearchUIClass();
  if (objc_opt_respondsToSelector())
  {
    SearchUIClass = getSearchUIClass();
    v3 = +[(WBSParsecDSession *)UniversalSearchSession];
    [SearchUIClass hasValidCommandForResult:a1 feedbackListener:v3];
  }
}

- (void)auditAcceptedCompletionWithRank:()CompletionItem
{
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didAcceptCompletionItemOfType:10 atRank:a3];
}

- (__CFString)completionTableViewCellReuseIdentifier
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getSearchUITableViewCellClass_softClass;
  v13 = getSearchUITableViewCellClass_softClass;
  if (!getSearchUITableViewCellClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getSearchUITableViewCellClass_block_invoke;
    v9[3] = &unk_2781D4BD8;
    v9[4] = &v10;
    __getSearchUITableViewCellClass_block_invoke(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [v2 reuseIdentifierForResult:a1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"SFSearchResultParsec";
  }

  v7 = v6;

  return v6;
}

- (id)reflectedStringForUserTypedString:()CompletionItem
{
  v4 = MEMORY[0x277D4A030];
  v5 = a3;
  v6 = [a1 userVisibleURLString];
  v7 = [a1 completedQuery];
  LODWORD(v4) = [v4 shouldAutocompleteToURL:v6 fromUserTypedString:v5 withPredictedQueryString:v7];

  if (v4)
  {
    v8 = [a1 completedQuery];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)isEquivalentTo:()CompletionItem
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [a1 title];
    v7 = [v6 text];
    v8 = [v5 title];
    v9 = [v8 text];
    v10 = WBSIsEqual();

    if (v10)
    {
      v11 = [a1 userVisibleURLString];
      v12 = [v5 userVisibleURLString];
      v13 = WBSIsEqual();
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)tableItemEqualityInfo
{
  v2 = [a1 title];
  v3 = [v2 text];
  v4 = [a1 userVisibleURLString];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", a1];
  v12 = CompletionListTableItemEqualityInfo(3, v5, v6, v7, v8, v9, v10, v11, v3);

  return v12;
}

- (uint64_t)completionCellBackgroundModeInTopSection
{
  v2 = [a1 safari_firstInlineCardSectionOfClass:objc_opt_class()];

  if (v2)
  {
    return 0;
  }

  v3 = [a1 safari_firstInlineCardSectionOfClass:objc_opt_class()];

  if (v3)
  {
    return 0;
  }

  v5 = [a1 inlineCard];
  v6 = [v5 backgroundColor];

  if (v6)
  {
    return 2;
  }

  v7 = [a1 inlineCard];
  v8 = [v7 cardSections];
  v9 = [v8 safari_containsObjectPassingTest:&__block_literal_global_47];

  if (v9)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)safari_configureBackgroundColorForCompletionList:()CompletionItem
{
  v16 = *MEMORY[0x277D85DE8];
  if ([a3 shouldOverrideBackgroundViewForItem:a1])
  {
    v4 = [a1 inlineCard];
    [v4 setBackgroundColor:0];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [a1 inlineCard];
    v6 = [v5 cardSections];

    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setBackgroundColor:0];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (id)urlStringForHistoryServiceCompletionList
{
  v1 = [a1 sfSearchResultValue];
  v2 = [v1 userVisibleURLString];

  return v2;
}

- (void)safari_setCompletionIconForCompactRow:()CompletionItem
{
  v4 = [a1 safari_firstInlineCardSectionOfClass:objc_opt_class()];
  if (v4)
  {
    v10 = v4;
    v5 = [v4 image];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = systemImageNameForCompletionIcon(a3);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v5 symbolName], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", v6), v7, (v8 & 1) == 0))
      {
        v9 = objc_alloc_init(MEMORY[0x277D4C688]);
        [v9 setSymbolName:v6];
        [v9 setIsTemplate:1];
        [v10 setImage:v9];
      }
    }

    v4 = v10;
  }
}

- (id)safari_titleForReflection
{
  v2 = [a1 safari_firstInlineCardSectionOfClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 title];
    v5 = [v4 text];
  }

  else
  {
    v6 = [a1 safari_firstInlineCardSectionOfClass:objc_opt_class()];
    v4 = v6;
    if (v6)
    {
      v7 = [v6 leadingText];
      v5 = [v7 text];
    }

    else
    {
      v7 = [a1 safari_firstInlineCardSectionOfClass:objc_opt_class()];
      v8 = [v7 title];
      v5 = [v8 text];
    }
  }

  return v5;
}

- (__CFString)completionTableHeaderViewReuseIdentifier
{
  if ([(SFSearchResult *)a1 safari_willShowNewsHeader])
  {
    return @"ParsecNewsHeaderView";
  }

  else
  {
    return 0;
  }
}

- (void)configureCompletionTableHeaderView:()CompletionItem forCompletionListGroup:
{
  v9 = a3;
  v6 = a4;
  if ([(SFSearchResult *)a1 safari_willShowNewsHeader])
  {
    v7 = v9;
    v8 = [v6 title];
    [v7 setHeaderText:v8];
  }
}

- (id)userVisibleURLString
{
  v1 = [(SFSearchResult *)a1 safari_punchoutURL];
  v2 = [v1 safari_userVisibleString];

  return v2;
}

@end