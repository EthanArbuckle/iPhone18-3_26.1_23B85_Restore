@interface SUUIGridPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUIGridPageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)_contentInsetForMediaIndex:(int64_t)index;
- (UIEdgeInsets)_contentInsetForVideoLockupIndex:(int64_t)index;
- (double)_heightForEditorialAtIndexPath:(id)path;
- (double)_heightForEditorialLockup:(id)lockup;
- (double)_heightForEditorialLockupAtIndexPath:(id)path;
- (double)_heightForLockupAtIndexPath:(id)path gridType:(int64_t)type;
- (double)_heightForMedia:(id)media width:(double)width;
- (double)_heightForMediaAtIndexPath:(id)path;
- (double)_mediaWidthForMediaIndex:(int64_t)index gridWidth:(double)width;
- (id)_artworkContextForLockupSize:(int64_t)size;
- (id)_cellImageForItem:(id)item lockupSize:(int64_t)size;
- (id)_editorialCellWithEditorials:(id)editorials indexPath:(id)path;
- (id)_editorialLayoutForEditorial:(id)editorial;
- (id)_editorialLayoutForLockup:(id)lockup;
- (id)_editorialLockupCellWithLockups:(id)lockups indexPath:(id)path;
- (id)_itemCellWithLockups:(id)lockups indexPath:(id)path;
- (id)_itemForIndex:(int64_t)index;
- (id)_mediaCellWithMedia:(id)media indexPath:(id)path;
- (id)_missingItemLoader;
- (id)_newSizeToFitArtworkRequestWithArtwork:(id)artwork mediaIndex:(int64_t)index;
- (id)_popSourceViewForOverlayController:(id)controller;
- (id)_videoThumbnailImageForVideo:(id)video thumbnailSize:(CGSize)size;
- (id)cellForIndexPath:(id)path;
- (id)clickEventWithItem:(id)item elementName:(id)name index:(int64_t)index;
- (id)itemOfferClickEventWithItem:(id)item elementName:(id)name index:(int64_t)index;
- (int64_t)_numberOfLandscapeColumnsWithGridType:(int64_t)type;
- (int64_t)_numberOfPortraitColumnsWithGridType:(int64_t)type;
- (int64_t)numberOfCells;
- (void)_enumerateItemsFromStartIndex:(int64_t)index withBlock:(id)block;
- (void)_enumerateVisibleIndexPathsWithBlock:(id)block;
- (void)_enumerateVisibleItemsWithBlock:(id)block;
- (void)_loadImageForItem:(id)item lockupSize:(int64_t)size loader:(id)loader reason:(int64_t)reason;
- (void)_loadImageForVideo:(id)video thumbnailSize:(CGSize)size loader:(id)loader reason:(int64_t)reason;
- (void)_loadMissingItemsFromIndex:(int64_t)index withReason:(int64_t)reason;
- (void)_reloadEditorialLockupCell:(id)cell withLockup:(id)lockup index:(int64_t)index;
- (void)_reloadItemCell:(id)cell withLockup:(id)lockup index:(int64_t)index;
- (void)_selectItem:(id)item withIndex:(int64_t)index;
- (void)_setPositionForClickEvent:(id)event withElementIndex:(int64_t)index;
- (void)_showProductPageWithItem:(id)item index:(int64_t)index animated:(BOOL)animated;
- (void)_updateVisibileEditorialWithEditorialOrientation:(int64_t)orientation;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionViewDidConfirmItemOfferAtIndexPath:(id)path;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewDidSelectItemAtIndexPath:(id)path;
- (void)collectionViewDidTapVideoAtIndexPath:(id)path;
- (void)collectionViewWillApplyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed;
- (void)itemStateCenterRestrictionsChanged:(id)changed;
- (void)mediaView:(id)view playbackStateDidChange:(int64_t)change;
- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers;
- (void)prefetchResourcesWithReason:(int64_t)reason;
- (void)productPageOverlayDidDismiss:(id)dismiss;
- (void)willAppearInContext:(id)context;
- (void)willHideInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUIGridPageSection

- (SUUIGridPageSection)initWithPageComponent:(id)component
{
  v36 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  v34.receiver = self;
  v34.super_class = SUUIGridPageSection;
  v5 = [(SUUIStorePageSection *)&v34 initWithPageComponent:componentCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:0];
    v7 = *(v5 + 11);
    *(v5 + 11) = v6;

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v5[129] = [currentDevice userInterfaceIdiom] == 1;

    *(v5 + 23) = 0x7FFFFFFFFFFFFFFFLL;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    *(v5 + 24) = v10;

    gridType = [componentCopy gridType];
    if (gridType <= 5)
    {
      v12 = gridType;
      if (((1 << gridType) & 0x23) != 0)
      {
        children = [componentCopy children];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v14 = [children countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v31;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(children);
              }

              v18 = *(*(&v30 + 1) + 8 * i);
              if (v18)
              {
                [*(*(&v30 + 1) + 8 * i) lockupStyle];
                v19 = v29;
              }

              else
              {
                v19 = 0;
                v29 = 0;
              }

              item = [v18 item];
              v21 = SUUILockupImageSizeForLockupSize(v19, [item itemKind]);
              v27 = v22;
              v28 = v21;

              v23.f64[0] = v28;
              *&v23.f64[1] = v27;
              *(v5 + 136) = vbslq_s8(vcgtq_f64(*(v5 + 136), v23), *(v5 + 136), v23);
            }

            v15 = [children countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v15);
        }

        v5[104] = 1;

        if (v12 == 5)
        {
          v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v25 = *(v5 + 27);
          *(v5 + 27) = v24;
        }
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[SUUIItemStateCenter defaultCenter];
  [v3 removeObserver:self];

  [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  [(SUUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  v4.receiver = self;
  v4.super_class = SUUIGridPageSection;
  [(SUUIStorePageSection *)&v4 dealloc];
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  pathCopy = path;
  sessionCopy = session;
  if (self->_containsLockups)
  {
    item = [pathCopy item];
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    children = [pageComponent children];

    if (item < [children count])
    {
      v10 = [children objectAtIndex:item];
      item2 = [v10 item];
      [sessionCopy addItemIdentifier:{objc_msgSend(item2, "itemIdentifier")}];
    }
  }

  pageComponent2 = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent2 viewElement];
  [sessionCopy addItemViewElement:viewElement];

  item3 = [pathCopy item];
  pageComponent3 = [(SUUIStorePageSection *)self pageComponent];
  children2 = [pageComponent3 children];

  v17 = [children2 objectAtIndex:item3];
  viewElement2 = [v17 viewElement];
  [sessionCopy addItemViewElement:viewElement2];
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  gridType = [pageComponent gridType];
  v7 = 0;
  if (gridType > 2)
  {
    if (gridType != 5)
    {
      if (gridType == 4)
      {
        children = [pageComponent children];
        v9 = [(SUUIGridPageSection *)self _mediaCellWithMedia:children indexPath:pathCopy];
      }

      else
      {
        if (gridType != 3)
        {
          goto LABEL_12;
        }

        children = [pageComponent children];
        v9 = [(SUUIGridPageSection *)self _editorialCellWithEditorials:children indexPath:pathCopy];
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (!gridType)
  {
LABEL_9:
    children = [pageComponent children];
    v9 = [(SUUIGridPageSection *)self _itemCellWithLockups:children indexPath:pathCopy];
    goto LABEL_11;
  }

  if (gridType != 1)
  {
    goto LABEL_12;
  }

  children = [pageComponent children];
  v9 = [(SUUIGridPageSection *)self _editorialLockupCellWithLockups:children indexPath:pathCopy];
LABEL_11:
  v7 = v9;

LABEL_12:

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  pathCopy = path;
  if (self->_isPad)
  {
    v5 = 95.0;
  }

  else
  {
    v5 = 84.0;
  }

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  gridType = [pageComponent gridType];

  if (gridType > 2)
  {
    if (gridType != 5)
    {
      if (gridType == 4)
      {
        [(SUUIGridPageSection *)self _heightForMediaAtIndexPath:pathCopy];
      }

      else
      {
        if (gridType != 3)
        {
          goto LABEL_15;
        }

        [(SUUIGridPageSection *)self _heightForEditorialAtIndexPath:pathCopy];
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!gridType)
  {
LABEL_12:
    [(SUUIGridPageSection *)self _heightForLockupAtIndexPath:pathCopy gridType:gridType];
    goto LABEL_14;
  }

  if (gridType != 1)
  {
    goto LABEL_15;
  }

  [(SUUIGridPageSection *)self _heightForEditorialLockupAtIndexPath:pathCopy];
LABEL_14:
  v5 = v8;
LABEL_15:
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  [collectionView bounds];
  v12 = v11;

  numberOfColumns = self->_numberOfColumns;
  if (numberOfColumns != 1)
  {
    if (gridType == 5)
    {
      -[SUUIGridPageSection _contentInsetForVideoLockupIndex:](self, "_contentInsetForVideoLockupIndex:", [pathCopy item]);
      v12 = v15 + v14 + 221.0;
    }

    else
    {
      v16 = v12 / numberOfColumns;
      v12 = floorf(v16);
    }
  }

  v17 = v12;
  v18 = v5;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)clickEventWithItem:(id)item elementName:(id)name index:(int64_t)index
{
  v9.receiver = self;
  v9.super_class = SUUIGridPageSection;
  v7 = [(SUUIStorePageSection *)&v9 clickEventWithItem:item elementName:name index:?];
  [(SUUIGridPageSection *)self _setPositionForClickEvent:v7 withElementIndex:index];

  return v7;
}

- (void)collectionViewDidConfirmItemOfferAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  v5 = [(SUUIGridPageSection *)self _itemForIndex:item];
  if (v5)
  {
    context = [(SUUIStorePageSection *)self context];
    v7 = [(SUUIGridPageSection *)self itemOfferClickEventWithItem:v5 elementName:*MEMORY[0x277D6A4E0] index:item];
    if (v7)
    {
      metricsController = [context metricsController];
      [metricsController recordEvent:v7];
    }

    collectionView = [context collectionView];
    v10 = [collectionView cellForItemAtIndexPath:pathCopy];

    v11 = [(SUUIStorePageSection *)self performItemOfferActionForItem:v5];
    layout = [v10 layout];
    [layout setItemState:v11 animated:1];
  }
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path
{
  v4 = -[SUUIGridPageSection _itemForIndex:](self, "_itemForIndex:", [path item]);
  v5 = v4;
  if (v4)
  {
    v10 = v4;
    v6 = [(NSMapTable *)self->_artworkRequests objectForKey:v4];
    if (v6)
    {
      context = [(SUUIStorePageSection *)self context];
      resourceLoader = [context resourceLoader];
      v9 = [resourceLoader trySetReason:0 forRequestWithIdentifier:{objc_msgSend(v6, "unsignedIntegerValue")}];

      if ((v9 & 1) == 0)
      {
        [(NSMapTable *)self->_artworkRequests removeObjectForKey:v10];
      }
    }

    v5 = v10;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  item = [pathCopy item];
  v6 = [(SUUIGridPageSection *)self _itemForIndex:item];
  if (v6)
  {
    [(SUUIGridPageSection *)self _selectItem:v6 withIndex:item];
  }

  else if ([pageComponent gridType] == 4)
  {
    children = [pageComponent children];
    if (item < [children count])
    {
      context = [(SUUIStorePageSection *)self context];
      v9 = [children objectAtIndex:item];
      v10 = [(SUUIStorePageSection *)self clickEventWithMedia:v9 elementName:*MEMORY[0x277D6A4E0] index:item];
      if (v10)
      {
        metricsController = [context metricsController];
        [metricsController recordEvent:v10];
      }

      if ([v9 mediaType])
      {
        collectionView = [context collectionView];
        link = [collectionView cellForItemAtIndexPath:pathCopy];

        mediaView = [link mediaView];
        [mediaView beginPlaybackAnimated:1];
      }

      else
      {
        link = [v9 link];
        [(SUUIStorePageSection *)self showPageWithLink:link];
      }
    }
  }
}

- (void)collectionViewDidTapVideoAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[SUUIGridPageSection _itemForIndex:](self, "_itemForIndex:", [pathCopy item]);
  videos = [v5 videos];
  firstObject = [videos firstObject];

  v8 = [firstObject URL];
  if (v8)
  {
    context = [(SUUIStorePageSection *)self context];
    collectionView = [context collectionView];

    v11 = [collectionView cellForItemAtIndexPath:pathCopy];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __60__SUUIGridPageSection_collectionViewDidTapVideoAtIndexPath___block_invoke;
    v18 = &unk_2798F79A0;
    v19 = collectionView;
    v20 = v11;
    v12 = v11;
    v13 = collectionView;
    [(SUUIGridPageSection *)self _enumerateVisibleIndexPathsWithBlock:&v15];
    [v13 scrollToItemAtIndexPath:pathCopy atScrollPosition:2 animated:{1, v15, v16, v17, v18}];
    layout = [v12 layout];
    [layout playInlineVideoWithURL:v8];
  }
}

void __60__SUUIGridPageSection_collectionViewDidTapVideoAtIndexPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) cellForItemAtIndexPath:a2];
  if (*(a1 + 40) != v3)
  {
    v5 = v3;
    v4 = [v3 layout];
    [v4 endVideoPlaybackAnimated:1];

    v3 = v5;
  }
}

- (void)collectionViewWillApplyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  indexPath = [attributesCopy indexPath];
  item = [indexPath item];
  v6 = [MEMORY[0x277CCAA70] indexPathForItem:item / self->_numberOfColumns inSection:{objc_msgSend(indexPath, "section")}];
  v7 = [(SUUIStorePageSection *)self backgroundColorForIndexPath:v6];
  [attributesCopy setBackgroundColor:v7];
}

- (id)itemOfferClickEventWithItem:(id)item elementName:(id)name index:(int64_t)index
{
  v9.receiver = self;
  v9.super_class = SUUIGridPageSection;
  v7 = [(SUUIStorePageSection *)&v9 itemOfferClickEventWithItem:item elementName:name index:?];
  [(SUUIGridPageSection *)self _setPositionForClickEvent:v7 withElementIndex:index];

  return v7;
}

- (int64_t)numberOfCells
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];
  v4 = [children count];

  return v4;
}

- (void)prefetchResourcesWithReason:(int64_t)reason
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->_containsLockups)
  {
    context = [(SUUIStorePageSection *)self context];
    collectionView = [context collectionView];
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

    sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = indexPathsForVisibleItems;
    v10 = 0;
    v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          if ([v14 section] == sectionIndex)
          {
            item = [v14 item];
            if (v10 <= item)
            {
              v10 = item;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v11);
    }

    resourceLoader = [context resourceLoader];
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    gridType = [pageComponent gridType];

    pageComponent2 = [(SUUIStorePageSection *)self pageComponent];
    v20 = pageComponent2;
    if (pageComponent2)
    {
      [pageComponent2 lockupStyle];
      v21 = v30;
    }

    else
    {
      v21 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
    }

    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __51__SUUIGridPageSection_prefetchResourcesWithReason___block_invoke;
    v23[3] = &unk_2798F79C8;
    v23[4] = self;
    v22 = resourceLoader;
    reasonCopy = reason;
    v27 = v21;
    v24 = v22;
    v25 = v29;
    v28 = gridType;
    [(SUUIGridPageSection *)self _enumerateItemsFromStartIndex:v10 withBlock:v23];
    [(SUUIGridPageSection *)self _loadMissingItemsFromIndex:0 withReason:reason];

    _Block_object_dispose(v29, 8);
  }
}

void __51__SUUIGridPageSection_prefetchResourcesWithReason___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v12 = a2;
  v5 = [*(*(a1 + 32) + 88) objectForKey:?];
  v6 = v5;
  if (v5 && [*(a1 + 40) trySetReason:*(a1 + 56) forRequestWithIdentifier:{objc_msgSend(v5, "unsignedIntegerValue")}])
  {
    if (*a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    [*(a1 + 32) _loadImageForItem:v12 lockupSize:*(a1 + 64) loader:*(a1 + 40) reason:*(a1 + 56)];
    v7 = ++*(*(*(a1 + 48) + 8) + 24);
    *a3 = v7 > 19;
    if (v7 > 19)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 72) == 5)
  {
    v8 = [v12 videos];
    v9 = [v8 firstObject];

    if (v9)
    {
      v10 = [*(*(a1 + 32) + 88) objectForKey:v9];
      v11 = v10;
      if (!v10 || ([*(a1 + 40) trySetReason:*(a1 + 56) forRequestWithIdentifier:{objc_msgSend(v10, "unsignedIntegerValue")}] & 1) == 0)
      {
        [SUUILockupItemCellLayout videoThumbnailSizeForVideo:v9 clientContext:*(*(a1 + 32) + 96)];
        [*(a1 + 32) _loadImageForVideo:v9 thumbnailSize:*(a1 + 40) loader:*(a1 + 56) reason:?];
        *a3 = ++*(*(*(a1 + 48) + 8) + 24) > 19;
      }
    }

    else
    {
      v11 = 0;
    }
  }

LABEL_13:
}

