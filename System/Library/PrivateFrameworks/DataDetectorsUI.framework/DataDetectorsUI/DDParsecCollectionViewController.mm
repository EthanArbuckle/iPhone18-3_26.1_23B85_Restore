@interface DDParsecCollectionViewController
- (CGSize)preferredContentSize;
- (DDParsecCollectionDelegate)parsecDelegate;
- (DDParsecCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (DDParsecCollectionViewController)initWithQuery:(id)query;
- (DDParsecCollectionViewController)initWithRVItem:(id)item;
- (DDParsecCollectionViewController)initWithResult:(__DDResult *)result context:(id)context;
- (DDParsecCollectionViewController)initWithString:(id)string range:(_NSRange)range dictionaryOnly:(BOOL)only;
- (id)popoverPresentationController;
- (id)presentationController;
- (int64_t)modalPresentationStyle;
- (void)_interactionEnded;
- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)adaptForPresentationInPopover:(BOOL)popover;
- (void)appDidEnterBackground;
- (void)appWillEnterForeground;
- (void)fetchRemoteViewControllerWithValidInput:(BOOL)input;
- (void)getStatusBarHidden:(id)hidden;
- (void)interactionEndedWithPunchout:(BOOL)punchout;
- (void)loadReportAnIssueImage:(id)image;
- (void)openParsecURL:(id)l;
- (void)performClientTextQueryWithTerm:(id)term queryId:(unint64_t)id sessionId:(id)sessionId userAgent:(id)agent reply:(id)reply;
- (void)presentRemoteCollection:(id)collection;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)remoteVCIsReady;
- (void)replaceControllerWithController:(id)controller;
- (void)reportAnIssueWithReportIdentifier:(id)identifier sfReportData:(id)data;
- (void)setTitle:(id)title;
- (void)showError:(id)error;
- (void)showSpinner;
- (void)updateDelegateOfPresentationController:(id)controller;
- (void)updateVisualMode;
@end

@implementation DDParsecCollectionViewController

- (DDParsecCollectionViewController)initWithString:(id)string range:(_NSRange)range dictionaryOnly:(BOOL)only
{
  onlyCopy = only;
  length = range.length;
  location = range.location;
  stringCopy = string;
  v11 = [(DDParsecCollectionViewController *)self initWithNibName:0 bundle:0];
  if (v11)
  {
    if (stringCopy)
    {
      v21.length = [stringCopy length];
      v20.location = location;
      v20.length = length;
      v21.location = 0;
      if (NSIntersectionRange(v20, v21).length)
      {
        v12 = [stringCopy substringWithRange:{location, length}];
        controlCharacterSet = [MEMORY[0x277CCAB50] controlCharacterSet];
        whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        [controlCharacterSet formUnionWithCharacterSet:whitespaceCharacterSet];

        [controlCharacterSet addCharactersInRange:{65529, 7}];
        invertedSet = [controlCharacterSet invertedSet];
        v16 = [v12 rangeOfCharacterFromSet:invertedSet];

        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_storeStrong(&v11->_queryString, string);
          v17 = [v12 stringByTrimmingCharactersInSet:controlCharacterSet];

          v18 = [v17 length];
          v11->_queryRange.location = v16 + location;
          v11->_queryRange.length = v18;
          [(DDParsecCollectionViewController *)v11 setTitle:v17];
          v12 = v17;
        }
      }
    }

    v11->_dictionaryMode = onlyCopy;
    if (onlyCopy)
    {
      v11->_popoverMode = 0;
    }

    [(DDParsecCollectionViewController *)v11 fetchRemoteViewControllerWithValidInput:v11->_queryString != 0];
  }

  return v11;
}

