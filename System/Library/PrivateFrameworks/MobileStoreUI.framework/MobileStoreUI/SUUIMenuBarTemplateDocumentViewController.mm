@interface SUUIMenuBarTemplateDocumentViewController
- (BOOL)_isFirstViewControllerOnNavigationStack;
- (SUUIMenuBarTemplateDocumentViewController)initWithTemplateElement:(id)element;
- (double)titleViewHeight;
- (id)_childViewControllersForMenuItems;
- (id)_colorScheme;
- (id)_contentViewController;
- (id)_dynamicPageSectionIndexMapper;
- (id)_newChildViewControllerForEntityAtIndex:(unint64_t)index;
- (id)_zoomingShelfPageSplitsDescription;
- (id)contentScrollView;
- (id)navigationBarControllerWithViewElement:(id)element;
- (id)navigationPaletteView;
- (unint64_t)_menuItemIndexForEntityIndex:(unint64_t)index entityValueProvider:(id *)provider;
- (void)_addContentViewController:(id)controller;
- (void)_recordEntityUniqueIdentifier:(id)identifier forEntityIndex:(unint64_t)index;
- (void)_reloadContentViewController;
- (void)_removeContentViewController:(id)controller;
- (void)_replaceViewControllerAtIndex:(unint64_t)index withViewController:(id)controller;
- (void)_willDisplayViewControllerAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)documentDidUpdate:(id)update;
- (void)documentMediaQueriesDidUpdate:(id)update;
- (void)menuBarViewElementConfiguration:(id)configuration didReplaceDocumentForEntityUniqueIdentifier:(id)identifier;
- (void)menuBarViewElementConfiguration:(id)configuration didReplaceDocumentForMenuItemAtIndex:(unint64_t)index;
- (void)menuBarViewElementConfiguration:(id)configuration selectMenuItemViewElement:(id)element animated:(BOOL)animated;
- (void)setClientContext:(id)context;
- (void)setOperationQueue:(id)queue;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewDidLoad;
@end

@implementation SUUIMenuBarTemplateDocumentViewController

- (SUUIMenuBarTemplateDocumentViewController)initWithTemplateElement:(id)element
{
  elementCopy = element;
  v15.receiver = self;
  v15.super_class = SUUIMenuBarTemplateDocumentViewController;
  v6 = [(SUUIMenuBarTemplateDocumentViewController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, element);
    menuBar = [(SUUIMenuBarTemplateElement *)v7->_templateElement menuBar];
    menuBarViewElement = v7->_menuBarViewElement;
    v7->_menuBarViewElement = menuBar;

    configuration = [(SUUIMenuBarViewElement *)v7->_menuBarViewElement configuration];
    menuBarViewElementConfiguration = v7->_menuBarViewElementConfiguration;
    v7->_menuBarViewElementConfiguration = configuration;

    [(SUUIMenuBarViewElementConfiguration *)v7->_menuBarViewElementConfiguration setDelegate:v7];
    selectedMenuItemViewElement = [(SUUIMenuBarViewElementConfiguration *)v7->_menuBarViewElementConfiguration selectedMenuItemViewElement];
    pendingSelectedMenuItemViewElement = v7->_pendingSelectedMenuItemViewElement;
    v7->_pendingSelectedMenuItemViewElement = selectedMenuItemViewElement;

    v7->_scrollingTabAppearanceStatus.progress = 1.0;
    *&v7->_scrollingTabAppearanceStatus.isBouncingOffTheEdge = 0;
    [(SUUIMenuBarTemplateDocumentViewController *)v7 _reloadContentViewController];
  }

  return v7;
}

