@interface HLPHelpViewController
+ (id)URLWithBookID:(id)d topicID:(id)iD;
+ (id)URLWithBookID:(id)d topicID:(id)iD anchorID:(id)anchorID version:(id)version;
+ (id)URLWithBookID:(id)d topicID:(id)iD anchorID:(id)anchorID version:(id)version platformIndependent:(BOOL)independent;
+ (id)URLWithBookID:(id)d topicID:(id)iD version:(id)version;
+ (id)URLWithTopicID:(id)d;
+ (id)URLWithTopicID:(id)d anchorID:(id)iD;
+ (id)deviceFamily;
+ (id)helpViewControllerWithLocalHelpBookFileURL:(id)l;
+ (id)helpViewControllerWithTitle:(id)title identifier:(id)identifier version:(id)version subpath:(id)subpath;
+ (id)helpViewControllerWithURL:(id)l;
+ (id)mainUserGuideIdentifier;
+ (id)platform;
+ (id)platformVersion;
+ (void)clearCacheControllers;
+ (void)updateViewController:(id)controller title:(id)title identifier:(id)identifier version:(id)version subpath:(id)subpath;
- (BOOL)shouldDisallowOffSiteRedirects;
- (HLPHelpLoadingView)loadingView;
- (HLPHelpViewController)init;
- (HLPHelpViewControllerDelegate)delegate;
- (HLPReachabilityManager)reachabilityManager;
- (id)localHelpBookAnalyticIdentifier;
- (id)topicIDForTopicName:(id)name locale:(id)locale;
- (int64_t)closeBarButtonSystemItem;
- (void)_setContext:(id)context;
- (void)cleanup;
- (void)dealloc;
- (void)dismiss;
- (void)displayHelpBookWithLocale:(id)locale;
- (void)helpTopicViewController:(id)controller selectedHelpTopicItem:(id)item accessType:(int64_t)type;
- (void)helpTopicViewController:(id)controller topicLoaded:(id)loaded;
- (void)helpTopicViewControllerContentViewed:(id)viewed topicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(int64_t)style fromTopicID:(id)iD externalURLString:(id)string;
- (void)helpTopicViewControllerCurrentTopicIsPassionPoint:(id)point;
- (void)helpTopicViewControllerTableOfContentButtonTapped:(id)tapped;
- (void)loadBookWithTitle:(id)title identifier:(id)identifier topicID:(id)d version:(id)version;
- (void)loadFromStaticServer;
- (void)loadHelpBook;
- (void)loadHelpTopicID:(id)d;
- (void)loadHelpTopicItem:(id)item;
- (void)popWelcomeTopicView;
- (void)reachabilityManagerConnectionStatusChanged:(id)changed connected:(BOOL)connected;
- (void)registerTraitChanges;
- (void)removeDDMLoadFailVersion;
- (void)resetLastScrolledPosition;
- (void)setup;
- (void)setupFullBookView;
- (void)setupTableContentViewController;
- (void)setupTopicViewController;
- (void)showHelpBookInfo:(id)info;
- (void)showMessageForError:(id)error;
- (void)showTopicView;
- (void)tableOfContentViewControllerSearchUsed:(id)used;
- (void)tableOfContentViewControllerToCContentViewed:(id)viewed topicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(int64_t)style fromTopicID:(id)iD externalURLString:(id)string;
- (void)traitCollectionChangedFrom:(id)from;
- (void)updateCacheControllerToLanguageCode:(id)code;
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom - 1) > 5)
  {
    return @"iphone";
  }

  else
  {
    return off_279706E30[userInterfaceIdiom - 1];
  }
}

+ (id)deviceFamily
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom - 1) > 5)
  {
    return @"iphone";
  }

  else
  {
    return off_279706E60[userInterfaceIdiom - 1];
  }
}

+ (id)platform
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v4 = @"ios";
  if (userInterfaceIdiom == 6)
  {
    v4 = @"visionos";
  }

  if (userInterfaceIdiom == 1)
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

+ (id)URLWithTopicID:(id)d
{
  dCopy = d;
  v4 = [objc_opt_class() URLWithBookID:0 topicID:dCopy];

  return v4;
}

+ (id)URLWithTopicID:(id)d anchorID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = [objc_opt_class() URLWithBookID:0 topicID:dCopy anchorID:iDCopy version:0];

  return v7;
}

+ (id)URLWithBookID:(id)d topicID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = [objc_opt_class() URLWithBookID:dCopy topicID:iDCopy version:0];

  return v7;
}

+ (id)URLWithBookID:(id)d topicID:(id)iD version:(id)version
{
  versionCopy = version;
  iDCopy = iD;
  dCopy = d;
  v10 = [objc_opt_class() URLWithBookID:dCopy topicID:iDCopy anchorID:0 version:versionCopy];

  return v10;
}

+ (id)URLWithBookID:(id)d topicID:(id)iD anchorID:(id)anchorID version:(id)version
{
  versionCopy = version;
  anchorIDCopy = anchorID;
  iDCopy = iD;
  dCopy = d;
  v13 = [objc_opt_class() URLWithBookID:dCopy topicID:iDCopy anchorID:anchorIDCopy version:versionCopy platformIndependent:1];

  return v13;
}

+ (id)URLWithBookID:(id)d topicID:(id)iD anchorID:(id)anchorID version:(id)version platformIndependent:(BOOL)independent
{
  dCopy = d;
  iDCopy = iD;
  anchorIDCopy = anchorID;
  versionCopy = version;
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  if ([dCopy length])
  {
    v16 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"book" value:dCopy];
    [v15 addObject:v16];
  }

  if ([iDCopy length])
  {
    v17 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"topic" value:iDCopy];
    [v15 addObject:v17];
  }

  if ([anchorIDCopy length])
  {
    v18 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"anchor" value:anchorIDCopy];
    [v15 addObject:v18];
  }

  if ([versionCopy length])
  {
    v19 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"version" value:versionCopy];
    [v15 addObject:v19];
  }

  if (!independent)
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

