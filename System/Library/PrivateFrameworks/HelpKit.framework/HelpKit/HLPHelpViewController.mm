@interface HLPHelpViewController
+ (id)URLWithBookID:(id)a3 topicID:(id)a4;
+ (id)URLWithBookID:(id)a3 topicID:(id)a4 anchorID:(id)a5 version:(id)a6;
+ (id)URLWithBookID:(id)a3 topicID:(id)a4 anchorID:(id)a5 version:(id)a6 platformIndependent:(BOOL)a7;
+ (id)URLWithBookID:(id)a3 topicID:(id)a4 version:(id)a5;
+ (id)URLWithTopicID:(id)a3;
+ (id)URLWithTopicID:(id)a3 anchorID:(id)a4;
+ (id)deviceFamily;
+ (id)helpViewControllerWithLocalHelpBookFileURL:(id)a3;
+ (id)helpViewControllerWithTitle:(id)a3 identifier:(id)a4 version:(id)a5 subpath:(id)a6;
+ (id)helpViewControllerWithURL:(id)a3;
+ (id)mainUserGuideIdentifier;
+ (id)platform;
+ (id)platformVersion;
+ (void)clearCacheControllers;
+ (void)updateViewController:(id)a3 title:(id)a4 identifier:(id)a5 version:(id)a6 subpath:(id)a7;
- (BOOL)shouldDisallowOffSiteRedirects;
- (HLPHelpLoadingView)loadingView;
- (HLPHelpViewController)init;
- (HLPHelpViewControllerDelegate)delegate;
- (HLPReachabilityManager)reachabilityManager;
- (id)localHelpBookAnalyticIdentifier;
- (id)topicIDForTopicName:(id)a3 locale:(id)a4;
- (int64_t)closeBarButtonSystemItem;
- (void)_setContext:(id)a3;
- (void)cleanup;
- (void)dealloc;
- (void)dismiss;
- (void)displayHelpBookWithLocale:(id)a3;
- (void)helpTopicViewController:(id)a3 selectedHelpTopicItem:(id)a4 accessType:(int64_t)a5;
- (void)helpTopicViewController:(id)a3 topicLoaded:(id)a4;
- (void)helpTopicViewControllerContentViewed:(id)a3 topicID:(id)a4 topicTitle:(id)a5 source:(id)a6 interfaceStyle:(int64_t)a7 fromTopicID:(id)a8 externalURLString:(id)a9;
- (void)helpTopicViewControllerCurrentTopicIsPassionPoint:(id)a3;
- (void)helpTopicViewControllerTableOfContentButtonTapped:(id)a3;
- (void)loadBookWithTitle:(id)a3 identifier:(id)a4 topicID:(id)a5 version:(id)a6;
- (void)loadFromStaticServer;
- (void)loadHelpBook;
- (void)loadHelpTopicID:(id)a3;
- (void)loadHelpTopicItem:(id)a3;
- (void)popWelcomeTopicView;
- (void)reachabilityManagerConnectionStatusChanged:(id)a3 connected:(BOOL)a4;
- (void)registerTraitChanges;
- (void)removeDDMLoadFailVersion;
- (void)resetLastScrolledPosition;
- (void)setup;
- (void)setupFullBookView;
- (void)setupTableContentViewController;
- (void)setupTopicViewController;
- (void)showHelpBookInfo:(id)a3;
- (void)showMessageForError:(id)a3;
- (void)showTopicView;
- (void)tableOfContentViewControllerSearchUsed:(id)a3;
- (void)tableOfContentViewControllerToCContentViewed:(id)a3 topicID:(id)a4 topicTitle:(id)a5 source:(id)a6 interfaceStyle:(int64_t)a7 fromTopicID:(id)a8 externalURLString:(id)a9;
- (void)traitCollectionChangedFrom:(id)a3;
- (void)updateCacheControllerToLanguageCode:(id)a3;
- (void)updateChildViewConstraints;
- (void)updateDarkMode;
- (void)updateDoneButton;
- (void)updateHelpBookController;
- (void)updateLastLoadVersion;
- (void)updateTOCButton;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HLPHelpViewController

+ (id)mainUserGuideIdentifier
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 - 1) > 5)
  {
    return @"iphone";
  }

  else
  {
    return off_279706E30[v3 - 1];
  }
}

+ (id)deviceFamily
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 - 1) > 5)
  {
    return @"iphone";
  }

  else
  {
    return off_279706E60[v3 - 1];
  }
}

+ (id)platform
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = @"ios";
  if (v3 == 6)
  {
    v4 = @"visionos";
  }

  if (v3 == 1)
  {
    return @"ipados";
  }

  else
  {
    return v4;
  }
}

+ (id)platformVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)URLWithTopicID:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() URLWithBookID:0 topicID:v3];

  return v4;
}

+ (id)URLWithTopicID:(id)a3 anchorID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() URLWithBookID:0 topicID:v6 anchorID:v5 version:0];

  return v7;
}

+ (id)URLWithBookID:(id)a3 topicID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() URLWithBookID:v6 topicID:v5 version:0];

  return v7;
}

+ (id)URLWithBookID:(id)a3 topicID:(id)a4 version:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() URLWithBookID:v9 topicID:v8 anchorID:0 version:v7];

  return v10;
}

+ (id)URLWithBookID:(id)a3 topicID:(id)a4 anchorID:(id)a5 version:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_opt_class() URLWithBookID:v12 topicID:v11 anchorID:v10 version:v9 platformIndependent:1];

  return v13;
}

+ (id)URLWithBookID:(id)a3 topicID:(id)a4 anchorID:(id)a5 version:(id)a6 platformIndependent:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  if ([v11 length])
  {
    v16 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"book" value:v11];
    [v15 addObject:v16];
  }

  if ([v12 length])
  {
    v17 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"topic" value:v12];
    [v15 addObject:v17];
  }

  if ([v13 length])
  {
    v18 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"anchor" value:v13];
    [v15 addObject:v18];
  }

  if ([v14 length])
  {
    v19 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"version" value:v14];
    [v15 addObject:v19];
  }

  if (!a7)
  {
    v20 = objc_alloc(MEMORY[0x277CCAD18]);
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 0];
    v22 = [v20 initWithName:@"platformIndependent" value:v21];

    [v15 addObject:v22];
  }

  v23 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v23 setScheme:@"helpkit"];
  [v23 setHost:@"open"];
  [v23 setQueryItems:v15];
  v24 = [v23 URL];

  return v24;
}

+ (id)helpViewControllerWithURL:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:0];
  v5 = [v4 scheme];
  if (([v5 isEqualToString:@"helpkit"] & 1) == 0)
  {

    goto LABEL_26;
  }

  v6 = [v4 host];
  v7 = [v6 isEqualToString:@"open"];

  if (!v7)
  {
LABEL_26:
    v23 = 0;
    v24 = 0;
    v11 = 0;
    v25 = 0;
    v26 = 1;
    goto LABEL_27;
  }

  v33 = v4;
  v34 = v3;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [v4 queryItems];
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v36 = 0;
    v37 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *v39;
    v35 = 1;
    do
    {
      v14 = 0;
      do
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v38 + 1) + 8 * v14);
        v16 = [v15 name];
        v17 = [v15 value];
        if (([v16 isEqualToString:@"book"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"bookId"))
        {
          v18 = v17;

          v12 = v18;
        }

        else if (([v16 isEqualToString:@"topic"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"topicId"))
        {
          v19 = v17;

          v11 = v19;
        }

        else if (([v16 isEqualToString:@"anchor"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"anchorId"))
        {
          v20 = v17;

          v37 = v20;
        }

        else if ([v16 isEqualToString:@"version"])
        {
          v21 = v17;

          v36 = v21;
        }

        else if ([v16 isEqualToString:@"platformIndependent"])
        {
          v35 = [v17 BOOLValue];
        }

        ++v14;
      }

      while (v10 != v14);
      v22 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
      v10 = v22;
    }

    while (v22);
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v11 = 0;
    v12 = 0;
    v35 = 1;
  }

  v23 = v36;
  v31 = [(__CFString *)v36 length];
  if ([v12 length])
  {
    v4 = v33;
    v3 = v34;
    v24 = v37;
    v26 = v35;
    if (!v31)
    {

      v23 = @"HLPHelpViewControllerVersionLatest";
    }

    v25 = v12;
  }

  else
  {
    v25 = [objc_opt_class() mainUserGuideIdentifier];

    v4 = v33;
    v3 = v34;
    v24 = v37;
    v26 = v35;
    if (!v31)
    {
      v32 = [objc_opt_class() platformVersion];

      v23 = v32;
    }
  }

LABEL_27:
  v27 = [HLPHelpViewController helpViewControllerWithIdentifier:v25 version:v23];
  if (v11)
  {
    if (v24)
    {
      v28 = [v11 stringByAppendingFormat:@"#%@", v24];

      v11 = v28;
    }

    [v27 setSelectedHelpTopicID:v11];
  }

  [v27 setPlatformIndependent:v26 & 1];

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)helpViewControllerWithLocalHelpBookFileURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HLPHelpViewController);
  [(HLPHelpViewController *)v4 setLocalHelpBookFileURL:v3];

  return v4;
}

