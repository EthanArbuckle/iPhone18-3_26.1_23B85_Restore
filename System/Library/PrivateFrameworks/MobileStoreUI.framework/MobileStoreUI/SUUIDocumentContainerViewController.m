@interface SUUIDocumentContainerViewController
- (BOOL)_shouldFillNavigationBarContentsBasedOnNavigationBarViewElement;
- (BOOL)document:(id)a3 evaluateStyleMediaQuery:(id)a4;
- (BOOL)performTestWithName:(id)a3 options:(id)a4;
- (BOOL)prefersNavigationBarBackgroundViewHidden;
- (BOOL)prefersNavigationBarHidden;
- (SUUIDocumentContainerViewController)initWithDocument:(id)a3 options:(id)a4 clientContext:(id)a5;
- (UIScrollView)scrollingTabNestedPagingScrollView;
- (UIView)navigationPaletteView;
- (id)_navigationBarViewElement;
- (id)_newViewControllerWithTemplateElement:(id)a3 options:(id)a4 clientContext:(id)a5;
- (id)_sidepackViewControllerWithOptions:(id)a3 clientContext:(id)a4;
- (id)additionalLeftBarButtonItemForNavigationBarController:(id)a3;
- (id)additionalRightBarButtonItemForNavigationBarController:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)contentScrollView;
- (id)impressionableViewElementsForDocument:(id)a3;
- (id)mediaQueryEvaluator:(id)a3 valueForKey:(id)a4;
- (id)navigationBarTintColor;
- (id)navigationBarTitleTextTintColor;
- (id)pendingSizeTransitionCompletion;
- (id)scrollingTabViewControllerInNestedPagingScrollViewAtPageIndex:(unint64_t)a3;
- (int64_t)navigationBarTintAdjustmentMode;
- (unint64_t)supportedInterfaceOrientations;
- (void)_SUUI_applicationDidEnterBackground:(id)a3;
- (void)_SUUI_applicationWillEnterForeground:(id)a3;
- (void)_enqueueLoadURLOperation;
- (void)_finishLegacyProtocolOperationForResponse:(id)a3 dataProvider:(id)a4 dictionary:(id)a5;
- (void)_finishLoadOperationWithResponse:(id)a3 error:(id)a4;
- (void)_networkTypeChangeNotification:(id)a3;
- (void)_onReportDOMChange:(id)a3;
- (void)_onReportDocumentReady:(id)a3;
- (void)_onReportPlatformJsonTimes:(id)a3;
- (void)_onReportRequestTimes:(id)a3;
- (void)_redirectToURL:(id)a3;
- (void)_reloadDefaultBarButtonItems;
- (void)_reloadNavigationBarController;
- (void)_reloadNavigationBarControllerIfNeeded;
- (void)_reloadNavigationItemContents;
- (void)_reloadNavigationPalette;
- (void)_reloadPageData;
- (void)_reloadToolbar;
- (void)_sendOnViewAttributesChangeWithAttributes:(id)a3 viewWillAppear:(BOOL)a4;
- (void)_setChildViewController:(id)a3;
- (void)_showAccountViewControllerWithURL:(id)a3;
- (void)_showLegacyStorePageWithRequest:(id)a3 page:(id)a4 pageType:(int64_t)a5 URLResponse:(id)a6;
- (void)_submitPageRenderIfPossible;
- (void)dealloc;
- (void)document:(id)a3 runTestWithName:(id)a4 options:(id)a5;
- (void)documentDidSendMessage:(id)a3;
- (void)documentDidUpdate:(id)a3;
- (void)documentScrollToTop:(id)a3;
- (void)getModalSourceViewForElementIdentifier:(id)a3 completionBlock:(id)a4;
- (void)loadView;
- (void)mediaQueryEvaluatorDidChange:(id)a3;
- (void)reloadData;
- (void)resourceLoader:(id)a3 didLoadAllForReason:(int64_t)a4;
- (void)resourceLoaderDidBeginLoading:(id)a3;
- (void)scrollingTabAppearanceStatusWasUpdated:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)suui_viewWillAppear:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation SUUIDocumentContainerViewController

- (SUUIDocumentContainerViewController)initWithDocument:(id)a3 options:(id)a4 clientContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v9 debugDescription];
    NSLog(&cfstr_MissingClientC.isa, v13, v14);

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    NSLog(&cfstr_DocumentOption.isa, v16, v10);
  }

  v43.receiver = self;
  v43.super_class = SUUIDocumentContainerViewController;
  v17 = [(SUUIDocumentContainerViewController *)&v43 init];
  v18 = v17;
  if (v17)
  {
    [(SUUIViewController *)v17 setClientContext:v11];
    v19 = [v10 objectForKey:@"sidepackType"];
    v20 = [v10 objectForKey:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v18->_urlString, v20);
    }

    v21 = [v9 templateElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v21;
      v22 = [(SUUIDocumentContainerViewController *)v18 _sidepackViewControllerWithOptions:v10 clientContext:v11];
      v23 = [(SUUIDocumentContainerViewController *)v18 navigationItem];
      [v22 _setExistingNavigationItem:v23];
    }

    else if (v21 || !v20)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = v18;
        v18 = 0;
        goto LABEL_24;
      }

      v25 = [(SUUIDocumentContainerViewController *)v18 _newViewControllerWithTemplateElement:v21 options:v10 clientContext:v11];
      v26 = v21;
      v23 = v25;
      v40 = v26;
      if (v25)
      {
        v23 = v25;
        v18->_templateViewElementType = [v26 elementType];
      }

      v22 = v23;
    }

    else
    {
      v40 = 0;
      v22 = objc_alloc_init(MEMORY[0x277D75D28]);
      v23 = [v22 view];
      v24 = [MEMORY[0x277D75348] whiteColor];
      [v23 setBackgroundColor:v24];
    }

    if (!v22)
    {
      v22 = v18;
      v18 = 0;
LABEL_23:
      v21 = v40;
LABEL_24:

      goto LABEL_25;
    }

    v39 = v19;
    objc_storeStrong(&v18->_document, a3);
    [(IKAppDocument *)v18->_document setDelegate:v18];
    v18->_scrollingTabAppearanceStatus.progress = 1.0;
    *&v18->_scrollingTabAppearanceStatus.isBouncingOffTheEdge = 0;
    [(SUUIDocumentContainerViewController *)v18 _setChildViewController:v22];
    v27 = [v10 copy];
    presentationOptions = v18->_presentationOptions;
    v18->_presentationOptions = v27;

    [(IKAppDocument *)v18->_document onLoad];
    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 addObserver:v18 selector:sel__SUUI_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
    [v29 addObserver:v18 selector:sel_documentDidSendMessage_ name:0x286AFEBA0 object:v18->_document];
    v30 = [v11 applicationController];
    v31 = [v30 options];
    if ([v31 pageRenderMetricsEnabled])
    {
      v32 = [SUUIMetricsPageRenderEvent shouldCollectPageRenderDataForDocument:v18->_document];

      if (!v32)
      {
LABEL_22:

        v19 = v39;
        goto LABEL_23;
      }

      v33 = objc_alloc_init(SUUIMetricsPageRenderEvent);
      [(SUUIDocumentContainerViewController *)v18 setPageRenderEvent:v33];

      urlString = v18->_urlString;
      v35 = [(SUUIDocumentContainerViewController *)v18 pageRenderEvent];
      [v35 setPageURL:urlString];

      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __78__SUUIDocumentContainerViewController_initWithDocument_options_clientContext___block_invoke;
      v41[3] = &unk_2798FE008;
      v36 = v18;
      v42 = v36;
      [SUUIMetricsAppLaunchEvent withPendingLaunchEvent:v41];
      v37 = objc_alloc_init(SUUIMetricsDOMChangeQueue);
      [(SUUIDocumentContainerViewController *)v36 setDomChangeTimingQueue:v37];

      v30 = v42;
    }

    else
    {
    }

    goto LABEL_22;
  }

LABEL_25:

  return v18;
}

void __78__SUUIDocumentContainerViewController_initWithDocument_options_clientContext___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 launchCorrelationKey];
  v3 = [*(a1 + 32) pageRenderEvent];
  [v3 setLaunchCorrelationKey:v4];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7FCC0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76660] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76758] object:0];
  [v3 removeObserver:self name:0x286AFEBA0 object:self->_document];
  if ([(NSSet *)self->_personalizationItems count])
  {
    v4 = +[SUUIItemStateCenter defaultCenter];
    [v4 endObservingLibraryItems:self->_personalizationItems];
  }

  if ([(SUUIDocumentContainerViewController *)self _appearState]== 3)
  {
    [(IKAppDocument *)self->_document onDisappear];
  }

  [(IKAppDocument *)self->_document setDelegate:0];
  [(SUUIMediaQueryEvaluator *)self->_mediaQueryEvaluator setDelegate:0];
  [(SUUINavigationBarController *)self->_navigationBarController setParentViewController:0];
  [(SSVLoadURLOperation *)self->_loadURLOperation setOutputBlock:0];
  [(SSVLoadURLOperation *)self->_loadURLOperation cancel];

  v5.receiver = self;
  v5.super_class = SUUIDocumentContainerViewController;
  [(SUUIViewController *)&v5 dealloc];
}

- (void)suui_viewWillAppear:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIViewController *)self->_childViewController suui_viewWillAppear:v3];
  }

  v5.receiver = self;
  v5.super_class = SUUIDocumentContainerViewController;
  [(SUUIViewController *)&v5 suui_viewWillAppear:v3];
}

