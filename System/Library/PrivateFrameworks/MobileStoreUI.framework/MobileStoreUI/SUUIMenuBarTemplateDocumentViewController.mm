@interface SUUIMenuBarTemplateDocumentViewController
- (BOOL)_isFirstViewControllerOnNavigationStack;
- (SUUIMenuBarTemplateDocumentViewController)initWithTemplateElement:(id)a3;
- (double)titleViewHeight;
- (id)_childViewControllersForMenuItems;
- (id)_colorScheme;
- (id)_contentViewController;
- (id)_dynamicPageSectionIndexMapper;
- (id)_newChildViewControllerForEntityAtIndex:(unint64_t)a3;
- (id)_zoomingShelfPageSplitsDescription;
- (id)contentScrollView;
- (id)navigationBarControllerWithViewElement:(id)a3;
- (id)navigationPaletteView;
- (unint64_t)_menuItemIndexForEntityIndex:(unint64_t)a3 entityValueProvider:(id *)a4;
- (void)_addContentViewController:(id)a3;
- (void)_recordEntityUniqueIdentifier:(id)a3 forEntityIndex:(unint64_t)a4;
- (void)_reloadContentViewController;
- (void)_removeContentViewController:(id)a3;
- (void)_replaceViewControllerAtIndex:(unint64_t)a3 withViewController:(id)a4;
- (void)_willDisplayViewControllerAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)documentDidUpdate:(id)a3;
- (void)documentMediaQueriesDidUpdate:(id)a3;
- (void)menuBarViewElementConfiguration:(id)a3 didReplaceDocumentForEntityUniqueIdentifier:(id)a4;
- (void)menuBarViewElementConfiguration:(id)a3 didReplaceDocumentForMenuItemAtIndex:(unint64_t)a4;
- (void)menuBarViewElementConfiguration:(id)a3 selectMenuItemViewElement:(id)a4 animated:(BOOL)a5;
- (void)setClientContext:(id)a3;
- (void)setOperationQueue:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewDidLoad;
@end

@implementation SUUIMenuBarTemplateDocumentViewController

- (SUUIMenuBarTemplateDocumentViewController)initWithTemplateElement:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SUUIMenuBarTemplateDocumentViewController;
  v6 = [(SUUIMenuBarTemplateDocumentViewController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, a3);
    v8 = [(SUUIMenuBarTemplateElement *)v7->_templateElement menuBar];
    menuBarViewElement = v7->_menuBarViewElement;
    v7->_menuBarViewElement = v8;

    v10 = [(SUUIMenuBarViewElement *)v7->_menuBarViewElement configuration];
    menuBarViewElementConfiguration = v7->_menuBarViewElementConfiguration;
    v7->_menuBarViewElementConfiguration = v10;

    [(SUUIMenuBarViewElementConfiguration *)v7->_menuBarViewElementConfiguration setDelegate:v7];
    v12 = [(SUUIMenuBarViewElementConfiguration *)v7->_menuBarViewElementConfiguration selectedMenuItemViewElement];
    pendingSelectedMenuItemViewElement = v7->_pendingSelectedMenuItemViewElement;
    v7->_pendingSelectedMenuItemViewElement = v12;

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

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v3 = [(SUUIMenuBarTemplateDocumentViewController *)self view];
  v4 = [(SUUIMenuBarTemplateDocumentViewController *)self _contentViewController];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 view];
    [v3 bounds];
    [v6 setFrame:?];
    [v6 setAutoresizingMask:18];
    [v3 addSubview:v6];
  }
}

- (id)contentScrollView
{
  v2 = [(SUUIMenuBarTemplateDocumentViewController *)self _contentViewController];
  v3 = [v2 contentScrollView];

  return v3;
}

- (void)setClientContext:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SUUIMenuBarTemplateDocumentViewController;
  [(SUUIViewController *)&v6 setClientContext:v4];
  [(SUUIViewController *)self->_menuBarSectionsViewController setClientContext:v4];
  v5 = self->_menuBarStyle - 1;
  if (v5 <= 2)
  {
    [*(&self->super.super.super.super.isa + *off_2798F59F0[v5]) setClientContext:v4];
  }
}

- (void)setOperationQueue:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SUUIMenuBarTemplateDocumentViewController;
  [(SUUIViewController *)&v6 setOperationQueue:v4];
  [(SUUIViewController *)self->_menuBarSectionsViewController setOperationQueue:v4];
  v5 = self->_menuBarStyle - 1;
  if (v5 <= 2)
  {
    [*(&self->super.super.super.super.isa + *off_2798F59F0[v5]) setOperationQueue:v4];
  }
}