+ (id)helpViewControllerWithTitle:(id)a3 identifier:(id)a4 version:(id)a5 subpath:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(HLPHelpViewController);
  [objc_opt_class() updateViewController:v13 title:v12 identifier:v11 version:v10 subpath:v9];

  return v13;
}

+ (void)updateViewController:(id)a3 title:(id)a4 identifier:(id)a5 version:(id)a6 subpath:(id)a7
{
  v25 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  [v25 setTitle:a4];
  if (+[HLPCommonDefines isInternalBuild])
  {
    v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [v14 objectForKey:@"HLPHelpBookOverrideIdentifier"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v11;
    }

    v18 = v17;

    v19 = [v14 stringForKey:@"HLPHelpBookVersionOverride"];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v12;
    }

    v22 = v21;

    v12 = v22;
    v11 = v18;
  }

  if (![v11 length])
  {
    v23 = [objc_opt_class() mainUserGuideIdentifier];

    v11 = v23;
  }

  if (![(__CFString *)v12 length])
  {
    v24 = [objc_opt_class() platformVersion];

    v12 = v24;
  }

  [v25 setIdentifier:v11];
  if ([(__CFString *)v12 isEqualToString:@"HLPHelpViewControllerVersionLatest"])
  {

    v12 = @"1000";
  }

  [v25 setVersion:v12];
  [v25 setSubpath:v13];
}

+ (void)clearCacheControllers
{
  v2 = +[HLPJSONCacheController sharedInstance];
  [v2 removeAllDataCache];

  v3 = +[HLPStringCacheController sharedInstance];
  [v3 removeAllDataCache];

  v4 = +[HLPFileCacheController sharedInstance];
  [v4 removeAllDataCache];

  v5 = +[HLPImageCacheController sharedInstance];
  [v5 removeAllDataCache];
}

- (void)dealloc
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v3 = +[HLPImageCacheController sharedInstance];
  [v3 removeInMemoryCache];

  +[HLPCommonDefines removeHLPBundle];
  v4.receiver = self;
  v4.super_class = HLPHelpViewController;
  [(HLPHelpViewController *)&v4 dealloc];
}

