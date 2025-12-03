@interface SUUIExploreDocumentViewController
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (SUUIExploreDocumentViewController)initWithTemplateElement:(id)element;
- (double)_leftColumnWidth;
- (id)_leftPageComponentsAtIndex:(int64_t)index;
- (id)_newSectionsViewControllerAtIndex:(int64_t)index;
- (id)_pageComponentsAtIndex:(int64_t)index;
- (id)_rightPageComponents;
- (id)_rightVCColorScheme;
- (id)_rootNavigationTitle;
- (id)impressionableViewElements;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (void)_beginActiveImpressionsForImpressionableViewElements;
- (void)_contentInsetDidChange:(id)change;
- (void)_getPageComponents:(id *)components title:(id *)title forViewControllerAtIndex:(int64_t)index;
- (void)_reloadData;
- (void)_reloadLeftViewControllers;
- (void)_reloadRightViewController;
- (void)_reloadSelectionForViewController:(id)controller;
- (void)_updateChildViewControllers;
- (void)dealloc;
- (void)documentDidUpdate:(id)update;
- (void)documentMediaQueriesDidUpdate:(id)update;
- (void)loadView;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)selectGenreListComponent:(id)component;
- (void)setClientContext:(id)context;
- (void)stackedBar:(id)bar didSelectItemAtIndex:(int64_t)index;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SUUIExploreDocumentViewController

- (SUUIExploreDocumentViewController)initWithTemplateElement:(id)element
{
  elementCopy = element;
  v11.receiver = self;
  v11.super_class = SUUIExploreDocumentViewController;
  v6 = [(SUUIExploreDocumentViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_exploreTemplate, element);
    v8 = objc_alloc_init(SUUIMetricsImpressionSession);
    activeMetricsImpressionSession = v7->_activeMetricsImpressionSession;
    v7->_activeMetricsImpressionSession = v8;
  }

  return v7;
}

