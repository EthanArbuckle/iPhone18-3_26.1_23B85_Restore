@interface HLPHelpTopicViewController
- (HLPHelpLoadingView)loadingView;
- (HLPHelpTopicViewController)init;
- (HLPHelpTopicViewControllerDelegate)delegate;
- (WKWebView)webView;
- (_NSRange)rangeFromData:(id)data byteRangeString:(id)string;
- (int64_t)closeBarButtonSystemItem;
- (void)_loadWithInfo:(id)info allowErrorMessage:(BOOL)message;
- (void)backButtonTapped;
- (void)cleanup;
- (void)dealloc;
- (void)dismiss;
- (void)forwardButtonTapped;
- (void)helpTopicViewController:(id)controller failToLoadWithError:(id)error;
- (void)helpTopicViewController:(id)controller selectedHelpTopicItem:(id)item accessType:(int64_t)type;
- (void)helpTopicViewControllerContentViewed:(id)viewed topicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(int64_t)style fromTopicID:(id)iD externalURLString:(id)string;
- (void)helpTopicViewControllerCurrentTopicIsPassionPoint:(id)point;
- (void)helpTopicViewControllerShowHelpBookInfo:(id)info;
- (void)loadHTMLString:(id)string anchor:(id)anchor;
- (void)loadHelpTopicItem:(id)item accessType:(int64_t)type searchTerms:(id)terms anchor:(id)anchor;
- (void)logAnalyticsContentViewedWithTopicID:(id)d topicTitle:(id)title source:(id)source fromTopicID:(id)iD externalURLString:(id)string;
- (void)registerTraitChanges;
- (void)reloadCurrentTopic;
- (void)saveCurrentTopicItem;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setDarkModeEnabled:(BOOL)enabled;
- (void)setFullBookView:(BOOL)view;
- (void)setSupportsDarkMode:(BOOL)mode;
- (void)showHelpBookInfo:(id)info;
- (void)showTableOfContent;
- (void)showWebViewDelay;
- (void)updateBackgroundColor;
- (void)updateDoneButton;
- (void)updateHTMLStringPath:(id)path tag:(id)tag attribute:(id)attribute useScheme:(BOOL)scheme extension:(id)extension;
- (void)updateNavigationBar;
- (void)updateNavigationButtons;
- (void)updateScrollPositionForCurrentTopicItem;
- (void)updateURLSchemeTask:(id)task URL:(id)l MIMEType:(id)type data:(id)data error:(id)error;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation;
- (void)webView:(id)view startURLSchemeTask:(id)task;
- (void)webView:(id)view stopURLSchemeTask:(id)task;
@end

@implementation HLPHelpTopicViewController

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_showWebViewDelay object:0];
  objc_storeWeak(&self->_delegate, 0);
  [(WKWebView *)self->_webView setNavigationDelegate:0];
  v4 = +[HLPURLSessionManager defaultManager];
  [v4 cancelSessionItem:self->_URLSessionItem];

  v5.receiver = self;
  v5.super_class = HLPHelpTopicViewController;
  [(HLPHelpTopicViewController *)&v5 dealloc];
}

- (HLPHelpTopicViewController)init
{
  v13.receiver = self;
  v13.super_class = HLPHelpTopicViewController;
  v2 = [(HLPHelpTopicViewController *)&v13 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    webViewRequestsMap = v2->_webViewRequestsMap;
    v2->_webViewRequestsMap = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    webViewRequestsDataMap = v2->_webViewRequestsDataMap;
    v2->_webViewRequestsDataMap = dictionary2;

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v2->_RTL = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1;

    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    topicCache = v2->_topicCache;
    v2->_topicCache = v8;

    [(NSCache *)v2->_topicCache setTotalCostLimit:0x200000];
    v10 = [MEMORY[0x277CBEBF8] mutableCopy];
    topicHistory = v2->_topicHistory;
    v2->_topicHistory = v10;
  }

  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HLPHelpTopicViewController;
  [(HLPHelpTopicViewController *)&v4 viewDidLoad];
  webView = [(HLPHelpTopicViewController *)self webView];
  [webView setAlpha:0.0];

  [(HLPHelpTopicViewController *)self updateNavigationBar];
  [(HLPHelpTopicViewController *)self updateBackgroundColor];
  [(HLPHelpTopicViewController *)self registerTraitChanges];
}

- (void)setFullBookView:(BOOL)view
{
  if (self->_fullBookView != view)
  {
    self->_fullBookView = view;
    [(HLPHelpTopicViewController *)self updateNavigationBar];
  }
}

- (void)updateNavigationBar
{
  v34[4] = *MEMORY[0x277D85DE8];
  if (self->_displayHelpTopicsOnly || [(HLPHelpTopicViewController *)self fullBookView])
  {
    v3 = 0;
  }

  else
  {
    v32 = [MEMORY[0x277D755B8] systemImageNamed:@"list.bullet"];
    v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v32 style:0 target:self action:sel_showTableOfContent];
    tocBarButtonItem = self->_tocBarButtonItem;
    self->_tocBarButtonItem = v4;

    v6 = +[HLPCommonDefines HLPBundle];
    v7 = [v6 localizedStringForKey:@"Show Table of Contents" value:&stru_2864756F0 table:0];
    [(UIBarButtonItem *)self->_tocBarButtonItem setAccessibilityLabel:v7];

    v30 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
    [v30 setWidth:*&gHLPHelpTopicViewSpacerWidth];
    v31 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.backward"];
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v31 style:0 target:self action:sel_backButtonTapped];
    backBarButtonItem = self->_backBarButtonItem;
    self->_backBarButtonItem = v8;

    [(UIBarButtonItem *)self->_backBarButtonItem setEnabled:0];
    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
    [v10 setWidth:*&gHLPHelpTopicViewSpacerWidth];
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward"];
    v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v11 style:0 target:self action:sel_forwardButtonTapped];
    forwardBarButtonItem = self->_forwardBarButtonItem;
    self->_forwardBarButtonItem = v12;

    [(UIBarButtonItem *)self->_forwardBarButtonItem setEnabled:0];
    v14 = +[HLPCommonDefines HLPBundle];
    v15 = [v14 localizedStringForKey:@"Back" value:&stru_2864756F0 table:0];
    [(UIBarButtonItem *)self->_backBarButtonItem setAccessibilityLabel:v15];

    v16 = +[HLPCommonDefines HLPBundle];
    v17 = [v16 localizedStringForKey:@"Returns to the previously-visited topic." value:&stru_2864756F0 table:0];
    [(UIBarButtonItem *)self->_backBarButtonItem setAccessibilityHint:v17];

    v18 = +[HLPCommonDefines HLPBundle];
    v19 = [v18 localizedStringForKey:@"Forward" value:&stru_2864756F0 table:0];
    [(UIBarButtonItem *)self->_forwardBarButtonItem setAccessibilityLabel:v19];

    v20 = +[HLPCommonDefines HLPBundle];
    v21 = [v20 localizedStringForKey:@"Navigates forward in the history of visited topics." value:&stru_2864756F0 table:0];
    [(UIBarButtonItem *)self->_forwardBarButtonItem setAccessibilityHint:v21];

    v22 = _UISolariumEnabled();
    v23 = self->_tocBarButtonItem;
    if (v22)
    {
      v34[0] = self->_tocBarButtonItem;
      v34[1] = v30;
      v24 = self->_forwardBarButtonItem;
      v34[2] = self->_backBarButtonItem;
      v34[3] = v24;
      v25 = MEMORY[0x277CBEA60];
      v26 = v34;
      v27 = 4;
    }

    else
    {
      v33[0] = self->_tocBarButtonItem;
      v33[1] = v30;
      v33[2] = self->_backBarButtonItem;
      v33[3] = v10;
      v33[4] = self->_forwardBarButtonItem;
      v25 = MEMORY[0x277CBEA60];
      v26 = v33;
      v27 = 5;
    }

    v3 = [v25 arrayWithObjects:v26 count:v27];
  }

  navigationItem = [(HLPHelpTopicViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItems:v3];

  v29 = *MEMORY[0x277D85DE8];
}