- (void)dealloc
{
  scrollingSegmentedController = self->_scrollingSegmentedController;
  if (scrollingSegmentedController)
  {
    [(SUUIScrollingSegmentedController *)scrollingSegmentedController setDelegate:0];
    [(SUUIMenuBarTemplateDocumentViewController *)self _removeContentViewController:self->_scrollingSegmentedController];
  }

  horizontalScrollingContainerViewController = self->_horizontalScrollingContainerViewController;
  if (horizontalScrollingContainerViewController)
  {
    [(SUUIHorizontalScrollingContainerViewController *)horizontalScrollingContainerViewController setDelegate:0];
    [(SUUIMenuBarTemplateDocumentViewController *)self _removeContentViewController:self->_horizontalScrollingContainerViewController];
  }

  v5.receiver = self;
  v5.super_class = SUUIMenuBarTemplateDocumentViewController;
  [(SUUIViewController *)&v5 dealloc];
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = SUUIMenuBarTemplateDocumentViewController;
  [(SUUIMenuBarTemplateDocumentViewController *)&v6 setPreferredContentSize:?];
  [(SUUIHorizontalScrollingContainerViewController *)self->_horizontalScrollingContainerViewController setPreferredContentSize:width, height];
  [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController setPreferredContentSize:width, height];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SUUIMenuBarTemplateDocumentViewController;
  [(SUUIMenuBarTemplateDocumentViewController *)&v7 viewDidLoad];
  view = [(SUUIMenuBarTemplateDocumentViewController *)self view];
  _contentViewController = [(SUUIMenuBarTemplateDocumentViewController *)self _contentViewController];
  v5 = _contentViewController;
  if (_contentViewController)
  {
    view2 = [_contentViewController view];
    [view bounds];
    [view2 setFrame:?];
    [view2 setAutoresizingMask:18];
    [view addSubview:view2];
  }
}

- (id)contentScrollView
{
  _contentViewController = [(SUUIMenuBarTemplateDocumentViewController *)self _contentViewController];
  contentScrollView = [_contentViewController contentScrollView];

  return contentScrollView;
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  v6.receiver = self;
  v6.super_class = SUUIMenuBarTemplateDocumentViewController;
  [(SUUIViewController *)&v6 setClientContext:contextCopy];
  [(SUUIViewController *)self->_menuBarSectionsViewController setClientContext:contextCopy];
  v5 = self->_menuBarStyle - 1;
  if (v5 <= 2)
  {
    [*(&self->super.super.super.super.isa + *off_2798F59F0[v5]) setClientContext:contextCopy];
  }
}

- (void)setOperationQueue:(id)queue
{
  queueCopy = queue;
  v6.receiver = self;
  v6.super_class = SUUIMenuBarTemplateDocumentViewController;
  [(SUUIViewController *)&v6 setOperationQueue:queueCopy];
  [(SUUIViewController *)self->_menuBarSectionsViewController setOperationQueue:queueCopy];
  v5 = self->_menuBarStyle - 1;
  if (v5 <= 2)
  {
    [*(&self->super.super.super.super.isa + *off_2798F59F0[v5]) setOperationQueue:queueCopy];
  }
}

- (void)documentDidUpdate:(id)update
{
  menuBarViewElementConfiguration = self->_menuBarViewElementConfiguration;
  updateCopy = update;
  [(SUUIMenuBarViewElementConfiguration *)menuBarViewElementConfiguration setDelegate:0];
  templateElement = [updateCopy templateElement];

  templateElement = self->_templateElement;
  self->_templateElement = templateElement;

  menuBar = [(SUUIMenuBarTemplateElement *)self->_templateElement menuBar];
  menuBarViewElement = self->_menuBarViewElement;
  self->_menuBarViewElement = menuBar;

  configuration = [(SUUIMenuBarViewElement *)self->_menuBarViewElement configuration];
  v11 = self->_menuBarViewElementConfiguration;
  self->_menuBarViewElementConfiguration = configuration;

  [(SUUIMenuBarViewElementConfiguration *)self->_menuBarViewElementConfiguration setDelegate:self];
  dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
  entityProvider = [(SUUIViewElement *)self->_menuBarViewElement entityProvider];
  [(SUUIDynamicPageSectionIndexMapper *)dynamicPageSectionIndexMapper setEntityProvider:entityProvider];

  [(SUUIMenuBarTemplateDocumentViewController *)self _reloadContentViewController];
}