- (DDParsecCollectionViewController)initWithQuery:(id)query
{
  queryCopy = query;
  v6 = [(DDParsecCollectionViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    if (queryCopy)
    {
      objc_storeStrong(&v6->_query, query);
      title = [queryCopy title];
      [(DDParsecCollectionViewController *)v7 setTitle:title];
    }

    [(DDParsecCollectionViewController *)v7 fetchRemoteViewControllerWithValidInput:v7->_query != 0];
  }

  return v7;
}

- (DDParsecCollectionViewController)initWithRVItem:(id)item
{
  itemCopy = item;
  query = [itemCopy query];

  objc_storeStrong(&self->_item, item);
  if (query)
  {
    query2 = [itemCopy query];
    v8 = [(DDParsecCollectionViewController *)self initWithQuery:query2];
  }

  else
  {
    text = [itemCopy text];
    v10 = text;
    v11 = &stru_282C1E0A8;
    if (text)
    {
      v11 = text;
    }

    query2 = v11;

    highlightRange = [itemCopy highlightRange];
    v14 = v13;
    if ([itemCopy type] == 3)
    {
      ddResult = [itemCopy ddResult];
      matchedString = [ddResult matchedString];

      v14 = [(__CFString *)matchedString length];
      highlightRange = 0;
      query2 = matchedString;
    }

    v8 = [(DDParsecCollectionViewController *)self initWithString:query2 range:highlightRange, v14];
  }

  v17 = v8;

  return v17;
}

- (void)setTitle:(id)title
{
  v4 = MEMORY[0x277CCA900];
  titleCopy = title;
  newlineCharacterSet = [v4 newlineCharacterSet];
  v7 = [titleCopy componentsSeparatedByCharactersInSet:newlineCharacterSet];

  v8 = [v7 componentsJoinedByString:@" "];
  v9.receiver = self;
  v9.super_class = DDParsecCollectionViewController;
  [(DDParsecCollectionViewController *)&v9 setTitle:v8];
}

- (DDParsecCollectionViewController)initWithResult:(__DDResult *)result context:(id)context
{
  v24[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = [(DDParsecCollectionViewController *)self initWithNibName:0 bundle:0];
  if (v7)
  {
    if (result)
    {
      v8 = DDResultGetMatchedString();
      if (v8)
      {
        [(DDParsecCollectionViewController *)v7 setTitle:v8];
        v9 = [MEMORY[0x277D04218] resultFromCoreResult:result];
        v10 = v7->_result;
        v7->_result = v9;

        if (contextCopy)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v12 = [contextCopy objectForKeyedSubscript:@"LeadingText"];
          [dictionary setObject:v12 forKeyedSubscript:@"LeadingText"];

          v13 = [contextCopy objectForKeyedSubscript:@"TrailingText"];
          [dictionary setObject:v13 forKeyedSubscript:@"TrailingText"];

          v14 = [contextCopy objectForKeyedSubscript:@"SelectedText"];
          [dictionary setObject:v14 forKeyedSubscript:@"SelectedText"];

          allKeys = [dictionary allKeys];
          v16 = [allKeys count];

          if (v16)
          {
            v17 = [dictionary copy];
            context = v7->_context;
            v7->_context = v17;
          }
        }

        v19 = [(DDAction *)DDSearchWebAction actionWithURL:0 result:result context:contextCopy];
        v24[0] = v19;
        v20 = [DDCopyAction actionWithURL:0 result:result context:contextCopy];
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

- (DDParsecCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = DDParsecCollectionViewController;
  v4 = [(DDParsecCollectionViewController *)&v12 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = _UISolariumEnabled();
    v4->_solariumEnabled = v5;
    v4->_needsBackground = v5 ^ 1;
    [(DDParsecCollectionViewController *)v4 setNavigationBarHidden:1 animated:0];
    v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel__interactionEnded];
    tapGesture = v4->_tapGesture;
    v4->_tapGesture = v6;

    view = [(DDParsecCollectionViewController *)v4 view];
    [view addGestureRecognizer:v4->_tapGesture];

    [(DDParsecCollectionViewController *)v4 setModalPresentationStyle:7];
    [(DDParsecCollectionViewController *)v4 setModalInPresentation:0];
    presentationController = [(DDParsecCollectionViewController *)v4 presentationController];
    [presentationController setDelegate:v4];

    v4->_popoverMode = 1;
    [(DDParsecCollectionViewController *)v4 updateVisualMode];
    v10 = v4;
  }

  return v4;
}

- (void)updateDelegateOfPresentationController:(id)controller
{
  controllerCopy = controller;
  delegate = [controllerCopy delegate];
  if (delegate != self)
  {
    if (delegate)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v6 isEqualToString:@"DDDelegateMultiplexer"];

      if ((v7 & 1) == 0)
      {
        v8 = [[DDDelegateMultiplexer alloc] initWithDelegate:self andDelegate:delegate];
        [controllerCopy setDelegate:v8];
        presentationDelegateProxy = self->_presentationDelegateProxy;
        self->_presentationDelegateProxy = v8;
      }
    }

    else
    {
      [controllerCopy setDelegate:self];
    }
  }
}

- (id)popoverPresentationController
{
  self->_requestingPopoverPresentationController = 1;
  v7.receiver = self;
  v7.super_class = DDParsecCollectionViewController;
  popoverPresentationController = [(DDParsecCollectionViewController *)&v7 popoverPresentationController];
  [popoverPresentationController _setCentersPopoverIfSourceViewNotSet:1];
  if (self->_solariumEnabled)
  {
    [popoverPresentationController setBackgroundColor:0];
  }

  else
  {
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [popoverPresentationController setBackgroundColor:systemGroupedBackgroundColor];
  }

  view = [(DDParsecCollectionViewController *)self view];
  [view _setOverrideVibrancyTrait:0];

  [(DDParsecCollectionViewController *)self updateDelegateOfPresentationController:popoverPresentationController];
  self->_requestingPopoverPresentationController = 0;

  return popoverPresentationController;
}

- (id)presentationController
{
  v5.receiver = self;
  v5.super_class = DDParsecCollectionViewController;
  presentationController = [(DDParsecCollectionViewController *)&v5 presentationController];
  [(DDParsecCollectionViewController *)self updateDelegateOfPresentationController:presentationController];

  return presentationController;
}

- (int64_t)modalPresentationStyle
{
  if (!self->_requestingPopoverPresentationController)
  {
    self->_requestingPopoverPresentationController = 1;
    v6.receiver = self;
    v6.super_class = DDParsecCollectionViewController;
    popoverPresentationController = [(DDParsecCollectionViewController *)&v6 popoverPresentationController];
    [(DDParsecCollectionViewController *)self updateDelegateOfPresentationController:popoverPresentationController];
    self->_requestingPopoverPresentationController = 0;
  }

  v5.receiver = self;
  v5.super_class = DDParsecCollectionViewController;
  return [(DDParsecCollectionViewController *)&v5 modalPresentationStyle];
}

- (void)adaptForPresentationInPopover:(BOOL)popover
{
  v3 = popover & ~self->_dictionaryMode;
  if (self->_popoverMode != v3)
  {
    self->_popoverMode = popover & ~self->_dictionaryMode;
    serviceViewControllerProxy = [(_UIRemoteViewController *)self->_remoteViewController serviceViewControllerProxy];
    [serviceViewControllerProxy setPopoverMode:v3];
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
  view = [(DDParsecCollectionViewController *)self view];
  [view _setOverrideVibrancyTrait:0];

  needsBackground = self->_needsBackground;
  if (needsBackground)
  {
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  }

  else
  {
    systemGroupedBackgroundColor = 0;
  }

  view2 = [(DDParsecCollectionViewController *)self view];
  [view2 setBackgroundColor:systemGroupedBackgroundColor];

  if (needsBackground)
  {
  }

  topViewController = [(DDParsecCollectionViewController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    topViewController2 = [(DDParsecCollectionViewController *)self topViewController];
    [topViewController2 updateStyle];
  }
}

- (void)fetchRemoteViewControllerWithValidInput:(BOOL)input
{
  if (input)
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
    serviceViewControllerProxy = [(_UIRemoteViewController *)remoteViewController serviceViewControllerProxy];
    [serviceViewControllerProxy appDidEnterBackground];
  }
}

- (void)appWillEnterForeground
{
  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    serviceViewControllerProxy = [(_UIRemoteViewController *)remoteViewController serviceViewControllerProxy];
    [serviceViewControllerProxy appWillEnterForeground];
  }
}

- (void)presentRemoteCollection:(id)collection
{
  collectionCopy = collection;
  collectionCopy2 = collection;
  objc_storeStrong(&self->_remoteViewController, collectionCopy);
  [collectionCopy2 setHostSideDelegate:self];
  serviceViewControllerProxy = [collectionCopy2 serviceViewControllerProxy];
  query = self->_query;
  previewMode = self->_previewMode;
  sheetMode = self->_sheetMode;
  popoverMode = self->_popoverMode;
  solariumEnabled = self->_solariumEnabled;
  style = self->_style;
  traitCollection = [(DDParsecCollectionViewController *)self traitCollection];
  [traitCollection displayScale];
  v13 = v12;
  LOBYTE(collectionCopy) = self->_dictionaryMode;
  textQueryProvider = [(RVItem *)self->_item textQueryProvider];
  BYTE1(v21) = textQueryProvider != 0;
  LOBYTE(v21) = collectionCopy;
  [serviceViewControllerProxy prepareWithQueryObject:query previewMode:previewMode sheetMode:sheetMode popoverMode:popoverMode solarium:solariumEnabled viewStyle:style scale:v13 dictionaryMode:v21 remoteTextQuery:?];

  title = [(DDParsecCollectionViewController *)self title];

  if (title)
  {
    title2 = [(DDParsecCollectionViewController *)self title];
    [serviceViewControllerProxy setOriginalTitle:title2];
  }

  queryString = self->_queryString;
  if (queryString)
  {
    [serviceViewControllerProxy startQueryWithString:queryString range:{self->_queryRange.location, self->_queryRange.length}];
  }

  else
  {
    result = self->_result;
    if (result)
    {
      [serviceViewControllerProxy startQueryWithResult:result context:self->_context];
    }
  }

  if (self->_query)
  {
    [serviceViewControllerProxy startQueryWithQuery:?];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_appWillEnterForeground name:*MEMORY[0x277D76758] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_appDidEnterBackground name:*MEMORY[0x277D76660] object:0];
}

- (void)remoteVCIsReady
{
  [(DDParsecCollectionViewController *)self replaceControllerWithController:self->_remoteViewController];
  self->_needsBackground = 0;

  [(DDParsecCollectionViewController *)self updateVisualMode];
}

- (void)performClientTextQueryWithTerm:(id)term queryId:(unint64_t)id sessionId:(id)sessionId userAgent:(id)agent reply:(id)reply
{
  termCopy = term;
  sessionIdCopy = sessionId;
  agentCopy = agent;
  replyCopy = reply;
  textQueryProvider = [(RVItem *)self->_item textQueryProvider];

  if (textQueryProvider)
  {
    v17 = objc_alloc_init(DDHostTextQueryContext);
    [(DDHostTextQueryContext *)v17 setTitle:termCopy];
    [(DDHostTextQueryContext *)v17 setQueryString:termCopy];
    [(DDHostTextQueryContext *)v17 setQueryID:id];
    [(DDHostTextQueryContext *)v17 setIdentifier:sessionIdCopy];
    [(DDHostTextQueryContext *)v17 setUserAgent:agentCopy];
    textQueryProvider2 = [(RVItem *)self->_item textQueryProvider];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __101__DDParsecCollectionViewController_performClientTextQueryWithTerm_queryId_sessionId_userAgent_reply___block_invoke;
    v19[3] = &unk_2782911B8;
    v20 = replyCopy;
    (textQueryProvider2)[2](textQueryProvider2, v17, v19);
  }
}

- (void)showError:(id)error
{
  errorCopy = error;
  v12 = [[DDParsecNoDataViewController alloc] initForSolarium:self->_solariumEnabled];
  title = [(DDParsecCollectionViewController *)self title];
  v6 = title;
  v7 = &stru_282C1E0A8;
  if (title)
  {
    v7 = title;
  }

  v8 = v7;

  [v12 setTitle:v8];
  [v12 setSearchWebQuery:v8];

  [v12 setReason:errorCopy];
  if (self->_query)
  {
    [v12 setLookup:0];
  }

  else
  {
    title2 = [(DDParsecCollectionViewController *)self title];
    [v12 setLookup:{objc_msgSend(title2, "length") != 0}];
  }

  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:self action:sel_doneButtonPressed_];
  navigationItem = [v12 navigationItem];
  [navigationItem setRightBarButtonItem:v10];

  [v12 updateStyle];
  [(DDParsecCollectionViewController *)self showingErrorView:1];
  [(DDParsecCollectionViewController *)self replaceControllerWithController:v12];
  [(DDParsecCollectionViewController *)self setNavigationBarHidden:0 animated:0];
}

- (void)showSpinner
{
  v7 = [[DDParsecLoadingViewController alloc] initForSolarium:self->_solariumEnabled];
  title = [(DDParsecCollectionViewController *)self title];
  v4 = title;
  v5 = &stru_282C1E0A8;
  if (title)
  {
    v5 = title;
  }

  v6 = v5;

  [v7 setTitle:v6];
  [(DDParsecCollectionViewController *)self replaceControllerWithController:v7];
}

- (void)replaceControllerWithController:(id)controller
{
  v9 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v4 = MEMORY[0x277CBEA60];
  controllerCopy2 = controller;
  v6 = [v4 arrayWithObjects:&controllerCopy count:1];

  [(DDParsecCollectionViewController *)self setViewControllers:v6, controllerCopy, v9];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)interactionEndedWithPunchout:(BOOL)punchout
{
  punchoutCopy = punchout;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [DDParsecCollectionViewController interactionEndedWithPunchout:];
    if (punchoutCopy)
    {
      goto LABEL_3;
    }
  }

  else if (punchoutCopy)
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
  parsecDelegate = [(DDParsecCollectionViewController *)self parsecDelegate];

  if (parsecDelegate)
  {
    parsecDelegate2 = [(DDParsecCollectionViewController *)self parsecDelegate];
    [parsecDelegate2 interactionDidFinishAndRequiresDismissal:!self->_dismissed];

    [(DDParsecCollectionViewController *)self setParsecDelegate:0];
  }

  else
  {
    dismissCompletionHandler = [(DDParsecCollectionViewController *)self dismissCompletionHandler];
    [(DDParsecCollectionViewController *)self dismissViewControllerAnimated:1 completion:dismissCompletionHandler];

    [(DDParsecCollectionViewController *)self setDismissCompletionHandler:0];
  }

  self->_dismissed = 1;
}