- (HLPHelpLoadingView)loadingView
{
  loadingView = self->_loadingView;
  if (!loadingView)
  {
    v4 = [HLPHelpLoadingView alloc];
    v5 = [(HLPHelpLoadingView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_loadingView;
    self->_loadingView = v5;

    [(HLPHelpLoadingView *)self->_loadingView setDelegate:self];
    [(HLPHelpLoadingView *)self->_loadingView setSupportsDarkMode:self->_supportsDarkMode];
    [(HLPHelpLoadingView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(HLPHelpTopicViewController *)self view];
    [view addSubview:self->_loadingView];

    topAnchor = [(HLPHelpLoadingView *)self->_loadingView topAnchor];
    view2 = [(HLPHelpTopicViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v11 setActive:1];

    bottomAnchor = [(HLPHelpLoadingView *)self->_loadingView bottomAnchor];
    view3 = [(HLPHelpTopicViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v15 setActive:1];

    leadingAnchor = [(HLPHelpLoadingView *)self->_loadingView leadingAnchor];
    view4 = [(HLPHelpTopicViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v19 setActive:1];

    trailingAnchor = [(HLPHelpLoadingView *)self->_loadingView trailingAnchor];
    view5 = [(HLPHelpTopicViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v23 setActive:1];

    loadingView = self->_loadingView;
  }

  return loadingView;
}

- (WKWebView)webView
{
  webView = self->_webView;
  if (!webView)
  {
    v4 = objc_alloc_init(MEMORY[0x277CE3858]);
    [v4 setAllowsInlineMediaPlayback:1];
    [v4 setURLSchemeHandler:self forURLScheme:@"apple-help-local"];
    [v4 setURLSchemeHandler:self forURLScheme:@"apple-help-remote-asset"];
    v5 = objc_alloc(MEMORY[0x277CE3850]);
    v6 = [v5 initWithFrame:v4 configuration:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = self->_webView;
    self->_webView = v6;

    [(WKWebView *)self->_webView setNavigationDelegate:self];
    scrollView = [(WKWebView *)self->_webView scrollView];
    [scrollView setDelegate:self];

    [(WKWebView *)self->_webView setAllowsLinkPreview:0];
    [(WKWebView *)self->_webView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (+[HLPCommonDefines isVisionOS])
    {
      [(WKWebView *)self->_webView setOpaque:0];
    }

    view = [(HLPHelpTopicViewController *)self view];
    [view addSubview:self->_webView];

    leadingAnchor = [(WKWebView *)self->_webView leadingAnchor];
    view2 = [(HLPHelpTopicViewController *)self view];
    leadingAnchor2 = [view2 leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v13 setActive:1];

    trailingAnchor = [(WKWebView *)self->_webView trailingAnchor];
    view3 = [(HLPHelpTopicViewController *)self view];
    trailingAnchor2 = [view3 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v17 setActive:1];

    topAnchor = [(WKWebView *)self->_webView topAnchor];
    view4 = [(HLPHelpTopicViewController *)self view];
    topAnchor2 = [view4 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v21 setActive:1];

    bottomAnchor = [(WKWebView *)self->_webView bottomAnchor];
    view5 = [(HLPHelpTopicViewController *)self view];
    bottomAnchor2 = [view5 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v25 setActive:1];

    webView = self->_webView;
  }

  return webView;
}

- (void)cleanup
{
  navigationItem = [(HLPHelpTopicViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItems:0];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];
}

- (void)setSupportsDarkMode:(BOOL)mode
{
  if (self->_supportsDarkMode != mode)
  {
    self->_supportsDarkMode = mode;
  }

  [(HLPHelpTopicViewController *)self updateBackgroundColor];
}

- (void)updateBackgroundColor
{
  if (self->_supportsDarkMode)
  {
    if (+[HLPCommonDefines isVisionOS])
    {
      [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemBackgroundColor];
    }
    clearColor = ;
    view = [(HLPHelpTopicViewController *)self view];
    [view setBackgroundColor:clearColor];

    [(WKWebView *)self->_webView setBackgroundColor:clearColor];
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    view2 = [(HLPHelpTopicViewController *)self view];
    [view2 setBackgroundColor:whiteColor];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WKWebView *)self->_webView setBackgroundColor:clearColor];
  }
}

- (void)updateDoneButton
{
  if ([(HLPHelpTopicViewController *)self isViewLoaded])
  {
    if (self->_hideDoneButton)
    {
      v4 = 0;
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:-[HLPHelpTopicViewController closeBarButtonSystemItem](self target:"closeBarButtonSystemItem") action:{self, sel_dismiss}];
    }

    navigationItem = [(HLPHelpTopicViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v4];
  }
}

- (int64_t)closeBarButtonSystemItem
{
  if (_UISolariumEnabled())
  {
    return 24;
  }

  else
  {
    return 0;
  }
}

- (void)backButtonTapped
{
  v3 = [HLPLoadInfo infoWithTopicItem:0 accessType:2 searchTerms:0 anchor:0];
  [(HLPHelpTopicViewController *)self _loadWithInfo:v3];
}

- (void)forwardButtonTapped
{
  v3 = [HLPLoadInfo infoWithTopicItem:0 accessType:3 searchTerms:0 anchor:0];
  [(HLPHelpTopicViewController *)self _loadWithInfo:v3];
}

- (void)updateScrollPositionForCurrentTopicItem
{
  scrollView = [(WKWebView *)self->_webView scrollView];
  [scrollView contentSize];
  [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem setContentSize:?];

  scrollView2 = [(WKWebView *)self->_webView scrollView];
  [scrollView2 contentOffset];
  [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem setContentOffset:?];
}

- (void)updateNavigationButtons
{
  if ([(NSMutableArray *)self->_topicHistory count])
  {
    firstObject = [(NSMutableArray *)self->_topicHistory firstObject];
    [(UIBarButtonItem *)self->_backBarButtonItem setEnabled:firstObject != self->_currentTopicHistoryItem];
  }

  else
  {
    [(UIBarButtonItem *)self->_backBarButtonItem setEnabled:0];
  }

  if ([(NSMutableArray *)self->_topicHistory count])
  {
    lastObject = [(NSMutableArray *)self->_topicHistory lastObject];
    [(UIBarButtonItem *)self->_forwardBarButtonItem setEnabled:lastObject != self->_currentTopicHistoryItem];
  }

  else
  {
    forwardBarButtonItem = self->_forwardBarButtonItem;

    [(UIBarButtonItem *)forwardBarButtonItem setEnabled:0];
  }
}

- (void)showTableOfContent
{
  if (self->_canShowTOC)
  {
    if ([(UIBarButtonItem *)self->_tocBarButtonItem isEnabled])
    {
      delegate = [(HLPHelpTopicViewController *)self delegate];
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        self->_canShowTOC = 0;
        delegate2 = [(HLPHelpTopicViewController *)self delegate];
        [delegate2 helpTopicViewControllerTableOfContentButtonTapped:self];
      }
    }
  }
}

- (void)dismiss
{
  delegate = [(HLPHelpTopicViewController *)self delegate];
  [delegate helpTopicViewControllerDoneButtonTapped:self];
}

- (void)logAnalyticsContentViewedWithTopicID:(id)d topicTitle:(id)title source:(id)source fromTopicID:(id)iD externalURLString:(id)string
{
  dCopy = d;
  titleCopy = title;
  sourceCopy = source;
  iDCopy = iD;
  stringCopy = string;
  traitCollection = [(HLPHelpTopicViewController *)self traitCollection];
  v17 = +[HLPAnalyticsEventContentViewed eventWithTopicID:topicTitle:source:interfaceStyle:](HLPAnalyticsEventContentViewed, "eventWithTopicID:topicTitle:source:interfaceStyle:", dCopy, titleCopy, sourceCopy, [traitCollection userInterfaceStyle]);

  if ([iDCopy length])
  {
    identifier = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
    [v17 setFromTopicID:identifier];
  }

  if ([stringCopy length])
  {
    [v17 setExternalURLString:stringCopy];
  }

  [v17 log];
  delegate = [(HLPHelpTopicViewController *)self delegate];
  traitCollection2 = [(HLPHelpTopicViewController *)self traitCollection];
  [delegate helpTopicViewControllerContentViewed:self topicID:dCopy topicTitle:titleCopy source:sourceCopy interfaceStyle:objc_msgSend(traitCollection2 fromTopicID:"userInterfaceStyle") externalURLString:{iDCopy, stringCopy}];
}

- (void)saveCurrentTopicItem
{
  helpBookController = self->_helpBookController;
  identifier = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
  v5 = [(HLPHelpBookController *)helpBookController helpTopicItemForID:identifier];

  if (([v5 isGlossary] & 1) == 0)
  {
    currentTopicHistoryItem = self->_currentTopicHistoryItem;
    if (currentTopicHistoryItem)
    {
      v11 = 0;
      v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:currentTopicHistoryItem requiringSecureCoding:1 error:&v11];
      v8 = v11;
      if (v8)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
      v7 = 0;
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setObject:v7 forKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 synchronize];

    v8 = 0;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)setDarkModeEnabled:(BOOL)enabled
{
  if (self->_darkModeEnabled != enabled)
  {
    self->_darkModeEnabled = enabled;
    if (enabled && !self->_supportsDarkMode)
    {
      [(HLPHelpTopicViewController *)self setSupportsDarkMode:1];
    }
  }
}

- (void)reloadCurrentTopic
{
  helpBookController = self->_helpBookController;
  identifier = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
  v7 = [(HLPHelpBookController *)helpBookController helpTopicItemForID:identifier];

  anchor = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem anchor];
  v6 = [HLPLoadInfo infoWithTopicItem:v7 accessType:4 searchTerms:0 anchor:anchor];
  [(HLPHelpTopicViewController *)self _loadWithInfo:v6];
}

- (void)loadHelpTopicItem:(id)item accessType:(int64_t)type searchTerms:(id)terms anchor:(id)anchor
{
  v7 = [HLPLoadInfo infoWithTopicItem:item accessType:type searchTerms:terms anchor:anchor];
  [(HLPHelpTopicViewController *)self loadWithInfo:v7];
}

- (void)_loadWithInfo:(id)info allowErrorMessage:(BOOL)message
{
  messageCopy = message;
  v110 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  helpTopicItem = [infoCopy helpTopicItem];
  obj = [infoCopy searchTerms];
  anchor = [infoCopy anchor];
  accessType = [infoCopy accessType];
  v7 = HLPLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v109 = helpTopicItem;
    _os_log_impl(&dword_2522BC000, v7, OS_LOG_TYPE_DEFAULT, "Loading topic %@", buf, 0xCu);
  }

  if (!self->_helpBookURL)
  {
    loadingView = [(HLPHelpTopicViewController *)self loadingView];
    [(HLPHelpTopicViewController *)loadingView showActivityIndicator:1];
LABEL_69:

    goto LABEL_70;
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_showWebViewDelay object:0];
  v8 = self->_displayHelpTopicsOnly || +[HLPCommonDefines isVisionOS];
  if (v8 && accessType == 1)
  {
    identifier = [helpTopicItem identifier];
    name = [helpTopicItem name];
    identifier2 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
    [(HLPHelpTopicViewController *)self logAnalyticsContentViewedWithTopicID:identifier topicTitle:name source:@"link" fromTopicID:identifier2 externalURLString:&stru_2864756F0];

    loadingView = objc_alloc_init(HLPHelpTopicViewController);
    [(HLPHelpTopicViewController *)loadingView setDisplayHelpTopicsOnly:self->_displayHelpTopicsOnly];
    if ([helpTopicItem isGlossary])
    {
      v13 = +[HLPCommonDefines HLPBundle];
      v14 = [v13 localizedStringForKey:@"Glossary" value:&stru_2864756F0 table:0];
      [(HLPHelpTopicViewController *)loadingView setTitle:v14];
    }

    else
    {
      if (!self->_showTopicNameAsTitle)
      {
LABEL_34:
        navigationController = [(HLPHelpTopicViewController *)self navigationController];
        [navigationController pushViewController:loadingView animated:1];

        [(HLPHelpTopicViewController *)loadingView setFullBookView:self->_fullBookView];
        [(HLPHelpTopicViewController *)loadingView setHideDoneButton:self->_hideDoneButton];
        [(HLPHelpTopicViewController *)loadingView setHelpBookController:self->_helpBookController];
        [(HLPHelpTopicViewController *)loadingView setShowTopicNameAsTitle:self->_showTopicNameAsTitle];
        [(HLPHelpTopicViewController *)loadingView setSingleTopic:self->_singleTopic];
        [(HLPHelpTopicViewController *)loadingView setDelegate:self];
        [(HLPHelpTopicViewController *)loadingView setHelpBookURL:self->_helpBookURL];
        [(HLPHelpTopicViewController *)loadingView setSupportsDarkMode:self->_supportsDarkMode];
        [(HLPHelpTopicViewController *)loadingView loadHelpTopicItem:helpTopicItem accessType:0 searchTerms:0 anchor:anchor];
        goto LABEL_69;
      }

      name2 = [helpTopicItem name];
      v13 = name2;
      if (name2)
      {
        v32 = name2;
      }

      else
      {
        v32 = &stru_2864756F0;
      }

      [(HLPHelpTopicViewController *)loadingView setTitle:v32];
    }

    goto LABEL_34;
  }

  v15 = !v8;
  if (accessType != 5)
  {
    v15 = 1;
  }

  if (v15)
  {
    if ((accessType + 1) > 0xA)
    {
      goto LABEL_52;
    }

    if (((1 << (accessType + 1)) & 0x7C7) == 0)
    {
      if (accessType == 2)
      {
        v89 = [(NSMutableArray *)self->_topicHistory indexOfObject:self->_currentTopicHistoryItem]- 1;
        if (v89 > 0x7FFFFFFFFFFFFFFDLL)
        {
          goto LABEL_52;
        }

        [(HLPHelpTopicViewController *)self updateScrollPositionForCurrentTopicItem];
        v90 = [(NSMutableArray *)self->_topicHistory objectAtIndexedSubscript:v89];
        currentTopicHistoryItem = self->_currentTopicHistoryItem;
        self->_currentTopicHistoryItem = v90;

        helpBookController = self->_helpBookController;
        identifier3 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
        v48 = [(HLPHelpBookController *)helpBookController helpTopicItemForID:identifier3];

        anchor2 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem anchor];
      }

      else
      {
        if (accessType != 3)
        {
          goto LABEL_52;
        }

        v43 = [(NSMutableArray *)self->_topicHistory indexOfObject:self->_currentTopicHistoryItem];
        if (v43 == 0x7FFFFFFFFFFFFFFFLL || v43 + 1 >= [(NSMutableArray *)self->_topicHistory count])
        {
          goto LABEL_52;
        }

        [(HLPHelpTopicViewController *)self updateScrollPositionForCurrentTopicItem];
        v44 = [(NSMutableArray *)self->_topicHistory objectAtIndexedSubscript:v43 + 1];
        v45 = self->_currentTopicHistoryItem;
        self->_currentTopicHistoryItem = v44;

        v46 = self->_helpBookController;
        identifier4 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
        v48 = [(HLPHelpBookController *)v46 helpTopicItemForID:identifier4];

        anchor2 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem anchor];
      }

      anchor = anchor2;
      helpTopicItem = v48;
      goto LABEL_52;
    }
  }

  else
  {
    navigationController2 = [(HLPHelpTopicViewController *)self navigationController];
    v17 = [navigationController2 popToRootViewControllerAnimated:0];
  }

  identifier5 = [helpTopicItem identifier];
  identifier6 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
  v20 = [identifier5 isEqualToString:identifier6];

  if (!v20 || ([(HLPHelpTopicViewController *)self searchTerms], v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == obj, v21, !v22))
  {
    if (accessType == 1)
    {
      [(HLPHelpTopicViewController *)self updateScrollPositionForCurrentTopicItem];
      identifier7 = [helpTopicItem identifier];
      name3 = [helpTopicItem name];
      identifier8 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
      [(HLPHelpTopicViewController *)self logAnalyticsContentViewedWithTopicID:identifier7 topicTitle:name3 source:@"link" fromTopicID:identifier8 externalURLString:&stru_2864756F0];

      [infoCopy setAnalyticsLogged:1];
    }

    v26 = [(NSMutableArray *)self->_topicHistory indexOfObject:self->_currentTopicHistoryItem];
    if (v26 != 0x7FFFFFFFFFFFFFFFLL && [(NSMutableArray *)self->_topicHistory count]>= 2)
    {
      v27 = v26 + 1;
      if ([(NSMutableArray *)self->_topicHistory count]> v27)
      {
        v28 = [(NSMutableArray *)self->_topicHistory count];
        v29 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v27, v28 - v27}];
        [(NSMutableArray *)self->_topicHistory removeObjectsAtIndexes:v29];
      }
    }

    v30 = self->_currentTopicHistoryItem;
    if (v30)
    {
      self->_currentTopicHistoryItem = 0;
      goto LABEL_48;
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v30 = [standardUserDefaults objectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];

    if (v30)
    {
      v35 = MEMORY[0x277CBEB98];
      v36 = objc_opt_class();
      v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
      v107 = 0;
      v38 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v37 fromData:v30 error:&v107];
      v39 = v107;
      v40 = self->_currentTopicHistoryItem;
      self->_currentTopicHistoryItem = v38;
    }

    anchor3 = [infoCopy anchor];
    if (anchor3)
    {
    }

    else
    {
      identifier9 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
      identifier10 = [helpTopicItem identifier];
      v52 = [identifier9 isEqualToString:identifier10];

      if (v52)
      {
        goto LABEL_48;
      }
    }

    v53 = self->_currentTopicHistoryItem;
    self->_currentTopicHistoryItem = 0;

LABEL_48:
    if (helpTopicItem)
    {
      v54 = self->_currentTopicHistoryItem;
      if (!v54)
      {
        v55 = objc_alloc_init(HLPHelpTopicHistoryItem);
        identifier11 = [helpTopicItem identifier];
        [(HLPHelpTopicHistoryItem *)v55 setIdentifier:identifier11];

        name4 = [helpTopicItem name];
        [(HLPHelpTopicHistoryItem *)v55 setName:name4];

        [(HLPHelpTopicHistoryItem *)v55 setAnchor:anchor];
        v58 = self->_currentTopicHistoryItem;
        self->_currentTopicHistoryItem = v55;

        v54 = self->_currentTopicHistoryItem;
      }

      [(NSMutableArray *)self->_topicHistory addObject:v54];
    }

LABEL_52:
    objc_storeStrong(&self->_searchTerms, obj);
    topicCache = self->_topicCache;
    identifier12 = [helpTopicItem identifier];
    loadingView = [(NSCache *)topicCache objectForKey:identifier12];

    self->_webViewLoaded = 0;
    webView = [(HLPHelpTopicViewController *)self webView];
    [webView setAlpha:0.0];

    if ([(HLPHelpTopicViewController *)loadingView length])
    {
      [(HLPHelpTopicViewController *)self loadHTMLString:loadingView anchor:anchor];
      goto LABEL_67;
    }

    objc_initWeak(buf, self);
    if (![(HLPHelpBookController *)self->_helpBookController serverType])
    {
      hrefID = [helpTopicItem hrefID];
      v63 = [hrefID length] == 0;

      if (v63)
      {
        if (!messageCopy)
        {
          goto LABEL_66;
        }

        loadingView2 = [(HLPHelpTopicViewController *)self loadingView];
        [loadingView2 showMessageWithError:0];
LABEL_65:

LABEL_66:
        objc_destroyWeak(buf);
LABEL_67:
        delegate = [(HLPHelpTopicViewController *)self delegate];
        [delegate helpTopicViewController:self selectedHelpTopicItem:helpTopicItem accessType:accessType];

        [(HLPHelpTopicViewController *)self updateNavigationButtons];
        [(HLPHelpTopicViewController *)self saveCurrentTopicItem];
        if (([infoCopy analyticsLogged] & 1) == 0)
        {
          identifier13 = [helpTopicItem identifier];
          name5 = [helpTopicItem name];
          analyticsSourceType = [infoCopy analyticsSourceType];
          [(HLPHelpTopicViewController *)self logAnalyticsContentViewedWithTopicID:identifier13 topicTitle:name5 source:analyticsSourceType fromTopicID:&stru_2864756F0 externalURLString:&stru_2864756F0];
        }

        goto LABEL_69;
      }
    }

    loadingView3 = [(HLPHelpTopicViewController *)self loadingView];
    [loadingView3 showActivityIndicator:1];

    if ([(HLPHelpBookController *)self->_helpBookController serverType])
    {
      v65 = MEMORY[0x277CCACA8];
      topicPathFormat = [(HLPHelpBookController *)self->_helpBookController topicPathFormat];
      identifier14 = [helpTopicItem identifier];
      v68 = [v65 stringWithFormat:topicPathFormat, identifier14];

      v69 = [MEMORY[0x277CBEBC0] URLWithString:v68];
      if (v69)
      {
        v70 = [MEMORY[0x277CCAB70] requestWithURL:v69];
        v95 = v69;
        v71 = +[HLPCommonDefines contentRequestHeaderFields];
        if (v71)
        {
          [v70 setCachePolicy:1];
          [v70 setAllHTTPHeaderFields:v71];
        }

        v72 = +[HLPJSONCacheController sharedInstance];
        identifier15 = [helpTopicItem identifier];
        v99[0] = MEMORY[0x277D85DD0];
        v99[1] = 3221225472;
        v99[2] = __62__HLPHelpTopicViewController__loadWithInfo_allowErrorMessage___block_invoke_2;
        v99[3] = &unk_2797073A8;
        objc_copyWeak(&v102, buf);
        v100 = helpTopicItem;
        v101 = anchor;
        v74 = [v72 formattedDataForRequest:v70 identifier:identifier15 completionHandler:v99];
        URLSessionItem = self->_URLSessionItem;
        self->_URLSessionItem = v74;

        objc_destroyWeak(&v102);
        v69 = v95;
      }
    }

    else
    {
      hrefID2 = [helpTopicItem hrefID];

      if (!hrefID2)
      {
LABEL_64:
        loadingView2 = +[HLPURLSessionManager defaultManager];
        [loadingView2 resumeSessionItem:self->_URLSessionItem];
        goto LABEL_65;
      }

      helpBookURL = self->_helpBookURL;
      hrefID3 = [helpTopicItem hrefID];
      v68 = [(NSURL *)helpBookURL URLByAppendingPathComponent:hrefID3];

      v69 = [MEMORY[0x277CCAD20] requestWithURL:v68];
      v79 = +[HLPStringCacheController sharedInstance];
      hrefID4 = [helpTopicItem hrefID];
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __62__HLPHelpTopicViewController__loadWithInfo_allowErrorMessage___block_invoke;
      v103[3] = &unk_279707380;
      objc_copyWeak(&v106, buf);
      v104 = anchor;
      v105 = helpTopicItem;
      v81 = [v79 formattedDataForRequest:v69 identifier:hrefID4 completionHandler:v103];
      v82 = self->_URLSessionItem;
      self->_URLSessionItem = v81;

      objc_destroyWeak(&v106);
    }

    goto LABEL_64;
  }

  if (anchor)
  {
    loadingView = [MEMORY[0x277CCACA8] stringWithFormat:@"window.location.hash='#%@'", anchor];
    webView2 = [(HLPHelpTopicViewController *)self webView];
    [webView2 evaluateJavaScript:loadingView completionHandler:0];

    goto LABEL_69;
  }

LABEL_70:

  v88 = *MEMORY[0x277D85DE8];
}