- (void)documentMediaQueriesDidUpdate:(id)update
{
  menuBarSectionsViewController = self->_menuBarSectionsViewController;
  _colorScheme = [(SUUIMenuBarTemplateDocumentViewController *)self _colorScheme];
  [(SUUIStorePageSectionsViewController *)menuBarSectionsViewController setColorScheme:_colorScheme];

  v6 = self->_menuBarSectionsViewController;

  [(SUUIStorePageSectionsViewController *)v6 invalidateAndReload];
}

- (id)navigationPaletteView
{
  if ([(SUUIMenuBarTemplateDocumentViewController *)self _isFirstViewControllerOnNavigationStack])
  {
    view = [(SUUIMenuBarSectionsViewController *)self->_menuBarSectionsViewController view];
    contentScrollView = [(SUUIMenuBarSectionsViewController *)self->_menuBarSectionsViewController contentScrollView];
    [(SUUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost *)view layoutIfNeeded];
    [contentScrollView layoutIfNeeded];
    [contentScrollView contentSize];
    [(SUUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost *)view frame];
    [(SUUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost *)view setFrame:?];
  }

  else
  {
    embeddedPaletteHost = self->_embeddedPaletteHost;
    if (!embeddedPaletteHost)
    {
      v6 = [SUUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost alloc];
      [(SUUIMenuBarTemplateDocumentViewController *)self titleViewHeight];
      v8 = [(SUUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost *)v6 initWithFrame:0.0, 0.0, 0.0, v7 + 7.0];
      v9 = self->_embeddedPaletteHost;
      self->_embeddedPaletteHost = v8;

      titleView = [(SUUIMenuBarTemplateDocumentViewController *)self titleView];
      [titleView sizeToFit];
      [(SUUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost *)self->_embeddedPaletteHost setTitleView:titleView];

      embeddedPaletteHost = self->_embeddedPaletteHost;
    }

    view = embeddedPaletteHost;
  }

  return view;
}

- (void)menuBarViewElementConfiguration:(id)configuration didReplaceDocumentForEntityUniqueIdentifier:(id)identifier
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = [(NSMutableDictionary *)self->_entityUniqueIdentifierToEntityIndex objectForKey:identifierCopy];
    if (v7)
    {
      goto LABEL_3;
    }

    _dynamicPageSectionIndexMapper = [(SUUIMenuBarTemplateDocumentViewController *)self _dynamicPageSectionIndexMapper];
    if (_dynamicPageSectionIndexMapper)
    {
      v10 = _dynamicPageSectionIndexMapper;
      entityProvider = [(SUUIViewElement *)self->_menuBarViewElement entityProvider];
      totalNumberOfEntities = [v10 totalNumberOfEntities];
      if (!totalNumberOfEntities)
      {
        goto LABEL_4;
      }

      v7 = 0;
      for (i = 0; i != totalNumberOfEntities; ++i)
      {
        v13 = [v10 entityIndexPathForGlobalIndex:{i, configurationCopy}];
        v14 = [entityProvider entityValueProviderAtIndexPath:v13];
        entityUniqueIdentifier = [v14 entityUniqueIdentifier];
        [(SUUIMenuBarTemplateDocumentViewController *)self _recordEntityUniqueIdentifier:entityUniqueIdentifier forEntityIndex:i];
        if (entityUniqueIdentifier == identifierCopy || [entityUniqueIdentifier isEqual:identifierCopy])
        {
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];

          v7 = v16;
        }
      }

      if (v7)
      {
LABEL_3:
        unsignedIntegerValue = [v7 unsignedIntegerValue];
        entityProvider = [(SUUIMenuBarTemplateDocumentViewController *)self _newChildViewControllerForEntityAtIndex:unsignedIntegerValue];
        [(SUUIMenuBarTemplateDocumentViewController *)self _replaceViewControllerAtIndex:unsignedIntegerValue withViewController:entityProvider];
        v10 = v7;
LABEL_4:
      }
    }
  }
}

- (void)menuBarViewElementConfiguration:(id)configuration didReplaceDocumentForMenuItemAtIndex:(unint64_t)index
{
  v6 = [(SUUIMenuBarTemplateDocumentViewController *)self _newChildViewControllerForEntityAtIndex:index];
  [(SUUIMenuBarTemplateDocumentViewController *)self _replaceViewControllerAtIndex:index withViewController:v6];
}