- (void)openParsecURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = dispatch_get_global_queue(33, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__DDParsecCollectionViewController_openParsecURL___block_invoke;
    v6[3] = &unk_278290BC8;
    v7 = lCopy;
    selfCopy = self;
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

- (void)getStatusBarHidden:(id)hidden
{
  hiddenCopy = hidden;
  if ([(DDParsecCollectionViewController *)self prefersStatusBarHidden])
  {
    hiddenCopy[2](hiddenCopy, 1);
    v4 = hiddenCopy;
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    hiddenCopy[2](hiddenCopy, [mEMORY[0x277D75128] isStatusBarHidden]);

    v4 = hiddenCopy;
  }
}

- (void)reportAnIssueWithReportIdentifier:(id)identifier sfReportData:(id)data
{
  if (data && identifier)
  {
    reportAnIssueBlock = self->_reportAnIssueBlock;
    if (reportAnIssueBlock)
    {
      reportAnIssueBlock[2](reportAnIssueBlock, identifier, data);
    }
  }
}

- (void)loadReportAnIssueImage:(id)image
{
  reportAnIssueMetadataFetchingBlock = self->_reportAnIssueMetadataFetchingBlock;
  if (reportAnIssueMetadataFetchingBlock)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = *MEMORY[0x277D46C48];
    imageCopy = image;
    v7 = [v4 setWithObject:v5];
    imageCopy2 = reportAnIssueMetadataFetchingBlock[2](reportAnIssueMetadataFetchingBlock, v7);

    v8 = [imageCopy2 objectForKey:v5];
    imageCopy[2](imageCopy, v8);
  }

  else
  {
    v9 = *(image + 2);
    imageCopy2 = image;
    v9();
  }
}

- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  v12[2] = *MEMORY[0x277D85DE8];
  presentationControllerCopy = presentationController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277D75A28];
    v7 = presentationControllerCopy;
    mediumDetent = [v6 mediumDetent];
    v12[0] = mediumDetent;
    largeDetent = [MEMORY[0x277D75A28] largeDetent];
    v12[1] = largeDetent;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    [v7 setDetents:v10];

    [v7 setPrefersGrabberVisible:1];
  }

  objc_opt_class();
  [(DDParsecCollectionViewController *)self adaptForPresentationInPopover:objc_opt_isKindOfClass() & 1];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCompletionHandler = [(DDParsecCollectionViewController *)self dismissCompletionHandler];

  if (dismissCompletionHandler)
  {
    dismissCompletionHandler2 = [(DDParsecCollectionViewController *)self dismissCompletionHandler];
    dismissCompletionHandler2[2]();

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