- (HLPHelpViewController)init
{
  v13.receiver = self;
  v13.super_class = HLPHelpViewController;
  v2 = [(HLPHelpViewController *)&v13 init];
  if (v2)
  {
    v3 = +[HLPURLSessionHandler sharedInstance];
    [v3 setExcludeCachingDataTypes:0];

    v4 = +[HLPURLSessionHandler sharedInstance];
    v5 = +[HLPURLSessionManager defaultManager];
    [v5 setDelegate:v4];

    v6 = +[HLPURLSessionHandler sharedInstance];
    v7 = +[HLPURLSessionManager defaultManager];
    [v7 setDefaultSessionDelegate:v6];

    if (+[HLPCommonDefines isInternalBuild])
    {
      v8 = +[HLPURLSessionACAuthContext defaultContext];
      [v8 setClientIdentifier:@"58f932fbcc7cea7d190041a7"];
      v9 = [[HLPURLSessionACAuthHandler alloc] initWithAuthenticationContext:v8];
      v10 = +[HLPURLSessionManager defaultManager];
      [v10 setAuthenticationHandler:v9];
    }

    v2->_shouldDismissWelcomeTopic = 1;
    v2->_showTopicViewOnLoad = 0;
    selectedHelpTopicID = v2->_selectedHelpTopicID;
    v2->_selectedHelpTopicID = &stru_2864756F0;

    v2->_useModalPresentation = 1;
    if (+[HLPCommonDefines isVisionOS])
    {
      v2->_supportsDarkMode = 1;
    }

    [objc_opt_class() updateViewController:v2 title:0 identifier:0 version:0 subpath:0];
  }

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HLPHelpViewController;
  [(HLPHelpViewController *)&v3 viewDidLoad];
  [(HLPHelpViewController *)self setup];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HLPHelpViewController;
  [(HLPHelpViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(HLPHelpViewController *)self view];
  [v3 safeAreaInsets];
  [(NSLayoutConstraint *)self->_loadingViewTopConstraint setConstant:?];
}

- (void)_setContext:(id)a3
{
  v5 = a3;
  if (self->_context != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_context, a3);
    [HLPCommonDefines setAuthenticationContext:v6];
    v5 = v6;
  }
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
    topicViewController = self->_topicViewController;
    if (topicViewController)
    {
      supportsDarkMode = [(HLPHelpTopicViewController *)topicViewController supportsDarkMode];
    }

    else
    {
      supportsDarkMode = self->_supportsDarkMode;
    }

    [(HLPHelpLoadingView *)self->_loadingView setSupportsDarkMode:supportsDarkMode];
    [(HLPHelpLoadingView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(HLPHelpViewController *)self view];
    [v9 addSubview:self->_loadingView];

    v10 = [(HLPHelpLoadingView *)self->_loadingView topAnchor];
    v11 = [(HLPHelpViewController *)self view];
    v12 = [v11 topAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    loadingViewTopConstraint = self->_loadingViewTopConstraint;
    self->_loadingViewTopConstraint = v13;

    [(NSLayoutConstraint *)self->_loadingViewTopConstraint setActive:1];
    v15 = [(HLPHelpLoadingView *)self->_loadingView bottomAnchor];
    v16 = [(HLPHelpViewController *)self view];
    v17 = [v16 bottomAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    [v18 setActive:1];

    v19 = [(HLPHelpLoadingView *)self->_loadingView leadingAnchor];
    v20 = [(HLPHelpViewController *)self view];
    v21 = [v20 leadingAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    v23 = [(HLPHelpLoadingView *)self->_loadingView trailingAnchor];
    v24 = [(HLPHelpViewController *)self view];
    v25 = [v24 trailingAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    loadingView = self->_loadingView;
  }

  return loadingView;
}

- (HLPReachabilityManager)reachabilityManager
{
  reachabilityManager = self->_reachabilityManager;
  if (!reachabilityManager)
  {
    v4 = objc_alloc_init(HLPReachabilityManager);
    v5 = self->_reachabilityManager;
    self->_reachabilityManager = v4;

    [(HLPReachabilityManager *)self->_reachabilityManager setDelegate:self];
    reachabilityManager = self->_reachabilityManager;
  }

  return reachabilityManager;
}

- (id)localHelpBookAnalyticIdentifier
{
  v2 = [(HLPHelpViewController *)self localHelpBookFileURL];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (BOOL)shouldDisallowOffSiteRedirects
{
  v2 = +[HLPURLSessionHandler sharedInstance];
  v3 = [v2 shouldDisallowOffsiteRedirects];

  return v3;
}

- (void)resetLastScrolledPosition
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 removeObjectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];
}

- (void)cleanup
{
  [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController willMoveToParentViewController:0];
  v3 = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController view];
  [v3 removeFromSuperview];

  [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController removeFromParentViewController];
  tableOfContentViewController = self->_tableOfContentViewController;
  self->_tableOfContentViewController = 0;

  [(UIView *)self->_fullBookViewSeparator removeFromSuperview];
  fullBookViewSeparator = self->_fullBookViewSeparator;
  self->_fullBookViewSeparator = 0;

  v6 = [(HLPHelpViewController *)self navigationController];
  v7 = [v6 popToRootViewControllerAnimated:0];

  [(HLPHelpTopicViewController *)self->_topicViewController willMoveToParentViewController:0];
  v8 = [(HLPHelpTopicViewController *)self->_topicViewController view];
  [v8 removeFromSuperview];

  [(HLPHelpTopicViewController *)self->_topicViewController removeFromParentViewController];
  [(HLPHelpTopicViewController *)self->_topicViewController cleanup];
  topicViewController = self->_topicViewController;
  self->_topicViewController = 0;

  localeListController = self->_localeListController;
  self->_localeListController = 0;

  helpBookController = self->_helpBookController;
  self->_helpBookController = 0;

  v12 = [(HLPHelpViewController *)self navigationItem];
  [v12 setLeftBarButtonItem:0];

  v13 = [(HLPHelpViewController *)self loadingView];
  [v13 showActivityIndicator:1];

  v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v14 removeObjectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];

  selectedHelpTopicID = self->_selectedHelpTopicID;
  self->_selectedHelpTopicID = &stru_2864756F0;

  selectedHelpTopicName = self->_selectedHelpTopicName;
  self->_selectedHelpTopicName = 0;

  self->_showingHelpTopic = 0;
}

- (void)setup
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([v3 BOOLForKey:@"HLPHelpBookResetToShowLandingPage"])
  {
    [v3 removeObjectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];
    [v3 synchronize];
  }

  if ([v3 BOOLForKey:@"HLPHelpBookPlatformIndependent"])
  {
    [(HLPHelpViewController *)self setPlatformIndependent:1];
  }

  else
  {
    [objc_opt_class() platformIndependentIdentifiers];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = v27 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          v10 = [(NSString *)self->_identifier lowercaseString];
          LODWORD(v9) = [v10 hasPrefix:v9];

          if (v9)
          {
            [(HLPHelpViewController *)self setPlatformIndependent:1];
            [(HLPHelpViewController *)self _setSupportsDarkMode:1];
            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  if ([v3 BOOLForKey:{@"HLPHelpBookSupportsDarkMode", v24}])
  {
    [(HLPHelpViewController *)self _setSupportsDarkMode:1];
  }

  [(HLPHelpViewController *)self updateDarkMode];
  v11 = self->_identifier;
  if (v11 || ([(HLPHelpViewController *)self localHelpBookFileURL], v13 = objc_claimAutoreleasedReturnValue(), v13, v13) && ([(HLPHelpViewController *)self localHelpBookAnalyticIdentifier], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
  }

  else
  {
    v14 = HLPLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(HLPHelpViewController *)self localHelpBookFileURL];
      *buf = 138412290;
      v29 = v15;
      _os_log_impl(&dword_2522BC000, v14, OS_LOG_TYPE_DEFAULT, "Local help book URL %@", buf, 0xCu);
    }

    v12 = 0;
  }

  v16 = +[HLPAnalyticsEventController sharedInstance];
  [v16 configureWithHelpBookID:v12 version:self->_version];

  v17 = [(HLPHelpViewController *)self title];
  if (v17 || [(HLPHelpViewController *)self displayHelpTopicsOnly])
  {
  }

  else if (!self->_fullBookView)
  {
    v22 = +[HLPCommonDefines HLPBundle];
    v23 = [v22 localizedStringForKey:@"Help" value:&stru_2864756F0 table:0];
    [(HLPHelpViewController *)self setTitle:v23];
  }

  if (self->_fullBookView && !self->_displayHelpTopicsOnly)
  {
    [(HLPHelpViewController *)self setupFullBookView];
    goto LABEL_37;
  }

  if ([(NSString *)self->_selectedHelpTopicID length]|| [(NSString *)self->_selectedHelpTopicName length])
  {
    self->_showTopicViewOnLoad = 1;
    goto LABEL_33;
  }

  if (self->_showTopicViewOnLoad)
  {
LABEL_33:
    if (!self->_topicViewController)
    {
      [(HLPHelpViewController *)self _showHelpTopicItem:0 anchor:0 allowErrorMessage:0 animate:0];
      self->_showingHelpTopic = 0;
    }
  }

  [(HLPHelpViewController *)self setupTableContentViewController];
  [(HLPHelpViewController *)self updateDoneButton];
  [(HLPHelpViewController *)self updateTOCButton];
  [(HLPHelpViewController *)self updateChildViewConstraints];
  [(HLPHelpViewController *)self setDefinesPresentationContext:1];
LABEL_37:
  [(HLPHelpViewController *)self loadHelpBook];
  v18 = [(HLPHelpViewController *)self navigationItem];
  [v18 setPreferredSearchBarPlacement:2];

  v19 = objc_alloc_init(MEMORY[0x277D75788]);
  [v19 configureWithDefaultBackground];
  v20 = [(HLPHelpViewController *)self navigationItem];
  [v20 setScrollEdgeAppearance:v19];

  [(HLPHelpViewController *)self registerTraitChanges];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateHelpBookController
{
  if ([(HLPRemoteDataController *)self->_helpBookController hasLoaded]&& ![(HLPRemoteDataController *)self->_helpBookController loading])
  {
    v3 = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController helpBookController];
    if (v3)
    {
    }

    else if (self->_helpBookController)
    {
      tableOfContentViewController = self->_tableOfContentViewController;

      [(HLPHelpTableOfContentViewController *)tableOfContentViewController updateWithHelpBookController:?];
    }
  }
}

- (void)setupFullBookView
{
  [(HLPHelpViewController *)self setupTableContentViewController];
  [(HLPHelpViewController *)self setupTopicViewController];
  v82 = [(HLPHelpTopicViewController *)self->_topicViewController view];
  v3 = [(HLPHelpViewController *)self view];
  if (+[HLPCommonDefines isVisionOS])
  {
    v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_tableOfContentViewController];
    v5 = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController view];
    [v5 setHidden:1];

    [(HLPHelpViewController *)self addChildViewController:v4];
    v6 = [(HLPHelpViewController *)self view];
    v7 = [v4 view];
    [v6 addSubview:v7];

    v8 = [v4 view];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v8 leadingAnchor];
    v10 = [v3 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [v8 widthAnchor];
    v13 = [v12 constraintEqualToConstant:320.0];
    [v13 setActive:1];

    v14 = [v8 topAnchor];
    v15 = [v3 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [v8 bottomAnchor];
    v18 = [v3 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    [v4 didMoveToParentViewController:self];
    if (([v82 isDescendantOfView:v3] & 1) == 0)
    {
      v20 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_topicViewController];
      v21 = [(HLPHelpTopicViewController *)self->_topicViewController view];
      [v21 setHidden:1];

      [(HLPHelpViewController *)self addChildViewController:v20];
      v22 = [(HLPHelpViewController *)self view];
      v23 = [v20 view];
      [v22 addSubview:v23];

      v24 = [v20 view];
      [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
      v25 = [v24 leadingAnchor];
      v26 = [v8 trailingAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      [v27 setActive:1];

      v28 = [v24 trailingAnchor];
      v29 = [v3 trailingAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];
      [v30 setActive:1];

      v31 = [v24 topAnchor];
      v32 = [v3 topAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      [v33 setActive:1];

      v34 = [v24 bottomAnchor];
      v35 = [v3 bottomAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      [v36 setActive:1];

      [v20 didMoveToParentViewController:self];
    }
  }

  else
  {
    v37 = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController view];
    if ([v37 isDescendantOfView:v3])
    {
      v8 = 0;
    }

    else
    {
      [(HLPHelpViewController *)self addChildViewController:self->_tableOfContentViewController];
      v38 = [(HLPHelpViewController *)self view];
      [v38 addSubview:v37];

      v8 = v37;
      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      v39 = [v8 leadingAnchor];
      v40 = [v3 leadingAnchor];
      v41 = [v39 constraintEqualToAnchor:v40];
      [v41 setActive:1];

      v42 = [v8 widthAnchor];
      v43 = [v42 constraintEqualToConstant:320.0];
      [v43 setActive:1];

      v44 = [v8 topAnchor];
      v45 = [v3 topAnchor];
      v46 = [v44 constraintEqualToAnchor:v45];
      [v46 setActive:1];

      v47 = [v8 bottomAnchor];
      v48 = [v3 bottomAnchor];
      v49 = [v47 constraintEqualToAnchor:v48];
      [v49 setActive:1];

      [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController didMoveToParentViewController:self];
    }

    if (![(UIView *)self->_fullBookViewSeparator isDescendantOfView:v3])
    {
      v50 = objc_alloc(MEMORY[0x277D75D18]);
      v51 = [v50 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      fullBookViewSeparator = self->_fullBookViewSeparator;
      self->_fullBookViewSeparator = v51;

      v53 = [(HLPHelpViewController *)self view];
      [v53 addSubview:self->_fullBookViewSeparator];

      [(UIView *)self->_fullBookViewSeparator setHidden:1];
      v54 = [MEMORY[0x277D75348] systemGrayColor];
      [(UIView *)self->_fullBookViewSeparator setBackgroundColor:v54];

      [(UIView *)self->_fullBookViewSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
      v55 = [(UIView *)self->_fullBookViewSeparator leadingAnchor];
      v56 = [v8 trailingAnchor];
      v57 = [v55 constraintEqualToAnchor:v56];
      [v57 setActive:1];

      v58 = [(UIView *)self->_fullBookViewSeparator topAnchor];
      v59 = [v3 topAnchor];
      v60 = [v58 constraintEqualToAnchor:v59];
      [v60 setActive:1];

      v61 = [(UIView *)self->_fullBookViewSeparator bottomAnchor];
      v62 = [v3 bottomAnchor];
      v63 = [v61 constraintEqualToAnchor:v62];
      [v63 setActive:1];

      v64 = [(UIView *)self->_fullBookViewSeparator widthAnchor];
      v65 = [MEMORY[0x277D759A0] mainScreen];
      [v65 scale];
      v67 = [v64 constraintEqualToConstant:1.0 / v66];
      [v67 setActive:1];

      v68 = self->_fullBookViewSeparator;
      v8 = v68;
    }

    if (([v82 isDescendantOfView:v3] & 1) == 0)
    {
      [(HLPHelpViewController *)self addChildViewController:self->_topicViewController];
      v69 = [(HLPHelpViewController *)self view];
      [v69 addSubview:v82];

      [v82 setTranslatesAutoresizingMaskIntoConstraints:0];
      v70 = [v82 leadingAnchor];
      v71 = [v8 trailingAnchor];
      v72 = [v70 constraintEqualToAnchor:v71];
      [v72 setActive:1];

      v73 = [v82 trailingAnchor];
      v74 = [v3 trailingAnchor];
      v75 = [v73 constraintEqualToAnchor:v74];
      [v75 setActive:1];

      v76 = [v82 topAnchor];
      v77 = [v3 topAnchor];
      v78 = [v76 constraintEqualToAnchor:v77];
      [v78 setActive:1];

      v79 = [v82 bottomAnchor];
      v80 = [v3 bottomAnchor];
      v81 = [v79 constraintEqualToAnchor:v80];
      [v81 setActive:1];

      [(HLPHelpTopicViewController *)self->_topicViewController didMoveToParentViewController:self];
    }
  }
}

- (void)updateChildViewConstraints
{
  if (!self->_fullBookView && !self->_displayHelpTopicsOnly)
  {
    v25 = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController view];
    if (v25)
    {
      v3 = [(HLPHelpViewController *)self view];
      v4 = [v25 isDescendantOfView:v3];

      if ((v4 & 1) == 0)
      {
        [(HLPHelpViewController *)self addChildViewController:self->_tableOfContentViewController];
        v5 = [(HLPHelpViewController *)self view];
        [v5 addSubview:v25];

        v6 = [v25 leadingAnchor];
        v7 = [(HLPHelpViewController *)self view];
        v8 = [v7 leadingAnchor];
        v9 = [v6 constraintEqualToAnchor:v8];
        [v9 setActive:1];

        v10 = [v25 trailingAnchor];
        v11 = [(HLPHelpViewController *)self view];
        v12 = [v11 trailingAnchor];
        v13 = [v10 constraintEqualToAnchor:v12];
        [v13 setActive:1];

        v14 = [v25 topAnchor];
        v15 = [(HLPHelpViewController *)self view];
        v16 = [v15 topAnchor];
        v17 = [v14 constraintEqualToAnchor:v16];
        [v17 setActive:1];

        v18 = [v25 bottomAnchor];
        v19 = [(HLPHelpViewController *)self view];
        v20 = [v19 bottomAnchor];
        v21 = [v18 constraintEqualToAnchor:v20];
        [v21 setActive:1];

        [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController didMoveToParentViewController:self];
        v22 = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController searchController];
        v23 = [(HLPHelpViewController *)self navigationItem];
        [v23 setSearchController:v22];

        v24 = [(HLPHelpViewController *)self navigationItem];
        [v24 setHidesSearchBarWhenScrolling:0];
      }
    }
  }
}

- (void)updateTOCButton
{
  if (!self->_fullBookView)
  {
    v8 = [(HLPHelpViewController *)self navigationItem];
    v3 = [v8 leftBarButtonItem];
    if (!v3 && self->_showTopicViewOnLoad)
    {
      displayHelpTopicsOnly = self->_displayHelpTopicsOnly;

      if (displayHelpTopicsOnly)
      {
        return;
      }

      v8 = [MEMORY[0x277D755B8] systemImageNamed:@"list.bullet"];
      v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v8 style:0 target:self action:sel_showTopicView];
      [v3 setSelected:1];
      v5 = +[HLPCommonDefines HLPBundle];
      v6 = [v5 localizedStringForKey:@"Hide Table of Contents" value:&stru_2864756F0 table:0];
      [v3 setAccessibilityLabel:v6];

      v7 = [(HLPHelpViewController *)self navigationItem];
      [v7 setLeftBarButtonItem:v3];
    }
  }
}

- (void)updateDoneButton
{
  if (!self->_fullBookView)
  {
    if (self->_hideDoneButton)
    {
      v4 = [(HLPHelpViewController *)self navigationItem];
      v5 = [v4 rightBarButtonItem];
      doneBarButtonItem = self->_doneBarButtonItem;

      if (v5 == doneBarButtonItem)
      {
        v7 = [(HLPHelpViewController *)self navigationItem];
        [v7 setRightBarButtonItem:0];
      }

      v8 = self->_doneBarButtonItem;
      self->_doneBarButtonItem = 0;
    }

    else
    {
      v9 = self->_doneBarButtonItem;
      if (!v9)
      {
        v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:-[HLPHelpViewController closeBarButtonSystemItem](self target:"closeBarButtonSystemItem") action:{self, sel_dismiss}];
        v11 = self->_doneBarButtonItem;
        self->_doneBarButtonItem = v10;

        v9 = self->_doneBarButtonItem;
      }

      v12 = [(HLPHelpViewController *)self navigationItem];
      [(UIBarButtonItem *)v12 setRightBarButtonItem:v9];
      v8 = v12;
    }
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

- (void)showTopicView
{
  v6 = [(NSString *)self->_selectedHelpTopicID componentsSeparatedByString:@"#"];
  v3 = [v6 firstObject];
  if ([v6 count] == 2)
  {
    v4 = [v6 lastObject];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(HLPHelpBookController *)self->_helpBookController helpTopicItemForID:v3];
  [(HLPHelpViewController *)self _showHelpTopicItem:v5 anchor:v4 allowErrorMessage:1 animate:1];
}

- (void)setupTableContentViewController
{
  if (!self->_tableOfContentViewController && !self->_displayHelpTopicsOnly)
  {
    v3 = [[HLPHelpTableOfContentViewController alloc] initWithStyle:0];
    tableOfContentViewController = self->_tableOfContentViewController;
    self->_tableOfContentViewController = v3;

    [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController setDelegate:self];
    [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController setFullBookView:self->_fullBookView];
    [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController setShowTopicViewOnLoad:self->_showTopicViewOnLoad];
    v5 = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController view];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  }
}

- (void)setupTopicViewController
{
  if (!self->_topicViewController)
  {
    v3 = objc_alloc_init(HLPHelpTopicViewController);
    topicViewController = self->_topicViewController;
    self->_topicViewController = v3;

    [(HLPHelpTopicViewController *)self->_topicViewController setDelegate:self];
    [(HLPHelpTopicViewController *)self->_topicViewController setDisplayHelpTopicsOnly:self->_displayHelpTopicsOnly];
    [(HLPHelpTopicViewController *)self->_topicViewController setShowTopicNameAsTitle:self->_showTopicNameAsTitle];
    [(HLPHelpTopicViewController *)self->_topicViewController setFullBookView:self->_fullBookView];
    [(HLPHelpTopicViewController *)self->_topicViewController setHideDoneButton:self->_hideDoneButton];
    [(HLPHelpTopicViewController *)self->_topicViewController setSingleTopic:self->_displayHelpTopicsOnly];

    [(HLPHelpViewController *)self updateDarkMode];
  }
}

- (void)loadBookWithTitle:(id)a3 identifier:(id)a4 topicID:(id)a5 version:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HLPHelpViewController *)self identifier];
  v15 = [v14 isEqualToString:v11];

  if (v15)
  {
    [(HLPHelpViewController *)self loadHelpTopicID:v12];
  }

  else
  {
    [(HLPHelpViewController *)self cleanup];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HLPHelpViewController_loadBookWithTitle_identifier_topicID_version___block_invoke;
    block[3] = &unk_279706D08;
    block[4] = self;
    v17 = v10;
    v18 = v11;
    v19 = v13;
    v20 = v12;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __70__HLPHelpViewController_loadBookWithTitle_identifier_topicID_version___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [objc_opt_class() updateViewController:*(a1 + 32) title:*(a1 + 40) identifier:*(a1 + 48) version:*(a1 + 56) subpath:0];
  [*(a1 + 32) setup];
  [*(a1 + 32) updateHelpBookController];
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);

  return [v4 setSelectedHelpTopicID:v3];
}

