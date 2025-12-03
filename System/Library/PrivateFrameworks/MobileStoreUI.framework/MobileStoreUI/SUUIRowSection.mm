@interface SUUIRowSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUILockupStyle)_lockupStyleForComponent:(SEL)component columnIndex:(id)index;
- (SUUIRowSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)_edgeInsetsForColumnIndex:(int64_t)index;
- (double)_cellContentHeightForRowWidth:(double)width;
- (double)_columnWidthForColumnIndex:(int64_t)index rowWidth:(double)width;
- (double)_heightForArtwork:(id)artwork columnIndex:(int64_t)index rowWidth:(double)width;
- (double)_heightForComponent:(id)component columnIndex:(double)index rowWidth:(double)width;
- (double)_heightForCountdownComponent:(id)component columnIndex:(int64_t)index rowWidth:(double)width;
- (double)_heightForEditorialComponent:(id)component columnIndex:(int64_t)index rowWidth:(double)width;
- (double)_heightForGalleryComponent:(id)component columnIndex:(int64_t)index rowWidth:(double)width;
- (double)_heightForLockupComponent:(id)component columnIndex:(int64_t)index rowWidth:(double)width;
- (double)_heightForMediaComponent:(id)component columnIndex:(int64_t)index rowWidth:(double)width;
- (double)_interColumnSpacing;
- (id)_columnViews;
- (id)_editorialLayoutForEditorial:(id)editorial columnIndex:(int64_t)index;
- (id)_editorialLayoutForLockup:(id)lockup columnIndex:(int64_t)index;
- (id)_imageConsumerWithItem:(id)item lockupSize:(int64_t)size;
- (id)_lockupImageForComponent:(id)component;
- (id)_lockupPlaceholderForComponent:(id)component;
- (id)_missingItemLoader;
- (id)_newSizeToFitArtworkRequestWithArtwork:(id)artwork columnIndex:(int64_t)index;
- (id)_newViewWithMediaComponent:(id)component;
- (id)_overlaySourceCell;
- (id)_popSourceViewForOverlayController:(id)controller;
- (id)_viewControllerForCountdownComponent:(id)component;
- (id)_viewControllerForGalleryComponent:(id)component;
- (id)backgroundColorForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (id)clickEventWithItem:(id)item elementName:(id)name index:(int64_t)index;
- (id)itemOfferClickEventWithItem:(id)item elementName:(id)name index:(int64_t)index;
- (int64_t)numberOfCells;
- (void)_enumerateLockupsWithBlock:(id)block;
- (void)_expandEditorialComponent:(id)component columnIndex:(int64_t)index;
- (void)_loadImagesForGalleryComponent:(id)component columnIndex:(int64_t)index;
- (void)_reloadEditorialCell:(id)cell forComponent:(id)component columnIndex:(int64_t)index;
- (void)_reloadEditorialLockupCell:(id)cell forComponent:(id)component columnIndex:(int64_t)index;
- (void)_reloadLockupCell:(id)cell forComponent:(id)component columnIndex:(int64_t)index;
- (void)_reloadView:(id)view forMediaComponent:(id)component columnIndex:(int64_t)index;
- (void)_selectGalleryComponent:(id)component columnIndex:(int64_t)index;
- (void)_selectLockupComponent:(id)component columnIndex:(int64_t)index;
- (void)_selectMediaComponent:(id)component columnIndex:(int64_t)index;
- (void)_setPositionForClickEvent:(id)event elementIndex:(int64_t)index;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionViewDidConfirmItemOfferAtIndexPath:(id)path;
- (void)collectionViewDidSelectItemAtIndexPath:(id)path;
- (void)collectionViewWillApplyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)invalidateCachedLayoutInformation;
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

@implementation SUUIRowSection

- (SUUIRowSection)initWithPageComponent:(id)component
{
  v8.receiver = self;
  v8.super_class = SUUIRowSection;
  v3 = [(SUUIStorePageSection *)&v8 initWithPageComponent:component];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    componentArtworkRequestIDs = v3->_componentArtworkRequestIDs;
    v3->_componentArtworkRequestIDs = v4;

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v3->_isPad = [currentDevice userInterfaceIdiom] == 1;
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[SUUIItemStateCenter defaultCenter];
  [v3 removeObserver:self];

  [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  [(SUUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  v4.receiver = self;
  v4.super_class = SUUIRowSection;
  [(SUUIStorePageSection *)&v4 dealloc];
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];

  pageComponent2 = [(SUUIStorePageSection *)self pageComponent];
  childComponents = [pageComponent2 childComponents];
  item = [pathCopy item];

  if (item < [childComponents count])
  {
    v12 = [childComponents objectAtIndex:item];
    componentType = [v12 componentType];
    switch(componentType)
    {
      case 10:
        mediaIdentifier = [v12 mediaIdentifier];
        viewElement2 = [v12 viewElement];
        break;
      case 9:
        item2 = [v12 item];
        mediaIdentifier = [item2 itemIdentifier];

        viewElement2 = 0;
        break;
      case 7:
        v14 = [(NSMapTable *)self->_galleryViewControllers objectForKey:v12];
        selectedMediaComponent = [v14 selectedMediaComponent];
        mediaIdentifier = [selectedMediaComponent mediaIdentifier];

        selectedMediaComponent2 = [v14 selectedMediaComponent];
        viewElement2 = [selectedMediaComponent2 viewElement];

        break;
      default:
        viewElement2 = 0;
        mediaIdentifier = 0;
        break;
    }

    [sessionCopy addItemIdentifier:mediaIdentifier];
    [sessionCopy addItemViewElement:viewElement2];
  }
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  backgroundColor = [pageComponent backgroundColor];

  if (backgroundColor)
  {
    v7 = backgroundColor;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SUUIRowSection;
    v7 = [(SUUIStorePageSection *)&v10 backgroundColorForIndexPath:pathCopy];
  }

  v8 = v7;

  return v8;
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  item = [pathCopy item];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  childComponents = [pageComponent childComponents];

  if (item >= [childComponents count])
  {
    v10 = 0;
  }

  else
  {
    v10 = [childComponents objectAtIndex:item];
  }

  componentType = [v10 componentType];
  if (componentType == 5)
  {
    v13 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AFFD40 forIndexPath:pathCopy];
    [(SUUIRowSection *)self _reloadEditorialCell:v13 forComponent:v10 columnIndex:item];
  }

  else if (componentType == 9)
  {
    editorial = [v10 editorial];

    if (editorial)
    {
      v13 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AEE560 forIndexPath:pathCopy];
      [(SUUIRowSection *)self _reloadEditorialLockupCell:v13 forComponent:v10 columnIndex:item];
    }

    else
    {
      v13 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AFB0C0 forIndexPath:pathCopy];
      [(SUUIRowSection *)self _reloadLockupCell:v13 forComponent:v10 columnIndex:item];
    }
  }

  else
  {
    v13 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SUUIRowSectionMiscReuseIdentifer" forIndexPath:pathCopy];
    if (v10)
    {
      _columnViews = [(SUUIRowSection *)self _columnViews];
      v15 = [_columnViews objectForKey:v10];
    }

    else
    {
      v15 = 0;
    }

    [v13 setContentChildView:v15];
    [(SUUIRowSection *)self _edgeInsetsForColumnIndex:item];
    [v13 setContentInsets:?];
    componentType2 = [v10 componentType];
    if (componentType2 == 10)
    {
      [(SUUIRowSection *)self _reloadView:v15 forMediaComponent:v10 columnIndex:item];
    }

    else if (componentType2 == 7)
    {
      [(SUUIRowSection *)self _loadImagesForGalleryComponent:v10 columnIndex:item];
    }
  }

  return v13;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  [collectionView bounds];
  v8 = v7;
  v10 = v9;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  v12 = pageComponent;
  if (self->_isPad || ![pageComponent shouldAutoFlow])
  {
    if (v8 <= v10)
    {
      v18 = 184;
    }

    else
    {
      v18 = 152;
    }

    v17 = *(&self->super.super.isa + v18);
    if (v17 < 0.00000011920929)
    {
      [(SUUIRowSection *)self _cellContentHeightForRowWidth:v8];
      v17 = *&v19;
      *(&self->super.super.isa + v18) = v19;
    }
  }

  else
  {
    item = [pathCopy item];
    childComponents = [v12 childComponents];
    v15 = [childComponents objectAtIndex:item];

    [(SUUIRowSection *)self _heightForComponent:v15 columnIndex:item rowWidth:v8];
    v17 = v16;
  }

  item2 = [pathCopy item];
  [(SUUIRowSection *)self _columnWidthForColumnIndex:item2 rowWidth:v8];
  v22 = v21;
  [(SUUIRowSection *)self _edgeInsetsForColumnIndex:item2];
  v25 = v17 + v24 + v23;
  v28 = v22 + v26 + v27;

  v29 = v28;
  v30 = v25;
  result.height = v30;
  result.width = v29;
  return result;
}

