@interface HKCDADocumentReportViewController
+ (id)xmlToHTMLTranslator;
- (HKCDADocumentReportViewController)initWithDocumentData:(id)data;
- (id)buildDisclosureView;
- (void)_finishJavascriptOperation;
- (void)_incrementCurrentHitBy:(int64_t)by;
- (void)_runJavascript:(id)javascript clearQueuedCommands:(BOOL)commands completion:(id)completion;
- (void)_runJavascriptOperation:(id)operation clearQueuedCommands:(BOOL)commands;
- (void)_translateXMLInBackground;
- (void)_updateMatchDisplayString:(int64_t)string numMatches:(int64_t)matches;
- (void)_updateSearchBarState;
- (void)_updateSearchHits:(int64_t)hits;
- (void)hideDisclosure:(id)disclosure;
- (void)searchBarChangeSearch:(id)search searchString:(id)string;
- (void)searchBarDoneAction:(id)action;
- (void)searchBarDownAction:(id)action;
- (void)searchBarUpAction:(id)action;
- (void)startIncrementalSearch;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation HKCDADocumentReportViewController

- (HKCDADocumentReportViewController)initWithDocumentData:(id)data
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = HKCDADocumentReportViewController;
  v6 = [(HKCDADocumentReportViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentData, data);
    disclosureView = v7->_disclosureView;
    v7->_disclosureView = 0;

    webView = v7->_webView;
    v7->_webView = 0;

    incrementalSearchBar = v7->_incrementalSearchBar;
    v7->_incrementalSearchBar = 0;

    v7->_javascriptSearchInstalled = 0;
    v7->_javascriptIsRunning = 0;
    v7->_searchInProgress = 0;
    v7->_hitCount = 0;
    v7->_currentHighlightedHit = 0;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    javascriptOperationQueue = v7->_javascriptOperationQueue;
    v7->_javascriptOperationQueue = v11;
  }

  return v7;
}

+ (id)xmlToHTMLTranslator
{
  if (xmlToHTMLTranslator_oncePredicate != -1)
  {
    +[HKCDADocumentReportViewController xmlToHTMLTranslator];
  }

  v3 = xmlToHTMLTranslator_translator;

  return v3;
}

void __56__HKCDADocumentReportViewController_xmlToHTMLTranslator__block_invoke()
{
  v0 = HKHealthUIFrameworkBundle();
  v5 = [v0 pathForResource:@"CDAINTL" ofType:@"xsl"];

  v1 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = [v1 contentsAtPath:v5];

  v3 = [objc_alloc(MEMORY[0x1E696C688]) initWithXSL:v2 localizationTableName:@"CDA" localizationOverride:0];
  v4 = xmlToHTMLTranslator_translator;
  xmlToHTMLTranslator_translator = v3;
}

- (void)hideDisclosure:(id)disclosure
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__HKCDADocumentReportViewController_hideDisclosure___block_invoke;
  v5[3] = &unk_1E81B55A8;
  v5[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.3];
  view = [(HKCDADocumentReportViewController *)self view];
  [view setNeedsLayout];
}

