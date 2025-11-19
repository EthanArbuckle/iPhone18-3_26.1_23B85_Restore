@interface DDParsecCollectionViewController
- (CGSize)preferredContentSize;
- (DDParsecCollectionDelegate)parsecDelegate;
- (DDParsecCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (DDParsecCollectionViewController)initWithQuery:(id)a3;
- (DDParsecCollectionViewController)initWithRVItem:(id)a3;
- (DDParsecCollectionViewController)initWithResult:(__DDResult *)a3 context:(id)a4;
- (DDParsecCollectionViewController)initWithString:(id)a3 range:(_NSRange)a4 dictionaryOnly:(BOOL)a5;
- (id)popoverPresentationController;
- (id)presentationController;
- (int64_t)modalPresentationStyle;
- (void)_interactionEnded;
- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4;
- (void)adaptForPresentationInPopover:(BOOL)a3;
- (void)appDidEnterBackground;
- (void)appWillEnterForeground;
- (void)fetchRemoteViewControllerWithValidInput:(BOOL)a3;
- (void)getStatusBarHidden:(id)a3;
- (void)interactionEndedWithPunchout:(BOOL)a3;
- (void)loadReportAnIssueImage:(id)a3;
- (void)openParsecURL:(id)a3;
- (void)performClientTextQueryWithTerm:(id)a3 queryId:(unint64_t)a4 sessionId:(id)a5 userAgent:(id)a6 reply:(id)a7;
- (void)presentRemoteCollection:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)remoteVCIsReady;
- (void)replaceControllerWithController:(id)a3;
- (void)reportAnIssueWithReportIdentifier:(id)a3 sfReportData:(id)a4;
- (void)setTitle:(id)a3;
- (void)showError:(id)a3;
- (void)showSpinner;
- (void)updateDelegateOfPresentationController:(id)a3;
- (void)updateVisualMode;
@end

@implementation DDParsecCollectionViewController

- (DDParsecCollectionViewController)initWithString:(id)a3 range:(_NSRange)a4 dictionaryOnly:(BOOL)a5
{
  v5 = a5;
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v11 = [(DDParsecCollectionViewController *)self initWithNibName:0 bundle:0];
  if (v11)
  {
    if (v10)
    {
      v21.length = [v10 length];
      v20.location = location;
      v20.length = length;
      v21.location = 0;
      if (NSIntersectionRange(v20, v21).length)
      {
        v12 = [v10 substringWithRange:{location, length}];
        v13 = [MEMORY[0x277CCAB50] controlCharacterSet];
        v14 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        [v13 formUnionWithCharacterSet:v14];

        [v13 addCharactersInRange:{65529, 7}];
        v15 = [v13 invertedSet];
        v16 = [v12 rangeOfCharacterFromSet:v15];

        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_storeStrong(&v11->_queryString, a3);
          v17 = [v12 stringByTrimmingCharactersInSet:v13];

          v18 = [v17 length];
          v11->_queryRange.location = v16 + location;
          v11->_queryRange.length = v18;
          [(DDParsecCollectionViewController *)v11 setTitle:v17];
          v12 = v17;
        }
      }
    }

    v11->_dictionaryMode = v5;
    if (v5)
    {
      v11->_popoverMode = 0;
    }

    [(DDParsecCollectionViewController *)v11 fetchRemoteViewControllerWithValidInput:v11->_queryString != 0];
  }

  return v11;
}

- (DDParsecCollectionViewController)initWithQuery:(id)a3
{
  v5 = a3;
  v6 = [(DDParsecCollectionViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_query, a3);
      v8 = [v5 title];
      [(DDParsecCollectionViewController *)v7 setTitle:v8];
    }

    [(DDParsecCollectionViewController *)v7 fetchRemoteViewControllerWithValidInput:v7->_query != 0];
  }

  return v7;
}

- (DDParsecCollectionViewController)initWithRVItem:(id)a3
{
  v5 = a3;
  v6 = [v5 query];

  objc_storeStrong(&self->_item, a3);
  if (v6)
  {
    v7 = [v5 query];
    v8 = [(DDParsecCollectionViewController *)self initWithQuery:v7];
  }

  else
  {
    v9 = [v5 text];
    v10 = v9;
    v11 = &stru_282C1E0A8;
    if (v9)
    {
      v11 = v9;
    }

    v7 = v11;

    v12 = [v5 highlightRange];
    v14 = v13;
    if ([v5 type] == 3)
    {
      v15 = [v5 ddResult];
      v16 = [v15 matchedString];

      v14 = [(__CFString *)v16 length];
      v12 = 0;
      v7 = v16;
    }

    v8 = [(DDParsecCollectionViewController *)self initWithString:v7 range:v12, v14];
  }

  v17 = v8;

  return v17;
}

