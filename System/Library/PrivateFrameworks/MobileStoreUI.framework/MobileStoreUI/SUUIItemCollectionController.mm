@interface SUUIItemCollectionController
- (BOOL)_loadArtworkForItem:(id)item reason:(int64_t)reason;
- (SUUIItemCollectionController)initWithClientContext:(id)context;
- (SUUIItemCollectionDelegate)delegate;
- (_NSRange)_visibleItemRange;
- (id)_artworkLoader;
- (id)_iconArtworkRequestWithItem:(id)item;
- (id)_initSUUIItemCollectionController;
- (id)_placeholderImageForItem:(id)item;
- (id)_placeholderImageForScreenshot:(id)screenshot;
- (id)_screenshotArtworkRequestWithItem:(id)item;
- (id)_screenshotForItem:(id)item;
- (id)performActionForItemAtIndex:(int64_t)index;
- (void)_enumerateVisibleCellLayoutsWithBlock:(id)block;
- (void)_memoryWarningNotification:(id)notification;
- (void)_reloadForItemStateChange:(id)change;
- (void)_reloadForRestrictionsChange;
- (void)_reloadScreenshotForCellLayout:(id)layout item:(id)item isRestricted:(BOOL)restricted;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)cancelArtworkLoadForItemIndex:(int64_t)index;
- (void)configureCellLayout:(id)layout forIndex:(int64_t)index;
- (void)dealloc;
- (void)didEndDisplayingItemAtIndex:(int64_t)index;
- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed;
- (void)itemStateCenterRestrictionsChanged:(id)changed;
- (void)loadNextPageOfArtworkWithReason:(int64_t)reason;
- (void)precacheNextPageArtworkForOffset:(CGPoint)offset direction:(double)direction;
- (void)removeAllCachedResources;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setDelegate:(id)delegate;
@end

@implementation SUUIItemCollectionController

- (id)_initSUUIItemCollectionController
{
  v11.receiver = self;
  v11.super_class = SUUIItemCollectionController;
  v2 = [(SUUIItemCollectionController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfItemsPerPage = 10;
    v2->_numberOfPagesToCacheAhead = 1.5;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    itemIDsToArtworkRequestIDs = v3->_itemIDsToArtworkRequestIDs;
    v3->_itemIDsToArtworkRequestIDs = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    itemIDsToScreenshotRequestIDs = v3->_itemIDsToScreenshotRequestIDs;
    v3->_itemIDsToScreenshotRequestIDs = v6;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__memoryWarningNotification_ name:*MEMORY[0x277D76670] object:0];
    v9 = +[SUUIItemStateCenter defaultCenter];
    [v9 addObserver:v3];
  }

  return v3;
}

- (SUUIItemCollectionController)initWithClientContext:(id)context
{
  contextCopy = context;
  _initSUUIItemCollectionController = [(SUUIItemCollectionController *)self _initSUUIItemCollectionController];
  v6 = _initSUUIItemCollectionController;
  if (_initSUUIItemCollectionController)
  {
    [(SUUIItemCollectionController *)_initSUUIItemCollectionController setClientContext:contextCopy];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76670] object:0];
  v4 = +[SUUIItemStateCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SUUIItemCollectionController;
  [(SUUIItemCollectionController *)&v5 dealloc];
}

- (void)cancelArtworkLoadForItemIndex:(int64_t)index
{
  if ([(NSArray *)self->_items count]> index)
  {
    v14 = [(NSArray *)self->_items objectAtIndex:index];
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v14, "itemIdentifier")}];
    v6 = [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs objectForKey:v5];
    if (v6)
    {
      _artworkLoader = [(SUUIItemCollectionController *)self _artworkLoader];
      [_artworkLoader cancelRequestWithIdentifier:{objc_msgSend(v6, "unsignedIntegerValue")}];

      _artworkLoader2 = [(SUUIItemCollectionController *)self _artworkLoader];
      v9 = [_artworkLoader2 cachedResourceForRequestIdentifier:{objc_msgSend(v6, "unsignedIntegerValue")}];

      if (!v9)
      {
        [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs removeObjectForKey:v5];
      }
    }

    v10 = [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs objectForKey:v5];

    if (v10)
    {
      _artworkLoader3 = [(SUUIItemCollectionController *)self _artworkLoader];
      [_artworkLoader3 cancelRequestWithIdentifier:{objc_msgSend(v10, "unsignedIntegerValue")}];

      _artworkLoader4 = [(SUUIItemCollectionController *)self _artworkLoader];
      v13 = [_artworkLoader4 cachedResourceForRequestIdentifier:{objc_msgSend(v10, "unsignedIntegerValue")}];

      if (!v13)
      {
        [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs removeObjectForKey:v5];
      }
    }
  }
}