- (id)contentScrollView
{
  if (self->_childViewController)
  {
    v2 = [(UIViewController *)self->_childViewController contentScrollView];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SUUIDocumentContainerViewController;
    v2 = [(SUUIDocumentContainerViewController *)&v4 contentScrollView];
  }

  return v2;
}

- (void)loadView
{
  v3 = [(IKAppDocument *)self->_document templateElement];
  v4 = [v3 style];
  v5 = [v4 ikBackgroundColor];
  v6 = [v5 color];

  if (v6)
  {
    v15 = 1.0;
    if ([v6 getRed:0 green:0 blue:0 alpha:&v15])
    {
      v7 = v15 <= 0.00000011920929;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  v9 = v8;
  v10 = objc_alloc(MEMORY[0x277D75D18]);
  v11 = [MEMORY[0x277D75DA0] keyWindow];
  [v11 bounds];
  v12 = [v10 initWithFrame:?];

  [v12 setBackgroundColor:v9];
  childViewController = self->_childViewController;
  if (childViewController)
  {
    v14 = [(UIViewController *)childViewController view];
    [v14 setAutoresizingMask:18];
    [v12 bounds];
    [v14 setFrame:?];
    [v12 addSubview:v14];
  }

  [(SUUIDocumentContainerViewController *)self setView:v12];
}

- (void)reloadData
{
  if (self->_urlString)
  {
    if (!self->_loadURLOperation)
    {
      [(SUUIDocumentContainerViewController *)self _enqueueLoadURLOperation];
    }
  }
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = SUUIDocumentContainerViewController;
  [(SUUIDocumentContainerViewController *)&v6 setPreferredContentSize:?];
  [(UIViewController *)self->_childViewController setPreferredContentSize:width, height];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(SUUIViewController *)self clientContext];
  v3 = SUUIUserInterfaceIdiom(v2);

  if (v3 == 1)
  {
    return 30;
  }

  if (SUUIAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_childViewController;
    if (objc_opt_respondsToSelector())
    {
      [(UIViewController *)v5 delayPresentationIfNeededForParentViewController:v4];
    }
  }

  v6.receiver = self;
  v6.super_class = SUUIDocumentContainerViewController;
  [(SUUIDocumentContainerViewController *)&v6 willMoveToParentViewController:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
  [v5 pageAppearTime];
  v7 = v6;

  if (v7 < 2.22044605e-16)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    [v8 timeIntervalSince1970];
    v10 = v9;
    v11 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
    [v11 setPageAppearTime:v10];

    [(SUUIDocumentContainerViewController *)self _submitPageRenderIfPossible];
  }

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"SUUIApplicationPageDidDisplayNotification" object:self];

  [(IKAppDocument *)self->_document onAppear];
  v13.receiver = self;
  v13.super_class = SUUIDocumentContainerViewController;
  [(SUUIDocumentContainerViewController *)&v13 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSince1970];
    v8 = v7;
    v9 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
    [v9 setPageDisappearTime:v8];
  }

  [(IKAppDocument *)self->_document onDisappear];
  v10.receiver = self;
  v10.super_class = SUUIDocumentContainerViewController;
  [(SUUIDocumentContainerViewController *)&v10 viewDidDisappear:v3];
}

- (void)viewDidLayoutSubviews
{
  p_viewSize = &self->_viewSize;
  v4 = [(SUUIDocumentContainerViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  width = p_viewSize->width;
  height = p_viewSize->height;

  if (width != v6 || height != v8)
  {
    v12 = [(SUUIDocumentContainerViewController *)self view];
    [v12 bounds];
    p_viewSize->width = v13;
    p_viewSize->height = v14;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:p_viewSize->height];
    [v15 setObject:v16 forKey:@"height"];

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:p_viewSize->width];
    [v15 setObject:v17 forKey:@"width"];

    [(SUUIDocumentContainerViewController *)self _sendOnViewAttributesChangeWithAttributes:v15 viewWillAppear:0];
    [(SUUIMediaQueryEvaluator *)self->_mediaQueryEvaluator reloadData];
  }

  [(SUUIDocumentContainerViewController *)self _reloadNavigationBarControllerIfNeeded];
  v25.receiver = self;
  v25.super_class = SUUIDocumentContainerViewController;
  [(SUUIDocumentContainerViewController *)&v25 viewDidLayoutSubviews];
  v18 = [(SUUIDocumentContainerViewController *)self bottomLayoutGuide];
  [v18 length];
  v20 = v19;

  v21 = [(SUUIDocumentContainerViewController *)self topLayoutGuide];
  [v21 length];
  v23 = v22;

  if (vabdd_f64(self->_lastBottomLayoutGuideLength, v20) > 0.00000011920929 || vabdd_f64(self->_lastTopLayoutGuideLength, v23) > 0.00000011920929)
  {
    self->_lastBottomLayoutGuideLength = v20;
    self->_lastTopLayoutGuideLength = v23;
    if ([(UIViewController *)self->_childViewController isViewLoaded])
    {
      v24 = [(UIViewController *)self->_childViewController view];
      [v24 setNeedsLayout];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  p_viewSize = &self->_viewSize;
  v6 = [(SUUIDocumentContainerViewController *)self view];
  [v6 bounds];
  p_viewSize->width = v7;
  p_viewSize->height = v8;

  [(SUUIDocumentContainerViewController *)self reloadData];
  if (!self->_personalizationItems)
  {
    v9 = [(IKAppDocument *)self->_document templateElement];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 personalizationLibraryItems];
      personalizationItems = self->_personalizationItems;
      self->_personalizationItems = v11;

      v13 = +[SUUIItemStateCenter defaultCenter];
      [v13 beginObservingLibraryItems:self->_personalizationItems];
    }
  }

  [(SUUIDocumentContainerViewController *)self _reloadNavigationBarControllerIfNeeded];
  if ([(SUUIDocumentContainerViewController *)self _shouldFillNavigationBarContentsBasedOnNavigationBarViewElement])
  {
    v14 = [(SUUIDocumentContainerViewController *)self _navigationBarViewElement];
    v15 = [(SUUIDocumentContainerViewController *)self navigationItem];
    [v15 setHidesBackButton:objc_msgSend(v14 animated:{"hidesBackButton"), 0}];

    v16 = [v14 style];
    v17 = [v16 visibility];
    v18 = [v17 isEqualToString:@"hidden"];

    v19 = [(SUUIDocumentContainerViewController *)self navigationController];
    [v19 setNavigationBarHidden:v18 animated:v3];
  }

  [(SUUIViewController *)self forceOrientationBackToSupportedOrientation];
  v20 = [(SUUIDocumentContainerViewController *)self contentScrollView];
  [v20 contentInset];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (v22 == 0.0)
  {
    v29 = [(SUUIDocumentContainerViewController *)self topLayoutGuide];
    [v29 length];
    v31 = v30;

    if (v22 != v31)
    {
      v32 = [(SUUIDocumentContainerViewController *)self topLayoutGuide];
      [v32 length];
      v34 = v33;

      [(SUUIDocumentContainerViewController *)self _setNavigationControllerContentInsetAdjustment:v34, v24, v26, v28];
    }
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_orientationAtDisappear)
  {
    v36 = [MEMORY[0x277D75128] sharedApplication];
    v37 = [v36 statusBarOrientation];

    if (v37 != [(NSNumber *)self->_orientationAtDisappear integerValue])
    {
      if ((v37 - 3) >= 2)
      {
        v38 = @"portrait";
      }

      else
      {
        v38 = @"landscape";
      }

      [v35 setObject:v38 forKey:@"orientation"];
    }

    orientationAtDisappear = self->_orientationAtDisappear;
    self->_orientationAtDisappear = 0;
  }

  if (self->_sizeAtDisappear)
  {
    v40 = [(SUUIDocumentContainerViewController *)self view];
    [v40 frame];
    v42 = v41;
    v44 = v43;

    [(NSValue *)self->_sizeAtDisappear CGSizeValue];
    if (v46 != v42 || v45 != v44)
    {
      v48 = [MEMORY[0x277CCABB0] numberWithDouble:v44];
      [v35 setObject:v48 forKey:@"height"];

      v49 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
      [v35 setObject:v49 forKey:@"width"];
    }

    sizeAtDisappear = self->_sizeAtDisappear;
    self->_sizeAtDisappear = 0;
    goto LABEL_24;
  }

  v51 = [MEMORY[0x277D75418] currentDevice];
  v52 = [v51 userInterfaceIdiom];

  if ((v52 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v53 = [MEMORY[0x277D75128] sharedApplication];
    v54 = [v53 SUUI_isFullscreen];

    if ((v54 & 1) == 0)
    {
      v55 = [(SUUIDocumentContainerViewController *)self view];
      [v55 frame];
      v57 = v56;
      v59 = v58;

      v60 = [MEMORY[0x277CCABB0] numberWithDouble:v59];
      [v35 setObject:v60 forKey:@"height"];

      sizeAtDisappear = [MEMORY[0x277CCABB0] numberWithDouble:v57];
      [v35 setObject:sizeAtDisappear forKey:@"width"];
LABEL_24:
    }
  }

  if ([v35 count])
  {
    [(SUUIDocumentContainerViewController *)self _sendOnViewAttributesChangeWithAttributes:v35 viewWillAppear:1];
    [(SUUIMediaQueryEvaluator *)self->_mediaQueryEvaluator reloadData];
  }

  v61.receiver = self;
  v61.super_class = SUUIDocumentContainerViewController;
  [(SUUIViewController *)&v61 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  v6 = [MEMORY[0x277D75128] sharedApplication];
  v7 = [v5 initWithInteger:{objc_msgSend(v6, "statusBarOrientation")}];
  orientationAtDisappear = self->_orientationAtDisappear;
  self->_orientationAtDisappear = v7;

  v9 = MEMORY[0x277CCAE60];
  v10 = [(SUUIDocumentContainerViewController *)self view];
  [v10 bounds];
  v13 = [v9 valueWithCGSize:{v11, v12}];
  sizeAtDisappear = self->_sizeAtDisappear;
  self->_sizeAtDisappear = v13;

  v15 = [(SUUIDocumentContainerViewController *)self navigationController];
  v16 = [v15 viewControllers];
  v17 = [v16 containsObject:self];

  if ((v17 & 1) == 0)
  {
    v18 = [(IKAppDocument *)self->_document navigationBarElement];
    [v18 dispatchEventOfType:8 canBubble:0 isCancelable:0 extraInfo:0 completionBlock:0];
  }

  v19.receiver = self;
  v19.super_class = SUUIDocumentContainerViewController;
  [(SUUIDocumentContainerViewController *)&v19 viewWillDisappear:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(NSDictionary *)self->_presentationOptions objectForKey:@"type"];
  v9 = [v8 isEqualToString:@"popover"];

  if ((v9 & 1) == 0)
  {
    self->_viewSize.width = width;
    self->_viewSize.height = height;
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:height];
    [v10 setObject:v11 forKey:@"height"];

    v12 = [MEMORY[0x277CCABB0] numberWithDouble:width];
    [v10 setObject:v12 forKey:@"width"];

    if (v7)
    {
      [v7 targetTransform];
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    if (!CGAffineTransformIsIdentity(&v16))
    {
      if (width <= height)
      {
        v13 = @"portrait";
      }

      else
      {
        v13 = @"landscape";
      }

      [v10 setObject:v13 forKey:@"orientation"];
    }

    [(SUUIDocumentContainerViewController *)self _sendOnViewAttributesChangeWithAttributes:v10 viewWillAppear:[(SUUIDocumentContainerViewController *)self _appearState]== 1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90__SUUIDocumentContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v15[3] = &unk_2798F5A88;
    v15[4] = self;
    [v7 animateAlongsideTransition:0 completion:v15];
    v14.receiver = self;
    v14.super_class = SUUIDocumentContainerViewController;
    [(SUUIDocumentContainerViewController *)&v14 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
    [(SUUIDocumentContainerViewController *)self _reloadNavigationPalette];
  }
}

- (id)pendingSizeTransitionCompletion
{
  v2 = _Block_copy(self->_pendingSizeTransitionCompletion);

  return v2;
}

- (BOOL)document:(id)a3 evaluateStyleMediaQuery:(id)a4
{
  v5 = a4;
  mediaQueryEvaluator = self->_mediaQueryEvaluator;
  if (!mediaQueryEvaluator)
  {
    v7 = objc_alloc_init(SUUIMediaQueryEvaluator);
    v8 = self->_mediaQueryEvaluator;
    self->_mediaQueryEvaluator = v7;

    [(SUUIMediaQueryEvaluator *)self->_mediaQueryEvaluator setDelegate:self];
    mediaQueryEvaluator = self->_mediaQueryEvaluator;
  }

  v9 = [(SUUIMediaQueryEvaluator *)mediaQueryEvaluator evaluateMediaQuery:v5];

  return v9;
}

- (void)document:(id)a3 runTestWithName:(id)a4 options:(id)a5
{
  v8 = a4;
  v7 = a5;
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_286BF6B10])
  {
    [(UIViewController *)self->_childViewController performTestWithName:v8 options:v7];
  }
}

- (void)documentDidUpdate:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_pageResponseAbsoluteTime)
  {
    goto LABEL_13;
  }

  v5 = [MEMORY[0x277D69B38] sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = objc_opt_class();
  v11 = v10;
  Current = CFAbsoluteTimeGetCurrent();
  [(NSNumber *)self->_pageResponseAbsoluteTime doubleValue];
  v14 = Current - v13;
  v15 = [(NSDictionary *)self->_presentationOptions objectForKey:@"url"];
  v58 = 138412802;
  v59 = v10;
  v60 = 2048;
  v61 = v14;
  v62 = 2112;
  v63 = v15;
  LODWORD(v55) = 32;
  v54 = &v58;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithCString:v16 encoding:{4, &v58, v55}];
    free(v16);
    v54 = v8;
    SSFileLog();
LABEL_11:
  }

  pageResponseAbsoluteTime = self->_pageResponseAbsoluteTime;
  self->_pageResponseAbsoluteTime = 0;

