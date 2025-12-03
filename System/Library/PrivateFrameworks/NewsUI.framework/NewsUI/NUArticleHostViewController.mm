@interface NUArticleHostViewController
- (BOOL)becomeFirstResponder;
- (BOOL)isExperimentationEnabled;
- (BOOL)resignFirstResponder;
- (NSString)contentSizeCategory;
- (NSString)selectedText;
- (NUArticleExperimentationDelegate)experimentationDelegate;
- (NUArticleHostViewController)initWithArticle:(id)article issue:(id)issue articleViewControllerFactory:(id)factory settings:(id)settings errorMessageFactory:(id)messageFactory analyticsReporting:(id)reporting contentSizeManager:(id)manager relativePriority:(int64_t)self0;
- (NUArticleHostViewControllerDelegate)delegate;
- (NULoadingDelegate)loadingDelegate;
- (UIResponder)responder;
- (UIScrollView)scrollView;
- (id)loadingTextForArticle:(id)article;
- (id)searchWithContext:(id)context;
- (int64_t)contentScale;
- (void)articleViewController:(id)controller didScrollToPosition:(id)position;
- (void)articleViewControllerDidScrollToBottomOfPrimaryContent:(id)content;
- (void)didStartExperimentForArticleID:(id)d experimentIdentifier:(id)identifier treatmentGroup:(id)group;
- (void)loadArticleAndEmbedArticleViewController;
- (void)loadingDidFinishWithError:(id)error;
- (void)loadingDidStart;
- (void)loadingDidUpdateProgress:(double)progress;
- (void)loadingWillStart;
- (void)reportEvent:(id)event;
- (void)setArticleContext:(id)context;
- (void)setContentScale:(int64_t)scale;
- (void)setContentSizeCategory:(id)category;
- (void)setLoadingDelegate:(id)delegate;
- (void)updateContentScaleAndSize;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NUArticleHostViewController

- (NUArticleHostViewController)initWithArticle:(id)article issue:(id)issue articleViewControllerFactory:(id)factory settings:(id)settings errorMessageFactory:(id)messageFactory analyticsReporting:(id)reporting contentSizeManager:(id)manager relativePriority:(int64_t)self0
{
  articleCopy = article;
  issueCopy = issue;
  factoryCopy = factory;
  settingsCopy = settings;
  messageFactoryCopy = messageFactory;
  reportingCopy = reporting;
  managerCopy = manager;
  v34.receiver = self;
  v34.super_class = NUArticleHostViewController;
  v19 = [(NUArticleHostViewController *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_article, article);
    objc_storeStrong(&v20->_issue, issue);
    v21 = [objc_alloc(MEMORY[0x277D31180]) initWithValue:0];
    articleViewStyler = v20->_articleViewStyler;
    v20->_articleViewStyler = v21;

    objc_storeStrong(&v20->_articleViewControllerFactory, factory);
    objc_storeStrong(&v20->_settings, settings);
    objc_storeStrong(&v20->_errorMessageFactory, messageFactory);
    articleID = [articleCopy articleID];
    v24 = [articleID copy];
    pageIdentifier = v20->_pageIdentifier;
    v20->_pageIdentifier = v24;

    v26 = [objc_alloc(MEMORY[0x277D6D030]) initWithDelegate:v20 delegateProtocol:&unk_286E28AB0];
    multiLoadingDelegate = v20->_multiLoadingDelegate;
    v20->_multiLoadingDelegate = v26;

    objc_storeStrong(&v20->_analyticsReporting, reporting);
    objc_storeStrong(&v20->_contentSizeManager, manager);
    v20->_relativePriority = priority;
    v20->_shouldApplyBackgroundColor = 0;
    v20->_shouldShowLoadingCover = 0;
  }

  return v20;
}