- (void)loadHelpTopicItem:(id)a3
{
  v4 = [HLPLoadInfo infoWithTopicItem:a3 accessType:5 searchTerms:0 anchor:0];
  [v4 setAnalyticsLogged:1];
  [(HLPHelpViewController *)self _showWithLoadInfo:v4 animate:1];
}

- (void)loadHelpTopicID:(id)a3
{
  v10 = a3;
  if ([(HLPRemoteDataController *)self->_helpBookController hasLoaded]&& self->_topicViewController)
  {
    selectedHelpTopicID = [v10 componentsSeparatedByString:@"#"];
    v5 = [selectedHelpTopicID firstObject];
    if ([selectedHelpTopicID count] == 2)
    {
      v6 = [selectedHelpTopicID lastObject];
    }

    else
    {
      v6 = 0;
    }

    v8 = [(HLPHelpBookController *)self->_helpBookController helpTopicItemForID:v5];
    if (v8)
    {
      if (self->_fullBookView || self->_showingHelpTopic)
      {
        [(HLPHelpTopicViewController *)self->_topicViewController loadHelpTopicItem:v8 accessType:5 searchTerms:0 anchor:v6];
        [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController scrollToHelpItem:v8 deselectImmediately:0 reload:1 animated:1];
      }

      else
      {
        [(HLPHelpViewController *)self loadHelpTopicItem:v8];
      }
    }
  }

  else
  {
    v7 = v10;
    selectedHelpTopicID = self->_selectedHelpTopicID;
    self->_selectedHelpTopicID = v7;
  }

  v9 = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController searchController];
  [v9 setActive:0];
}