- (void)setTitle:(id)a3
{
  v4 = MEMORY[0x277CCA900];
  v5 = a3;
  v6 = [v4 newlineCharacterSet];
  v7 = [v5 componentsSeparatedByCharactersInSet:v6];

  v8 = [v7 componentsJoinedByString:@" "];
  v9.receiver = self;
  v9.super_class = DDParsecCollectionViewController;
  [(DDParsecCollectionViewController *)&v9 setTitle:v8];
}

- (DDParsecCollectionViewController)initWithResult:(__DDResult *)a3 context:(id)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(DDParsecCollectionViewController *)self initWithNibName:0 bundle:0];
  if (v7)
  {
    if (a3)
    {
      v8 = DDResultGetMatchedString();
      if (v8)
      {
        [(DDParsecCollectionViewController *)v7 setTitle:v8];
        v9 = [MEMORY[0x277D04218] resultFromCoreResult:a3];
        v10 = v7->_result;
        v7->_result = v9;

        if (v6)
        {
          v11 = [MEMORY[0x277CBEB38] dictionary];
          v12 = [v6 objectForKeyedSubscript:@"LeadingText"];
          [v11 setObject:v12 forKeyedSubscript:@"LeadingText"];

          v13 = [v6 objectForKeyedSubscript:@"TrailingText"];
          [v11 setObject:v13 forKeyedSubscript:@"TrailingText"];

          v14 = [v6 objectForKeyedSubscript:@"SelectedText"];
          [v11 setObject:v14 forKeyedSubscript:@"SelectedText"];

          v15 = [v11 allKeys];
          v16 = [v15 count];

          if (v16)
          {
            v17 = [v11 copy];
            context = v7->_context;
            v7->_context = v17;
          }
        }

        v19 = [(DDAction *)DDSearchWebAction actionWithURL:0 result:a3 context:v6];
        v24[0] = v19;
        v20 = [DDCopyAction actionWithURL:0 result:a3 context:v6];
        v24[1] = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
        [(DDParsecCollectionViewController *)v7 setActions:v21];
      }
    }

    [(DDParsecCollectionViewController *)v7 fetchRemoteViewControllerWithValidInput:v7->_result != 0];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v7;
}

- (DDParsecCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v12.receiver = self;
  v12.super_class = DDParsecCollectionViewController;
  v4 = [(DDParsecCollectionViewController *)&v12 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = _UISolariumEnabled();
    v4->_solariumEnabled = v5;
    v4->_needsBackground = v5 ^ 1;
    [(DDParsecCollectionViewController *)v4 setNavigationBarHidden:1 animated:0];
    v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel__interactionEnded];
    tapGesture = v4->_tapGesture;
    v4->_tapGesture = v6;

    v8 = [(DDParsecCollectionViewController *)v4 view];
    [v8 addGestureRecognizer:v4->_tapGesture];

    [(DDParsecCollectionViewController *)v4 setModalPresentationStyle:7];
    [(DDParsecCollectionViewController *)v4 setModalInPresentation:0];
    v9 = [(DDParsecCollectionViewController *)v4 presentationController];
    [v9 setDelegate:v4];

    v4->_popoverMode = 1;
    [(DDParsecCollectionViewController *)v4 updateVisualMode];
    v10 = v4;
  }

  return v4;
}

- (void)updateDelegateOfPresentationController:(id)a3
{
  v10 = a3;
  v4 = [v10 delegate];
  if (v4 != self)
  {
    if (v4)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v6 isEqualToString:@"DDDelegateMultiplexer"];

      if ((v7 & 1) == 0)
      {
        v8 = [[DDDelegateMultiplexer alloc] initWithDelegate:self andDelegate:v4];
        [v10 setDelegate:v8];
        presentationDelegateProxy = self->_presentationDelegateProxy;
        self->_presentationDelegateProxy = v8;
      }
    }

    else
    {
      [v10 setDelegate:self];
    }
  }
}

- (id)popoverPresentationController
{
  self->_requestingPopoverPresentationController = 1;
  v7.receiver = self;
  v7.super_class = DDParsecCollectionViewController;
  v3 = [(DDParsecCollectionViewController *)&v7 popoverPresentationController];
  [v3 _setCentersPopoverIfSourceViewNotSet:1];
  if (self->_solariumEnabled)
  {
    [v3 setBackgroundColor:0];
  }

  else
  {
    v4 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [v3 setBackgroundColor:v4];
  }

  v5 = [(DDParsecCollectionViewController *)self view];
  [v5 _setOverrideVibrancyTrait:0];

  [(DDParsecCollectionViewController *)self updateDelegateOfPresentationController:v3];
  self->_requestingPopoverPresentationController = 0;

  return v3;
}