void __62__HLPHelpTopicViewController__loadWithInfo_allowErrorMessage___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v16 = a2;
  v9 = a3;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = [WeakRetained delegate];

  if (v12)
  {
    if (!v16 || v10)
    {
      v15 = [WeakRetained delegate];
      [v15 helpTopicViewController:WeakRetained failToLoadWithError:v10];
    }

    else
    {
      [WeakRetained loadHTMLString:v16 anchor:*(a1 + 32)];
      v13 = [WeakRetained topicCache];
      v14 = [*(a1 + 40) identifier];
      [v13 setObject:v16 forKey:v14 cost:{objc_msgSend(v9, "length")}];

      v15 = [WeakRetained delegate];
      [v15 helpTopicViewController:WeakRetained topicLoaded:*(a1 + 40)];
    }
  }

  [WeakRetained setURLSessionItem:0];
}

void __62__HLPHelpTopicViewController__loadWithInfo_allowErrorMessage___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v46 = a3;
  v45 = a5;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v13 = [WeakRetained delegate];

  if (v13)
  {
    if (v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v23 = [WeakRetained delegate];
      [v23 helpTopicViewController:WeakRetained failToLoadWithError:v11];
    }

    else
    {
      v14 = [v10 objectForKeyedSubscript:@"bookResponse"];
      v15 = [v14 objectForKeyedSubscript:@"articles"];
      v16 = [v15 firstObject];
      v43 = v14;

      v44 = v16;
      v17 = [v16 objectForKeyedSubscript:@"categoryInfo"];
      v18 = [v17 objectForKeyedSubscript:@"categories"];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v20)
      {
        v21 = *v48;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v48 != v21)
            {
              objc_enumerationMutation(v19);
            }

            if ([*(*(&v47 + 1) + 8 * i) containsString:@"passionpoints"])
            {
              [*(a1 + 32) setCategories:&unk_28647D1D0];
              v25 = [WeakRetained delegate];
              [v25 helpTopicViewControllerCurrentTopicIsPassionPoint:WeakRetained];

              goto LABEL_16;
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v47 objects:v51 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:

      v26 = [v44 objectForKeyedSubscript:@"content"];
      v42 = [v26 objectForKeyedSubscript:@"sections"];

      v41 = [v43 objectForKeyedSubscript:@"title"];
      v27 = [v42 firstObject];
      v40 = [v27 objectForKeyedSubscript:@"text"];

      v28 = [WeakRetained helpBookController];
      v29 = [v28 locale];
      v30 = [v29 isoCodes];
      v31 = [v30 firstObject];
      v32 = v31;
      v33 = @"en";
      if (v31)
      {
        v33 = v31;
      }

      v34 = v33;

      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"<html lang=%@><head><meta charset=UTF-8><title>%@</title></head>", v34, v41];
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@</html>", v35, v40];

      [WeakRetained loadHTMLString:v36 anchor:*(a1 + 40)];
      v37 = [WeakRetained topicCache];
      v38 = [*(a1 + 32) identifier];
      [v37 setObject:v36 forKey:v38 cost:{objc_msgSend(v46, "length")}];

      v39 = [WeakRetained delegate];
      [v39 helpTopicViewController:WeakRetained topicLoaded:*(a1 + 32)];
    }
  }

  [WeakRetained setURLSessionItem:0];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)loadHTMLString:(id)string anchor:(id)anchor
{
  anchorCopy = anchor;
  if (string)
  {
    v74 = anchorCopy;
    stringCopy = string;
    webViewRequestsDataMap = [(HLPHelpTopicViewController *)self webViewRequestsDataMap];
    [webViewRequestsDataMap removeAllObjects];

    -[HLPHelpTopicViewController setDarkModeEnabled:](self, "setDarkModeEnabled:", [stringCopy containsString:@"dark-mode-enabled"]);
    v9 = 0x279706000uLL;
    v10 = +[HLPCommonDefines HLPBundle];
    v11 = [MEMORY[0x277CCAB68] stringWithString:stringCopy];

    if ([(HLPHelpBookController *)self->_helpBookController contentFormatVersion]<= 4)
    {
      v12 = @"app_old";
    }

    else
    {
      v12 = @"app";
    }

    v13 = [v10 URLForResource:v12 withExtension:@"css"];
    v14 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v13 encoding:4 error:0];
    if ([(HLPHelpTopicViewController *)self supportsDarkMode]|| [(HLPHelpTopicViewController *)self supportsDarkMode])
    {
      v15 = [@":root{color-scheme:light dark}" stringByAppendingString:v14];

      v14 = v15;
    }

    v73 = v13;
    absoluteString = [v13 absoluteString];
    stringByDeletingLastPathComponent = [absoluteString stringByDeletingLastPathComponent];

    v72 = stringByDeletingLastPathComponent;
    v18 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"background-image: url(%@/"), stringByDeletingLastPathComponent;
    v19 = objc_msgSend(v14, "stringByReplacingOccurrencesOfString:withString:", @"background-image: url(./"), v18;

    v71 = v19;
    v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"<meta name='viewport' content='width=device-width initial-scale=1.0; maximum-scale=1.0; user-scalable=0'><style type=text/css>%@</style></head>", v19];;
    v20 = [v11 rangeOfString:@"</head>"];
    v69 = v21;
    v22 = [v11 rangeOfString:@"<body"];
    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = v22;
      v25 = v23;
      v26 = [v11 rangeOfString:@">" options:0 range:{v22 + v23, objc_msgSend(v11, "length") - (v22 + v23)}];
      if (v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = v26;
        v29 = v27;
        v68 = v20;
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        v32 = @"phone";
        if (userInterfaceIdiom == 6)
        {
          v32 = @"vision";
        }

        if (userInterfaceIdiom == 1)
        {
          v32 = @"pad";
        }

        v65 = v32;
        v66 = [v11 rangeOfString:@"class=" options:0 range:{v24, v29 - v24 + v28}];
        v64 = v33;
        if (v74)
        {
          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"data-anchorId=%@", v74];
        }

        else
        {
          v34 = 0;
        }

        isoCodes = [(HLPHelpLocale *)self->_locale isoCodes];
        firstObject = [isoCodes firstObject];

        if (firstObject)
        {
          v37 = MEMORY[0x277CCACA8];
          isoCodes2 = [(HLPHelpLocale *)self->_locale isoCodes];
          firstObject2 = [isoCodes2 firstObject];
          v67 = [v37 stringWithFormat:@"data-locale=%@", firstObject2];
        }

        else
        {
          v67 = 0;
        }

        v20 = v68;
        v40 = v34;
        if (v66 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v41 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ class=%@", @"<body", v65];
          [v41 appendString:@""];
          v42 = v67;
          if (v67)
          {
            [v41 appendFormat:@" %@", v67];
          }

          v9 = 0x279706000;
          if (v40)
          {
            [v41 appendFormat:@" %@", v40];
          }

          if (self->_fullBookView)
          {
            [v41 appendFormat:@" %@", @"hide-toc-button"];
          }

          if (self->_supportsDarkMode)
          {
            [v41 appendFormat:@" %@", @"dark-mode-supported"];
          }

          if (self->_singleTopic)
          {
            [v41 appendFormat:@" %@", @"single-topic"];
          }

          v43 = @"<body";
          v44 = v11;
          v45 = v41;
          v46 = v24;
          v47 = v25;
        }

        else
        {
          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@ ", @"class=", v65];
          v41 = v48;
          if (self->_supportsDarkMode)
          {
            v49 = [v48 stringByAppendingFormat:@"%@ ", @"dark-mode-supported"];

            v41 = v49;
          }

          v9 = 0x279706000uLL;
          if (self->_fullBookView)
          {
            v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@ ", v41, @"hide-toc-button"];

            v41 = v50;
          }

          if (self->_singleTopic)
          {
            v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@ ", v41, @"single-topic"];

            v41 = v51;
          }

          if (v67)
          {
            v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v67, v41];

            v41 = v52;
          }

          if (v40)
          {
            v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v40, v41];

            v41 = v53;
          }

          v42 = v67;
          v20 = v68;
          v43 = @"class=";
          v44 = v11;
          v45 = v41;
          v46 = v66;
          v47 = v64;
        }

        [v44 replaceOccurrencesOfString:v43 withString:v45 options:0 range:{v46, v47}];
      }
    }

    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 replaceCharactersInRange:v20 withString:{v69, v70}];
    }

    if (([*(v9 + 1336) isInternalBuild] & 1) != 0 || -[NSURL isFileURL](self->_helpBookURL, "isFileURL"))
    {
      [(HLPHelpTopicViewController *)self updateHTMLStringPath:v11 tag:@"<img" attribute:@"src="];
      [(HLPHelpTopicViewController *)self updateHTMLStringPath:v11 tag:@"<video" attribute:@"poster="];
      [(HLPHelpTopicViewController *)self updateHTMLStringPath:v11 tag:@"<source" attribute:@"srcset="];
      [(HLPHelpTopicViewController *)self updateHTMLStringPath:v11 tag:@"<source" attribute:@"src=" useScheme:1 extension:@"mp4"];
    }

    v54 = [v11 rangeOfString:@"</html>" options:4];
    if (v54 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v56 = v54;
      v57 = v55;
      v58 = [v10 URLForResource:@"app" withExtension:@"js"];
      v59 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v58 encoding:4 error:0];
      v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"<script>%@</script></html>", v59];
      [v11 replaceCharactersInRange:v56 withString:{v57, v60}];
    }

    webView = [(HLPHelpTopicViewController *)self webView];
    bundleURL = [v10 bundleURL];
    v63 = [webView loadHTMLString:v11 baseURL:bundleURL];

    anchorCopy = v74;
  }
}