- (void)willAppearInContext:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFB0C0];
  v6 = +[SUUIItemStateCenter defaultCenter];
  [v6 addObserver:self];

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  gridType = [pageComponent gridType];
  if ((gridType & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    children = [pageComponent children];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = [children countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v10;
    v12 = *v35;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(children);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        componentType = [v14 componentType];
        if (componentType == 5)
        {
          v16 = [(SUUIGridPageSection *)self _editorialLayoutForEditorial:v14];
        }

        else
        {
          if (componentType != 9)
          {
            continue;
          }

          v16 = [(SUUIGridPageSection *)self _editorialLayoutForLockup:v14];
        }

        v17 = v16;
        [v16 enqueueLayoutRequests];
      }

      v11 = [children countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (!v11)
      {
LABEL_14:

        break;
      }
    }
  }

  [collectionView bounds];
  if (self->_isPad)
  {
    if (v18 <= v19)
    {
      self->_isLandscape = 0;
      v20 = [(SUUIGridPageSection *)self _numberOfPortraitColumnsWithGridType:gridType];
    }

    else
    {
      self->_isLandscape = 1;
      v20 = [(SUUIGridPageSection *)self _numberOfLandscapeColumnsWithGridType:gridType];
    }

    self->_numberOfColumns = v20;
  }

  else
  {
    self->_isLandscape = 0;
    self->_numberOfColumns = 1;
    if (v18 > v19)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v23 = v22;

      if (v23 > 375.0)
      {
        self->_isLandscape = 1;
        self->_numberOfColumns = 2;
      }
    }
  }

  parentViewController = [contextCopy parentViewController];
  clientContext = [parentViewController clientContext];
  clientContext = self->_clientContext;
  self->_clientContext = clientContext;

  v27 = objc_alloc_init(SUUIVideoImageDataConsumer);
  videoImageDataConsumer = self->_videoImageDataConsumer;
  self->_videoImageDataConsumer = v27;

  v29 = self->_videoImageDataConsumer;
  colorScheme = [contextCopy colorScheme];
  [(SUUIVideoImageDataConsumer *)v29 setColorScheme:colorScheme];

  v31 = SUUIUserInterfaceIdiom(self->_clientContext);
  v32 = self->_videoImageDataConsumer;
  if (v31 == 1)
  {
    [(SUUIVideoImageDataConsumer *)v32 setAllowedOrientations:2];
    [(SUUIVideoImageDataConsumer *)self->_videoImageDataConsumer setLandscapeSize:221.0, 166.0];
  }

  else
  {
    [(SUUIVideoImageDataConsumer *)v32 setAllowedOrientations:3];
    [(SUUIVideoImageDataConsumer *)self->_videoImageDataConsumer setLandscapeSize:320.0, 180.0];
    [(SUUIVideoImageDataConsumer *)self->_videoImageDataConsumer setPortraitSize:180.0, 320.0];
  }

  v33.receiver = self;
  v33.super_class = SUUIGridPageSection;
  [(SUUIStorePageSection *)&v33 willAppearInContext:contextCopy];
}

- (void)willHideInContext:(id)context
{
  contextCopy = context;
  v5 = +[SUUIItemStateCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = SUUIGridPageSection;
  [(SUUIStorePageSection *)&v6 willHideInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if (self->_isPad || ([MEMORY[0x277D759A0] mainScreen], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "bounds"), v10 = v9, v8, v10 > 375.0))
  {
    self->_isLandscape = width > height;
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    gridType = [pageComponent gridType];
    if ((gridType & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      [(SUUIGridPageSection *)self _updateVisibileEditorialWithEditorialOrientation:self->_isLandscape];
    }

    if (self->_isPad)
    {
      if (self->_isLandscape)
      {
        v13 = [(SUUIGridPageSection *)self _numberOfLandscapeColumnsWithGridType:gridType];
      }

      else
      {
        v13 = [(SUUIGridPageSection *)self _numberOfPortraitColumnsWithGridType:gridType];
      }
    }

    else if (self->_isLandscape)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    self->_numberOfColumns = v13;
    if (gridType == 5)
    {
      context = [(SUUIStorePageSection *)self context];
      collectionView = [context collectionView];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __70__SUUIGridPageSection_willTransitionToSize_withTransitionCoordinator___block_invoke;
      v18[3] = &unk_2798F79A0;
      v19 = collectionView;
      selfCopy = self;
      v16 = collectionView;
      [(SUUIGridPageSection *)self _enumerateVisibleIndexPathsWithBlock:v18];
    }
  }

  v17.receiver = self;
  v17.super_class = SUUIGridPageSection;
  [(SUUIStorePageSection *)&v17 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

void __70__SUUIGridPageSection_willTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 cellForItemAtIndexPath:v4];
  v5 = [v8 layout];
  v6 = *(a1 + 40);
  v7 = [v4 item];

  [v6 _contentInsetForVideoLockupIndex:v7];
  [v5 setContentInsets:?];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  imageCopy = image;
  requestCopy = request;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  requestIdentifier = [requestCopy requestIdentifier];
  containsLockups = self->_containsLockups;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  v13 = pageComponent;
  if (containsLockups)
  {
    gridType = [pageComponent gridType];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __51__SUUIGridPageSection_artworkRequest_didLoadImage___block_invoke;
    v25[3] = &unk_2798F79F0;
    v25[4] = self;
    v26 = collectionView;
    v27 = imageCopy;
    v28 = requestIdentifier;
    v29 = gridType;
    v15 = imageCopy;
    v16 = collectionView;
    [(SUUIGridPageSection *)self _enumerateVisibleItemsWithBlock:v25];
  }

  else
  {
    children = [pageComponent children];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__SUUIGridPageSection_artworkRequest_didLoadImage___block_invoke_2;
    v19[3] = &unk_2798F7A18;
    v20 = children;
    selfCopy = self;
    v23 = imageCopy;
    v24 = requestIdentifier;
    v22 = collectionView;
    v18 = imageCopy;
    v15 = collectionView;
    v16 = children;
    [(SUUIGridPageSection *)self _enumerateVisibleIndexPathsWithBlock:v19];
  }
}

void __51__SUUIGridPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = [*(*(a1 + 32) + 88) objectForKey:v17];
  v9 = v8;
  if (v8 && [v8 unsignedIntegerValue] == *(a1 + 56))
  {
    v10 = [*(a1 + 40) cellForItemAtIndexPath:v7];
    v11 = [v10 layout];
    [v11 setIconImage:*(a1 + 48)];

    *a4 = 1;
  }

  else
  {
    if (*(a1 + 64) != 5)
    {
      goto LABEL_12;
    }

    v12 = [v17 videos];
    v10 = [v12 firstObject];

    if (v10)
    {
      v13 = [*(*(a1 + 32) + 88) objectForKey:v10];
      v14 = v13;
      if (v13 && [v13 unsignedIntegerValue] == *(a1 + 56))
      {
        v15 = [*(a1 + 40) cellForItemAtIndexPath:v7];
        v16 = [v15 layout];
        [v16 setVideoThumbnailImage:*(a1 + 48)];

        *a4 = 1;
      }
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_12:
}

void __51__SUUIGridPageSection_artworkRequest_didLoadImage___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v5 = [v11 item];
  if (v5 < [*(a1 + 32) count])
  {
    v6 = *(*(a1 + 40) + 88);
    v7 = [*(a1 + 32) objectAtIndex:v5];
    v8 = [v6 objectForKey:v7];

    if (v8 && [v8 unsignedIntegerValue] == *(a1 + 64))
    {
      v9 = [*(a1 + 48) cellForItemAtIndexPath:v11];
      v10 = [v9 mediaView];
      [v10 setThumbnailImage:*(a1 + 56)];

      *a3 = 1;
    }
  }
}

- (void)mediaView:(id)view playbackStateDidChange:(int64_t)change
{
  v39[2] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  [viewCopy frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  superview = [viewCopy superview];

  [collectionView convertRect:superview fromView:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;

  v22 = [collectionView indexPathForItemAtPoint:{v19, v21}];
  v23 = v22;
  if (v22)
  {
    section = [v22 section];
    if (section == [(SUUIStorePageSection *)self sectionIndex])
    {
      context2 = [(SUUIStorePageSection *)self context];
      metricsController = [context2 metricsController];

      if ([metricsController canRecordEventWithType:*MEMORY[0x277D6A488]])
      {
        v27 = objc_alloc_init(MEMORY[0x277D69BA8]);
        v28 = SUUIMetricsMediaEventTypeForPlaybackState(change);
        [v27 setMediaEventType:v28];

        pageComponent = [(SUUIStorePageSection *)self pageComponent];
        children = [pageComponent children];
        v31 = [children objectAtIndex:{objc_msgSend(v23, "item")}];

        v32 = [metricsController locationWithPageComponent:pageComponent];
        v33 = [metricsController locationWithPageComponent:v31];
        v34 = v33;
        if (v32 && v33)
        {
          v39[0] = v33;
          v39[1] = v32;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
          [v27 setLocationWithEventLocations:v35];
        }

        mediaIdentifier = [v31 mediaIdentifier];
        if (mediaIdentifier)
        {
          v37 = [MEMORY[0x277CCABB0] numberWithLongLong:mediaIdentifier];
          [v27 setItemIdentifier:v37];
        }

        mediaURLString = [v31 mediaURLString];
        [v27 setMediaURL:mediaURLString];

        [metricsController recordEvent:v27];
      }
    }
  }
}

- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed
{
  v22 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = changedCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        itemIdentifier = [v12 itemIdentifier];
        [v6 setObject:v12 forKey:itemIdentifier];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__SUUIGridPageSection_itemStateCenter_itemStatesChanged___block_invoke;
  v15[3] = &unk_2798F5AF8;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __57__SUUIGridPageSection_itemStateCenter_itemStatesChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 collectionView];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SUUIGridPageSection_itemStateCenter_itemStatesChanged___block_invoke_2;
  v6[3] = &unk_2798F7A40;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 _enumerateVisibleItemsWithBlock:v6];
}

void __57__SUUIGridPageSection_itemStateCenter_itemStatesChanged___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 alloc];
  v8 = [v6 itemIdentifier];

  v9 = [v7 initWithLongLong:v8];
  v10 = [*(a1 + 32) objectForKey:v9];
  if (v10)
  {
    v11 = [*(a1 + 40) cellForItemAtIndexPath:v13];
    v12 = [v11 layout];
    [v12 setItemState:v10 animated:1];
  }
}

- (void)itemStateCenterRestrictionsChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SUUIGridPageSection_itemStateCenterRestrictionsChanged___block_invoke;
  v6[3] = &unk_2798F5AF8;
  v6[4] = self;
  v7 = changedCopy;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__SUUIGridPageSection_itemStateCenterRestrictionsChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 collectionView];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SUUIGridPageSection_itemStateCenterRestrictionsChanged___block_invoke_2;
  v6[3] = &unk_2798F7A40;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _enumerateVisibleItemsWithBlock:v6];
}

void __58__SUUIGridPageSection_itemStateCenterRestrictionsChanged___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v11 = [v5 cellForItemAtIndexPath:a3];
  v7 = *(a1 + 40);
  v8 = [v6 parentalControlsRank];

  v9 = [v7 isItemRestrictedWithParentalControlsRank:v8];
  v10 = [v11 layout];
  [v10 setRestricted:v9];
}

- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers
{
  itemsCopy = items;
  identifiersCopy = identifiers;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  if ([itemsCopy count])
  {
    v10 = [pageComponent _updateWithMissingItems:itemsCopy];
    if ([v10 count])
    {
      context = [(SUUIStorePageSection *)self context];
      collectionView = [context collectionView];

      gridType = [pageComponent gridType];
      children = [pageComponent children];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __77__SUUIGridPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke;
      v19[3] = &unk_2798F7A68;
      v23 = children;
      v24 = gridType;
      v20 = v10;
      v21 = collectionView;
      selfCopy = self;
      v15 = children;
      v16 = collectionView;
      [(SUUIGridPageSection *)self _enumerateVisibleItemsWithBlock:v19];
    }
  }

  if ([identifiersCopy count])
  {
    v17 = [pageComponent _updateWithInvalidItemIdentifiers:identifiersCopy];
    if ([v17 count])
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __77__SUUIGridPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke_2;
      v18[3] = &unk_2798F5BE8;
      v18[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v18];
    }
  }
}

void __77__SUUIGridPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = [v10 item];
  if ([*(a1 + 32) containsIndex:v4])
  {
    v5 = *(a1 + 64);
    if (!v5 || v5 == 5)
    {
      v6 = [*(a1 + 40) cellForItemAtIndexPath:v10];
      v9 = *(a1 + 48);
      v8 = [*(a1 + 56) objectAtIndex:v4];
      [v9 _reloadItemCell:v6 withLockup:v8 index:v4];
    }

    else
    {
      if (v5 != 1)
      {
        goto LABEL_8;
      }

      v6 = [*(a1 + 40) cellForItemAtIndexPath:v10];
      v7 = *(a1 + 48);
      v8 = [*(a1 + 56) objectAtIndex:v4];
      [v7 _reloadEditorialLockupCell:v6 withLockup:v8 index:v4];
    }
  }

LABEL_8:
}

void __77__SUUIGridPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v4 = [v2 collectionView];

  v3 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(*(a1 + 32), "sectionIndex")}];
  [v4 reloadSections:v3];
}

- (void)productPageOverlayDidDismiss:(id)dismiss
{
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:self->_overlaySourceItemIndex inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
  v6 = [collectionView cellForItemAtIndexPath:v5];

  layout = [v6 layout];
  [layout setIconImageHidden:0];

  parentViewController = [context parentViewController];
  [parentViewController _pageSectionDidDismissOverlayController:self->_overlayController];

  [(SUUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  overlayController = self->_overlayController;
  self->_overlayController = 0;

  self->_overlaySourceItemIndex = 0x7FFFFFFFFFFFFFFFLL;
  [(NSMutableIndexSet *)self->_hiddenIconIndexSet removeAllIndexes];
}

- (id)_artworkContextForLockupSize:(int64_t)size
{
  lockupArtworkContexts = self->_lockupArtworkContexts;
  if (!lockupArtworkContexts)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:1282 valueOptions:0 capacity:0];
    v7 = self->_lockupArtworkContexts;
    self->_lockupArtworkContexts = v6;

    lockupArtworkContexts = self->_lockupArtworkContexts;
  }

  v8 = NSMapGet(lockupArtworkContexts, size);
  if (!v8)
  {
    v8 = objc_alloc_init(SUUIItemArtworkContext);
    context = [(SUUIStorePageSection *)self context];
    colorScheme = [context colorScheme];
    [(SUUIItemArtworkContext *)v8 setColorScheme:colorScheme];

    v11 = [SUUIProductImageDataConsumer lockupConsumerWithSize:size itemKind:7];
    [(SUUIItemArtworkContext *)v8 setGeneralConsumer:v11];

    v12 = [SUUIStyledImageDataConsumer lockupIconConsumerWithSize:size];
    [(SUUIItemArtworkContext *)v8 setIconConsumer:v12];

    v13 = [SUUIProductImageDataConsumer lockupConsumerWithSize:size itemKind:8];
    [(SUUIItemArtworkContext *)v8 setLetterboxConsumer:v13];

    v14 = [SUUIStyledImageDataConsumer lockupProductImageConsumerWithSize:size];
    [(SUUIItemArtworkContext *)v8 setNewsstandConsumer:v14];

    v15 = [SUUIProductImageDataConsumer lockupConsumerWithSize:size itemKind:6];
    [(SUUIItemArtworkContext *)v8 setPosterConsumer:v15];

    NSMapInsert(self->_lockupArtworkContexts, size, v8);
  }

  return v8;
}

- (id)_cellImageForItem:(id)item lockupSize:(int64_t)size
{
  itemCopy = item;
  context = [(SUUIStorePageSection *)self context];
  resourceLoader = [context resourceLoader];

  v9 = [(NSMapTable *)self->_artworkRequests objectForKey:itemCopy];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  v11 = [resourceLoader cachedResourceForRequestIdentifier:{objc_msgSend(v9, "unsignedIntegerValue")}];
  if (v11)
  {
    goto LABEL_6;
  }

  if (([resourceLoader trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v10, "unsignedIntegerValue")}] & 1) == 0)
  {
LABEL_4:
    [(SUUIGridPageSection *)self _loadImageForItem:itemCopy lockupSize:size loader:resourceLoader reason:1];
  }

  v12 = [(SUUIGridPageSection *)self _artworkContextForLockupSize:size];
  v11 = [v12 placeholderImageForItem:itemCopy];

LABEL_6:

  return v11;
}

- (UIEdgeInsets)_contentInsetForMediaIndex:(int64_t)index
{
  v5 = 15.0;
  if (index && (index != 1 || self->_numberOfColumns <= 1))
  {
    v5 = 8.0;
  }

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];
  v8 = [children count];

  numberOfColumns = self->_numberOfColumns;
  v10 = 8.0;
  if (index)
  {
    v10 = 15.0;
  }

  if (numberOfColumns == 1)
  {
    v11 = 15.0;
  }

  else
  {
    v11 = v10;
  }

  if (numberOfColumns == 1 || (index & 1) == 0)
  {
    v13 = 15.0;
  }

  else
  {
    v13 = 7.0;
  }

  if (v8 - numberOfColumns <= index && v8 % numberOfColumns == 0)
  {
    v15 = 15.0;
  }

  else
  {
    v15 = 7.0;
  }

  v16 = v5;
  result.right = v11;
  result.bottom = v15;
  result.left = v13;
  result.top = v16;
  return result;
}