- (id)presentationController
{
  v5.receiver = self;
  v5.super_class = DDParsecCollectionViewController;
  v3 = [(DDParsecCollectionViewController *)&v5 presentationController];
  [(DDParsecCollectionViewController *)self updateDelegateOfPresentationController:v3];

  return v3;
}

- (int64_t)modalPresentationStyle
{
  if (!self->_requestingPopoverPresentationController)
  {
    self->_requestingPopoverPresentationController = 1;
    v6.receiver = self;
    v6.super_class = DDParsecCollectionViewController;
    v3 = [(DDParsecCollectionViewController *)&v6 popoverPresentationController];
    [(DDParsecCollectionViewController *)self updateDelegateOfPresentationController:v3];
    self->_requestingPopoverPresentationController = 0;
  }

  v5.receiver = self;
  v5.super_class = DDParsecCollectionViewController;
  return [(DDParsecCollectionViewController *)&v5 modalPresentationStyle];
}

- (void)adaptForPresentationInPopover:(BOOL)a3
{
  v3 = a3 & ~self->_dictionaryMode;
  if (self->_popoverMode != v3)
  {
    self->_popoverMode = a3 & ~self->_dictionaryMode;
    v4 = [(_UIRemoteViewController *)self->_remoteViewController serviceViewControllerProxy];
    [v4 setPopoverMode:v3];
  }
}

- (CGSize)preferredContentSize
{
  v2 = 360.0;
  v3 = 480.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)updateVisualMode
{
  v3 = [(DDParsecCollectionViewController *)self view];
  [v3 _setOverrideVibrancyTrait:0];

  needsBackground = self->_needsBackground;
  if (needsBackground)
  {
    v5 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(DDParsecCollectionViewController *)self view];
  [v6 setBackgroundColor:v5];

  if (needsBackground)
  {
  }

  v7 = [(DDParsecCollectionViewController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(DDParsecCollectionViewController *)self topViewController];
    [v9 updateStyle];
  }
}

- (void)fetchRemoteViewControllerWithValidInput:(BOOL)a3
{
  if (a3)
  {
    [(DDParsecCollectionViewController *)self showSpinner];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76__DDParsecCollectionViewController_fetchRemoteViewControllerWithValidInput___block_invoke;
    v7[3] = &unk_278291168;
    v7[4] = self;
    v4 = [DDParsecRemoteCollectionViewController requestViewController:@"DDParsecServiceCollectionViewController" fromServiceWithBundleIdentifier:@"com.apple.datadetectors.DDActionsService" connectionHandler:v7];
  }

  else
  {
    [(DDParsecCollectionViewController *)self setTitle:&stru_282C1E0A8];
    if (self->_query)
    {
      v5 = @"No Content Found";
    }

    else
    {
      v5 = @"Nothing to Look Up";
    }

    v6 = DDLocalizedString(v5);
    [(DDParsecCollectionViewController *)self showError:v6];
  }
}

void __76__DDParsecCollectionViewController_fetchRemoteViewControllerWithValidInput___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __76__DDParsecCollectionViewController_fetchRemoteViewControllerWithValidInput___block_invoke_cold_1();
    }

    [*(a1 + 32) presentRemoteCollection:v5];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __76__DDParsecCollectionViewController_fetchRemoteViewControllerWithValidInput___block_invoke_cold_2(v6);
    }

    v7 = *(a1 + 32);
    v8 = DDLocalizedString(@"An Error Occurred");
    [v7 showError:v8];
  }
}

- (void)appDidEnterBackground
{
  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    v3 = [(_UIRemoteViewController *)remoteViewController serviceViewControllerProxy];
    [v3 appDidEnterBackground];
  }
}

- (void)appWillEnterForeground
{
  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    v3 = [(_UIRemoteViewController *)remoteViewController serviceViewControllerProxy];
    [v3 appWillEnterForeground];
  }
}

