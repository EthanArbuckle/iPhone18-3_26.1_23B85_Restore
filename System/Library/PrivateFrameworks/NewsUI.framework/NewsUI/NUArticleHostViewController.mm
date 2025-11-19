@interface NUArticleHostViewController
- (BOOL)becomeFirstResponder;
- (BOOL)isExperimentationEnabled;
- (BOOL)resignFirstResponder;
- (NSString)contentSizeCategory;
- (NSString)selectedText;
- (NUArticleExperimentationDelegate)experimentationDelegate;
- (NUArticleHostViewController)initWithArticle:(id)a3 issue:(id)a4 articleViewControllerFactory:(id)a5 settings:(id)a6 errorMessageFactory:(id)a7 analyticsReporting:(id)a8 contentSizeManager:(id)a9 relativePriority:(int64_t)a10;
- (NUArticleHostViewControllerDelegate)delegate;
- (NULoadingDelegate)loadingDelegate;
- (UIResponder)responder;
- (UIScrollView)scrollView;
- (id)loadingTextForArticle:(id)a3;
- (id)searchWithContext:(id)a3;
- (int64_t)contentScale;
- (void)articleViewController:(id)a3 didScrollToPosition:(id)a4;
- (void)articleViewControllerDidScrollToBottomOfPrimaryContent:(id)a3;
- (void)didStartExperimentForArticleID:(id)a3 experimentIdentifier:(id)a4 treatmentGroup:(id)a5;
- (void)loadArticleAndEmbedArticleViewController;
- (void)loadingDidFinishWithError:(id)a3;
- (void)loadingDidStart;
- (void)loadingDidUpdateProgress:(double)a3;
- (void)loadingWillStart;
- (void)reportEvent:(id)a3;
- (void)setArticleContext:(id)a3;
- (void)setContentScale:(int64_t)a3;
- (void)setContentSizeCategory:(id)a3;
- (void)setLoadingDelegate:(id)a3;
- (void)updateContentScaleAndSize;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NUArticleHostViewController