- (UIEdgeInsets)_contentInsetForVideoLockupIndex:(int64_t)index
{
  v5 = 15.0;
  v6 = 15.0;
  if (self->_numberOfColumns > index)
  {
    if (self->_isPad)
    {
      v6 = 28.0;
    }

    else
    {
      v6 = 0.0;
    }
  }

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];
  v9 = [children count];

  numberOfColumns = self->_numberOfColumns;
  v11 = 15.0;
  if (numberOfColumns != 1)
  {
    if (index % numberOfColumns)
    {
      if (numberOfColumns == 4)
      {
        v11 = 28.0;
      }

      else
      {
        v11 = 25.0;
      }

      v12 = 26.0;
      if (numberOfColumns == 4)
      {
        v12 = 28.0;
      }

      if (index % numberOfColumns == numberOfColumns - 1)
      {
        v5 = v12;
      }

      else
      {
        v5 = 0.0;
      }
    }

    else
    {
      v11 = 28.0;
      if (numberOfColumns != 4)
      {
        v11 = 26.0;
      }

      v5 = 0.0;
    }
  }

  v13 = v9 % numberOfColumns;
  v14 = v9 - numberOfColumns;
  v15 = 40.0;
  if (!self->_isPad)
  {
    v15 = 7.0;
  }

  v16 = 12.0;
  if (self->_isPad)
  {
    v16 = 28.0;
  }

  if (v14 > index || v13 != 0)
  {
    v16 = v15;
  }

  v18 = v6;
  v19 = v5;
  result.right = v19;
  result.bottom = v16;
  result.left = v11;
  result.top = v18;
  return result;
}

- (id)_editorialCellWithEditorials:(id)editorials indexPath:(id)path
{
  editorialsCopy = editorials;
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v10 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AFFD40 forIndexPath:pathCopy];
  layout = [v10 layout];
  v12 = SUUIEditorialLayoutOrientationForView(collectionView);
  item = [pathCopy item];

  if (item >= [editorialsCopy count])
  {
    [layout applyEditorialLayout:0 withOrientation:v12 expanded:1];
  }

  else
  {
    v14 = [editorialsCopy objectAtIndex:item];
    v15 = [(SUUIGridPageSection *)self _editorialLayoutForEditorial:v14];
    [layout applyEditorialLayout:v15 withOrientation:v12 expanded:1];
  }

  colorScheme = [context colorScheme];
  [layout setColoringWithColorScheme:colorScheme];

  return v10;
}

- (id)_editorialLayoutForEditorial:(id)editorial
{
  editorialCopy = editorial;
  v5 = [(NSMapTable *)self->_editorialLayouts objectForKey:editorialCopy];
  if (!v5)
  {
    v6 = [SUUIEditorialLayout alloc];
    context = [(SUUIStorePageSection *)self context];
    textLayoutCache = [context textLayoutCache];
    v5 = [(SUUIEditorialLayout *)v6 initWithEditorial:editorialCopy layoutCache:textLayoutCache];

    context2 = [(SUUIStorePageSection *)self context];
    collectionView = [context2 collectionView];
    [collectionView bounds];
    v12 = v11;
    v14 = v13;

    if (self->_isPad)
    {
      v15 = v14 * 0.5 + -30.0;
      [(SUUIEditorialLayout *)v5 setLayoutWidth:1 forOrientation:floorf(v15)];
      v16 = v12 * 0.5 + -30.0;
      v17 = floorf(v16);
    }

    else
    {
      [(SUUIEditorialLayout *)v5 setLayoutWidth:1 forOrientation:v14 + -30.0];
      v17 = v12 + -30.0;
    }

    [(SUUIEditorialLayout *)v5 setLayoutWidth:0 forOrientation:v17];
    editorialLayouts = self->_editorialLayouts;
    if (!editorialLayouts)
    {
      v19 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      v20 = self->_editorialLayouts;
      self->_editorialLayouts = v19;

      editorialLayouts = self->_editorialLayouts;
    }

    [(NSMapTable *)editorialLayouts setObject:v5 forKey:editorialCopy];
  }

  return v5;
}

- (id)_editorialLayoutForLockup:(id)lockup
{
  lockupCopy = lockup;
  v5 = [(NSMapTable *)self->_editorialLayouts objectForKey:lockupCopy];
  if (!v5)
  {
    editorial = [lockupCopy editorial];
    v7 = [SUUIEditorialLayout alloc];
    context = [(SUUIStorePageSection *)self context];
    textLayoutCache = [context textLayoutCache];
    v5 = [(SUUIEditorialLayout *)v7 initWithEditorial:editorial layoutCache:textLayoutCache];

    if (lockupCopy)
    {
      [lockupCopy lockupStyle];
    }

    IsHorizontal = SUUILockupLayoutStyleIsHorizontal(0);
    v11 = 328.0;
    if (IsHorizontal)
    {
      v11 = 477.0;
      v12 = 349.0;
    }

    else
    {
      v12 = 200.0;
    }

    [(SUUIEditorialLayout *)v5 setLayoutWidth:1 forOrientation:v11, 200.0];
    [(SUUIEditorialLayout *)v5 setLayoutWidth:0 forOrientation:v12];
    editorialLayouts = self->_editorialLayouts;
    if (!editorialLayouts)
    {
      v14 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      v15 = self->_editorialLayouts;
      self->_editorialLayouts = v14;

      editorialLayouts = self->_editorialLayouts;
    }

    [(NSMapTable *)editorialLayouts setObject:v5 forKey:lockupCopy];
  }

  return v5;
}

- (id)_editorialLockupCellWithLockups:(id)lockups indexPath:(id)path
{
  lockupsCopy = lockups;
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v10 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AEE560 forIndexPath:pathCopy];
  layout = [v10 layout];
  [layout setClientContext:self->_clientContext];
  itemOfferButtonAppearance = [context itemOfferButtonAppearance];
  [layout setItemOfferButtonAppearance:itemOfferButtonAppearance];

  item = [pathCopy item];
  v14 = 20.0;
  if (item)
  {
    v15 = 15.0;
  }

  else
  {
    v15 = 20.0;
  }

  if ((item & 1) == 0)
  {
    v14 = 15.0;
  }

  if (self->_numberOfColumns == 1)
  {
    v14 = 15.0;
    v16 = 15.0;
  }

  else
  {
    v16 = v15;
  }

  [layout setContentInsets:{15.0, v14, 15.0, v16}];
  if (item >= [lockupsCopy count])
  {
    [v10 configureForItem:0 clientContext:self->_clientContext];
    lockupCellLayout = [layout lockupCellLayout];
    [lockupCellLayout setIconImage:0];

    [layout applyEditorialLayout:0 withOrientation:0];
  }

  else
  {
    v17 = [lockupsCopy objectAtIndex:item];
    [(SUUIGridPageSection *)self _reloadEditorialLockupCell:v10 withLockup:v17 index:item];
  }

  return v10;
}

- (void)_enumerateItemsFromStartIndex:(int64_t)index withBlock:(id)block
{
  blockCopy = block;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];
  v9 = [children count];
  v13 = 0;
  if (v9 > index)
  {
    v10 = v9;
    do
    {
      v11 = [children objectAtIndex:index];
      item = [v11 item];
      blockCopy[2](blockCopy, item, &v13);

      ++index;
    }

    while (index < v10 && (v13 & 1) == 0);
  }
}

- (void)_enumerateVisibleIndexPathsWithBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
  [collectionView indexPathsForVisibleItems];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      if ([v13 section] == sectionIndex)
      {
        v14 = 0;
        blockCopy[2](blockCopy, v13, &v14);
        if (v14)
        {
          break;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_enumerateVisibleItemsWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SUUIGridPageSection__enumerateVisibleItemsWithBlock___block_invoke;
  v6[3] = &unk_2798F7A90;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(SUUIGridPageSection *)self _enumerateVisibleIndexPathsWithBlock:v6];
}

