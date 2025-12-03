@interface UniversalSearchCompletionProvider
- (BOOL)shouldHideParsecResult:(id)result basedOnHideRankGivenTopHit:(id)hit indexOfTopHitInFrequentlyVisitedSites:(unint64_t *)sites;
- (UniversalSearchCompletionProvider)initWithFrequentlyVisitedSitesController:(id)controller;
- (id)completionsForQuery:(id)query;
- (id)currentInputTypeForSession:(id)session;
- (void)_parsecBagDidLoad:(id)load;
- (void)_updateInputMode:(id)mode;
- (void)_updateStateFromBag:(id)bag;
- (void)currentKeyboardIdentifierWithLayoutsForSession:(id)session completionHandler:(id)handler;
- (void)dealloc;
- (void)session:(id)session didReceiveResults:(id)results forQuery:(id)query;
- (void)setParsecSearchSession:(id)session;
- (void)setQueryToComplete:(id)complete;
@end

@implementation UniversalSearchCompletionProvider

- (UniversalSearchCompletionProvider)initWithFrequentlyVisitedSitesController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = UniversalSearchCompletionProvider;
  v6 = [(CompletionProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_frequentlyVisitedSitesController, controller);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__updateInputMode_ name:*MEMORY[0x277D77200] object:0];

    v9 = v7;
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = UniversalSearchCompletionProvider;
  [(UniversalSearchCompletionProvider *)&v4 dealloc];
}

- (void)_updateInputMode:(id)mode
{
  mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
  currentInputMode = [mEMORY[0x277D75688] currentInputMode];
  identifierWithLayouts = [currentInputMode identifierWithLayouts];
  keyboardInputMode = self->_keyboardInputMode;
  self->_keyboardInputMode = identifierWithLayouts;
}

- (void)setParsecSearchSession:(id)session
{
  sessionCopy = session;
  if (self->_parsecSearchSession != sessionCopy)
  {
    v9 = sessionCopy;
    [(CompletionProvider *)self clearCachedCompletions];
    [(WBSParsecDSession *)self->_parsecSearchSession setDelegate:0];
    objc_storeStrong(&self->_parsecSearchSession, session);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];
    parsecdSession = [(WBSParsecDSession *)self->_parsecSearchSession parsecdSession];
    v8 = [parsecdSession bag];
    [(UniversalSearchCompletionProvider *)self _updateStateFromBag:v8];

    [defaultCenter addObserver:self selector:sel__parsecBagDidLoad_ name:@"UniversalSearchDidLoadBagNotification" object:v9];
    [(WBSParsecDSession *)v9 setDelegate:self];

    sessionCopy = v9;
  }
}