- (void)documentDidUpdate:(id)a3
{
  menuBarViewElementConfiguration = self->_menuBarViewElementConfiguration;
  v5 = a3;
  [(SUUIMenuBarViewElementConfiguration *)menuBarViewElementConfiguration setDelegate:0];
  v6 = [v5 templateElement];

  templateElement = self->_templateElement;
  self->_templateElement = v6;

  v8 = [(SUUIMenuBarTemplateElement *)self->_templateElement menuBar];
  menuBarViewElement = self->_menuBarViewElement;
  self->_menuBarViewElement = v8;

  v10 = [(SUUIMenuBarViewElement *)self->_menuBarViewElement configuration];
  v11 = self->_menuBarViewElementConfiguration;
  self->_menuBarViewElementConfiguration = v10;

  [(SUUIMenuBarViewElementConfiguration *)self->_menuBarViewElementConfiguration setDelegate:self];
  dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
  v13 = [(SUUIViewElement *)self->_menuBarViewElement entityProvider];
  [(SUUIDynamicPageSectionIndexMapper *)dynamicPageSectionIndexMapper setEntityProvider:v13];

  [(SUUIMenuBarTemplateDocumentViewController *)self _reloadContentViewController];
}

- (void)documentMediaQueriesDidUpdate:(id)a3
{
  menuBarSectionsViewController = self->_menuBarSectionsViewController;
  v5 = [(SUUIMenuBarTemplateDocumentViewController *)self _colorScheme];
  [(SUUIStorePageSectionsViewController *)menuBarSectionsViewController setColorScheme:v5];

  v6 = self->_menuBarSectionsViewController;

  [(SUUIStorePageSectionsViewController *)v6 invalidateAndReload];
}

- (id)navigationPaletteView
{
  if ([(SUUIMenuBarTemplateDocumentViewController *)self _isFirstViewControllerOnNavigationStack])
  {
    v3 = [(SUUIMenuBarSectionsViewController *)self->_menuBarSectionsViewController view];
    v4 = [(SUUIMenuBarSectionsViewController *)self->_menuBarSectionsViewController contentScrollView];
    [(SUUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost *)v3 layoutIfNeeded];
    [v4 layoutIfNeeded];
    [v4 contentSize];
    [(SUUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost *)v3 frame];
    [(SUUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost *)v3 setFrame:?];
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

      v10 = [(SUUIMenuBarTemplateDocumentViewController *)self titleView];
      [v10 sizeToFit];
      [(SUUIMenuBarTemplateDocumentViewControllerEmbeddedPaletteHost *)self->_embeddedPaletteHost setTitleView:v10];

      embeddedPaletteHost = self->_embeddedPaletteHost;
    }

    v3 = embeddedPaletteHost;
  }

  return v3;
}

- (void)menuBarViewElementConfiguration:(id)a3 didReplaceDocumentForEntityUniqueIdentifier:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_entityUniqueIdentifierToEntityIndex objectForKey:v6];
    if (v7)
    {
      goto LABEL_3;
    }

    v11 = [(SUUIMenuBarTemplateDocumentViewController *)self _dynamicPageSectionIndexMapper];
    if (v11)
    {
      v10 = v11;
      v9 = [(SUUIViewElement *)self->_menuBarViewElement entityProvider];
      v18 = [v10 totalNumberOfEntities];
      if (!v18)
      {
        goto LABEL_4;
      }

      v7 = 0;
      for (i = 0; i != v18; ++i)
      {
        v13 = [v10 entityIndexPathForGlobalIndex:{i, v17}];
        v14 = [v9 entityValueProviderAtIndexPath:v13];
        v15 = [v14 entityUniqueIdentifier];
        [(SUUIMenuBarTemplateDocumentViewController *)self _recordEntityUniqueIdentifier:v15 forEntityIndex:i];
        if (v15 == v6 || [v15 isEqual:v6])
        {
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];

          v7 = v16;
        }
      }

      if (v7)
      {
LABEL_3:
        v8 = [v7 unsignedIntegerValue];
        v9 = [(SUUIMenuBarTemplateDocumentViewController *)self _newChildViewControllerForEntityAtIndex:v8];
        [(SUUIMenuBarTemplateDocumentViewController *)self _replaceViewControllerAtIndex:v8 withViewController:v9];
        v10 = v7;
LABEL_4:
      }
    }
  }
}