- (void)presentRemoteCollection:(id)a3
{
  v3 = a3;
  v23 = a3;
  objc_storeStrong(&self->_remoteViewController, v3);
  [v23 setHostSideDelegate:self];
  v5 = [v23 serviceViewControllerProxy];
  query = self->_query;
  previewMode = self->_previewMode;
  sheetMode = self->_sheetMode;
  popoverMode = self->_popoverMode;
  solariumEnabled = self->_solariumEnabled;
  style = self->_style;
  v11 = [(DDParsecCollectionViewController *)self traitCollection];
  [v11 displayScale];
  v13 = v12;
  LOBYTE(v3) = self->_dictionaryMode;
  v14 = [(RVItem *)self->_item textQueryProvider];
  BYTE1(v21) = v14 != 0;
  LOBYTE(v21) = v3;
  [v5 prepareWithQueryObject:query previewMode:previewMode sheetMode:sheetMode popoverMode:popoverMode solarium:solariumEnabled viewStyle:style scale:v13 dictionaryMode:v21 remoteTextQuery:?];

  v15 = [(DDParsecCollectionViewController *)self title];

  if (v15)
  {
    v16 = [(DDParsecCollectionViewController *)self title];
    [v5 setOriginalTitle:v16];
  }

  queryString = self->_queryString;
  if (queryString)
  {
    [v5 startQueryWithString:queryString range:{self->_queryRange.location, self->_queryRange.length}];
  }

  else
  {
    result = self->_result;
    if (result)
    {
      [v5 startQueryWithResult:result context:self->_context];
    }
  }

  if (self->_query)
  {
    [v5 startQueryWithQuery:?];
  }

  v19 = [MEMORY[0x277CCAB98] defaultCenter];
  [v19 addObserver:self selector:sel_appWillEnterForeground name:*MEMORY[0x277D76758] object:0];

  v20 = [MEMORY[0x277CCAB98] defaultCenter];
  [v20 addObserver:self selector:sel_appDidEnterBackground name:*MEMORY[0x277D76660] object:0];
}

- (void)remoteVCIsReady
{
  [(DDParsecCollectionViewController *)self replaceControllerWithController:self->_remoteViewController];
  self->_needsBackground = 0;

  [(DDParsecCollectionViewController *)self updateVisualMode];
}

- (void)performClientTextQueryWithTerm:(id)a3 queryId:(unint64_t)a4 sessionId:(id)a5 userAgent:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(RVItem *)self->_item textQueryProvider];

  if (v16)
  {
    v17 = objc_alloc_init(DDHostTextQueryContext);
    [(DDHostTextQueryContext *)v17 setTitle:v12];
    [(DDHostTextQueryContext *)v17 setQueryString:v12];
    [(DDHostTextQueryContext *)v17 setQueryID:a4];
    [(DDHostTextQueryContext *)v17 setIdentifier:v13];
    [(DDHostTextQueryContext *)v17 setUserAgent:v14];
    v18 = [(RVItem *)self->_item textQueryProvider];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __101__DDParsecCollectionViewController_performClientTextQueryWithTerm_queryId_sessionId_userAgent_reply___block_invoke;
    v19[3] = &unk_2782911B8;
    v20 = v15;
    (v18)[2](v18, v17, v19);
  }
}

- (void)showError:(id)a3
{
  v4 = a3;
  v12 = [[DDParsecNoDataViewController alloc] initForSolarium:self->_solariumEnabled];
  v5 = [(DDParsecCollectionViewController *)self title];
  v6 = v5;
  v7 = &stru_282C1E0A8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  [v12 setTitle:v8];
  [v12 setSearchWebQuery:v8];

  [v12 setReason:v4];
  if (self->_query)
  {
    [v12 setLookup:0];
  }

  else
  {
    v9 = [(DDParsecCollectionViewController *)self title];
    [v12 setLookup:{objc_msgSend(v9, "length") != 0}];
  }

  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:self action:sel_doneButtonPressed_];
  v11 = [v12 navigationItem];
  [v11 setRightBarButtonItem:v10];

  [v12 updateStyle];
  [(DDParsecCollectionViewController *)self showingErrorView:1];
  [(DDParsecCollectionViewController *)self replaceControllerWithController:v12];
  [(DDParsecCollectionViewController *)self setNavigationBarHidden:0 animated:0];
}

- (void)showSpinner
{
  v7 = [[DDParsecLoadingViewController alloc] initForSolarium:self->_solariumEnabled];
  v3 = [(DDParsecCollectionViewController *)self title];
  v4 = v3;
  v5 = &stru_282C1E0A8;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  [v7 setTitle:v6];
  [(DDParsecCollectionViewController *)self replaceControllerWithController:v7];
}