- (id)clickEventWithItem:(id)item elementName:(id)name index:(int64_t)index
{
  v9.receiver = self;
  v9.super_class = SUUIRowSection;
  v7 = [(SUUIStorePageSection *)&v9 clickEventWithItem:item elementName:name index:?];
  [(SUUIRowSection *)self _setPositionForClickEvent:v7 elementIndex:index];

  return v7;
}

- (void)collectionViewDidConfirmItemOfferAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  childComponents = [pageComponent childComponents];
  v7 = [childComponents objectAtIndex:item];

  if ([v7 componentType] == 9)
  {
    context = [(SUUIStorePageSection *)self context];
    item2 = [v7 item];
    v10 = [(SUUIRowSection *)self itemOfferClickEventWithItem:item2 elementName:@"Column" index:item];
    if (v10)
    {
      metricsController = [context metricsController];
      [metricsController recordEvent:v10];
    }

    collectionView = [context collectionView];
    v13 = [collectionView cellForItemAtIndexPath:pathCopy];

    v14 = [(SUUIStorePageSection *)self performItemOfferActionForItem:item2];
    layout = [v13 layout];
    [layout setItemState:v14 animated:1];
  }
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  childComponents = [pageComponent childComponents];
  v8 = [childComponents objectAtIndex:item];

  componentType = [v8 componentType];
  if (componentType > 8)
  {
    if (componentType == 9)
    {
      [(SUUIRowSection *)self _selectLockupComponent:v8 columnIndex:item];
    }

    else if (componentType == 10)
    {
      [(SUUIRowSection *)self _selectMediaComponent:v8 columnIndex:item];
    }
  }

  else if (componentType == 5)
  {
    [(SUUIRowSection *)self _expandEditorialComponent:v8 columnIndex:item];
  }

  else if (componentType == 7)
  {
    [(SUUIRowSection *)self _selectGalleryComponent:v8 columnIndex:item];
  }

  v10.receiver = self;
  v10.super_class = SUUIRowSection;
  [(SUUIStorePageSection *)&v10 collectionViewDidSelectItemAtIndexPath:pathCopy];
}

- (void)collectionViewWillApplyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  indexPath = [attributesCopy indexPath];
  v6 = [(SUUIRowSection *)self backgroundColorForIndexPath:indexPath];
  [attributesCopy setBackgroundColor:v6];

  v7.receiver = self;
  v7.super_class = SUUIRowSection;
  [(SUUIStorePageSection *)&v7 collectionViewWillApplyLayoutAttributes:attributesCopy];
}

- (void)invalidateCachedLayoutInformation
{
  self->_landscapeCellContentHeight = 0.0;
  self->_portraitCellContentHeight = 0.0;
  v2.receiver = self;
  v2.super_class = SUUIRowSection;
  [(SUUIStorePageSection *)&v2 invalidateCachedLayoutInformation];
}

- (id)itemOfferClickEventWithItem:(id)item elementName:(id)name index:(int64_t)index
{
  v9.receiver = self;
  v9.super_class = SUUIRowSection;
  v7 = [(SUUIStorePageSection *)&v9 itemOfferClickEventWithItem:item elementName:name index:?];
  [(SUUIRowSection *)self _setPositionForClickEvent:v7 elementIndex:index];

  return v7;
}

- (int64_t)numberOfCells
{
  v17 = *MEMORY[0x277D85DE8];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  columnWidths = [pageComponent columnWidths];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [columnWidths countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(columnWidths);
        }

        v6 += [*(*(&v12 + 1) + 8 * i) integerValue];
      }

      v7 += v5;
      v5 = [columnWidths countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  numberOfColumns = [pageComponent numberOfColumns];

  return v7 - v6 + numberOfColumns;
}

- (void)prefetchResourcesWithReason:(int64_t)reason
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  if ([pageComponent isMissingItemData])
  {
    _missingItemLoader = [(SUUIRowSection *)self _missingItemLoader];
    [_missingItemLoader loadItemsForPageComponent:pageComponent startIndex:0 reason:reason];
  }
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUIRowSectionMiscReuseIdentifer"];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFFD40];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFB0C0];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AEE560];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  childComponents = [pageComponent childComponents];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__SUUIRowSection_willAppearInContext___block_invoke;
  v13[3] = &unk_2798F88F0;
  v13[4] = self;
  [childComponents enumerateObjectsUsingBlock:v13];
  parentViewController = [contextCopy parentViewController];
  clientContext = [parentViewController clientContext];
  clientContext = self->_clientContext;
  self->_clientContext = clientContext;

  v11 = +[SUUIItemStateCenter defaultCenter];
  [v11 addObserver:self];

  v12.receiver = self;
  v12.super_class = SUUIRowSection;
  [(SUUIStorePageSection *)&v12 willAppearInContext:contextCopy];
}

void __38__SUUIRowSection_willAppearInContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 componentType];
  if (v5 == 9)
  {
    v6 = [*(a1 + 32) _editorialLayoutForLockup:v8 columnIndex:a3];
  }

  else
  {
    if (v5 != 5)
    {
      goto LABEL_6;
    }

    v6 = [*(a1 + 32) _editorialLayoutForEditorial:v8 columnIndex:a3];
  }

  v7 = v6;
  [v6 enqueueLayoutRequests];

LABEL_6:
}

