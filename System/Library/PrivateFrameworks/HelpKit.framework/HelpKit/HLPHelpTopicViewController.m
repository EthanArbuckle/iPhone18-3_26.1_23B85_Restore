@interface HLPHelpTopicViewController
- (HLPHelpLoadingView)loadingView;
- (HLPHelpTopicViewController)init;
- (HLPHelpTopicViewControllerDelegate)delegate;
- (WKWebView)webView;
- (_NSRange)rangeFromData:(id)a3 byteRangeString:(id)a4;
- (int64_t)closeBarButtonSystemItem;
- (void)_loadWithInfo:(id)a3 allowErrorMessage:(BOOL)a4;
- (void)backButtonTapped;
- (void)cleanup;
- (void)dealloc;
- (void)dismiss;
- (void)forwardButtonTapped;
- (void)helpTopicViewController:(id)a3 failToLoadWithError:(id)a4;
- (void)helpTopicViewController:(id)a3 selectedHelpTopicItem:(id)a4 accessType:(int64_t)a5;
- (void)helpTopicViewControllerContentViewed:(id)a3 topicID:(id)a4 topicTitle:(id)a5 source:(id)a6 interfaceStyle:(int64_t)a7 fromTopicID:(id)a8 externalURLString:(id)a9;
- (void)helpTopicViewControllerCurrentTopicIsPassionPoint:(id)a3;
- (void)helpTopicViewControllerShowHelpBookInfo:(id)a3;
- (void)loadHTMLString:(id)a3 anchor:(id)a4;
- (void)loadHelpTopicItem:(id)a3 accessType:(int64_t)a4 searchTerms:(id)a5 anchor:(id)a6;
- (void)logAnalyticsContentViewedWithTopicID:(id)a3 topicTitle:(id)a4 source:(id)a5 fromTopicID:(id)a6 externalURLString:(id)a7;
- (void)registerTraitChanges;
- (void)reloadCurrentTopic;
- (void)saveCurrentTopicItem;
- (void)scrollViewDidScroll:(id)a3;
- (void)setDarkModeEnabled:(BOOL)a3;
- (void)setFullBookView:(BOOL)a3;
- (void)setSupportsDarkMode:(BOOL)a3;
- (void)showHelpBookInfo:(id)a3;
- (void)showTableOfContent;
- (void)showWebViewDelay;
- (void)updateBackgroundColor;
- (void)updateDoneButton;
- (void)updateHTMLStringPath:(id)a3 tag:(id)a4 attribute:(id)a5 useScheme:(BOOL)a6 extension:(id)a7;
- (void)updateNavigationBar;
- (void)updateNavigationButtons;
- (void)updateScrollPositionForCurrentTopicItem;
- (void)updateURLSchemeTask:(id)a3 URL:(id)a4 MIMEType:(id)a5 data:(id)a6 error:(id)a7;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4;
- (void)webView:(id)a3 startURLSchemeTask:(id)a4;
- (void)webView:(id)a3 stopURLSchemeTask:(id)a4;
@end

@implementation HLPHelpTopicViewController

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

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
    v3 = [MEMORY[0x277CBEB38] dictionary];
    webViewRequestsMap = v2->_webViewRequestsMap;
    v2->_webViewRequestsMap = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    webViewRequestsDataMap = v2->_webViewRequestsDataMap;
    v2->_webViewRequestsDataMap = v5;

    v7 = [MEMORY[0x277D75128] sharedApplication];
    v2->_RTL = [v7 userInterfaceLayoutDirection] == 1;

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
  v3 = [(HLPHelpTopicViewController *)self webView];
  [v3 setAlpha:0.0];

  [(HLPHelpTopicViewController *)self updateNavigationBar];
  [(HLPHelpTopicViewController *)self updateBackgroundColor];
  [(HLPHelpTopicViewController *)self registerTraitChanges];
}