- (NUArticleHostViewController)initWithArticle:(id)a3 issue:(id)a4 articleViewControllerFactory:(id)a5 settings:(id)a6 errorMessageFactory:(id)a7 analyticsReporting:(id)a8 contentSizeManager:(id)a9 relativePriority:(int64_t)a10
{
  v17 = a3;
  v33 = a4;
  v32 = a5;
  v31 = a6;
  v30 = a7;
  v29 = a8;
  v18 = a9;
  v34.receiver = self;
  v34.super_class = NUArticleHostViewController;
  v19 = [(NUArticleHostViewController *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_article, a3);
    objc_storeStrong(&v20->_issue, a4);
    v21 = [objc_alloc(MEMORY[0x277D31180]) initWithValue:0];
    articleViewStyler = v20->_articleViewStyler;
    v20->_articleViewStyler = v21;

    objc_storeStrong(&v20->_articleViewControllerFactory, a5);
    objc_storeStrong(&v20->_settings, a6);
    objc_storeStrong(&v20->_errorMessageFactory, a7);
    v23 = [v17 articleID];
    v24 = [v23 copy];
    pageIdentifier = v20->_pageIdentifier;
    v20->_pageIdentifier = v24;

    v26 = [objc_alloc(MEMORY[0x277D6D030]) initWithDelegate:v20 delegateProtocol:&unk_286E28AB0];
    multiLoadingDelegate = v20->_multiLoadingDelegate;
    v20->_multiLoadingDelegate = v26;

    objc_storeStrong(&v20->_analyticsReporting, a8);
    objc_storeStrong(&v20->_contentSizeManager, a9);
    v20->_relativePriority = a10;
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
  v3 = [(NUArticleHostViewController *)self view];
  [v3 setPreservesSuperviewLayoutMargins:1];

  if ([(NUArticleHostViewController *)self shouldApplyBackgroundColor])
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v4 = ;
  v5 = [(NUArticleHostViewController *)self view];
  [v5 setBackgroundColor:v4];

  if ([(NUArticleHostViewController *)self shouldApplyBackgroundColor])
  {
    objc_initWeak(&location, self);
    v6 = [(NUArticleHostViewController *)self articleViewStyler];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __42__NUArticleHostViewController_viewDidLoad__block_invoke;
    v19 = &unk_2799A3E98;
    objc_copyWeak(&v20, &location);
    v7 = [v6 observe:&v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  if ([(NUArticleHostViewController *)self shouldShowLoadingCover:v16])
  {
    v8 = [(NUArticleHostViewController *)self article];
    v9 = [(NUArticleHostViewController *)self loadingTextForArticle:v8];

    v10 = [[NUActivityIndicatorLoadingView alloc] initWithText:v9 activityIndicatorStyle:100];
    [(NUArticleHostViewController *)self setLoadingView:v10];

    v11 = [(NUArticleHostViewController *)self view];
    v12 = [(NUArticleHostViewController *)self loadingView];
    [v11 addSubview:v12];
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
  v11 = [(NUArticleHostViewController *)self contentTypeViewController];
  [v11 setAdditionalSafeAreaInsets:{v4, v6, v8, v10}];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(NUArticleHostViewController *)self contentTypeViewController];
  [v3 becomeFirstResponder];

  v5.receiver = self;
  v5.super_class = NUArticleHostViewController;
  return [(NUArticleHostViewController *)&v5 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v3 = [(NUArticleHostViewController *)self contentTypeViewController];
  [v3 becomeFirstResponder];

  v5.receiver = self;
  v5.super_class = NUArticleHostViewController;
  return [(NUArticleHostViewController *)&v5 resignFirstResponder];
}

- (UIResponder)responder
{
  v3 = [(NUArticleHostViewController *)self contentTypeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(NUArticleHostViewController *)self contentTypeViewController];
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = [v5 responder];

    v6 = v7;
  }

  return v6;
}

- (NSString)contentSizeCategory
{
  v3 = [(NUArticleHostViewController *)self article];
  v4 = [v3 headline];

  if (!v4)
  {
    v8 = [MEMORY[0x277D75128] sharedApplication];
    v9 = [v8 preferredContentSizeCategory];
    goto LABEL_5;
  }

  v5 = [(NUArticleHostViewController *)self contentSizeManager];
  v6 = [(NUArticleHostViewController *)self article];
  v7 = [v6 headline];
  v8 = [v5 contentSizeCategoryForArticle:v7];

  if (v8)
  {
    v9 = v8;
    v8 = v9;
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277D75128] sharedApplication];
  v10 = [v11 preferredContentSizeCategory];

LABEL_7:

  return v10;
}

- (void)setContentSizeCategory:(id)a3
{
  v12 = a3;
  v4 = [(NUArticleHostViewController *)self article];
  v5 = [v4 headline];

  if (v5)
  {
    v6 = [(NUArticleHostViewController *)self contentSizeManager];
    v7 = [(NUArticleHostViewController *)self article];
    v8 = [v7 headline];
    [v6 updateContentSizeCategory:v12 forArticle:v8];
  }

  v9 = [(NUArticleHostViewController *)self contentTypeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(NUArticleHostViewController *)self contentTypeViewController];
    [v11 setContentSizeCategory:v12];
  }
}

- (int64_t)contentScale
{
  v3 = [(NUArticleHostViewController *)self article];
  v4 = [v3 headline];

  if (!v4)
  {
    return 4;
  }

  v5 = [(NUArticleHostViewController *)self contentSizeManager];
  v6 = [(NUArticleHostViewController *)self article];
  v7 = [v6 headline];
  v8 = [v5 contentScaleForArticle:v7];

  if (v8)
  {
    return v8;
  }

  else
  {
    return 4;
  }
}

- (void)setContentScale:(int64_t)a3
{
  v5 = [(NUArticleHostViewController *)self article];
  v6 = [v5 headline];

  if (v6)
  {
    v7 = [(NUArticleHostViewController *)self contentSizeManager];
    v8 = [(NUArticleHostViewController *)self article];
    v9 = [v8 headline];
    [v7 updateContentScale:a3 forArticle:v9];
  }

  v10 = [(NUArticleHostViewController *)self contentTypeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [(NUArticleHostViewController *)self contentTypeViewController];
    [v12 setContentScale:a3];
  }
}

- (void)updateContentScaleAndSize
{
  v3 = [(NUArticleHostViewController *)self contentTypeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(NUArticleHostViewController *)self contentTypeViewController];
    [v6 setContentScale:{-[NUArticleHostViewController contentScale](self, "contentScale")}];
    v5 = [(NUArticleHostViewController *)self contentSizeCategory];
    [v6 setContentSizeCategory:v5];
  }
}