- (void)updateHTMLStringPath:(id)path tag:(id)tag attribute:(id)attribute useScheme:(BOOL)scheme extension:(id)extension
{
  schemeCopy = scheme;
  pathCopy = path;
  tagCopy = tag;
  attributeCopy = attribute;
  extensionCopy = extension;
  v15 = [pathCopy rangeOfString:tagCopy];
  v17 = v16;
  isFileURL = [(NSURL *)self->_helpBookURL isFileURL];
  selfCopy = self;
  helpBookURL = self->_helpBookURL;
  if (isFileURL)
  {
    [(NSURL *)helpBookURL path];
  }

  else
  {
    [(NSURL *)helpBookURL absoluteString];
  }
  v20 = ;
  serverType = [(HLPHelpBookController *)selfCopy->_helpBookController serverType];
  if (v20)
  {
    v22 = v15 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = serverType == 1 && schemeCopy;
    v39 = v23;
    while (1)
    {
      v24 = v15 + v17;
      v25 = [pathCopy rangeOfString:attributeCopy options:0 range:{v24, objc_msgSend(pathCopy, "length") - v24}];
      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

LABEL_28:
      v15 = [pathCopy rangeOfString:tagCopy options:0 range:{v24, objc_msgSend(pathCopy, "length") - v24}];
      v17 = v38;
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_29;
      }
    }

    v27 = v25 + v26;
    v28 = [pathCopy rangeOfString:@" options:0 range:{v27, objc_msgSend(pathCopy, "length"") - v27}];
    v29 = v28 - v27;
    v30 = [pathCopy substringWithRange:{v27, v28 - v27}];
    stringByAddingPercentEscapes = v30;
    if (extensionCopy)
    {
      pathExtension = [v30 pathExtension];
      v33 = [pathExtension isEqualToString:extensionCopy];

      v34 = v33 ^ 1;
    }

    else
    {
      v34 = 0;
    }

    if (![stringByAddingPercentEscapes length] || (v34 & 1) != 0)
    {
LABEL_27:

      goto LABEL_28;
    }

    if (-[NSURL isFileURL](selfCopy->_helpBookURL, "isFileURL") || ![stringByAddingPercentEscapes hasPrefix:@"http"])
    {
      v35 = [v20 stringByAppendingPathComponent:stringByAddingPercentEscapes];
    }

    else
    {
      if (!v39)
      {
LABEL_24:
        if ([(NSURL *)selfCopy->_helpBookURL isFileURL])
        {
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://load?url=%@", @"apple-help-local", stringByAddingPercentEscapes];

          stringByAddingPercentEscapes = [v37 stringByAddingPercentEscapes];
        }

        [pathCopy replaceCharactersInRange:v27 withString:{v29, stringByAddingPercentEscapes}];
        v24 = [stringByAddingPercentEscapes length] + v27;
        goto LABEL_27;
      }

      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://load?url=%@", @"apple-help-remote-asset", stringByAddingPercentEscapes];
    }

    v36 = v35;

    stringByAddingPercentEscapes = v36;
    goto LABEL_24;
  }