- (void)setFullBookView:(BOOL)a3
{
  if (self->_fullBookView != a3)
  {
    self->_fullBookView = a3;
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

  v28 = [(HLPHelpTopicViewController *)self navigationItem];
  [v28 setLeftBarButtonItems:v3];

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
    v7 = [(HLPHelpTopicViewController *)self view];
    [v7 addSubview:self->_loadingView];

    v8 = [(HLPHelpLoadingView *)self->_loadingView topAnchor];
    v9 = [(HLPHelpTopicViewController *)self view];
    v10 = [v9 topAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [(HLPHelpLoadingView *)self->_loadingView bottomAnchor];
    v13 = [(HLPHelpTopicViewController *)self view];
    v14 = [v13 bottomAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [(HLPHelpLoadingView *)self->_loadingView leadingAnchor];
    v17 = [(HLPHelpTopicViewController *)self view];
    v18 = [v17 leadingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = [(HLPHelpLoadingView *)self->_loadingView trailingAnchor];
    v21 = [(HLPHelpTopicViewController *)self view];
    v22 = [v21 trailingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
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
    v8 = [(WKWebView *)self->_webView scrollView];
    [v8 setDelegate:self];

    [(WKWebView *)self->_webView setAllowsLinkPreview:0];
    [(WKWebView *)self->_webView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (+[HLPCommonDefines isVisionOS])
    {
      [(WKWebView *)self->_webView setOpaque:0];
    }

    v9 = [(HLPHelpTopicViewController *)self view];
    [v9 addSubview:self->_webView];

    v10 = [(WKWebView *)self->_webView leadingAnchor];
    v11 = [(HLPHelpTopicViewController *)self view];
    v12 = [v11 leadingAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [(WKWebView *)self->_webView trailingAnchor];
    v15 = [(HLPHelpTopicViewController *)self view];
    v16 = [v15 trailingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    [v17 setActive:1];

    v18 = [(WKWebView *)self->_webView topAnchor];
    v19 = [(HLPHelpTopicViewController *)self view];
    v20 = [v19 topAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [(WKWebView *)self->_webView bottomAnchor];
    v23 = [(HLPHelpTopicViewController *)self view];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    webView = self->_webView;
  }

  return webView;
}

- (void)cleanup
{
  v2 = [(HLPHelpTopicViewController *)self navigationItem];
  [v2 setLeftBarButtonItems:0];

  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 removeObjectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];
}

- (void)setSupportsDarkMode:(BOOL)a3
{
  if (self->_supportsDarkMode != a3)
  {
    self->_supportsDarkMode = a3;
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
    v6 = ;
    v5 = [(HLPHelpTopicViewController *)self view];
    [v5 setBackgroundColor:v6];

    [(WKWebView *)self->_webView setBackgroundColor:v6];
  }

  else
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
    v4 = [(HLPHelpTopicViewController *)self view];
    [v4 setBackgroundColor:v3];

    v6 = [MEMORY[0x277D75348] clearColor];
    [(WKWebView *)self->_webView setBackgroundColor:v6];
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

    v3 = [(HLPHelpTopicViewController *)self navigationItem];
    [v3 setRightBarButtonItem:v4];
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
  v3 = [(WKWebView *)self->_webView scrollView];
  [v3 contentSize];
  [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem setContentSize:?];

  v4 = [(WKWebView *)self->_webView scrollView];
  [v4 contentOffset];
  [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem setContentOffset:?];
}

- (void)updateNavigationButtons
{
  if ([(NSMutableArray *)self->_topicHistory count])
  {
    v3 = [(NSMutableArray *)self->_topicHistory firstObject];
    [(UIBarButtonItem *)self->_backBarButtonItem setEnabled:v3 != self->_currentTopicHistoryItem];
  }

  else
  {
    [(UIBarButtonItem *)self->_backBarButtonItem setEnabled:0];
  }

  if ([(NSMutableArray *)self->_topicHistory count])
  {
    v5 = [(NSMutableArray *)self->_topicHistory lastObject];
    [(UIBarButtonItem *)self->_forwardBarButtonItem setEnabled:v5 != self->_currentTopicHistoryItem];
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
      v3 = [(HLPHelpTopicViewController *)self delegate];
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        self->_canShowTOC = 0;
        v5 = [(HLPHelpTopicViewController *)self delegate];
        [v5 helpTopicViewControllerTableOfContentButtonTapped:self];
      }
    }
  }
}

- (void)dismiss
{
  v3 = [(HLPHelpTopicViewController *)self delegate];
  [v3 helpTopicViewControllerDoneButtonTapped:self];
}

- (void)logAnalyticsContentViewedWithTopicID:(id)a3 topicTitle:(id)a4 source:(id)a5 fromTopicID:(id)a6 externalURLString:(id)a7
{
  v21 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(HLPHelpTopicViewController *)self traitCollection];
  v17 = +[HLPAnalyticsEventContentViewed eventWithTopicID:topicTitle:source:interfaceStyle:](HLPAnalyticsEventContentViewed, "eventWithTopicID:topicTitle:source:interfaceStyle:", v21, v12, v13, [v16 userInterfaceStyle]);

  if ([v14 length])
  {
    v18 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
    [v17 setFromTopicID:v18];
  }

  if ([v15 length])
  {
    [v17 setExternalURLString:v15];
  }

  [v17 log];
  v19 = [(HLPHelpTopicViewController *)self delegate];
  v20 = [(HLPHelpTopicViewController *)self traitCollection];
  [v19 helpTopicViewControllerContentViewed:self topicID:v21 topicTitle:v12 source:v13 interfaceStyle:objc_msgSend(v20 fromTopicID:"userInterfaceStyle") externalURLString:{v14, v15}];
}

- (void)saveCurrentTopicItem
{
  helpBookController = self->_helpBookController;
  v4 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
  v5 = [(HLPHelpBookController *)helpBookController helpTopicItemForID:v4];

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

    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v9 setObject:v7 forKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];

    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v10 synchronize];

    v8 = 0;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)setDarkModeEnabled:(BOOL)a3
{
  if (self->_darkModeEnabled != a3)
  {
    self->_darkModeEnabled = a3;
    if (a3 && !self->_supportsDarkMode)
    {
      [(HLPHelpTopicViewController *)self setSupportsDarkMode:1];
    }
  }
}

- (void)reloadCurrentTopic
{
  helpBookController = self->_helpBookController;
  v4 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
  v7 = [(HLPHelpBookController *)helpBookController helpTopicItemForID:v4];

  v5 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem anchor];
  v6 = [HLPLoadInfo infoWithTopicItem:v7 accessType:4 searchTerms:0 anchor:v5];
  [(HLPHelpTopicViewController *)self _loadWithInfo:v6];
}

- (void)loadHelpTopicItem:(id)a3 accessType:(int64_t)a4 searchTerms:(id)a5 anchor:(id)a6
{
  v7 = [HLPLoadInfo infoWithTopicItem:a3 accessType:a4 searchTerms:a5 anchor:a6];
  [(HLPHelpTopicViewController *)self loadWithInfo:v7];
}

- (void)_loadWithInfo:(id)a3 allowErrorMessage:(BOOL)a4
{
  v94 = a4;
  v110 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 helpTopicItem];
  obj = [v5 searchTerms];
  v98 = [v5 anchor];
  v96 = [v5 accessType];
  v7 = HLPLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v109 = v6;
    _os_log_impl(&dword_2522BC000, v7, OS_LOG_TYPE_DEFAULT, "Loading topic %@", buf, 0xCu);
  }

  if (!self->_helpBookURL)
  {
    v9 = [(HLPHelpTopicViewController *)self loadingView];
    [(HLPHelpTopicViewController *)v9 showActivityIndicator:1];
LABEL_69:

    goto LABEL_70;
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_showWebViewDelay object:0];
  v8 = self->_displayHelpTopicsOnly || +[HLPCommonDefines isVisionOS];
  if (v8 && v96 == 1)
  {
    v10 = [v6 identifier];
    v11 = [v6 name];
    v12 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
    [(HLPHelpTopicViewController *)self logAnalyticsContentViewedWithTopicID:v10 topicTitle:v11 source:@"link" fromTopicID:v12 externalURLString:&stru_2864756F0];

    v9 = objc_alloc_init(HLPHelpTopicViewController);
    [(HLPHelpTopicViewController *)v9 setDisplayHelpTopicsOnly:self->_displayHelpTopicsOnly];
    if ([v6 isGlossary])
    {
      v13 = +[HLPCommonDefines HLPBundle];
      v14 = [v13 localizedStringForKey:@"Glossary" value:&stru_2864756F0 table:0];
      [(HLPHelpTopicViewController *)v9 setTitle:v14];
    }

    else
    {
      if (!self->_showTopicNameAsTitle)
      {
LABEL_34:
        v33 = [(HLPHelpTopicViewController *)self navigationController];
        [v33 pushViewController:v9 animated:1];

        [(HLPHelpTopicViewController *)v9 setFullBookView:self->_fullBookView];
        [(HLPHelpTopicViewController *)v9 setHideDoneButton:self->_hideDoneButton];
        [(HLPHelpTopicViewController *)v9 setHelpBookController:self->_helpBookController];
        [(HLPHelpTopicViewController *)v9 setShowTopicNameAsTitle:self->_showTopicNameAsTitle];
        [(HLPHelpTopicViewController *)v9 setSingleTopic:self->_singleTopic];
        [(HLPHelpTopicViewController *)v9 setDelegate:self];
        [(HLPHelpTopicViewController *)v9 setHelpBookURL:self->_helpBookURL];
        [(HLPHelpTopicViewController *)v9 setSupportsDarkMode:self->_supportsDarkMode];
        [(HLPHelpTopicViewController *)v9 loadHelpTopicItem:v6 accessType:0 searchTerms:0 anchor:v98];
        goto LABEL_69;
      }

      v31 = [v6 name];
      v13 = v31;
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = &stru_2864756F0;
      }

      [(HLPHelpTopicViewController *)v9 setTitle:v32];
    }

    goto LABEL_34;
  }

  v15 = !v8;
  if (v96 != 5)
  {
    v15 = 1;
  }

  if (v15)
  {
    if ((v96 + 1) > 0xA)
    {
      goto LABEL_52;
    }

    if (((1 << (v96 + 1)) & 0x7C7) == 0)
    {
      if (v96 == 2)
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
        v93 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
        v48 = [(HLPHelpBookController *)helpBookController helpTopicItemForID:v93];

        v49 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem anchor];
      }

      else
      {
        if (v96 != 3)
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
        v47 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
        v48 = [(HLPHelpBookController *)v46 helpTopicItemForID:v47];

        v49 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem anchor];
      }

      v98 = v49;
      v6 = v48;
      goto LABEL_52;
    }
  }

  else
  {
    v16 = [(HLPHelpTopicViewController *)self navigationController];
    v17 = [v16 popToRootViewControllerAnimated:0];
  }

  v18 = [v6 identifier];
  v19 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
  v20 = [v18 isEqualToString:v19];

  if (!v20 || ([(HLPHelpTopicViewController *)self searchTerms], v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == obj, v21, !v22))
  {
    if (v96 == 1)
    {
      [(HLPHelpTopicViewController *)self updateScrollPositionForCurrentTopicItem];
      v23 = [v6 identifier];
      v24 = [v6 name];
      v25 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
      [(HLPHelpTopicViewController *)self logAnalyticsContentViewedWithTopicID:v23 topicTitle:v24 source:@"link" fromTopicID:v25 externalURLString:&stru_2864756F0];

      [v5 setAnalyticsLogged:1];
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

    v34 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v30 = [v34 objectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];

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

    v41 = [v5 anchor];
    if (v41)
    {
    }

    else
    {
      v50 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
      v51 = [v6 identifier];
      v52 = [v50 isEqualToString:v51];

      if (v52)
      {
        goto LABEL_48;
      }
    }

    v53 = self->_currentTopicHistoryItem;
    self->_currentTopicHistoryItem = 0;

LABEL_48:
    if (v6)
    {
      v54 = self->_currentTopicHistoryItem;
      if (!v54)
      {
        v55 = objc_alloc_init(HLPHelpTopicHistoryItem);
        v56 = [v6 identifier];
        [(HLPHelpTopicHistoryItem *)v55 setIdentifier:v56];

        v57 = [v6 name];
        [(HLPHelpTopicHistoryItem *)v55 setName:v57];

        [(HLPHelpTopicHistoryItem *)v55 setAnchor:v98];
        v58 = self->_currentTopicHistoryItem;
        self->_currentTopicHistoryItem = v55;

        v54 = self->_currentTopicHistoryItem;
      }

      [(NSMutableArray *)self->_topicHistory addObject:v54];
    }

LABEL_52:
    objc_storeStrong(&self->_searchTerms, obj);
    topicCache = self->_topicCache;
    v60 = [v6 identifier];
    v9 = [(NSCache *)topicCache objectForKey:v60];

    self->_webViewLoaded = 0;
    v61 = [(HLPHelpTopicViewController *)self webView];
    [v61 setAlpha:0.0];

    if ([(HLPHelpTopicViewController *)v9 length])
    {
      [(HLPHelpTopicViewController *)self loadHTMLString:v9 anchor:v98];
      goto LABEL_67;
    }

    objc_initWeak(buf, self);
    if (![(HLPHelpBookController *)self->_helpBookController serverType])
    {
      v62 = [v6 hrefID];
      v63 = [v62 length] == 0;

      if (v63)
      {
        if (!v94)
        {
          goto LABEL_66;
        }

        v83 = [(HLPHelpTopicViewController *)self loadingView];
        [v83 showMessageWithError:0];
LABEL_65:

LABEL_66:
        objc_destroyWeak(buf);
LABEL_67:
        v84 = [(HLPHelpTopicViewController *)self delegate];
        [v84 helpTopicViewController:self selectedHelpTopicItem:v6 accessType:v96];

        [(HLPHelpTopicViewController *)self updateNavigationButtons];
        [(HLPHelpTopicViewController *)self saveCurrentTopicItem];
        if (([v5 analyticsLogged] & 1) == 0)
        {
          v85 = [v6 identifier];
          v86 = [v6 name];
          v87 = [v5 analyticsSourceType];
          [(HLPHelpTopicViewController *)self logAnalyticsContentViewedWithTopicID:v85 topicTitle:v86 source:v87 fromTopicID:&stru_2864756F0 externalURLString:&stru_2864756F0];
        }

        goto LABEL_69;
      }
    }

    v64 = [(HLPHelpTopicViewController *)self loadingView];
    [v64 showActivityIndicator:1];

    if ([(HLPHelpBookController *)self->_helpBookController serverType])
    {
      v65 = MEMORY[0x277CCACA8];
      v66 = [(HLPHelpBookController *)self->_helpBookController topicPathFormat];
      v67 = [v6 identifier];
      v68 = [v65 stringWithFormat:v66, v67];

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
        v73 = [v6 identifier];
        v99[0] = MEMORY[0x277D85DD0];
        v99[1] = 3221225472;
        v99[2] = __62__HLPHelpTopicViewController__loadWithInfo_allowErrorMessage___block_invoke_2;
        v99[3] = &unk_2797073A8;
        objc_copyWeak(&v102, buf);
        v100 = v6;
        v101 = v98;
        v74 = [v72 formattedDataForRequest:v70 identifier:v73 completionHandler:v99];
        URLSessionItem = self->_URLSessionItem;
        self->_URLSessionItem = v74;

        objc_destroyWeak(&v102);
        v69 = v95;
      }
    }

    else
    {
      v76 = [v6 hrefID];

      if (!v76)
      {
LABEL_64:
        v83 = +[HLPURLSessionManager defaultManager];
        [v83 resumeSessionItem:self->_URLSessionItem];
        goto LABEL_65;
      }

      helpBookURL = self->_helpBookURL;
      v78 = [v6 hrefID];
      v68 = [(NSURL *)helpBookURL URLByAppendingPathComponent:v78];

      v69 = [MEMORY[0x277CCAD20] requestWithURL:v68];
      v79 = +[HLPStringCacheController sharedInstance];
      v80 = [v6 hrefID];
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __62__HLPHelpTopicViewController__loadWithInfo_allowErrorMessage___block_invoke;
      v103[3] = &unk_279707380;
      objc_copyWeak(&v106, buf);
      v104 = v98;
      v105 = v6;
      v81 = [v79 formattedDataForRequest:v69 identifier:v80 completionHandler:v103];
      v82 = self->_URLSessionItem;
      self->_URLSessionItem = v81;

      objc_destroyWeak(&v106);
    }

    goto LABEL_64;
  }

  if (v98)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"window.location.hash='#%@'", v98];
    v42 = [(HLPHelpTopicViewController *)self webView];
    [v42 evaluateJavaScript:v9 completionHandler:0];

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

