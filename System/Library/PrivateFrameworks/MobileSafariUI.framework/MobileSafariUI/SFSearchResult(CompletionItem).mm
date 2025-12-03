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
  v5 = [v4 cachedIconForParsecResult:self];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    [v4 cacheIconForParsecResult:self];
    v8 = MEMORY[0x277D755B8];
    v9 = systemImageNameForCompletionIcon(5);
    v7 = [v8 systemImageNamed:v9];
  }

  return v7;
}

- (id)completionTableViewCellForCompletionList:()CompletionItem
{
  v4 = a3;
  v5 = [getSearchUIClass() rowViewForResult:self style:0 feedbackDelegate:v4];

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
  [self safari_configureBackgroundColorForCompletionList:a4];
  resultType = [self resultType];
  [v7 setAccessibilityIdentifier:resultType];

  if (objc_opt_respondsToSelector())
  {
    [v7 updateWithResult:self];
  }
}

- (NewsCompletionHeaderView)completionTableHeaderView
{
  if ([(SFSearchResult *)self safari_willShowNewsHeader])
  {
    v2 = [NewsCompletionHeaderView alloc];
    completionTableHeaderViewReuseIdentifier = [self completionTableHeaderViewReuseIdentifier];
    v4 = [(NewsCompletionHeaderView *)v2 initWithReuseIdentifier:completionTableHeaderViewReuseIdentifier];
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
    [SearchUIClass hasValidCommandForResult:self feedbackListener:v3];
  }
}

- (void)auditAcceptedCompletionWithRank:()CompletionItem
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didAcceptCompletionItemOfType:10 atRank:a3];
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
  v4 = [v2 reuseIdentifierForResult:self];
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
  userVisibleURLString = [self userVisibleURLString];
  completedQuery = [self completedQuery];
  LODWORD(v4) = [v4 shouldAutocompleteToURL:userVisibleURLString fromUserTypedString:v5 withPredictedQueryString:completedQuery];

  if (v4)
  {
    completedQuery2 = [self completedQuery];
  }

  else
  {
    completedQuery2 = 0;
  }

  return completedQuery2;
}

- (uint64_t)isEquivalentTo:()CompletionItem
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    title = [self title];
    text = [title text];
    title2 = [v5 title];
    text2 = [title2 text];
    v10 = WBSIsEqual();

    if (v10)
    {
      userVisibleURLString = [self userVisibleURLString];
      userVisibleURLString2 = [v5 userVisibleURLString];
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
  title = [self title];
  text = [title text];
  userVisibleURLString = [self userVisibleURLString];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
  v12 = CompletionListTableItemEqualityInfo(3, v5, v6, v7, v8, v9, v10, v11, text);

  return v12;
}

- (uint64_t)completionCellBackgroundModeInTopSection
{
  v2 = [self safari_firstInlineCardSectionOfClass:objc_opt_class()];

  if (v2)
  {
    return 0;
  }

  v3 = [self safari_firstInlineCardSectionOfClass:objc_opt_class()];

  if (v3)
  {
    return 0;
  }

  inlineCard = [self inlineCard];
  backgroundColor = [inlineCard backgroundColor];

  if (backgroundColor)
  {
    return 2;
  }

  inlineCard2 = [self inlineCard];
  cardSections = [inlineCard2 cardSections];
  v9 = [cardSections safari_containsObjectPassingTest:&__block_literal_global_47];

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
  if ([a3 shouldOverrideBackgroundViewForItem:self])
  {
    inlineCard = [self inlineCard];
    [inlineCard setBackgroundColor:0];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    inlineCard2 = [self inlineCard];
    cardSections = [inlineCard2 cardSections];

    v7 = [cardSections countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(cardSections);
          }

          [*(*(&v11 + 1) + 8 * v10++) setBackgroundColor:0];
        }

        while (v8 != v10);
        v8 = [cardSections countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (id)urlStringForHistoryServiceCompletionList
{
  sfSearchResultValue = [self sfSearchResultValue];
  userVisibleURLString = [sfSearchResultValue userVisibleURLString];

  return userVisibleURLString;
}

- (void)safari_setCompletionIconForCompactRow:()CompletionItem
{
  v4 = [self safari_firstInlineCardSectionOfClass:objc_opt_class()];
  if (v4)
  {
    v10 = v4;
    image = [v4 image];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = systemImageNameForCompletionIcon(a3);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([image symbolName], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", v6), v7, (v8 & 1) == 0))
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
  v2 = [self safari_firstInlineCardSectionOfClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    title = [v2 title];
    text = [title text];
  }

  else
  {
    v6 = [self safari_firstInlineCardSectionOfClass:objc_opt_class()];
    title = v6;
    if (v6)
    {
      leadingText = [v6 leadingText];
      text = [leadingText text];
    }

    else
    {
      leadingText = [self safari_firstInlineCardSectionOfClass:objc_opt_class()];
      title2 = [leadingText title];
      text = [title2 text];
    }
  }

  return text;
}

- (__CFString)completionTableHeaderViewReuseIdentifier
{
  if ([(SFSearchResult *)self safari_willShowNewsHeader])
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
  if ([(SFSearchResult *)self safari_willShowNewsHeader])
  {
    v7 = v9;
    title = [v6 title];
    [v7 setHeaderText:title];
  }
}

- (id)userVisibleURLString
{
  safari_punchoutURL = [(SFSearchResult *)self safari_punchoutURL];
  safari_userVisibleString = [safari_punchoutURL safari_userVisibleString];

  return safari_userVisibleString;
}

@end