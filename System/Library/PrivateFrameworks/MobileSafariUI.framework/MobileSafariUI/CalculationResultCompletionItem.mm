@interface CalculationResultCompletionItem
- (BOOL)isEquivalentTo:(id)to;
- (CalculationResultCompletionItem)initWithQuery:(id)query calculationResult:(id)result;
- (NSArray)tableItemEqualityInfo;
- (SFSearchResult)sfSearchResultValue;
- (id)completionTableViewCellForCompletionList:(id)list;
- (id)searchFieldIconForCompletionList:(id)list;
- (void)acceptCompletionWithActionHandler:(id)handler;
- (void)auditAcceptedCompletionWithRank:(unint64_t)rank;
@end

@implementation CalculationResultCompletionItem

- (CalculationResultCompletionItem)initWithQuery:(id)query calculationResult:(id)result
{
  queryCopy = query;
  resultCopy = result;
  v13.receiver = self;
  v13.super_class = CalculationResultCompletionItem;
  v9 = [(CalculationResultCompletionItem *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_query, query);
    v10->_parsecQueryID = [queryCopy queryID];
    objc_storeStrong(&v10->_calculationResult, result);
    v11 = v10;
  }

  return v10;
}

- (id)searchFieldIconForCompletionList:(id)list
{
  v3 = MEMORY[0x277D755B8];
  v4 = systemImageNameForCompletionIcon(4);
  v5 = [v3 systemImageNamed:v4];

  return v5;
}

- (void)acceptCompletionWithActionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(WBSCalculationResult *)self->_calculationResult isCurrencyConversion])
  {
    [handlerCopy goToURLString:*MEMORY[0x277D4A6D0]];
  }

  else
  {
    formattedExpression = [(WBSCalculationResult *)self->_calculationResult formattedExpression];
    [handlerCopy search:formattedExpression];
  }
}

- (void)auditAcceptedCompletionWithRank:(unint64_t)rank
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didAcceptCompletionItemOfType:1 atRank:rank];
}

- (id)completionTableViewCellForCompletionList:(id)list
{
  v17[1] = *MEMORY[0x277D85DE8];
  listCopy = list;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v5 = getSearchUIClass_softClass;
  v16 = getSearchUIClass_softClass;
  if (!getSearchUIClass_softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getSearchUIClass_block_invoke;
    v12[3] = &unk_2781D4BD8;
    v12[4] = &v13;
    __getSearchUIClass_block_invoke(v12);
    v5 = v14[3];
  }

  v6 = v5;
  _Block_object_dispose(&v13, 8);
  sfSearchResultValue = [(CalculationResultCompletionItem *)self sfSearchResultValue];
  v17[0] = sfSearchResultValue;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v9 = [v5 rowViewsForResults:v8 feedbackDelegate:listCopy];
  firstObject = [v9 firstObject];

  return firstObject;
}