- (void)didEndDisplayingItemAtIndex:(int64_t)index
{
  if ([(NSArray *)self->_items count]> index)
  {
    v12 = [(NSArray *)self->_items objectAtIndexedSubscript:index];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "itemIdentifier")}];
    v6 = [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs objectForKeyedSubscript:v5];
    if (v6)
    {
      _artworkLoader = [(SUUIItemCollectionController *)self _artworkLoader];
      v8 = [_artworkLoader trySetReason:0 forRequestWithIdentifier:{objc_msgSend(v6, "unsignedIntegerValue")}];

      if ((v8 & 1) == 0)
      {
        [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs removeObjectForKey:v5];
      }
    }

    v9 = [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs objectForKeyedSubscript:v5];
    if (v9)
    {
      _artworkLoader2 = [(SUUIItemCollectionController *)self _artworkLoader];
      v11 = [_artworkLoader2 trySetReason:0 forRequestWithIdentifier:{objc_msgSend(v9, "unsignedIntegerValue")}];

      if ((v11 & 1) == 0)
      {
        [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs removeObjectForKey:v5];
      }
    }
  }
}

- (void)configureCellLayout:(id)layout forIndex:(int64_t)index
{
  layoutCopy = layout;
  v6 = [(NSArray *)self->_items objectAtIndexedSubscript:index];
  v7 = +[SUUIItemStateCenter defaultCenter];
  v8 = [v7 isItemRestrictedWithParentalControlsRank:{objc_msgSend(v6, "parentalControlsRank")}];
  [layoutCopy setRestricted:v8];
  storeIdentifier = [v6 storeIdentifier];
  if (storeIdentifier)
  {
    v10 = [v7 stateForItemWithStoreIdentifier:storeIdentifier];
    [layoutCopy setItemState:v10];
  }

  artworkImage = [v6 artworkImage];
  if (artworkImage)
  {
    _artworkLoader = artworkImage;
    artworkContext = [(SUUIItemCollectionController *)self artworkContext];
    v14 = [artworkContext dataConsumerForItem:v6];

    v15 = [v14 imageForImage:_artworkLoader];
    goto LABEL_13;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "itemIdentifier")}];
  _artworkLoader = [(SUUIItemCollectionController *)self _artworkLoader];
  v16 = [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs objectForKeyedSubscript:v14];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_8;
  }

  v15 = [_artworkLoader cachedResourceForRequestIdentifier:{objc_msgSend(v16, "unsignedIntegerValue")}];
  if (!v15)
  {
    if ([_artworkLoader trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v17, "unsignedIntegerValue")}])
    {
LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }

LABEL_8:
    v18 = [(SUUIItemCollectionController *)self _iconArtworkRequestWithItem:v6];
    v19 = v18;
    if (v18)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "requestIdentifier")}];
      [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs setObject:v20 forKeyedSubscript:v14];

      [_artworkLoader loadResourceWithRequest:v19 reason:1];
    }

    goto LABEL_11;
  }

LABEL_12:

LABEL_13:
  if (!v15)
  {
    v15 = [(SUUIItemCollectionController *)self _placeholderImageForItem:v6];
  }

  [layoutCopy setIconImage:v15];
  [(SUUIItemCollectionController *)self _reloadScreenshotForCellLayout:layoutCopy item:v6 isRestricted:v8];
}