+ (id)helpViewControllerWithURL:(id)l
{
  v43 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
  scheme = [v4 scheme];
  if (([scheme isEqualToString:@"helpkit"] & 1) == 0)
  {

    goto LABEL_26;
  }

  host = [v4 host];
  v7 = [host isEqualToString:@"open"];

  if (!v7)
  {
LABEL_26:
    v23 = 0;
    v24 = 0;
    v11 = 0;
    mainUserGuideIdentifier = 0;
    v26 = 1;
    goto LABEL_27;
  }

  v33 = v4;
  v34 = lCopy;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  queryItems = [v4 queryItems];
  v9 = [queryItems countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v36 = 0;
    v37 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *v39;
    bOOLValue = 1;
    do
    {
      v14 = 0;
      do
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(queryItems);
        }

        v15 = *(*(&v38 + 1) + 8 * v14);
        name = [v15 name];
        value = [v15 value];
        if (([name isEqualToString:@"book"] & 1) != 0 || objc_msgSend(name, "isEqualToString:", @"bookId"))
        {
          v18 = value;

          v12 = v18;
        }

        else if (([name isEqualToString:@"topic"] & 1) != 0 || objc_msgSend(name, "isEqualToString:", @"topicId"))
        {
          v19 = value;

          v11 = v19;
        }

        else if (([name isEqualToString:@"anchor"] & 1) != 0 || objc_msgSend(name, "isEqualToString:", @"anchorId"))
        {
          v20 = value;

          v37 = v20;
        }

        else if ([name isEqualToString:@"version"])
        {
          v21 = value;

          v36 = v21;
        }

        else if ([name isEqualToString:@"platformIndependent"])
        {
          bOOLValue = [value BOOLValue];
        }

        ++v14;
      }

      while (v10 != v14);
      v22 = [queryItems countByEnumeratingWithState:&v38 objects:v42 count:16];
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
    bOOLValue = 1;
  }

  v23 = v36;
  v31 = [(__CFString *)v36 length];
  if ([v12 length])
  {
    v4 = v33;
    lCopy = v34;
    v24 = v37;
    v26 = bOOLValue;
    if (!v31)
    {

      v23 = @"HLPHelpViewControllerVersionLatest";
    }

    mainUserGuideIdentifier = v12;
  }

  else
  {
    mainUserGuideIdentifier = [objc_opt_class() mainUserGuideIdentifier];

    v4 = v33;
    lCopy = v34;
    v24 = v37;
    v26 = bOOLValue;
    if (!v31)
    {
      platformVersion = [objc_opt_class() platformVersion];

      v23 = platformVersion;
    }
  }

LABEL_27:
  v27 = [HLPHelpViewController helpViewControllerWithIdentifier:mainUserGuideIdentifier version:v23];
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

+ (id)helpViewControllerWithLocalHelpBookFileURL:(id)l
{
  lCopy = l;
  v4 = objc_alloc_init(HLPHelpViewController);
  [(HLPHelpViewController *)v4 setLocalHelpBookFileURL:lCopy];

  return v4;
}

+ (id)helpViewControllerWithTitle:(id)title identifier:(id)identifier version:(id)version subpath:(id)subpath
{
  subpathCopy = subpath;
  versionCopy = version;
  identifierCopy = identifier;
  titleCopy = title;
  v13 = objc_alloc_init(HLPHelpViewController);
  [objc_opt_class() updateViewController:v13 title:titleCopy identifier:identifierCopy version:versionCopy subpath:subpathCopy];

  return v13;
}

+ (void)updateViewController:(id)controller title:(id)title identifier:(id)identifier version:(id)version subpath:(id)subpath
{
  controllerCopy = controller;
  identifierCopy = identifier;
  versionCopy = version;
  subpathCopy = subpath;
  [controllerCopy setTitle:title];
  if (+[HLPCommonDefines isInternalBuild])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [standardUserDefaults objectForKey:@"HLPHelpBookOverrideIdentifier"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = identifierCopy;
    }

    v18 = v17;

    v19 = [standardUserDefaults stringForKey:@"HLPHelpBookVersionOverride"];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = versionCopy;
    }

    v22 = v21;

    versionCopy = v22;
    identifierCopy = v18;
  }

  if (![identifierCopy length])
  {
    mainUserGuideIdentifier = [objc_opt_class() mainUserGuideIdentifier];

    identifierCopy = mainUserGuideIdentifier;
  }

  if (![(__CFString *)versionCopy length])
  {
    platformVersion = [objc_opt_class() platformVersion];

    versionCopy = platformVersion;
  }

  [controllerCopy setIdentifier:identifierCopy];
  if ([(__CFString *)versionCopy isEqualToString:@"HLPHelpViewControllerVersionLatest"])
  {

    versionCopy = @"1000";
  }

  [controllerCopy setVersion:versionCopy];
  [controllerCopy setSubpath:subpathCopy];
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
  view = [(HLPHelpViewController *)self view];
  [view safeAreaInsets];
  [(NSLayoutConstraint *)self->_loadingViewTopConstraint setConstant:?];
}