- (void)loadHTMLString:(id)a3 anchor:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v74 = v6;
    v7 = a3;
    v8 = [(HLPHelpTopicViewController *)self webViewRequestsDataMap];
    [v8 removeAllObjects];

    -[HLPHelpTopicViewController setDarkModeEnabled:](self, "setDarkModeEnabled:", [v7 containsString:@"dark-mode-enabled"]);
    v9 = 0x279706000uLL;
    v10 = +[HLPCommonDefines HLPBundle];
    v11 = [MEMORY[0x277CCAB68] stringWithString:v7];

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
    v16 = [v13 absoluteString];
    v17 = [v16 stringByDeletingLastPathComponent];

    v72 = v17;
    v18 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"background-image: url(%@/"), v17;
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
        v30 = [MEMORY[0x277D75418] currentDevice];
        v31 = [v30 userInterfaceIdiom];

        v32 = @"phone";
        if (v31 == 6)
        {
          v32 = @"vision";
        }

        if (v31 == 1)
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

        v35 = [(HLPHelpLocale *)self->_locale isoCodes];
        v36 = [v35 firstObject];

        if (v36)
        {
          v37 = MEMORY[0x277CCACA8];
          v38 = [(HLPHelpLocale *)self->_locale isoCodes];
          v39 = [v38 firstObject];
          v67 = [v37 stringWithFormat:@"data-locale=%@", v39];
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

    v61 = [(HLPHelpTopicViewController *)self webView];
    v62 = [v10 bundleURL];
    v63 = [v61 loadHTMLString:v11 baseURL:v62];

    v6 = v74;
  }
}