- (void)willHideInContext:(id)context
{
  contextCopy = context;
  v5 = +[SUUIItemStateCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = SUUIRowSection;
  [(SUUIStorePageSection *)&v6 willHideInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  childComponents = [pageComponent childComponents];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__SUUIRowSection_willTransitionToSize_withTransitionCoordinator___block_invoke;
  v15[3] = &unk_2798F8918;
  v15[4] = self;
  v16 = collectionView;
  v17 = sectionIndex;
  v18 = width > height;
  v13 = collectionView;
  [childComponents enumerateObjectsUsingBlock:v15];
  v14.receiver = self;
  v14.super_class = SUUIRowSection;
  [(SUUIStorePageSection *)&v14 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

void __65__SUUIRowSection_willTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [v10 componentType];
  if (v5 == 9)
  {
    v6 = [*(a1 + 32) _editorialLayoutForLockup:v10 columnIndex:a3];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:*(a1 + 48)];
      v8 = [*(a1 + 40) cellForItemAtIndexPath:v7];
      v9 = [v8 layout];
      [v9 applyEditorialLayout:v6 withOrientation:*(a1 + 56)];
      goto LABEL_7;
    }
  }

  else
  {
    if (v5 != 5)
    {
      goto LABEL_9;
    }

    v6 = [*(a1 + 32) _editorialLayoutForEditorial:v10 columnIndex:a3];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:*(a1 + 48)];
      v8 = [*(a1 + 40) cellForItemAtIndexPath:v7];
      v9 = [v8 layout];
      [v9 applyEditorialLayout:v6 withOrientation:*(a1 + 56) expanded:{objc_msgSend(*(*(a1 + 32) + 120), "containsIndex:", a3)}];
LABEL_7:
    }
  }

LABEL_9:
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  imageCopy = image;
  requestCopy = request;
  _columnViews = [(SUUIRowSection *)self _columnViews];
  requestIdentifier = [requestCopy requestIdentifier];

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  childComponents = [pageComponent childComponents];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__SUUIRowSection_artworkRequest_didLoadImage___block_invoke;
  v14[3] = &unk_2798F8940;
  v14[4] = self;
  v15 = imageCopy;
  v16 = _columnViews;
  v17 = requestIdentifier;
  v12 = _columnViews;
  v13 = imageCopy;
  [childComponents enumerateObjectsUsingBlock:v14];
}

void __46__SUUIRowSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v7 = [*(*(a1 + 32) + 104) objectForKey:?];
  if ([v7 unsignedIntegerValue] == *(a1 + 56))
  {
    v8 = [v14 componentType];
    if (v8 == 10)
    {
      v10 = [*(a1 + 48) objectForKey:v14];
      [v10 setThumbnailImage:*(a1 + 40)];
    }

    else
    {
      if (v8 != 9)
      {
LABEL_7:
        *a4 = 1;
        goto LABEL_8;
      }

      v9 = [*(a1 + 32) context];
      v10 = [v9 collectionView];

      v11 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:{objc_msgSend(*(a1 + 32), "sectionIndex")}];
      v12 = [v10 cellForItemAtIndexPath:v11];

      v13 = [v12 layout];
      [v13 setIconImage:*(a1 + 40)];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)mediaView:(id)view playbackStateDidChange:(int64_t)change
{
  v37 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = self->_columnViews;
  v8 = [(NSMapTable *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v32 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v31 + 1) + 8 * v11);
      metricsController = [(NSMapTable *)self->_columnViews objectForKey:v12, v31];
      if ([viewCopy isDescendantOfView:metricsController])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMapTable *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_24;
      }
    }

    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    childComponents = [pageComponent childComponents];
    v16 = [childComponents indexOfObjectIdenticalTo:v12];

    componentType = [v12 componentType];
    if (componentType == 10)
    {
      selectedMediaComponent = v12;
    }

    else
    {
      if (componentType != 7)
      {
        selectedMediaComponent = v7;
LABEL_23:

        v7 = selectedMediaComponent;
        goto LABEL_24;
      }

      v18 = [(NSMapTable *)self->_galleryViewControllers objectForKey:v12];
      selectedMediaComponent = [v18 selectedMediaComponent];
    }

    if (!selectedMediaComponent)
    {
      goto LABEL_25;
    }

    context = [(SUUIStorePageSection *)self context];
    metricsController = [context metricsController];

    if ([metricsController canRecordEventWithType:*MEMORY[0x277D6A488]])
    {
      v21 = objc_alloc_init(MEMORY[0x277D69BA8]);
      v22 = SUUIMetricsMediaEventTypeForPlaybackState(change);
      [v21 setMediaEventType:v22];

      pageComponent2 = [(SUUIStorePageSection *)self pageComponent];
      v24 = [metricsController locationWithPageComponent:pageComponent2];

      v25 = [metricsController locationWithPosition:v16 type:@"Column" fieldData:0];
      v26 = v25;
      if (v24 && v25)
      {
        v35[0] = v25;
        v35[1] = v24;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
        [v21 setLocationWithEventLocations:v27];
      }

      mediaIdentifier = [(NSMapTable *)selectedMediaComponent mediaIdentifier];
      if (mediaIdentifier)
      {
        v29 = [MEMORY[0x277CCABB0] numberWithLongLong:mediaIdentifier];
        [v21 setItemIdentifier:v29];
      }

      mediaURLString = [(NSMapTable *)selectedMediaComponent mediaURLString];
      [v21 setMediaURL:mediaURLString];

      [metricsController recordEvent:v21];
    }

    goto LABEL_23;
  }

LABEL_24:

LABEL_25:
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
  v15[2] = __52__SUUIRowSection_itemStateCenter_itemStatesChanged___block_invoke;
  v15[3] = &unk_2798F5AF8;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __52__SUUIRowSection_itemStateCenter_itemStatesChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 collectionView];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SUUIRowSection_itemStateCenter_itemStatesChanged___block_invoke_2;
  v6[3] = &unk_2798F8968;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _enumerateLockupsWithBlock:v6];
}

void __52__SUUIRowSection_itemStateCenter_itemStatesChanged___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v12 = [v5 cellForItemAtIndexPath:a3];
  v7 = [v6 item];

  if (v12)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v7, "itemIdentifier")}];
    v10 = [*(a1 + 40) objectForKey:v9];
    if (v10)
    {
      v11 = [v12 layout];
      [v11 setItemState:v10 animated:1];
    }
  }
}

- (void)itemStateCenterRestrictionsChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SUUIRowSection_itemStateCenterRestrictionsChanged___block_invoke;
  v6[3] = &unk_2798F5AF8;
  v6[4] = self;
  v7 = changedCopy;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __53__SUUIRowSection_itemStateCenterRestrictionsChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 collectionView];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SUUIRowSection_itemStateCenterRestrictionsChanged___block_invoke_2;
  v6[3] = &unk_2798F8968;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 _enumerateLockupsWithBlock:v6];
}

void __53__SUUIRowSection_itemStateCenterRestrictionsChanged___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v10 = [v5 cellForItemAtIndexPath:a3];
  v7 = [v10 layout];
  v8 = *(a1 + 40);
  v9 = [v6 item];

  [v7 setRestricted:{objc_msgSend(v8, "isItemRestrictedWithParentalControlsRank:", objc_msgSend(v9, "parentalControlsRank"))}];
}

- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    v8 = [pageComponent _updateWithMissingItems:itemsCopy];
    if ([v8 count])
    {
      childComponents = [pageComponent childComponents];
      context = [(SUUIStorePageSection *)self context];
      collectionView = [context collectionView];

      sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __72__SUUIRowSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke;
      v15[3] = &unk_2798F8990;
      v16 = collectionView;
      v17 = childComponents;
      selfCopy = self;
      v19 = sectionIndex;
      v13 = childComponents;
      v14 = collectionView;
      [v8 enumerateIndexesUsingBlock:v15];
    }
  }
}