- (void)_setContext:(id)context
{
  contextCopy = context;
  if (self->_context != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->_context, context);
    [HLPCommonDefines setAuthenticationContext:v6];
    contextCopy = v6;
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
    view = [(HLPHelpViewController *)self view];
    [view addSubview:self->_loadingView];

    topAnchor = [(HLPHelpLoadingView *)self->_loadingView topAnchor];
    view2 = [(HLPHelpViewController *)self view];
    topAnchor2 = [view2 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    loadingViewTopConstraint = self->_loadingViewTopConstraint;
    self->_loadingViewTopConstraint = v13;

    [(NSLayoutConstraint *)self->_loadingViewTopConstraint setActive:1];
    bottomAnchor = [(HLPHelpLoadingView *)self->_loadingView bottomAnchor];
    view3 = [(HLPHelpViewController *)self view];
    bottomAnchor2 = [view3 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v18 setActive:1];

    leadingAnchor = [(HLPHelpLoadingView *)self->_loadingView leadingAnchor];
    view4 = [(HLPHelpViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v22 setActive:1];

    trailingAnchor = [(HLPHelpLoadingView *)self->_loadingView trailingAnchor];
    view5 = [(HLPHelpViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
  localHelpBookFileURL = [(HLPHelpViewController *)self localHelpBookFileURL];
  lastPathComponent = [localHelpBookFileURL lastPathComponent];

  return lastPathComponent;
}

- (BOOL)shouldDisallowOffSiteRedirects
{
  v2 = +[HLPURLSessionHandler sharedInstance];
  shouldDisallowOffsiteRedirects = [v2 shouldDisallowOffsiteRedirects];

  return shouldDisallowOffsiteRedirects;
}

- (void)resetLastScrolledPosition
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];
}

- (void)cleanup
{
  [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController willMoveToParentViewController:0];
  view = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController view];
  [view removeFromSuperview];

  [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController removeFromParentViewController];
  tableOfContentViewController = self->_tableOfContentViewController;
  self->_tableOfContentViewController = 0;

  [(UIView *)self->_fullBookViewSeparator removeFromSuperview];
  fullBookViewSeparator = self->_fullBookViewSeparator;
  self->_fullBookViewSeparator = 0;

  navigationController = [(HLPHelpViewController *)self navigationController];
  v7 = [navigationController popToRootViewControllerAnimated:0];

  [(HLPHelpTopicViewController *)self->_topicViewController willMoveToParentViewController:0];
  view2 = [(HLPHelpTopicViewController *)self->_topicViewController view];
  [view2 removeFromSuperview];

  [(HLPHelpTopicViewController *)self->_topicViewController removeFromParentViewController];
  [(HLPHelpTopicViewController *)self->_topicViewController cleanup];
  topicViewController = self->_topicViewController;
  self->_topicViewController = 0;

  localeListController = self->_localeListController;
  self->_localeListController = 0;

  helpBookController = self->_helpBookController;
  self->_helpBookController = 0;

  navigationItem = [(HLPHelpViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];

  loadingView = [(HLPHelpViewController *)self loadingView];
  [loadingView showActivityIndicator:1];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];

  selectedHelpTopicID = self->_selectedHelpTopicID;
  self->_selectedHelpTopicID = &stru_2864756F0;

  selectedHelpTopicName = self->_selectedHelpTopicName;
  self->_selectedHelpTopicName = 0;

  self->_showingHelpTopic = 0;
}

- (void)setup
{
  v31 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"HLPHelpBookResetToShowLandingPage"])
  {
    [standardUserDefaults removeObjectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];
    [standardUserDefaults synchronize];
  }

  if ([standardUserDefaults BOOLForKey:@"HLPHelpBookPlatformIndependent"])
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
          lowercaseString = [(NSString *)self->_identifier lowercaseString];
          LODWORD(v9) = [lowercaseString hasPrefix:v9];

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

  if ([standardUserDefaults BOOLForKey:{@"HLPHelpBookSupportsDarkMode", v24}])
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
      localHelpBookFileURL = [(HLPHelpViewController *)self localHelpBookFileURL];
      *buf = 138412290;
      v29 = localHelpBookFileURL;
      _os_log_impl(&dword_2522BC000, v14, OS_LOG_TYPE_DEFAULT, "Local help book URL %@", buf, 0xCu);
    }

    v12 = 0;
  }

  v16 = +[HLPAnalyticsEventController sharedInstance];
  [v16 configureWithHelpBookID:v12 version:self->_version];

  title = [(HLPHelpViewController *)self title];
  if (title || [(HLPHelpViewController *)self displayHelpTopicsOnly])
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
  navigationItem = [(HLPHelpViewController *)self navigationItem];
  [navigationItem setPreferredSearchBarPlacement:2];

  v19 = objc_alloc_init(MEMORY[0x277D75788]);
  [v19 configureWithDefaultBackground];
  navigationItem2 = [(HLPHelpViewController *)self navigationItem];
  [navigationItem2 setScrollEdgeAppearance:v19];

  [(HLPHelpViewController *)self registerTraitChanges];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateHelpBookController
{
  if ([(HLPRemoteDataController *)self->_helpBookController hasLoaded]&& ![(HLPRemoteDataController *)self->_helpBookController loading])
  {
    helpBookController = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController helpBookController];
    if (helpBookController)
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
  view = [(HLPHelpTopicViewController *)self->_topicViewController view];
  view2 = [(HLPHelpViewController *)self view];
  if (+[HLPCommonDefines isVisionOS])
  {
    v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_tableOfContentViewController];
    view3 = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController view];
    [view3 setHidden:1];

    [(HLPHelpViewController *)self addChildViewController:v4];
    view4 = [(HLPHelpViewController *)self view];
    view5 = [v4 view];
    [view4 addSubview:view5];

    view6 = [v4 view];
    [view6 setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [view6 leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v11 setActive:1];

    widthAnchor = [view6 widthAnchor];
    v13 = [widthAnchor constraintEqualToConstant:320.0];
    [v13 setActive:1];

    topAnchor = [view6 topAnchor];
    topAnchor2 = [view2 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v16 setActive:1];

    bottomAnchor = [view6 bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v19 setActive:1];

    [v4 didMoveToParentViewController:self];
    if (([view isDescendantOfView:view2] & 1) == 0)
    {
      v20 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_topicViewController];
      view7 = [(HLPHelpTopicViewController *)self->_topicViewController view];
      [view7 setHidden:1];

      [(HLPHelpViewController *)self addChildViewController:v20];
      view8 = [(HLPHelpViewController *)self view];
      view9 = [v20 view];
      [view8 addSubview:view9];

      view10 = [v20 view];
      [view10 setTranslatesAutoresizingMaskIntoConstraints:0];
      leadingAnchor3 = [view10 leadingAnchor];
      trailingAnchor = [view6 trailingAnchor];
      v27 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
      [v27 setActive:1];

      trailingAnchor2 = [view10 trailingAnchor];
      trailingAnchor3 = [view2 trailingAnchor];
      v30 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
      [v30 setActive:1];

      topAnchor3 = [view10 topAnchor];
      topAnchor4 = [view2 topAnchor];
      v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      [v33 setActive:1];

      bottomAnchor3 = [view10 bottomAnchor];
      bottomAnchor4 = [view2 bottomAnchor];
      v36 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [v36 setActive:1];

      [v20 didMoveToParentViewController:self];
    }
  }

  else
  {
    view11 = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController view];
    if ([view11 isDescendantOfView:view2])
    {
      view6 = 0;
    }

    else
    {
      [(HLPHelpViewController *)self addChildViewController:self->_tableOfContentViewController];
      view12 = [(HLPHelpViewController *)self view];
      [view12 addSubview:view11];

      view6 = view11;
      [view6 setTranslatesAutoresizingMaskIntoConstraints:0];
      leadingAnchor4 = [view6 leadingAnchor];
      leadingAnchor5 = [view2 leadingAnchor];
      v41 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
      [v41 setActive:1];

      widthAnchor2 = [view6 widthAnchor];
      v43 = [widthAnchor2 constraintEqualToConstant:320.0];
      [v43 setActive:1];

      topAnchor5 = [view6 topAnchor];
      topAnchor6 = [view2 topAnchor];
      v46 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      [v46 setActive:1];

      bottomAnchor5 = [view6 bottomAnchor];
      bottomAnchor6 = [view2 bottomAnchor];
      v49 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      [v49 setActive:1];

      [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController didMoveToParentViewController:self];
    }

    if (![(UIView *)self->_fullBookViewSeparator isDescendantOfView:view2])
    {
      v50 = objc_alloc(MEMORY[0x277D75D18]);
      v51 = [v50 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      fullBookViewSeparator = self->_fullBookViewSeparator;
      self->_fullBookViewSeparator = v51;

      view13 = [(HLPHelpViewController *)self view];
      [view13 addSubview:self->_fullBookViewSeparator];

      [(UIView *)self->_fullBookViewSeparator setHidden:1];
      systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
      [(UIView *)self->_fullBookViewSeparator setBackgroundColor:systemGrayColor];

      [(UIView *)self->_fullBookViewSeparator setTranslatesAutoresizingMaskIntoConstraints:0];
      leadingAnchor6 = [(UIView *)self->_fullBookViewSeparator leadingAnchor];
      trailingAnchor4 = [view6 trailingAnchor];
      v57 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4];
      [v57 setActive:1];

      topAnchor7 = [(UIView *)self->_fullBookViewSeparator topAnchor];
      topAnchor8 = [view2 topAnchor];
      v60 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
      [v60 setActive:1];

      bottomAnchor7 = [(UIView *)self->_fullBookViewSeparator bottomAnchor];
      bottomAnchor8 = [view2 bottomAnchor];
      v63 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
      [v63 setActive:1];

      widthAnchor3 = [(UIView *)self->_fullBookViewSeparator widthAnchor];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v67 = [widthAnchor3 constraintEqualToConstant:1.0 / v66];
      [v67 setActive:1];

      v68 = self->_fullBookViewSeparator;
      view6 = v68;
    }

    if (([view isDescendantOfView:view2] & 1) == 0)
    {
      [(HLPHelpViewController *)self addChildViewController:self->_topicViewController];
      view14 = [(HLPHelpViewController *)self view];
      [view14 addSubview:view];

      [view setTranslatesAutoresizingMaskIntoConstraints:0];
      leadingAnchor7 = [view leadingAnchor];
      trailingAnchor5 = [view6 trailingAnchor];
      v72 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor5];
      [v72 setActive:1];

      trailingAnchor6 = [view trailingAnchor];
      trailingAnchor7 = [view2 trailingAnchor];
      v75 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
      [v75 setActive:1];

      topAnchor9 = [view topAnchor];
      topAnchor10 = [view2 topAnchor];
      v78 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
      [v78 setActive:1];

      bottomAnchor9 = [view bottomAnchor];
      bottomAnchor10 = [view2 bottomAnchor];
      v81 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
      [v81 setActive:1];

      [(HLPHelpTopicViewController *)self->_topicViewController didMoveToParentViewController:self];
    }
  }
}