LABEL_13:
  v18 = [MEMORY[0x277CBEAA8] date];
  [v18 timeIntervalSince1970];
  v20 = v19;

  v21 = [v4 templateElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v21 elementType];
  }

  else
  {
    v22 = 0;
  }

  v23 = +[SUUIItemStateCenter defaultCenter];
  v24 = self->_personalizationItems;
  v25 = [v21 personalizationLibraryItems];
  personalizationItems = self->_personalizationItems;
  self->_personalizationItems = v25;

  if ([(NSSet *)self->_personalizationItems count])
  {
    [v23 beginObservingLibraryItems:self->_personalizationItems];
  }

  if ([(NSSet *)v24 count])
  {
    [v23 endObservingLibraryItems:v24];
  }

  if (v22 == self->_templateViewElementType)
  {
    v27 = self->_childViewController;
    if (objc_opt_respondsToSelector())
    {
      [(UIViewController *)v27 documentDidUpdate:v4];
    }

    if (SUUIViewControllerIsVisible(self->_childViewController))
    {
      v57 = *MEMORY[0x277CBE738];
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
      [v4 performSelector:sel_onUpdate withObject:0 afterDelay:v28 inModes:0.0];
    }
  }

  else
  {
    if (v22)
    {
      presentationOptions = self->_presentationOptions;
      v30 = [(SUUIViewController *)self clientContext];
      v27 = [(SUUIDocumentContainerViewController *)self _newViewControllerWithTemplateElement:v21 options:presentationOptions clientContext:v30];
    }

    else
    {
      v27 = 0;
    }

    [(SUUIDocumentContainerViewController *)self _setChildViewController:v27];
    self->_templateViewElementType = v22;
  }

  v31 = [(SUUIDocumentContainerViewController *)self _navigationBarViewElement];
  v32 = [(SUUIDocumentContainerViewController *)self navigationItem];
  navigationBarController = self->_navigationBarController;
  v56 = v4;
  if (v31)
  {
    v34 = [(SUUINavigationBarController *)navigationBarController navigationBarViewElement];

    if (v34 == v31)
    {
      [(SUUINavigationBarController *)self->_navigationBarController updateNavigationItem:v32];
      [(SUUIDocumentContainerViewController *)self _reloadNavigationPalette];
    }

    else
    {
      [(SUUIDocumentContainerViewController *)self _reloadNavigationBarController];
    }
  }

  else
  {
    v35 = [(SUUINavigationBarController *)navigationBarController existingSearchBarControllers];
    searchBarControllers = self->_searchBarControllers;
    self->_searchBarControllers = v35;

    [(SUUINavigationBarController *)self->_navigationBarController detachFromNavigationItem:v32];
    [(SUUINavigationBarController *)self->_navigationBarController setParentViewController:0];
    v37 = self->_navigationBarController;
    self->_navigationBarController = 0;
  }

  [(SUUIDocumentContainerViewController *)self prefersNavigationBarHidden];
  if ([(SUUIDocumentContainerViewController *)self _shouldFillNavigationBarContentsBasedOnNavigationBarViewElement])
  {
    v38 = [v31 hidesBackButton];
    v39 = [(SUUIDocumentContainerViewController *)self navigationItem];
    [v39 setHidesBackButton:v38];

    v40 = [v31 style];
    v41 = [v40 visibility];
    v42 = [v41 isEqualToString:@"hidden"];

    v43 = [(SUUIDocumentContainerViewController *)self navigationController];
    [v43 setNavigationBarHidden:v42 animated:0];
  }

  [(SUUIDocumentContainerViewController *)self _reloadDefaultBarButtonItems];
  v44 = [(SUUIDocumentContainerViewController *)self _toolbarViewElement];
  v45 = [(SUUIDocumentContainerViewController *)self navigationController];
  toolbarController = self->_toolbarController;
  if (v44)
  {
    v47 = [(SUUIToolbarController *)toolbarController toolbarViewElement];

    if (v47 == v44)
    {
      [(SUUIToolbarController *)self->_toolbarController updateToolbarForNavigationController:v45];
    }

    else
    {
      [(SUUIDocumentContainerViewController *)self _reloadToolbar];
    }
  }

  else
  {
    [(SUUIToolbarController *)toolbarController detachFromNavigationController:v45];
    [(SUUIToolbarController *)self->_toolbarController setDelegate:0];
    v48 = self->_toolbarController;
    self->_toolbarController = 0;
  }

  v49 = [MEMORY[0x277CCAB98] defaultCenter];
  [v49 postNotificationName:@"SUUIApplicationPageDidUpdateNotification" object:self];

  v50 = [(SUUIDocumentContainerViewController *)self domChangeTimingQueue];
  v51 = [v50 oldestPendingChange];

  if (v51)
  {
    v52 = [MEMORY[0x277CBEAA8] date];
    [v52 timeIntervalSince1970];
    [v51 setRenderEndTime:?];

    [v51 setRenderStartTime:v20];
    v53 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
    [v53 addDOMChange:v51];
  }

  [(SUUIDocumentContainerViewController *)self _submitPageRenderIfPossible];
}