void __72__SUUIRowSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:*(a1 + 56)];
  v9 = [v4 cellForItemAtIndexPath:v5];

  if (v9)
  {
    v6 = [*(a1 + 40) objectAtIndex:a2];
    v7 = [v6 editorial];

    v8 = *(a1 + 48);
    if (v7)
    {
      [v8 _reloadEditorialLockupCell:v9 forComponent:v6 columnIndex:a2];
    }

    else
    {
      [v8 _reloadLockupCell:v9 forComponent:v6 columnIndex:a2];
    }
  }
}

- (void)productPageOverlayDidDismiss:(id)dismiss
{
  _overlaySourceCell = [(SUUIRowSection *)self _overlaySourceCell];
  layout = [_overlaySourceCell layout];
  [layout setIconImageHidden:0];

  overlaySourceComponent = self->_overlaySourceComponent;
  self->_overlaySourceComponent = 0;

  context = [(SUUIStorePageSection *)self context];
  parentViewController = [context parentViewController];
  [parentViewController _pageSectionDidDismissOverlayController:self->_overlayController];

  [(SUUIProductPageOverlayController *)self->_overlayController setDelegate:0];
  overlayController = self->_overlayController;
  self->_overlayController = 0;
}

- (double)_cellContentHeightForRowWidth:(double)width
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  childComponents = [pageComponent childComponents];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SUUIRowSection__cellContentHeightForRowWidth___block_invoke;
  v9[3] = &unk_2798F89B8;
  *&v9[6] = width;
  v9[4] = self;
  v9[5] = &v10;
  [childComponents enumerateObjectsUsingBlock:v9];
  v7 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __48__SUUIRowSection__cellContentHeightForRowWidth___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = [*(a1 + 32) _heightForComponent:a2 columnIndex:a3 rowWidth:*(a1 + 48)];
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) >= v5)
  {
    v5 = *(v6 + 24);
  }

  *(v6 + 24) = v5;
  return result;
}

- (id)_columnViews
{
  columnViews = self->_columnViews;
  if (!columnViews)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB00]);
    v5 = self->_columnViews;
    self->_columnViews = v4;

    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    childComponents = [pageComponent childComponents];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__SUUIRowSection__columnViews__block_invoke;
    v9[3] = &unk_2798F88F0;
    v9[4] = self;
    [childComponents enumerateObjectsUsingBlock:v9];

    columnViews = self->_columnViews;
  }

  return columnViews;
}

void __30__SUUIRowSection__columnViews__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 componentType];
  if (v3 == 10)
  {
    v6 = [*(a1 + 32) _newViewWithMediaComponent:v7];
    if (v6)
    {
LABEL_7:
      [*(*(a1 + 32) + 96) setObject:v6 forKey:v7];
    }
  }

  else
  {
    if (v3 == 7)
    {
      v4 = [*(a1 + 32) _viewControllerForGalleryComponent:v7];
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_8;
      }

      v4 = [*(a1 + 32) _viewControllerForCountdownComponent:v7];
    }

    v5 = v4;
    v6 = [v4 view];

    if (v6)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (double)_columnWidthForColumnIndex:(int64_t)index rowWidth:(double)width
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  v8 = pageComponent;
  if (self->_isPad || ![pageComponent shouldAutoFlow])
  {
    columnWidths = [v8 columnWidths];
    numberOfColumns = [v8 numberOfColumns];
    [(SUUIRowSection *)self _interColumnSpacing];
    v13 = v12;
    *&v12 = (width + -30.0 - v12 * (numberOfColumns - 1)) / numberOfColumns;
    v14 = floorf(*&v12);
    if (index < 1)
    {
      v16 = 15.0;
    }

    else
    {
      v15 = 0;
      v16 = 15.0;
      do
      {
        if ([columnWidths count] <= index)
        {
          integerValue = 1;
        }

        else
        {
          v17 = [columnWidths objectAtIndex:v15];
          integerValue = [v17 integerValue];
        }

        v16 = v13 + v16 + v13 * (integerValue - 1) + integerValue * v14;
        ++v15;
      }

      while (index != v15);
    }

    if ([columnWidths count] <= index)
    {
      integerValue2 = 1;
    }

    else
    {
      v19 = [columnWidths objectAtIndex:index];
      integerValue2 = [v19 integerValue];
    }

    if (numberOfColumns - integerValue2 == index)
    {
      v9 = width + -15.0 - v16;
    }

    else
    {
      v9 = v13 * (integerValue2 - 1) + integerValue2 * v14;
    }
  }

  else
  {
    v9 = width + -30.0;
  }

  return v9;
}

- (UIEdgeInsets)_edgeInsetsForColumnIndex:(int64_t)index
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  [(SUUIRowSection *)self _interColumnSpacing];
  v7 = v6;
  numberOfColumns = [pageComponent numberOfColumns];
  if (self->_isPad || (v9 = 15.0, v10 = 15.0, ([pageComponent shouldAutoFlow] & 1) == 0))
  {
    v11 = v7 * 0.5;
    v12 = floorf(v11);
    if (index)
    {
      v10 = v12;
    }

    else
    {
      v10 = 15.0;
    }

    if (numberOfColumns - 1 == index)
    {
      v9 = 15.0;
    }

    else
    {
      v9 = v12;
    }
  }

  v13 = 15.0;
  v14 = 15.0;
  v15 = v10;
  v16 = v9;
  result.right = v16;
  result.bottom = v14;
  result.left = v15;
  result.top = v13;
  return result;
}

- (id)_editorialLayoutForEditorial:(id)editorial columnIndex:(int64_t)index
{
  editorialCopy = editorial;
  editorialLayouts = self->_editorialLayouts;
  if (!editorialLayouts)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    v9 = self->_editorialLayouts;
    self->_editorialLayouts = v8;

    editorialLayouts = self->_editorialLayouts;
  }

  v10 = [(NSMapTable *)editorialLayouts objectForKey:editorialCopy];
  if (!v10)
  {
    context = [(SUUIStorePageSection *)self context];
    v12 = [SUUIEditorialLayout alloc];
    context2 = [(SUUIStorePageSection *)self context];
    textLayoutCache = [context2 textLayoutCache];
    v10 = [(SUUIEditorialLayout *)v12 initWithEditorial:editorialCopy layoutCache:textLayoutCache];

    [context portraitPageWidth];
    [(SUUIRowSection *)self _columnWidthForColumnIndex:index rowWidth:?];
    [(SUUIEditorialLayout *)v10 setLayoutWidth:0 forOrientation:?];
    [context landscapePageWidth];
    [(SUUIRowSection *)self _columnWidthForColumnIndex:index rowWidth:?];
    [(SUUIEditorialLayout *)v10 setLayoutWidth:1 forOrientation:?];
    [(NSMapTable *)self->_editorialLayouts setObject:v10 forKey:editorialCopy];
  }

  return v10;
}

