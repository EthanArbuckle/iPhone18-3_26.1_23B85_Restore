@interface UniversalSearchCompletionProvider
- (BOOL)shouldHideParsecResult:(id)a3 basedOnHideRankGivenTopHit:(id)a4 indexOfTopHitInFrequentlyVisitedSites:(unint64_t *)a5;
- (UniversalSearchCompletionProvider)initWithFrequentlyVisitedSitesController:(id)a3;
- (id)completionsForQuery:(id)a3;
- (id)currentInputTypeForSession:(id)a3;
- (void)_parsecBagDidLoad:(id)a3;
- (void)_updateInputMode:(id)a3;
- (void)_updateStateFromBag:(id)a3;
- (void)currentKeyboardIdentifierWithLayoutsForSession:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)session:(id)a3 didReceiveResults:(id)a4 forQuery:(id)a5;
- (void)setParsecSearchSession:(id)a3;
- (void)setQueryToComplete:(id)a3;
@end

@implementation UniversalSearchCompletionProvider

- (UniversalSearchCompletionProvider)initWithFrequentlyVisitedSitesController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = UniversalSearchCompletionProvider;
  v6 = [(CompletionProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_frequentlyVisitedSitesController, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__updateInputMode_ name:*MEMORY[0x277D77200] object:0];

    v9 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = UniversalSearchCompletionProvider;
  [(UniversalSearchCompletionProvider *)&v4 dealloc];
}

- (void)_updateInputMode:(id)a3
{
  v7 = [MEMORY[0x277D75688] sharedInputModeController];
  v4 = [v7 currentInputMode];
  v5 = [v4 identifierWithLayouts];
  keyboardInputMode = self->_keyboardInputMode;
  self->_keyboardInputMode = v5;
}

- (void)setParsecSearchSession:(id)a3
{
  v5 = a3;
  if (self->_parsecSearchSession != v5)
  {
    v9 = v5;
    [(CompletionProvider *)self clearCachedCompletions];
    [(WBSParsecDSession *)self->_parsecSearchSession setDelegate:0];
    objc_storeStrong(&self->_parsecSearchSession, a3);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:self];
    v7 = [(WBSParsecDSession *)self->_parsecSearchSession parsecdSession];
    v8 = [v7 bag];
    [(UniversalSearchCompletionProvider *)self _updateStateFromBag:v8];

    [v6 addObserver:self selector:sel__parsecBagDidLoad_ name:@"UniversalSearchDidLoadBagNotification" object:v9];
    [(WBSParsecDSession *)v9 setDelegate:self];

    v5 = v9;
  }
}

- (id)completionsForQuery:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_currentQuery, a3);
  if (self->_enabledByBag)
  {
    v8.receiver = self;
    v8.super_class = UniversalSearchCompletionProvider;
    v6 = [(CompletionProvider *)&v8 completionsForQuery:v5];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (void)setQueryToComplete:(id)a3
{
  v4 = a3;
  currentQueryString = self->_currentQueryString;
  v10 = v4;
  v6 = [v4 queryString];
  LOBYTE(currentQueryString) = [(NSString *)currentQueryString isEqualToString:v6];

  if ((currentQueryString & 1) == 0)
  {
    v7 = [v10 queryString];
    v8 = [v7 copy];
    v9 = self->_currentQueryString;
    self->_currentQueryString = v8;

    [(WBSParsecDSession *)self->_parsecSearchSession setCurrentQuery:self->_currentQuery];
  }
}

- (BOOL)shouldHideParsecResult:(id)a3 basedOnHideRankGivenTopHit:(id)a4 indexOfTopHitInFrequentlyVisitedSites:(unint64_t *)a5
{
  v8 = a3;
  v9 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_13;
  }

  v10 = [v8 minimumRankOfTopHitToSuppressResult];
  v11 = 0;
  if (!v9)
  {
    goto LABEL_14;
  }

  v12 = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v21 = a5;
  v13 = [(FrequentlyVisitedSitesController *)self->_frequentlyVisitedSitesController frequentlyVisitedSites];
  if ([v13 count] < v12)
  {
    v12 = [v13 count];
  }

  v14 = [v9 originalURLString];
  v15 = [v14 safari_simplifiedUserVisibleURLStringWithSimplifications:15 forDisplayOnly:0 simplifiedStringOffset:0];

  if (v12)
  {
    v16 = 0;
    v11 = 1;
    while (1)
    {
      v17 = [v13 objectAtIndex:v16];
      v18 = [v17 address];
      v19 = [v18 safari_simplifiedUserVisibleURLStringWithSimplifications:15 forDisplayOnly:0 simplifiedStringOffset:0];

      if ([v15 safari_hasCaseInsensitivePrefix:v19])
      {
        break;
      }

      v11 = ++v16 < v12;
      if (v12 == v16)
      {
        goto LABEL_11;
      }
    }

    if (v21)
    {
      *v21 = v16;
    }
  }

  else
  {
LABEL_11:
    v11 = 0;
    if (v21)
    {
      *v21 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

LABEL_14:
  return v11;
}

- (id)currentInputTypeForSession:(id)a3
{
  v4 = [(CompletionProvider *)self delegate];
  v5 = [v4 windowHostingCompletionProvider:self];
  v6 = [v5 firstResponder];

  v7 = [v6 textInputMode];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 identifier];
    if ([v9 isEqualToString:@"dictation"])
    {
      v10 = v9;
    }

    else
    {
      v11 = [v8 extension];

      if (v11)
      {
        v10 = @"custom";
      }

      else
      {
        v12 = [v8 normalizedIdentifierLevels];
        if ([v12 count])
        {
          v10 = [v12 firstObject];
        }

        else
        {
          v10 = 0;
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)currentKeyboardIdentifierWithLayoutsForSession:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __102__UniversalSearchCompletionProvider_currentKeyboardIdentifierWithLayoutsForSession_completionHandler___block_invoke;
  v7[3] = &unk_2781D56B0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __102__UniversalSearchCompletionProvider_currentKeyboardIdentifierWithLayoutsForSession_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[9])
  {
    [v2 _updateInputMode:0];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)session:(id)a3 didReceiveResults:(id)a4 forQuery:(id)a5
{
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = a4;
  v9 = [a5 queryString];
  [(CompletionProvider *)self setCompletions:v7 forString:v9];
}

- (void)_updateStateFromBag:(id)a3
{
  v4 = a3;
  v5 = [v4 searchRenderTimeout];
  searchRenderTimeout = self->_searchRenderTimeout;
  self->_searchRenderTimeout = v5;

  v7 = [v4 otherRenderTimeout];
  otherRenderTimeout = self->_otherRenderTimeout;
  self->_otherRenderTimeout = v7;

  v9 = [v4 minSearchRenderTimeout];
  minRenderTimeout = self->_minRenderTimeout;
  self->_minRenderTimeout = v9;

  self->_enabledByBag = [v4 isEnabled];
  v11 = [v4 disableSafariNavIntent];

  self->_disableNavigationalIntentProbability = v11;
}

- (void)_parsecBagDidLoad:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKeyedSubscript:@"UniversalSearchBagUserInfoDictionaryKey"];
  [(UniversalSearchCompletionProvider *)self _updateStateFromBag:v4];
}

@end