- (void)dealloc
{
  [(CLLocationManager *)self->_locationManager setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIExploreDocumentViewController;
  [(SUUIViewController *)&v3 dealloc];
}

- (void)selectGenreListComponent:(id)component
{
  viewElement = [component viewElement];
  [viewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)setClientContext:(id)context
{
  v5.receiver = self;
  v5.super_class = SUUIExploreDocumentViewController;
  contextCopy = context;
  [(SUUIViewController *)&v5 setClientContext:contextCopy];
  [(SUUIViewController *)self->_rightVC setClientContext:contextCopy, v5.receiver, v5.super_class];
}

- (void)loadView
{
  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(SUUIExploreDocumentViewController *)self setView:v6];
  [(SUUIExploreDocumentViewController *)self _updateChildViewControllers];
  v3 = objc_alloc_init(SUUIContentInsetScrollView);
  contentScrollView = self->_contentScrollView;
  self->_contentScrollView = v3;

  [v6 addSubview:self->_contentScrollView];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentInsetDidChange_ name:0x286AF75C0 object:self->_contentScrollView];

  if ([(SUUIExploreTemplateElement *)self->_exploreTemplate usesSplits])
  {
    [(SUUIExploreDocumentViewController *)self _reloadLeftViewControllers];
    [(SUUIExploreDocumentViewController *)self _reloadRightViewController];
  }

  else
  {
    [(SUUIExploreDocumentViewController *)self _reloadData];
  }
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_rightVC == container)
  {
    [(UISplitViewController *)self->_splitVC primaryColumnWidth];
    v10 = width - v9;
    [(UISplitViewController *)self->_splitVC gutterWidth];
    v7 = v10 - v11;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUIExploreDocumentViewController;
    [(SUUIExploreDocumentViewController *)&v13 sizeForChildContentContainer:size.width withParentContainerSize:size.height];
    height = v8;
  }

  v12 = height;
  result.height = v12;
  result.width = v7;
  return result;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  navigationController = [(SUUIExploreDocumentViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:disappearCopy];

  [(SUUIExploreDocumentViewController *)self _endAllPendingActiveImpression];
  v6.receiver = self;
  v6.super_class = SUUIExploreDocumentViewController;
  [(SUUIExploreDocumentViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  navigationController = [(SUUIExploreDocumentViewController *)self navigationController];
  [navigationController setNavigationBarHidden:-[SUUIExploreTemplateElement usesSplits](self->_exploreTemplate animated:{"usesSplits") ^ 1, appearCopy}];

  [(SUUIExploreDocumentViewController *)self _beginActiveImpressionsForImpressionableViewElements];
  v6.receiver = self;
  v6.super_class = SUUIExploreDocumentViewController;
  [(SUUIViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SUUIApplicationPageDidDisplayNotification" object:self];

  v6.receiver = self;
  v6.super_class = SUUIExploreDocumentViewController;
  [(SUUIExploreDocumentViewController *)&v6 viewDidAppear:appearCopy];
}

- (void)documentDidUpdate:(id)update
{
  v38 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SUUIApplicationPageDidUpdateNotification" object:self];

  templateElement = [updateCopy templateElement];
  exploreTemplate = self->_exploreTemplate;
  self->_exploreTemplate = templateElement;

  [(SUUIExploreDocumentViewController *)self _updateChildViewControllers];
  usesSplits = [(SUUIExploreTemplateElement *)self->_exploreTemplate usesSplits];
  if (usesSplits)
  {
    v32 = updateCopy;
    array = [MEMORY[0x277CBEB18] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    viewControllers = [(UINavigationController *)self->_leftVC viewControllers];
    v11 = [viewControllers countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(viewControllers);
          }

          contentScrollView = [*(*(&v33 + 1) + 8 * i) contentScrollView];
          [contentScrollView contentOffset];
          v17 = v16;
          v19 = v18;

          v20 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v17, v19}];
          [(NSArray *)array addObject:v20];
        }

        v12 = [viewControllers countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);
    }

    contentOffsets = self->_contentOffsets;
    self->_contentOffsets = array;
    v22 = array;

    updateCopy = v32;
    templateElement2 = [v32 templateElement];
    v24 = self->_exploreTemplate;
    self->_exploreTemplate = templateElement2;

    [(SUUIExploreDocumentViewController *)self _reloadLeftViewControllers];
    [(SUUIExploreDocumentViewController *)self _reloadRightViewController];
    topViewController = [(UINavigationController *)self->_leftVC topViewController];

    [(SUUIExploreDocumentViewController *)self _reloadSelectionForViewController:topViewController];
  }

  else
  {
    [(SUUIExploreDocumentViewController *)self _reloadData];
  }

  navigationController = [(SUUIExploreDocumentViewController *)self navigationController];
  topViewController2 = [navigationController topViewController];
  IsDescendent = SUUIViewControllerIsDescendent(self, topViewController2);

  if (IsDescendent)
  {
    if (usesSplits)
    {
      v29 = [SUUINavigationControllerAssistant existingAssistantForNavigationController:navigationController];
      [v29 setPalettePinningBarHidden:0];
    }

    [navigationController setNavigationBarHidden:usesSplits ^ 1 animated:0];
  }

  view = [(UINavigationController *)self->_navigationController view];
  [view setHidden:usesSplits];

  view2 = [(UISplitViewController *)self->_splitVC view];
  [view2 setHidden:usesSplits ^ 1];
}

- (void)documentMediaQueriesDidUpdate:(id)update
{
  viewControllers = [(UINavigationController *)self->_leftVC viewControllers];
  [viewControllers enumerateObjectsUsingBlock:&__block_literal_global_18];

  rightVC = self->_rightVC;

  [(SUUIStorePageSectionsViewController *)rightVC invalidateAndReload];
}

- (void)_updateChildViewControllers
{
  v34[2] = *MEMORY[0x277D85DE8];
  if ([(SUUIExploreTemplateElement *)self->_exploreTemplate usesSplits])
  {
    if (!self->_splitVC)
    {
      v3 = objc_alloc_init(MEMORY[0x277D757A0]);
      leftVC = self->_leftVC;
      self->_leftVC = v3;

      [(UINavigationController *)self->_leftVC setNavigationBarHidden:1];
      [(UINavigationController *)self->_leftVC setDelegate:self];
      v5 = [[SUUIStorePageSectionsViewController alloc] initWithLayoutStyle:2];
      rightVC = self->_rightVC;
      self->_rightVC = v5;

      v7 = self->_rightVC;
      clientContext = [(SUUIViewController *)self clientContext];
      [(SUUIViewController *)v7 setClientContext:clientContext];

      v9 = self->_rightVC;
      operationQueue = [(SUUIViewController *)self operationQueue];
      [(SUUIViewController *)v9 setOperationQueue:operationQueue];

      [(SUUIStorePageSectionsViewController *)self->_rightVC setActiveMetricsImpressionSession:self->_activeMetricsImpressionSession];
      v11 = objc_alloc_init(MEMORY[0x277D75A50]);
      splitVC = self->_splitVC;
      self->_splitVC = v11;

      v13 = self->_splitVC;
      [(SUUIExploreDocumentViewController *)self _leftColumnWidth];
      [(UISplitViewController *)v13 setMaximumPrimaryColumnWidth:?];
      v14 = self->_splitVC;
      [(SUUIExploreDocumentViewController *)self _leftColumnWidth];
      [(UISplitViewController *)v14 setMinimumPrimaryColumnWidth:?];
      v15 = self->_splitVC;
      v16 = self->_rightVC;
      v34[0] = self->_leftVC;
      v34[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
      [(UISplitViewController *)v15 setViewControllers:v17];

      [(UISplitViewController *)self->_splitVC setDelegate:self];
      [(SUUIExploreDocumentViewController *)self addChildViewController:self->_splitVC];
      view = [(UISplitViewController *)self->_splitVC view];
      [view setAutoresizingMask:18];
      view2 = [(SUUIExploreDocumentViewController *)self view];
      [view2 bounds];
      [view setFrame:?];

      view3 = [(SUUIExploreDocumentViewController *)self view];
      [view3 addSubview:view];
    }

    navigationController = self->_navigationController;
    if (navigationController)
    {
      view4 = [(UINavigationController *)navigationController view];
      [view4 removeFromSuperview];

      [(SUUIExploreDocumentViewController *)self removeChildViewController:self->_navigationController];
      [(UINavigationController *)self->_navigationController setDelegate:0];
      v23 = self->_navigationController;
      self->_navigationController = 0;
    }
  }

  else
  {
    if (!self->_navigationController)
    {
      v24 = objc_alloc_init(MEMORY[0x277D757A0]);
      v25 = self->_navigationController;
      self->_navigationController = v24;

      [(UINavigationController *)self->_navigationController setDelegate:self];
      [(UINavigationController *)self->_navigationController setNavigationBarHidden:1 animated:0];
      [(SUUIExploreDocumentViewController *)self addChildViewController:self->_navigationController];
      view5 = [(UINavigationController *)self->_navigationController view];
      [view5 setAutoresizingMask:18];
      view6 = [(SUUIExploreDocumentViewController *)self view];
      [view6 bounds];
      [view5 setFrame:?];

      view7 = [(SUUIExploreDocumentViewController *)self view];
      [view7 addSubview:view5];
    }

    v29 = self->_splitVC;
    if (v29)
    {
      view8 = [(UISplitViewController *)v29 view];
      [view8 removeFromSuperview];

      [(SUUIExploreDocumentViewController *)self removeChildViewController:self->_splitVC];
      [(UISplitViewController *)self->_splitVC setDelegate:0];
      v31 = self->_splitVC;
      self->_splitVC = 0;

      [(UINavigationController *)self->_leftVC setDelegate:0];
      v32 = self->_leftVC;
      self->_leftVC = 0;

      v33 = self->_rightVC;
      self->_rightVC = 0;
    }
  }
}

- (id)impressionableViewElements
{
  if ([(SUUIExploreTemplateElement *)self->_exploreTemplate usesSplits])
  {
    visibleViewController = [(UINavigationController *)self->_leftVC visibleViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _impressionableViewElements = [visibleViewController _impressionableViewElements];
    }

    else
    {
      _impressionableViewElements = 0;
    }

    _impressionableViewElements2 = [(SUUIStorePageSectionsViewController *)self->_rightVC _impressionableViewElements];
    v6 = _impressionableViewElements2;
    if (_impressionableViewElements2)
    {
      if (_impressionableViewElements)
      {
        v7 = [_impressionableViewElements arrayByAddingObjectsFromArray:_impressionableViewElements2];

        _impressionableViewElements = v7;
      }

      else
      {
        _impressionableViewElements = _impressionableViewElements2;
      }
    }
  }

  else
  {
    visibleViewController = [(UINavigationController *)self->_navigationController visibleViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _impressionableViewElements = [visibleViewController _impressionableViewElements];
    }

    else
    {
      _impressionableViewElements = 0;
    }
  }

  return _impressionableViewElements;
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  IsEnabledForAuthorizationStatus = SUUINearMeIsEnabledForAuthorizationStatus(status);
  if (self->_nearMeEnabled != IsEnabledForAuthorizationStatus)
  {
    self->_nearMeEnabled = IsEnabledForAuthorizationStatus;
    if ([(SUUIExploreTemplateElement *)self->_exploreTemplate usesSplits])
    {

      [(SUUIExploreDocumentViewController *)self _reloadRightViewController];
    }

    else
    {

      [(SUUIExploreDocumentViewController *)self _reloadData];
    }
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (self->_leftVC == controllerCopy)
  {
    contentScrollView = [viewControllerCopy contentScrollView];
    [(SUUIContentInsetScrollView *)self->_contentScrollView scrollIndicatorInsets];
    SUUIScrollViewSetContentInsets(contentScrollView, "SUUIExploreDocumentViewController", v9, v10, v11, v12);

    SUUIStackedBarNavDidShow(controllerCopy, viewControllerCopy);
    viewControllers = [(UINavigationController *)controllerCopy viewControllers];
    v14 = [viewControllers indexOfObject:viewControllerCopy];

    if ([(NSArray *)self->_contentOffsets count]> v14)
    {
      viewControllers2 = [(UINavigationController *)controllerCopy viewControllers];
      v16 = [viewControllers2 count];
      v17 = [(NSArray *)self->_contentOffsets count];

      if (v16 == v17)
      {
        contentScrollView2 = [viewControllerCopy contentScrollView];
        v19 = [(NSArray *)self->_contentOffsets objectAtIndex:v14];
        [v19 CGPointValue];
        [contentScrollView2 setContentOffset:?];
      }
    }
  }

  else
  {
    SUUIStackedBarNavDidShow(controllerCopy, viewControllerCopy);
  }
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  if (self->_leftVC == controllerCopy)
  {
    v18 = SUUIStackedBarNavAnimationController(controllerCopy, operation, viewControllerCopy, toViewControllerCopy);
    goto LABEL_14;
  }

  viewControllers = [(UINavigationController *)controllerCopy viewControllers];
  v14 = viewControllers;
  if (operation == 1)
  {
    if ([viewControllers count] < 2)
    {
      goto LABEL_13;
    }

    v19 = [v14 objectAtIndex:1];

    if (v19 != toViewControllerCopy)
    {
      goto LABEL_13;
    }

    v21 = 0;
    [(SUUIExploreDocumentViewController *)self _getPageComponents:0 title:&v21 forViewControllerAtIndex:0];
    _rootNavigationTitle = v21;
    v17 = viewControllerCopy;
    goto LABEL_11;
  }

  if (operation != 2)
  {
    goto LABEL_13;
  }

  firstObject = [viewControllers firstObject];

  if (firstObject != toViewControllerCopy)
  {
    goto LABEL_13;
  }

  _rootNavigationTitle = [(SUUIExploreDocumentViewController *)self _rootNavigationTitle];
  if (_rootNavigationTitle)
  {
    v17 = toViewControllerCopy;
LABEL_11:
    [v17 setTitle:_rootNavigationTitle];
  }

LABEL_13:
  v18 = SUUIStackedBarNavAnimationController(controllerCopy, operation, viewControllerCopy, toViewControllerCopy);

LABEL_14:

  return v18;
}

- (void)stackedBar:(id)bar didSelectItemAtIndex:(int64_t)index
{
  if ((index & 0x8000000000000000) == 0)
  {
    childViewElements = [(SUUIExploreTemplateElement *)self->_exploreTemplate childViewElements];
    v7 = [childViewElements count];

    if (v7 > index)
    {
      childViewElements2 = [(SUUIExploreTemplateElement *)self->_exploreTemplate childViewElements];
      v9 = [childViewElements2 objectAtIndex:index];

      [v9 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    }
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (self->_leftVC == controllerCopy)
  {
    contentScrollView = [viewControllerCopy contentScrollView];
    [(SUUIContentInsetScrollView *)self->_contentScrollView scrollIndicatorInsets];
    SUUIScrollViewSetContentInsets(contentScrollView, "SUUIExploreDocumentViewController", v9, v10, v11, v12);

    [(SUUIExploreDocumentViewController *)self _reloadSelectionForViewController:viewControllerCopy];
    viewControllers = [(UINavigationController *)controllerCopy viewControllers];
    v14 = [viewControllers indexOfObject:viewControllerCopy];

    if ([(NSArray *)self->_contentOffsets count]> v14)
    {
      viewControllers2 = [(UINavigationController *)controllerCopy viewControllers];
      v16 = [viewControllers2 count];
      v17 = [(NSArray *)self->_contentOffsets count];

      if (v16 == v17)
      {
        contentScrollView2 = [viewControllerCopy contentScrollView];
        v19 = [(NSArray *)self->_contentOffsets objectAtIndex:v14];
        [v19 CGPointValue];
        [contentScrollView2 setContentOffset:?];
      }
    }
  }
}

- (void)_contentInsetDidChange:(id)change
{
  if ([(SUUIExploreTemplateElement *)self->_exploreTemplate usesSplits])
  {
    viewControllers = [(UINavigationController *)self->_leftVC viewControllers];
    firstObject = [viewControllers firstObject];
    view = [firstObject view];

    view2 = [(SUUIStorePageSectionsViewController *)self->_rightVC view];
    [(SUUIContentInsetScrollView *)self->_contentScrollView scrollIndicatorInsets];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    contentScrollView = [(SUUIStorePageSectionsViewController *)self->_rightVC contentScrollView];
    SUUIScrollViewSetContentInsets(contentScrollView, "SUUIExploreDocumentViewController", v9, v11, v13, v15);

    viewControllers2 = [(UINavigationController *)self->_leftVC viewControllers];
    firstObject2 = [viewControllers2 firstObject];
    contentScrollView2 = [firstObject2 contentScrollView];
    SUUIScrollViewSetContentInsets(contentScrollView2, "SUUIExploreDocumentViewController", v9, v11, 0.0, v15);
  }
}

- (id)_rootNavigationTitle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__33;
  v10 = __Block_byref_object_dispose__33;
  v11 = 0;
  navigationBarElement = [(SUUIExploreTemplateElement *)self->_exploreTemplate navigationBarElement];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__SUUIExploreDocumentViewController__rootNavigationTitle__block_invoke;
  v5[3] = &unk_2798F5FB8;
  v5[4] = &v6;
  [navigationBarElement enumerateChildrenUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __57__SUUIExploreDocumentViewController__rootNavigationTitle__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v11;
  if (isKindOfClass)
  {
    v5 = v11;
    if ([v5 labelViewStyle] == 5)
    {
      v6 = [v5 text];
      v7 = [v6 string];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    v4 = v11;
  }

  return MEMORY[0x2821F96F8](isKindOfClass, v4);
}

- (void)_getPageComponents:(id *)components title:(id *)title forViewControllerAtIndex:(int64_t)index
{
  childViewElements = [(SUUIExploreTemplateElement *)self->_exploreTemplate childViewElements];
  if ([childViewElements count] <= index)
  {
    title = 0;
    v11 = 0;
    if (!title)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = [childViewElements objectAtIndex:index];
  title = [v9 title];

  v11 = [(SUUIExploreDocumentViewController *)self _pageComponentsAtIndex:index];
  if (title)
  {
LABEL_5:
    v12 = title;
    *title = title;
  }

LABEL_6:
  if (components)
  {
    v13 = v11;
    *components = v11;
  }
}

- (id)_newSectionsViewControllerAtIndex:(int64_t)index
{
  v13 = 0;
  v14 = 0;
  [(SUUIExploreDocumentViewController *)self _getPageComponents:&v14 title:&v13 forViewControllerAtIndex:index];
  v5 = v14;
  v6 = v13;
  v7 = objc_alloc_init(SUUIStackedBar);
  [(SUUIStackedBar *)v7 setDelegate:self];
  [(SUUIStackedBar *)v7 setSplitViewStyle:[(SUUIExploreTemplateElement *)self->_exploreTemplate usesSplits]];
  if ([(SUUIExploreTemplateElement *)self->_exploreTemplate usesSplits])
  {
    [(SUUIStackedBar *)v7 setZeroHeightWhenFirstChildExpanded:index == 0];
  }

  if ([(SUUIExploreTemplateElement *)self->_exploreTemplate usesSplits])
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = [[SUUIStorePageSectionsViewController alloc] initWithLayoutStyle:v8];
  clientContext = [(SUUIViewController *)self clientContext];
  [(SUUIViewController *)v9 setClientContext:clientContext];

  operationQueue = [(SUUIViewController *)self operationQueue];
  [(SUUIViewController *)v9 setOperationQueue:operationQueue];

  [(SUUIStorePageSectionsViewController *)v9 setSectionsWithPageComponents:v5];
  [(SUUIStorePageSectionsViewController *)v9 setSUUIStackedBar:v7];
  if ([(SUUIExploreTemplateElement *)self->_exploreTemplate usesSplits])
  {
    [(SUUIStorePageSectionsViewController *)v9 setAutomaticallyAdjustsScrollViewInsets:0];
  }

  [(SUUIStorePageSectionsViewController *)v9 setTitle:v6];
  [(SUUIStorePageSectionsViewController *)v9 setActiveMetricsImpressionSession:self->_activeMetricsImpressionSession];

  return v9;
}

- (id)_pageComponentsAtIndex:(int64_t)index
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  childViewElements = [(SUUIExploreTemplateElement *)self->_exploreTemplate childViewElements];
  v7 = [childViewElements objectAtIndex:index];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __60__SUUIExploreDocumentViewController__pageComponentsAtIndex___block_invoke;
  v23[3] = &unk_2798F5B20;
  v8 = v5;
  v24 = v8;
  [v7 enumerateChildrenUsingBlock:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v20;
    while (2)
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v19 + 1) + 8 * v14);
        if ([v16 componentType] == 16)
        {
          if ([v15 componentType] != 17)
          {
            [v16 setShowTopBorder:1];
          }

          v12 = v15;
          goto LABEL_14;
        }

        v12 = v16;

        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_14:

  v17 = v9;
  return v9;
}

void __60__SUUIExploreDocumentViewController__pageComponentsAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = SUUIPageComponentClassForComponentType([v5 pageComponentType]);
  if (v3)
  {
    v4 = [[v3 alloc] initWithViewElement:v5];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }
}

- (void)_reloadData
{
  if (!self->_locationManager)
  {
    v3 = SUUICoreLocationFramework();
    v4 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Cllocationmana.isa, v3));
    locationManager = self->_locationManager;
    self->_locationManager = v4;

    [(CLLocationManager *)self->_locationManager setDelegate:self];
    v6 = objc_opt_class();
    self->_nearMeEnabled = SUUINearMeIsEnabledForAuthorizationStatus([v6 authorizationStatus]);
  }

  viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
  array = [MEMORY[0x277CBEB18] array];
  childViewElements = [(SUUIExploreTemplateElement *)self->_exploreTemplate childViewElements];
  v10 = [childViewElements count];

  if (v10)
  {
    v11 = 0;
    do
    {
      if ([viewControllers count] <= v11)
      {
        v14 = [(SUUIExploreDocumentViewController *)self _newSectionsViewControllerAtIndex:v11];
      }

      else
      {
        v23 = 0;
        v24 = 0;
        [(SUUIExploreDocumentViewController *)self _getPageComponents:&v24 title:&v23 forViewControllerAtIndex:v11];
        v12 = v24;
        v13 = v23;
        v14 = [viewControllers objectAtIndex:v11];
        [v14 setSectionsWithPageComponents:v12];
      }

      childViewElements2 = [(SUUIExploreTemplateElement *)self->_exploreTemplate childViewElements];
      v16 = [childViewElements2 count];

      if (v16 == 1)
      {
        _rootNavigationTitle = [(SUUIExploreDocumentViewController *)self _rootNavigationTitle];
        if (_rootNavigationTitle)
        {
          [v14 setTitle:_rootNavigationTitle];
        }
      }

      [array addObject:v14];

      ++v11;
      childViewElements3 = [(SUUIExploreTemplateElement *)self->_exploreTemplate childViewElements];
      v19 = [childViewElements3 count];
    }

    while (v11 < v19);
  }

  if ([viewControllers count])
  {
    v20 = [viewControllers count];
    if (v20 != [array count])
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __48__SUUIExploreDocumentViewController__reloadData__block_invoke;
      v21[3] = &unk_2798F5AF8;
      v21[4] = self;
      v22 = array;
      dispatch_async(MEMORY[0x277D85CD0], v21);
    }
  }

  else
  {
    [(UINavigationController *)self->_navigationController setViewControllers:array animated:0];
  }
}

- (void)_reloadLeftViewControllers
{
  viewControllers = [(UINavigationController *)self->_leftVC viewControllers];
  array = [MEMORY[0x277CBEB18] array];
  childViewElements = [(SUUIExploreTemplateElement *)self->_exploreTemplate childViewElements];
  v6 = [childViewElements count];

  if (v6)
  {
    v7 = 0;
    do
    {
      if ([viewControllers count] <= v7)
      {
        v10 = [(SUUIExploreDocumentViewController *)self _newSectionsViewControllerAtIndex:v7];
      }

      else
      {
        v16 = 0;
        v17 = 0;
        [(SUUIExploreDocumentViewController *)self _getPageComponents:&v17 title:&v16 forViewControllerAtIndex:v7];
        v8 = v17;
        v9 = v16;
        v10 = [viewControllers objectAtIndex:v7];
        [v10 setTitle:v9];
        [v10 setSectionsWithPageComponents:v8];
      }

      [array addObject:v10];

      ++v7;
      childViewElements2 = [(SUUIExploreTemplateElement *)self->_exploreTemplate childViewElements];
      v12 = [childViewElements2 count];
    }

    while (v7 < v12);
  }

  if ([viewControllers count])
  {
    v13 = [viewControllers count];
    if (v13 != [array count])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __63__SUUIExploreDocumentViewController__reloadLeftViewControllers__block_invoke;
      v14[3] = &unk_2798F5AF8;
      v14[4] = self;
      v15 = array;
      dispatch_async(MEMORY[0x277D85CD0], v14);
    }
  }

  else
  {
    [(UINavigationController *)self->_leftVC setViewControllers:array animated:0];
  }
}

