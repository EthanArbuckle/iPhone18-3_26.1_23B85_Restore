@interface SUUISwooshArrayViewController
- (BOOL)isSkLoaded;
- (NSOperationQueue)operationQueue;
- (SUUIProductPageChildViewControllerDelegate)delegate;
- (SUUISwooshArrayViewController)initWithSwooshComponents:(id)components;
- (id)_artworkLoader;
- (id)_clickEventForSeeAllForViewController:(id)controller;
- (id)_clickEventWithItem:(id)item;
- (id)_scrollView;
- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index;
- (void)_addHeaderView;
- (void)_addMissingItemsWithResponse:(id)response error:(id)error;
- (void)_layoutSwooshViews;
- (void)_loadMissingItemsIfNecessary;
- (void)_reloadChildViewControllers;
- (void)dealloc;
- (void)loadView;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAskPermission:(BOOL)permission;
- (void)setClientContext:(id)context;
- (void)setColorScheme:(id)scheme;
- (void)setDelegate:(id)delegate;
- (void)setHeaderViewController:(id)controller;
- (void)setSwooshComponents:(id)components;
- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index;
- (void)swooshDidSelectSeeAll:(id)all;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUUISwooshArrayViewController

- (SUUISwooshArrayViewController)initWithSwooshComponents:(id)components
{
  componentsCopy = components;
  v9.receiver = self;
  v9.super_class = SUUISwooshArrayViewController;
  v5 = [(SUUISwooshArrayViewController *)&v9 init];
  if (v5)
  {
    v6 = [componentsCopy copy];
    swooshComponents = v5->_swooshComponents;
    v5->_swooshComponents = v6;
  }

  return v5;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_viewControllers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setDelegate:0];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(UIScrollView *)self->_scrollView setDelegate:0];
  v8.receiver = self;
  v8.super_class = SUUISwooshArrayViewController;
  [(SUUISwooshArrayViewController *)&v8 dealloc];
}

- (BOOL)isSkLoaded
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = self->_swooshComponents;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        lockups = [*(*(&v20 + 1) + 8 * i) lockups];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = lockups;
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              item = [*(*(&v16 + 1) + 8 * j) item];

              if (!item)
              {

                v14 = 0;
                goto LABEL_19;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
      v14 = 1;
    }

    while (v4);
  }

  else
  {
    v14 = 1;
  }

LABEL_19:

  return v14;
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:2];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  if (self->_clientContext != contextCopy)
  {
    v8 = contextCopy;
    objc_storeStrong(&self->_clientContext, context);
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_RELATED_TAB" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"PRODUCT_PAGE_RELATED_TAB" inBundles:0 inTable:@"ProductPage"];
    }
    v7 = ;
    [(SUUISwooshArrayViewController *)self setTitle:v7];

    contextCopy = v8;
  }
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v8 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    view = [(SUUISwooshArrayViewController *)self view];
    backgroundColor = [(SUUIColorScheme *)self->_colorScheme backgroundColor];
    [view setBackgroundColor:backgroundColor];

    schemeCopy = v8;
  }
}

- (void)setSwooshComponents:(id)components
{
  componentsCopy = components;
  v5 = componentsCopy;
  if (self->_swooshComponents != componentsCopy)
  {
    v8 = componentsCopy;
    v6 = [(NSArray *)componentsCopy copy];
    swooshComponents = self->_swooshComponents;
    self->_swooshComponents = v6;

    componentsCopy = [(SUUISwooshArrayViewController *)self isViewLoaded];
    v5 = v8;
    if (componentsCopy)
    {
      componentsCopy = [(SUUISwooshArrayViewController *)self _reloadChildViewControllers];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](componentsCopy, v5);
}

- (void)setAskPermission:(BOOL)permission
{
  if (self->_askPermission != permission)
  {
    self->_askPermission = permission;
    [(SUUISwooshArrayViewController *)self _reloadChildViewControllers];
  }
}

- (void)setHeaderViewController:(id)controller
{
  controllerCopy = controller;
  headerViewController = self->_headerViewController;
  v9 = controllerCopy;
  if (headerViewController != controllerCopy)
  {
    if ([(SUUIProductPageHeaderViewController *)headerViewController isViewLoaded])
    {
      view = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
      [view removeFromSuperview];

      floatingView = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
      [floatingView removeFromSuperview];
    }

    [(SUUIProductPageHeaderViewController *)self->_headerViewController removeFromParentViewController];
    objc_storeStrong(&self->_headerViewController, controller);
    if (self->_headerViewController)
    {
      [(SUUISwooshArrayViewController *)self addChildViewController:?];
      if ([(SUUISwooshArrayViewController *)self isViewLoaded])
      {
        [(SUUISwooshArrayViewController *)self _addHeaderView];
      }
    }
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    if (self->_scrollView)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 productPageChildViewControllerDidLoadScrollView:self];

      v5 = obj;
    }
  }
}