- (void)loadNextPageOfArtworkWithReason:(int64_t)reason
{
  v5 = [(NSArray *)self->_items count];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      if (v7 >= self->_numberOfItemsPerPage)
      {
        break;
      }

      v9 = [(NSArray *)self->_items objectAtIndexedSubscript:i];
      v10 = [(SUUIItemCollectionController *)self _loadArtworkForItem:v9 reason:reason];

      v7 += v10;
    }
  }
}

- (void)precacheNextPageArtworkForOffset:(CGPoint)offset direction:(double)direction
{
  y = offset.y;
  x = offset.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained itemCollectionController:self itemPageRangeForOffset:{x, y}];
  v11 = v10;

  if (v11)
  {
    [(SUUIItemCollectionController *)self numberOfPagesToCacheAhead];
    *&v12 = v12 * v11;
    v13 = vcvtps_s32_f32(*&v12);
    if (direction <= 0.0)
    {
      v20 = v9 - 1;
      v21 = [(NSArray *)self->_items count];
      if (v9 - 1 >= v21 - 1)
      {
        v20 = v21 - 1;
      }

      v22 = (v9 - v13) & ~((v9 - v13) >> 63);
      if (v20 >= v22)
      {
        do
        {
          v23 = [(NSArray *)self->_items objectAtIndexedSubscript:v20];
          [(SUUIItemCollectionController *)self _loadArtworkForItem:v23 reason:-1];
        }

        while (v20-- > v22);
      }
    }

    else
    {
      v14 = v9 + v11;
      v15 = v9 + v13;
      v16 = [(NSArray *)self->_items count];
      if (v15 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      v18 = v14 & ~(v14 >> 63);
      if (v18 < v17)
      {
        do
        {
          v19 = [(NSArray *)self->_items objectAtIndexedSubscript:v18];
          [(SUUIItemCollectionController *)self _loadArtworkForItem:v19 reason:-1];

          ++v18;
        }

        while (v17 != v18);
      }
    }
  }
}

- (id)performActionForItemAtIndex:(int64_t)index
{
  v4 = [(NSArray *)self->_items objectAtIndex:index];
  v5 = +[SUUIItemStateCenter defaultCenter];
  v6 = [v5 performActionForItem:v4 clientContext:self->_clientContext];

  return v6;
}

- (void)removeAllCachedResources
{
  [(SUUIResourceLoader *)self->_artworkLoader removeAllCachedResources];
  [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs removeAllObjects];
  itemIDsToScreenshotRequestIDs = self->_itemIDsToScreenshotRequestIDs;

  [(NSMutableDictionary *)itemIDsToScreenshotRequestIDs removeAllObjects];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  [dragging contentOffset];
  v9 = offset->y - y;
  if (v9 == 0.0)
  {
    v10 = 1.0;
    selfCopy2 = self;
  }

  else
  {
    [SUUIItemCollectionController precacheNextPageArtworkForOffset:"precacheNextPageArtworkForOffset:direction:" direction:?];
    x = offset->x;
    y = offset->y;
    selfCopy2 = self;
    v10 = v9;
  }

  [(SUUIItemCollectionController *)selfCopy2 precacheNextPageArtworkForOffset:x direction:y, v10];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_delegate, delegateCopy);
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    self->_delegateProvidesScreenshots = objc_opt_respondsToSelector() & 1;
  }

  else
  {
    self->_delegateProvidesScreenshots = 0;
  }
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  imageCopy = image;
  requestCopy = request;
  v8 = +[SUUIItemStateCenter defaultCenter];
  requestIdentifier = [requestCopy requestIdentifier];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__SUUIItemCollectionController_artworkRequest_didLoadImage___block_invoke;
  v12[3] = &unk_2798FBF08;
  v12[4] = self;
  v13 = imageCopy;
  v14 = v8;
  v15 = requestIdentifier;
  v10 = v8;
  v11 = imageCopy;
  [(SUUIItemCollectionController *)self _enumerateVisibleCellLayoutsWithBlock:v12];
}