- (void)documentScrollToTop:(id)a3
{
  v3 = [(SUUIDocumentContainerViewController *)self contentScrollView];
  if (v3)
  {
    v7 = v3;
    [v3 contentOffset];
    v5 = v4;
    [v7 contentInset];
    [v7 setContentOffset:0 animated:{v5, -v6}];
    v3 = v7;
  }
}

- (id)impressionableViewElementsForDocument:(id)a3
{
  v3 = self->_childViewController;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UIViewController *)v3 impressionableViewElements];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)documentDidSendMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v8 = [v5 objectForKeyedSubscript:0x286AFEBC0];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:0x286AFEBE0];

  if ([v8 isEqualToString:0x286AFEB20])
  {
    [(SUUIDocumentContainerViewController *)self _onReportPlatformJsonTimes:v7];
  }

  else if ([v8 isEqualToString:0x286AFEB40])
  {
    [(SUUIDocumentContainerViewController *)self _onReportDOMChange:v7];
  }

  else if ([v8 isEqualToString:0x286AFEB60])
  {
    [(SUUIDocumentContainerViewController *)self _onReportRequestTimes:v7];
  }

  else if ([v8 isEqualToString:0x286AFEB80])
  {
    [(SUUIDocumentContainerViewController *)self _onReportDocumentReady:v7];
  }
}

- (void)resourceLoaderDidBeginLoading:(id)a3
{
  v4 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
  [v4 resourceRequestStartTime];
  v6 = v5;

  if (v6 < 2.22044605e-16)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    [v7 timeIntervalSince1970];
    v9 = v8;
    v10 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
    [v10 setResourceRequestStartTime:v9];
  }

  v11 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
  [v11 setResourceRequestEndTime:0.0];
}

- (void)resourceLoader:(id)a3 didLoadAllForReason:(int64_t)a4
{
  v15 = a3;
  if (a4 == 1)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSince1970];
    v8 = v7;
    v9 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
    [v9 setResourceRequestOnScreenEndTime:v8];
  }

  if ([v15 isIdle])
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    [v10 timeIntervalSince1970];
    v12 = v11;
    v13 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
    [v13 setResourceRequestEndTime:v12];

    [(SUUIDocumentContainerViewController *)self _submitPageRenderIfPossible];
  }

  else
  {
    v14 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
    [v14 setResourceRequestEndTime:0.0];
  }
}

- (id)mediaQueryEvaluator:(id)a3 valueForKey:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:0x286AECA60])
  {
    v6 = MEMORY[0x277CCABB0];
    height = self->_viewSize.height;
LABEL_5:
    v8 = [v6 numberWithDouble:height];
    goto LABEL_6;
  }

  if ([v5 isEqualToString:0x286AECB20])
  {
    v6 = MEMORY[0x277CCABB0];
    height = self->_viewSize.width;
    goto LABEL_5;
  }

  if ([v5 isEqualToString:0x286AFFE40])
  {
    v10 = [MEMORY[0x277D7FD00] sharedInstance];
    v8 = SUUIMediaQueryNetworkTypeString([v10 networkType]);
  }

  else
  {
    v8 = 0;
  }

LABEL_6:

  return v8;
}

- (void)mediaQueryEvaluatorDidChange:(id)a3
{
  [(SUUIMediaQueryEvaluator *)self->_mediaQueryEvaluator setDelegate:self];
  mediaQueryEvaluator = self->_mediaQueryEvaluator;
  self->_mediaQueryEvaluator = 0;

  [(IKAppDocument *)self->_document setViewElementStylesDirty];
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_286BCFAE8])
  {
    v5 = objc_opt_respondsToSelector();
    childViewController = self->_childViewController;
    document = self->_document;
    if (v5)
    {

      [(UIViewController *)childViewController documentMediaQueriesDidUpdate:document];
    }

    else
    {

      [(UIViewController *)childViewController documentDidUpdate:document];
    }
  }
}

- (void)getModalSourceViewForElementIdentifier:(id)a3 completionBlock:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SUUINavigationBarController *)self->_navigationBarController barButtonItemForElementIdentifier:v10];
  if (v7)
  {
    v8 = objc_alloc_init(SUUIModalSourceViewProvider);
    [(SUUIModalSourceViewProvider *)v8 setSourceButtonBarItem:v7];
    v6[2](v6, v8);
  }

  else
  {
    v8 = [(SUUINavigationBarController *)self->_navigationBarController viewForElementIdentifier:v10];
    if (v8)
    {
      v9 = objc_alloc_init(SUUIModalSourceViewProvider);
      [(SUUIModalSourceViewProvider *)v9 setOriginalSourceView:v8];
      v6[2](v6, v9);
    }

    else if (([(UIViewController *)self->_childViewController conformsToProtocol:&unk_286C43A28]& 1) != 0)
    {
      [(UIViewController *)self->_childViewController getModalSourceViewForElementIdentifier:v10 completionBlock:v6];
    }

    else
    {
      v6[2](v6, 0);
    }
  }
}

- (id)additionalLeftBarButtonItemForNavigationBarController:(id)a3
{
  v4 = [(SUUIViewController *)self clientContext];
  v5 = [v4 additionalLeftBarButtonItemForDocumentContainerViewController:self];

  return v5;
}

- (id)additionalRightBarButtonItemForNavigationBarController:(id)a3
{
  v4 = [(SUUIViewController *)self clientContext];
  v5 = [v4 additionalRightBarButtonItemForDocumentContainerViewController:self];

  return v5;
}

- (id)navigationBarTitleTextTintColor
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIViewController *)self->_childViewController navigationBarTitleTextTintColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)navigationBarTintAdjustmentMode
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  childViewController = self->_childViewController;

  return [(UIViewController *)childViewController navigationBarTintAdjustmentMode];
}

- (id)navigationBarTintColor
{
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_286C33488])
  {
    v3 = [(UIViewController *)self->_childViewController navigationBarTintColor];
  }

  else
  {
    v4 = [(SUUIDocumentContainerViewController *)self _navigationBarViewElement];
    v3 = [v4 tintColor];
  }

  return v3;
}

- (BOOL)prefersNavigationBarBackgroundViewHidden
{
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_286C33488])
  {
    childViewController = self->_childViewController;

    return [(UIViewController *)childViewController prefersNavigationBarBackgroundViewHidden];
  }

  else
  {
    v5 = [(SUUIDocumentContainerViewController *)self _navigationBarViewElement];
    v6 = [v5 isTransparent];

    return v6;
  }
}

- (BOOL)prefersNavigationBarHidden
{
  if (![(UIViewController *)self->_childViewController conformsToProtocol:&unk_286C33488]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  childViewController = self->_childViewController;

  return [(UIViewController *)childViewController prefersNavigationBarHidden];
}

- (UIView)navigationPaletteView
{
  v3 = [(SUUINavigationBarController *)self->_navigationBarController navigationPaletteView];
  if (!v3)
  {
    if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_286BCFAE8]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      v3 = [(UIViewController *)self->_childViewController navigationPaletteView];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)scrollingTabAppearanceStatusWasUpdated:(id)a3
{
  p_scrollingTabAppearanceStatus = &self->_scrollingTabAppearanceStatus;
  self->_scrollingTabAppearanceStatus = a3;
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_286BCF800])
  {
    childViewController = self->_childViewController;
    progress = p_scrollingTabAppearanceStatus->progress;
    v7 = *&p_scrollingTabAppearanceStatus->isBouncingOffTheEdge;

    [(UIViewController *)childViewController scrollingTabAppearanceStatusWasUpdated:*&progress, v7];
  }
}