- (void)viewDidLoad
{
  v23[1] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = NUArticleHostViewController;
  [(NUArticleHostViewController *)&v22 viewDidLoad];
  view = [(NUArticleHostViewController *)self view];
  [view setPreservesSuperviewLayoutMargins:1];

  if ([(NUArticleHostViewController *)self shouldApplyBackgroundColor])
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v4 = ;
  view2 = [(NUArticleHostViewController *)self view];
  [view2 setBackgroundColor:v4];

  if ([(NUArticleHostViewController *)self shouldApplyBackgroundColor])
  {
    objc_initWeak(&location, self);
    articleViewStyler = [(NUArticleHostViewController *)self articleViewStyler];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __42__NUArticleHostViewController_viewDidLoad__block_invoke;
    v19 = &unk_2799A3E98;
    objc_copyWeak(&v20, &location);
    v7 = [articleViewStyler observe:&v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  if ([(NUArticleHostViewController *)self shouldShowLoadingCover:v16])
  {
    article = [(NUArticleHostViewController *)self article];
    v9 = [(NUArticleHostViewController *)self loadingTextForArticle:article];

    v10 = [[NUActivityIndicatorLoadingView alloc] initWithText:v9 activityIndicatorStyle:100];
    [(NUArticleHostViewController *)self setLoadingView:v10];

    view3 = [(NUArticleHostViewController *)self view];
    loadingView = [(NUArticleHostViewController *)self loadingView];
    [view3 addSubview:loadingView];
  }

  [(NUArticleHostViewController *)self loadArticleAndEmbedArticleViewController];
  v23[0] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v14 = [(NUArticleHostViewController *)self registerForTraitChanges:v13 withHandler:&__block_literal_global_62];

  v15 = *MEMORY[0x277D85DE8];
}

void __42__NUArticleHostViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = [v8 mainBackgroundColor];
    v7 = [v5 view];

    [v7 setBackgroundColor:v6];
  }
}

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = NUArticleHostViewController;
  [(NUArticleHostViewController *)&v12 viewWillLayoutSubviews];
  [(NUArticleHostViewController *)self additionalSafeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];
  [contentTypeViewController setAdditionalSafeAreaInsets:{v4, v6, v8, v10}];
}

- (BOOL)becomeFirstResponder
{
  contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];
  [contentTypeViewController becomeFirstResponder];

  v5.receiver = self;
  v5.super_class = NUArticleHostViewController;
  return [(NUArticleHostViewController *)&v5 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];
  [contentTypeViewController becomeFirstResponder];

  v5.receiver = self;
  v5.super_class = NUArticleHostViewController;
  return [(NUArticleHostViewController *)&v5 resignFirstResponder];
}

- (UIResponder)responder
{
  contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  contentTypeViewController2 = [(NUArticleHostViewController *)self contentTypeViewController];
  v6 = contentTypeViewController2;
  if (isKindOfClass)
  {
    responder = [contentTypeViewController2 responder];

    v6 = responder;
  }

  return v6;
}

- (NSString)contentSizeCategory
{
  article = [(NUArticleHostViewController *)self article];
  headline = [article headline];

  if (!headline)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
    goto LABEL_5;
  }

  contentSizeManager = [(NUArticleHostViewController *)self contentSizeManager];
  article2 = [(NUArticleHostViewController *)self article];
  headline2 = [article2 headline];
  mEMORY[0x277D75128] = [contentSizeManager contentSizeCategoryForArticle:headline2];

  if (mEMORY[0x277D75128])
  {
    preferredContentSizeCategory = mEMORY[0x277D75128];
    mEMORY[0x277D75128] = preferredContentSizeCategory;
LABEL_5:
    preferredContentSizeCategory2 = preferredContentSizeCategory;
    goto LABEL_7;
  }

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory2 = [mEMORY[0x277D75128]2 preferredContentSizeCategory];

LABEL_7:

  return preferredContentSizeCategory2;
}

- (void)setContentSizeCategory:(id)category
{
  categoryCopy = category;
  article = [(NUArticleHostViewController *)self article];
  headline = [article headline];

  if (headline)
  {
    contentSizeManager = [(NUArticleHostViewController *)self contentSizeManager];
    article2 = [(NUArticleHostViewController *)self article];
    headline2 = [article2 headline];
    [contentSizeManager updateContentSizeCategory:categoryCopy forArticle:headline2];
  }

  contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentTypeViewController2 = [(NUArticleHostViewController *)self contentTypeViewController];
    [contentTypeViewController2 setContentSizeCategory:categoryCopy];
  }
}