- (void)menuBarViewElementConfiguration:(id)configuration selectMenuItemViewElement:(id)element animated:(BOOL)animated
{
  animatedCopy = animated;
  configurationCopy = configuration;
  elementCopy = element;
  if (self->_scrollingSegmentedController)
  {
    v9 = [configurationCopy indexOfMenuItemViewElement:elementCopy];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController selectViewControllerAtIndex:v9 animated:animatedCopy];
    }
  }

  else
  {
    objc_storeStrong(&self->_pendingSelectedMenuItemViewElement, element);
  }
}

- (id)navigationBarControllerWithViewElement:(id)element
{
  elementCopy = element;
  v5 = [(SUUINavigationBarController *)[SUUIMenuBarNavigationBarController alloc] initWithNavigationBarViewElement:elementCopy];

  if ([(SUUIMenuBarTemplateDocumentViewController *)self _isFirstViewControllerOnNavigationStack])
  {
    titleView = [(SUUIMenuBarTemplateDocumentViewController *)self titleView];
    [(SUUIMenuBarNavigationBarController *)v5 setTitleView:titleView];
  }

  return v5;
}

- (double)titleViewHeight
{
  navigationBarTitleView = [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController navigationBarTitleView];
  [navigationBarTitleView layoutMargins];
  v5 = v4;
  v7 = v6;

  navigationBarTitleView2 = [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController navigationBarTitleView];
  [navigationBarTitleView2 segmentedControlMinimumHeight];
  v10 = v9;

  return v7 + v5 + v10;
}

- (void)_addContentViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];

  if (!parentViewController)
  {
    [(SUUIMenuBarTemplateDocumentViewController *)self addChildViewController:controllerCopy];
    if ([(SUUIMenuBarTemplateDocumentViewController *)self isViewLoaded])
    {
      view = [(SUUIMenuBarTemplateDocumentViewController *)self view];
      view2 = [controllerCopy view];
      [view bounds];
      [view2 setFrame:?];
      [view2 setAutoresizingMask:18];
      [view addSubview:view2];
    }

    [controllerCopy didMoveToParentViewController:self];
  }
}

- (id)_childViewControllersForMenuItems
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  _dynamicPageSectionIndexMapper = [(SUUIMenuBarTemplateDocumentViewController *)self _dynamicPageSectionIndexMapper];
  v5 = _dynamicPageSectionIndexMapper;
  if (_dynamicPageSectionIndexMapper)
  {
    totalNumberOfEntities = [_dynamicPageSectionIndexMapper totalNumberOfEntities];
  }

  else
  {
    totalNumberOfEntities = [(SUUIMenuBarViewElementConfiguration *)self->_menuBarViewElementConfiguration numberOfMenuItems];
  }

  v7 = totalNumberOfEntities;
  if (totalNumberOfEntities)
  {
    v8 = 0;
    do
    {
      v9 = [(SUUIMenuBarTemplateDocumentViewController *)self _newChildViewControllerForEntityAtIndex:v8];
      [v3 addObject:v9];

      ++v8;
    }

    while (v7 != v8);
  }

  return v3;
}

- (id)_colorScheme
{
  style = [(SUUIMenuBarTemplateElement *)self->_templateElement style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (!color)
  {
    color = [MEMORY[0x277D75348] clearColor];
  }

  v5 = objc_alloc_init(SUUIColorScheme);
  [(SUUIColorScheme *)v5 setBackgroundColor:color];

  return v5;
}

- (id)_contentViewController
{
  v3 = self->_menuBarStyle - 1;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_2798F59F0[v3]);
  }

  return v4;
}

- (id)_dynamicPageSectionIndexMapper
{
  if (!self->_dynamicPageSectionIndexMapper && [(SUUIViewElement *)self->_menuBarViewElement isDynamicContainer])
  {
    v3 = objc_alloc_init(SUUIDynamicPageSectionIndexMapper);
    dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
    self->_dynamicPageSectionIndexMapper = v3;

    v5 = self->_dynamicPageSectionIndexMapper;
    entityProvider = [(SUUIViewElement *)self->_menuBarViewElement entityProvider];
    [(SUUIDynamicPageSectionIndexMapper *)v5 setEntityProvider:entityProvider];
  }

  v7 = self->_dynamicPageSectionIndexMapper;

  return v7;
}