- (void)updateHTMLStringPath:(id)a3 tag:(id)a4 attribute:(id)a5 useScheme:(BOOL)a6 extension:(id)a7
{
  v8 = a6;
  v41 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [v41 rangeOfString:v12];
  v17 = v16;
  v18 = [(NSURL *)self->_helpBookURL isFileURL];
  v40 = self;
  helpBookURL = self->_helpBookURL;
  if (v18)
  {
    [(NSURL *)helpBookURL path];
  }

  else
  {
    [(NSURL *)helpBookURL absoluteString];
  }
  v20 = ;
  v21 = [(HLPHelpBookController *)v40->_helpBookController serverType];
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
    v23 = v21 == 1 && v8;
    v39 = v23;
    while (1)
    {
      v24 = v15 + v17;
      v25 = [v41 rangeOfString:v13 options:0 range:{v24, objc_msgSend(v41, "length") - v24}];
      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

LABEL_28:
      v15 = [v41 rangeOfString:v12 options:0 range:{v24, objc_msgSend(v41, "length") - v24}];
      v17 = v38;
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_29;
      }
    }

    v27 = v25 + v26;
    v28 = [v41 rangeOfString:@" options:0 range:{v27, objc_msgSend(v41, "length"") - v27}];
    v29 = v28 - v27;
    v30 = [v41 substringWithRange:{v27, v28 - v27}];
    v31 = v30;
    if (v14)
    {
      v32 = [v30 pathExtension];
      v33 = [v32 isEqualToString:v14];

      v34 = v33 ^ 1;
    }

    else
    {
      v34 = 0;
    }

    if (![v31 length] || (v34 & 1) != 0)
    {
LABEL_27:

      goto LABEL_28;
    }

    if (-[NSURL isFileURL](v40->_helpBookURL, "isFileURL") || ![v31 hasPrefix:@"http"])
    {
      v35 = [v20 stringByAppendingPathComponent:v31];
    }

    else
    {
      if (!v39)
      {
LABEL_24:
        if ([(NSURL *)v40->_helpBookURL isFileURL])
        {
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://load?url=%@", @"apple-help-local", v31];

          v31 = [v37 stringByAddingPercentEscapes];
        }

        [v41 replaceCharactersInRange:v27 withString:{v29, v31}];
        v24 = [v31 length] + v27;
        goto LABEL_27;
      }

      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://load?url=%@", @"apple-help-remote-asset", v31];
    }

    v36 = v35;

    v31 = v36;
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
    v3 = [(HLPHelpTopicViewController *)self webView];
    [v3 alpha];
    v5 = v4;

    if (v5 != 1.0)
    {
      v6 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
      v7 = [(HLPHelpBookController *)self->_helpBookController welcomeTopicIdentifier];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
        helpBookController = self->_helpBookController;
        v10 = [(HLPHelpBookController *)helpBookController welcomeTopicIdentifier];
        v11 = [(HLPHelpBookController *)helpBookController helpItemForID:v10];

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

      v13 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem anchor];
      if (v13)
      {
      }

      else if (!+[HLPCommonDefines isVisionOS])
      {
        v14 = [(WKWebView *)self->_webView scrollView];
        [v14 contentSize];
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
          v31 = [(WKWebView *)self->_webView scrollView];
          [v31 setContentOffset:{v28, v30}];
        }

        else
        {
          [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem setContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
          v24 = 0.0;
          if ((v12 & 1) == 0)
          {
            v25 = [(HLPHelpTopicViewController *)self view];
            [v25 safeAreaInsets];
            v24 = v26;
          }

          [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem setContentOffset:0.0, v24];
        }
      }

      if (v12)
      {
        v32 = [(WKWebView *)self->_webView scrollView];
        [v32 setContentOffset:{0.0, 0.0}];
      }

      v33 = [(HLPHelpTopicViewController *)self loadingView];
      [v33 showActivityIndicator:0];

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
        v34 = [(HLPHelpTopicViewController *)self webView];
        [v34 setAlpha:1.0];
      }
    }
  }
}