- (id)buildDisclosureView
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [_DisclosureLabel alloc];
  v4 = [(_DisclosureLabel *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = [MEMORY[0x1E69DC738] buttonWithType:122];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v5 setBackgroundColor:systemBackgroundColor];

  LODWORD(v7) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v7];
  [v5 addTarget:self action:sel_hideDisclosure_ forControlEvents:64];
  [v5 setContentEdgeInsets:{0.0, 5.0, 0.0, 20.0}];
  LODWORD(v8) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v8];
  v9 = objc_alloc(MEMORY[0x1E69DCF90]);
  v13[0] = v4;
  v13[1] = v5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v11 = [v9 initWithArrangedSubviews:v10];

  [v11 setAxis:0];

  return v11;
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = HKCDADocumentReportViewController;
  [(HKCDADocumentReportViewController *)&v20 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  [v4 setAxis:1];
  buildDisclosureView = [(HKCDADocumentReportViewController *)self buildDisclosureView];
  disclosureView = self->_disclosureView;
  self->_disclosureView = buildDisclosureView;

  [v4 addArrangedSubview:self->_disclosureView];
  LODWORD(v7) = 1148846080;
  [(UIView *)self->_disclosureView setContentCompressionResistancePriority:1 forAxis:v7];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v8 = getWKWebViewConfigurationClass_softClass;
  v29 = getWKWebViewConfigurationClass_softClass;
  if (!getWKWebViewConfigurationClass_softClass)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getWKWebViewConfigurationClass_block_invoke;
    v24 = &unk_1E81B5C18;
    v25 = &v26;
    __getWKWebViewConfigurationClass_block_invoke(&v21);
    v8 = v27[3];
  }

  v9 = v8;
  _Block_object_dispose(&v26, 8);
  v10 = objc_alloc_init(v8);
  preferences = [v10 preferences];
  [preferences setJavaScriptEnabled:1];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v12 = getWKWebViewClass_softClass;
  v29 = getWKWebViewClass_softClass;
  if (!getWKWebViewClass_softClass)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getWKWebViewClass_block_invoke;
    v24 = &unk_1E81B5C18;
    v25 = &v26;
    __getWKWebViewClass_block_invoke(&v21);
    v12 = v27[3];
  }

  v13 = v12;
  _Block_object_dispose(&v26, 8);
  v14 = [v12 alloc];
  v15 = [v14 initWithFrame:v10 configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  webView = self->_webView;
  self->_webView = v15;

  [v4 addArrangedSubview:self->_webView];
  v17 = objc_alloc_init(HKIncrementalSearchBar);
  incrementalSearchBar = self->_incrementalSearchBar;
  self->_incrementalSearchBar = v17;

  [(HKIncrementalSearchBar *)self->_incrementalSearchBar setSearchBarDelegate:self];
  LODWORD(v19) = 1148846080;
  [(HKIncrementalSearchBar *)self->_incrementalSearchBar setContentHuggingPriority:1 forAxis:v19];
  [v4 addArrangedSubview:self->_incrementalSearchBar];
  [(HKCDADocumentReportViewController *)self setView:v4];
  [(HKCDADocumentReportViewController *)self _translateXMLInBackground];
}

- (void)_translateXMLInBackground
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  HKDispatchAsyncOnGlobalConcurrentQueue();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

void __62__HKCDADocumentReportViewController__translateXMLInBackground__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained documentData];

  v4 = +[HKCDADocumentReportViewController xmlToHTMLTranslator];
  v5 = [v4 convertToHTMLFromXML:v3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__HKCDADocumentReportViewController__translateXMLInBackground__block_invoke_2;
  v7[3] = &unk_1E81B6F28;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v9);
}

void __62__HKCDADocumentReportViewController__translateXMLInBackground__block_invoke_2(uint64_t a1)
{
  v5 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F42FFBE0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained webView];

  v4 = [v3 loadHTMLString:*(a1 + 32) baseURL:v5];
}

- (void)startIncrementalSearch
{
  if (self->_javascriptSearchInstalled)
  {
    [(HKIncrementalSearchBar *)self->_incrementalSearchBar activateSearch:1];
    view = [(HKCDADocumentReportViewController *)self view];
    [view setNeedsLayout];
  }

  else
  {
    v3 = HKHealthUIFrameworkBundle();
    v4 = [v3 pathForResource:@"HKHTMLIncrementalSearch" ofType:@"js"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [defaultManager contentsAtPath:v4];

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    webView = self->_webView;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__HKCDADocumentReportViewController_startIncrementalSearch__block_invoke;
    v10[3] = &unk_1E81BB438;
    v10[4] = self;
    [(WKWebView *)webView evaluateJavaScript:v7 completionHandler:v10];
  }
}

void __59__HKCDADocumentReportViewController_startIncrementalSearch__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    [*(*(a1 + 32) + 1024) activateSearch:1];
    v4 = [*(a1 + 32) view];
    [v4 setNeedsLayout];

    *(*(a1 + 32) + 992) = 1;
  }
}

- (void)_runJavascript:(id)javascript clearQueuedCommands:(BOOL)commands completion:(id)completion
{
  commandsCopy = commands;
  completionCopy = completion;
  javascriptCopy = javascript;
  v10 = [[_JavascriptOperation alloc] initWithJavascript:javascriptCopy completion:completionCopy];

  [(HKCDADocumentReportViewController *)self _runJavascriptOperation:v10 clearQueuedCommands:commandsCopy];
}

