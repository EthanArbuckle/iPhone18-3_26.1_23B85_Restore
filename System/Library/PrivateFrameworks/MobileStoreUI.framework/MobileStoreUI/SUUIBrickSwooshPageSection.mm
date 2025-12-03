@interface SUUIBrickSwooshPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUIBrickSwooshPageSection)initWithPageComponent:(id)component;
- (id)_artworkLoader;
- (id)_missingItemLoader;
- (id)_swooshViewController;
- (id)cellForIndexPath:(id)path;
- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index;
- (void)_addImpressionForIndex:(int64_t)index toSession:(id)session;
- (void)_loadMissingItemsFromIndex:(int64_t)index withReason:(int64_t)reason;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)dealloc;
- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers;
- (void)prefetchResourcesWithReason:(int64_t)reason;
- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index;
- (void)swoosh:(id)swoosh willDisplayCellAtIndex:(int64_t)index;
- (void)willAppearInContext:(id)context;
@end

@implementation SUUIBrickSwooshPageSection

- (SUUIBrickSwooshPageSection)initWithPageComponent:(id)component
{
  v4.receiver = self;
  v4.super_class = SUUIBrickSwooshPageSection;
  return [(SUUIStorePageSection *)&v4 initWithPageComponent:component];
}

- (void)dealloc
{
  [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  [(SUUIBrickSwooshViewController *)self->_swooshViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIBrickSwooshPageSection;
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

  [(SUUIBrickSwooshViewController *)self->_swooshViewController indexPathsForVisibleItems];
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
        -[SUUIBrickSwooshPageSection _addImpressionForIndex:toSession:](self, "_addImpressionForIndex:toSession:", [v15 item], sessionCopy);
        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (void)willAppearInContext:(id)context
{
  collectionView = [context collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUIBrickSwooshPageSectionReuseIdentifier"];
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SUUIBrickSwooshPageSectionReuseIdentifier" forIndexPath:pathCopy];
  _swooshViewController = [(SUUIBrickSwooshPageSection *)self _swooshViewController];
  view = [_swooshViewController view];

  contentChildView = [v7 contentChildView];

  if (view != contentChildView)
  {
    v11 = [(SUUIStorePageSection *)self backgroundColorForIndexPath:pathCopy];
    [view setBackgroundColor:v11];

    [v7 setContentChildView:view];
    [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  }

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  _swooshViewController = [(SUUIBrickSwooshPageSection *)self _swooshViewController];
  view = [_swooshViewController view];

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
  _artworkLoader = [(SUUIBrickSwooshPageSection *)self _artworkLoader];
  [_artworkLoader loadImagesForNextPageWithReason:reason];

  [(SUUIBrickSwooshPageSection *)self _loadMissingItemsFromIndex:0 withReason:reason];
}

- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    [pageComponent _updateBricksWithItems:itemsCopy];
    _swooshViewController = [(SUUIBrickSwooshPageSection *)self _swooshViewController];
    bricks = [pageComponent bricks];
    [_swooshViewController setBricks:bricks];

    _artworkLoader = [(SUUIBrickSwooshPageSection *)self _artworkLoader];
    [_artworkLoader loadImagesForNextPageWithReason:0];
  }
}

- (void)swoosh:(id)swoosh didSelectCellAtIndex:(int64_t)index
{
  swooshCopy = swoosh;
  bricks = [swooshCopy bricks];
  v7 = [bricks objectAtIndex:index];

  link = [v7 link];
  v9 = [(SUUIStorePageSection *)self clickEventWithLink:link elementName:*MEMORY[0x277D6A4C8] index:index];
  if (v9)
  {
    [swooshCopy frameForItemAtIndex:index];
    SUUIMetricsSetClickEventPositionWithPoint(v9, v10, v11);
    context = [(SUUIStorePageSection *)self context];
    metricsController = [context metricsController];
    [metricsController recordEvent:v9];
  }

  context2 = [(SUUIStorePageSection *)self context];
  parentViewController = [context2 parentViewController];

  navigationController = [parentViewController navigationController];
  topViewController = [navigationController topViewController];

  [(SUUIStorePageSection *)self showPageWithLink:link];
  navigationController2 = [parentViewController navigationController];
  topViewController2 = [navigationController2 topViewController];

  if (topViewController2 == topViewController)
  {
    [swooshCopy deselectAllItems];
  }
}

- (id)swoosh:(id)swoosh imageForCellAtIndex:(int64_t)index
{
  bricks = [swoosh bricks];
  v7 = [bricks objectAtIndex:index];

  placeholderImage = [(SUUIBrickSwooshArtworkLoader *)self->_artworkLoader cachedImageForBrick:v7];
  if (!placeholderImage)
  {
    _artworkLoader = [(SUUIBrickSwooshPageSection *)self _artworkLoader];
    [_artworkLoader loadImageForBrick:v7 reason:1];
    placeholderImage = [_artworkLoader placeholderImage];
  }

  return placeholderImage;
}

- (void)swoosh:(id)swoosh willDisplayCellAtIndex:(int64_t)index
{
  context = [(SUUIStorePageSection *)self context];
  metricsController = [context metricsController];
  activeImpressionsSession = [metricsController activeImpressionsSession];

  if (activeImpressionsSession)
  {
    [(SUUIBrickSwooshPageSection *)self _addImpressionForIndex:index toSession:activeImpressionsSession];
  }

  [(SUUIBrickSwooshPageSection *)self _loadMissingItemsFromIndex:index withReason:1];
}

- (void)_addImpressionForIndex:(int64_t)index toSession:(id)session
{
  swooshViewController = self->_swooshViewController;
  sessionCopy = session;
  bricks = [(SUUIBrickSwooshViewController *)swooshViewController bricks];
  v8 = [bricks objectAtIndex:index];

  [sessionCopy addItemIdentifier:{objc_msgSend(v8, "brickIdentifier")}];
}

- (id)_artworkLoader
{
  artworkLoader = self->_artworkLoader;
  if (!artworkLoader)
  {
    context = [(SUUIStorePageSection *)self context];
    v5 = [SUUIBrickSwooshArtworkLoader alloc];
    resourceLoader = [context resourceLoader];
    _swooshViewController = [(SUUIBrickSwooshPageSection *)self _swooshViewController];
    v8 = [(SUUIBrickSwooshArtworkLoader *)v5 initWithArtworkLoader:resourceLoader swoosh:_swooshViewController];
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
    _missingItemLoader = [(SUUIBrickSwooshPageSection *)self _missingItemLoader];
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
    missingItemLoader = self->_missingItemLoader;
  }

  return missingItemLoader;
}

- (id)_swooshViewController
{
  swooshViewController = self->_swooshViewController;
  if (!swooshViewController)
  {
    context = [(SUUIStorePageSection *)self context];
    parentViewController = [context parentViewController];

    v6 = [SUUIBrickSwooshViewController alloc];
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    v8 = [(SUUIBrickSwooshViewController *)v6 initWithSwoosh:pageComponent];
    v9 = self->_swooshViewController;
    self->_swooshViewController = v8;

    v10 = self->_swooshViewController;
    clientContext = [parentViewController clientContext];
    [(SUUIBrickSwooshViewController *)v10 setClientContext:clientContext];

    v12 = self->_swooshViewController;
    context2 = [(SUUIStorePageSection *)self context];
    colorScheme = [context2 colorScheme];
    [(SUUIBrickSwooshViewController *)v12 setColorScheme:colorScheme];

    [(SUUIBrickSwooshViewController *)self->_swooshViewController setDelegate:self];
    [parentViewController addChildViewController:self->_swooshViewController];

    swooshViewController = self->_swooshViewController;
  }

  return swooshViewController;
}

@end