void __46__HLPHelpTopicViewController_showWebViewDelay__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) webView];
  [v1 setAlpha:1.0];
}

- (void)webView:(id)a3 didStartProvisionalNavigation:(id)a4
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_showWebViewDelay object:0];

  [(HLPHelpTopicViewController *)self performSelector:sel_showWebViewDelay withObject:0 afterDelay:3.0];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  [a3 evaluateJavaScript:@"document.body.style.webkitUserSelect = none;" completionHandler:0];
  if (!self->_webViewLoaded)
  {

    [(HLPHelpTopicViewController *)self performSelector:sel_showWebViewDelay withObject:0 afterDelay:0.1];
  }
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_showWebViewDelay object:0];
  v6 = [(HLPHelpTopicViewController *)self loadingView];
  [v6 showActivityIndicator:0];
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v60 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 request];
  v11 = [v10 URL];
  v12 = [v11 scheme];
  v13 = [v12 hasPrefix:@"helpkit"];

  if (v13)
  {
    v14 = MEMORY[0x277CCACE0];
    v15 = [v10 URL];
    v16 = [v15 absoluteString];
    v17 = [v14 componentsWithString:v16];

    v18 = [v17 queryItems];
    v19 = [v18 firstObject];

    v20 = [v19 name];
    v21 = HLPLogForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v10 URL];
      v23 = [v22 absoluteString];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v23;
      _os_log_impl(&dword_2522BC000, v21, OS_LOG_TYPE_DEFAULT, "decidePolicy %@", &buf, 0xCu);
    }

    if ([v20 isEqualToString:@"type"])
    {
      v24 = [v19 value];
      if ([v24 isEqualToString:@"TOC"])
      {
        [(HLPHelpTopicViewController *)self showTableOfContent];
      }

      else if (([v24 isEqualToString:@"pp"] & 1) != 0 || objc_msgSend(v24, "isEqualToString:", @"task"))
      {
        v35 = [v17 queryItems];
        v36 = [v35 count] == 3;

        if (v36)
        {
          v37 = [v17 queryItems];
          v38 = [v37 objectAtIndexedSubscript:1];
          v59 = [v38 value];

          v39 = [(HLPHelpTopicViewController *)self traitCollection];
          v40 = +[HLPAnalyticsEventContentViewed eventWithTopicID:topicTitle:source:interfaceStyle:](HLPAnalyticsEventContentViewed, "eventWithTopicID:topicTitle:source:interfaceStyle:", v59, &stru_2864756F0, @"deep_link", [v39 userInterfaceStyle]);
          [v40 log];
        }
      }
    }

    goto LABEL_34;
  }

  if (![v8 navigationType])
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
      v27 = [v10 URL];
      v28 = [v27 absoluteString];
      v29 = [v26 initWithString:v28];

      v30 = [v29 queryItems];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __86__HLPHelpTopicViewController_webView_decidePolicyForNavigationAction_decisionHandler___block_invoke;
      v61[3] = &unk_2797073D0;
      v61[4] = &v62;
      v61[5] = &buf;
      [v30 enumerateObjectsWithOptions:2 usingBlock:v61];
    }

    v31 = [v10 URL];
    v32 = [v31 scheme];
    if ([v32 hasPrefix:@"http"])
    {
      v33 = *(*(&buf + 1) + 40) == 0;

      if (v33)
      {
        v34 = 0;
        goto LABEL_31;
      }
    }

    else
    {
    }

    if (!*(*(&buf + 1) + 40) && ![(HLPHelpBookController *)self->_helpBookController serverType])
    {
      v41 = [v10 URL];
      v42 = [v41 lastPathComponent];
      v43 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v42;

      v44 = [*(*(&buf + 1) + 40) stringByDeletingPathExtension];
      v45 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v44;
    }

    v46 = [v10 URL];
    v34 = [v46 fragment];

    if ([v34 isEqualToString:*(*(&buf + 1) + 40)])
    {

      v34 = 0;
    }

    v47 = [(HLPHelpBookController *)self->_helpBookController helpTopicItemForID:*(*(&buf + 1) + 40)];
    if (v47 || *(v63 + 24) == 1 && (v47 = objc_alloc_init(HLPHelpTopicItem), [(HLPHelpItem *)v47 setIdentifier:*(*(&buf + 1) + 40)], [(HLPHelpTopicItem *)v47 setCategories:&unk_28647D1E8], [(HLPHelpBookController *)self->_helpBookController addAsideTopic:v47], v47))
    {
      v48 = [(HLPHelpTopicItem *)v47 hrefID];
      v49 = [v48 hasPrefix:@"http"];

      if (v49)
      {
        v50 = [MEMORY[0x277D75128] sharedApplication];
        v51 = MEMORY[0x277CBEBC0];
        v52 = [(HLPHelpTopicItem *)v47 hrefID];
        v53 = [v51 URLWithString:v52];
        [v50 openURL:v53 options:MEMORY[0x277CBEC10] completionHandler:0];
      }

      else
      {
        v50 = [HLPLoadInfo infoWithTopicItem:v47 accessType:1 searchTerms:0 anchor:v34];
        [(HLPHelpTopicViewController *)self _loadWithInfo:v50];
      }

      goto LABEL_33;
    }