- (id)_editorialLayoutForLockup:(id)lockup columnIndex:(int64_t)index
{
  lockupCopy = lockup;
  editorial = [lockupCopy editorial];
  if (editorial)
  {
    editorialLayouts = self->_editorialLayouts;
    if (!editorialLayouts)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      v10 = self->_editorialLayouts;
      self->_editorialLayouts = v9;

      editorialLayouts = self->_editorialLayouts;
    }

    v11 = [(NSMapTable *)editorialLayouts objectForKey:editorial];
    if (!v11)
    {
      context = [(SUUIStorePageSection *)self context];
      v13 = [SUUIEditorialLayout alloc];
      context2 = [(SUUIStorePageSection *)self context];
      textLayoutCache = [context2 textLayoutCache];
      v11 = [(SUUIEditorialLayout *)v13 initWithEditorial:editorial layoutCache:textLayoutCache];

      v19 = 0uLL;
      v20 = 0;
      [(SUUIRowSection *)self _lockupStyleForComponent:lockupCopy columnIndex:index];
      [context portraitPageWidth];
      [(SUUIRowSection *)self _columnWidthForColumnIndex:index rowWidth:?];
      v17 = v19;
      v18 = v20;
      [SUUIEditorialLockupCellLayout editorialWidthForCellWidth:&v17 lockupStyle:?];
      [(SUUIEditorialLayout *)v11 setLayoutWidth:0 forOrientation:?];
      [context landscapePageWidth];
      [(SUUIRowSection *)self _columnWidthForColumnIndex:index rowWidth:?];
      v17 = v19;
      v18 = v20;
      [SUUIEditorialLockupCellLayout editorialWidthForCellWidth:&v17 lockupStyle:?];
      [(SUUIEditorialLayout *)v11 setLayoutWidth:1 forOrientation:?];
      [(NSMapTable *)self->_editorialLayouts setObject:v11 forKey:editorial];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_enumerateLockupsWithBlock:(id)block
{
  blockCopy = block;
  sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  childComponents = [pageComponent childComponents];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SUUIRowSection__enumerateLockupsWithBlock___block_invoke;
  v9[3] = &unk_2798F89E0;
  v10 = blockCopy;
  v11 = sectionIndex;
  v8 = blockCopy;
  [childComponents enumerateObjectsUsingBlock:v9];
}

void __45__SUUIRowSection__enumerateLockupsWithBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ([v6 componentType] == 9)
  {
    v5 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:*(a1 + 40)];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_expandEditorialComponent:(id)component columnIndex:(int64_t)index
{
  v17[1] = *MEMORY[0x277D85DE8];
  componentCopy = component;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  v9 = SUUIEditorialLayoutOrientationForView(collectionView);
  v10 = [(SUUIRowSection *)self _editorialLayoutForEditorial:componentCopy columnIndex:index];

  v11 = [v10 bodyTextLayoutForOrientation:v9];

  if ([v11 requiresTruncation] && (-[NSMutableIndexSet containsIndex:](self->_expandedEditorialIndexes, "containsIndex:", index) & 1) == 0)
  {
    expandedEditorialIndexes = self->_expandedEditorialIndexes;
    if (!expandedEditorialIndexes)
    {
      v13 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v14 = self->_expandedEditorialIndexes;
      self->_expandedEditorialIndexes = v13;

      expandedEditorialIndexes = self->_expandedEditorialIndexes;
    }

    [(NSMutableIndexSet *)expandedEditorialIndexes addIndex:index];
    self->_landscapeCellContentHeight = 0.0;
    self->_portraitCellContentHeight = 0.0;
    v15 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v17[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [collectionView reloadItemsAtIndexPaths:v16];
  }
}

- (double)_heightForArtwork:(id)artwork columnIndex:(int64_t)index rowWidth:(double)width
{
  artworkCopy = artwork;
  [(SUUIRowSection *)self _columnWidthForColumnIndex:index rowWidth:width];
  v10 = v9;
  height = [artworkCopy height];
  width = [artworkCopy width];

  v13 = v10 / width * height;
  return floorf(v13);
}

- (double)_heightForComponent:(id)component columnIndex:(double)index rowWidth:(double)width
{
  componentCopy = component;
  componentType = [componentCopy componentType];
  v10 = 0.0;
  if (componentType > 8)
  {
    switch(componentType)
    {
      case 9:
        [(SUUIRowSection *)self _heightForLockupComponent:componentCopy columnIndex:index rowWidth:width];
        goto LABEL_14;
      case 10:
        [(SUUIRowSection *)self _heightForMediaComponent:componentCopy columnIndex:index rowWidth:width];
        goto LABEL_14;
      case 14:
        [componentCopy height];
        goto LABEL_14;
    }
  }

  else
  {
    switch(componentType)
    {
      case 2:
        [(SUUIRowSection *)self _heightForCountdownComponent:componentCopy columnIndex:index rowWidth:width];
        goto LABEL_14;
      case 5:
        [(SUUIRowSection *)self _heightForEditorialComponent:componentCopy columnIndex:index rowWidth:width];
        goto LABEL_14;
      case 7:
        [(SUUIRowSection *)self _heightForGalleryComponent:componentCopy columnIndex:index rowWidth:width];
LABEL_14:
        v10 = v11;
        break;
    }
  }

  return v10;
}

- (double)_heightForCountdownComponent:(id)component columnIndex:(int64_t)index rowWidth:(double)width
{
  countdown = [component countdown];
  artworkProvider = [countdown artworkProvider];
  largestArtwork = [artworkProvider largestArtwork];

  if (largestArtwork)
  {
    [(SUUIRowSection *)self _heightForArtwork:largestArtwork columnIndex:index rowWidth:width];
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (double)_heightForEditorialComponent:(id)component columnIndex:(int64_t)index rowWidth:(double)width
{
  v7 = [(SUUIRowSection *)self _editorialLayoutForEditorial:component columnIndex:width];
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v10 = SUUIEditorialLayoutOrientationForView(collectionView);

  [v7 layoutHeightForOrientation:v10 expanded:{-[NSMutableIndexSet containsIndex:](self->_expandedEditorialIndexes, "containsIndex:", index)}];
  v12 = v11 + 17.0;

  return v12;
}

- (double)_heightForGalleryComponent:(id)component columnIndex:(int64_t)index rowWidth:(double)width
{
  v21 = *MEMORY[0x277D85DE8];
  childComponents = [component childComponents];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [childComponents countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(childComponents);
        }

        [(SUUIRowSection *)self _heightForMediaComponent:*(*(&v16 + 1) + 8 * i) columnIndex:index rowWidth:width];
        if (v12 < v14)
        {
          v12 = v14;
        }
      }

      v10 = [childComponents countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (double)_heightForLockupComponent:(id)component columnIndex:(int64_t)index rowWidth:(double)width
{
  componentCopy = component;
  context = [(SUUIStorePageSection *)self context];
  editorial = [componentCopy editorial];
  v24 = 0uLL;
  v25 = 0;
  [(SUUIRowSection *)self _lockupStyleForComponent:componentCopy columnIndex:index];
  item = [componentCopy item];
  parentViewController = [context parentViewController];
  clientContext = [parentViewController clientContext];
  v22 = v24;
  v23 = v25;
  [SUUILockupItemCellLayout heightForLockupStyle:&v22 item:item editorial:editorial clientContext:clientContext];
  v14 = v13;

  if (editorial)
  {
    v15 = [(SUUIRowSection *)self _editorialLayoutForLockup:componentCopy columnIndex:index];
    collectionView = [context collectionView];
    v17 = SUUIEditorialLayoutOrientationForView(collectionView);

    [v15 layoutHeightForOrientation:v17 expanded:1];
    v19 = v18 + 17.0;
    if (SUUILockupLayoutStyleIsHorizontal(*(&v24 + 1)))
    {
      v14 = v14 + v19;
    }

    else
    {
      v20 = v19 + 26.0;
      if ((v25 & 4) == 0)
      {
        v20 = v19;
      }

      if (v20 >= v14)
      {
        v14 = v20;
      }
    }
  }

  return v14;
}

- (double)_heightForMediaComponent:(id)component columnIndex:(int64_t)index rowWidth:(double)width
{
  bestThumbnailArtwork = [component bestThumbnailArtwork];
  if (bestThumbnailArtwork)
  {
    [(SUUIRowSection *)self _heightForArtwork:bestThumbnailArtwork columnIndex:index rowWidth:width];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (id)_imageConsumerWithItem:(id)item lockupSize:(int64_t)size
{
  itemKind = [item itemKind];
  if (itemKind <= 0x11 && ((1 << itemKind) & 0x21020) != 0)
  {
    v6 = [SUUIStyledImageDataConsumer lockupIconConsumerWithSize:size, itemKind];
  }

  else
  {
    v6 = [SUUIProductImageDataConsumer lockupConsumerWithSize:size itemKind:itemKind];
  }

  return v6;
}

- (double)_interColumnSpacing
{
  result = 20.0;
  if (self->_isPad)
  {
    context = [(SUUIStorePageSection *)self context];
    collectionView = [context collectionView];
    [collectionView bounds];
    v6 = v5;
    v8 = v7;

    result = 28.0;
    if (v6 > v8)
    {
      return 30.0;
    }
  }

  return result;
}

- (void)_loadImagesForGalleryComponent:(id)component columnIndex:(int64_t)index
{
  componentCopy = component;
  v7 = [(SUUIRowSection *)self _viewControllerForGalleryComponent:componentCopy];
  if (v7)
  {
    context = [(SUUIStorePageSection *)self context];
    [context landscapePageWidth];
    v10 = v9;
    [context portraitPageWidth];
    if (v10 >= v11)
    {
      v11 = v10;
    }

    [(SUUIRowSection *)self _columnWidthForColumnIndex:index rowWidth:v11];
    v13 = v12;
    childComponents = [componentCopy childComponents];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__SUUIRowSection__loadImagesForGalleryComponent_columnIndex___block_invoke;
    v15[3] = &unk_2798F8A08;
    v16 = v7;
    v17 = v13;
    [childComponents enumerateObjectsUsingBlock:v15];
  }
}

- (id)_lockupImageForComponent:(id)component
{
  componentCopy = component;
  context = [(SUUIStorePageSection *)self context];
  resourceLoader = [context resourceLoader];

  v7 = [(NSMapTable *)self->_componentArtworkRequestIDs objectForKey:componentCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [resourceLoader cachedResourceForRequestIdentifier:{objc_msgSend(v7, "unsignedIntegerValue")}];
    item = v9;
    if (v9)
    {
      v11 = v9;
LABEL_6:
      v12 = v11;
      goto LABEL_12;
    }

    if ([resourceLoader trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v8, "unsignedIntegerValue")}])
    {
      v11 = [(SUUIRowSection *)self _lockupPlaceholderForComponent:componentCopy];
      goto LABEL_6;
    }
  }

  item = [componentCopy item];
  if (componentCopy)
  {
    [componentCopy lockupStyle];
  }

  v13 = SUUILockupImageSizeForLockupSize(0, [item itemKind]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v16 = (v15 * v13);

  v17 = [item artworkURLForSize:v16];
  if (v17)
  {
    v18 = objc_alloc_init(SUUIArtworkRequest);
    v19 = [(SUUIRowSection *)self _imageConsumerWithItem:item lockupSize:0];
    [(SUUIArtworkRequest *)v18 setDataConsumer:v19];

    [(SUUIArtworkRequest *)v18 setDelegate:self];
    [(SUUIArtworkRequest *)v18 setURL:v17];
    componentArtworkRequestIDs = self->_componentArtworkRequestIDs;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v18, "requestIdentifier")}];
    [(NSMapTable *)componentArtworkRequestIDs setObject:v21 forKey:componentCopy];

    [resourceLoader loadResourceWithRequest:v18 reason:1];
  }

  v12 = [(SUUIRowSection *)self _lockupPlaceholderForComponent:componentCopy];

LABEL_12:

  return v12;
}

- (id)_lockupPlaceholderForComponent:(id)component
{
  componentCopy = component;
  item = [componentCopy item];
  if (componentCopy)
  {
    [componentCopy lockupStyle];
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(SUUIRowSection *)self _imageConsumerWithItem:item lockupSize:v6];

  v8 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
  v9 = [v7 imageForColor:v8];

  return v9;
}

- (SUUILockupStyle)_lockupStyleForComponent:(SEL)component columnIndex:(id)index
{
  indexCopy = index;
  retstr->layoutStyle = 0;
  retstr->visibleFields = 0;
  retstr->artworkSize = 0;
  v16 = indexCopy;
  if (indexCopy)
  {
    [indexCopy lockupStyle];
    indexCopy = v16;
  }

  if (self->_isPad)
  {
    if ((retstr->artworkSize - 3) >= 2)
    {
      if (retstr->artworkSize != 5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      pageComponent = [(SUUIStorePageSection *)self pageComponent];
      if ([pageComponent numberOfColumns] < 2)
      {

        goto LABEL_12;
      }

      columnWidths = [pageComponent columnWidths];
      v11 = [columnWidths objectAtIndex:a5];

      integerValue = [v11 integerValue];
      indexCopy = v16;
      if (integerValue != 1)
      {
        goto LABEL_13;
      }
    }

    editorial = [indexCopy editorial];

    if (editorial)
    {
      retstr->layoutStyle = 0;
LABEL_12:
      indexCopy = v16;
      goto LABEL_13;
    }

    layoutStyle = retstr->layoutStyle;
    if (layoutStyle == 1)
    {
      retstr->layoutStyle = 3;
      goto LABEL_12;
    }

    indexCopy = v16;
    if (!layoutStyle)
    {
      retstr->layoutStyle = 2;
    }
  }

LABEL_13:

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

- (id)_newSizeToFitArtworkRequestWithArtwork:(id)artwork columnIndex:(int64_t)index
{
  artworkCopy = artwork;
  v7 = objc_alloc_init(SUUIArtworkRequest);
  [(SUUIArtworkRequest *)v7 setDelegate:self];
  v8 = [artworkCopy URL];

  [(SUUIArtworkRequest *)v7 setURL:v8];
  context = [(SUUIStorePageSection *)self context];
  [context landscapePageWidth];
  v11 = v10;
  [context portraitPageWidth];
  if (v11 >= v12)
  {
    v12 = v11;
  }

  [(SUUIRowSection *)self _columnWidthForColumnIndex:index rowWidth:v12];
  v13 = [SUUISizeToFitImageDataConsumer consumerWithConstraintSize:?];
  [(SUUIArtworkRequest *)v7 setDataConsumer:v13];

  return v7;
}

- (id)_newViewWithMediaComponent:(id)component
{
  v4 = objc_alloc_init(SUUIEmbeddedMediaView);
  [(SUUIEmbeddedMediaView *)v4 setDelegate:self];
  return v4;
}

- (id)_overlaySourceCell
{
  if (self->_overlaySourceComponent)
  {
    context = [(SUUIStorePageSection *)self context];
    collectionView = [context collectionView];

    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    childComponents = [pageComponent childComponents];
    v7 = [childComponents indexOfObjectIdenticalTo:self->_overlaySourceComponent];

    v8 = [MEMORY[0x277CCAA70] indexPathForItem:v7 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v9 = [collectionView cellForItemAtIndexPath:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_popSourceViewForOverlayController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (self->_overlaySourceComponent && [controllerCopy numberOfVisibleOverlays] <= 1)
  {
    _overlaySourceCell = [(SUUIRowSection *)self _overlaySourceCell];
    layout = [_overlaySourceCell layout];
    iconImageView = [layout iconImageView];
    [iconImageView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = objc_alloc(MEMORY[0x277D755E8]);
    iconImage = [layout iconImage];
    v19 = [v17 initWithImage:iconImage];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v19 setBackgroundColor:clearColor];

    superview = [iconImageView superview];
    [superview convertRect:0 toView:{v10, v12, v14, v16}];
    [v19 setFrame:?];

    [layout setIconImageHidden:1];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_reloadEditorialCell:(id)cell forComponent:(id)component columnIndex:(int64_t)index
{
  cellCopy = cell;
  componentCopy = component;
  v9 = [(SUUIRowSection *)self _editorialLayoutForEditorial:componentCopy columnIndex:index];
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v12 = SUUIEditorialLayoutOrientationForView(collectionView);

  if (([(NSMutableIndexSet *)self->_expandedEditorialIndexes containsIndex:index]& 1) != 0)
  {
    maximumBodyLines = 0;
  }

  else
  {
    maximumBodyLines = [componentCopy maximumBodyLines];
  }

  layout = [cellCopy layout];
  [layout applyEditorialLayout:v9 withOrientation:v12 expanded:maximumBodyLines == 0];
  [(SUUIRowSection *)self _edgeInsetsForColumnIndex:index];
  [layout setContentInset:?];
  context2 = [(SUUIStorePageSection *)self context];
  parentViewController = [context2 parentViewController];
  clientContext = [parentViewController clientContext];

  textBoxView = [layout textBoxView];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"MORE_BUTTON"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"MORE_BUTTON" inBundles:0];
  }
  v19 = ;
  [textBoxView setMoreButtonTitle:v19];

  [textBoxView setNumberOfVisibleLines:maximumBodyLines];
}

- (void)_reloadEditorialLockupCell:(id)cell forComponent:(id)component columnIndex:(int64_t)index
{
  componentCopy = component;
  cellCopy = cell;
  context = [(SUUIStorePageSection *)self context];
  layout = [cellCopy layout];
  [layout setClientContext:self->_clientContext];
  [(SUUIRowSection *)self _edgeInsetsForColumnIndex:index];
  [layout setContentInsets:?];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  [(SUUIRowSection *)self _lockupStyleForComponent:componentCopy columnIndex:index];
  [layout setLayoutStyle:v24];
  [layout setVisibleFields:v25];
  item = [(SUUILockupComponent *)componentCopy item];
  [cellCopy configureForItem:item clientContext:self->_clientContext];
  [cellCopy setSeparatorStyle:0];

  v13 = [(SUUIRowSection *)self _lockupImageForComponent:componentCopy];
  lockupCellLayout = [layout lockupCellLayout];
  [lockupCellLayout setClientContext:self->_clientContext];
  [lockupCellLayout setIconImage:v13];
  [lockupCellLayout setIconImageHidden:self->_overlaySourceComponent == componentCopy];
  [lockupCellLayout setImageBoundingSize:{SUUILockupImageSizeForLockupSize(v23, objc_msgSend(item, "itemKind"))}];
  [lockupCellLayout setLockupSize:v23];
  v15 = [(SUUIRowSection *)self _editorialLayoutForLockup:componentCopy columnIndex:index];

  context2 = [(SUUIStorePageSection *)self context];
  collectionView = [context2 collectionView];
  v18 = SUUIEditorialLayoutOrientationForView(collectionView);

  [layout applyEditorialLayout:v15 withOrientation:v18];
  v19 = +[SUUIItemStateCenter defaultCenter];
  v20 = [v19 stateForItemWithIdentifier:{objc_msgSend(item, "itemIdentifier")}];
  colorScheme = [context colorScheme];
  [layout setColoringWithColorScheme:colorScheme];

  itemOfferButtonAppearance = [context itemOfferButtonAppearance];
  [layout setItemOfferButtonAppearance:itemOfferButtonAppearance];

  [layout setItemState:v20];
  [layout setRestricted:{objc_msgSend(v19, "isItemRestrictedWithParentalControlsRank:", objc_msgSend(item, "parentalControlsRank"))}];
}

- (void)_reloadLockupCell:(id)cell forComponent:(id)component columnIndex:(int64_t)index
{
  componentCopy = component;
  cellCopy = cell;
  context = [(SUUIStorePageSection *)self context];
  layout = [cellCopy layout];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  [(SUUIRowSection *)self _lockupStyleForComponent:componentCopy columnIndex:index];
  [layout setClientContext:self->_clientContext];
  [(SUUIRowSection *)self _edgeInsetsForColumnIndex:index];
  [layout setContentInsets:?];
  itemOfferButtonAppearance = [context itemOfferButtonAppearance];
  [layout setItemOfferButtonAppearance:itemOfferButtonAppearance];

  [layout setLayoutStyle:v20];
  [layout setLockupSize:v19];
  [layout setVerticalAlignment:0];
  [layout setVisibleFields:v21];
  item = [(SUUILockupComponent *)componentCopy item];
  [cellCopy configureForItem:item clientContext:self->_clientContext];
  [cellCopy setSeparatorStyle:0];

  [layout setImageBoundingSize:{SUUILockupImageSizeForLockupSize(v19, objc_msgSend(item, "itemKind"))}];
  v14 = [(SUUIRowSection *)self _lockupImageForComponent:componentCopy];
  [layout setIconImage:v14];
  v15 = self->_overlaySourceComponent == componentCopy;

  [layout setIconImageHidden:v15];
  v16 = +[SUUIItemStateCenter defaultCenter];
  v17 = [v16 stateForItemWithIdentifier:{objc_msgSend(item, "itemIdentifier")}];
  colorScheme = [context colorScheme];
  [layout setColoringWithColorScheme:colorScheme];

  [layout setItemState:v17];
  [layout setRestricted:{objc_msgSend(v16, "isItemRestrictedWithParentalControlsRank:", objc_msgSend(item, "parentalControlsRank"))}];
}

- (void)_reloadView:(id)view forMediaComponent:(id)component columnIndex:(int64_t)index
{
  viewCopy = view;
  componentCopy = component;
  context = [(SUUIStorePageSection *)self context];
  resourceLoader = [context resourceLoader];

  v11 = [(NSMapTable *)self->_componentArtworkRequestIDs objectForKey:componentCopy];
  v12 = v11;
  if (!v11)
  {
    bestThumbnailArtwork = [componentCopy bestThumbnailArtwork];
    if (!bestThumbnailArtwork)
    {
      goto LABEL_9;
    }

    bestThumbnailArtwork2 = [(SUUIRowSection *)self _newSizeToFitArtworkRequestWithArtwork:bestThumbnailArtwork columnIndex:index];
    componentArtworkRequestIDs = self->_componentArtworkRequestIDs;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(bestThumbnailArtwork2, "requestIdentifier")}];
    [(NSMapTable *)componentArtworkRequestIDs setObject:v19 forKey:componentCopy];

    [resourceLoader loadResourceWithRequest:bestThumbnailArtwork2 reason:1];
    goto LABEL_8;
  }

  bestThumbnailArtwork = [resourceLoader cachedResourceForRequestIdentifier:{objc_msgSend(v11, "unsignedIntegerValue")}];
  [viewCopy setThumbnailImage:bestThumbnailArtwork];
  if (!bestThumbnailArtwork && ([resourceLoader trySetReason:1 forRequestWithIdentifier:{objc_msgSend(v12, "unsignedIntegerValue")}] & 1) == 0)
  {
    bestThumbnailArtwork2 = [componentCopy bestThumbnailArtwork];
    if (bestThumbnailArtwork2)
    {
      v15 = [(SUUIRowSection *)self _newSizeToFitArtworkRequestWithArtwork:bestThumbnailArtwork2 columnIndex:index];
      v16 = self->_componentArtworkRequestIDs;
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "requestIdentifier")}];
      [(NSMapTable *)v16 setObject:v17 forKey:componentCopy];

      [resourceLoader loadResourceWithRequest:v15 reason:1];
    }

LABEL_8:
  }

LABEL_9:

  accessibilityLabel = [componentCopy accessibilityLabel];
  [viewCopy setAccessibilityLabel:accessibilityLabel];

  [viewCopy setMediaType:{objc_msgSend(componentCopy, "mediaType")}];
  mediaURLString = [componentCopy mediaURLString];
  [viewCopy setMediaURLString:mediaURLString];
}

- (void)_selectGalleryComponent:(id)component columnIndex:(int64_t)index
{
  v10 = [(NSMapTable *)self->_galleryViewControllers objectForKey:component];
  selectedMediaComponent = [v10 selectedMediaComponent];
  v7 = [(SUUIStorePageSection *)self clickEventWithMedia:selectedMediaComponent elementName:@"Column" index:index];
  if (v7)
  {
    context = [(SUUIStorePageSection *)self context];
    metricsController = [context metricsController];
    [metricsController recordEvent:v7];
  }

  [v10 performActionForSelectedComponentAnimated:1];
}

- (void)_selectLockupComponent:(id)component columnIndex:(int64_t)index
{
  componentCopy = component;
  item = [componentCopy item];
  v8 = [(SUUIRowSection *)self clickEventWithItem:item elementName:@"Column" index:index];
  if (v8)
  {
    context = [(SUUIStorePageSection *)self context];
    metricsController = [context metricsController];
    [metricsController recordEvent:v8];
  }

  context2 = [(SUUIStorePageSection *)self context];
  parentViewController = [context2 parentViewController];

  delegate = [parentViewController delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate sectionsViewController:parentViewController showProductPageForItem:item] & 1) == 0)
  {
    if (SUUIItemKindIsSoftwareKind([item itemKind]) && (objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "userInterfaceIdiom"), v14, v15))
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __53__SUUIRowSection__selectLockupComponent_columnIndex___block_invoke;
      v16[3] = &unk_2798F8A30;
      v16[4] = self;
      v17 = parentViewController;
      v18 = componentCopy;
      v19 = item;
      [(SUUIStorePageSection *)self sendXEventWithItem:v19 completionBlock:v16];
    }

    else
    {
      [(SUUIStorePageSection *)self showProductViewControllerWithItem:item];
    }
  }
}