- (void)displayHelpBookWithLocale:(id)a3
{
  tableOfContentViewController = self->_tableOfContentViewController;
  v5 = a3;
  [(HLPHelpTableOfContentViewController *)tableOfContentViewController setLocale:v5];
  [(HLPHelpTopicViewController *)self->_topicViewController setLocale:v5];

  v6 = [(HLPHelpViewController *)self loadingView];
  [v6 showActivityIndicator:0];

  v7 = [(NSString *)self->_selectedHelpTopicID componentsSeparatedByString:@"#"];
  v8 = [v7 firstObject];
  if ([v7 count] == 2)
  {
    v9 = [v7 lastObject];
  }

  else
  {
    v9 = 0;
  }

  if ([(NSString *)self->_selectedHelpTopicName length])
  {
    v10 = [(NSString *)self->_selectedHelpTopicName componentsSeparatedByString:@"#"];
    helpBookController = self->_helpBookController;
    v12 = [v10 firstObject];
    v13 = [(HLPHelpBookController *)helpBookController helpTopicItemForName:v12];

    if ([v10 count] == 2)
    {
      v14 = [v10 lastObject];
    }

    else
    {
      v14 = 0;
    }

    v9 = v14;
  }

  else
  {
    if (![(__CFString *)v8 length])
    {
      v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v16 = v15;
      if (self->_prefersLandingViewOnLoad)
      {
        [v15 removeObjectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];
      }

      else
      {
        v17 = [v15 objectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];
        if (v17)
        {
          v18 = MEMORY[0x277CBEB98];
          v19 = objc_opt_class();
          v40 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
          v41 = 0;
          v20 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v40 fromData:v17 error:&v41];
          v38 = v41;
          v21 = [v20 identifier];
          v22 = v21;
          v23 = &stru_2864756F0;
          if (v21)
          {
            v23 = v21;
          }

          v39 = v23;

          v8 = v39;
        }

        else
        {

          v8 = &stru_2864756F0;
        }
      }
    }

    v13 = [(HLPHelpBookController *)self->_helpBookController helpTopicItemForID:v8];
  }

  if (v13)
  {
    v24 = 1;
  }

  else
  {
    v24 = v8 == 0;
  }

  if (!v24)
  {
    v25 = self->_helpBookController;
    v26 = [(HLPHelpBookController *)v25 welcomeTopicIdentifier];
    v13 = [(HLPHelpBookController *)v25 helpTopicItemForID:v26];
  }

  if (self->_fullBookView)
  {
    [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController updateWithHelpBookController:self->_helpBookController];
    if (v13)
    {
      [(HLPHelpViewController *)self _showHelpTopicItem:v13 anchor:v9 allowErrorMessage:1 animate:1];
      v27 = self->_tableOfContentViewController;
      v28 = v13;
      v29 = 0;
      v30 = 1;
LABEL_28:
      [(HLPHelpTableOfContentViewController *)v27 scrollToHelpItem:v28 deselectImmediately:v29 reload:0 animated:v30];
    }
  }

  else if (self->_showTopicViewOnLoad && v13)
  {
    v31 = [(HLPHelpViewController *)self accessType];
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = 6;
    }

    v33 = [HLPLoadInfo infoWithTopicItem:v13 accessType:v32 searchTerms:0 anchor:v9];
    [(HLPHelpViewController *)self _showWithLoadInfo:v33 animate:1];
  }

  else
  {
    [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController updateWithHelpBookController:self->_helpBookController];
    if (v13 && self->_showTopicViewOnLoad)
    {
      v34 = [v13 identifier];
      selectedHelpTopicID = self->_selectedHelpTopicID;
      self->_selectedHelpTopicID = v34;

      v36 = [v13 name];
      selectedHelpTopicName = self->_selectedHelpTopicName;
      self->_selectedHelpTopicName = v36;

      v27 = self->_tableOfContentViewController;
      v28 = v13;
      v29 = 1;
      v30 = 0;
      goto LABEL_28;
    }
  }
}

- (void)updateLastLoadVersion
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 setObject:self->_version forKey:@"HLPHelpBookLastLoadVersion"];
  [v3 synchronize];
}

- (void)loadHelpBook
{
  v3 = HLPLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2522BC000, v3, OS_LOG_TYPE_DEFAULT, "loadHelpBook", buf, 2u);
  }

  if (!self->_helpBookURL || !self->_helpBookController)
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v6 = [v5 firstObject];

    v7 = [v4 objectForKey:@"HLPHelpBookLastLoadedLocale"];
    if (+[HLPCommonDefines isInternalBuild]&& PingPongClientLibraryCore_0())
    {
      v106 = 0;
      v107 = &v106;
      v108 = 0x2050000000;
      v8 = getPPCRedirectClass_softClass;
      v109 = getPPCRedirectClass_softClass;
      if (!getPPCRedirectClass_softClass)
      {
        *buf = MEMORY[0x277D85DD0];
        v102 = 3221225472;
        v103 = __getPPCRedirectClass_block_invoke;
        v104 = &unk_279706B98;
        v105 = &v106;
        __getPPCRedirectClass_block_invoke(buf);
        v8 = v107[3];
      }

      v9 = v8;
      _Block_object_dispose(&v106, 8);
      v10 = [v8 sharedInstance];
      v11 = [v10 hostMappings];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v4 objectForKey:@"HLPHelpBookHostMappings"];
    if (v7 && ![v6 isEqualToString:v7] || v11 | v12 && (objc_msgSend(v11, "isEqual:", v12) & 1) == 0)
    {
      v13 = HLPLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2522BC000, v13, OS_LOG_TYPE_DEFAULT, "Clearing all cache...", buf, 2u);
      }

      +[HLPHelpViewController clearCacheControllers];
    }

    v86 = v12;
    [v4 setObject:v11 forKey:@"HLPHelpBookHostMappings"];
    [v4 setObject:v6 forKey:@"HLPHelpBookLastLoadedLocale"];
    [v4 synchronize];
    v14 = [(HLPHelpViewController *)self loadingView];
    [v14 showActivityIndicator:1];

    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

    v17 = self->_version;
    v87 = v16;
    if (![(NSString *)v17 length])
    {
      v18 = v16;

      v17 = v18;
    }

    v19 = self->_localHelpBookFileURL;
    if (v19)
    {
      v20 = v19;
      [(HLPHelpViewController *)self loadFromStaticServer];
      v21 = v12;
LABEL_65:

      return;
    }

    v22 = +[HLPCommonDefines isInternalBuild];
    if (v22)
    {
      v84 = [v4 stringForKey:@"HLPHelpBookBaseURLOverride"];
      if (![v84 length])
      {
        v23 = [v4 stringForKey:@"HLPDynamicHelpBookHostOverride"];
        if (v23)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v84 = 0;
      if (![0 length])
      {
LABEL_28:
        v23 = @"https://cds.apple.com/";
LABEL_29:
        v76 = v7;
        v77 = v6;
        v81 = v23;
        objc_storeStrong(&self->_helpBookBasePath, v23);
        v24 = [MEMORY[0x277CBEB40] orderedSet];
        v25 = MEMORY[0x277CBEB18];
        v26 = [MEMORY[0x277CBEAF8] preferredLanguages];
        v27 = [v25 arrayWithArray:v26];

        if (v22)
        {
          v28 = [v4 objectForKey:@"HLPHelpBookPreferredLanguageOverride"];
        }

        else
        {
          v28 = 0;
        }

        if ([v28 length])
        {
          [v27 insertObject:v28 atIndex:0];
        }

        v75 = v28;
        v29 = [MEMORY[0x277CBEAF8] systemLanguages];
        v30 = [(HLPHelpViewController *)self additionalSupportedLanguages];
        v31 = [v30 count];

        if (v31)
        {
          v32 = [(HLPHelpViewController *)self additionalSupportedLanguages];
          v33 = [v29 arrayByAddingObjectsFromArray:v32];

          v29 = v33;
        }

        do
        {
          if ([v24 count] > 2)
          {
            break;
          }

          if (![v27 count])
          {
            break;
          }

          v34 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:v29 forPreferences:v27];
          [v24 addObjectsFromArray:v34];

          [v27 removeObjectAtIndex:0];
        }

        while (![v24 containsObject:@"en"]);
        if ([v24 count])
        {
          if ([v24 count] >= 4)
          {
            [v24 removeObjectsInRange:{3, objc_msgSend(v24, "count") - 3}];
          }
        }

        else
        {
          [v24 addObject:@"en"];
        }

        v35 = [objc_opt_class() platformVersion];
        v36 = [objc_opt_class() platform];
        v37 = self->_identifier;
        v73 = v11;
        if ([(NSString *)v37 containsString:@"watch"])
        {
          v82 = v37;

          v38 = v17;
          v39 = v35;
          v36 = @"watchos";
        }

        else
        {
          if ([(NSString *)v37 hasPrefix:@"iphone"]|| [(NSString *)v37 hasPrefix:@"ipad"])
          {
            v78 = v35;
            goto LABEL_49;
          }

          v80 = v36;
          if ([(NSString *)self->_subpath length])
          {
            v63 = [(NSString *)v37 stringByAppendingFormat:@"-%@", self->_subpath];

            v37 = v63;
          }

          if ([(HLPHelpViewController *)self platformIndependent])
          {
            v78 = v35;
            v36 = v80;
            goto LABEL_49;
          }

          [objc_opt_class() deviceFamily];
          v39 = v64 = v37;
          v82 = [(NSString *)v64 stringByAppendingFormat:@"-%@", v39];

          v36 = v80;
          v38 = v35;
        }

        v78 = v38;

        v37 = v82;
LABEL_49:
        v79 = v36;
        v74 = v29;
        v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
        if (![(HLPHelpViewController *)self platformIndependent])
        {
          v41 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"platform" value:v36];
          [v40 addObject:v41];
          v42 = v37;
          v43 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"pOSv" value:v78];
          [v40 addObject:v43];

          v37 = v42;
        }

        v83 = v37;
        v44 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"product" value:v37];
        obj = v17;
        v45 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"productVersion" value:v17];
        v46 = objc_alloc(MEMORY[0x277CCAD18]);
        v47 = [v24 array];
        v48 = [v47 componentsJoinedByString:{@", "}];
        v49 = [v46 initWithName:@"locale" value:v48];

        v72 = v44;
        [v40 addObject:v44];
        v71 = v45;
        [v40 addObject:v45];
        v50 = [MEMORY[0x277CCACE0] componentsWithString:v81];
        [v50 setPath:@"/content/services/book"];
        v70 = v49;
        v51 = [v40 arrayByAddingObject:v49];
        [v50 setQueryItems:v51];

        v20 = [v50 URL];
        if (v20)
        {
          v67 = v40;
          v68 = v50;
          objc_storeStrong(&self->_helpBookVersion, obj);
          objc_storeStrong(&self->_helpBookURL, v20);
          v52 = [(HLPRemoteDataController *)[HLPHelpBookController alloc] initWithURL:self->_helpBookURL];
          helpBookController = self->_helpBookController;
          self->_helpBookController = v52;

          [(HLPHelpBookController *)self->_helpBookController setHelpBookURL:self->_helpBookURL];
          [(HLPHelpBookController *)self->_helpBookController setAdditionalSupportedLanguages:self->_additionalSupportedLanguages];
          [(HLPHelpBookController *)self->_helpBookController setServerType:1];
          v54 = [v4 objectForKey:@"HLPDynamicHelpBookLastLoadedIdentifier"];
          v55 = [v4 objectForKey:@"HLPDynamicHelpBookLastLoadedVersion"];
          v56 = [(NSString *)obj isEqualToString:v54];
          v57 = [(NSString *)obj isEqualToString:v55];
          v65 = v57 ^ 1;
          v85 = v54;
          if (v54)
          {
            v58 = v56;
          }

          else
          {
            v58 = 1;
          }

          if (v55)
          {
            v59 = v57;
          }

          else
          {
            v59 = 1;
          }

          v17 = obj;
          if (v58 != 1 || (v59 & 1) == 0)
          {
            +[HLPHelpViewController clearCacheControllers];
          }

          objc_initWeak(buf, self);
          v66 = self->_helpBookController;
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = __37__HLPHelpViewController_loadHelpBook__block_invoke;
          v88[3] = &unk_279706D30;
          objc_copyWeak(&v98, buf);
          v60 = v55;
          v89 = v60;
          v90 = v4;
          v99 = v56 ^ 1;
          v100 = v65;
          v91 = v83;
          v92 = obj;
          v93 = self;
          v94 = v67;
          v95 = v24;
          v96 = v68;
          v97 = v87;
          [(HLPHelpBookController *)v66 fetchDataWithDataType:1 identifier:@"book.json" completionHandler:v88];

          objc_destroyWeak(&v98);
          objc_destroyWeak(buf);

          v21 = v86;
          v61 = v78;
          v62 = v83;
          v40 = v67;
          v50 = v68;
        }

        else
        {
          [(HLPHelpViewController *)self loadFromStaticServer];
          v21 = v86;
          v61 = v78;
          v62 = v83;
          v17 = obj;
        }

        v7 = v76;
        v6 = v77;
        v11 = v73;
        goto LABEL_64;
      }
    }

    [(HLPHelpViewController *)self loadFromStaticServer];
    v20 = 0;
    v21 = v12;
