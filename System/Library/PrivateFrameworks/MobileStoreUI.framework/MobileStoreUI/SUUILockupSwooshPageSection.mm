@interface SUUILockupSwooshPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SUUILockupSwooshPageSection)initWithPageComponent:(id)a3;
- (id)_artworkLoader;
- (id)_missingItemLoader;
- (id)_popSourceViewForOverlayController:(id)a3;
- (id)_swooshViewController;
- (id)cellForIndexPath:(id)a3;
- (id)swoosh:(id)a3 imageForCellAtIndex:(int64_t)a4;
- (id)swoosh:(id)a3 videoThumbnailForCellAtIndex:(int64_t)a4;
- (void)_addImpressionForItemIndex:(int64_t)a3 toSession:(id)a4;
- (void)_loadMissingItemsFromIndex:(int64_t)a3 withReason:(int64_t)a4;
- (void)_showProductPageForItem:(id)a3 index:(int64_t)a4 animated:(BOOL)a5;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)dealloc;
- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5;
- (void)prefetchResourcesWithReason:(int64_t)a3;
- (void)productPageOverlayDidDismiss:(id)a3;
- (void)swoosh:(id)a3 didSelectCellAtIndex:(int64_t)a4;
- (void)swoosh:(id)a3 willDisplayCellAtIndex:(int64_t)a4;
- (void)swooshDidSelectSeeAll:(id)a3;
- (void)willAppearInContext:(id)a3;
@end

@implementation SUUILockupSwooshPageSection

- (SUUILockupSwooshPageSection)initWithPageComponent:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUILockupSwooshPageSection;
  result = [(SUUIStorePageSection *)&v4 initWithPageComponent:a3];
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

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIStorePageSection *)self pageComponent];
  v9 = [v8 viewElement];
  [v7 addItemViewElement:v9];

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
        -[SUUILockupSwooshPageSection _addImpressionForItemIndex:toSession:](self, "_addImpressionForItemIndex:toSession:", [v15 item], v7);
        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"SUUILockupSwooshPageSectionReuseIdentifier" forIndexPath:v4];

  v8 = [(SUUILockupSwooshPageSection *)self _swooshViewController];
  v9 = [v8 view];

  v10 = [v7 contentChildView];

  if (v9 != v10)
  {
    [v7 setContentChildView:v9];
    [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  }

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SUUIStorePageSection *)self context];
  v5 = [v4 collectionView];

  v6 = [(SUUILockupSwooshPageSection *)self _swooshViewController];
  v7 = [v6 view];

  [v7 sizeToFit];
  [v7 frame];
  v9 = v8;
  [v5 bounds];
  v11 = v10;

  v12 = v11;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)prefetchResourcesWithReason:(int64_t)a3
{
  v5 = [(SUUILockupSwooshPageSection *)self _artworkLoader];
  [v5 loadImagesForNextPageWithReason:a3];

  [(SUUILockupSwooshPageSection *)self _loadMissingItemsFromIndex:0 withReason:a3];
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUILockupSwooshPageSectionReuseIdentifier"];
  v6.receiver = self;
  v6.super_class = SUUILockupSwooshPageSection;
  [(SUUIStorePageSection *)&v6 willAppearInContext:v4];
}

- (void)missingItemLoader:(id)a3 didLoadItems:(id)a4 invalidItemIdentifiers:(id)a5
{
  v6 = a4;
  if ([v6 count])
  {
    v7 = [(SUUIStorePageSection *)self pageComponent];
    v8 = [(SUUILockupSwooshViewController *)self->_swooshViewController view];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v13 = [v7 _updateLockupItemsWithItems:v6];
    swooshViewController = self->_swooshViewController;
    v15 = [v7 lockups];
    [(SUUILockupSwooshViewController *)swooshViewController setLockups:v15];

    [v8 frame];
    if (v17 != v10 || v16 != v12)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __85__SUUILockupSwooshPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke;
      v20[3] = &unk_2798F5BE8;
      v20[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v20];
    }

    v19 = [(SUUILockupSwooshPageSection *)self _artworkLoader];
    [v19 loadImagesForNextPageWithReason:0];
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

- (void)swoosh:(id)a3 didSelectCellAtIndex:(int64_t)a4
{
  v14 = a3;
  v6 = [v14 lockups];
  v7 = [v6 objectAtIndex:a4];

  v8 = [v7 item];
  if (v8)
  {
    v9 = [(SUUIStorePageSection *)self clickEventWithItem:v8 elementName:*MEMORY[0x277D6A4E0] index:a4];
    if (v9)
    {
      [v14 frameForItemAtIndex:a4];
      SUUIMetricsSetClickEventPositionWithPoint(v9, v10, v11);
      v12 = [(SUUIStorePageSection *)self context];
      v13 = [v12 metricsController];
      [v13 recordEvent:v9];
    }

    [(SUUILockupSwooshPageSection *)self _showProductPageForItem:v8 index:a4 animated:1];
  }
}

- (id)swoosh:(id)a3 imageForCellAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(SUUILockupSwooshPageSection *)self _artworkLoader];
  v8 = [v6 lockups];

  v9 = [v8 objectAtIndex:a4];

  v10 = [v9 item];
  if (v10)
  {
    v11 = [v7 cachedImageForItem:v10];
    if (v11)
    {
      goto LABEL_6;
    }

    [v7 loadImageForItem:v10 reason:1];
    v12 = v7;
    v13 = v10;
  }

  else
  {
    v12 = v7;
    v13 = 0;
  }

  v11 = [v12 placeholderImageForItem:v13];