- (void)_runJavascriptOperation:(id)operation clearQueuedCommands:(BOOL)commands
{
  commandsCopy = commands;
  operationCopy = operation;
  if (self->_javascriptIsRunning || [(NSMutableArray *)self->_javascriptOperationQueue count])
  {
    if (commandsCopy)
    {
      [(NSMutableArray *)self->_javascriptOperationQueue removeAllObjects];
    }

    [(NSMutableArray *)self->_javascriptOperationQueue addObject:operationCopy];
  }

  else
  {
    self->_javascriptIsRunning = 1;
    webView = self->_webView;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__HKCDADocumentReportViewController__runJavascriptOperation_clearQueuedCommands___block_invoke;
    v8[3] = &unk_1E81B55A8;
    v8[4] = self;
    [operationCopy submitJavascript:webView finishBlock:v8];
  }
}

- (void)_finishJavascriptOperation
{
  self->_javascriptIsRunning = 0;
  if ([(NSMutableArray *)self->_javascriptOperationQueue count])
  {
    firstObject = [(NSMutableArray *)self->_javascriptOperationQueue firstObject];
    [(NSMutableArray *)self->_javascriptOperationQueue removeObjectAtIndex:0];
    self->_javascriptIsRunning = 1;
    webView = self->_webView;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__HKCDADocumentReportViewController__finishJavascriptOperation__block_invoke;
    v5[3] = &unk_1E81B55A8;
    v5[4] = self;
    [firstObject submitJavascript:webView finishBlock:v5];
  }
}

- (void)_updateSearchHits:(int64_t)hits
{
  hitCount = self->_hitCount;
  if (hits < 0)
  {
    if (!hitCount)
    {
      self->_hitCount = -1;
    }
  }

  else
  {
    self->_hitCount = hitCount + hits;
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __55__HKCDADocumentReportViewController__updateSearchHits___block_invoke;
    v8 = &unk_1E81BB460;
    objc_copyWeak(&v9, &location);
    [(HKCDADocumentReportViewController *)self _runJavascript:@"searchController.continueSearch();" clearQueuedCommands:0 completion:&v5];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  [(HKCDADocumentReportViewController *)self _updateSearchBarState:v5];
}

void __55__HKCDADocumentReportViewController__updateSearchHits___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v5 = [a2 integerValue];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _updateSearchHits:v5];
  }
}

- (void)_updateSearchBarState
{
  incrementalSearchBar = self->_incrementalSearchBar;
  v4 = self->_hitCount >= 1 && self->_currentHighlightedHit > 0;
  [(HKIncrementalSearchBar *)incrementalSearchBar setUpEnabled:v4];
  hitCount = self->_hitCount;
  v6 = hitCount < 1;
  v7 = hitCount - 1;
  v8 = !v6 && self->_currentHighlightedHit < v7;
  [(HKIncrementalSearchBar *)self->_incrementalSearchBar setDownEnabled:v8];
  currentHighlightedHit = self->_currentHighlightedHit;
  v10 = self->_hitCount;

  [(HKCDADocumentReportViewController *)self _updateMatchDisplayString:currentHighlightedHit numMatches:v10];
}

- (void)_updateMatchDisplayString:(int64_t)string numMatches:(int64_t)matches
{
  if (matches < 1)
  {
    if ((matches & 0x8000000000000000) == 0 || (-[HKIncrementalSearchBar searchText](self->_incrementalSearchBar, "searchText", string), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 length], v20, !v21))
    {
      v10 = 0;
      goto LABEL_13;
    }

    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v12 localizedStringForKey:@"INCREMENTAL_SEARCH_NO_MATCHES" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  else
  {
    if (matches == 1)
    {
      v12 = HKLocalizedStringForNumberWithTemplate(&unk_1F43846C0, 0);
      v6 = MEMORY[0x1E696AEC0];
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v8 = [v7 localizedStringForKey:@"INCREMENTAL_SEARCH_ONE_MATCH %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v9 = [v6 stringWithFormat:v8, v12];
    }

    else
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:string + 1];
      v12 = HKLocalizedStringForNumberWithTemplate(v11, 1);

      if (matches > 0x3E6)
      {
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:999];
        v7 = HKLocalizedStringForNumberWithTemplate(v17, 1);

        v14 = MEMORY[0x1E696AEC0];
        v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v8 = v15;
        v16 = @"INCREMENTAL_SEARCH_MAX_ITEM %@ %@";
      }

      else
      {
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:matches];
        v7 = HKLocalizedStringForNumberWithTemplate(v13, 1);

        v14 = MEMORY[0x1E696AEC0];
        v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v8 = v15;
        v16 = @"INCREMENTAL_SEARCH_MATCH_ITEM %@ %@";
      }

      v18 = [v15 localizedStringForKey:v16 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v9 = [v14 stringWithFormat:v18, v12, v7];
    }
  }

  [(HKIncrementalSearchBar *)self->_incrementalSearchBar setMatchDisplayText:v9];
  v10 = 1;