- (void)updateChildViewConstraints
{
  if (!self->_fullBookView && !self->_displayHelpTopicsOnly)
  {
    view = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController view];
    if (view)
    {
      view2 = [(HLPHelpViewController *)self view];
      v4 = [view isDescendantOfView:view2];

      if ((v4 & 1) == 0)
      {
        [(HLPHelpViewController *)self addChildViewController:self->_tableOfContentViewController];
        view3 = [(HLPHelpViewController *)self view];
        [view3 addSubview:view];

        leadingAnchor = [view leadingAnchor];
        view4 = [(HLPHelpViewController *)self view];
        leadingAnchor2 = [view4 leadingAnchor];
        v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        [v9 setActive:1];

        trailingAnchor = [view trailingAnchor];
        view5 = [(HLPHelpViewController *)self view];
        trailingAnchor2 = [view5 trailingAnchor];
        v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        [v13 setActive:1];

        topAnchor = [view topAnchor];
        view6 = [(HLPHelpViewController *)self view];
        topAnchor2 = [view6 topAnchor];
        v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
        [v17 setActive:1];

        bottomAnchor = [view bottomAnchor];
        view7 = [(HLPHelpViewController *)self view];
        bottomAnchor2 = [view7 bottomAnchor];
        v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        [v21 setActive:1];

        [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController didMoveToParentViewController:self];
        searchController = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController searchController];
        navigationItem = [(HLPHelpViewController *)self navigationItem];
        [navigationItem setSearchController:searchController];

        navigationItem2 = [(HLPHelpViewController *)self navigationItem];
        [navigationItem2 setHidesSearchBarWhenScrolling:0];
      }
    }
  }
}