- (void)viewDidLayoutSubviews
{
  v24.receiver = self;
  v24.super_class = NUArticleHostViewController;
  [(NUArticleHostViewController *)&v24 viewDidLayoutSubviews];
  v3 = [(NUArticleHostViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(NUArticleHostViewController *)self contentTypeViewController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];

  v14 = [(NUArticleHostViewController *)self view];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(NUArticleHostViewController *)self loadingView];
  [v23 setFrame:{v16, v18, v20, v22}];
}

- (NSString)selectedText
{
  objc_opt_class();
  v3 = [(NUArticleHostViewController *)self contentTypeViewController];
  v4 = FCDynamicCast();

  v5 = [v4 selectedText];

  return v5;
}

- (void)setLoadingDelegate:(id)a3
{
  obj = a3;
  v4 = [(NUArticleHostViewController *)self multiLoadingDelegate];
  WeakRetained = objc_loadWeakRetained(&self->_loadingDelegate);
  [v4 replaceDelegate:WeakRetained withDelegate:obj];

  objc_storeWeak(&self->_loadingDelegate, obj);
}

- (void)loadingWillStart
{
  if ([(NUArticleHostViewController *)self shouldShowLoadingCover])
  {
    v4 = [(NUArticleHostViewController *)self contentTypeViewController];
    v3 = [v4 view];
    [v3 setAlpha:0.0];
  }
}

- (void)loadingDidStart
{
  if ([(NUArticleHostViewController *)self shouldShowLoadingCover])
  {
    v3 = [(NUArticleHostViewController *)self loadingView];
    [v3 loadingViewStartAnimating];
  }
}

- (void)loadingDidFinishWithError:(id)a3
{
  v4 = a3;
  if ([(NUArticleHostViewController *)self shouldShowLoadingCover])
  {
    if (v4)
    {
      v5 = [(NUArticleHostViewController *)self loadingView];
      [v5 loadingViewStopAnimating];

      v6 = [(NUArticleHostViewController *)self loadingView];
      [v6 removeFromSuperview];

      [(NUArticleHostViewController *)self setLoadingView:0];
      v7 = [(NUArticleHostViewController *)self errorMessageFactory];
      v8 = [v7 errorMessageForArticleView];

      if (v8)
      {
        v9 = [[NUErrorView alloc] initWithErrorMessage:v8];
        [(NUErrorView *)v9 setAutoresizingMask:18];
        v10 = [(NUArticleHostViewController *)self navigationController];
        v11 = [v10 navigationBar];
        [v11 frame];
        MaxY = CGRectGetMaxY(v25);
        v13 = [(NUArticleHostViewController *)self navigationController];
        v14 = [v13 toolbar];
        [v14 frame];
        CGRectGetHeight(v26);

        v15 = [(NUArticleHostViewController *)self view];
        [v15 bounds];
        [(NUErrorView *)v9 setFrame:v16 + 0.0, MaxY + v17];

        v18 = [(NUArticleHostViewController *)self view];
        [v18 addSubview:v9];
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

- (void)loadingDidUpdateProgress:(double)a3
{
  if ([(NUArticleHostViewController *)self shouldShowLoadingCover])
  {
    v5 = [(NUArticleHostViewController *)self loadingView];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(NUArticleHostViewController *)self loadingView];
      [v7 loadingViewUpdateProgress:a3];
    }
  }
}

- (UIScrollView)scrollView
{
  v3 = [(NUArticleHostViewController *)self contentTypeViewController];
  v4 = [v3 conformsToProtocol:&unk_286E31038];

  if (v4)
  {
    v5 = [(NUArticleHostViewController *)self contentTypeViewController];
    v6 = [v5 scrollView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)articleViewController:(id)a3 didScrollToPosition:(id)a4
{
  v8 = a4;
  v5 = [(NUArticleHostViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(NUArticleHostViewController *)self delegate];
    [v7 articleHostViewController:self didScrollToPosition:v8];
  }
}

- (void)articleViewControllerDidScrollToBottomOfPrimaryContent:(id)a3
{
  v4 = [(NUArticleHostViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NUArticleHostViewController *)self delegate];
    [v6 articleHostViewControllerDidScrollToBottomOfPrimaryContent:self];
  }
}

- (void)didStartExperimentForArticleID:(id)a3 experimentIdentifier:(id)a4 treatmentGroup:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NUArticleHostViewController *)self experimentationDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(NUArticleHostViewController *)self experimentationDelegate];
    [v12 didStartExperimentForArticleID:v13 experimentIdentifier:v8 treatmentGroup:v9];
  }
}