LABEL_29:
}

- (void)showWebViewDelay
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_showWebViewDelay object:0];
  if (!self->_webViewLoaded)
  {
    self->_webViewLoaded = 1;
    webView = [(HLPHelpTopicViewController *)self webView];
    [webView alpha];
    v5 = v4;

    if (v5 != 1.0)
    {
      identifier = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
      welcomeTopicIdentifier = [(HLPHelpBookController *)self->_helpBookController welcomeTopicIdentifier];
      v8 = [identifier isEqualToString:welcomeTopicIdentifier];

      if (v8)
      {
        helpBookController = self->_helpBookController;
        welcomeTopicIdentifier2 = [(HLPHelpBookController *)helpBookController welcomeTopicIdentifier];
        v11 = [(HLPHelpBookController *)helpBookController helpItemForID:welcomeTopicIdentifier2];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 isPassionPoints] ^ 1;
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 0;
      }

      anchor = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem anchor];
      if (anchor)
      {
      }

      else if (!+[HLPCommonDefines isVisionOS])
      {
        scrollView = [(WKWebView *)self->_webView scrollView];
        [scrollView contentSize];
        v16 = v15;
        v18 = v17;
        [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem contentSize];
        v20 = v19;
        v22 = v21;

        if (v16 == v20 && v18 == v22)
        {
          [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem contentOffset];
          v28 = v27;
          v30 = v29;
          scrollView2 = [(WKWebView *)self->_webView scrollView];
          [scrollView2 setContentOffset:{v28, v30}];
        }

        else
        {
          [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem setContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
          v24 = 0.0;
          if ((v12 & 1) == 0)
          {
            view = [(HLPHelpTopicViewController *)self view];
            [view safeAreaInsets];
            v24 = v26;
          }

          [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem setContentOffset:0.0, v24];
        }
      }

      if (v12)
      {
        scrollView3 = [(WKWebView *)self->_webView scrollView];
        [scrollView3 setContentOffset:{0.0, 0.0}];
      }

      loadingView = [(HLPHelpTopicViewController *)self loadingView];
      [loadingView showActivityIndicator:0];

      if ([(HLPHelpTopicViewController *)self isViewLoaded])
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __46__HLPHelpTopicViewController_showWebViewDelay__block_invoke;
        v35[3] = &unk_279706B10;
        v35[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v35 animations:0.2];
      }

      else
      {
        webView2 = [(HLPHelpTopicViewController *)self webView];
        [webView2 setAlpha:1.0];
      }
    }
  }
}