- (unint64_t)_menuItemIndexForEntityIndex:(unint64_t)index entityValueProvider:(id *)provider
{
  _dynamicPageSectionIndexMapper = [(SUUIMenuBarTemplateDocumentViewController *)self _dynamicPageSectionIndexMapper];
  if (!_dynamicPageSectionIndexMapper)
  {
    v10 = 0;
    if (!provider)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  entityProvider = [(SUUIViewElement *)self->_menuBarViewElement entityProvider];
  v9 = [_dynamicPageSectionIndexMapper entityIndexPathForGlobalIndex:index];
  v10 = [entityProvider entityValueProviderAtIndexPath:v9];

  index = 0;
  if (provider)
  {
LABEL_3:
    v11 = v10;
    *provider = v10;
  }

LABEL_4:

  return index;
}

- (id)_newChildViewControllerForEntityAtIndex:(unint64_t)index
{
  v18 = 0;
  v5 = [(SUUIMenuBarTemplateDocumentViewController *)self _menuItemIndexForEntityIndex:index entityValueProvider:&v18];
  v6 = v18;
  v7 = v6;
  if (v6)
  {
    entityUniqueIdentifier = [v6 entityUniqueIdentifier];
    [(SUUIMenuBarTemplateDocumentViewController *)self _recordEntityUniqueIdentifier:entityUniqueIdentifier forEntityIndex:index];
    v9 = [(SUUIMenuBarViewElementConfiguration *)self->_menuBarViewElementConfiguration documentForEntityUniqueIdentifier:entityUniqueIdentifier];
    v10 = [(SUUIMenuBarViewElementConfiguration *)self->_menuBarViewElementConfiguration documentOptionsForEntityUniqueIdentifier:entityUniqueIdentifier];

    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_5:
    v11 = [SUUIDocumentContainerViewController alloc];
    clientContext = [(SUUIViewController *)self clientContext];
    v13 = [(SUUIDocumentContainerViewController *)v11 initWithDocument:v9 options:v10 clientContext:clientContext];

    if (v13)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = [(SUUIMenuBarViewElementConfiguration *)self->_menuBarViewElementConfiguration documentForMenuItemAtIndex:v5];
  v10 = [(SUUIMenuBarViewElementConfiguration *)self->_menuBarViewElementConfiguration documentOptionsForMenuItemAtIndex:v5];
  if (v9)
  {
    goto LABEL_5;
  }

LABEL_6:
  v13 = objc_alloc_init(MEMORY[0x277D75D28]);
LABEL_7:
  if (self->_menuBarStyle == 1)
  {
    v14 = [(SUUIMenuBarViewElement *)self->_menuBarViewElement titleForMenuItemAtIndex:index];
    text = [v14 text];
    string = [text string];
    [(SUUIDocumentContainerViewController *)v13 setTitle:string];
  }

  return v13;
}

- (void)_recordEntityUniqueIdentifier:(id)identifier forEntityIndex:(unint64_t)index
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v11 = identifierCopy;
    entityUniqueIdentifierToEntityIndex = self->_entityUniqueIdentifierToEntityIndex;
    if (!entityUniqueIdentifierToEntityIndex)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_entityUniqueIdentifierToEntityIndex;
      self->_entityUniqueIdentifierToEntityIndex = v8;

      entityUniqueIdentifierToEntityIndex = self->_entityUniqueIdentifierToEntityIndex;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    [(NSMutableDictionary *)entityUniqueIdentifierToEntityIndex setObject:v10 forKey:v11];

    identifierCopy = v11;
  }
}