void __60__SUUIItemCollectionController_artworkRequest_didLoadImage___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  v7 = [*(*(a1 + 32) + 112) objectAtIndex:a2];
  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v7, "itemIdentifier")}];
  v9 = [*(*(a1 + 32) + 8) objectForKey:v8];
  if ([v9 unsignedIntegerValue] == *(a1 + 56))
  {
    if (*(a1 + 40))
    {
      [v14 setIconImage:?];
    }

    else
    {
      v13 = [*(a1 + 32) _placeholderImageForItem:v7];
      [v14 setIconImage:v13];
    }

    *a4 = 1;
  }

  else
  {
    v10 = *(a1 + 32);
    if (*(v10 + 32) == 1)
    {
      v11 = [*(v10 + 24) objectForKey:v8];
      if ([v11 unsignedIntegerValue] == *(a1 + 56))
      {
        if (([*(a1 + 48) isItemRestrictedWithParentalControlsRank:{objc_msgSend(v7, "parentalControlsRank")}] & 1) == 0)
        {
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
          [WeakRetained itemCollectionController:*(a1 + 32) applyScreenshotImage:*(a1 + 40) toCellLayout:v14];
        }

        *a4 = 1;
      }
    }
  }
}

- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed
{
  changedCopy = changed;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__SUUIItemCollectionController_itemStateCenter_itemStatesChanged___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)itemStateCenterRestrictionsChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SUUIItemCollectionController_itemStateCenterRestrictionsChanged___block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_memoryWarningNotification:(id)notification
{
  [(SUUIResourceLoader *)self->_artworkLoader removeAllCachedResources];
  [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs removeAllObjects];
  itemIDsToScreenshotRequestIDs = self->_itemIDsToScreenshotRequestIDs;

  [(NSMutableDictionary *)itemIDsToScreenshotRequestIDs removeAllObjects];
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

- (void)_enumerateVisibleCellLayoutsWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSArray *)self->_items count];
  _visibleItemRange = [(SUUIItemCollectionController *)self _visibleItemRange];
  v8 = _visibleItemRange + v7;
  if (_visibleItemRange < (_visibleItemRange + v7))
  {
    v9 = _visibleItemRange;
    if (_visibleItemRange < v5)
    {
      do
      {
        v15 = 0;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v11 = [WeakRetained itemCollectionController:self cellLayoutForItemIndex:v9];

        if (v11)
        {
          blockCopy[2](blockCopy, v9, v11, &v15);
        }

        v12 = v15;

        ++v9;
      }

      while (v12 != 1 && v9 < v8 && v9 < v5);
    }
  }
}

- (id)_iconArtworkRequestWithItem:(id)item
{
  itemCopy = item;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v7 = v6;

  v8 = [(SUUIItemArtworkContext *)self->_artworkContext URLForItem:itemCopy];
  if (v8)
  {
    v9 = v8;
LABEL_7:
    v11 = objc_alloc_init(SUUIArtworkRequest);
    v12 = [(SUUIItemArtworkContext *)self->_artworkContext dataConsumerForItem:itemCopy];
    if (v12)
    {
      [(SUUIArtworkRequest *)v11 setDataConsumer:v12];
    }

    else
    {
      iconDataConsumer = [(SUUIItemCollectionController *)self iconDataConsumer];
      [(SUUIArtworkRequest *)v11 setDataConsumer:iconDataConsumer];
    }

    [(SUUIArtworkRequest *)v11 setDelegate:self];
    [(SUUIArtworkRequest *)v11 setURL:v9];
    goto LABEL_11;
  }

  if (v7 <= 1.0)
  {
    v10 = 100;
  }

  else
  {
    v10 = 200;
  }

  v9 = [itemCopy artworkURLForSize:v10];
  if (v9)
  {
    goto LABEL_7;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)_loadArtworkForItem:(id)item reason:(int64_t)reason
{
  itemCopy = item;
  _artworkLoader = [(SUUIItemCollectionController *)self _artworkLoader];
  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(itemCopy, "itemIdentifier")}];
  v9 = [(NSMutableDictionary *)self->_itemIDsToArtworkRequestIDs objectForKey:v8];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(SUUIItemCollectionController *)self _iconArtworkRequestWithItem:itemCopy];
    v12 = v11;
    if (v11)
    {
      itemIDsToArtworkRequestIDs = self->_itemIDsToArtworkRequestIDs;
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "requestIdentifier")}];
      [(NSMutableDictionary *)itemIDsToArtworkRequestIDs setObject:v14 forKey:v8];

      v10 = [_artworkLoader loadResourceWithRequest:v12 reason:reason];
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs objectForKey:v8];

  if (!v15)
  {
    v16 = [(SUUIItemCollectionController *)self _screenshotArtworkRequestWithItem:itemCopy];
    v17 = v16;
    if (v16)
    {
      itemIDsToScreenshotRequestIDs = self->_itemIDsToScreenshotRequestIDs;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "requestIdentifier")}];
      [(NSMutableDictionary *)itemIDsToScreenshotRequestIDs setObject:v19 forKey:v8];

      [_artworkLoader loadResourceWithRequest:v17 reason:reason];
    }
  }

  return v10;
}