- (void)loadView
{
  _scrollView = [(SUUISwooshArrayViewController *)self _scrollView];
  [(SUUISwooshArrayViewController *)self setView:_scrollView];

  [(SUUISwooshArrayViewController *)self _reloadChildViewControllers];

  [(SUUISwooshArrayViewController *)self _addHeaderView];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SUUISwooshArrayViewController *)self _loadMissingItemsIfNecessary];
  v5.receiver = self;
  v5.super_class = SUUISwooshArrayViewController;
  [(SUUISwooshArrayViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index
{
  lockups = [swoosh lockups];
  v12 = [lockups objectAtIndex:index];

  item = [v12 item];
  if (item)
  {
    v8 = [(SUUISwooshArrayViewController *)self _clickEventWithItem:item];
    if (v8)
    {
      [(SUUIMetricsController *)self->_metricsController recordEvent:v8];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 productPageChildOpenItem:item];
    }
  }
}

- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index
{
  swooshCopy = swoosh;
  v7 = [(NSMutableArray *)self->_viewControllers indexOfObjectIdenticalTo:swooshCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v9 = [(NSMutableArray *)self->_swooshArtworkLoaders objectAtIndex:v7];
  lockups = [swooshCopy lockups];
  v11 = [lockups objectAtIndex:index];

  item = [v11 item];
  if (!item)
  {
    v13 = v9;
    v14 = 0;
    goto LABEL_7;
  }

  v8 = [v9 cachedImageForItem:item];
  if (!v8)
  {
    [v9 loadImageForItem:item reason:1];
    v13 = v9;
    v14 = item;
LABEL_7:
    v8 = [v13 placeholderImageForItem:v14];
  }

LABEL_9:

  return v8;
}

- (void)swooshDidSelectSeeAll:(id)all
{
  allCopy = all;
  v5 = [(SUUISwooshArrayViewController *)self _clickEventForSeeAllForViewController:allCopy];
  if (v5)
  {
    [(SUUIMetricsController *)self->_metricsController recordEvent:v5];
  }

  seeAllURL = [allCopy seeAllURL];
  if (seeAllURL)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SUUISwooshArrayViewController_swooshDidSelectSeeAll___block_invoke;
    v8[3] = &unk_2798F59A8;
    v8[4] = self;
    v9 = allCopy;
    v10 = seeAllURL;
    [WeakRetained productPageChildOpenURL:v10 viewControllerBlock:v8];
  }
}

SUUIStorePageViewController *__55__SUUISwooshArrayViewController_swooshDidSelectSeeAll___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SUUIStorePageViewController);
  v3 = [*(a1 + 32) clientContext];
  [(SUUIStorePageViewController *)v2 setClientContext:v3];

  v4 = [*(a1 + 40) title];
  [(SUUIStorePageViewController *)v2 setTitle:v4];

  [(SUUIStorePageViewController *)v2 loadURL:*(a1 + 48) withCompletionBlock:0];

  return v2;
}

- (void)scrollViewDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained productPageChildViewControllerDidScroll:self];
}