void __46__HLPHelpTopicViewController_showWebViewDelay__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) webView];
  [v1 setAlpha:1.0];
}

- (void)webView:(id)view didStartProvisionalNavigation:(id)navigation
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_showWebViewDelay object:0];

  [(HLPHelpTopicViewController *)self performSelector:sel_showWebViewDelay withObject:0 afterDelay:3.0];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  [view evaluateJavaScript:@"document.body.style.webkitUserSelect = none;" completionHandler:0];
  if (!self->_webViewLoaded)
  {

    [(HLPHelpTopicViewController *)self performSelector:sel_showWebViewDelay withObject:0 afterDelay:0.1];
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_showWebViewDelay object:0];
  loadingView = [(HLPHelpTopicViewController *)self loadingView];
  [loadingView showActivityIndicator:0];
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v71 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  actionCopy = action;
  handlerCopy = handler;
  request = [actionCopy request];
  v11 = [request URL];
  scheme = [v11 scheme];
  v13 = [scheme hasPrefix:@"helpkit"];

  if (v13)
  {
    v14 = MEMORY[0x277CCACE0];
    v15 = [request URL];
    absoluteString = [v15 absoluteString];
    v17 = [v14 componentsWithString:absoluteString];

    queryItems = [v17 queryItems];
    firstObject = [queryItems firstObject];

    name = [firstObject name];
    v21 = HLPLogForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [request URL];
      absoluteString2 = [v22 absoluteString];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = absoluteString2;
      _os_log_impl(&dword_2522BC000, v21, OS_LOG_TYPE_DEFAULT, "decidePolicy %@", &buf, 0xCu);
    }

    if ([name isEqualToString:@"type"])
    {
      value = [firstObject value];
      if ([value isEqualToString:@"TOC"])
      {
        [(HLPHelpTopicViewController *)self showTableOfContent];
      }

      else if (([value isEqualToString:@"pp"] & 1) != 0 || objc_msgSend(value, "isEqualToString:", @"task"))
      {
        queryItems2 = [v17 queryItems];
        v36 = [queryItems2 count] == 3;

        if (v36)
        {
          queryItems3 = [v17 queryItems];
          v38 = [queryItems3 objectAtIndexedSubscript:1];
          value2 = [v38 value];

          traitCollection = [(HLPHelpTopicViewController *)self traitCollection];
          v40 = +[HLPAnalyticsEventContentViewed eventWithTopicID:topicTitle:source:interfaceStyle:](HLPAnalyticsEventContentViewed, "eventWithTopicID:topicTitle:source:interfaceStyle:", value2, &stru_2864756F0, @"deep_link", [traitCollection userInterfaceStyle]);
          [v40 log];
        }
      }
    }

    goto LABEL_34;
  }

  if (![actionCopy navigationType])
  {
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__2;
    v69 = __Block_byref_object_dispose__2;
    v70 = 0;
    if ([(HLPHelpBookController *)self->_helpBookController serverType]== 1)
    {
      v26 = objc_alloc(MEMORY[0x277CCACE0]);
      v27 = [request URL];
      absoluteString3 = [v27 absoluteString];
      v29 = [v26 initWithString:absoluteString3];

      queryItems4 = [v29 queryItems];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __86__HLPHelpTopicViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
      v61[3] = &unk_2797073D0;
      v61[4] = &v62;
      v61[5] = &buf;
      [queryItems4 enumerateObjectsWithOptions:2 usingBlock:v61];
    }

    v31 = [request URL];
    scheme2 = [v31 scheme];
    if ([scheme2 hasPrefix:@"http"])
    {
      v33 = *(*(&buf + 1) + 40) == 0;

      if (v33)
      {
        fragment = 0;
        goto LABEL_31;
      }
    }

    else
    {
    }

    if (!*(*(&buf + 1) + 40) && ![(HLPHelpBookController *)self->_helpBookController serverType])
    {
      v41 = [request URL];
      lastPathComponent = [v41 lastPathComponent];
      v43 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = lastPathComponent;

      stringByDeletingPathExtension = [*(*(&buf + 1) + 40) stringByDeletingPathExtension];
      v45 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = stringByDeletingPathExtension;
    }

    v46 = [request URL];
    fragment = [v46 fragment];

    if ([fragment isEqualToString:*(*(&buf + 1) + 40)])
    {

      fragment = 0;
    }

    mEMORY[0x277D75128]2 = [(HLPHelpBookController *)self->_helpBookController helpTopicItemForID:*(*(&buf + 1) + 40)];
    if (mEMORY[0x277D75128]2 || *(v63 + 24) == 1 && (mEMORY[0x277D75128]2 = objc_alloc_init(HLPHelpTopicItem), [(HLPHelpItem *)mEMORY[0x277D75128]2 setIdentifier:*(*(&buf + 1) + 40)], [(HLPHelpTopicItem *)mEMORY[0x277D75128]2 setCategories:&unk_28647D1E8], [(HLPHelpBookController *)self->_helpBookController addAsideTopic:mEMORY[0x277D75128]2], mEMORY[0x277D75128]2))
    {
      hrefID = [(HLPHelpTopicItem *)mEMORY[0x277D75128]2 hrefID];
      v49 = [hrefID hasPrefix:@"http"];

      if (v49)
      {
        mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
        v51 = MEMORY[0x277CBEBC0];
        hrefID2 = [(HLPHelpTopicItem *)mEMORY[0x277D75128]2 hrefID];
        v53 = [v51 URLWithString:hrefID2];
        [mEMORY[0x277D75128] openURL:v53 options:MEMORY[0x277CBEC10] completionHandler:0];
      }

      else
      {
        mEMORY[0x277D75128] = [HLPLoadInfo infoWithTopicItem:mEMORY[0x277D75128]2 accessType:1 searchTerms:0 anchor:fragment];
        [(HLPHelpTopicViewController *)self _loadWithInfo:mEMORY[0x277D75128]];
      }

      goto LABEL_33;
    }

LABEL_31:
    identifier = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
    name2 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem name];
    v56 = [request URL];
    absoluteString4 = [v56 absoluteString];
    [(HLPHelpTopicViewController *)self logAnalyticsContentViewedWithTopicID:identifier topicTitle:name2 source:@"link" fromTopicID:&stru_2864756F0 externalURLString:absoluteString4];

    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    mEMORY[0x277D75128] = [request URL];
    [(HLPHelpTopicItem *)mEMORY[0x277D75128]2 openURL:mEMORY[0x277D75128] options:MEMORY[0x277CBEC10] completionHandler:0];