- (id)_placeholderImageForItem:(id)item
{
  itemCopy = item;
  artworkContext = self->_artworkContext;
  if (artworkContext)
  {
    v6 = [(SUUIItemArtworkContext *)artworkContext placeholderImageForItem:itemCopy];
  }

  else
  {
    placeholderImage = self->_placeholderImage;
    if (!placeholderImage)
    {
      iconDataConsumer = [(SUUIItemCollectionController *)self iconDataConsumer];
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
      v10 = [iconDataConsumer imageForColor:v9];
      v11 = self->_placeholderImage;
      self->_placeholderImage = v10;

      placeholderImage = self->_placeholderImage;
    }

    v6 = placeholderImage;
  }

  v12 = v6;

  return v12;
}

- (id)_placeholderImageForScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  orientationString = [screenshotCopy orientationString];
  v6 = [orientationString isEqualToString:@"landscape"];

  if (v6)
  {
    p_landscapeScreenshotPlaceholderImage = &self->_landscapeScreenshotPlaceholderImage;
    landscapeScreenshotPlaceholderImage = self->_landscapeScreenshotPlaceholderImage;
    if (!landscapeScreenshotPlaceholderImage)
    {
      landscapeScreenshotDataConsumer = [(SUUIItemCollectionController *)self landscapeScreenshotDataConsumer];
LABEL_6:
      v10 = landscapeScreenshotDataConsumer;
      [screenshotCopy sizeForVariant:@"low-dpi"];
      v12 = v11;
      v14 = v13;
      v15 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
      v16 = [v10 imageForColor:v15 size:{v12, v14}];
      v17 = *p_landscapeScreenshotPlaceholderImage;
      *p_landscapeScreenshotPlaceholderImage = v16;

      landscapeScreenshotPlaceholderImage = *p_landscapeScreenshotPlaceholderImage;
    }
  }

  else
  {
    p_landscapeScreenshotPlaceholderImage = &self->_portraitScreenshotPlaceholderImage;
    landscapeScreenshotPlaceholderImage = self->_portraitScreenshotPlaceholderImage;
    if (!landscapeScreenshotPlaceholderImage)
    {
      landscapeScreenshotDataConsumer = [(SUUIItemCollectionController *)self portraitScreenshotDataConsumer];
      goto LABEL_6;
    }
  }

  v18 = landscapeScreenshotPlaceholderImage;

  return landscapeScreenshotPlaceholderImage;
}

- (void)_reloadForItemStateChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = changeCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        storeIdentifier = [v11 storeIdentifier];
        [v5 setObject:v11 forKey:storeIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__SUUIItemCollectionController__reloadForItemStateChange___block_invoke;
  v14[3] = &unk_2798FBF30;
  v14[4] = self;
  v15 = v5;
  v13 = v5;
  [(SUUIItemCollectionController *)self _enumerateVisibleCellLayoutsWithBlock:v14];
}

void __58__SUUIItemCollectionController__reloadForItemStateChange___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [*(*(a1 + 32) + 112) objectAtIndex:a2];
  v6 = *(a1 + 40);
  v7 = [v5 storeIdentifier];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    [v9 setItemState:v8 animated:1];
  }
}