- (void)_addHeaderView
{
  view = [(SUUIProductPageHeaderViewController *)self->_headerViewController view];
  [view setAutoresizingMask:2];
  [view frame];
  v4 = v3;
  [(UIScrollView *)self->_scrollView bounds];
  [view setFrame:{0.0, v4}];
  [(UIScrollView *)self->_scrollView _addContentSubview:view atBack:0];
  floatingView = [(SUUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [floatingView setAutoresizingMask:2];
  [floatingView frame];
  v7 = v6;
  [(UIScrollView *)self->_scrollView bounds];
  [floatingView setFrame:{0.0, v7}];
  [(UIScrollView *)self->_scrollView _addContentSubview:floatingView atBack:0];
}

- (void)_addMissingItemsWithResponse:(id)response error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (responseCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_swooshComponents;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v13 + 1) + 8 * v10++) _updateLockupItemsWithLookupResponse:{responseCopy, v13}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(SUUISwooshArrayViewController *)self _reloadChildViewControllers];
    [(SUUISwooshArrayViewController *)self _layoutSwooshViews];
  }

  [(SSVPlatformRequestOperation *)self->_platformOperation setResponseBlock:0, v13];
  platformOperation = self->_platformOperation;
  self->_platformOperation = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained productPageChildViewControllerDidLoad:self];

  [(SUUISwooshArrayViewController *)self _loadMissingItemsIfNecessary];
}

- (id)_artworkLoader
{
  artworkLoader = self->_artworkLoader;
  if (!artworkLoader)
  {
    v4 = [[SUUIResourceLoader alloc] initWithClientContext:self->_clientContext];
    v5 = self->_artworkLoader;
    self->_artworkLoader = v4;

    v6 = self->_artworkLoader;
    v7 = SUUIResourceLoaderGetNameForObject(self);
    [(SUUIResourceLoader *)v6 setName:v7];

    artworkLoader = self->_artworkLoader;
  }

  return artworkLoader;
}

- (id)_clickEventForSeeAllForViewController:(id)controller
{
  v15[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if ([(SUUIMetricsController *)self->_metricsController canRecordEventWithType:*MEMORY[0x277D6A478]])
  {
    v5 = objc_alloc_init(MEMORY[0x277D69B68]);
    v6 = *MEMORY[0x277D6A4D0];
    [v5 setTargetType:*MEMORY[0x277D6A4D0]];
    v7 = [(SUUIMetricsController *)self->_metricsController locationWithPosition:[(NSMutableArray *)self->_viewControllers indexOfObjectIdenticalTo:controllerCopy] type:@"swoosh" fieldData:0];
    v8 = [(SUUIMetricsController *)self->_metricsController locationWithPosition:0 type:v6 fieldData:0];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v15[0] = v8;
      v15[1] = v7;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
      [v5 setLocationWithEventLocations:v11];
    }

    [controllerCopy seeAllButtonFrame];
    SUUIMetricsSetClickEventPositionWithPoint(v5, v12, v13);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_clickEventWithItem:(id)item
{
  v42[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([(SUUIMetricsController *)self->_metricsController canRecordEventWithType:*MEMORY[0x277D6A478]])
  {
    v5 = objc_alloc_init(MEMORY[0x277D69B68]);
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__40;
    v32 = __Block_byref_object_dispose__40;
    v33 = 0;
    viewControllers = self->_viewControllers;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __53__SUUISwooshArrayViewController__clickEventWithItem___block_invoke;
    v23 = &unk_2798FA680;
    v7 = itemCopy;
    v24 = v7;
    v25 = &v38;
    v26 = &v34;
    v27 = &v28;
    [(NSMutableArray *)viewControllers enumerateObjectsUsingBlock:&v20];
    v8 = [(SUUIMetricsController *)self->_metricsController locationWithPosition:v35[3] type:@"swoosh" fieldData:0];
    v9 = *MEMORY[0x277D6A4E0];
    v10 = [(SUUIMetricsController *)self->_metricsController locationWithPosition:v39[3] type:*MEMORY[0x277D6A4E0] fieldData:v7];
    v11 = v10;
    if (v8 && v10)
    {
      v42[0] = v10;
      v42[1] = v8;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
      [v5 setLocationWithEventLocations:v12];
    }

    v13 = MEMORY[0x277CCACA8];
    itemIdentifier = [v7 itemIdentifier];
    v15 = [v13 stringWithFormat:@"%lld", itemIdentifier, v20, v21, v22, v23];
    [v5 setTargetIdentifier:v15];

    [v5 setTargetType:v9];
    productPageURLString = [v7 productPageURLString];
    [v5 setTargetURL:productPageURLString];

    [v29[5] frameForItemAtIndex:v39[3]];
    SUUIMetricsSetClickEventPositionWithPoint(v5, v17, v18);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __53__SUUISwooshArrayViewController__clickEventWithItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v9 = [v8 lockups];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__SUUISwooshArrayViewController__clickEventWithItem___block_invoke_2;
  v11[3] = &unk_2798FA658;
  v12 = *(a1 + 32);
  v10 = [v9 indexOfObjectPassingTest:v11];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 40) + 8) + 24) = v10;
    *(*(*(a1 + 48) + 8) + 24) = a3;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    *a4 = 1;
  }
}