LABEL_31:
    v54 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem identifier];
    v55 = [(HLPHelpTopicHistoryItem *)self->_currentTopicHistoryItem name];
    v56 = [v10 URL];
    v57 = [v56 absoluteString];
    [(HLPHelpTopicViewController *)self logAnalyticsContentViewedWithTopicID:v54 topicTitle:v55 source:@"link" fromTopicID:&stru_2864756F0 externalURLString:v57];

    v47 = [MEMORY[0x277D75128] sharedApplication];
    v50 = [v10 URL];
    [(HLPHelpTopicItem *)v47 openURL:v50 options:MEMORY[0x277CBEC10] completionHandler:0];
LABEL_33:

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v62, 8);
LABEL_34:
    v25 = 0;
    goto LABEL_35;
  }

  v25 = 1;
LABEL_35:
  v9[2](v9, v25);

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

- (void)helpTopicViewControllerContentViewed:(id)a3 topicID:(id)a4 topicTitle:(id)a5 source:(id)a6 interfaceStyle:(int64_t)a7 fromTopicID:(id)a8 externalURLString:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = [(HLPHelpTopicViewController *)self delegate];
  [v20 helpTopicViewControllerContentViewed:self topicID:v19 topicTitle:v18 source:v17 interfaceStyle:a7 fromTopicID:v16 externalURLString:v15];
}