- (UIScrollView)scrollingTabNestedPagingScrollView
{
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_286BCF8D8])
  {
    v3 = [(UIViewController *)self->_childViewController scrollingTabNestedPagingScrollView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)scrollingTabViewControllerInNestedPagingScrollViewAtPageIndex:(unint64_t)a3
{
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_286BCF8D8])
  {
    v5 = [(UIViewController *)self->_childViewController scrollingTabViewControllerInNestedPagingScrollViewAtPageIndex:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)performTestWithName:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_286BF6B10])
  {
    v8 = [(UIViewController *)self->_childViewController performTestWithName:v6 options:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_onReportPlatformJsonTimes:(id)a3
{
  v18 = a3;
  v4 = [v18 objectForKeyedSubscript:@"jsonParseStartTime"];
  if (v4)
  {
    v5 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
    [v5 platformJsonParseStartTime];
    v7 = v6;

    if (v7 < 2.22044605e-16)
    {
      [SUUIMetricsUtilities timeIntervalFromJSTime:v4];
      v9 = v8;
      v10 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
      [v10 setPlatformJsonParseStartTime:v9];
    }
  }

  v11 = [v18 objectForKeyedSubscript:@"jsonParseEndTime"];
  if (v11)
  {
    v12 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
    [v12 platformJsonParseEndTime];
    v14 = v13;

    if (v14 < 2.22044605e-16)
    {
      [SUUIMetricsUtilities timeIntervalFromJSTime:v11];
      v16 = v15;
      v17 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
      [v17 setPlatformJsonParseEndTime:v16];
    }
  }
}

- (void)_onReportDOMChange:(id)a3
{
  v4 = a3;
  v6 = [[SUUIMetricsDOMChange alloc] initWithReportDomBuildTimesMessagePayload:v4];

  if (v6)
  {
    v5 = [(SUUIDocumentContainerViewController *)self domChangeTimingQueue];
    [v5 addPendingChange:v6];
  }
}

- (void)_onReportRequestTimes:(id)a3
{
  v7 = a3;
  v4 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];

  if (v4)
  {
    v5 = [[SUUIMetricsRequestInfo alloc] initWithReportRequestTimesMessagePayload:v7];
    if (v5)
    {
      v6 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
      [v6 addRequest:v5];
    }
  }
}

- (void)_onReportDocumentReady:(id)a3
{
  v20 = a3;
  v4 = [v20 objectForKeyedSubscript:@"clientCorrelationKey"];

  if (v4)
  {
    v5 = [v20 objectForKeyedSubscript:@"clientCorrelationKey"];
    v6 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
    [v6 setClientCorrelationKey:v5];
  }

  v7 = [v20 objectForKeyedSubscript:@"metricsBase"];

  if (v7)
  {
    v8 = [v20 objectForKeyedSubscript:@"metricsBase"];
    v9 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
    [v9 setMetricsBase:v8];
  }

  v10 = [v20 objectForKeyedSubscript:@"documentReadyTime"];

  if (v10)
  {
    v11 = [v20 objectForKeyedSubscript:@"documentReadyTime"];
    [SUUIMetricsUtilities timeIntervalFromJSTime:v11];
  }

  else
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    [v11 timeIntervalSince1970];
  }

  v13 = v12;
  v14 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
  [v14 setPageUserReadyTime:v13];

  v15 = [v20 objectForKeyedSubscript:@"userInteractionTime"];

  if (v15)
  {
    v16 = [v20 objectForKeyedSubscript:@"userInteractionTime"];
    [SUUIMetricsUtilities timeIntervalFromJSTime:v16];
    v18 = v17;
    v19 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
    [v19 setPageRequestedTime:v18];
  }

  [(SUUIDocumentContainerViewController *)self _submitPageRenderIfPossible];
}

- (void)_submitPageRenderIfPossible
{
  v14 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
  if ([v14 isReadyForSubmission])
  {
    v3 = [(SUUIDocumentContainerViewController *)self domChangeTimingQueue];
    v4 = [v3 isEmpty];

    if (v4)
    {
      v5 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
      v6 = [(SUUIViewController *)self clientContext];
      [v5 appendSamplingPropertiesFromClientContext:v6];

      v7 = [(SUUIViewController *)self clientContext];
      v8 = [v7 _applicationController];
      v9 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
      [v8 recordMetricsEvent:v9 flushImmediately:0];

      if (+[SUUIMetricsUtilities shouldLogTimingMetrics])
      {
        SSDebugLevel();
        SSDebugFileLevel();
        v13 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
        SSDebugLog();
      }

      if (+[SUUIMetricsUtilities showEventNotifications])
      {
        v10 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
        v11 = +[SUUIStatusBarAlertCenter sharedCenter];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __66__SUUIDocumentContainerViewController__submitPageRenderIfPossible__block_invoke;
        v15[3] = &unk_2798F5BE8;
        v16 = v10;
        v12 = v10;
        [v11 showMessage:@"Page Rendered" withStyle:0 forDuration:v15 actionBlock:0.0];
      }

      [(SUUIDocumentContainerViewController *)self setPageRenderEvent:0];
      [(SUUIDocumentContainerViewController *)self setDomChangeTimingQueue:0];
    }
  }

  else
  {
  }
}

- (void)_reloadNavigationItemContents
{
  if ([(SUUIDocumentContainerViewController *)self _shouldFillNavigationBarContentsBasedOnNavigationBarViewElement])
  {
    v3 = [(SUUIDocumentContainerViewController *)self navigationItem];
    [(SUUINavigationBarController *)self->_navigationBarController detachFromNavigationItem:v3];
    [(SUUINavigationBarController *)self->_navigationBarController attachToNavigationItem:v3];
  }
}

- (void)_networkTypeChangeNotification:(id)a3
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 5000000000);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SUUIDocumentContainerViewController__networkTypeChangeNotification___block_invoke;
  v4[3] = &unk_2798F67A0;
  objc_copyWeak(&v5, &location);
  dispatch_after(v3, MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __70__SUUIDocumentContainerViewController__networkTypeChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadPageData];
}

- (void)_SUUI_applicationDidEnterBackground:(id)a3
{
  v4 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    [v5 timeIntervalSince1970];
    v7 = v6;
    v8 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
    [v8 setPageDisappearTime:v7];
  }

  if (SUUIViewControllerIsVisible(self))
  {
    [(IKAppDocument *)self->_document onDisappear];
  }

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *MEMORY[0x277D76758];
  [v10 removeObserver:self name:*MEMORY[0x277D76758] object:0];
  [v10 addObserver:self selector:sel__SUUI_applicationWillEnterForeground_ name:v9 object:0];
}

- (void)_SUUI_applicationWillEnterForeground:(id)a3
{
  if (SUUIViewControllerIsVisible(self))
  {
    [(IKAppDocument *)self->_document onAppear];
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76758] object:0];
}

- (void)_enqueueLoadURLOperation
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:self->_urlString];
  v4 = [(SUUIViewController *)self clientContext];
  v5 = [v4 newLoadStoreURLOperationWithURL:v3];
  loadURLOperation = self->_loadURLOperation;
  self->_loadURLOperation = v5;

  v7 = self->_loadURLOperation;
  v8 = +[(SSVURLDataConsumer *)SUUIURLResolverDataConsumer];
  [(SSVLoadURLOperation *)v7 setDataConsumer:v8];

  objc_initWeak(&location, self);
  v9 = self->_loadURLOperation;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __63__SUUIDocumentContainerViewController__enqueueLoadURLOperation__block_invoke;
  v24 = &unk_2798FE578;
  objc_copyWeak(&v25, &location);
  [(SSVLoadURLOperation *)v9 setOutputBlock:&v21];
  v10 = [MEMORY[0x277D69B38] sharedConfig];
  v11 = [v10 shouldLog];
  v12 = [v10 shouldLogToDisk];
  v13 = [v10 OSLogObject];
  v14 = v13;
  if (v12)
  {
    v11 |= 2u;
  }

  if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  v15 = objc_opt_class();
  urlString = self->_urlString;
  v27 = 138412546;
  v28 = v15;
  v29 = 2112;
  v30 = urlString;
  v17 = v15;
  LODWORD(v20) = 22;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v27, v20, v21, v22, v23, v24}];
    free(v18);
    SSFileLog();
LABEL_8:
  }

  v19 = [(SUUIViewController *)self operationQueue];
  [v19 addOperation:self->_loadURLOperation];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __63__SUUIDocumentContainerViewController__enqueueLoadURLOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SUUIDocumentContainerViewController__enqueueLoadURLOperation__block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __63__SUUIDocumentContainerViewController__enqueueLoadURLOperation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishLoadOperationWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_finishLegacyProtocolOperationForResponse:(id)a3 dataProvider:(id)a4 dictionary:(id)a5
{
  v21 = a3;
  v8 = a5;
  v9 = [a4 redirectURL];
  if (v9)
  {
    [(SUUIDocumentContainerViewController *)self _redirectToURL:v9];
  }

  else
  {
    v10 = [v21 URLResponse];
    v11 = [v10 URL];
    v12 = [v11 absoluteString];
    urlString = self->_urlString;
    self->_urlString = v12;

    [(SUUIDocumentContainerViewController *)self _setChildViewController:0];
    v14 = [v8 objectForKey:*MEMORY[0x277D7FD78]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v15 = [objc_alloc(MEMORY[0x277D7FCE8]) initWithDialogDictionary:v14], v16 = objc_msgSend(v15, "kind"), v15, v16 != 1))
    {
      v17 = [(SUUIViewController *)self clientContext];
      document = self->_document;
      v19 = [v21 data];
      v20 = [v21 URLResponse];
      [v17 sendOnPageResponseWithDocument:document data:v19 URLResponse:v20 performanceMetrics:0];
    }
  }
}