BOOL __53__SUUISwooshArrayViewController__clickEventWithItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 item];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_layoutSwooshViews
{
  view = [(SUUISwooshArrayViewController *)self view];
  [view frame];
  v5 = v4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  viewControllers = self->_viewControllers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__SUUISwooshArrayViewController__layoutSwooshViews__block_invoke;
  v11[3] = &unk_2798FA6A8;
  v11[4] = self;
  v13 = &v18;
  v14 = v7;
  v15 = v8;
  v16 = v4;
  v17 = v9;
  v10 = view;
  v12 = v10;
  [(NSMutableArray *)viewControllers enumerateObjectsUsingBlock:v11];
  [v10 setContentSize:{v5, v19[3]}];

  _Block_object_dispose(&v18, 8);
}

void __51__SUUISwooshArrayViewController__layoutSwooshViews__block_invoke(uint64_t a1, void *a2)
{
  v14 = [a2 view];
  [v14 setAutoresizingMask:2];
  v3 = [*(*(a1 + 32) + 1016) backgroundColor];
  if (v3)
  {
    [v14 setBackgroundColor:v3];
  }

  else
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
    [v14 setBackgroundColor:v4];
  }

  [v14 frame];
  v6 = v5;
  v8 = v7;
  v9 = *(*(*(a1 + 48) + 8) + 24);
  v10 = *(a1 + 72);
  [v14 setFrame:?];
  v11 = *(a1 + 40);
  v12 = *(*(a1 + 32) + 1032);
  if (v12)
  {
    v13 = [v12 view];
    [v11 insertSubview:v14 belowSubview:v13];
  }

  else
  {
    [*(a1 + 40) insertSubview:v14 atIndex:0];
  }

  v16.origin.x = v6;
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v8;
  *(*(*(a1 + 48) + 8) + 24) = CGRectGetMaxY(v16) + 0.0;
}

- (void)_loadMissingItemsIfNecessary
{
  v41 = *MEMORY[0x277D85DE8];
  if (!self->_platformOperation)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = self->_swooshComponents;
    v27 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v27)
    {
      v26 = *v36;
      v4 = *MEMORY[0x277D6A748];
LABEL_4:
      v5 = 0;
      while (1)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(obj);
        }

        lockups = [*(*(&v35 + 1) + 8 * v5) lockups];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v7 = lockups;
        v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v8)
        {
          v9 = *v32;
LABEL_9:
          v10 = 0;
          while (1)
          {
            if (*v32 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v31 + 1) + 8 * v10);
            item = [v11 item];
            v13 = item == 0;

            if (v13)
            {
              v14 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v11, "itemIdentifier")}];
              [v3 addObject:v14];
              v15 = [v3 count] == v4;

              if (v15)
              {
                break;
              }
            }

            if (v8 == ++v10)
            {
              v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
              if (v8)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }

        v16 = [v3 count] == v4;
        if (v16)
        {
          break;
        }

        if (++v5 == v27)
        {
          v27 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (v27)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if ([v3 count])
    {
      v17 = objc_alloc(MEMORY[0x277D69CF0]);
      platformContext = [(SUUIClientContext *)self->_clientContext platformContext];
      v19 = [v17 initWithPlatformContext:platformContext];
      platformOperation = self->_platformOperation;
      self->_platformOperation = v19;

      [(SSVPlatformRequestOperation *)self->_platformOperation setItemIdentifiers:v3];
      [(SSVPlatformRequestOperation *)self->_platformOperation setKeyProfile:*MEMORY[0x277D6A2C8]];
      v21 = self->_platformOperation;
      v22 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
      [(SSVPlatformRequestOperation *)v21 setStoreFrontSuffix:v22];

      objc_initWeak(&location, self);
      v23 = self->_platformOperation;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __61__SUUISwooshArrayViewController__loadMissingItemsIfNecessary__block_invoke;
      v28[3] = &unk_2798F67F0;
      objc_copyWeak(&v29, &location);
      [(SSVPlatformRequestOperation *)v23 setResponseBlock:v28];
      operationQueue = [(SUUISwooshArrayViewController *)self operationQueue];
      [operationQueue addOperation:self->_platformOperation];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }
}