- (void)menuBarViewElementConfiguration:(id)a3 didReplaceDocumentForMenuItemAtIndex:(unint64_t)a4
{
  v6 = [(SUUIMenuBarTemplateDocumentViewController *)self _newChildViewControllerForEntityAtIndex:a4];
  [(SUUIMenuBarTemplateDocumentViewController *)self _replaceViewControllerAtIndex:a4 withViewController:v6];
}

- (void)menuBarViewElementConfiguration:(id)a3 selectMenuItemViewElement:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v8 = a4;
  if (self->_scrollingSegmentedController)
  {
    v9 = [v10 indexOfMenuItemViewElement:v8];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController selectViewControllerAtIndex:v9 animated:v5];
    }
  }

  else
  {
    objc_storeStrong(&self->_pendingSelectedMenuItemViewElement, a4);
  }
}

- (id)navigationBarControllerWithViewElement:(id)a3
{
  v4 = a3;
  v5 = [(SUUINavigationBarController *)[SUUIMenuBarNavigationBarController alloc] initWithNavigationBarViewElement:v4];

  if ([(SUUIMenuBarTemplateDocumentViewController *)self _isFirstViewControllerOnNavigationStack])
  {
    v6 = [(SUUIMenuBarTemplateDocumentViewController *)self titleView];
    [(SUUIMenuBarNavigationBarController *)v5 setTitleView:v6];
  }

  return v5;
}

- (double)titleViewHeight
{
  v3 = [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController navigationBarTitleView];
  [v3 layoutMargins];
  v5 = v4;
  v7 = v6;

  v8 = [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController navigationBarTitleView];
  [v8 segmentedControlMinimumHeight];
  v10 = v9;

  return v7 + v5 + v10;
}

- (void)_addContentViewController:(id)a3
{
  v7 = a3;
  v4 = [v7 parentViewController];

  if (!v4)
  {
    [(SUUIMenuBarTemplateDocumentViewController *)self addChildViewController:v7];
    if ([(SUUIMenuBarTemplateDocumentViewController *)self isViewLoaded])
    {
      v5 = [(SUUIMenuBarTemplateDocumentViewController *)self view];
      v6 = [v7 view];
      [v5 bounds];
      [v6 setFrame:?];
      [v6 setAutoresizingMask:18];
      [v5 addSubview:v6];
    }

    [v7 didMoveToParentViewController:self];
  }
}

- (id)_childViewControllersForMenuItems
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(SUUIMenuBarTemplateDocumentViewController *)self _dynamicPageSectionIndexMapper];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 totalNumberOfEntities];
  }

  else
  {
    v6 = [(SUUIMenuBarViewElementConfiguration *)self->_menuBarViewElementConfiguration numberOfMenuItems];
  }

  v7 = v6;
  if (v6)
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
  v2 = [(SUUIMenuBarTemplateElement *)self->_templateElement style];
  v3 = [v2 ikBackgroundColor];
  v4 = [v3 color];

  if (!v4)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
  }

  v5 = objc_alloc_init(SUUIColorScheme);
  [(SUUIColorScheme *)v5 setBackgroundColor:v4];

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
    v6 = [(SUUIViewElement *)self->_menuBarViewElement entityProvider];
    [(SUUIDynamicPageSectionIndexMapper *)v5 setEntityProvider:v6];
  }

  v7 = self->_dynamicPageSectionIndexMapper;

  return v7;
}

- (unint64_t)_menuItemIndexForEntityIndex:(unint64_t)a3 entityValueProvider:(id *)a4
{
  v7 = [(SUUIMenuBarTemplateDocumentViewController *)self _dynamicPageSectionIndexMapper];
  if (!v7)
  {
    v10 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = [(SUUIViewElement *)self->_menuBarViewElement entityProvider];
  v9 = [v7 entityIndexPathForGlobalIndex:a3];
  v10 = [v8 entityValueProviderAtIndexPath:v9];

  a3 = 0;
  if (a4)
  {
LABEL_3:
    v11 = v10;
    *a4 = v10;
  }

LABEL_4:

  return a3;
}

- (id)_newChildViewControllerForEntityAtIndex:(unint64_t)a3
{
  v18 = 0;
  v5 = [(SUUIMenuBarTemplateDocumentViewController *)self _menuItemIndexForEntityIndex:a3 entityValueProvider:&v18];
  v6 = v18;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 entityUniqueIdentifier];
    [(SUUIMenuBarTemplateDocumentViewController *)self _recordEntityUniqueIdentifier:v8 forEntityIndex:a3];
    v9 = [(SUUIMenuBarViewElementConfiguration *)self->_menuBarViewElementConfiguration documentForEntityUniqueIdentifier:v8];
    v10 = [(SUUIMenuBarViewElementConfiguration *)self->_menuBarViewElementConfiguration documentOptionsForEntityUniqueIdentifier:v8];

    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_5:
    v11 = [SUUIDocumentContainerViewController alloc];
    v12 = [(SUUIViewController *)self clientContext];
    v13 = [(SUUIDocumentContainerViewController *)v11 initWithDocument:v9 options:v10 clientContext:v12];

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
    v14 = [(SUUIMenuBarViewElement *)self->_menuBarViewElement titleForMenuItemAtIndex:a3];
    v15 = [v14 text];
    v16 = [v15 string];
    [(SUUIDocumentContainerViewController *)v13 setTitle:v16];
  }

  return v13;
}