- (BOOL)isExperimentationEnabled
{
  v3 = [(NUArticleHostViewController *)self experimentationDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(NUArticleHostViewController *)self experimentationDelegate];
  v6 = [v5 isExperimentationEnabled];

  return v6;
}

- (void)reportEvent:(id)a3
{
  v4 = a3;
  v6 = [(NUArticleHostViewController *)self analyticsReporting];
  v5 = [[NUContentAnalyticsEvent alloc] initWithEvent:v4];

  [v6 reportEvent:v5];
}

- (void)setArticleContext:(id)a3
{
  v8 = a3;
  v4 = [v8 copy];
  articleContext = self->_articleContext;
  self->_articleContext = v4;

  objc_opt_class();
  v6 = [(NUArticleHostViewController *)self contentTypeViewController];
  v7 = FCDynamicCast();

  if (v7)
  {
    [v7 setArticleContext:v8];
  }
}

- (void)loadArticleAndEmbedArticleViewController
{
  v3 = [(NUArticleHostViewController *)self contentTypeViewController];

  if (v3)
  {
    v4 = [(NUArticleHostViewController *)self contentTypeViewController];
    [v4 willMoveToParentViewController:0];

    v5 = [(NUArticleHostViewController *)self contentTypeViewController];
    v6 = [v5 view];
    [v6 removeFromSuperview];

    v7 = [(NUArticleHostViewController *)self contentTypeViewController];
    [v7 removeFromParentViewController];
  }

  v8 = [(NUArticleHostViewController *)self loadingView];
  [v8 loadingViewStartAnimating];

  objc_initWeak(&location, self);
  v9 = [(NUArticleHostViewController *)self article];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__NUArticleHostViewController_loadArticleAndEmbedArticleViewController__block_invoke;
  v10[3] = &unk_2799A3F08;
  objc_copyWeak(&v11, &location);
  [v9 performBlockWhenFullyLoaded:v10];

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

- (id)loadingTextForArticle:(id)a3
{
  v3 = a3;
  v4 = NUBundle();
  v5 = [v4 localizedStringForKey:@"LOADING" value:&stru_286E03B58 table:0];

  v6 = [v3 headline];

  if (v6)
  {
    v7 = [v3 headline];
    v8 = [v7 role];

    if (v8 <= 8)
    {
      if (((1 << v8) & 0x1AD) != 0)
      {
        v8 = v5;
      }

      else
      {
        v9 = NUBundle();
        v10 = v9;
        if (((1 << v8) & 0x42) != 0)
        {
          v11 = @"LOADING STORY";
        }

        else
        {
          v11 = @"LOADING ADVERTISEMENT";
        }

        v8 = [v9 localizedStringForKey:v11 value:&stru_286E03B58 table:0];
      }
    }
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)searchWithContext:(id)a3
{
  v4 = a3;
  v5 = [(NUArticleHostViewController *)self contentTypeViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(NUArticleHostViewController *)self contentTypeViewController];
    v8 = [v7 searchWithContext:v4];
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