void __55__SUUIGridPageSection__enumerateVisibleItemsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) _itemForIndex:{objc_msgSend(v4, "item")}];
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (double)_heightForEditorialAtIndexPath:(id)path
{
  item = [path item];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];

  isLandscape = self->_isLandscape;
  if (self->_numberOfColumns == 1)
  {
    v8 = [children objectAtIndex:item];
    v9 = [(SUUIGridPageSection *)self _editorialLayoutForEditorial:v8];

    [v9 layoutHeightForOrientation:isLandscape expanded:1];
    v11 = v10;
  }

  else
  {
    v12 = item - ((item & 0x8000000000000001) == 1);
    v13 = [children objectAtIndex:v12];
    v9 = [(SUUIGridPageSection *)self _editorialLayoutForEditorial:v13];

    [v9 layoutHeightForOrientation:isLandscape expanded:1];
    v11 = v14;
    v15 = v12 + 1;
    if (v15 < [children count])
    {
      v16 = [children objectAtIndex:v15];
      v17 = [(SUUIGridPageSection *)self _editorialLayoutForEditorial:v16];

      [v17 layoutHeightForOrientation:isLandscape expanded:1];
      if (v11 < v18)
      {
        v11 = v18;
      }
    }
  }

  return v11 + 32.0;
}

- (double)_heightForEditorialLockup:(id)lockup
{
  lockupCopy = lockup;
  [SUUILockupItemCellLayout heightForLockupComponent:lockupCopy clientContext:self->_clientContext];
  v6 = v5;
  v7 = [(SUUIGridPageSection *)self _editorialLayoutForLockup:lockupCopy];
  [v7 layoutHeightForOrientation:self->_isLandscape expanded:1];
  v9 = v8 + 42.0;
  if (lockupCopy)
  {
    [lockupCopy lockupStyle];
    if (!SUUILockupLayoutStyleIsHorizontal(v12))
    {
      [lockupCopy lockupStyle];
      if ((v11 & 4) != 0)
      {
        v9 = v9 + 41.0;
      }

      goto LABEL_7;
    }

LABEL_6:
    v6 = v6 + v9;
    goto LABEL_9;
  }

  if (SUUILockupLayoutStyleIsHorizontal(0))
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v9 >= v6)
  {
    v6 = v9;
  }

LABEL_9:

  return v6;
}

- (double)_heightForEditorialLockupAtIndexPath:(id)path
{
  item = [path item];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];

  if (self->_numberOfColumns == 1)
  {
    v7 = [children objectAtIndex:item];
    [(SUUIGridPageSection *)self _heightForEditorialLockup:v7];
    v9 = v8;
  }

  else
  {
    v10 = item - ((item & 0x8000000000000001) == 1);
    v7 = [children objectAtIndex:v10];
    [(SUUIGridPageSection *)self _heightForEditorialLockup:v7];
    v9 = v11;
    v12 = v10 + 1;
    if (v12 < [children count])
    {
      v13 = [children objectAtIndex:v12];
      [(SUUIGridPageSection *)self _heightForEditorialLockup:v13];
      if (v9 < v14)
      {
        v9 = v14;
      }
    }
  }

  return v9;
}

- (double)_heightForLockupAtIndexPath:(id)path gridType:(int64_t)type
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];

  item = [pathCopy item];
  numberOfColumns = self->_numberOfColumns;
  if (numberOfColumns == 1)
  {
    v11 = [children objectAtIndex:item];
    [SUUILockupItemCellLayout heightForLockupComponent:v11 clientContext:self->_clientContext];
    i = v12;
  }

  else
  {
    v14 = item / numberOfColumns * numberOfColumns;
    for (i = 0.0; v14 < [children count]; ++v14)
    {
      v15 = [children objectAtIndex:v14];
      [SUUILockupItemCellLayout heightForLockupComponent:v15 clientContext:self->_clientContext];
      v17 = v16;

      if (i < v17)
      {
        i = v17;
      }
    }
  }

  if (type == 5)
  {
    -[SUUIGridPageSection _contentInsetForVideoLockupIndex:](self, "_contentInsetForVideoLockupIndex:", [pathCopy item]);
    i = i + v18 + v19;
  }

  else if (!type)
  {
    i = i + 20.0;
  }

  return i;
}

- (double)_heightForMedia:(id)media width:(double)width
{
  bestThumbnailArtwork = [media bestThumbnailArtwork];
  height = [bestThumbnailArtwork height];
  v7 = width / [bestThumbnailArtwork width] * height;
  v8 = floorf(v7);

  return v8;
}

- (double)_heightForMediaAtIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  [collectionView bounds];
  v8 = v7;

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];

  item = [pathCopy item];
  [(SUUIGridPageSection *)self _mediaWidthForMediaIndex:item gridWidth:v8];
  v13 = v12;
  if (self->_numberOfColumns == 1)
  {
    v14 = [children objectAtIndex:item];
    [(SUUIGridPageSection *)self _heightForMedia:v14 width:v13];
    v16 = v15;
  }

  else
  {
    v17 = item - ((item & 0x8000000000000001) == 1);
    v18 = [children objectAtIndex:v17];
    [(SUUIGridPageSection *)self _heightForMedia:v18 width:v13];
    v16 = v19;

    item = v17 + 1;
    if (item < [children count])
    {
      v20 = [children objectAtIndex:item];
      [(SUUIGridPageSection *)self _heightForMedia:v20 width:v13];
      v22 = v21;

      if (v16 < v22)
      {
        v16 = v22;
      }
    }
  }

  [(SUUIGridPageSection *)self _contentInsetForMediaIndex:item];
  v25 = v16 + v23 + v24;

  return v25;
}

- (id)_itemCellWithLockups:(id)lockups indexPath:(id)path
{
  lockupsCopy = lockups;
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v10 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AFB0C0 forIndexPath:pathCopy];

  colorScheme = [context colorScheme];
  v12 = colorScheme;
  if (colorScheme)
  {
    primaryTextColor = [colorScheme primaryTextColor];
    [v10 setSeparatorColor:primaryTextColor];
  }

  layout = [v10 layout];
  [layout setClientContext:self->_clientContext];
  [layout setColoringWithColorScheme:v12];
  itemOfferButtonAppearance = [context itemOfferButtonAppearance];
  [layout setItemOfferButtonAppearance:itemOfferButtonAppearance];

  [layout setVerticalAlignment:1];
  item = [pathCopy item];
  if (item >= [lockupsCopy count])
  {
    [v10 configureForItem:0 clientContext:self->_clientContext];
    [layout setIconImage:0];
    [layout setVideoThumbnailImage:0];
    [layout setVideoThumbnailSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    [layout setVisibleFields:0];
  }

  else
  {
    v17 = [lockupsCopy objectAtIndex:item];
    [(SUUIGridPageSection *)self _reloadItemCell:v10 withLockup:v17 index:item];
  }

  v20 = 1;
  if (self->_isPad)
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    gridType = [pageComponent gridType];

    if (gridType == 5)
    {
      v20 = 0;
    }
  }

  [v10 setSeparatorStyle:v20];

  return v10;
}

- (id)_itemForIndex:(int64_t)index
{
  if (self->_containsLockups)
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    children = [pageComponent children];

    if ([children count] <= index)
    {
      item = 0;
    }

    else
    {
      v6 = [children objectAtIndex:index];
      item = [v6 item];
    }
  }

  else
  {
    item = 0;
  }

  return item;
}

- (void)_loadImageForItem:(id)item lockupSize:(int64_t)size loader:(id)loader reason:(int64_t)reason
{
  itemCopy = item;
  loaderCopy = loader;
  v11 = [(SUUIGridPageSection *)self _artworkContextForLockupSize:size];
  v12 = [v11 URLForItem:itemCopy];

  if (v12)
  {
    v13 = objc_alloc_init(SUUIArtworkRequest);
    [(SUUIArtworkRequest *)v13 setDelegate:self];
    v14 = [(SUUIGridPageSection *)self _artworkContextForLockupSize:size];
    v15 = [v14 dataConsumerForItem:itemCopy];
    [(SUUIArtworkRequest *)v13 setDataConsumer:v15];

    [(SUUIArtworkRequest *)v13 setURL:v12];
    artworkRequests = self->_artworkRequests;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v13, "requestIdentifier")}];
    [(NSMapTable *)artworkRequests setObject:v17 forKey:itemCopy];

    [loaderCopy loadResourceWithRequest:v13 reason:reason];
  }
}

- (void)_loadImageForVideo:(id)video thumbnailSize:(CGSize)size loader:(id)loader reason:(int64_t)reason
{
  height = size.height;
  width = size.width;
  videoCopy = video;
  loaderCopy = loader;
  artworks = [videoCopy artworks];
  v13 = [artworks bestArtworkForScaledSize:{width, height}];
  v14 = [v13 URL];

  if (v14)
  {
    v15 = objc_alloc_init(SUUIArtworkRequest);
    [(SUUIArtworkRequest *)v15 setDataConsumer:self->_videoImageDataConsumer];
    [(SUUIArtworkRequest *)v15 setDelegate:self];
    [(SUUIArtworkRequest *)v15 setURL:v14];
    artworkRequests = self->_artworkRequests;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v15, "requestIdentifier")}];
    [(NSMapTable *)artworkRequests setObject:v17 forKey:videoCopy];

    [loaderCopy loadResourceWithRequest:v15 reason:reason];
  }
}