LABEL_33:

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v62, 8);
LABEL_34:
    v25 = 0;
    goto LABEL_35;
  }

  v25 = 1;
LABEL_35:
  handlerCopy[2](handlerCopy, v25);

  v58 = *MEMORY[0x277D85DE8];
}

void __86__HLPHelpTopicViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 name];
  v7 = [v6 isEqualToString:@"aside"];

  if (v7)
  {
    v8 = [v14 value];
    *(*(*(a1 + 32) + 8) + 24) = [v8 BOOLValue];
  }

  else
  {
    v9 = [v14 name];
    v10 = [v9 isEqualToString:@"topicid"];

    if (v10)
    {
      v11 = [v14 value];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      *a4 = 1;
    }
  }
}

- (void)helpTopicViewControllerContentViewed:(id)viewed topicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(int64_t)style fromTopicID:(id)iD externalURLString:(id)string
{
  stringCopy = string;
  iDCopy = iD;
  sourceCopy = source;
  titleCopy = title;
  dCopy = d;
  delegate = [(HLPHelpTopicViewController *)self delegate];
  [delegate helpTopicViewControllerContentViewed:self topicID:dCopy topicTitle:titleCopy source:sourceCopy interfaceStyle:style fromTopicID:iDCopy externalURLString:stringCopy];
}

- (void)helpTopicViewControllerCurrentTopicIsPassionPoint:(id)point
{
  webView = [(HLPHelpTopicViewController *)self webView];
  [webView setUserInteractionEnabled:1];
}

- (void)helpTopicViewController:(id)controller failToLoadWithError:(id)error
{
  errorCopy = error;
  loadingView = [controller loadingView];
  [loadingView showMessageWithError:errorCopy];
}

- (void)helpTopicViewControllerShowHelpBookInfo:(id)info
{
  delegate = [(HLPHelpTopicViewController *)self delegate];
  [delegate helpTopicViewControllerShowHelpBookInfo:self];
}

- (void)helpTopicViewController:(id)controller selectedHelpTopicItem:(id)item accessType:(int64_t)type
{
  itemCopy = item;
  delegate = [(HLPHelpTopicViewController *)self delegate];
  [delegate helpTopicViewController:self selectedHelpTopicItem:itemCopy accessType:type];
}

- (void)showHelpBookInfo:(id)info
{
  delegate = [(HLPHelpTopicViewController *)self delegate];
  [delegate helpTopicViewControllerShowHelpBookInfo:self];
}

- (void)webView:(id)view stopURLSchemeTask:(id)task
{
  request = [task request];
  v10 = [request URL];

  scheme = [v10 scheme];
  v7 = [scheme isEqualToString:@"apple-help-remote-asset"];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_webViewRequestsMap objectForKeyedSubscript:v10];
    if (v8)
    {
      [(NSMutableDictionary *)self->_webViewRequestsMap setObject:0 forKeyedSubscript:v10];
      [(NSMutableDictionary *)self->_webViewRequestsDataMap setObject:0 forKeyedSubscript:v10];
      v9 = +[HLPURLSessionManager defaultManager];
      [v9 cancelSessionItem:v8];
    }
  }
}

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  v53[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  taskCopy = task;
  request = [taskCopy request];
  v40 = [request URL];

  v7 = objc_alloc(MEMORY[0x277CCACE0]);
  request2 = [taskCopy request];
  v9 = [request2 URL];
  v10 = [v7 initWithURL:v9 resolvingAgainstBaseURL:0];

  scheme = [v10 scheme];
  queryItems = [v10 queryItems];
  firstObject = [queryItems firstObject];

  value = [firstObject value];
  pathExtension = [value pathExtension];
  lowercaseString = [pathExtension lowercaseString];

  if ([lowercaseString isEqualToString:@"png"])
  {
    v16 = @"image/png";
  }

  else if ([lowercaseString isEqualToString:@"jpg"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"jpeg"))
  {
    v16 = @"image/jpeg";
  }

  else if ([lowercaseString isEqualToString:@"mp4"])
  {
    v16 = @"video/mp4";
  }

  else
  {
    v16 = @"text/plain";
  }

  if ([scheme isEqualToString:@"apple-help-local"])
  {
    v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:value];
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:value];
      if (v18 && (v19 = [objc_alloc(MEMORY[0x277CCAD28]) initWithURL:v17 MIMEType:v16 expectedContentLength:objc_msgSend(v18 textEncodingName:{"length"), 0}]) != 0)
      {
        v20 = v19;
        [taskCopy didReceiveResponse:v19];
        v21 = v18;
        [taskCopy didReceiveData:v18];
        [taskCopy didFinish];
      }

      else
      {
        v21 = v18;
        v24 = MEMORY[0x277CCA9B8];
        v52 = @"URL";
        v53[0] = value;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
        v25 = [v24 errorWithDomain:@"file not found" code:-1 userInfo:v20];
        [taskCopy didFailWithError:v25];
      }