- (void)_reloadSelectionForViewController:(id)controller
{
  controllerCopy = controller;
  sections = [controllerCopy sections];
  if ([sections count])
  {
    v4 = 0;
    do
    {
      v5 = [sections objectAtIndex:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        pageComponent = [v5 pageComponent];
        viewElement = [pageComponent viewElement];
        isSelected = [viewElement isSelected];

        if (isSelected)
        {
          v9 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v4];
          collectionView = [controllerCopy collectionView];
          [collectionView selectItemAtIndexPath:v9 animated:0 scrollPosition:0];
        }
      }

      ++v4;
    }

    while (v4 < [sections count]);
  }
}

- (void)_reloadRightViewController
{
  if (!self->_locationManager)
  {
    v3 = SUUICoreLocationFramework();
    v4 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Cllocationmana.isa, v3));
    locationManager = self->_locationManager;
    self->_locationManager = v4;

    [(CLLocationManager *)self->_locationManager setDelegate:self];
    v6 = objc_opt_class();
    self->_nearMeEnabled = SUUINearMeIsEnabledForAuthorizationStatus([v6 authorizationStatus]);
  }

  rightVC = self->_rightVC;
  _rightPageComponents = [(SUUIExploreDocumentViewController *)self _rightPageComponents];
  [(SUUIStorePageSectionsViewController *)rightVC setSectionsWithPageComponents:_rightPageComponents];

  _rightVCColorScheme = [(SUUIExploreDocumentViewController *)self _rightVCColorScheme];
  [(SUUIStorePageSectionsViewController *)self->_rightVC setColorScheme:_rightVCColorScheme];
}