- (SFSearchResult)sfSearchResultValue
{
  v51[1] = *MEMORY[0x277D85DE8];
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

    queryString = [(WBSCompletionQuery *)self->_query queryString];
    [(SFSearchResult *)self->_sfSearchResultValue setUserInput:queryString];

    [(SFSearchResult *)self->_sfSearchResultValue setQueryId:[(WBSCompletionQuery *)self->_query queryID]];
    v8 = [@"com.apple.Safari.CompletionList." stringByAppendingString:@"CalculationResult"];
    [(SFSearchResult *)self->_sfSearchResultValue setResultBundleId:v8];
    [(SFSearchResult *)self->_sfSearchResultValue setSectionBundleIdentifier:v8];
    v9 = MEMORY[0x277D4C690];
    p_calculationResult = &self->_calculationResult;
    formattedEquation = [(WBSCalculationResult *)self->_calculationResult formattedEquation];
    v12 = [v9 textWithString:formattedEquation];
    [(SFSearchResult *)self->_sfSearchResultValue setTitle:v12];

    if ([(WBSCalculationResult *)self->_calculationResult isCalculation])
    {
      v13 = 6;
    }

    else
    {
      v13 = 7;
    }

    [(SFSearchResult *)self->_sfSearchResultValue setType:v13];
    v14 = objc_alloc_init(MEMORY[0x277D4C5A0]);
    v15 = MEMORY[0x277CCACA8];
    formattedExpression = [(WBSCalculationResult *)*p_calculationResult formattedExpression];
    v17 = [v15 stringWithFormat:@"%@ =", formattedExpression];
    [v14 setTitle:v17];

    formattedResult = [(WBSCalculationResult *)*p_calculationResult formattedResult];
    [v14 setSubtitle:formattedResult];

    [v14 setSubtitleIsEmphasized:1];
    if (objc_opt_respondsToSelector())
    {
      v19 = objc_alloc_init(MEMORY[0x277D4C698]);
      formattedResult2 = [(WBSCalculationResult *)self->_calculationResult formattedResult];
      [v19 setCopyableString:formattedResult2];

      v21 = objc_alloc_init(MEMORY[0x277D4C2D8]);
      [v21 setCopyableItem:v19];
      v22 = objc_alloc_init(MEMORY[0x277D4C2B0]);
      [v22 setCommand:v21];
      v51[0] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
      [v14 setButtonItems:v23];
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x2050000000;
    v24 = getSFCardClass_softClass;
    v47 = getSFCardClass_softClass;
    if (!getSFCardClass_softClass)
    {
      v39 = MEMORY[0x277D85DD0];
      v40 = 3221225472;
      v41 = __getSFCardClass_block_invoke;
      v42 = &unk_2781D4BD8;
      v43 = &v44;
      __getSFCardClass_block_invoke(&v39);
      v24 = v45[3];
    }

    v25 = v24;
    _Block_object_dispose(&v44, 8);
    v26 = [[v24 alloc] init];
    if ([(WBSCalculationResult *)self->_calculationResult isCurrencyConversion])
    {
      [v14 setSeparatorStyle:1];
      v44 = 0;
      v45 = &v44;
      v46 = 0x2050000000;
      v27 = getSFLocalImageClass_softClass;
      v47 = getSFLocalImageClass_softClass;
      if (!getSFLocalImageClass_softClass)
      {
        v39 = MEMORY[0x277D85DD0];
        v40 = 3221225472;
        v41 = __getSFLocalImageClass_block_invoke;
        v42 = &unk_2781D4BD8;
        v43 = &v44;
        __getSFLocalImageClass_block_invoke(&v39);
        v27 = v45[3];
      }

      v28 = v27;
      _Block_object_dispose(&v44, 8);
      v29 = [[v27 alloc] init];
      [v29 setLocalImageType:3];
      [v29 setSize:{78.0, 12.0}];
      v44 = 0;
      v45 = &v44;
      v46 = 0x2050000000;
      v30 = getSFRichTextClass_softClass;
      v47 = getSFRichTextClass_softClass;
      if (!getSFRichTextClass_softClass)
      {
        v39 = MEMORY[0x277D85DD0];
        v40 = 3221225472;
        v41 = __getSFRichTextClass_block_invoke;
        v42 = &unk_2781D4BD8;
        v43 = &v44;
        __getSFRichTextClass_block_invoke(&v39);
        v30 = v45[3];
      }

      v31 = v30;
      _Block_object_dispose(&v44, 8);
      v32 = [[v30 alloc] init];
      v50 = v29;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
      [v32 setIcons:v33];

      v44 = 0;
      v45 = &v44;
      v46 = 0x2050000000;
      v34 = getSFAttributionFooterCardSectionClass_softClass;
      v47 = getSFAttributionFooterCardSectionClass_softClass;
      if (!getSFAttributionFooterCardSectionClass_softClass)
      {
        v39 = MEMORY[0x277D85DD0];
        v40 = 3221225472;
        v41 = __getSFAttributionFooterCardSectionClass_block_invoke;
        v42 = &unk_2781D4BD8;
        v43 = &v44;
        __getSFAttributionFooterCardSectionClass_block_invoke(&v39);
        v34 = v45[3];
      }

      v35 = v34;
      _Block_object_dispose(&v44, 8);
      v36 = [[v34 alloc] init];
      [v36 setTrailingAttribution:v32];
      v49[0] = v14;
      v49[1] = v36;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
      [v26 setCardSections:v37];
    }

    else
    {
      v48 = v14;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
      [v26 setCardSections:v29];
    }

    [(SFSearchResult *)self->_sfSearchResultValue setInlineCard:v26];
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
    formattedExpression = [(WBSCalculationResult *)self->_calculationResult formattedExpression];
    formattedExpression2 = [toCopy[4] formattedExpression];
    v7 = [formattedExpression isEqualToString:formattedExpression2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)tableItemEqualityInfo
{
  formattedExpression = [(WBSCalculationResult *)self->_calculationResult formattedExpression];
  v10 = CompletionListTableItemEqualityInfo(1, v3, v4, v5, v6, v7, v8, v9, formattedExpression);

  return v10;
}

@end