- (int64_t)contentScale
{
  article = [(NUArticleHostViewController *)self article];
  headline = [article headline];

  if (!headline)
  {
    return 4;
  }

  contentSizeManager = [(NUArticleHostViewController *)self contentSizeManager];
  article2 = [(NUArticleHostViewController *)self article];
  headline2 = [article2 headline];
  v8 = [contentSizeManager contentScaleForArticle:headline2];

  if (v8)
  {
    return v8;
  }

  else
  {
    return 4;
  }
}

- (void)setContentScale:(int64_t)scale
{
  article = [(NUArticleHostViewController *)self article];
  headline = [article headline];

  if (headline)
  {
    contentSizeManager = [(NUArticleHostViewController *)self contentSizeManager];
    article2 = [(NUArticleHostViewController *)self article];
    headline2 = [article2 headline];
    [contentSizeManager updateContentScale:scale forArticle:headline2];
  }

  contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentTypeViewController2 = [(NUArticleHostViewController *)self contentTypeViewController];
    [contentTypeViewController2 setContentScale:scale];
  }
}

- (void)updateContentScaleAndSize
{
  contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentTypeViewController2 = [(NUArticleHostViewController *)self contentTypeViewController];
    [contentTypeViewController2 setContentScale:{-[NUArticleHostViewController contentScale](self, "contentScale")}];
    contentSizeCategory = [(NUArticleHostViewController *)self contentSizeCategory];
    [contentTypeViewController2 setContentSizeCategory:contentSizeCategory];
  }
}

- (void)viewDidLayoutSubviews
{
  v24.receiver = self;
  v24.super_class = NUArticleHostViewController;
  [(NUArticleHostViewController *)&v24 viewDidLayoutSubviews];
  view = [(NUArticleHostViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];
  view2 = [contentTypeViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];

  view3 = [(NUArticleHostViewController *)self view];
  [view3 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  loadingView = [(NUArticleHostViewController *)self loadingView];
  [loadingView setFrame:{v16, v18, v20, v22}];
}

- (NSString)selectedText
{
  objc_opt_class();
  contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];
  v4 = FCDynamicCast();

  selectedText = [v4 selectedText];

  return selectedText;
}

- (void)setLoadingDelegate:(id)delegate
{
  obj = delegate;
  multiLoadingDelegate = [(NUArticleHostViewController *)self multiLoadingDelegate];
  WeakRetained = objc_loadWeakRetained(&self->_loadingDelegate);
  [multiLoadingDelegate replaceDelegate:WeakRetained withDelegate:obj];

  objc_storeWeak(&self->_loadingDelegate, obj);
}

- (void)loadingWillStart
{
  if ([(NUArticleHostViewController *)self shouldShowLoadingCover])
  {
    contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];
    view = [contentTypeViewController view];
    [view setAlpha:0.0];
  }
}

- (void)loadingDidStart
{
  if ([(NUArticleHostViewController *)self shouldShowLoadingCover])
  {
    loadingView = [(NUArticleHostViewController *)self loadingView];
    [loadingView loadingViewStartAnimating];
  }
}