- (void)_finishLoadOperationWithResponse:(id)a3 error:(id)a4
{
  v111 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v93 = v7;
  if (!v6 || v7)
  {
    v34 = [MEMORY[0x277D69B38] sharedConfig];
    v35 = [v34 shouldLog];
    if ([v34 shouldLogToDisk])
    {
      v36 = v35 | 2;
    }

    else
    {
      v36 = v35;
    }

    v37 = [v34 OSLogObject];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v36;
    }

    else
    {
      v38 = v36 & 2;
    }

    if (v38)
    {
      v39 = objc_opt_class();
      urlString = self->_urlString;
      *location = 138412802;
      *&location[4] = v39;
      v107 = 2112;
      v108 = v93;
      v109 = 2112;
      v110 = urlString;
      v41 = v39;
      LODWORD(v90) = 32;
      v89 = location;
      v42 = _os_log_send_and_compose_impl();

      if (v42)
      {
        v43 = [MEMORY[0x277CCACA8] stringWithCString:v42 encoding:{4, location, v90}];
        free(v42);
        v89 = v43;
        SSFileLog();
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_beforeErrorChildViewController, self->_childViewController);
    v53 = [(UIViewController *)self->_beforeErrorChildViewController view];
    v54 = [v53 backgroundColor];

    if (!v54)
    {
      v55 = [(SUUIDocumentContainerViewController *)self view];
      v54 = [v55 backgroundColor];
    }

    v56 = [SUUIErrorDocumentViewController alloc];
    v57 = [(SUUIViewController *)self clientContext];
    v58 = [(SUUIErrorDocumentViewController *)v56 initWithBackgroundColor:v54 clientContext:v57];

    objc_initWeak(location, self);
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __78__SUUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke;
    v102[3] = &unk_2798F67A0;
    objc_copyWeak(&v103, location);
    [(SUUIErrorDocumentViewController *)v58 setRetryActionBlock:v102];
    [(SUUIDocumentContainerViewController *)self _setChildViewController:v58];
    v59 = +[SUUIMetricsUtilities newErrorPageEvent];
    [v59 setPageURL:self->_urlString];
    [v59 setPageType:@"SUUIDocumentContainerViewController"];
    v60 = [(SUUIViewController *)self clientContext];
    v61 = [v60 _applicationController];
    [v61 recordMetricsEvent:v59 flushImmediately:0];

    v62 = [MEMORY[0x277CCAB98] defaultCenter];
    v63 = [MEMORY[0x277D7FD00] sharedInstance];
    [v62 addObserver:self selector:sel__networkTypeChangeNotification_ name:*MEMORY[0x277D7FCC0] object:v63];

    objc_destroyWeak(&v103);
    objc_destroyWeak(location);
  }

  else
  {
    v92 = [v6 URLResponse];
    v8 = [v92 allHeaderFields];
    v9 = ISDictionaryValueForCaseInsensitiveString();

    if (!v9)
    {
      v9 = [v92 MIMEType];
    }

    v10 = [(SSVLoadURLOperation *)self->_loadURLOperation metricsPageEvent];
    if (v10)
    {
      v11 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
      v12 = [v11 clientCorrelationKey];

      if (!v12)
      {
        v13 = [v10 clientCorrelationKey];
        v14 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
        [v14 setClientCorrelationKey:v13];

        [v10 requestStartTime];
        v16 = v15;
        v17 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
        [v17 setPlatformRequestStartTime:v16];

        [v10 responseStartTime];
        v19 = v18;
        v20 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
        [v20 setPlatformResponseStartTime:v19];

        [v10 responseEndTime];
        v22 = v21;
        v23 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
        [v23 setPlatformResponseEndTime:v22];

        v24 = [v10 isCachedResponse];
        v25 = [(SUUIDocumentContainerViewController *)self pageRenderEvent];
        [v25 setPlatformResponseWasCached:v24];
      }
    }

    if ([v9 rangeOfString:@"itml" options:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v9 rangeOfString:@"application/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v9 rangeOfString:@"html" options:1] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v9 rangeOfString:@"text/xml" options:1] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v26 = MEMORY[0x277CCAC58];
            v27 = [v6 data];
            v28 = [v26 propertyListWithData:v27 options:0 format:0 error:0];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [v28 objectForKey:@"page-type"];
              if (v29 && ([v28 objectForKey:@"items"], v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v30))
              {
                v31 = objc_alloc_init(MEMORY[0x277D7FE98]);
                [v31 loadFromDictionary:v28];
                v32 = [(SSVLoadURLOperation *)self->_loadURLOperation URLRequest];
                v33 = [v6 URLResponse];
                [(SUUIDocumentContainerViewController *)self _showLegacyStorePageWithRequest:v32 page:v31 pageType:0 URLResponse:v33];
              }

              else
              {
                v82 = [objc_alloc(MEMORY[0x277D7FD28]) initWithPropertyList:v28];
                v83 = [MEMORY[0x277D7FD30] provider];
                [v83 setShouldProcessAuthenticationDialogs:1];
                [v83 setShouldProcessDialogs:0];
                v84 = [MEMORY[0x277D69A20] defaultStore];
                v91 = [v84 activeAccount];

                if (v91)
                {
                  v85 = [objc_alloc(MEMORY[0x277D69A58]) initWithAccount:v91];
                  [v83 setAuthenticationContext:v85];
                }

                [v82 setDataProvider:v83];
                objc_initWeak(location, v82);
                objc_initWeak(&from, self);
                v94[0] = MEMORY[0x277D85DD0];
                v94[1] = 3221225472;
                v94[2] = __78__SUUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_2_261;
                v94[3] = &unk_2798FE5A0;
                objc_copyWeak(&v97, location);
                objc_copyWeak(&v98, &from);
                v95 = v6;
                v96 = v28;
                [v82 setCompletionBlock:v94];
                v86 = [(SUUIViewController *)self operationQueue];
                [v86 addOperation:v82];

                objc_destroyWeak(&v98);
                objc_destroyWeak(&v97);
                objc_destroyWeak(&from);
                objc_destroyWeak(location);
              }
            }
          }
        }

        else
        {
          v79 = [v6 URLResponse];
          v80 = [v79 URL];
          v81 = +[SUUIClientContext amsBag];
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = __78__SUUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_243;
          v100[3] = &unk_2798FBB00;
          v100[4] = self;
          v101 = v6;
          [SUUIURLResolver isLegacyWebViewForURL:v80 bag:v81 completion:v100];
        }
      }

      else
      {
        v64 = [SUUILegacyNativeViewController alloc];
        v65 = [v6 data];
        v66 = [(SUUILegacyNativeViewController *)v64 initWithData:v65 fromOperation:self->_loadURLOperation];

        v67 = [(SUUIViewController *)self clientContext];
        [(SUUIViewController *)v66 setClientContext:v67];

        v68 = [(SUUIDocumentContainerViewController *)self navigationItem];
        [(SUUILegacyNativeViewController *)v66 _setExistingNavigationItem:v68];

        [(SUUILegacyNativeViewController *)v66 reloadData];
        [(SUUIDocumentContainerViewController *)self _setChildViewController:v66];
      }
    }

    else
    {
      v44 = [MEMORY[0x277D69B38] sharedConfig];
      v45 = [v44 shouldLog];
      if ([v44 shouldLogToDisk])
      {
        v45 |= 2u;
      }

      v46 = [v44 OSLogObject];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v47 = v45;
      }

      else
      {
        v47 = v45 & 2;
      }

      if (v47)
      {
        v48 = objc_opt_class();
        v49 = self->_urlString;
        *location = 138412546;
        *&location[4] = v48;
        v107 = 2112;
        v108 = v49;
        v50 = v48;
        LODWORD(v90) = 22;
        v89 = location;
        v51 = _os_log_send_and_compose_impl();

        if (v51)
        {
          v52 = [MEMORY[0x277CCACA8] stringWithCString:v51 encoding:{4, location, v90}];
          free(v51);
          v89 = v52;
          SSFileLog();
        }
      }

      else
      {
      }

      v69 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:CFAbsoluteTimeGetCurrent()];
      pageResponseAbsoluteTime = self->_pageResponseAbsoluteTime;
      self->_pageResponseAbsoluteTime = v69;

      v104[0] = @"requestStartTime";
      [v10 requestStartTime];
      v71 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
      v105[0] = v71;
      v104[1] = @"responseStartTime";
      [v10 responseStartTime];
      v72 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
      v105[1] = v72;
      v104[2] = @"responseEndTime";
      [v10 responseEndTime];
      v73 = [SUUIMetricsUtilities jsTimeFromTimeInterval:?];
      v105[2] = v73;
      v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:3];

      v75 = [(SUUIViewController *)self clientContext];
      document = self->_document;
      v77 = [v6 data];
      v78 = [v6 URLResponse];
      [v75 sendOnPageResponseWithDocument:document data:v77 URLResponse:v78 performanceMetrics:v74];
    }

    v87 = self->_urlString;
    self->_urlString = 0;
  }

  [(SSVLoadURLOperation *)self->_loadURLOperation setOutputBlock:0, v89];
  loadURLOperation = self->_loadURLOperation;
  self->_loadURLOperation = 0;
}

void __78__SUUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _reloadPageData];
    v2 = +[SUUIMetricsUtilities newErrorRetryClickEvent];
    [v2 setPageURL:v5[156]];
    [v2 setPageType:@"SUUIDocumentContainerViewController"];
    v3 = [v5 clientContext];
    v4 = [v3 _applicationController];
    [v4 recordMetricsEvent:v2 flushImmediately:0];

    WeakRetained = v5;
  }
}

void __78__SUUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_243(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__SUUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_2;
    block[3] = &unk_2798F5AF8;
    v3 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);

    return;
  }

  v4 = [MEMORY[0x277D69B38] sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 & 2;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v12[0] = 0;
  LODWORD(v10) = 2;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, v12, v10}];
    free(v9);
    SSFileLog();
LABEL_12:
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__SUUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_244;
  v11[3] = &unk_2798F5BE8;
  v11[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __78__SUUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [v2[139] URLRequest];
  v3 = [*(a1 + 40) data];
  v4 = [*(a1 + 40) URLResponse];
  [v2 _showLegacyStorePageWithRequest:v5 page:v3 pageType:1 URLResponse:v4];
}