- (void)_reloadForRestrictionsChange
{
  v3 = +[SUUIItemStateCenter defaultCenter];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SUUIItemCollectionController__reloadForRestrictionsChange__block_invoke;
  v5[3] = &unk_2798FBF30;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(SUUIItemCollectionController *)self _enumerateVisibleCellLayoutsWithBlock:v5];
}

void __60__SUUIItemCollectionController__reloadForRestrictionsChange__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 32) + 112);
  v6 = a3;
  v8 = [v5 objectAtIndex:a2];
  v7 = [*(a1 + 40) isItemRestrictedWithParentalControlsRank:{objc_msgSend(v8, "parentalControlsRank")}];
  [v6 setRestricted:v7];
  [*(a1 + 32) _reloadScreenshotForCellLayout:v6 item:v8 isRestricted:v7];
}

- (void)_reloadScreenshotForCellLayout:(id)layout item:(id)item isRestricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  layoutCopy = layout;
  itemCopy = item;
  v9 = [(SUUIItemCollectionController *)self _screenshotForItem:itemCopy];
  if (v9)
  {
    if (restrictedCopy)
    {
      v10 = [(SUUIItemCollectionController *)self _placeholderImageForScreenshot:v9];
LABEL_16:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained itemCollectionController:self applyScreenshotImage:v10 toCellLayout:layoutCopy];

      goto LABEL_17;
    }

    _artworkLoader = [(SUUIItemCollectionController *)self _artworkLoader];
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(itemCopy, "itemIdentifier")}];
    v13 = [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs objectForKeyedSubscript:v12];
    v14 = v13;
    if (v13)
    {
      v10 = [_artworkLoader cachedResourceForRequestIdentifier:{objc_msgSend(v13, "unsignedIntegerValue")}];
      if (([_artworkLoader trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v14, "unsignedIntegerValue")}] & 1) == 0)
      {
        v15 = [(SUUIItemCollectionController *)self _screenshotArtworkRequestWithItem:itemCopy];
        v16 = v15;
        if (v15)
        {
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "requestIdentifier")}];
          [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs setObject:v17 forKeyedSubscript:v12];

          [_artworkLoader loadResourceWithRequest:v16 reason:1];
        }
      }

      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v18 = [(SUUIItemCollectionController *)self _screenshotArtworkRequestWithItem:itemCopy];
      v19 = v18;
      if (v18)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "requestIdentifier")}];
        [(NSMutableDictionary *)self->_itemIDsToScreenshotRequestIDs setObject:v20 forKeyedSubscript:v12];

        [_artworkLoader loadResourceWithRequest:v19 reason:1];
      }
    }

    v10 = [(SUUIItemCollectionController *)self _placeholderImageForScreenshot:v9];
LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
}

- (id)_screenshotArtworkRequestWithItem:(id)item
{
  v4 = [(SUUIItemCollectionController *)self _screenshotForItem:item];
  v5 = [v4 URLForVariant:@"low-dpi"];
  if (v5)
  {
    v6 = objc_alloc_init(SUUIArtworkRequest);
    [(SUUIArtworkRequest *)v6 setDelegate:self];
    orientationString = [v4 orientationString];
    v8 = [orientationString isEqualToString:@"landscape"];

    if (v8)
    {
      [(SUUIItemCollectionController *)self landscapeScreenshotDataConsumer];
    }

    else
    {
      [(SUUIItemCollectionController *)self portraitScreenshotDataConsumer];
    }
    v9 = ;
    [(SUUIArtworkRequest *)v6 setDataConsumer:v9];

    [(SUUIArtworkRequest *)v6 setURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_screenshotForItem:(id)item
{
  if (self->_delegateProvidesScreenshots)
  {
    itemCopy = item;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained itemCollectionController:self screenshotForItem:itemCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_NSRange)_visibleItemRange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained visibleItemRangeForItemCollectionController:self];
  v6 = v5;

  if (v4)
  {
    ++v6;
    v7 = v4 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 + v7 >= [(NSArray *)self->_items count]- 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 + 1;
  }

  v9 = v7;
  result.length = v8;
  result.location = v9;
  return result;
}

- (SUUIItemCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end