- (void)_loadMissingItemsFromIndex:(int64_t)index withReason:(int64_t)reason
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  if ([pageComponent isMissingItemData])
  {
    _missingItemLoader = [(SUUIGridPageSection *)self _missingItemLoader];
    [_missingItemLoader loadItemsForPageComponent:pageComponent startIndex:index reason:reason];
  }
}

- (id)_mediaCellWithMedia:(id)media indexPath:(id)path
{
  mediaCopy = media;
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  v10 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AEF8E0 forIndexPath:pathCopy];
  item = [pathCopy item];

  [(SUUIGridPageSection *)self _contentInsetForMediaIndex:item];
  [v10 setContentInset:?];
  if (item >= [mediaCopy count])
  {
    v12 = 0;
  }

  else
  {
    v12 = [mediaCopy objectAtIndex:item];
    if (v12)
    {
      context2 = [(SUUIStorePageSection *)self context];
      resourceLoader = [context2 resourceLoader];

      v15 = [(NSMapTable *)self->_artworkRequests objectForKey:v12];
      v16 = v15;
      if (!v15)
      {
        goto LABEL_6;
      }

      v17 = [resourceLoader cachedResourceForRequestIdentifier:{objc_msgSend(v15, "unsignedIntegerValue")}];
      if (v17)
      {
LABEL_10:

        goto LABEL_13;
      }

      if (([resourceLoader trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v16, "unsignedIntegerValue")}] & 1) == 0)
      {
LABEL_6:
        bestThumbnailArtwork = [v12 bestThumbnailArtwork];
        if (bestThumbnailArtwork)
        {
          v19 = [(SUUIGridPageSection *)self _newSizeToFitArtworkRequestWithArtwork:bestThumbnailArtwork mediaIndex:item];
          artworkRequests = self->_artworkRequests;
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "requestIdentifier")}];
          [(NSMapTable *)artworkRequests setObject:v20 forKey:v12];

          [resourceLoader loadResourceWithRequest:v19 reason:1];
        }
      }

      v17 = 0;
      goto LABEL_10;
    }
  }

  v17 = 0;
LABEL_13:
  mediaView = [v10 mediaView];
  accessibilityLabel = [v12 accessibilityLabel];
  [mediaView setAccessibilityLabel:accessibilityLabel];

  [mediaView setDelegate:self];
  [mediaView setMediaType:{objc_msgSend(v12, "mediaType")}];
  mediaURLString = [v12 mediaURLString];
  [mediaView setMediaURLString:mediaURLString];

  [mediaView setThumbnailImage:v17];

  return v10;
}

- (double)_mediaWidthForMediaIndex:(int64_t)index gridWidth:(double)width
{
  [(SUUIGridPageSection *)self _contentInsetForMediaIndex:index];
  v8 = width * 0.5 - v6 - v7;
  result = floorf(v8);
  v10 = width - v6 - v7;
  if (self->_numberOfColumns == 1)
  {
    return v10;
  }

  return result;
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

- (id)_newSizeToFitArtworkRequestWithArtwork:(id)artwork mediaIndex:(int64_t)index
{
  artworkCopy = artwork;
  v7 = objc_alloc_init(SUUIArtworkRequest);
  [(SUUIArtworkRequest *)v7 setDelegate:self];
  v8 = [artworkCopy URL];

  [(SUUIArtworkRequest *)v7 setURL:v8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  context = [(SUUIStorePageSection *)self context];
  [context landscapePageWidth];
  [(SUUIGridPageSection *)self _mediaWidthForMediaIndex:index gridWidth:?];
  v12 = v11;

  v13 = [SUUISizeToFitImageDataConsumer consumerWithConstraintSize:v12, v9];
  [(SUUIArtworkRequest *)v7 setDataConsumer:v13];

  return v7;
}

- (int64_t)_numberOfLandscapeColumnsWithGridType:(int64_t)type
{
  v3 = 2;
  if (type == 5)
  {
    v3 = 4;
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return 3;
  }
}

- (int64_t)_numberOfPortraitColumnsWithGridType:(int64_t)type
{
  if (type == 5)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)_popSourceViewForOverlayController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (self->_overlaySourceItemIndex == 0x7FFFFFFFFFFFFFFFLL || [controllerCopy numberOfVisibleOverlays] > 1)
  {
    v15 = 0;
    goto LABEL_13;
  }

  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  v8 = [MEMORY[0x277CCAA70] indexPathForItem:self->_overlaySourceItemIndex inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
  v9 = [collectionView cellForItemAtIndexPath:v8];

  layout = [v9 layout];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];
  v13 = [children objectAtIndex:self->_overlaySourceItemIndex];

  iconImage = [layout iconImage];
  v15 = iconImage;
  if (iconImage)
  {
    if (v13)
    {
      [v13 lockupStyle];

      if ((v38 & 2) != 0)
      {
        v16 = objc_alloc(MEMORY[0x277D755E8]);
        iconImage2 = [layout iconImage];
        v15 = [v16 initWithImage:iconImage2];

        clearColor = [MEMORY[0x277D75348] clearColor];
        [v15 setBackgroundColor:clearColor];

        iconImageView = [layout iconImageView];
        [iconImageView frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        [v15 frame];
        v29 = v28;
        v31 = v30;
        v40.origin.x = v21;
        v40.origin.y = v23;
        v40.size.width = v25;
        v40.size.height = v27;
        v32 = CGRectGetMaxY(v40) - v31;
        superview = [iconImageView superview];
        [superview convertRect:0 toView:{v21, v32, v29, v31}];
        [v15 setFrame:?];

        hiddenIconIndexSet = self->_hiddenIconIndexSet;
        if (!hiddenIconIndexSet)
        {
          v35 = objc_alloc_init(MEMORY[0x277CCAB58]);
          v36 = self->_hiddenIconIndexSet;
          self->_hiddenIconIndexSet = v35;

          hiddenIconIndexSet = self->_hiddenIconIndexSet;
        }

        [(NSMutableIndexSet *)hiddenIconIndexSet addIndex:self->_overlaySourceItemIndex];
        [layout setIconImageHidden:1];

        goto LABEL_12;
      }
    }

    else
    {
    }

    v15 = 0;
  }

LABEL_12:

LABEL_13:

  return v15;
}

- (void)_reloadEditorialLockupCell:(id)cell withLockup:(id)lockup index:(int64_t)index
{
  cellCopy = cell;
  lockupCopy = lockup;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  layout = [cellCopy layout];
  if (lockupCopy)
  {
    [lockupCopy lockupStyle];
  }

  [layout setLayoutStyle:0];
  [layout setVisibleFields:0];
  item = [lockupCopy item];
  [cellCopy configureForItem:item clientContext:self->_clientContext];
  lockupCellLayout = [layout lockupCellLayout];
  v32 = [(SUUIGridPageSection *)self _cellImageForItem:item lockupSize:0];
  [lockupCellLayout setIconImage:?];
  [lockupCellLayout setIconImageHidden:{-[NSMutableIndexSet containsIndex:](self->_hiddenIconIndexSet, "containsIndex:", index)}];
  [lockupCellLayout setImageBoundingSize:{self->_lockupImageBoundingSize.width, self->_lockupImageBoundingSize.height}];
  v31 = [(SUUIGridPageSection *)self _editorialLayoutForLockup:lockupCopy];
  [layout applyEditorialLayout:v31 withOrientation:SUUIEditorialLayoutOrientationForView(collectionView)];
  [lockupCopy editorial];
  v14 = v30 = collectionView;
  textBoxView = [layout textBoxView];
  [textBoxView setNumberOfVisibleLines:{objc_msgSend(v14, "maximumBodyLines")}];
  [textBoxView setTruncationStyle:1];
  moreButtonTitle = self->_moreButtonTitle;
  v17 = lockupCopy;
  if (!moreButtonTitle)
  {
    v27 = item;
    v28 = cellCopy;
    v18 = lockupCellLayout;
    v19 = v17;
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"MORE_BUTTON"];
    }

    else
    {
      v21 = 0;
      [SUUIClientContext localizedStringForKey:@"MORE_BUTTON" inBundles:0];
    }
    v22 = ;

    v23 = self->_moreButtonTitle;
    self->_moreButtonTitle = v22;

    moreButtonTitle = self->_moreButtonTitle;
    cellCopy = v28;
    v17 = v19;
    lockupCellLayout = v18;
  }

  v29 = v17;
  [textBoxView setMoreButtonTitle:{moreButtonTitle, v27, v28}];
  v24 = +[SUUIItemStateCenter defaultCenter];
  v25 = [v24 stateForItemWithIdentifier:{objc_msgSend(item, "itemIdentifier")}];
  [layout setItemState:v25];
  [layout setRestricted:{objc_msgSend(v24, "isItemRestrictedWithParentalControlsRank:", objc_msgSend(item, "parentalControlsRank"))}];
  colorScheme = [context colorScheme];
  [layout setColoringWithColorScheme:colorScheme];
}