- (id)completionsForQuery:(id)query
{
  queryCopy = query;
  objc_storeStrong(&self->_currentQuery, query);
  if (self->_enabledByBag)
  {
    v8.receiver = self;
    v8.super_class = UniversalSearchCompletionProvider;
    v6 = [(CompletionProvider *)&v8 completionsForQuery:queryCopy];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (void)setQueryToComplete:(id)complete
{
  completeCopy = complete;
  currentQueryString = self->_currentQueryString;
  v10 = completeCopy;
  queryString = [completeCopy queryString];
  LOBYTE(currentQueryString) = [(NSString *)currentQueryString isEqualToString:queryString];

  if ((currentQueryString & 1) == 0)
  {
    queryString2 = [v10 queryString];
    v8 = [queryString2 copy];
    v9 = self->_currentQueryString;
    self->_currentQueryString = v8;

    [(WBSParsecDSession *)self->_parsecSearchSession setCurrentQuery:self->_currentQuery];
  }
}

- (BOOL)shouldHideParsecResult:(id)result basedOnHideRankGivenTopHit:(id)hit indexOfTopHitInFrequentlyVisitedSites:(unint64_t *)sites
{
  resultCopy = result;
  hitCopy = hit;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_13;
  }

  minimumRankOfTopHitToSuppressResult = [resultCopy minimumRankOfTopHitToSuppressResult];
  v11 = 0;
  if (!hitCopy)
  {
    goto LABEL_14;
  }

  v12 = minimumRankOfTopHitToSuppressResult;
  if (!minimumRankOfTopHitToSuppressResult)
  {
    goto LABEL_14;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  sitesCopy = sites;
  frequentlyVisitedSites = [(FrequentlyVisitedSitesController *)self->_frequentlyVisitedSitesController frequentlyVisitedSites];
  if ([frequentlyVisitedSites count] < v12)
  {
    v12 = [frequentlyVisitedSites count];
  }

  originalURLString = [hitCopy originalURLString];
  v15 = [originalURLString safari_simplifiedUserVisibleURLStringWithSimplifications:15 forDisplayOnly:0 simplifiedStringOffset:0];

  if (v12)
  {
    v16 = 0;
    v11 = 1;
    while (1)
    {
      v17 = [frequentlyVisitedSites objectAtIndex:v16];
      address = [v17 address];
      v19 = [address safari_simplifiedUserVisibleURLStringWithSimplifications:15 forDisplayOnly:0 simplifiedStringOffset:0];

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

    if (sitesCopy)
    {
      *sitesCopy = v16;
    }
  }

  else
  {
LABEL_11:
    v11 = 0;
    if (sitesCopy)
    {
      *sitesCopy = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

LABEL_14:
  return v11;
}

- (id)currentInputTypeForSession:(id)session
{
  delegate = [(CompletionProvider *)self delegate];
  v5 = [delegate windowHostingCompletionProvider:self];
  firstResponder = [v5 firstResponder];

  textInputMode = [firstResponder textInputMode];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = textInputMode;
    identifier = [v8 identifier];
    if ([identifier isEqualToString:@"dictation"])
    {
      firstObject = identifier;
    }

    else
    {
      extension = [v8 extension];

      if (extension)
      {
        firstObject = @"custom";
      }

      else
      {
        normalizedIdentifierLevels = [v8 normalizedIdentifierLevels];
        if ([normalizedIdentifierLevels count])
        {
          firstObject = [normalizedIdentifierLevels firstObject];
        }

        else
        {
          firstObject = 0;
        }
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)currentKeyboardIdentifierWithLayoutsForSession:(id)session completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __102__UniversalSearchCompletionProvider_currentKeyboardIdentifierWithLayoutsForSession_completionHandler___block_invoke;
  v7[3] = &unk_2781D56B0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (void)session:(id)session didReceiveResults:(id)results forQuery:(id)query
{
  if (results)
  {
    resultsCopy = results;
  }

  else
  {
    resultsCopy = MEMORY[0x277CBEBF8];
  }

  resultsCopy2 = results;
  queryString = [query queryString];
  [(CompletionProvider *)self setCompletions:resultsCopy forString:queryString];
}

- (void)_updateStateFromBag:(id)bag
{
  bagCopy = bag;
  searchRenderTimeout = [bagCopy searchRenderTimeout];
  searchRenderTimeout = self->_searchRenderTimeout;
  self->_searchRenderTimeout = searchRenderTimeout;

  otherRenderTimeout = [bagCopy otherRenderTimeout];
  otherRenderTimeout = self->_otherRenderTimeout;
  self->_otherRenderTimeout = otherRenderTimeout;

  minSearchRenderTimeout = [bagCopy minSearchRenderTimeout];
  minRenderTimeout = self->_minRenderTimeout;
  self->_minRenderTimeout = minSearchRenderTimeout;

  self->_enabledByBag = [bagCopy isEnabled];
  disableSafariNavIntent = [bagCopy disableSafariNavIntent];

  self->_disableNavigationalIntentProbability = disableSafariNavIntent;
}

- (void)_parsecBagDidLoad:(id)load
{
  userInfo = [load userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"UniversalSearchBagUserInfoDictionaryKey"];
  [(UniversalSearchCompletionProvider *)self _updateStateFromBag:v4];
}

@end