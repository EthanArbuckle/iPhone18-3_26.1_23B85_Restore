@interface SUUILockupSwooshPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUILockupSwooshPageSection)initWithPageComponent:(id)component;
- (id)_artworkLoader;
- (id)_missingItemLoader;
- (id)_popSourceViewForOverlayController:(id)controller;
- (id)_swooshViewController;
- (id)cellForIndexPath:(id)path;
- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index;
- (id)swoosh:(id)swoosh videoThumbnailForCellAtIndex:(int64_t)index;
- (void)_addImpressionForItemIndex:(int64_t)index toSession:(id)session;
- (void)_loadMissingItemsFromIndex:(int64_t)index withReason:(int64_t)reason;
- (void)_showProductPageForItem:(id)item index:(int64_t)index animated:(BOOL)animated;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)dealloc;
- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers;
- (void)prefetchResourcesWithReason:(int64_t)reason;
- (void)productPageOverlayDidDismiss:(id)dismiss;
- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index;
- (void)swoosh:(id)swoosh willDisplayCellAtIndex:(int64_t)index;
- (void)swooshDidSelectSeeAll:(id)all;
- (void)willAppearInContext:(id)context;
@end

@implementation SUUILockupSwooshPageSection

- (SUUILockupSwooshPageSection)initWithPageComponent:(id)component
{
  v4.receiver = self;
  v4.super_class = SUUILockupSwooshPageSection;
  result = [(SUUIStorePageSection *)&v4 initWithPageComponent:component];
  if (result)
  {
    result->_overlaySourceIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)dealloc
{
  [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  [(SUUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  [(SUUILockupSwooshViewController *)self->_swooshViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUILockupSwooshPageSection;
  [(SUUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  v22 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  sessionCopy = session;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];

  [(SUUILockupSwooshViewController *)self->_swooshViewController indexPathsForVisibleItems];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        -[SUUILockupSwooshPageSection _addImpressionForItemIndex:toSession:](self, "_addImpressionForItemIndex:toSession:", [v15 item], sessionCopy);
        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SUUILockupSwooshPageSectionReuseIdentifier" forIndexPath:pathCopy];

  _swooshViewController = [(SUUILockupSwooshPageSection *)self _swooshViewController];
  view = [_swooshViewController view];

  contentChildView = [v7 contentChildView];

  if (view != contentChildView)
  {
    [v7 setContentChildView:view];
    [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  }

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  _swooshViewController = [(SUUILockupSwooshPageSection *)self _swooshViewController];
  view = [_swooshViewController view];

  [view sizeToFit];
  [view frame];
  v9 = v8;
  [collectionView bounds];
  v11 = v10;

  v12 = v11;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)prefetchResourcesWithReason:(int64_t)reason
{
  _artworkLoader = [(SUUILockupSwooshPageSection *)self _artworkLoader];
  [_artworkLoader loadImagesForNextPageWithReason:reason];

  [(SUUILockupSwooshPageSection *)self _loadMissingItemsFromIndex:0 withReason:reason];
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUILockupSwooshPageSectionReuseIdentifier"];
  v6.receiver = self;
  v6.super_class = SUUILockupSwooshPageSection;
  [(SUUIStorePageSection *)&v6 willAppearInContext:contextCopy];
}

- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    view = [(SUUILockupSwooshViewController *)self->_swooshViewController view];
    [view frame];
    v10 = v9;
    v12 = v11;
    v13 = [pageComponent _updateLockupItemsWithItems:itemsCopy];
    swooshViewController = self->_swooshViewController;
    lockups = [pageComponent lockups];
    [(SUUILockupSwooshViewController *)swooshViewController setLockups:lockups];

    [view frame];
    if (v17 != v10 || v16 != v12)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __85__SUUILockupSwooshPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke;
      v20[3] = &unk_2798F5BE8;
      v20[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v20];
    }

    _artworkLoader = [(SUUILockupSwooshPageSection *)self _artworkLoader];
    [_artworkLoader loadImagesForNextPageWithReason:0];
  }
}

void __85__SUUILockupSwooshPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{objc_msgSend(*(a1 + 32), "sectionIndex")}];
  v3 = [*(a1 + 32) context];
  v4 = [v3 collectionView];
  v6[0] = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v4 reloadItemsAtIndexPaths:v5];
}

- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index
{
  swooshCopy = swoosh;
  lockups = [swooshCopy lockups];
  v7 = [lockups objectAtIndex:index];

  item = [v7 item];
  if (item)
  {
    v9 = [(SUUIStorePageSection *)self clickEventWithItem:item elementName:*MEMORY[0x277D6A4E0] index:index];
    if (v9)
    {
      [swooshCopy frameForItemAtIndex:index];
      SUUIMetricsSetClickEventPositionWithPoint(v9, v10, v11);
      context = [(SUUIStorePageSection *)self context];
      metricsController = [context metricsController];
      [metricsController recordEvent:v9];
    }

    [(SUUILockupSwooshPageSection *)self _showProductPageForItem:item index:index animated:1];
  }
}

- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index
{
  swooshCopy = swoosh;
  _artworkLoader = [(SUUILockupSwooshPageSection *)self _artworkLoader];
  lockups = [swooshCopy lockups];

  v9 = [lockups objectAtIndex:index];

  item = [v9 item];
  if (item)
  {
    v11 = [_artworkLoader cachedImageForItem:item];
    if (v11)
    {
      goto LABEL_6;
    }

    [_artworkLoader loadImageForItem:item reason:1];
    v12 = _artworkLoader;
    v13 = item;
  }

  else
  {
    v12 = _artworkLoader;
    v13 = 0;
  }

  v11 = [v12 placeholderImageForItem:v13];
LABEL_6:

  return v11;
}

- (id)swoosh:(id)swoosh videoThumbnailForCellAtIndex:(int64_t)index
{
  swooshCopy = swoosh;
  _artworkLoader = [(SUUILockupSwooshPageSection *)self _artworkLoader];
  lockups = [swooshCopy lockups];

  v9 = [lockups objectAtIndex:index];

  item = [v9 item];
  videos = [item videos];
  firstObject = [videos firstObject];

  v13 = _artworkLoader;
  if (firstObject)
  {
    v14 = [_artworkLoader cachedImageForVideo:firstObject];
    if (v14)
    {
      goto LABEL_6;
    }

    [_artworkLoader loadImageForVideo:firstObject reason:1];
    v13 = _artworkLoader;
    v15 = firstObject;
  }

  else
  {
    v15 = 0;
  }

  v14 = [v13 placeholderImageForVideo:v15];
LABEL_6:

  return v14;
}

- (void)swoosh:(id)swoosh willDisplayCellAtIndex:(int64_t)index
{
  context = [(SUUIStorePageSection *)self context];
  metricsController = [context metricsController];
  activeImpressionsSession = [metricsController activeImpressionsSession];

  if (activeImpressionsSession)
  {
    [(SUUILockupSwooshPageSection *)self _addImpressionForItemIndex:index toSession:activeImpressionsSession];
  }

  [(SUUILockupSwooshPageSection *)self _loadMissingItemsFromIndex:index withReason:1];
}

- (void)swooshDidSelectSeeAll:(id)all
{
  allCopy = all;
  seeAllURL = [allCopy seeAllURL];
  if (seeAllURL)
  {
    v5 = [[SUUILink alloc] initWithURL:seeAllURL];
    v6 = [(SUUIStorePageSection *)self clickEventWithLink:v5 elementName:*MEMORY[0x277D6A4D0] index:0];
    if (v6)
    {
      [allCopy seeAllButtonFrame];
      SUUIMetricsSetClickEventPositionWithPoint(v6, v7, v8);
      context = [(SUUIStorePageSection *)self context];
      metricsController = [context metricsController];
      [metricsController recordEvent:v6];
    }

    context2 = [(SUUIStorePageSection *)self context];
    parentViewController = [context2 parentViewController];

    v13 = objc_alloc_init(SUUIStorePageViewController);
    clientContext = [parentViewController clientContext];
    [(SUUIStorePageViewController *)v13 setClientContext:clientContext];

    title = [allCopy title];
    [(SUUIStorePageViewController *)v13 setTitle:title];

    [(SUUIStorePageViewController *)v13 loadURL:seeAllURL withCompletionBlock:0];
    navigationController = [parentViewController navigationController];
    [navigationController pushViewController:v13 animated:1];
  }
}

- (void)productPageOverlayDidDismiss:(id)dismiss
{
  context = [(SUUIStorePageSection *)self context];
  parentViewController = [context parentViewController];
  [parentViewController _pageSectionDidDismissOverlayController:self->_overlayController];

  [(SUUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  overlayController = self->_overlayController;
  self->_overlayController = 0;

  [(SUUILockupSwooshViewController *)self->_swooshViewController unhideImages];
  self->_overlaySourceIndex = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_addImpressionForItemIndex:(int64_t)index toSession:(id)session
{
  swooshViewController = self->_swooshViewController;
  sessionCopy = session;
  lockups = [(SUUILockupSwooshViewController *)swooshViewController lockups];
  v9 = [lockups objectAtIndex:index];

  [sessionCopy addItemIdentifier:{objc_msgSend(v9, "itemIdentifier")}];
  viewElement = [v9 viewElement];
  [sessionCopy addItemViewElement:viewElement];
}

- (id)_artworkLoader
{
  artworkLoader = self->_artworkLoader;
  if (!artworkLoader)
  {
    context = [(SUUIStorePageSection *)self context];
    v5 = [SUUILockupSwooshArtworkLoader alloc];
    resourceLoader = [context resourceLoader];
    _swooshViewController = [(SUUILockupSwooshPageSection *)self _swooshViewController];
    v8 = [(SUUILockupSwooshArtworkLoader *)v5 initWithArtworkLoader:resourceLoader swoosh:_swooshViewController];
    v9 = self->_artworkLoader;
    self->_artworkLoader = v8;

    v10 = self->_artworkLoader;
    colorScheme = [context colorScheme];
    [(SUUISwooshArtworkLoader *)v10 setPlaceholderColorWithColorScheme:colorScheme];

    artworkLoader = self->_artworkLoader;
  }

  return artworkLoader;
}

- (void)_loadMissingItemsFromIndex:(int64_t)index withReason:(int64_t)reason
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  if ([pageComponent isMissingItemData])
  {
    _missingItemLoader = [(SUUILockupSwooshPageSection *)self _missingItemLoader];
    [_missingItemLoader loadItemsForPageComponent:pageComponent startIndex:index reason:reason];
  }
}

- (id)_missingItemLoader
{
  missingItemLoader = self->_missingItemLoader;
  if (!missingItemLoader)
  {
    v4 = [SUUIMissingItemLoader alloc];
    context = [(SUUIStorePageSection *)self context];
    resourceLoader = [context resourceLoader];
    v7 = [(SUUIMissingItemLoader *)v4 initWithResourceLoader:resourceLoader];
    v8 = self->_missingItemLoader;
    self->_missingItemLoader = v7;

    [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:self];
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    platformKeyProfile = [pageComponent platformKeyProfile];

    if (platformKeyProfile)
    {
      [(SUUIMissingItemLoader *)self->_missingItemLoader setKeyProfile:platformKeyProfile];
    }

    missingItemLoader = self->_missingItemLoader;
  }

  return missingItemLoader;
}

- (id)_popSourceViewForOverlayController:(id)controller
{
  controllerCopy = controller;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  v6 = pageComponent;
  if (pageComponent)
  {
    [pageComponent lockupStyle];
  }

  if (self->_overlaySourceIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [controllerCopy numberOfVisibleOverlays];
  }

  return 0;
}

- (void)_showProductPageForItem:(id)item index:(int64_t)index animated:(BOOL)animated
{
  itemCopy = item;
  context = [(SUUIStorePageSection *)self context];
  parentViewController = [context parentViewController];

  clientContext = [parentViewController clientContext];
  if (SUUIUserInterfaceIdiom(clientContext) == 1 && SUUIItemKindIsSoftwareKind([itemCopy itemKind]))
  {
    if (!self->_overlayController)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __70__SUUILockupSwooshPageSection__showProductPageForItem_index_animated___block_invoke;
      v12[3] = &unk_2798F8500;
      v12[4] = self;
      v13 = parentViewController;
      v14 = clientContext;
      indexCopy = index;
      v15 = itemCopy;
      [(SUUIStorePageSection *)self sendXEventWithItem:v15 completionBlock:v12];
    }
  }

  else
  {
    [(SUUIStorePageSection *)self showProductViewControllerWithItem:itemCopy];
    _swooshViewController = [(SUUILockupSwooshPageSection *)self _swooshViewController];
    [_swooshViewController deselectAllItems];
  }
}

void __70__SUUILockupSwooshPageSection__showProductPageForItem_index_animated___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = [[SUUIProductPageOverlayController alloc] initWithParentViewController:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 104);
    *(v5 + 104) = v4;

    [*(*(a1 + 32) + 104) setClientContext:*(a1 + 48)];
    [*(*(a1 + 32) + 104) setDelegate:?];
    *(*(a1 + 32) + 112) = *(a1 + 64);
    [*(*(a1 + 32) + 104) showWithInitialItem:*(a1 + 56)];
    [*(a1 + 40) _setActiveProductPageOverlayController:*(*(a1 + 32) + 104)];
    v7 = [*(a1 + 32) _swooshViewController];
    [v7 deselectAllItems];
  }
}

- (id)_swooshViewController
{
  swooshViewController = self->_swooshViewController;
  if (!swooshViewController)
  {
    context = [(SUUIStorePageSection *)self context];
    parentViewController = [context parentViewController];
    v6 = [SUUILockupSwooshViewController alloc];
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    v8 = [(SUUILockupSwooshViewController *)v6 initWithSwoosh:pageComponent];
    v9 = self->_swooshViewController;
    self->_swooshViewController = v8;

    v10 = self->_swooshViewController;
    clientContext = [parentViewController clientContext];
    [(SUUILockupSwooshViewController *)v10 setClientContext:clientContext];

    [(SUUILockupSwooshViewController *)self->_swooshViewController setDelegate:self];
    v12 = self->_swooshViewController;
    colorScheme = [context colorScheme];
    [(SUUILockupSwooshViewController *)v12 setColorScheme:colorScheme];

    [parentViewController addChildViewController:self->_swooshViewController];
    swooshViewController = self->_swooshViewController;
  }

  return swooshViewController;
}

@end