- (void)_reloadItemCell:(id)cell withLockup:(id)lockup index:(int64_t)index
{
  lockupCopy = lockup;
  cellCopy = cell;
  item = [lockupCopy item];
  [cellCopy configureForItem:item clientContext:self->_clientContext];
  layout = [cellCopy layout];

  [layout setImageBoundingSize:{self->_lockupImageBoundingSize.width, self->_lockupImageBoundingSize.height}];
  if (lockupCopy)
  {
    [lockupCopy lockupStyle];
  }

  [layout setLayoutStyle:0];
  [layout setLockupSize:0];
  [layout setContentInsets:{10.0, 15.0, 10.0, 15.0}];
  if (item)
  {
    v12 = [(SUUIGridPageSection *)self _cellImageForItem:item lockupSize:0];
    [layout setIconImage:v12];
    [layout setIconImageHidden:{-[NSMutableIndexSet containsIndex:](self->_hiddenIconIndexSet, "containsIndex:", index)}];
    [layout setPlaysInlineVideo:!self->_isPad];
    [layout setVisibleFields:0];
    [layout setVideoThumbnailImage:0];
    [layout setVideoThumbnailSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  }

  else
  {
    [layout setIconImage:0];
    [layout setVideoThumbnailImage:0];
    [layout setVideoThumbnailSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    [layout setVisibleFields:0];
  }

  v13 = +[SUUIItemStateCenter defaultCenter];
  v14 = [v13 stateForItemWithIdentifier:{objc_msgSend(item, "itemIdentifier")}];
  [layout setItemState:v14];
  [layout setRestricted:{objc_msgSend(v13, "isItemRestrictedWithParentalControlsRank:", objc_msgSend(item, "parentalControlsRank"))}];
}

- (void)_selectItem:(id)item withIndex:(int64_t)index
{
  itemCopy = item;
  context = [(SUUIStorePageSection *)self context];
  v8 = [(SUUIGridPageSection *)self clickEventWithItem:itemCopy elementName:*MEMORY[0x277D6A4E0] index:index];
  if (v8)
  {
    metricsController = [context metricsController];
    [metricsController recordEvent:v8];
  }

  parentViewController = [context parentViewController];
  delegate = [parentViewController delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate sectionsViewController:parentViewController showProductPageForItem:itemCopy] & 1) == 0)
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    gridType = [pageComponent gridType];

    if (gridType == 5)
    {
      videos = [itemCopy videos];
      firstObject = [videos firstObject];
    }

    else
    {
      firstObject = 0;
    }

    v16 = [firstObject URL];
    if (v16 && (isPad = self->_isPad, v16, isPad))
    {
      indexCopy = index;
      v26 = [[SUUIPlayableAsset alloc] initWithVideo:firstObject];
      context2 = [(SUUIStorePageSection *)self context];
      clientContext = [context2 clientContext];
      SUUIVideoPreviewPlayPlayableAsset(v26, clientContext);
      v21 = v20 = context;

      context3 = [(SUUIStorePageSection *)self context];
      parentViewController2 = [context3 parentViewController];
      [parentViewController2 presentViewController:v21 animated:1 completion:0];

      v24 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__SUUIGridPageSection__selectItem_withIndex___block_invoke;
      block[3] = &unk_2798F7AB8;
      block[4] = self;
      v28 = itemCopy;
      v29 = indexCopy;
      dispatch_after(v24, MEMORY[0x277D85CD0], block);

      context = v20;
    }

    else
    {
      [(SUUIGridPageSection *)self _showProductPageWithItem:itemCopy index:index animated:1];
    }
  }
}

- (void)_setPositionForClickEvent:(id)event withElementIndex:(int64_t)index
{
  if (event)
  {
    eventCopy = event;
    context = [(SUUIStorePageSection *)self context];
    collectionView = [context collectionView];

    v8 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v9 = [collectionView cellForItemAtIndexPath:v8];

    SUUIMetricsSetClickEventPositionWithView(eventCopy, v9);
  }
}

- (void)_showProductPageWithItem:(id)item index:(int64_t)index animated:(BOOL)animated
{
  itemCopy = item;
  v8 = itemCopy;
  if (self->_isPad && SUUIItemKindIsSoftwareKind([itemCopy itemKind]))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__SUUIGridPageSection__showProductPageWithItem_index_animated___block_invoke;
    v9[3] = &unk_2798F71F0;
    v9[4] = self;
    indexCopy = index;
    v10 = v8;
    [(SUUIStorePageSection *)self sendXEventWithItem:v10 completionBlock:v9];
  }

  else
  {
    [(SUUIStorePageSection *)self showProductViewControllerWithItem:v8];
  }
}

void __63__SUUIGridPageSection__showProductPageWithItem_index_animated___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = [*(a1 + 32) context];
    v9 = [v4 parentViewController];

    v5 = *(a1 + 32);
    if (!*(v5 + 176))
    {
      v6 = [[SUUIProductPageOverlayController alloc] initWithParentViewController:v9];
      v7 = *(a1 + 32);
      v8 = *(v7 + 176);
      *(v7 + 176) = v6;

      [*(*(a1 + 32) + 176) setClientContext:*(*(a1 + 32) + 96)];
      [*(*(a1 + 32) + 176) setDelegate:?];
      v5 = *(a1 + 32);
    }

    *(v5 + 184) = *(a1 + 48);
    [*(*(a1 + 32) + 176) showWithInitialItem:*(a1 + 40)];
    [v9 _setActiveProductPageOverlayController:*(*(a1 + 32) + 176)];
  }
}

- (void)_updateVisibileEditorialWithEditorialOrientation:(int64_t)orientation
{
  v34 = *MEMORY[0x277D85DE8];
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  v28 = collectionView;
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
  selfCopy = self;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  gridType = [pageComponent gridType];
  v24 = pageComponent;
  children = [pageComponent children];
  v10 = [children count];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = indexPathsForVisibleItems;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        if ([v16 section] == sectionIndex)
        {
          item = [v16 item];
          if (item < v10)
          {
            v18 = item;
            if (gridType == 1)
            {
              v19 = [v28 cellForItemAtIndexPath:v16];
              v23 = [children objectAtIndex:v18];
              v21 = [(SUUIGridPageSection *)selfCopy _editorialLayoutForLockup:v23];

              layout = [v19 layout];
              [layout applyEditorialLayout:v21 withOrientation:orientation];
            }

            else
            {
              if (gridType != 3)
              {
                continue;
              }

              v19 = [v28 cellForItemAtIndexPath:v16];
              v20 = [children objectAtIndex:v18];
              v21 = [(SUUIGridPageSection *)selfCopy _editorialLayoutForEditorial:v20];

              layout = [v19 layout];
              [layout applyEditorialLayout:v21 withOrientation:orientation expanded:1];
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }
}

- (id)_videoThumbnailImageForVideo:(id)video thumbnailSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  videoCopy = video;
  context = [(SUUIStorePageSection *)self context];
  resourceLoader = [context resourceLoader];

  v10 = [(NSMapTable *)self->_artworkRequests objectForKey:videoCopy];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_4;
  }

  v12 = [resourceLoader cachedResourceForRequestIdentifier:{objc_msgSend(v10, "unsignedIntegerValue")}];
  if (v12)
  {
    goto LABEL_12;
  }

  if (([resourceLoader trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v11, "unsignedIntegerValue")}] & 1) == 0)
  {
LABEL_4:
    [(SUUIGridPageSection *)self _loadImageForVideo:videoCopy thumbnailSize:resourceLoader loader:1 reason:width, height];
  }

  height = [[SUUISizeValue alloc] initWithSize:width, height];
  v12 = [(NSMutableDictionary *)self->_videoPlaceholderImages objectForKey:height];
  if (!v12)
  {
    v14 = width <= height ? 1 : 2;
    v12 = [(SUUIVideoImageDataConsumer *)self->_videoImageDataConsumer imageForColor:0 orientation:v14];
    if (v12)
    {
      [(NSMutableDictionary *)self->_videoPlaceholderImages setObject:v12 forKey:height];
    }
  }

LABEL_12:

  return v12;
}

@end