- (void)updateTOCButton
{
  if (!self->_fullBookView)
  {
    navigationItem = [(HLPHelpViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    if (!leftBarButtonItem && self->_showTopicViewOnLoad)
    {
      displayHelpTopicsOnly = self->_displayHelpTopicsOnly;

      if (displayHelpTopicsOnly)
      {
        return;
      }

      navigationItem = [MEMORY[0x277D755B8] systemImageNamed:@"list.bullet"];
      leftBarButtonItem = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:navigationItem style:0 target:self action:sel_showTopicView];
      [leftBarButtonItem setSelected:1];
      v5 = +[HLPCommonDefines HLPBundle];
      v6 = [v5 localizedStringForKey:@"Hide Table of Contents" value:&stru_2864756F0 table:0];
      [leftBarButtonItem setAccessibilityLabel:v6];

      navigationItem2 = [(HLPHelpViewController *)self navigationItem];
      [navigationItem2 setLeftBarButtonItem:leftBarButtonItem];
    }
  }
}

- (void)updateDoneButton
{
  if (!self->_fullBookView)
  {
    if (self->_hideDoneButton)
    {
      navigationItem = [(HLPHelpViewController *)self navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      doneBarButtonItem = self->_doneBarButtonItem;

      if (rightBarButtonItem == doneBarButtonItem)
      {
        navigationItem2 = [(HLPHelpViewController *)self navigationItem];
        [navigationItem2 setRightBarButtonItem:0];
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

      navigationItem3 = [(HLPHelpViewController *)self navigationItem];
      [(UIBarButtonItem *)navigationItem3 setRightBarButtonItem:v9];
      v8 = navigationItem3;
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
  firstObject = [v6 firstObject];
  if ([v6 count] == 2)
  {
    lastObject = [v6 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  v5 = [(HLPHelpBookController *)self->_helpBookController helpTopicItemForID:firstObject];
  [(HLPHelpViewController *)self _showHelpTopicItem:v5 anchor:lastObject allowErrorMessage:1 animate:1];
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
    view = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
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

- (void)loadBookWithTitle:(id)title identifier:(id)identifier topicID:(id)d version:(id)version
{
  titleCopy = title;
  identifierCopy = identifier;
  dCopy = d;
  versionCopy = version;
  identifier = [(HLPHelpViewController *)self identifier];
  v15 = [identifier isEqualToString:identifierCopy];

  if (v15)
  {
    [(HLPHelpViewController *)self loadHelpTopicID:dCopy];
  }

  else
  {
    [(HLPHelpViewController *)self cleanup];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HLPHelpViewController_loadBookWithTitle_identifier_topicID_version___block_invoke;
    block[3] = &unk_279706D08;
    block[4] = self;
    v17 = titleCopy;
    v18 = identifierCopy;
    v19 = versionCopy;
    v20 = dCopy;
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

- (void)loadHelpTopicItem:(id)item
{
  v4 = [HLPLoadInfo infoWithTopicItem:item accessType:5 searchTerms:0 anchor:0];
  [v4 setAnalyticsLogged:1];
  [(HLPHelpViewController *)self _showWithLoadInfo:v4 animate:1];
}

- (void)loadHelpTopicID:(id)d
{
  dCopy = d;
  if ([(HLPRemoteDataController *)self->_helpBookController hasLoaded]&& self->_topicViewController)
  {
    selectedHelpTopicID = [dCopy componentsSeparatedByString:@"#"];
    firstObject = [selectedHelpTopicID firstObject];
    if ([selectedHelpTopicID count] == 2)
    {
      lastObject = [selectedHelpTopicID lastObject];
    }

    else
    {
      lastObject = 0;
    }

    v8 = [(HLPHelpBookController *)self->_helpBookController helpTopicItemForID:firstObject];
    if (v8)
    {
      if (self->_fullBookView || self->_showingHelpTopic)
      {
        [(HLPHelpTopicViewController *)self->_topicViewController loadHelpTopicItem:v8 accessType:5 searchTerms:0 anchor:lastObject];
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
    v7 = dCopy;
    selectedHelpTopicID = self->_selectedHelpTopicID;
    self->_selectedHelpTopicID = v7;
  }

  searchController = [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController searchController];
  [searchController setActive:0];
}

- (void)displayHelpBookWithLocale:(id)locale
{
  tableOfContentViewController = self->_tableOfContentViewController;
  localeCopy = locale;
  [(HLPHelpTableOfContentViewController *)tableOfContentViewController setLocale:localeCopy];
  [(HLPHelpTopicViewController *)self->_topicViewController setLocale:localeCopy];

  loadingView = [(HLPHelpViewController *)self loadingView];
  [loadingView showActivityIndicator:0];

  v7 = [(NSString *)self->_selectedHelpTopicID componentsSeparatedByString:@"#"];
  firstObject = [v7 firstObject];
  if ([v7 count] == 2)
  {
    lastObject = [v7 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  if ([(NSString *)self->_selectedHelpTopicName length])
  {
    v10 = [(NSString *)self->_selectedHelpTopicName componentsSeparatedByString:@"#"];
    helpBookController = self->_helpBookController;
    firstObject2 = [v10 firstObject];
    v13 = [(HLPHelpBookController *)helpBookController helpTopicItemForName:firstObject2];

    if ([v10 count] == 2)
    {
      lastObject2 = [v10 lastObject];
    }

    else
    {
      lastObject2 = 0;
    }

    lastObject = lastObject2;
  }

  else
  {
    if (![(__CFString *)firstObject length])
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v16 = standardUserDefaults;
      if (self->_prefersLandingViewOnLoad)
      {
        [standardUserDefaults removeObjectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];
      }

      else
      {
        v17 = [standardUserDefaults objectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];
        if (v17)
        {
          v18 = MEMORY[0x277CBEB98];
          v19 = objc_opt_class();
          v40 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
          v41 = 0;
          v20 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v40 fromData:v17 error:&v41];
          v38 = v41;
          identifier = [v20 identifier];
          v22 = identifier;
          v23 = &stru_2864756F0;
          if (identifier)
          {
            v23 = identifier;
          }

          v39 = v23;

          firstObject = v39;
        }

        else
        {

          firstObject = &stru_2864756F0;
        }
      }
    }

    v13 = [(HLPHelpBookController *)self->_helpBookController helpTopicItemForID:firstObject];
  }

  if (v13)
  {
    v24 = 1;
  }

  else
  {
    v24 = firstObject == 0;
  }

  if (!v24)
  {
    v25 = self->_helpBookController;
    welcomeTopicIdentifier = [(HLPHelpBookController *)v25 welcomeTopicIdentifier];
    v13 = [(HLPHelpBookController *)v25 helpTopicItemForID:welcomeTopicIdentifier];
  }

  if (self->_fullBookView)
  {
    [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController updateWithHelpBookController:self->_helpBookController];
    if (v13)
    {
      [(HLPHelpViewController *)self _showHelpTopicItem:v13 anchor:lastObject allowErrorMessage:1 animate:1];
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
    accessType = [(HLPHelpViewController *)self accessType];
    if (accessType)
    {
      v32 = accessType;
    }

    else
    {
      v32 = 6;
    }

    v33 = [HLPLoadInfo infoWithTopicItem:v13 accessType:v32 searchTerms:0 anchor:lastObject];
    [(HLPHelpViewController *)self _showWithLoadInfo:v33 animate:1];
  }

  else
  {
    [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController updateWithHelpBookController:self->_helpBookController];
    if (v13 && self->_showTopicViewOnLoad)
    {
      identifier2 = [v13 identifier];
      selectedHelpTopicID = self->_selectedHelpTopicID;
      self->_selectedHelpTopicID = identifier2;

      name = [v13 name];
      selectedHelpTopicName = self->_selectedHelpTopicName;
      self->_selectedHelpTopicName = name;

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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:self->_version forKey:@"HLPHelpBookLastLoadVersion"];
  [standardUserDefaults synchronize];
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
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject = [preferredLanguages firstObject];

    v7 = [standardUserDefaults objectForKey:@"HLPHelpBookLastLoadedLocale"];
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
      sharedInstance = [v8 sharedInstance];
      hostMappings = [sharedInstance hostMappings];
    }

    else
    {
      hostMappings = 0;
    }

    v12 = [standardUserDefaults objectForKey:@"HLPHelpBookHostMappings"];
    if (v7 && ![firstObject isEqualToString:v7] || hostMappings | v12 && (objc_msgSend(hostMappings, "isEqual:", v12) & 1) == 0)
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
    [standardUserDefaults setObject:hostMappings forKey:@"HLPHelpBookHostMappings"];
    [standardUserDefaults setObject:firstObject forKey:@"HLPHelpBookLastLoadedLocale"];
    [standardUserDefaults synchronize];
    loadingView = [(HLPHelpViewController *)self loadingView];
    [loadingView showActivityIndicator:1];

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [mainBundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

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
      v84 = [standardUserDefaults stringForKey:@"HLPHelpBookBaseURLOverride"];
      if (![v84 length])
      {
        v23 = [standardUserDefaults stringForKey:@"HLPDynamicHelpBookHostOverride"];
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
        v77 = firstObject;
        v81 = v23;
        objc_storeStrong(&self->_helpBookBasePath, v23);
        orderedSet = [MEMORY[0x277CBEB40] orderedSet];
        v25 = MEMORY[0x277CBEB18];
        preferredLanguages2 = [MEMORY[0x277CBEAF8] preferredLanguages];
        v27 = [v25 arrayWithArray:preferredLanguages2];

        if (v22)
        {
          v28 = [standardUserDefaults objectForKey:@"HLPHelpBookPreferredLanguageOverride"];
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
        systemLanguages = [MEMORY[0x277CBEAF8] systemLanguages];
        additionalSupportedLanguages = [(HLPHelpViewController *)self additionalSupportedLanguages];
        v31 = [additionalSupportedLanguages count];

        if (v31)
        {
          additionalSupportedLanguages2 = [(HLPHelpViewController *)self additionalSupportedLanguages];
          v33 = [systemLanguages arrayByAddingObjectsFromArray:additionalSupportedLanguages2];

          systemLanguages = v33;
        }

        do
        {
          if ([orderedSet count] > 2)
          {
            break;
          }

          if (![v27 count])
          {
            break;
          }

          v34 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:systemLanguages forPreferences:v27];
          [orderedSet addObjectsFromArray:v34];

          [v27 removeObjectAtIndex:0];
        }

        while (![orderedSet containsObject:@"en"]);
        if ([orderedSet count])
        {
          if ([orderedSet count] >= 4)
          {
            [orderedSet removeObjectsInRange:{3, objc_msgSend(orderedSet, "count") - 3}];
          }
        }

        else
        {
          [orderedSet addObject:@"en"];
        }

        platformVersion = [objc_opt_class() platformVersion];
        platform = [objc_opt_class() platform];
        v37 = self->_identifier;
        v73 = hostMappings;
        if ([(NSString *)v37 containsString:@"watch"])
        {
          v82 = v37;

          v38 = v17;
          v39 = platformVersion;
          platform = @"watchos";
        }

        else
        {
          if ([(NSString *)v37 hasPrefix:@"iphone"]|| [(NSString *)v37 hasPrefix:@"ipad"])
          {
            v78 = platformVersion;
            goto LABEL_49;
          }

          v80 = platform;
          if ([(NSString *)self->_subpath length])
          {
            v63 = [(NSString *)v37 stringByAppendingFormat:@"-%@", self->_subpath];

            v37 = v63;
          }

          if ([(HLPHelpViewController *)self platformIndependent])
          {
            v78 = platformVersion;
            platform = v80;
            goto LABEL_49;
          }

          [objc_opt_class() deviceFamily];
          v39 = v64 = v37;
          v82 = [(NSString *)v64 stringByAppendingFormat:@"-%@", v39];

          platform = v80;
          v38 = platformVersion;
        }

        v78 = v38;

        v37 = v82;
LABEL_49:
        v79 = platform;
        v74 = systemLanguages;
        v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
        if (![(HLPHelpViewController *)self platformIndependent])
        {
          v41 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"platform" value:platform];
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
        array = [orderedSet array];
        v48 = [array componentsJoinedByString:{@", "}];
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
          v54 = [standardUserDefaults objectForKey:@"HLPDynamicHelpBookLastLoadedIdentifier"];
          v55 = [standardUserDefaults objectForKey:@"HLPDynamicHelpBookLastLoadedVersion"];
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
          v90 = standardUserDefaults;
          v99 = v56 ^ 1;
          v100 = v65;
          v91 = v83;
          v92 = obj;
          selfCopy = self;
          v94 = v67;
          v95 = orderedSet;
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
        firstObject = v77;
        hostMappings = v73;
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

  loadingView = [(HLPHelpViewController *)self loadingView];
  [loadingView showActivityIndicator:1];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = self->_localHelpBookFileURL;
  if (!v9)
  {
    if (+[HLPCommonDefines isInternalBuild])
    {
      v10 = [standardUserDefaults stringForKey:@"HLPHelpBookBaseURLOverride"];
      if (![v10 length])
      {
        v11 = [standardUserDefaults stringForKey:@"HLPHelpBookHostOverride"];
        if (v11)
        {
LABEL_11:
          objc_storeStrong(&self->_helpBookBasePath, v11);
          v12 = [MEMORY[0x277CBEBC0] URLWithString:v11];
          deviceFamily = [objc_opt_class() deviceFamily];
          objc_storeStrong(&self->_helpBookVersion, self->_version);
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@", self->_identifier, deviceFamily, self->_version];
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

  v17 = [standardUserDefaults stringForKey:@"HLPHelpBookLastIdentifier"];
  v18 = [standardUserDefaults stringForKey:@"HLPHelpBookLastLoadedVersion"];
  v19 = [standardUserDefaults stringForKey:@"HLPHelpBookLastLoadedSubpath"];
  if (![(NSString *)self->_identifier isEqualToString:v17]|| ![(NSString *)self->_helpBookVersion isEqualToString:v18]|| (subpath = self->_subpath) != 0 && ![(NSString *)subpath isEqualToString:v19])
  {
    +[HLPHelpViewController clearCacheControllers];
    [standardUserDefaults setObject:self->_identifier forKey:@"HLPHelpBookLastIdentifier"];
    [standardUserDefaults setObject:self->_helpBookVersion forKey:@"HLPHelpBookLastLoadedVersion"];
    [standardUserDefaults setObject:self->_subpath forKey:@"HLPHelpBookLastLoadedSubpath"];
    if (![(NSString *)self->_selectedHelpTopicName length]&& ![(NSString *)self->_selectedHelpTopicID length])
    {
      [standardUserDefaults removeObjectForKey:kHLPHelpTopicViewControllerLastTopicHistoryItem];
    }

    [standardUserDefaults synchronize];
  }

  v21 = [[HLPHelpLocaleController alloc] initWithURL:v9];
  localeListController = self->_localeListController;
  self->_localeListController = v21;

  preferredLanguagesOverride = [(HLPHelpViewController *)self preferredLanguagesOverride];
  [(HLPHelpLocaleController *)self->_localeListController setPreferredLanguagesOverride:preferredLanguagesOverride];

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
      absoluteString = [(NSURL *)localHelpBookFileURL absoluteString];
      self->_supportsDarkMode = [absoluteString rangeOfString:@"FunctionHelp.bundle" options:4] != 0x7FFFFFFFFFFFFFFFLL;

      if (self->_supportsDarkMode)
      {
        goto LABEL_16;
      }
    }

    else
    {
      self->_supportsDarkMode = 0;
    }

    identifier = [(HLPHelpViewController *)self identifier];
    v7 = [identifier containsString:@"watch"];
    v8 = v7;
    if (v7)
    {
      version = [(HLPHelpViewController *)self version];
      [version floatValue];
      if (v9 >= 7.0)
      {
        goto LABEL_10;
      }
    }

    identifier2 = [(HLPHelpViewController *)self identifier];
    if ([identifier2 isEqualToString:@"playgrounds"])
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

    identifier3 = [(HLPHelpViewController *)self identifier];
    v12 = [identifier3 hasPrefix:@"assistive-access"];

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
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  else
  {
    systemBackgroundColor = [MEMORY[0x277D75348] whiteColor];
  }

  v15 = systemBackgroundColor;
  view = [(HLPHelpViewController *)self view];
  [view setBackgroundColor:v15];
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

- (void)traitCollectionChangedFrom:(id)from
{
  fromCopy = from;
  traitCollection = [(HLPHelpViewController *)self traitCollection];
  v6 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:fromCopy];

  if (v6)
  {

    [(HLPHelpViewController *)self updateDarkMode];
  }
}

- (void)updateCacheControllerToLanguageCode:(id)code
{
  codeCopy = code;
  v4 = +[HLPJSONCacheController sharedInstance];
  [v4 setLanguageCode:codeCopy];

  v5 = +[HLPStringCacheController sharedInstance];
  [v5 setLanguageCode:codeCopy];

  v6 = +[HLPImageCacheController sharedInstance];
  [v6 setLanguageCode:codeCopy];
}

- (void)removeDDMLoadFailVersion
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"HLPHelpBookDynamicServerLastFailureLoadVersion"];
  [standardUserDefaults synchronize];
}

- (void)showMessageForError:(id)error
{
  errorCopy = error;
  rootSectionItem = [(HLPHelpBookController *)self->_helpBookController rootSectionItem];
  children = [rootSectionItem children];
  v6 = [children count];

  if (!self->_fullBookView)
  {
    loadingView = [(HLPHelpTopicViewController *)self->_topicViewController loadingView];
    [loadingView showMessageWithError:errorCopy];
  }

  loadingView2 = [(HLPHelpViewController *)self loadingView];
  v9 = loadingView2;
  if (v6)
  {
    [loadingView2 showActivityIndicator:0];
  }

  else
  {
    [loadingView2 showMessageWithError:errorCopy];
  }

  reachabilityManager = [(HLPHelpViewController *)self reachabilityManager];
  [reachabilityManager startNotifier];

  [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController loadError];
}

- (id)topicIDForTopicName:(id)name locale:(id)locale
{
  v36[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  localeCopy = locale;
  localHelpBookFileURL = [(HLPHelpViewController *)self localHelpBookFileURL];
  if (localHelpBookFileURL)
  {
    localHelpBookNameIDMap = self->_localHelpBookNameIDMap;

    if (!localHelpBookNameIDMap)
    {
      v10 = [MEMORY[0x277CBEC10] mutableCopy];
      v11 = self->_localHelpBookNameIDMap;
      self->_localHelpBookNameIDMap = v10;

      v12 = [localeCopy isEqualToString:@"en-US"];
      localeListController = self->_localeListController;
      if (v12)
      {
        englishLocale = [(HLPHelpLocaleController *)self->_localeListController englishLocale];
      }

      else
      {
        v36[0] = localeCopy;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
        englishLocale = [(HLPHelpLocaleController *)localeListController localeWithPreferredLanguages:v15];
      }

      helpItemMap = [(HLPHelpBookController *)self->_helpBookController helpItemMap];
      if ([helpItemMap count])
      {
        path = [englishLocale path];
        v18 = [path isEqualToString:@"en.lproj"];

        if (v18)
        {
          helpItemMap2 = [(HLPHelpBookController *)self->_helpBookController helpItemMap];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __52__HLPHelpViewController_topicIDForTopicName_locale___block_invoke;
          v35[3] = &unk_279706DA8;
          v35[4] = self;
          [helpItemMap2 enumerateKeysAndObjectsUsingBlock:v35];

LABEL_15:
          goto LABEL_16;
        }
      }

      else
      {
      }

      localHelpBookFileURL2 = [(HLPHelpViewController *)self localHelpBookFileURL];
      v21 = [localHelpBookFileURL2 URLByAppendingPathComponent:@"en.lproj/navigation.json"];

      if ([v21 checkResourceIsReachableAndReturnError:0])
      {
        v31 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v21];
        v22 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v31 options:0 error:0];
        if ([v22 count])
        {
          v23 = [v22 objectForKeyedSubscript:@"topics"];
          allKeys = [v23 allKeys];
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __52__HLPHelpViewController_topicIDForTopicName_locale___block_invoke_2;
          v32[3] = &unk_279706DD0;
          v33 = v23;
          selfCopy = self;
          v25 = v23;
          [allKeys enumerateObjectsUsingBlock:v32];
        }
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v26 = self->_localHelpBookNameIDMap;
  lowercaseString = [nameCopy lowercaseString];
  v28 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:lowercaseString];

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
  welcomeTopicIdentifier = [(HLPHelpBookController *)self->_helpBookController welcomeTopicIdentifier];
  if ([(NSString *)selectedHelpTopicID isEqualToString:?])
  {
    navigationController = [(HLPHelpViewController *)self navigationController];
    topViewController = [navigationController topViewController];
    topicViewController = self->_topicViewController;

    if (topViewController == topicViewController)
    {
      v7 = self->_topicViewController;

      [(HLPHelpViewController *)self helpTopicViewControllerTableOfContentButtonTapped:v7];
    }
  }

  else
  {
  }
}

- (void)tableOfContentViewControllerSearchUsed:(id)used
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 helpViewControllerSearchUsed:self];
  }
}

- (void)tableOfContentViewControllerToCContentViewed:(id)viewed topicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(int64_t)style fromTopicID:(id)iD externalURLString:(id)string
{
  dCopy = d;
  titleCopy = title;
  sourceCopy = source;
  iDCopy = iD;
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = objc_loadWeakRetained(&self->_delegate);
    [v20 helpViewControllerContentViewed:self topicID:dCopy topicTitle:titleCopy source:sourceCopy interfaceStyle:style fromTopicID:iDCopy externalURLString:stringCopy];
  }
}

- (void)helpTopicViewControllerCurrentTopicIsPassionPoint:(id)point
{
  v4 = MEMORY[0x277D82BB8];
  pointCopy = point;
  [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel_popWelcomeTopicView object:0];
  webView = [pointCopy webView];

  [webView setUserInteractionEnabled:1];
}

- (void)helpTopicViewControllerTableOfContentButtonTapped:(id)tapped
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_popWelcomeTopicView object:0];
  [(HLPHelpTableOfContentViewController *)self->_tableOfContentViewController updateWithHelpBookController:self->_helpBookController];
  navigationController = [(HLPHelpViewController *)self navigationController];
  v5 = [navigationController popViewControllerAnimated:1];

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

- (void)helpTopicViewController:(id)controller topicLoaded:(id)loaded
{
  loadedCopy = loaded;
  if (self->_shouldDismissWelcomeTopic)
  {
    v10 = loadedCopy;
    navigationController = [(HLPHelpViewController *)self navigationController];
    if (navigationController && self->_tableOfContentViewController)
    {
      identifier = [v10 identifier];
      welcomeTopicIdentifier = [(HLPHelpBookController *)self->_helpBookController welcomeTopicIdentifier];
      if ([identifier isEqualToString:welcomeTopicIdentifier])
      {
        isPassionPoints = [v10 isPassionPoints];

        loadedCopy = v10;
        if (isPassionPoints)
        {
          goto LABEL_10;
        }

        [(HLPHelpViewController *)self performSelector:sel_popWelcomeTopicView withObject:0 afterDelay:2.5];
        goto LABEL_9;
      }
    }

LABEL_9:
    loadedCopy = v10;
  }

LABEL_10:
}

- (void)helpTopicViewControllerContentViewed:(id)viewed topicID:(id)d topicTitle:(id)title source:(id)source interfaceStyle:(int64_t)style fromTopicID:(id)iD externalURLString:(id)string
{
  dCopy = d;
  titleCopy = title;
  sourceCopy = source;
  iDCopy = iD;
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = objc_loadWeakRetained(&self->_delegate);
    traitCollection = [(HLPHelpViewController *)self traitCollection];
    [v19 helpViewControllerContentViewed:self topicID:dCopy topicTitle:titleCopy source:sourceCopy interfaceStyle:objc_msgSend(traitCollection fromTopicID:"userInterfaceStyle") externalURLString:{iDCopy, stringCopy}];
  }
}

- (void)helpTopicViewController:(id)controller selectedHelpTopicItem:(id)item accessType:(int64_t)type
{
  controllerCopy = controller;
  itemCopy = item;
  identifier = [itemCopy identifier];
  selectedHelpTopicID = self->_selectedHelpTopicID;
  self->_selectedHelpTopicID = identifier;

  name = [itemCopy name];
  selectedHelpTopicName = self->_selectedHelpTopicName;
  self->_selectedHelpTopicName = name;

  if (controllerCopy)
  {
    v13 = self->_selectedHelpTopicID;
    welcomeTopicIdentifier = [(HLPHelpBookController *)self->_helpBookController welcomeTopicIdentifier];
    LODWORD(v13) = [(NSString *)v13 isEqualToString:welcomeTopicIdentifier];

    if (v13)
    {
      helpBookController = self->_helpBookController;
      welcomeTopicIdentifier2 = [(HLPHelpBookController *)helpBookController welcomeTopicIdentifier];
      v17 = [(HLPHelpBookController *)helpBookController helpItemForID:welcomeTopicIdentifier2];

      isPassionPoints = [v17 isPassionPoints];
    }

    else
    {
      isPassionPoints = 1;
    }

    webView = [controllerCopy webView];
    [webView setUserInteractionEnabled:isPassionPoints];
  }

  if (type != 5 && self->_fullBookView)
  {
    tableOfContentViewController = [(HLPHelpViewController *)self tableOfContentViewController];
    [tableOfContentViewController scrollToHelpItem:itemCopy deselectImmediately:0 reload:1 animated:0];
  }
}

- (void)reachabilityManagerConnectionStatusChanged:(id)changed connected:(BOOL)connected
{
  if (connected)
  {
    reachabilityManager = [(HLPHelpViewController *)self reachabilityManager];
    [reachabilityManager stopNotifier];

    [(HLPHelpViewController *)self loadHelpBook];
    topicViewController = self->_topicViewController;

    [(HLPHelpTopicViewController *)topicViewController reloadCurrentTopic];
  }
}

- (void)showHelpBookInfo:(id)info
{
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_2864756F0];
  [v4 appendFormat:@"Host URL: %@\n", self->_helpBookBasePath];
  [v4 appendFormat:@"Identifier: %@\n", self->_identifier];
  [v4 appendFormat:@"Version: %@\n", self->_helpBookVersion];
  contentVersion = [(HLPHelpBookController *)self->_helpBookController contentVersion];

  if (contentVersion)
  {
    contentVersion2 = [(HLPHelpBookController *)self->_helpBookController contentVersion];
    [v4 appendFormat:@"Content Version: %@\n", contentVersion2];
  }

  if ([(HLPHelpBookController *)self->_helpBookController contentFormatVersion]>= 1)
  {
    contentFormatVersion = [(HLPHelpBookController *)self->_helpBookController contentFormatVersion];
    v8 = @"2.0.6";
    if (contentFormatVersion > 4)
    {
      v8 = @"5.0.11";
    }

    [v4 appendFormat:@"Content Style Version: %@\n", v8];
    [v4 appendFormat:@"Content Format Version: %zd\n", -[HLPHelpBookController contentFormatVersion](self->_helpBookController, "contentFormatVersion")];
  }

  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];
  [v4 appendFormat:@"Device language: %@\n", firstObject];

  if ([(HLPHelpBookController *)self->_helpBookController serverType]== 1)
  {
    locale = [(HLPHelpBookController *)self->_helpBookController locale];
    isoCodes = [locale isoCodes];
    firstObject2 = [isoCodes firstObject];
  }

  else
  {
    locale = [(HLPHelpLocaleController *)self->_localeListController currentLocale];
    firstObject2 = [locale path];
  }

  [v4 appendFormat:@"Content language: %@\n", firstObject2];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
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