LABEL_6:

  return v11;
}

- (id)swoosh:(id)a3 videoThumbnailForCellAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(SUUILockupSwooshPageSection *)self _artworkLoader];
  v8 = [v6 lockups];

  v9 = [v8 objectAtIndex:a4];

  v10 = [v9 item];
  v11 = [v10 videos];
  v12 = [v11 firstObject];

  v13 = v7;
  if (v12)
  {
    v14 = [v7 cachedImageForVideo:v12];
    if (v14)
    {
      goto LABEL_6;
    }

    [v7 loadImageForVideo:v12 reason:1];
    v13 = v7;
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v14 = [v13 placeholderImageForVideo:v15];
LABEL_6:

  return v14;
}

- (void)swoosh:(id)a3 willDisplayCellAtIndex:(int64_t)a4
{
  v6 = [(SUUIStorePageSection *)self context];
  v7 = [v6 metricsController];
  v8 = [v7 activeImpressionsSession];

  if (v8)
  {
    [(SUUILockupSwooshPageSection *)self _addImpressionForItemIndex:a4 toSession:v8];
  }

  [(SUUILockupSwooshPageSection *)self _loadMissingItemsFromIndex:a4 withReason:1];
}

- (void)swooshDidSelectSeeAll:(id)a3
{
  v17 = a3;
  v4 = [v17 seeAllURL];
  if (v4)
  {
    v5 = [[SUUILink alloc] initWithURL:v4];
    v6 = [(SUUIStorePageSection *)self clickEventWithLink:v5 elementName:*MEMORY[0x277D6A4D0] index:0];
    if (v6)
    {
      [v17 seeAllButtonFrame];
      SUUIMetricsSetClickEventPositionWithPoint(v6, v7, v8);
      v9 = [(SUUIStorePageSection *)self context];
      v10 = [v9 metricsController];
      [v10 recordEvent:v6];
    }

    v11 = [(SUUIStorePageSection *)self context];
    v12 = [v11 parentViewController];

    v13 = objc_alloc_init(SUUIStorePageViewController);
    v14 = [v12 clientContext];
    [(SUUIStorePageViewController *)v13 setClientContext:v14];

    v15 = [v17 title];
    [(SUUIStorePageViewController *)v13 setTitle:v15];

    [(SUUIStorePageViewController *)v13 loadURL:v4 withCompletionBlock:0];
    v16 = [v12 navigationController];
    [v16 pushViewController:v13 animated:1];
  }
}