void __78__SUUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_244(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SSError();
  [v1 _finishLoadOperationWithResponse:0 error:v2];
}

void __78__SUUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_2_261(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __78__SUUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_3;
  v7 = &unk_2798F67C8;
  objc_copyWeak(&v11, a1 + 7);
  v8 = a1[4];
  v3 = WeakRetained;
  v9 = v3;
  v10 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], &v4);
  [v3 setCompletionBlock:{0, v4, v5, v6, v7}];

  objc_destroyWeak(&v11);
}

void __78__SUUIDocumentContainerViewController__finishLoadOperationWithResponse_error___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dataProvider];
  [WeakRetained _finishLegacyProtocolOperationForResponse:v2 dataProvider:v3 dictionary:*(a1 + 48)];
}

- (id)_navigationBarViewElement
{
  if ([(SUUIDocumentContainerViewController *)self _shouldFillNavigationBarContentsBasedOnNavigationBarViewElement])
  {
    v3 = [(IKAppDocument *)self->_document navigationBarElement];
    if (!v3)
    {
      v4 = [(IKAppDocument *)self->_document templateElement];
      if (objc_opt_respondsToSelector())
      {
        v3 = [v4 navigationBarElement];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_newViewControllerWithTemplateElement:(id)a3 options:(id)a4 clientContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SUUIViewController *)self clientContext];
  v12 = [v11 documentViewControllerForTemplateViewElement:v8];

  if (!v12)
  {
    v13 = [v9 objectForKey:@"type"];
    v14 = [v13 isEqual:0x286AFDC80];
    v15 = [v8 elementType];
    if (v15 <= 82)
    {
      if (v15 <= 36)
      {
        if (v15 > 26)
        {
          if (v15 == 27)
          {
            v16 = SUUIContentUnavailableDocumentViewController;
            goto LABEL_43;
          }

          if (v15 == 34)
          {
            v16 = SUUIEditorDocumentViewController;
            goto LABEL_43;
          }
        }

        else
        {
          if (v15 == 17)
          {
            v19 = v8;
            v20 = [v19 type];
            v21 = [v20 isEqualToString:@"modern"];

            v22 = off_2798F40A8;
            if (!v21)
            {
              v22 = off_2798F3DA8;
            }

            v12 = [objc_alloc(*v22) initWithTemplateElement:v19];

            goto LABEL_45;
          }

          if (v15 == 25)
          {
            v16 = SUUICommentDocumentViewController;
LABEL_43:
            v18 = [[v16 alloc] initWithTemplateElement:v8];
            goto LABEL_44;
          }
        }

        goto LABEL_45;
      }

      if (v15 <= 70)
      {
        if (v15 == 37)
        {
          v16 = SUUIExploreDocumentViewController;
          goto LABEL_43;
        }

        if (v15 == 65)
        {
          v16 = SUUILoadingDocumentViewController;
          goto LABEL_43;
        }

LABEL_45:

        goto LABEL_46;
      }

      if (v15 == 71)
      {
        v16 = SUUIMenuBarTemplateDocumentViewController;
        goto LABEL_43;
      }

      if (v15 != 78)
      {
        goto LABEL_45;
      }

      goto LABEL_30;
    }

    if (v15 > 120)
    {
      if (v15 <= 131)
      {
        if (v15 == 121)
        {
          v16 = SUUISignInDocumentViewController;
          goto LABEL_43;
        }

        if (v15 != 129)
        {
          goto LABEL_45;
        }

        v17 = SUUISplitViewDocumentViewController;
        goto LABEL_27;
      }

      if (v15 != 132)
      {
        if (v15 == 148)
        {
          v16 = SUUITrendingSearchDocumentViewController;
          goto LABEL_43;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v15 <= 92)
      {
        if (v15 == 83)
        {
          v16 = SUUIPanelDocumentViewController;
          goto LABEL_43;
        }

        if (v15 != 85)
        {
          goto LABEL_45;
        }

LABEL_30:
        v18 = [[SUUIPhysicalCirclesDocumentViewController alloc] initWithPhysicalCirclesTemplateViewElement:v8];
        goto LABEL_44;
      }

      if (v15 != 93)
      {
        if (v15 != 115)
        {
          goto LABEL_45;
        }

        v17 = SUUISettingsDocumentViewController;
LABEL_27:
        v18 = [[v17 alloc] initWithTemplateElement:v8 clientContext:v10];
LABEL_44:
        v12 = v18;
        goto LABEL_45;
      }
    }

    v18 = [[SUUIStackDocumentViewController alloc] initWithTemplateElement:v8 layoutStyle:v14];
    goto LABEL_44;
  }

LABEL_46:
  [v12 setClientContext:v10];

  return v12;
}

- (void)_redirectToURL:(id)a3
{
  loadURLOperation = self->_loadURLOperation;
  v5 = a3;
  [(SSVLoadURLOperation *)loadURLOperation setOutputBlock:0];
  [(SSVLoadURLOperation *)self->_loadURLOperation cancel];
  v6 = self->_loadURLOperation;
  self->_loadURLOperation = 0;

  v7 = [v5 absoluteString];

  urlString = self->_urlString;
  self->_urlString = v7;

  [(SUUIDocumentContainerViewController *)self _enqueueLoadURLOperation];
}

- (void)_reloadDefaultBarButtonItems
{
  v10 = [(SUUIDocumentContainerViewController *)self navigationItem];
  v3 = self->_childViewController;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UIViewController *)v3 leftBarButtonItemsForDocument:self->_document];
  }

  else
  {
    v4 = 0;
  }

  defaultLeftBarButtonItems = self->_defaultLeftBarButtonItems;
  if (defaultLeftBarButtonItems != v4 && ![(NSArray *)defaultLeftBarButtonItems isEqualToArray:v4])
  {
    v6 = [v10 leftBarButtonItems];
    v7 = [v6 mutableCopy];

    if (v7)
    {
      if (self->_defaultLeftBarButtonItems)
      {
        [v7 removeObjectsInArray:?];
      }
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v8 = [(NSArray *)v4 copy];
    v9 = self->_defaultLeftBarButtonItems;
    self->_defaultLeftBarButtonItems = v8;

    if (![v7 count] && -[NSArray count](self->_defaultLeftBarButtonItems, "count"))
    {
      [v7 addObjectsFromArray:self->_defaultLeftBarButtonItems];
    }

    [v10 setLeftBarButtonItems:v7 animated:0];
  }
}

- (void)_reloadPageData
{
  if (self->_urlString)
  {
    if (!self->_loadURLOperation)
    {
      v3 = [MEMORY[0x277D7FD00] sharedInstance];
      v4 = [v3 networkType];

      if (v4)
      {
        v6 = [MEMORY[0x277CCAB98] defaultCenter];
        [v6 removeObserver:self name:*MEMORY[0x277D7FCC0] object:0];
        [(SUUIDocumentContainerViewController *)self _setChildViewController:self->_beforeErrorChildViewController];
        beforeErrorChildViewController = self->_beforeErrorChildViewController;
        self->_beforeErrorChildViewController = 0;

        [(SUUIDocumentContainerViewController *)self _enqueueLoadURLOperation];
      }
    }
  }
}

- (void)_reloadNavigationBarControllerIfNeeded
{
  if (self->_navigationBarController)
  {

    [(SUUIDocumentContainerViewController *)self _reloadNavigationPalette];
  }

  else
  {
    [(SUUIDocumentContainerViewController *)self _reloadNavigationBarController];
    [(SUUIDocumentContainerViewController *)self _reloadDefaultBarButtonItems];

    [(SUUIDocumentContainerViewController *)self _reloadToolbar];
  }
}

- (void)_reloadNavigationBarController
{
  v16 = [(SUUIDocumentContainerViewController *)self _navigationBarViewElement];
  v3 = [(SUUIDocumentContainerViewController *)self navigationItem];
  navigationBarController = self->_navigationBarController;
  if (navigationBarController)
  {
    v5 = [(SUUINavigationBarController *)navigationBarController existingSearchBarControllers];
    searchBarControllers = self->_searchBarControllers;
    self->_searchBarControllers = v5;

    if (self->_makeSearchBarFirstResponderOnLoad)
    {
      v7 = [(NSArray *)self->_searchBarControllers firstObject];
      self->_makeSearchBarFirstResponderOnLoad = 0;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v16 firstChildForElementType:106];

    v10 = self->_navigationBarController;
    if (v9)
    {
      [(SUUINavigationBarController *)v10 detachNavigationItemControllers];
      v8 = 1;
    }

    else
    {
      [(SUUINavigationBarController *)v10 detachFromNavigationItem:v3];
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_286BCF968])
  {
    v11 = [(UIViewController *)self->_childViewController navigationBarControllerWithViewElement:v16];
    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v16)
  {
    v11 = [[SUUINavigationBarController alloc] initWithNavigationBarViewElement:v16];
  }

LABEL_15:
  if (v11)
  {
    v12 = [(SUUIViewController *)self clientContext];
    [(SUUINavigationBarController *)v11 setClientContext:v12];

    [(SUUINavigationBarController *)v11 setDelegate:self];
    [(SUUINavigationBarController *)v11 setParentViewController:self];
    [(SUUINavigationBarController *)v11 setReusableSearchBarControllers:self->_searchBarControllers];
    [(SUUINavigationBarController *)v11 attachToNavigationItem:v3];
  }

  else if (v8)
  {
    [(SUUINavigationBarController *)self->_navigationBarController detachFromNavigationItem:v3];
  }

  v13 = self->_navigationBarController;
  self->_navigationBarController = v11;

  if ([v7 canBecomeActive])
  {
    [v7 becomeActive];
    if (self->_selectSearchBarContentOnBecomingFirstResponder)
    {
      v14 = [v7 searchBar];
      v15 = [v14 searchField];
      [v15 selectAll:0];

      self->_selectSearchBarContentOnBecomingFirstResponder = 0;
    }
  }

  [(SUUIDocumentContainerViewController *)self _reloadNavigationPalette];
}