uint64_t __53__SUUIRowSection__selectLockupComponent_columnIndex___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = *(result + 32);
    if (!*(v4 + 168))
    {
      v5 = [[SUUIProductPageOverlayController alloc] initWithParentViewController:*(result + 40)];
      v6 = *(v3 + 32);
      v7 = *(v6 + 168);
      *(v6 + 168) = v5;

      v8 = *(*(v3 + 32) + 168);
      v9 = [*(v3 + 40) clientContext];
      [v8 setClientContext:v9];

      [*(*(v3 + 32) + 168) setDelegate:?];
      v4 = *(v3 + 32);
    }

    objc_storeStrong((v4 + 176), *(v3 + 48));
    [*(*(v3 + 32) + 168) showWithInitialItem:*(v3 + 56)];
    v10 = *(v3 + 40);
    v11 = *(*(v3 + 32) + 168);

    return [v10 _setActiveProductPageOverlayController:v11];
  }

  return result;
}

- (void)_selectMediaComponent:(id)component columnIndex:(int64_t)index
{
  componentCopy = component;
  v5 = [SUUIStorePageSection clickEventWithMedia:"clickEventWithMedia:elementName:index:" elementName:? index:?];
  if (v5)
  {
    context = [(SUUIStorePageSection *)self context];
    metricsController = [context metricsController];
    [metricsController recordEvent:v5];
  }

  if ([componentCopy mediaType])
  {
    link = [(NSMapTable *)self->_columnViews objectForKey:componentCopy];
    [link beginPlaybackAnimated:1];
  }

  else
  {
    link = [componentCopy link];
    [(SUUIStorePageSection *)self showPageWithLink:link];
  }
}