- (void)_reloadContentViewController
{
  menuBarStyle = [(SUUIMenuBarViewElementConfiguration *)self->_menuBarViewElementConfiguration menuBarStyle];
  menuBarStyle = self->_menuBarStyle;
  if (menuBarStyle != menuBarStyle)
  {
    switch(menuBarStyle)
    {
      case 3:
        v6 = 1096;
        break;
      case 2:
        [(SUUIHorizontalScrollingContainerViewController *)self->_horizontalScrollingContainerViewController setDelegate:0];
        [(SUUIMenuBarTemplateDocumentViewController *)self _removeContentViewController:self->_horizontalScrollingContainerViewController];
        v6 = 1104;
        break;
      case 1:
        p_scrollingSegmentedController = &self->_scrollingSegmentedController;
        [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController setDelegate:0];
LABEL_9:
        [(SUUIMenuBarTemplateDocumentViewController *)self _removeContentViewController:*p_scrollingSegmentedController];
        v7 = *p_scrollingSegmentedController;
        *p_scrollingSegmentedController = 0;

        goto LABEL_10;
      default:
LABEL_10:
        embeddedPaletteHost = self->_embeddedPaletteHost;
        self->_embeddedPaletteHost = 0;

        goto LABEL_11;
    }

    p_scrollingSegmentedController = (self + v6);
    goto LABEL_9;
  }

LABEL_11:
  self->_menuBarStyle = menuBarStyle;
  if (menuBarStyle == 3)
  {
    if (self->_loadingDocumentViewController)
    {
      return;
    }

    style = [(SUUIViewElement *)self->_menuBarViewElement firstChildForElementType:4];
    v25 = [[SUUILoadingDocumentViewController alloc] initWithActivityIndicatorElement:style];
    loadingDocumentViewController = self->_loadingDocumentViewController;
    self->_loadingDocumentViewController = v25;

    v27 = self->_loadingDocumentViewController;
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUIViewController *)v27 setClientContext:clientContext];

    v29 = self->_loadingDocumentViewController;
    operationQueue = [(SUUIViewController *)self operationQueue];
    [(SUUIViewController *)v29 setOperationQueue:operationQueue];

    v31 = self->_loadingDocumentViewController;
LABEL_36:

    if (!v31)
    {
      return;
    }

    goto LABEL_37;
  }

  if (menuBarStyle != 2)
  {
    if (menuBarStyle != 1)
    {
      return;
    }

    scrollingSegmentedController = self->_scrollingSegmentedController;
    if (scrollingSegmentedController)
    {
      pendingSelectedMenuItemViewElement = [(SUUIMenuBarTemplateDocumentViewController *)self _childViewControllersForMenuItems];
      [(SUUIScrollingSegmentedController *)scrollingSegmentedController setViewControllers:pendingSelectedMenuItemViewElement];
    }

    else
    {
      v32 = objc_alloc_init(SUUIScrollingSegmentedController);
      v33 = self->_scrollingSegmentedController;
      self->_scrollingSegmentedController = v32;

      v34 = self->_scrollingSegmentedController;
      clientContext2 = [(SUUIViewController *)self clientContext];
      [(SUUIScrollingSegmentedController *)v34 setClientContext:clientContext2];

      v36 = self->_scrollingSegmentedController;
      operationQueue2 = [(SUUIViewController *)self operationQueue];
      [(SUUIViewController *)v36 setOperationQueue:operationQueue2];

      [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController setDelegate:self];
      [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController scrollingTabAppearanceStatusWasUpdated:*&self->_scrollingTabAppearanceStatus.progress, *&self->_scrollingTabAppearanceStatus.isBouncingOffTheEdge];
      v38 = self->_scrollingSegmentedController;
      _childViewControllersForMenuItems = [(SUUIMenuBarTemplateDocumentViewController *)self _childViewControllersForMenuItems];
      [(SUUIScrollingSegmentedController *)v38 setViewControllers:_childViewControllersForMenuItems];

      if (!self->_pendingSelectedMenuItemViewElement)
      {
        goto LABEL_29;
      }

      v40 = [(SUUIMenuBarViewElementConfiguration *)self->_menuBarViewElementConfiguration indexOfMenuItemViewElement:?];
      if (v40 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController selectViewControllerAtIndex:v40 animated:0];
      }

      pendingSelectedMenuItemViewElement = self->_pendingSelectedMenuItemViewElement;
      self->_pendingSelectedMenuItemViewElement = 0;
    }