LABEL_20:
    }
  }

  else if ([scheme isEqualToString:@"apple-help-remote-asset"])
  {
    v17 = [MEMORY[0x277CBEBC0] URLWithString:value];
    if (v17)
    {
      webViewRequestsDataMap = [(HLPHelpTopicViewController *)self webViewRequestsDataMap];
      absoluteString = [v40 absoluteString];
      v37 = [webViewRequestsDataMap objectForKeyedSubscript:absoluteString];

      v21 = v37;
      if (v37)
      {
        [(HLPHelpTopicViewController *)self updateURLSchemeTask:taskCopy URL:v17 MIMEType:v16 data:v37 error:0];
      }

      else
      {
        objc_initWeak(&location, self);
        v27 = [MEMORY[0x277CCAB70] requestWithURL:v17];
        v36 = +[HLPCommonDefines assetRequestHeaderFields];
        if (v36)
        {
          [v27 setCachePolicy:1];
          [v27 setAllHTTPHeaderFields:v36];
        }

        from = 0;
        v28 = +[HLPDataCacheController sharedInstance];
        lastPathComponent = [v17 lastPathComponent];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __57__HLPHelpTopicViewController_webView_startURLSchemeTask___block_invoke;
        v42[3] = &unk_2797073F8;
        objc_copyWeak(&v48, &location);
        v34 = v40;
        v43 = v34;
        objc_copyWeak(&v49, &from);
        selfCopy = self;
        v45 = taskCopy;
        v17 = v17;
        v46 = v17;
        v47 = v16;
        v29 = [v28 formattedDataForRequest:v27 identifier:lastPathComponent completionHandler:v42];
        objc_storeWeak(&from, v29);

        v30 = objc_loadWeakRetained(&from);
        if (v30)
        {
          v31 = +[HLPURLSessionManager defaultManager];
          v32 = objc_loadWeakRetained(&from);
          [v31 resumeSessionItem:v32];

          v33 = objc_loadWeakRetained(&from);
          [(NSMutableDictionary *)self->_webViewRequestsMap setObject:v33 forKeyedSubscript:v34];
        }

        objc_destroyWeak(&v49);
        objc_destroyWeak(&v48);
        objc_destroyWeak(&from);

        objc_destroyWeak(&location);
        v21 = 0;
      }

      goto LABEL_20;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __57__HLPHelpTopicViewController_webView_startURLSchemeTask___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = a2;
  v9 = a3;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v12 = [WeakRetained webViewRequestsMap];
  v13 = [v12 objectForKeyedSubscript:*(a1 + 32)];

  if (v13)
  {
    v14 = objc_loadWeakRetained((a1 + 80));
    v15 = [v14 isCancelled];

    if ((v15 & 1) == 0)
    {
      if (v18)
      {
        v16 = v18;
      }

      else
      {
        v16 = v9;
      }

      [*(a1 + 40) updateURLSchemeTask:*(a1 + 48) URL:*(a1 + 56) MIMEType:*(a1 + 64) data:v16 error:v10];
    }

    v17 = [WeakRetained webViewRequestsMap];
    [v17 setObject:0 forKeyedSubscript:*(a1 + 32)];
  }
}

- (void)updateURLSchemeTask:(id)task URL:(id)l MIMEType:(id)type data:(id)data error:(id)error
{
  v49[2] = *MEMORY[0x277D85DE8];
  taskCopy = task;
  lCopy = l;
  typeCopy = type;
  dataCopy = data;
  request = [taskCopy request];
  allHTTPHeaderFields = [request allHTTPHeaderFields];
  v17 = [allHTTPHeaderFields objectForKey:@"Range"];

  selfCopy = self;
  v45 = v17;
  v18 = [(HLPHelpTopicViewController *)self rangeFromData:dataCopy byteRangeString:v17];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = [objc_alloc(MEMORY[0x277CCAD28]) initWithURL:lCopy MIMEType:typeCopy expectedContentLength:objc_msgSend(dataCopy textEncodingName:{"length"), 0}];
  }

  else
  {
    v21 = v18;
    v41 = typeCopy;
    v22 = v19 - v18 + 1;
    v48[0] = @"Content-Range";
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"bytes %ld-%ld/%lu", v18, v19, objc_msgSend(dataCopy, "length")];
    v48[1] = @"Content-Length";
    v49[0] = v23;
    v40 = v22;
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v22];
    v49[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];

    v26 = objc_alloc(MEMORY[0x277CCAA40]);
    v27 = MEMORY[0x277CBEBC0];
    v42 = lCopy;
    absoluteString = [lCopy absoluteString];
    v29 = [v27 URLWithString:absoluteString];
    v20 = [v26 initWithURL:v29 statusCode:206 HTTPVersion:@"HTTP/1.1" headerFields:v25];

    v30 = [request URL];
    absoluteString2 = [v30 absoluteString];

    webViewRequestsDataMap = [(HLPHelpTopicViewController *)selfCopy webViewRequestsDataMap];
    v33 = [webViewRequestsDataMap objectForKeyedSubscript:absoluteString2];

    if (!v33)
    {
      webViewRequestsDataMap2 = [(HLPHelpTopicViewController *)selfCopy webViewRequestsDataMap];
      [webViewRequestsDataMap2 setObject:dataCopy forKeyedSubscript:absoluteString2];
    }

    v35 = [dataCopy subdataWithRange:{v21, v40}];

    dataCopy = v35;
    typeCopy = v41;
    lCopy = v42;
  }

  [taskCopy didReceiveResponse:v20];
  if (error || !dataCopy)
  {
    v36 = MEMORY[0x277CCA9B8];
    v46 = @"URL";
    v47 = lCopy;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v38 = [v36 errorWithDomain:@"file not found" code:-1 userInfo:v37];
    [taskCopy didFailWithError:v38];
  }

  else
  {
    [taskCopy didReceiveData:dataCopy];
    [taskCopy didFinish];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (_NSRange)rangeFromData:(id)data byteRangeString:(id)string
{
  dataCopy = data;
  stringCopy = string;
  v7 = stringCopy;
  integerValue = 0x7FFFFFFFFFFFFFFFLL;
  if (stringCopy && (v9 = [stringCopy rangeOfString:@"bytes="], v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = [v7 substringFromIndex:v9 + v10];
    v13 = [v12 componentsSeparatedByString:@"-"];
    if ([v13 count] == 2)
    {
      v14 = [v13 objectAtIndexedSubscript:0];
      integerValue = [v14 integerValue];

      v15 = [v13 objectAtIndexedSubscript:1];
      integerValue2 = [v15 integerValue];
      if ([v15 isEqualToString:@"*"])
      {
        integerValue2 = [dataCopy length];
      }
    }

    else
    {
      integerValue2 = 0;
    }
  }

  else
  {
    integerValue2 = 0;
  }

  v16 = integerValue;
  v17 = integerValue2;
  result.length = v17;
  result.location = v16;
  return result;
}

- (void)registerTraitChanges
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__HLPHelpTopicViewController_registerTraitChanges__block_invoke;
  v6[3] = &unk_2797069B8;
  v6[4] = self;
  v4 = [(HLPHelpTopicViewController *)self registerForTraitChanges:v3 withHandler:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __50__HLPHelpTopicViewController_registerTraitChanges__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 delegate];
  [v6 helpTopicViewController:*(a1 + 32) traitCollectionChanged:v5];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (+[HLPCommonDefines isVisionOS])
  {
    [scrollCopy contentOffset];
    if (v3 != 0.0)
    {
      [scrollCopy contentOffset];
      [scrollCopy setContentOffset:0.0];
    }
  }
}

- (HLPHelpTopicViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end