- (void)loadingDidFinishWithError:(id)error
{
  errorCopy = error;
  if ([(NUArticleHostViewController *)self shouldShowLoadingCover])
  {
    if (errorCopy)
    {
      loadingView = [(NUArticleHostViewController *)self loadingView];
      [loadingView loadingViewStopAnimating];

      loadingView2 = [(NUArticleHostViewController *)self loadingView];
      [loadingView2 removeFromSuperview];

      [(NUArticleHostViewController *)self setLoadingView:0];
      errorMessageFactory = [(NUArticleHostViewController *)self errorMessageFactory];
      errorMessageForArticleView = [errorMessageFactory errorMessageForArticleView];

      if (errorMessageForArticleView)
      {
        v9 = [[NUErrorView alloc] initWithErrorMessage:errorMessageForArticleView];
        [(NUErrorView *)v9 setAutoresizingMask:18];
        navigationController = [(NUArticleHostViewController *)self navigationController];
        navigationBar = [navigationController navigationBar];
        [navigationBar frame];
        MaxY = CGRectGetMaxY(v25);
        navigationController2 = [(NUArticleHostViewController *)self navigationController];
        toolbar = [navigationController2 toolbar];
        [toolbar frame];
        CGRectGetHeight(v26);

        view = [(NUArticleHostViewController *)self view];
        [view bounds];
        [(NUErrorView *)v9 setFrame:v16 + 0.0, MaxY + v17];

        view2 = [(NUArticleHostViewController *)self view];
        [view2 addSubview:v9];
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v19 = MEMORY[0x277D75D18];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __57__NUArticleHostViewController_loadingDidFinishWithError___block_invoke_2;
      v22[3] = &unk_2799A3CD0;
      objc_copyWeak(&v23, &location);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __57__NUArticleHostViewController_loadingDidFinishWithError___block_invoke_4;
      v20[3] = &unk_2799A3EE0;
      objc_copyWeak(&v21, &location);
      [v19 animateWithDuration:v22 animations:v20 completion:0.15];
      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }
}

void __57__NUArticleHostViewController_loadingDidFinishWithError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = WeakRetained;
    v3 = [v2 contentTypeViewController];
    v4 = [v3 view];
    [v4 setAlpha:1.0];

    v5 = [v2 loadingView];

    [v5 setAlpha:0.0];
    WeakRetained = v6;
  }
}

void __57__NUArticleHostViewController_loadingDidFinishWithError___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = WeakRetained;
    v3 = [v2 contentTypeViewController];
    v4 = [v3 view];
    [v4 setAlpha:1.0];

    v5 = [v2 loadingView];
    [v5 loadingViewStopAnimating];

    v6 = [v2 loadingView];
    [v6 removeFromSuperview];

    [v2 setLoadingView:0];
    WeakRetained = v7;
  }
}

- (void)loadingDidUpdateProgress:(double)progress
{
  if ([(NUArticleHostViewController *)self shouldShowLoadingCover])
  {
    loadingView = [(NUArticleHostViewController *)self loadingView];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      loadingView2 = [(NUArticleHostViewController *)self loadingView];
      [loadingView2 loadingViewUpdateProgress:progress];
    }
  }
}

- (UIScrollView)scrollView
{
  contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];
  v4 = [contentTypeViewController conformsToProtocol:&unk_286E31038];

  if (v4)
  {
    contentTypeViewController2 = [(NUArticleHostViewController *)self contentTypeViewController];
    scrollView = [contentTypeViewController2 scrollView];
  }

  else
  {
    scrollView = 0;
  }

  return scrollView;
}

- (void)articleViewController:(id)controller didScrollToPosition:(id)position
{
  positionCopy = position;
  delegate = [(NUArticleHostViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(NUArticleHostViewController *)self delegate];
    [delegate2 articleHostViewController:self didScrollToPosition:positionCopy];
  }
}

- (void)articleViewControllerDidScrollToBottomOfPrimaryContent:(id)content
{
  delegate = [(NUArticleHostViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(NUArticleHostViewController *)self delegate];
    [delegate2 articleHostViewControllerDidScrollToBottomOfPrimaryContent:self];
  }
}

- (void)didStartExperimentForArticleID:(id)d experimentIdentifier:(id)identifier treatmentGroup:(id)group
{
  dCopy = d;
  identifierCopy = identifier;
  groupCopy = group;
  experimentationDelegate = [(NUArticleHostViewController *)self experimentationDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    experimentationDelegate2 = [(NUArticleHostViewController *)self experimentationDelegate];
    [experimentationDelegate2 didStartExperimentForArticleID:dCopy experimentIdentifier:identifierCopy treatmentGroup:groupCopy];
  }
}