LABEL_64:

    goto LABEL_65;
  }
}

void __37__HLPHelpViewController_loadHelpBook__block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  [WeakRetained updateLastLoadVersion];
  v10 = [v8 URL];

  if (v10)
  {
    v11 = MEMORY[0x277CCACE0];
    v12 = [v8 URL];
    v13 = [v11 componentsWithURL:v12 resolvingAgainstBaseURL:1];

    v14 = objc_alloc_init(MEMORY[0x277CCACE0]);
    v15 = [v13 scheme];
    [v14 setScheme:v15];

    v16 = [v13 host];
    [v14 setHost:v16];

    v17 = [v14 URL];
    v18 = [v17 absoluteString];
    [WeakRetained setHelpBookBasePath:v18];
  }

  if (v7 || !a2)
  {
    v38 = HLPLogForCategory(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2522BC000, v38, OS_LOG_TYPE_DEFAULT, "CDS load failed", buf, 2u);
    }

    if ([v7 code] == 645 || objc_msgSend(v7, "code") == 615)
    {
      v39 = HLPLogForCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *v50 = 0;
        _os_log_impl(&dword_2522BC000, v39, OS_LOG_TYPE_DEFAULT, "CDS book invalid", v50, 2u);
      }

      [*(a1 + 40) setObject:*(a1 + 96) forKey:@"HLPHelpBookDynamicServerLastFailureLoadVersion"];
      [*(a1 + 40) synchronize];
    }

    [WeakRetained loadFromStaticServer];
  }

  else
  {
    if (!*(a1 + 32))
    {
      [*(a1 + 40) removeObjectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];
    }

    [WeakRetained removeDDMLoadFailVersion];
    if ((*(a1 + 112) & 1) != 0 || *(a1 + 113) == 1)
    {
      [*(a1 + 40) setObject:*(a1 + 48) forKey:@"HLPDynamicHelpBookLastLoadedIdentifier"];
      [*(a1 + 40) setObject:*(a1 + 56) forKey:@"HLPDynamicHelpBookLastLoadedVersion"];
      [*(a1 + 40) synchronize];
    }

    v19 = [WeakRetained loadingView];
    [v19 showActivityIndicator:0];

    if (WeakRetained)
    {
      if (WeakRetained[993] == 1)
      {
        v20 = [WeakRetained tableOfContentViewController];
        v21 = [v20 view];
        [v21 setHidden:0];

        v22 = [WeakRetained topicViewController];
        v23 = [v22 view];
        [v23 setHidden:0];

        v24 = [WeakRetained fullBookViewSeparator];
        [v24 setHidden:0];

        if (+[HLPCommonDefines isVisionOS])
        {
          v25 = [*(a1 + 64) title];
          v26 = [WeakRetained tableOfContentViewController];
          [v26 setTitle:v25];
        }
      }
    }

    v27 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"topicid" value:@"%@"];
    [*(a1 + 72) addObject:v27];
    v28 = objc_alloc(MEMORY[0x277CCAD18]);
    v29 = [WeakRetained helpBookController];
    v30 = [v29 bookId];
    v31 = [v28 initWithName:@"bookid" value:v30];

    [*(a1 + 72) addObject:v31];
    v32 = [WeakRetained helpBookController];
    v33 = [v32 locale];
    v34 = [v33 isoCodes];
    v35 = [v34 firstObject];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = [*(a1 + 80) firstObject];
    }

    v40 = v37;

    v41 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"locale" value:v40];
    [WeakRetained updateCacheControllerToLanguageCode:v40];
    v42 = [*(a1 + 72) arrayByAddingObject:v41];
    [*(a1 + 88) setQueryItems:v42];

    [*(a1 + 88) setPath:@"/content/services/lookup"];
    v43 = [*(a1 + 88) URL];
    v44 = [v43 absoluteString];
    v45 = [WeakRetained helpBookController];
    [v45 setTopicPathFormat:v44];

    v46 = [WeakRetained helpBookController];
    v47 = [v46 locale];
    [WeakRetained displayHelpBookWithLocale:v47];

    v8 = v48;
    v7 = v49;
  }
}