- (void)helpTopicViewControllerCurrentTopicIsPassionPoint:(id)a3
{
  v3 = [(HLPHelpTopicViewController *)self webView];
  [v3 setUserInteractionEnabled:1];
}

- (void)helpTopicViewController:(id)a3 failToLoadWithError:(id)a4
{
  v5 = a4;
  v6 = [a3 loadingView];
  [v6 showMessageWithError:v5];
}

- (void)helpTopicViewControllerShowHelpBookInfo:(id)a3
{
  v4 = [(HLPHelpTopicViewController *)self delegate];
  [v4 helpTopicViewControllerShowHelpBookInfo:self];
}

- (void)helpTopicViewController:(id)a3 selectedHelpTopicItem:(id)a4 accessType:(int64_t)a5
{
  v7 = a4;
  v8 = [(HLPHelpTopicViewController *)self delegate];
  [v8 helpTopicViewController:self selectedHelpTopicItem:v7 accessType:a5];
}

- (void)showHelpBookInfo:(id)a3
{
  v4 = [(HLPHelpTopicViewController *)self delegate];
  [v4 helpTopicViewControllerShowHelpBookInfo:self];
}

- (void)webView:(id)a3 stopURLSchemeTask:(id)a4
{
  v5 = [a4 request];
  v10 = [v5 URL];

  v6 = [v10 scheme];
  v7 = [v6 isEqualToString:@"apple-help-remote-asset"];

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

- (void)webView:(id)a3 startURLSchemeTask:(id)a4
{
  v53[1] = *MEMORY[0x277D85DE8];
  v39 = a3;
  v5 = a4;
  v6 = [v5 request];
  v40 = [v6 URL];

  v7 = objc_alloc(MEMORY[0x277CCACE0]);
  v8 = [v5 request];
  v9 = [v8 URL];
  v10 = [v7 initWithURL:v9 resolvingAgainstBaseURL:0];

  v11 = [v10 scheme];
  v12 = [v10 queryItems];
  v41 = [v12 firstObject];

  v13 = [v41 value];
  v14 = [v13 pathExtension];
  v15 = [v14 lowercaseString];

  if ([v15 isEqualToString:@"png"])
  {
    v16 = @"image/png";
  }

  else if ([v15 isEqualToString:@"jpg"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"jpeg"))
  {
    v16 = @"image/jpeg";
  }

  else if ([v15 isEqualToString:@"mp4"])
  {
    v16 = @"video/mp4";
  }

  else
  {
    v16 = @"text/plain";
  }

  if ([v11 isEqualToString:@"apple-help-local"])
  {
    v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13];
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v13];
      if (v18 && (v19 = [objc_alloc(MEMORY[0x277CCAD28]) initWithURL:v17 MIMEType:v16 expectedContentLength:objc_msgSend(v18 textEncodingName:{"length"), 0}]) != 0)
      {
        v20 = v19;
        [v5 didReceiveResponse:v19];
        v21 = v18;
        [v5 didReceiveData:v18];
        [v5 didFinish];
      }

      else
      {
        v21 = v18;
        v24 = MEMORY[0x277CCA9B8];
        v52 = @"URL";
        v53[0] = v13;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
        v25 = [v24 errorWithDomain:@"file not found" code:-1 userInfo:v20];
        [v5 didFailWithError:v25];
      }

LABEL_20:
    }
  }

  else if ([v11 isEqualToString:@"apple-help-remote-asset"])
  {
    v17 = [MEMORY[0x277CBEBC0] URLWithString:v13];
    if (v17)
    {
      v22 = [(HLPHelpTopicViewController *)self webViewRequestsDataMap];
      v23 = [v40 absoluteString];
      v37 = [v22 objectForKeyedSubscript:v23];

      v21 = v37;
      if (v37)
      {
        [(HLPHelpTopicViewController *)self updateURLSchemeTask:v5 URL:v17 MIMEType:v16 data:v37 error:0];
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
        v35 = [v17 lastPathComponent];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __57__HLPHelpTopicViewController_webView_startURLSchemeTask___block_invoke;
        v42[3] = &unk_2797073F8;
        objc_copyWeak(&v48, &location);
        v34 = v40;
        v43 = v34;
        objc_copyWeak(&v49, &from);
        v44 = self;
        v45 = v5;
        v17 = v17;
        v46 = v17;
        v47 = v16;
        v29 = [v28 formattedDataForRequest:v27 identifier:v35 completionHandler:v42];
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

- (void)updateURLSchemeTask:(id)a3 URL:(id)a4 MIMEType:(id)a5 data:(id)a6 error:(id)a7
{
  v49[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 request];
  v16 = [v15 allHTTPHeaderFields];
  v17 = [v16 objectForKey:@"Range"];

  v43 = self;
  v45 = v17;
  v18 = [(HLPHelpTopicViewController *)self rangeFromData:v14 byteRangeString:v17];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = [objc_alloc(MEMORY[0x277CCAD28]) initWithURL:v12 MIMEType:v13 expectedContentLength:objc_msgSend(v14 textEncodingName:{"length"), 0}];
  }

  else
  {
    v21 = v18;
    v41 = v13;
    v22 = v19 - v18 + 1;
    v48[0] = @"Content-Range";
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"bytes %ld-%ld/%lu", v18, v19, objc_msgSend(v14, "length")];
    v48[1] = @"Content-Length";
    v49[0] = v23;
    v40 = v22;
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v22];
    v49[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];

    v26 = objc_alloc(MEMORY[0x277CCAA40]);
    v27 = MEMORY[0x277CBEBC0];
    v42 = v12;
    v28 = [v12 absoluteString];
    v29 = [v27 URLWithString:v28];
    v20 = [v26 initWithURL:v29 statusCode:206 HTTPVersion:@"HTTP/1.1" headerFields:v25];

    v30 = [v15 URL];
    v31 = [v30 absoluteString];

    v32 = [(HLPHelpTopicViewController *)v43 webViewRequestsDataMap];
    v33 = [v32 objectForKeyedSubscript:v31];

    if (!v33)
    {
      v34 = [(HLPHelpTopicViewController *)v43 webViewRequestsDataMap];
      [v34 setObject:v14 forKeyedSubscript:v31];
    }

    v35 = [v14 subdataWithRange:{v21, v40}];

    v14 = v35;
    v13 = v41;
    v12 = v42;
  }

  [v11 didReceiveResponse:v20];
  if (a7 || !v14)
  {
    v36 = MEMORY[0x277CCA9B8];
    v46 = @"URL";
    v47 = v12;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v38 = [v36 errorWithDomain:@"file not found" code:-1 userInfo:v37];
    [v11 didFailWithError:v38];
  }

  else
  {
    [v11 didReceiveData:v14];
    [v11 didFinish];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (_NSRange)rangeFromData:(id)a3 byteRangeString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 && (v9 = [v6 rangeOfString:@"bytes="], v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = [v7 substringFromIndex:v9 + v10];
    v13 = [v12 componentsSeparatedByString:@"-"];
    if ([v13 count] == 2)
    {
      v14 = [v13 objectAtIndexedSubscript:0];
      v8 = [v14 integerValue];

      v15 = [v13 objectAtIndexedSubscript:1];
      v11 = [v15 integerValue];
      if ([v15 isEqualToString:@"*"])
      {
        v11 = [v5 length];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = v8;
  v17 = v11;
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

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  if (+[HLPCommonDefines isVisionOS])
  {
    [v4 contentOffset];
    if (v3 != 0.0)
    {
      [v4 contentOffset];
      [v4 setContentOffset:0.0];
    }
  }
}

- (HLPHelpTopicViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end