- (BOOL)isExperimentationEnabled
{
  experimentationDelegate = [(NUArticleHostViewController *)self experimentationDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  experimentationDelegate2 = [(NUArticleHostViewController *)self experimentationDelegate];
  isExperimentationEnabled = [experimentationDelegate2 isExperimentationEnabled];

  return isExperimentationEnabled;
}

- (void)reportEvent:(id)event
{
  eventCopy = event;
  analyticsReporting = [(NUArticleHostViewController *)self analyticsReporting];
  v5 = [[NUContentAnalyticsEvent alloc] initWithEvent:eventCopy];

  [analyticsReporting reportEvent:v5];
}

- (void)setArticleContext:(id)context
{
  contextCopy = context;
  v4 = [contextCopy copy];
  articleContext = self->_articleContext;
  self->_articleContext = v4;

  objc_opt_class();
  contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];
  v7 = FCDynamicCast();

  if (v7)
  {
    [v7 setArticleContext:contextCopy];
  }
}

- (void)loadArticleAndEmbedArticleViewController
{
  contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];

  if (contentTypeViewController)
  {
    contentTypeViewController2 = [(NUArticleHostViewController *)self contentTypeViewController];
    [contentTypeViewController2 willMoveToParentViewController:0];

    contentTypeViewController3 = [(NUArticleHostViewController *)self contentTypeViewController];
    view = [contentTypeViewController3 view];
    [view removeFromSuperview];

    contentTypeViewController4 = [(NUArticleHostViewController *)self contentTypeViewController];
    [contentTypeViewController4 removeFromParentViewController];
  }

  loadingView = [(NUArticleHostViewController *)self loadingView];
  [loadingView loadingViewStartAnimating];

  objc_initWeak(&location, self);
  article = [(NUArticleHostViewController *)self article];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__NUArticleHostViewController_loadArticleAndEmbedArticleViewController__block_invoke;
  v10[3] = &unk_2799A3F08;
  objc_copyWeak(&v11, &location);
  [article performBlockWhenFullyLoaded:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __71__NUArticleHostViewController_loadArticleAndEmbedArticleViewController__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = v9;
    if (v6)
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __71__NUArticleHostViewController_loadArticleAndEmbedArticleViewController__block_invoke_3;
      v61[3] = &unk_2799A3440;
      v61[4] = v9;
      v62 = v6;
      __71__NUArticleHostViewController_loadArticleAndEmbedArticleViewController__block_invoke_3(v61);
      v11 = v62;
LABEL_4:

LABEL_5:
      goto LABEL_6;
    }

    v12 = [v5 headline];

    if (!v12)
    {
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __71__NUArticleHostViewController_loadArticleAndEmbedArticleViewController__block_invoke_4;
      v58[3] = &unk_2799A3440;
      v59 = v5;
      v60 = v10;
      __71__NUArticleHostViewController_loadArticleAndEmbedArticleViewController__block_invoke_4(v58);
      v11 = v59;
      goto LABEL_4;
    }

    v13 = [v5 headline];
    v14 = [v13 contentType];

    if (v14 > 1)
    {
      if (v14 != 3)
      {
        if (v14 != 2)
        {
          goto LABEL_17;
        }

        v15 = [v10 articleViewControllerFactory];
        v16 = [v10 issue];
        v17 = [v10 articleContext];
        v18 = [v15 createArticleViewControllerWithArticle:v5 issue:v16 context:v17 relativePriority:objc_msgSend(v10 articleHostViewController:{"relativePriority"), v10}];

        [v10 setContentTypeViewController:v18];
        [v18 setDelegate:v10];
        [v18 setExperimentationDelegate:v10];
        v19 = [v10 multiLoadingDelegate];
        v20 = [v19 delegate];
        [v18 setLoadingDelegate:v20];

        v21 = [v10 contentSizeCategory];
        [v18 setContentSizeCategory:v21];

        [v18 setContentScale:{objc_msgSend(v10, "contentScale")}];
        [v18 setAnalyticsReporting:v10];
        v22 = [v10 articleViewStyler];
        objc_initWeak(&location, v22);

        v23 = [v18 articleViewStyler];
        v52 = MEMORY[0x277D85DD0];
        v53 = 3221225472;
        v54 = __71__NUArticleHostViewController_loadArticleAndEmbedArticleViewController__block_invoke_5;
        v55 = &unk_2799A3E98;
        objc_copyWeak(&v56, &location);
        v24 = [v23 observe:&v52];

        v25 = [v10 articleViewStyler];
        v26 = [v18 articleViewStyler];
        v27 = [v26 value];
        [v25 next:v27];

        [v18 updateScrollPositionFromContext];
        objc_destroyWeak(&v56);
        objc_destroyWeak(&location);
        goto LABEL_16;
      }
    }

    else if (v14 >= 2)
    {
LABEL_17:
      v32 = [v10 contentTypeViewController];

      if (v32)
      {
        v33 = [v10 contentTypeViewController];
        [v10 addChildViewController:v33];

        v34 = [v10 view];
        [v34 bounds];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v43 = [v10 contentTypeViewController];
        v44 = [v43 view];
        [v44 setFrame:{v36, v38, v40, v42}];

        v45 = [v10 loadingView];
        v46 = [v45 superview];

        v47 = [v10 view];
        v48 = [v10 contentTypeViewController];
        v49 = [v48 view];
        if (v46)
        {
          v50 = [v10 loadingView];
          [v47 insertSubview:v49 belowSubview:v50];
        }

        else
        {
          [v47 addSubview:v49];
        }

        v51 = [v10 contentTypeViewController];
        [v51 didMoveToParentViewController:v10];
      }

      goto LABEL_5;
    }

    v28 = MEMORY[0x277CCA9B8];
    v29 = [v5 headline];
    v18 = [v28 nu_errorArticleContentTypeUnsupported:v29];

    v30 = [v10 multiLoadingDelegate];
    v31 = [v30 delegate];
    [v31 loadingDidFinishWithError:v18];