LABEL_29:
    style = [(SUUIMenuBarViewElement *)self->_menuBarViewElement style];
    v41 = [style valueForStyle:*MEMORY[0x277D1AFE8]];
    navigationBarTitleView = [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController navigationBarTitleView];
    v43 = navigationBarTitleView;
    if (v41)
    {
      [navigationBarTitleView setLayoutStyle:1];
      [v41 UIEdgeInsetsValue];
    }

    else
    {
      [navigationBarTitleView setLayoutStyle:0];
      v54 = 0;
      SUUIViewElementPaddingForStyle(style, &v54);
      if (v54 != 1)
      {
LABEL_33:
        v44 = [style valueForStyle:*MEMORY[0x277D1AFD8]];
        if ([v44 length])
        {
          [v44 floatValue];
          [v43 setSegmentedControlMinimumHeight:v45];
        }

        v31 = self->_scrollingSegmentedController;

        goto LABEL_36;
      }
    }

    [v43 setLayoutMargins:?];
    goto LABEL_33;
  }

  horizontalScrollingContainerViewController = self->_horizontalScrollingContainerViewController;
  if (!horizontalScrollingContainerViewController)
  {
    v12 = objc_alloc_init(SUUIHorizontalScrollingContainerViewController);
    v13 = self->_horizontalScrollingContainerViewController;
    self->_horizontalScrollingContainerViewController = v12;

    [(SUUIHorizontalScrollingContainerViewController *)self->_horizontalScrollingContainerViewController setDelegate:self];
    horizontalScrollingContainerViewController = self->_horizontalScrollingContainerViewController;
  }

  _childViewControllersForMenuItems2 = [(SUUIMenuBarTemplateDocumentViewController *)self _childViewControllersForMenuItems];
  [(SUUIHorizontalScrollingContainerViewController *)horizontalScrollingContainerViewController setViewControllers:_childViewControllersForMenuItems2];

  menuBarSectionsViewController = self->_menuBarSectionsViewController;
  if (!menuBarSectionsViewController)
  {
    v16 = [[SUUIMenuBarSectionsViewController alloc] initWithLayoutStyle:0];
    v17 = self->_menuBarSectionsViewController;
    self->_menuBarSectionsViewController = v16;

    v18 = self->_menuBarSectionsViewController;
    clientContext3 = [(SUUIViewController *)self clientContext];
    [(SUUIViewController *)v18 setClientContext:clientContext3];

    v20 = self->_menuBarSectionsViewController;
    operationQueue3 = [(SUUIViewController *)self operationQueue];
    [(SUUIViewController *)v20 setOperationQueue:operationQueue3];

    v22 = self->_menuBarSectionsViewController;
    [(SUUIMenuBarTemplateDocumentViewController *)self preferredContentSize];
    [(SUUIMenuBarSectionsViewController *)v22 setPreferredContentSize:?];
    view = [(SUUIMenuBarSectionsViewController *)self->_menuBarSectionsViewController view];
    [view frame];
    if (CGRectIsEmpty(v55))
    {
      if ([(SUUIMenuBarTemplateDocumentViewController *)self isViewLoaded])
      {
        [(SUUIMenuBarTemplateDocumentViewController *)self view];
      }

      else
      {
        [MEMORY[0x277D759A0] mainScreen];
      }
      v46 = ;
      [v46 bounds];
      [view setFrame:?];
    }

    menuBarSectionsViewController = self->_menuBarSectionsViewController;
  }

  _colorScheme = [(SUUIMenuBarTemplateDocumentViewController *)self _colorScheme];
  [(SUUIStorePageSectionsViewController *)menuBarSectionsViewController setColorScheme:_colorScheme];

  [(SUUIMenuBarSectionsViewController *)self->_menuBarSectionsViewController setNumberOfIterationsForShelfPageSections:1];
  [(SUUIStorePageSectionsViewController *)self->_menuBarSectionsViewController _setRendersWithPerspective:[(SUUIViewElement *)self->_templateElement rendersWithPerspective]];
  [(SUUIStorePageSectionsViewController *)self->_menuBarSectionsViewController _setRendersWithParallax:[(SUUIViewElement *)self->_templateElement rendersWithParallax]];
  v48 = self->_menuBarSectionsViewController;
  _zoomingShelfPageSplitsDescription = [(SUUIMenuBarTemplateDocumentViewController *)self _zoomingShelfPageSplitsDescription];
  [(SUUIStorePageSectionsViewController *)v48 setSectionsWithSplitsDescription:_zoomingShelfPageSplitsDescription];

  sections = [(SUUIStorePageSectionsViewController *)self->_menuBarSectionsViewController sections];
  firstObject = [sections firstObject];

  configuration = [firstObject configuration];
  shelfCollectionView = [configuration shelfCollectionView];
  [(SUUIHorizontalScrollingContainerViewController *)self->_horizontalScrollingContainerViewController setMenuBarCollectionView:shelfCollectionView];
  v31 = self->_horizontalScrollingContainerViewController;

  if (v31)
  {
LABEL_37:
    [(SUUIMenuBarTemplateDocumentViewController *)self _addContentViewController:v31];
  }
}