- (void)loadFromStaticServer
{
  v3 = HLPLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2522BC000, v3, OS_LOG_TYPE_DEFAULT, "load from help.apple.com", buf, 2u);
  }

  helpBookVersion = self->_helpBookVersion;
  self->_helpBookVersion = 0;

  helpBookURL = self->_helpBookURL;
  self->_helpBookURL = 0;

  helpBookController = self->_helpBookController;
  self->_helpBookController = 0;

  v7 = [(HLPHelpViewController *)self loadingView];
  [v7 showActivityIndicator:1];

  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = self->_localHelpBookFileURL;
  if (!v9)
  {
    if (+[HLPCommonDefines isInternalBuild])
    {
      v10 = [v8 stringForKey:@"HLPHelpBookBaseURLOverride"];
      if (![v10 length])
      {
        v11 = [v8 stringForKey:@"HLPHelpBookHostOverride"];
        if (v11)
        {
LABEL_11:
          objc_storeStrong(&self->_helpBookBasePath, v11);
          v12 = [MEMORY[0x277CBEBC0] URLWithString:v11];
          v13 = [objc_opt_class() deviceFamily];
          objc_storeStrong(&self->_helpBookVersion, self->_version);
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@", self->_identifier, v13, self->_version];
          if ([(NSString *)self->_subpath length])
          {
            v15 = [v14 stringByAppendingPathComponent:self->_subpath];

            v14 = v15;
          }

          v16 = [v12 URLByAppendingPathComponent:v14];

          v9 = [v16 URLByAppendingPathComponent:@"cardinal/"];

          goto LABEL_14;
        }

LABEL_10:
        v11 = @"https://help.apple.com";
        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
      if (![0 length])
      {
        goto LABEL_10;
      }
    }

    v9 = [MEMORY[0x277CBEBC0] URLWithString:v10];
LABEL_14:
  }

  v17 = [v8 stringForKey:@"HLPHelpBookLastIdentifier"];
  v18 = [v8 stringForKey:@"HLPHelpBookLastLoadedVersion"];
  v19 = [v8 stringForKey:@"HLPHelpBookLastLoadedSubpath"];
  if (![(NSString *)self->_identifier isEqualToString:v17]|| ![(NSString *)self->_helpBookVersion isEqualToString:v18]|| (subpath = self->_subpath) != 0 && ![(NSString *)subpath isEqualToString:v19])
  {
    +[HLPHelpViewController clearCacheControllers];
    [v8 setObject:self->_identifier forKey:@"HLPHelpBookLastIdentifier"];
    [v8 setObject:self->_helpBookVersion forKey:@"HLPHelpBookLastLoadedVersion"];
    [v8 setObject:self->_subpath forKey:@"HLPHelpBookLastLoadedSubpath"];
    if (![(NSString *)self->_selectedHelpTopicName length]&& ![(NSString *)self->_selectedHelpTopicID length])
    {
      [v8 removeObjectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];
    }

    [v8 synchronize];
  }

  v21 = [[HLPHelpLocaleController alloc] initWithURL:v9];
  localeListController = self->_localeListController;
  self->_localeListController = v21;

  v23 = [(HLPHelpViewController *)self preferredLanguagesOverride];
  [(HLPHelpLocaleController *)self->_localeListController setPreferredLanguagesOverride:v23];

  objc_initWeak(buf, self);
  v24 = self->_localeListController;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __45__HLPHelpViewController_loadFromStaticServer__block_invoke;
  v26[3] = &unk_279706D80;
  objc_copyWeak(&v28, buf);
  v25 = v9;
  v27 = v25;
  [(HLPRemoteDataController *)v24 fetchDataWithDataType:1 identifier:@"locale-list.json" completionHandler:v26];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

void __45__HLPHelpViewController_loadFromStaticServer__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (!v5 && a2 && ([WeakRetained localeListController], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "locales"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v10))
  {
    v11 = [v7 localeListController];
    v12 = [v11 currentLocale];

    v13 = [v12 path];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [v12 isoCodes];
      v16 = [v15 firstObject];
      [v7 updateCacheControllerToLanguageCode:v16];

      v17 = *(a1 + 32);
      v18 = [v12 path];
      v19 = [v17 URLByAppendingPathComponent:v18];
      [v7 setHelpBookURL:v19];

      v20 = [HLPHelpBookController alloc];
      v21 = [v7 helpBookURL];
      v22 = [v21 URLByAppendingPathComponent:@"navigation.json"];
      v23 = [(HLPRemoteDataController *)v20 initWithURL:v22];
      [v7 setHelpBookController:v23];

      v24 = [v7 helpBookController];
      [v24 setServerType:0];

      v25 = [v7 helpBookURL];
      v26 = [v7 helpBookController];
      [v26 setHelpBookURL:v25];

      v27 = [v7 helpBookController];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __45__HLPHelpViewController_loadFromStaticServer__block_invoke_2;
      v28[3] = &unk_279706D58;
      v28[4] = v7;
      v29 = v12;
      [v27 fetchDataWithDataType:1 identifier:@"navigation.json" completionHandler:v28];
    }
  }

  else
  {
    [v7 showMessageForError:v5];
    [v7 removeDDMLoadFailVersion];
    [v7 updateLastLoadVersion];
  }
}

uint64_t __45__HLPHelpViewController_loadFromStaticServer__block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!a3 && a2)
  {
    v5 = [v4 version];
    if (!v5)
    {
      v10 = [*(a1 + 32) localHelpBookFileURL];

      if (!v10)
      {
        goto LABEL_5;
      }

      v11 = [*(a1 + 32) helpBookController];
      v12 = [v11 contentVersion];
      [*(a1 + 32) setVersion:v12];

      v5 = [*(a1 + 32) localHelpBookAnalyticIdentifier];
      if (v5)
      {
        v13 = +[HLPAnalyticsEventController sharedInstance];
        v14 = [*(a1 + 32) version];
        [v13 configureWithHelpBookID:v5 version:v14];
      }
    }

LABEL_5:
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v6 displayHelpBookWithLocale:v7];
  }

  [v4 showMessageForError:?];
  [*(a1 + 32) removeDDMLoadFailVersion];
  v9 = *(a1 + 32);

  return [v9 updateLastLoadVersion];
}

- (void)updateDarkMode
{
  if (!self->_supportsDarkMode)
  {
    localHelpBookFileURL = self->_localHelpBookFileURL;
    if (localHelpBookFileURL)
    {
      v5 = [(NSURL *)localHelpBookFileURL absoluteString];
      self->_supportsDarkMode = [v5 rangeOfString:@"FunctionHelp.bundle" options:4] != 0x7FFFFFFFFFFFFFFFLL;

      if (self->_supportsDarkMode)
      {
        goto LABEL_16;
      }
    }

    else
    {
      self->_supportsDarkMode = 0;
    }

    v6 = [(HLPHelpViewController *)self identifier];
    v7 = [v6 containsString:@"watch"];
    v8 = v7;
    if (v7)
    {
      v2 = [(HLPHelpViewController *)self version];
      [v2 floatValue];
      if (v9 >= 7.0)
      {
        goto LABEL_10;
      }
    }

    v10 = [(HLPHelpViewController *)self identifier];
    if ([v10 isEqualToString:@"playgrounds"])
    {

      if ((v8 & 1) == 0)
      {
LABEL_11:

LABEL_15:
        self->_supportsDarkMode = 1;
        goto LABEL_16;
      }

LABEL_10:

      goto LABEL_11;
    }

    v11 = [(HLPHelpViewController *)self identifier];
    v12 = [v11 hasPrefix:@"assistive-access"];

    if (v8)
    {
    }

    if (v12)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  if (self->_supportsDarkMode && ([(HLPHelpTopicViewController *)self->_topicViewController setSupportsDarkMode:1], self->_supportsDarkMode))
  {
    v13 = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  else
  {
    v13 = [MEMORY[0x277D75348] whiteColor];
  }

  v15 = v13;
  v14 = [(HLPHelpViewController *)self view];
  [v14 setBackgroundColor:v15];
}

- (void)registerTraitChanges
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__HLPHelpViewController_registerTraitChanges__block_invoke;
  v6[3] = &unk_2797069B8;
  v6[4] = self;
  v4 = [(HLPHelpViewController *)self registerForTraitChanges:v3 withHandler:v6];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)traitCollectionChangedFrom:(id)a3
{
  v4 = a3;
  v5 = [(HLPHelpViewController *)self traitCollection];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v6)
  {

    [(HLPHelpViewController *)self updateDarkMode];
  }
}

- (void)updateCacheControllerToLanguageCode:(id)a3
{
  v3 = a3;
  v4 = +[HLPJSONCacheController sharedInstance];
  [v4 setLanguageCode:v3];

  v5 = +[HLPStringCacheController sharedInstance];
  [v5 setLanguageCode:v3];

  v6 = +[HLPImageCacheController sharedInstance];
  [v6 setLanguageCode:v3];
}

- (void)removeDDMLoadFailVersion
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 removeObjectForKey:@"HLPHelpBookDynamicServerLastFailureLoadVersion"];
  [v2 synchronize];
}

- (void)showMessageForError:(id)a3
{
  v11 = a3;
  v4 = [(HLPHelpBookController *)self->_helpBookController rootSectionItem];
  v5 = [v4 children];
  v6 = [v5 count];

  if (!self->_fullBookView)
  {
    v7 = [(HLPHelpTopicViewController *)self->_topicViewController loadingView];
    [v7 showMessageWithError:v11];
  }

  v8 = [(HLPHelpViewController *)self loadingView];
  v9 = v8;
  if (v6)
  {
    [v8 showActivityIndicator:0];
  }

  else
  {
    [v8 showMessageWithError:v11];
  }

  v10 = [(HLPHelpViewController *)self reachabilityManager];
  [v10 startNotifier];

  [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController loadError];
}

- (id)topicIDForTopicName:(id)a3 locale:(id)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HLPHelpViewController *)self localHelpBookFileURL];
  if (v8)
  {
    localHelpBookNameIDMap = self->_localHelpBookNameIDMap;

    if (!localHelpBookNameIDMap)
    {
      v10 = [MEMORY[0x277CBEC10] mutableCopy];
      v11 = self->_localHelpBookNameIDMap;
      self->_localHelpBookNameIDMap = v10;

      v12 = [v7 isEqualToString:@"en-US"];
      localeListController = self->_localeListController;
      if (v12)
      {
        v14 = [(HLPHelpLocaleController *)self->_localeListController englishLocale];
      }

      else
      {
        v36[0] = v7;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
        v14 = [(HLPHelpLocaleController *)localeListController localeWithPreferredLanguages:v15];
      }

      v16 = [(HLPHelpBookController *)self->_helpBookController helpItemMap];
      if ([v16 count])
      {
        v17 = [v14 path];
        v18 = [v17 isEqualToString:@"en.lproj"];

        if (v18)
        {
          v19 = [(HLPHelpBookController *)self->_helpBookController helpItemMap];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __52__HLPHelpViewController_topicIDForTopicName_locale___block_invoke;
          v35[3] = &unk_279706DA8;
          v35[4] = self;
          [v19 enumerateKeysAndObjectsUsingBlock:v35];

LABEL_15:
          goto LABEL_16;
        }
      }

      else
      {
      }

      v20 = [(HLPHelpViewController *)self localHelpBookFileURL];
      v21 = [v20 URLByAppendingPathComponent:@"en.lproj/navigation.json"];

      if ([v21 checkResourceIsReachableAndReturnError:0])
      {
        v31 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v21];
        v22 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v31 options:0 error:0];
        if ([v22 count])
        {
          v23 = [v22 objectForKeyedSubscript:@"topics"];
          v24 = [v23 allKeys];
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __52__HLPHelpViewController_topicIDForTopicName_locale___block_invoke_2;
          v32[3] = &unk_279706DD0;
          v33 = v23;
          v34 = self;
          v25 = v23;
          [v24 enumerateObjectsUsingBlock:v32];
        }
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v26 = self->_localHelpBookNameIDMap;
  v27 = [v6 lowercaseString];
  v28 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:v27];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