LABEL_16:
    goto LABEL_17;
  }

LABEL_6:
}

void __71__NUArticleHostViewController_loadArticleAndEmbedArticleViewController__block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) multiLoadingDelegate];
  v2 = [v3 delegate];
  [v2 loadingDidFinishWithError:*(a1 + 40)];
}

void __71__NUArticleHostViewController_loadArticleAndEmbedArticleViewController__block_invoke_4(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA9B8] nu_errorArticleMissingHeadline:*(a1 + 32)];
  v2 = [*(a1 + 40) multiLoadingDelegate];
  v3 = [v2 delegate];
  [v3 loadingDidFinishWithError:v4];
}

void __71__NUArticleHostViewController_loadArticleAndEmbedArticleViewController__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained next:v3];
}

- (id)loadingTextForArticle:(id)article
{
  articleCopy = article;
  v4 = NUBundle();
  v5 = [v4 localizedStringForKey:@"LOADING" value:&stru_286E03B58 table:0];

  headline = [articleCopy headline];

  if (headline)
  {
    headline2 = [articleCopy headline];
    role = [headline2 role];

    if (role <= 8)
    {
      if (((1 << role) & 0x1AD) != 0)
      {
        role = v5;
      }

      else
      {
        v9 = NUBundle();
        v10 = v9;
        if (((1 << role) & 0x42) != 0)
        {
          v11 = @"LOADING STORY";
        }

        else
        {
          v11 = @"LOADING ADVERTISEMENT";
        }

        role = [v9 localizedStringForKey:v11 value:&stru_286E03B58 table:0];
      }
    }
  }

  else
  {
    role = v5;
  }

  return role;
}

- (id)searchWithContext:(id)context
{
  contextCopy = context;
  contentTypeViewController = [(NUArticleHostViewController *)self contentTypeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentTypeViewController2 = [(NUArticleHostViewController *)self contentTypeViewController];
    v8 = [contentTypeViewController2 searchWithContext:contextCopy];
  }

  else
  {
    v9 = NUSharedLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_25C2D6000, v9, OS_LOG_TYPE_DEFAULT, "contentTypeViewController is not an instance of NUArticleViewController.", v11, 2u);
    }

    v8 = [objc_alloc(MEMORY[0x277D550F0]) initWithTotal:0 index:0];
  }

  return v8;
}

- (NULoadingDelegate)loadingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_loadingDelegate);

  return WeakRetained;
}

- (NUArticleHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NUArticleExperimentationDelegate)experimentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_experimentationDelegate);

  return WeakRetained;
}

@end