- (void)_recordEntityUniqueIdentifier:(id)a3 forEntityIndex:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v11 = v6;
    entityUniqueIdentifierToEntityIndex = self->_entityUniqueIdentifierToEntityIndex;
    if (!entityUniqueIdentifierToEntityIndex)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_entityUniqueIdentifierToEntityIndex;
      self->_entityUniqueIdentifierToEntityIndex = v8;

      entityUniqueIdentifierToEntityIndex = self->_entityUniqueIdentifierToEntityIndex;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)entityUniqueIdentifierToEntityIndex setObject:v10 forKey:v11];

    v6 = v11;
  }
}

- (void)_reloadContentViewController
{
  v3 = [(SUUIMenuBarViewElementConfiguration *)self->_menuBarViewElementConfiguration menuBarStyle];
  menuBarStyle = self->_menuBarStyle;
  if (menuBarStyle != v3)
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
  self->_menuBarStyle = v3;
  if (v3 == 3)
  {
    if (self->_loadingDocumentViewController)
    {
      return;
    }

    v24 = [(SUUIViewElement *)self->_menuBarViewElement firstChildForElementType:4];
    v25 = [[SUUILoadingDocumentViewController alloc] initWithActivityIndicatorElement:v24];
    loadingDocumentViewController = self->_loadingDocumentViewController;
    self->_loadingDocumentViewController = v25;

    v27 = self->_loadingDocumentViewController;
    v28 = [(SUUIViewController *)self clientContext];
    [(SUUIViewController *)v27 setClientContext:v28];

    v29 = self->_loadingDocumentViewController;
    v30 = [(SUUIViewController *)self operationQueue];
    [(SUUIViewController *)v29 setOperationQueue:v30];

    v31 = self->_loadingDocumentViewController;
LABEL_36:

    if (!v31)
    {
      return;
    }

    goto LABEL_37;
  }

  if (v3 != 2)
  {
    if (v3 != 1)
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
      v35 = [(SUUIViewController *)self clientContext];
      [(SUUIScrollingSegmentedController *)v34 setClientContext:v35];

      v36 = self->_scrollingSegmentedController;
      v37 = [(SUUIViewController *)self operationQueue];
      [(SUUIViewController *)v36 setOperationQueue:v37];

      [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController setDelegate:self];
      [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController scrollingTabAppearanceStatusWasUpdated:*&self->_scrollingTabAppearanceStatus.progress, *&self->_scrollingTabAppearanceStatus.isBouncingOffTheEdge];
      v38 = self->_scrollingSegmentedController;
      v39 = [(SUUIMenuBarTemplateDocumentViewController *)self _childViewControllersForMenuItems];
      [(SUUIScrollingSegmentedController *)v38 setViewControllers:v39];

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
    v24 = [(SUUIMenuBarViewElement *)self->_menuBarViewElement style];
    v41 = [v24 valueForStyle:*MEMORY[0x277D1AFE8]];
    v42 = [(SUUIScrollingSegmentedController *)self->_scrollingSegmentedController navigationBarTitleView];
    v43 = v42;
    if (v41)
    {
      [v42 setLayoutStyle:1];
      [v41 UIEdgeInsetsValue];
    }

    else
    {
      [v42 setLayoutStyle:0];
      v54 = 0;
      SUUIViewElementPaddingForStyle(v24, &v54);
      if (v54 != 1)
      {
LABEL_33:
        v44 = [v24 valueForStyle:*MEMORY[0x277D1AFD8]];
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

  v14 = [(SUUIMenuBarTemplateDocumentViewController *)self _childViewControllersForMenuItems];
  [(SUUIHorizontalScrollingContainerViewController *)horizontalScrollingContainerViewController setViewControllers:v14];

  menuBarSectionsViewController = self->_menuBarSectionsViewController;
  if (!menuBarSectionsViewController)
  {
    v16 = [[SUUIMenuBarSectionsViewController alloc] initWithLayoutStyle:0];
    v17 = self->_menuBarSectionsViewController;
    self->_menuBarSectionsViewController = v16;

    v18 = self->_menuBarSectionsViewController;
    v19 = [(SUUIViewController *)self clientContext];
    [(SUUIViewController *)v18 setClientContext:v19];

    v20 = self->_menuBarSectionsViewController;
    v21 = [(SUUIViewController *)self operationQueue];
    [(SUUIViewController *)v20 setOperationQueue:v21];

    v22 = self->_menuBarSectionsViewController;
    [(SUUIMenuBarTemplateDocumentViewController *)self preferredContentSize];
    [(SUUIMenuBarSectionsViewController *)v22 setPreferredContentSize:?];
    v23 = [(SUUIMenuBarSectionsViewController *)self->_menuBarSectionsViewController view];
    [v23 frame];
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
      [v23 setFrame:?];
    }

    menuBarSectionsViewController = self->_menuBarSectionsViewController;
  }

  v47 = [(SUUIMenuBarTemplateDocumentViewController *)self _colorScheme];
  [(SUUIStorePageSectionsViewController *)menuBarSectionsViewController setColorScheme:v47];

  [(SUUIMenuBarSectionsViewController *)self->_menuBarSectionsViewController setNumberOfIterationsForShelfPageSections:1];
  [(SUUIStorePageSectionsViewController *)self->_menuBarSectionsViewController _setRendersWithPerspective:[(SUUIViewElement *)self->_templateElement rendersWithPerspective]];
  [(SUUIStorePageSectionsViewController *)self->_menuBarSectionsViewController _setRendersWithParallax:[(SUUIViewElement *)self->_templateElement rendersWithParallax]];
  v48 = self->_menuBarSectionsViewController;
  v49 = [(SUUIMenuBarTemplateDocumentViewController *)self _zoomingShelfPageSplitsDescription];
  [(SUUIStorePageSectionsViewController *)v48 setSectionsWithSplitsDescription:v49];

  v50 = [(SUUIStorePageSectionsViewController *)self->_menuBarSectionsViewController sections];
  v51 = [v50 firstObject];

  v52 = [v51 configuration];
  v53 = [v52 shelfCollectionView];
  [(SUUIHorizontalScrollingContainerViewController *)self->_horizontalScrollingContainerViewController setMenuBarCollectionView:v53];
  v31 = self->_horizontalScrollingContainerViewController;

  if (v31)
  {
LABEL_37:
    [(SUUIMenuBarTemplateDocumentViewController *)self _addContentViewController:v31];
  }
}

- (void)_removeContentViewController:(id)a3
{
  v6 = a3;
  v3 = [v6 parentViewController];
  if (v3)
  {
    [v6 willMoveToParentViewController:0];
  }

  if ([v6 isViewLoaded])
  {
    v4 = [v6 view];
    v5 = [v4 superview];

    if (v5)
    {
      [v4 removeFromSuperview];
    }
  }

  if (v3)
  {
    [v6 removeFromParentViewController];
  }
}

- (void)_replaceViewControllerAtIndex:(unint64_t)a3 withViewController:(id)a4
{
  v6 = a4;
  v7 = v6;
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

  v10 = v6;
  v6 = [*(&self->super.super.super.super.isa + *v9) replaceViewControllerAtIndex:a3 withViewController:v6];
  v7 = v10;
LABEL_6:

  MEMORY[0x2821F96F8](v6, v7);
}

- (BOOL)_isFirstViewControllerOnNavigationStack
{
  v2 = self;
  v3 = [(SUUIMenuBarTemplateDocumentViewController *)self navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 firstObject];
  LOBYTE(v2) = SUUIViewControllerIsDescendent(v2, v5);

  return v2;
}

- (void)_willDisplayViewControllerAtIndex:(unint64_t)a3
{
  v8 = 0;
  v4 = [(SUUIMenuBarTemplateDocumentViewController *)self _menuItemIndexForEntityIndex:a3 entityValueProvider:&v8];
  menuBarViewElementConfiguration = self->_menuBarViewElementConfiguration;
  v6 = v8;
  v7 = [(SUUIViewController *)self clientContext];
  [(SUUIMenuBarViewElementConfiguration *)menuBarViewElementConfiguration contentWillAppearForMenuItemAtIndex:v4 withEntityValueProvider:v6 clientContext:v7];
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