LABEL_13:
  incrementalSearchBar = self->_incrementalSearchBar;

  [(HKIncrementalSearchBar *)incrementalSearchBar setMatchDisplayVisible:v10];
}

- (void)_incrementCurrentHitBy:(int64_t)by
{
  v3 = self->_currentHighlightedHit + by;
  if (v3 >= 0 && v3 < self->_hitCount)
  {
    self->_currentHighlightedHit = v3;
    [(HKCDADocumentReportViewController *)self _updateSearchBarState];
  }
}

- (void)searchBarUpAction:(id)action
{
  actionCopy = action;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__HKCDADocumentReportViewController_searchBarUpAction___block_invoke;
  v5[3] = &unk_1E81BB460;
  objc_copyWeak(&v6, &location);
  [(HKCDADocumentReportViewController *)self _runJavascript:@"searchController.previousHit();" clearQueuedCommands:0 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __55__HKCDADocumentReportViewController_searchBarUpAction___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _incrementCurrentHitBy:-1];
  }
}

- (void)searchBarDownAction:(id)action
{
  actionCopy = action;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__HKCDADocumentReportViewController_searchBarDownAction___block_invoke;
  v5[3] = &unk_1E81BB460;
  objc_copyWeak(&v6, &location);
  [(HKCDADocumentReportViewController *)self _runJavascript:@"searchController.nextHit();" clearQueuedCommands:0 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __57__HKCDADocumentReportViewController_searchBarDownAction___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _incrementCurrentHitBy:1];
  }
}

- (void)searchBarDoneAction:(id)action
{
  [(HKIncrementalSearchBar *)self->_incrementalSearchBar activateSearch:0];

  [(HKCDADocumentReportViewController *)self _runJavascript:@"searchController.setSearchPattern('' clearQueuedCommands:'');" completion:1, 0];
}

- (void)searchBarChangeSearch:(id)search searchString:(id)string
{
  searchCopy = search;
  stringCopy = string;
  v14 = 0;
  v8 = [HKIncrementalSearchBar regularExpressionFromString:stringCopy quoteForJavascript:1 caseless:&v14];
  if (v14)
  {
    v9 = @"searchController.setSearchPattern('%@', 'mi');";
  }

  else
  {
    v9 = @"searchController.setSearchPattern('%@', 'm');";
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, v8];
  self->_hitCount = 0;
  self->_currentHighlightedHit = 0;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__HKCDADocumentReportViewController_searchBarChangeSearch_searchString___block_invoke;
  v11[3] = &unk_1E81BB460;
  objc_copyWeak(&v12, &location);
  [(HKCDADocumentReportViewController *)self _runJavascript:v10 clearQueuedCommands:1 completion:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __72__HKCDADocumentReportViewController_searchBarChangeSearch_searchString___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v5 = [a2 integerValue];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _updateSearchHits:v5];
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  v8 = [collectionCopy verticalSizeClass] == 1;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __95__HKCDADocumentReportViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_1E81BB488;
  objc_copyWeak(&v11, &location);
  v12 = v8;
  [coordinatorCopy animateAlongsideTransition:v10 completion:0];
  v9.receiver = self;
  v9.super_class = HKCDADocumentReportViewController;
  [(HKCDADocumentReportViewController *)&v9 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __95__HKCDADocumentReportViewController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setControlsHidden:*(a1 + 40) animated:1];
}

@end