- (void)replaceControllerWithController:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(DDParsecCollectionViewController *)self setViewControllers:v6, v8, v9];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)interactionEndedWithPunchout:(BOOL)a3
{
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDParsecCollectionViewController interactionEndedWithPunchout:];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (v3)
  {
LABEL_3:
    v5 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__DDParsecCollectionViewController_interactionEndedWithPunchout___block_invoke;
    block[3] = &unk_278290B50;
    block[4] = self;
    dispatch_after(v5, MEMORY[0x277D85CD0], block);
    return;
  }

  [(DDParsecCollectionViewController *)self _interactionEnded];
}

uint64_t __65__DDParsecCollectionViewController_interactionEndedWithPunchout___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setModalTransitionStyle:2];
  v2 = *(a1 + 32);

  return [v2 _interactionEnded];
}

- (void)_interactionEnded
{
  v3 = [(DDParsecCollectionViewController *)self parsecDelegate];

  if (v3)
  {
    v4 = [(DDParsecCollectionViewController *)self parsecDelegate];
    [v4 interactionDidFinishAndRequiresDismissal:!self->_dismissed];

    [(DDParsecCollectionViewController *)self setParsecDelegate:0];
  }

  else
  {
    v5 = [(DDParsecCollectionViewController *)self dismissCompletionHandler];
    [(DDParsecCollectionViewController *)self dismissViewControllerAnimated:1 completion:v5];

    [(DDParsecCollectionViewController *)self setDismissCompletionHandler:0];
  }

  self->_dismissed = 1;
}

- (void)openParsecURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = dispatch_get_global_queue(33, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__DDParsecCollectionViewController_openParsecURL___block_invoke;
    v6[3] = &unk_278290BC8;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
  }

  else
  {
    [(DDParsecCollectionViewController *)self interactionEndedWithPunchout:0];
  }
}

void __50__DDParsecCollectionViewController_openParsecURL___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__DDParsecCollectionViewController_openParsecURL___block_invoke_2;
  v4[3] = &unk_2782911E0;
  v3 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  [v2 openURL:v3 configuration:0 completionHandler:v4];
}

void __50__DDParsecCollectionViewController_openParsecURL___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "openParsecURL: failed with error: %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__DDParsecCollectionViewController_openParsecURL___block_invoke_237;
  v9[3] = &unk_278290BC8;
  v9[4] = *(a1 + 32);
  v10 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getStatusBarHidden:(id)a3
{
  v6 = a3;
  if ([(DDParsecCollectionViewController *)self prefersStatusBarHidden])
  {
    v6[2](v6, 1);
    v4 = v6;
  }

  else
  {
    v5 = [MEMORY[0x277D75128] sharedApplication];
    v6[2](v6, [v5 isStatusBarHidden]);

    v4 = v6;
  }
}

- (void)reportAnIssueWithReportIdentifier:(id)a3 sfReportData:(id)a4
{
  if (a4 && a3)
  {
    reportAnIssueBlock = self->_reportAnIssueBlock;
    if (reportAnIssueBlock)
    {
      reportAnIssueBlock[2](reportAnIssueBlock, a3, a4);
    }
  }
}

- (void)loadReportAnIssueImage:(id)a3
{
  reportAnIssueMetadataFetchingBlock = self->_reportAnIssueMetadataFetchingBlock;
  if (reportAnIssueMetadataFetchingBlock)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = *MEMORY[0x277D46C48];
    v6 = a3;
    v7 = [v4 setWithObject:v5];
    v10 = reportAnIssueMetadataFetchingBlock[2](reportAnIssueMetadataFetchingBlock, v7);

    v8 = [v10 objectForKey:v5];
    v6[2](v6, v8);
  }

  else
  {
    v9 = *(a3 + 2);
    v10 = a3;
    v9();
  }
}

- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277D75A28];
    v7 = v5;
    v8 = [v6 mediumDetent];
    v12[0] = v8;
    v9 = [MEMORY[0x277D75A28] largeDetent];
    v12[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    [v7 setDetents:v10];

    [v7 setPrefersGrabberVisible:1];
  }

  objc_opt_class();
  [(DDParsecCollectionViewController *)self adaptForPresentationInPopover:objc_opt_isKindOfClass() & 1];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [(DDParsecCollectionViewController *)self dismissCompletionHandler];

  if (v4)
  {
    v5 = [(DDParsecCollectionViewController *)self dismissCompletionHandler];
    v5[2]();

    [(DDParsecCollectionViewController *)self setDismissCompletionHandler:0];
  }
}

- (DDParsecCollectionDelegate)parsecDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_parsecDelegate);

  return WeakRetained;
}

void __76__DDParsecCollectionViewController_fetchRemoteViewControllerWithValidInput___block_invoke_cold_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not get an out-of-process view controller. Error %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end