- (double)_leftColumnWidth
{
  keyWindow = [MEMORY[0x277D75DA0] keyWindow];
  [keyWindow bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v12.origin.x = v4;
  v12.origin.y = v6;
  v12.size.width = v8;
  v12.size.height = v10;
  if (CGRectGetWidth(v12) >= 1024.0 && (v13.origin.x = v4, v13.origin.y = v6, v13.size.width = v8, v13.size.height = v10, CGRectGetHeight(v13) >= 1024.0))
  {
    return 375.0;
  }

  else
  {
    return 300.0;
  }
}

- (id)_leftPageComponentsAtIndex:(int64_t)index
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  childViewElements = [(SUUIExploreTemplateElement *)self->_exploreTemplate childViewElements];
  v7 = [childViewElements objectAtIndex:index];

  flattenedChildren = [v7 flattenedChildren];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [flattenedChildren countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(flattenedChildren);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = SUUIPageComponentClassForComponentType([v14 pageComponentType]);
        if (v15)
        {
          v16 = [[v15 alloc] initWithViewElement:v14];
          if (v16)
          {
            [v5 addObject:v16];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v16 setIndex:v11++];
            }
          }
        }
      }

      v10 = [flattenedChildren countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v5;
}

- (id)_rightPageComponents
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  rightSplit = [(SUUIExploreTemplateElement *)self->_exploreTemplate rightSplit];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SUUIExploreDocumentViewController__rightPageComponents__block_invoke;
  v7[3] = &unk_2798F5B20;
  v5 = v3;
  v8 = v5;
  [rightSplit enumerateChildrenUsingBlock:v7];

  return v5;
}

void __57__SUUIExploreDocumentViewController__rightPageComponents__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = SUUIPageComponentClassForComponentType([v5 pageComponentType]);
  if (v3)
  {
    v4 = [[v3 alloc] initWithViewElement:v5];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }
}

- (id)_rightVCColorScheme
{
  rightSplit = [(SUUIExploreTemplateElement *)self->_exploreTemplate rightSplit];
  style = [rightSplit style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    v6 = objc_alloc_init(SUUIColorScheme);
    [(SUUIColorScheme *)v6 setBackgroundColor:color];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_beginActiveImpressionsForImpressionableViewElements
{
  v13 = *MEMORY[0x277D85DE8];
  impressionableViewElements = [(SUUIExploreDocumentViewController *)self impressionableViewElements];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [impressionableViewElements countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(impressionableViewElements);
        }

        [(SUUIMetricsImpressionSession *)self->_activeMetricsImpressionSession beginActiveImpressionForViewElement:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [impressionableViewElements countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end