- (void)productPageOverlayDidDismiss:(id)a3
{
  v4 = [(SUUIStorePageSection *)self context];
  v5 = [v4 parentViewController];
  [v5 _pageSectionDidDismissOverlayController:self->_overlayController];

  [(SUUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  overlayController = self->_overlayController;
  self->_overlayController = 0;

  [(SUUILockupSwooshViewController *)self->_swooshViewController unhideImages];
  self->_overlaySourceIndex = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_addImpressionForItemIndex:(int64_t)a3 toSession:(id)a4
{
  swooshViewController = self->_swooshViewController;
  v6 = a4;
  v7 = [(SUUILockupSwooshViewController *)swooshViewController lockups];
  v9 = [v7 objectAtIndex:a3];

  [v6 addItemIdentifier:{objc_msgSend(v9, "itemIdentifier")}];
  v8 = [v9 viewElement];
  [v6 addItemViewElement:v8];
}

- (id)_artworkLoader
{
  artworkLoader = self->_artworkLoader;
  if (!artworkLoader)
  {
    v4 = [(SUUIStorePageSection *)self context];
    v5 = [SUUILockupSwooshArtworkLoader alloc];
    v6 = [v4 resourceLoader];
    v7 = [(SUUILockupSwooshPageSection *)self _swooshViewController];
    v8 = [(SUUILockupSwooshArtworkLoader *)v5 initWithArtworkLoader:v6 swoosh:v7];
    v9 = self->_artworkLoader;
    self->_artworkLoader = v8;

    v10 = self->_artworkLoader;
    v11 = [v4 colorScheme];
    [(SUUISwooshArtworkLoader *)v10 setPlaceholderColorWithColorScheme:v11];

    artworkLoader = self->_artworkLoader;
  }

  return artworkLoader;
}

- (void)_loadMissingItemsFromIndex:(int64_t)a3 withReason:(int64_t)a4
{
  v8 = [(SUUIStorePageSection *)self pageComponent];
  if ([v8 isMissingItemData])
  {
    v7 = [(SUUILockupSwooshPageSection *)self _missingItemLoader];
    [v7 loadItemsForPageComponent:v8 startIndex:a3 reason:a4];
  }
}

- (id)_missingItemLoader
{
  missingItemLoader = self->_missingItemLoader;
  if (!missingItemLoader)
  {
    v4 = [SUUIMissingItemLoader alloc];
    v5 = [(SUUIStorePageSection *)self context];
    v6 = [v5 resourceLoader];
    v7 = [(SUUIMissingItemLoader *)v4 initWithResourceLoader:v6];
    v8 = self->_missingItemLoader;
    self->_missingItemLoader = v7;

    [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:self];
    v9 = [(SUUIStorePageSection *)self pageComponent];
    v10 = [v9 platformKeyProfile];

    if (v10)
    {
      [(SUUIMissingItemLoader *)self->_missingItemLoader setKeyProfile:v10];
    }

    missingItemLoader = self->_missingItemLoader;
  }

  return missingItemLoader;
}

- (id)_popSourceViewForOverlayController:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = v5;
  if (v5)
  {
    [v5 lockupStyle];
  }

  if (self->_overlaySourceIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 numberOfVisibleOverlays];
  }

  return 0;
}

- (void)_showProductPageForItem:(id)a3 index:(int64_t)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = [(SUUIStorePageSection *)self context];
  v9 = [v8 parentViewController];

  v10 = [v9 clientContext];
  if (SUUIUserInterfaceIdiom(v10) == 1 && SUUIItemKindIsSoftwareKind([v7 itemKind]))
  {
    if (!self->_overlayController)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __70__SUUILockupSwooshPageSection__showProductPageForItem_index_animated___block_invoke;
      v12[3] = &unk_2798F8500;
      v12[4] = self;
      v13 = v9;
      v14 = v10;
      v16 = a4;
      v15 = v7;
      [(SUUIStorePageSection *)self sendXEventWithItem:v15 completionBlock:v12];
    }
  }

  else
  {
    [(SUUIStorePageSection *)self showProductViewControllerWithItem:v7];
    v11 = [(SUUILockupSwooshPageSection *)self _swooshViewController];
    [v11 deselectAllItems];
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
    v4 = [(SUUIStorePageSection *)self context];
    v5 = [v4 parentViewController];
    v6 = [SUUILockupSwooshViewController alloc];
    v7 = [(SUUIStorePageSection *)self pageComponent];
    v8 = [(SUUILockupSwooshViewController *)v6 initWithSwoosh:v7];
    v9 = self->_swooshViewController;
    self->_swooshViewController = v8;

    v10 = self->_swooshViewController;
    v11 = [v5 clientContext];
    [(SUUILockupSwooshViewController *)v10 setClientContext:v11];

    [(SUUILockupSwooshViewController *)self->_swooshViewController setDelegate:self];
    v12 = self->_swooshViewController;
    v13 = [v4 colorScheme];
    [(SUUILockupSwooshViewController *)v12 setColorScheme:v13];

    [v5 addChildViewController:self->_swooshViewController];
    swooshViewController = self->_swooshViewController;
  }

  return swooshViewController;
}

@end