- (void)_reloadNavigationPalette
{
  v8 = [(SUUIDocumentContainerViewController *)self navigationController];
  v3 = [v8 topViewController];

  if (v3 == self)
  {
    v4 = [(SUUIViewController *)self clientContext];
    v5 = [SUUINavigationControllerAssistant assistantForNavigationController:v8 clientContext:v4];

    v6 = [(SUUIDocumentContainerViewController *)self navigationPaletteView];
    [v5 setPaletteView:v6 animated:0];
    v7 = [(SUUIDocumentContainerViewController *)self _navigationBarViewElement];
    [v5 setHidesShadow:{objc_msgSend(v7, "hidesShadow")}];
  }
}

- (void)_reloadToolbar
{
  v7 = [(SUUIDocumentContainerViewController *)self _toolbarViewElement];
  v3 = [(SUUIDocumentContainerViewController *)self navigationController];
  v4 = [[SUUIToolbarController alloc] initWithToolbarViewElement:v7];
  v5 = v4;
  if (v4)
  {
    [(SUUIToolbarController *)v4 setDelegate:self];
    [(SUUIToolbarController *)v5 updateToolbarForNavigationController:v3];
  }

  toolbarController = self->_toolbarController;
  self->_toolbarController = v5;
}

- (void)_sendOnViewAttributesChangeWithAttributes:(id)a3 viewWillAppear:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__SUUIDocumentContainerViewController__sendOnViewAttributesChangeWithAttributes_viewWillAppear___block_invoke;
  aBlock[3] = &unk_2798FE5C8;
  objc_copyWeak(&v18, &location);
  v19 = a4;
  aBlock[4] = self;
  v7 = v6;
  v17 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [MEMORY[0x277D75128] sharedApplication];
  v10 = [v9 applicationState];

  if (v10 == 2)
  {
    pendingSizeTransitionCompletion = self->_pendingSizeTransitionCompletion;
    v12 = _Block_copy(v8);
    v13 = self->_pendingSizeTransitionCompletion;
    self->_pendingSizeTransitionCompletion = v12;

    if (!pendingSizeTransitionCompletion)
    {
      v14 = dispatch_time(0, 100000000);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __96__SUUIDocumentContainerViewController__sendOnViewAttributesChangeWithAttributes_viewWillAppear___block_invoke_2;
      v15[3] = &unk_2798F5BE8;
      v15[4] = self;
      dispatch_after(v14, MEMORY[0x277D85CD0], v15);
    }
  }

  else
  {
    v8[2](v8);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __96__SUUIDocumentContainerViewController__sendOnViewAttributesChangeWithAttributes_viewWillAppear___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained isViewLoaded])
  {
    v3 = [WeakRetained view];
    v4 = [v3 window];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = *(a1 + 56);
    }
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (SUUIAllowsLandscapePhone() & v5)
  {
LABEL_11:
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 1088);
    v11[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v9 onViewAttributesChangeWithArguments:v10 completion:0];
  }

LABEL_12:
}

void __96__SUUIDocumentContainerViewController__sendOnViewAttributesChangeWithAttributes_viewWillAppear___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) pendingSizeTransitionCompletion];
  if (v4)
  {
    v4[2]();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 1256);
  *(v2 + 1256) = 0;
}

- (void)_setChildViewController:(id)a3
{
  v5 = a3;
  childViewController = self->_childViewController;
  if (childViewController != v5)
  {
    v11 = v5;
    [(UIViewController *)childViewController willMoveToParentViewController:0];
    if ([(UIViewController *)self->_childViewController isViewLoaded])
    {
      v7 = [(UIViewController *)self->_childViewController view];
      [v7 removeFromSuperview];
    }

    [(UIViewController *)self->_childViewController removeFromParentViewController];
    objc_storeStrong(&self->_childViewController, a3);
    [(SUUIDocumentContainerViewController *)self _setNavigationControllerContentInsetAdjustment:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    if (self->_childViewController)
    {
      [(SUUIDocumentContainerViewController *)self addChildViewController:?];
      v8 = self->_childViewController;
      [(SUUIDocumentContainerViewController *)self preferredContentSize];
      [(UIViewController *)v8 setPreferredContentSize:?];
      if ([(SUUIDocumentContainerViewController *)self _appearState]== 1 || [(SUUIDocumentContainerViewController *)self _appearState]== 2)
      {
        [(UIViewController *)self->_childViewController beginAppearanceTransition:1 animated:0];
      }

      v9 = [(SUUIDocumentContainerViewController *)self view];
      v10 = [(UIViewController *)self->_childViewController view];
      [v10 setAutoresizingMask:18];
      [v9 bounds];
      [v10 setFrame:?];
      [v9 insertSubview:v10 atIndex:0];
      [(UIViewController *)self->_childViewController didMoveToParentViewController:self];
      [(UIViewController *)self setNeedsScrollingSegmentContentScrollViewUpdate];
    }

    [(SUUIDocumentContainerViewController *)self _reloadDefaultBarButtonItems];
    childViewController = [(SUUIDocumentContainerViewController *)self setNeedsStatusBarAppearanceUpdate];
    v5 = v11;
  }

  MEMORY[0x2821F96F8](childViewController, v5);
}

- (BOOL)_shouldFillNavigationBarContentsBasedOnNavigationBarViewElement
{
  v3 = [(SUUIDocumentContainerViewController *)self _appearState];
  if (v3)
  {
    v3 = [objc_opt_class() allowsChildViewControllerNavigationBarManagement];
    if (v3)
    {
      v4 = [(SUUIDocumentContainerViewController *)self parentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        LOBYTE(v3) = 0;
      }

      else if ([(UIViewController *)self->_childViewController conformsToProtocol:&unk_286BCFAE8]&& (objc_opt_respondsToSelector() & 1) != 0)
      {
        LOBYTE(v3) = [(UIViewController *)self->_childViewController managesNavigationBarContents]^ 1;
      }

      else
      {
        LOBYTE(v3) = 1;
      }
    }
  }

  return v3;
}

- (void)_showAccountViewControllerWithURL:(id)a3
{
  v4 = a3;
  v5 = [(SUUIViewController *)self clientContext];
  v6 = [v5 clientInterface];
  v7 = [objc_alloc(MEMORY[0x277D7FD90]) initWithExternalAccountURL:v4];

  [v7 setCanMoveToOverlay:0];
  [v7 setClientInterface:v6];
  v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
  if (SUUIUserInterfaceIdiom(v5) == 1)
  {
    [v8 setModalPresentationStyle:2];
  }

  v9 = [(SUUIDocumentContainerViewController *)self transitionCoordinator];
  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__SUUIDocumentContainerViewController__showAccountViewControllerWithURL___block_invoke;
    v10[3] = &unk_2798FBAB0;
    v10[4] = self;
    v11 = v8;
    [v9 animateAlongsideTransition:0 completion:v10];
  }

  else
  {
    [(SUUIDocumentContainerViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_showLegacyStorePageWithRequest:(id)a3 page:(id)a4 pageType:(int64_t)a5 URLResponse:(id)a6
{
  v19 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [(SUUIViewController *)self clientContext];
  v13 = [v12 newLegacyStorePageViewControllerForURLResponse:v19];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277D7FE88]);
  }

  v14 = [v13 clientInterface];

  if (!v14)
  {
    v15 = [v12 clientInterface];
    [v13 setClientInterface:v15];
  }

  [v13 setCanMoveToOverlay:0];
  [v13 setShouldAdjustContentOffsets:0];
  v16 = [(SUUIDocumentContainerViewController *)self navigationItem];
  [v13 _setExistingNavigationItem:v16];

  [v13 setExternalRequest:1];
  [(SUUIDocumentContainerViewController *)self _setChildViewController:v13];
  v17 = [v19 URL];
  [v13 reloadWithStorePage:v10 ofType:a5 forURL:v17];

  v18 = [objc_alloc(MEMORY[0x277D69CA0]) initWithURLRequest:v11];
  [v13 setURLRequestProperties:v18];
}

- (id)_sidepackViewControllerWithOptions:(id)a3 clientContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"sidepackType"];
  if ([v7 isEqualToString:0x286B00C80])
  {
    v8 = [v5 objectForKey:@"sidepackData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SUUIItem alloc] initWithLookupDictionary:v8];
      v10 = SUUIUserInterfaceIdiom(v6);
      v11 = off_2798F3ED8;
      if (v10 != 1)
      {
        v11 = off_2798F3EF0;
      }

      v12 = [objc_alloc(*v11) initWithItem:v9];
      [v12 setClientContext:v6];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(UIViewController *)self->_childViewController animationControllerForPresentedController:v8 presentingController:v9 sourceController:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UIViewController *)self->_childViewController animationControllerForDismissedController:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end