void __52__HLPHelpViewController_topicIDForTopicName_locale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) localHelpBookNameIDMap];
    v7 = [v5 name];
    v8 = [v7 lowercaseString];
    [v6 setObject:v9 forKeyedSubscript:v8];
  }
}

void __52__HLPHelpViewController_topicIDForTopicName_locale___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v4 = [v3 objectForKeyedSubscript:@"name"];

  if (v4)
  {
    v5 = [*(a1 + 40) localHelpBookNameIDMap];
    v6 = [v4 lowercaseString];
    [v5 setObject:v7 forKeyedSubscript:v6];
  }
}

- (void)dismiss
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_popWelcomeTopicView object:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 helpViewControllerDoneButtonTapped:self];
  }

  else
  {

    [(HLPHelpViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)popWelcomeTopicView
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_popWelcomeTopicView object:0];
  selectedHelpTopicID = self->_selectedHelpTopicID;
  v8 = [(HLPHelpBookController *)self->_helpBookController welcomeTopicIdentifier];
  if ([(NSString *)selectedHelpTopicID isEqualToString:?])
  {
    v4 = [(HLPHelpViewController *)self navigationController];
    v5 = [v4 topViewController];
    topicViewController = self->_topicViewController;

    if (v5 == topicViewController)
    {
      v7 = self->_topicViewController;

      [(HLPHelpViewController *)self helpTopicViewControllerTableOfContentButtonTapped:v7];
    }
  }

  else
  {
  }
}

- (void)tableOfContentViewControllerSearchUsed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 helpViewControllerSearchUsed:self];
  }
}

- (void)tableOfContentViewControllerToCContentViewed:(id)a3 topicID:(id)a4 topicTitle:(id)a5 source:(id)a6 interfaceStyle:(int64_t)a7 fromTopicID:(id)a8 externalURLString:(id)a9
{
  v21 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = objc_loadWeakRetained(&self->_delegate);
    [v20 helpViewControllerContentViewed:self topicID:v21 topicTitle:v14 source:v15 interfaceStyle:a7 fromTopicID:v16 externalURLString:v17];
  }
}

- (void)helpTopicViewControllerCurrentTopicIsPassionPoint:(id)a3
{
  v4 = MEMORY[0x277D82BB8];
  v5 = a3;
  [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel_popWelcomeTopicView object:0];
  v6 = [v5 webView];

  [v6 setUserInteractionEnabled:1];
}

- (void)helpTopicViewControllerTableOfContentButtonTapped:(id)a3
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_popWelcomeTopicView object:0];
  [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController updateWithHelpBookController:self->_helpBookController];
  v4 = [(HLPHelpViewController *)self navigationController];
  v5 = [v4 popViewControllerAnimated:1];

  self->_shouldDismissWelcomeTopic = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 helpViewControllerTOCUsed:self];
  }

  v9 = +[HLPAnalyticsEventTOCUsed event];
  [v9 log];
}

- (void)helpTopicViewController:(id)a3 topicLoaded:(id)a4
{
  v5 = a4;
  if (self->_shouldDismissWelcomeTopic)
  {
    v10 = v5;
    v6 = [(HLPHelpViewController *)self navigationController];
    if (v6 && self->_tableOfContentViewController)
    {
      v7 = [v10 identifier];
      v8 = [(HLPHelpBookController *)self->_helpBookController welcomeTopicIdentifier];
      if ([v7 isEqualToString:v8])
      {
        v9 = [v10 isPassionPoints];

        v5 = v10;
        if (v9)
        {
          goto LABEL_10;
        }

        [(HLPHelpViewController *)self performSelector:sel_popWelcomeTopicView withObject:0 afterDelay:2.5];
        goto LABEL_9;
      }
    }

LABEL_9:
    v5 = v10;
  }

LABEL_10:
}

- (void)helpTopicViewControllerContentViewed:(id)a3 topicID:(id)a4 topicTitle:(id)a5 source:(id)a6 interfaceStyle:(int64_t)a7 fromTopicID:(id)a8 externalURLString:(id)a9
{
  v21 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = a9;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = [(HLPHelpViewController *)self traitCollection];
    [v19 helpViewControllerContentViewed:self topicID:v21 topicTitle:v13 source:v14 interfaceStyle:objc_msgSend(v20 fromTopicID:"userInterfaceStyle") externalURLString:{v15, v16}];
  }
}

- (void)helpTopicViewController:(id)a3 selectedHelpTopicItem:(id)a4 accessType:(int64_t)a5
{
  v21 = a3;
  v8 = a4;
  v9 = [v8 identifier];
  selectedHelpTopicID = self->_selectedHelpTopicID;
  self->_selectedHelpTopicID = v9;

  v11 = [v8 name];
  selectedHelpTopicName = self->_selectedHelpTopicName;
  self->_selectedHelpTopicName = v11;

  if (v21)
  {
    v13 = self->_selectedHelpTopicID;
    v14 = [(HLPHelpBookController *)self->_helpBookController welcomeTopicIdentifier];
    LODWORD(v13) = [(NSString *)v13 isEqualToString:v14];

    if (v13)
    {
      helpBookController = self->_helpBookController;
      v16 = [(HLPHelpBookController *)helpBookController welcomeTopicIdentifier];
      v17 = [(HLPHelpBookController *)helpBookController helpItemForID:v16];

      v18 = [v17 isPassionPoints];
    }

    else
    {
      v18 = 1;
    }

    v19 = [v21 webView];
    [v19 setUserInteractionEnabled:v18];
  }

  if (a5 != 5 && self->_fullBookView)
  {
    v20 = [(HLPHelpViewController *)self tableOfContentViewController];
    [v20 scrollToHelpItem:v8 deselectImmediately:0 reload:1 animated:0];
  }
}

- (void)reachabilityManagerConnectionStatusChanged:(id)a3 connected:(BOOL)a4
{
  if (a4)
  {
    v5 = [(HLPHelpViewController *)self reachabilityManager];
    [v5 stopNotifier];

    [(HLPHelpViewController *)self loadHelpBook];
    topicViewController = self->_topicViewController;

    [(HLPHelpTopicViewController *)topicViewController reloadCurrentTopic];
  }
}

- (void)showHelpBookInfo:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_2864756F0];
  [v4 appendFormat:@"Host URL: %@\n", self->_helpBookBasePath];
  [v4 appendFormat:@"Identifier: %@\n", self->_identifier];
  [v4 appendFormat:@"Version: %@\n", self->_helpBookVersion];
  v5 = [(HLPHelpBookController *)self->_helpBookController contentVersion];

  if (v5)
  {
    v6 = [(HLPHelpBookController *)self->_helpBookController contentVersion];
    [v4 appendFormat:@"Content Version: %@\n", v6];
  }

  if ([(HLPHelpBookController *)self->_helpBookController contentFormatVersion]>= 1)
  {
    v7 = [(HLPHelpBookController *)self->_helpBookController contentFormatVersion];
    v8 = @"2.0.6";
    if (v7 > 4)
    {
      v8 = @"5.0.11";
    }

    [v4 appendFormat:@"Content Style Version: %@\n", v8];
    [v4 appendFormat:@"Content Format Version: %zd\n", -[HLPHelpBookController contentFormatVersion](self->_helpBookController, "contentFormatVersion")];
  }

  v9 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v10 = [v9 firstObject];
  [v4 appendFormat:@"Device language: %@\n", v10];

  if ([(HLPHelpBookController *)self->_helpBookController serverType]== 1)
  {
    v11 = [(HLPHelpBookController *)self->_helpBookController locale];
    v12 = [v11 isoCodes];
    v13 = [v12 firstObject];
  }

  else
  {
    v11 = [(HLPHelpLocaleController *)self->_localeListController currentLocale];
    v13 = [v11 path];
  }

  [v4 appendFormat:@"Content language: %@\n", v13];
  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  [v4 appendFormat:@"App Version: %@", v15];

  v16 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Help Book Info" message:v4 preferredStyle:1];
  v17 = MEMORY[0x277D750F8];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __42__HLPHelpViewController_showHelpBookInfo___block_invoke;
  v20[3] = &unk_279706DF8;
  v21 = v16;
  v18 = v16;
  v19 = [v17 actionWithTitle:@"OK" style:1 handler:v20];
  [v18 addAction:v19];

  [(HLPHelpViewController *)self presentViewController:v18 animated:1 completion:0];
}

- (HLPHelpViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end