- (void)_setPositionForClickEvent:(id)event elementIndex:(int64_t)index
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

- (id)_viewControllerForCountdownComponent:(id)component
{
  componentCopy = component;
  v5 = [(NSMapTable *)self->_countdownViewControllers objectForKey:componentCopy];
  if (!v5)
  {
    context = [(SUUIStorePageSection *)self context];
    v7 = [SUUICountdownViewController alloc];
    resourceLoader = [context resourceLoader];
    v5 = [(SUUICountdownViewController *)v7 initWithCountdownComponent:componentCopy artworkLoader:resourceLoader];

    [(SUUICountdownViewController *)v5 setClientContext:self->_clientContext];
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    childComponents = [pageComponent childComponents];
    v11 = [childComponents indexOfObjectIdenticalTo:componentCopy];

    v12 = [MEMORY[0x277CCAA70] indexPathForItem:v11 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    view = [(SUUICountdownViewController *)v5 view];
    v14 = [(SUUIRowSection *)self backgroundColorForIndexPath:v12];
    [view setBackgroundColor:v14];

    countdownViewControllers = self->_countdownViewControllers;
    if (!countdownViewControllers)
    {
      v16 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      v17 = self->_countdownViewControllers;
      self->_countdownViewControllers = v16;

      countdownViewControllers = self->_countdownViewControllers;
    }

    [(NSMapTable *)countdownViewControllers setObject:v5 forKey:componentCopy];
    parentViewController = [context parentViewController];
    [parentViewController addChildViewController:v5];
  }

  return v5;
}

- (id)_viewControllerForGalleryComponent:(id)component
{
  componentCopy = component;
  v5 = [(NSMapTable *)self->_galleryViewControllers objectForKey:componentCopy];
  if (!v5)
  {
    context = [(SUUIStorePageSection *)self context];
    v7 = [SUUIGalleryViewController alloc];
    resourceLoader = [context resourceLoader];
    v5 = [(SUUIGalleryViewController *)v7 initWithGalleryComponent:componentCopy artworkLoader:resourceLoader];

    [(SUUIGalleryViewController *)v5 setEmbeddedMediaDelegate:self];
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    childComponents = [pageComponent childComponents];
    v11 = [childComponents indexOfObjectIdenticalTo:componentCopy];

    v12 = [MEMORY[0x277CCAA70] indexPathForItem:v11 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v13 = [(SUUIRowSection *)self backgroundColorForIndexPath:v12];
    [(SUUIGalleryViewController *)v5 setBackgroundColor:v13];

    galleryViewControllers = self->_galleryViewControllers;
    if (!galleryViewControllers)
    {
      v15 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      v16 = self->_galleryViewControllers;
      self->_galleryViewControllers = v15;

      galleryViewControllers = self->_galleryViewControllers;
    }

    [(NSMapTable *)galleryViewControllers setObject:v5 forKey:componentCopy];
    parentViewController = [context parentViewController];
    [parentViewController addChildViewController:v5];
  }

  return v5;
}

@end