- (void)_removeContentViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];
  if (parentViewController)
  {
    [controllerCopy willMoveToParentViewController:0];
  }

  if ([controllerCopy isViewLoaded])
  {
    view = [controllerCopy view];
    superview = [view superview];

    if (superview)
    {
      [view removeFromSuperview];
    }
  }

  if (parentViewController)
  {
    [controllerCopy removeFromParentViewController];
  }
}

- (void)_replaceViewControllerAtIndex:(unint64_t)index withViewController:(id)controller
{
  controllerCopy = controller;
  v7 = controllerCopy;
  menuBarStyle = self->_menuBarStyle;
  if (menuBarStyle == 1)
  {
    v9 = &OBJC_IVAR___SUUIMenuBarTemplateDocumentViewController__scrollingSegmentedController;
  }

  else
  {
    if (menuBarStyle != 2)
    {
      goto LABEL_6;
    }

    v9 = &OBJC_IVAR___SUUIMenuBarTemplateDocumentViewController__horizontalScrollingContainerViewController;
  }

  v10 = controllerCopy;
  controllerCopy = [*(&self->super.super.super.super.isa + *v9) replaceViewControllerAtIndex:index withViewController:controllerCopy];
  v7 = v10;
LABEL_6:

  MEMORY[0x2821F96F8](controllerCopy, v7);
}

- (BOOL)_isFirstViewControllerOnNavigationStack
{
  selfCopy = self;
  navigationController = [(SUUIMenuBarTemplateDocumentViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];
  LOBYTE(selfCopy) = SUUIViewControllerIsDescendent(selfCopy, firstObject);

  return selfCopy;
}

- (void)_willDisplayViewControllerAtIndex:(unint64_t)index
{
  v8 = 0;
  v4 = [(SUUIMenuBarTemplateDocumentViewController *)self _menuItemIndexForEntityIndex:index entityValueProvider:&v8];
  menuBarViewElementConfiguration = self->_menuBarViewElementConfiguration;
  v6 = v8;
  clientContext = [(SUUIViewController *)self clientContext];
  [(SUUIMenuBarViewElementConfiguration *)menuBarViewElementConfiguration contentWillAppearForMenuItemAtIndex:v4 withEntityValueProvider:v6 clientContext:clientContext];
}

- (id)_zoomingShelfPageSplitsDescription
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self->_menuBarStyle == 2)
  {
    v3 = objc_alloc_init(SUUIStorePageSplitsDescription);
    v4 = self->_menuBarViewElement;
    v5 = SUUIPageComponentClassForComponentType([(SUUIViewElement *)v4 pageComponentType]);
    if (v5)
    {
      v6 = [[v5 alloc] initWithViewElement:v4];
      v7 = objc_alloc_init(SUUIStorePageSplit);
      v10[0] = v6;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [(SUUIStorePageSplit *)v7 setPageComponents:v8];

      [(SUUIStorePageSplitsDescription *)v3 setTopSplit:v7];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end