void __61__SUUISwooshArrayViewController__loadMissingItemsIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SUUISwooshArrayViewController__loadMissingItemsIfNecessary__block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __61__SUUISwooshArrayViewController__loadMissingItemsIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _addMissingItemsWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_reloadChildViewControllers
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = 1072;
  if (!self->_swooshArtworkLoaders)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    swooshArtworkLoaders = self->_swooshArtworkLoaders;
    self->_swooshArtworkLoaders = v4;
  }

  v6 = 1088;
  viewControllers = self->_viewControllers;
  if (!viewControllers)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = self->_viewControllers;
    self->_viewControllers = v8;

    viewControllers = self->_viewControllers;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = viewControllers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        if ([v15 isViewLoaded])
        {
          view = [v15 view];
          [view removeFromSuperview];
        }

        [v15 removeFromParentViewController];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v12);
  }

  [(NSMutableArray *)self->_swooshArtworkLoaders removeAllObjects];
  [(NSMutableArray *)self->_viewControllers removeAllObjects];
  if (!self->_askPermission)
  {
    _artworkLoader = [(SUUISwooshArrayViewController *)self _artworkLoader];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = self->_swooshComponents;
    v33 = [(NSArray *)v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v33)
    {
      v19 = *v35;
      v32 = *v35;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v18);
          }

          v21 = *(*(&v34 + 1) + 8 * j);
          v22 = self->_colorScheme;
          if (!v22)
          {
            v22 = objc_alloc_init(SUUIColorScheme);
            backgroundColor = [(SUUIColorScheme *)self->_colorScheme backgroundColor];
            if (backgroundColor)
            {
              [(SUUIColorScheme *)v22 setBackgroundColor:backgroundColor];
            }

            else
            {
              [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
              v24 = v18;
              v25 = _artworkLoader;
              v26 = v6;
              v28 = v27 = v3;
              [(SUUIColorScheme *)v22 setBackgroundColor:v28];

              v3 = v27;
              v6 = v26;
              _artworkLoader = v25;
              v18 = v24;
              v19 = v32;
            }
          }

          v29 = [[SUUILockupSwooshViewController alloc] initWithSwoosh:v21];
          [(SUUILockupSwooshViewController *)v29 setColorScheme:v22];
          [(SUUILockupSwooshViewController *)v29 setClientContext:self->_clientContext];
          [(SUUILockupSwooshViewController *)v29 setDelegate:self];
          lockups = [v21 lockups];
          -[SUUILockupSwooshViewController setSeeAllHidden:](v29, "setSeeAllHidden:", [lockups count] < 4);

          [*(&self->super.super.super.isa + v6) addObject:v29];
          [(SUUISwooshArrayViewController *)self addChildViewController:v29];
          v31 = [[SUUILockupSwooshArtworkLoader alloc] initWithArtworkLoader:_artworkLoader swoosh:v29];
          [*(&self->super.super.super.isa + v3) addObject:v31];
        }

        v33 = [(NSArray *)v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v33);
    }
  }

  [(SUUISwooshArrayViewController *)self _layoutSwooshViews];
}

- (id)_scrollView
{
  scrollView = self->_scrollView;
  if (!scrollView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D759D8]);
    v5 = self->_scrollView;
    self->_scrollView = v4;

    [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
    [(UIScrollView *)self->_scrollView setAutoresizesSubviews:1];
    v6 = self->_scrollView;
    backgroundColor = [(SUUIColorScheme *)self->_colorScheme backgroundColor];
    if (backgroundColor)
    {
      [(UIScrollView *)v6 setBackgroundColor:backgroundColor];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [(UIScrollView *)v6 setBackgroundColor:v8];
    }

    [(UIScrollView *)self->_scrollView setDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained productPageChildViewControllerDidLoadScrollView:self];

    scrollView = self->_scrollView;
  }

  return scrollView;
}

- (SUUIProductPageChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end