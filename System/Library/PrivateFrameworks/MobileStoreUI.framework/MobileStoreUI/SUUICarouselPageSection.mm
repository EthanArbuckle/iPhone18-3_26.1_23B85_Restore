@interface SUUICarouselPageSection
- (BOOL)_isItemEnabledAtIndexPath:(id)path;
- (CGSize)_legacyItemSize;
- (CGSize)cellSizeForIndexPath:(id)path;
- (Class)_cellClassForLockup:(id)lockup;
- (Class)_cellClassForViewElement:(id)element;
- (SUUICarouselPageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)sectionContentInset;
- (double)_actualContentWidth;
- (double)_legacyItemSpacing;
- (id)_carouselCollectionView;
- (id)_dequeueCellForLockup:(id)lockup collectionView:(id)view indexPath:(id)path;
- (id)_dequeueCellForViewElement:(id)element collectionView:(id)view indexPath:(id)path;
- (id)_missingItemLoader;
- (id)backgroundColorForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)_currentPageIndex;
- (int64_t)applyUpdateType:(int64_t)type;
- (int64_t)defaultItemPinningStyle;
- (int64_t)numberOfCells;
- (void)_addImpressionForIndex:(int64_t)index toSession:(id)session;
- (void)_cancelCycleTimer;
- (void)_fireCycleTimer;
- (void)_loadMissingItemsFromIndex:(int64_t)index withReason:(int64_t)reason;
- (void)_reloadLegacySizing;
- (void)_reloadViewElementProperties;
- (void)_scrollToItemAtIndexPath:(id)path animated:(BOOL)animated;
- (void)_startCycleTimerIfNecessary;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionView:(id)view carouselLayout:(id)layout willApplyLayoutAttributes:(id)attributes;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context;
- (void)invalidateCachedLayoutInformation;
- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers;
- (void)prefetchResourcesWithReason:(int64_t)reason;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUICarouselPageSection

- (SUUICarouselPageSection)initWithPageComponent:(id)component
{
  v6.receiver = self;
  v6.super_class = SUUICarouselPageSection;
  v3 = [(SUUIStorePageSection *)&v6 initWithPageComponent:component];
  v4 = v3;
  if (v3)
  {
    [(SUUICarouselPageSection *)v3 _reloadViewElementProperties];
  }

  return v4;
}

- (void)dealloc
{
  cycleTimer = self->_cycleTimer;
  if (cycleTimer)
  {
    dispatch_source_cancel(cycleTimer);
  }

  [(UICollectionView *)self->_carouselCollectionView setDataSource:0];
  [(UICollectionView *)self->_carouselCollectionView setDelegate:0];
  [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  v4.receiver = self;
  v4.super_class = SUUICarouselPageSection;
  [(SUUIStorePageSection *)&v4 dealloc];
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (![(SUUICarouselPageSection *)self _indexPathIsProgressIndicator:path])
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];
    [sessionCopy addItemViewElement:viewElement];

    indexPathsForVisibleItems = [(UICollectionView *)self->_carouselCollectionView indexPathsForVisibleItems];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [indexPathsForVisibleItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(indexPathsForVisibleItems);
          }

          v14 = -[NSArray objectAtIndex:](self->_modelObjects, "objectAtIndex:", [*(*(&v15 + 1) + 8 * v13) item] % -[NSArray count](self->_modelObjects, "count"));
          [sessionCopy addItemViewElement:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [indexPathsForVisibleItems countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (int64_t)applyUpdateType:(int64_t)type
{
  [(SUUICarouselPageSection *)self _reloadViewElementProperties];
  v5 = type != 2 || self->_needsReload;
  self->_needsReload = v5;
  if (v5)
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];
    updateType = [viewElement updateType];

    if ((updateType - 3) < 2)
    {
      v9 = 0;
LABEL_6:
      reloadIndexPath = self->_reloadIndexPath;
      self->_reloadIndexPath = v9;

      goto LABEL_7;
    }

    carouselCollectionView = self->_carouselCollectionView;
    if (carouselCollectionView)
    {
      [(UICollectionView *)carouselCollectionView bounds];
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      MidX = CGRectGetMidX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v9 = [(UICollectionView *)self->_carouselCollectionView indexPathForItemAtPoint:MidX, CGRectGetMidY(v20)];
      goto LABEL_6;
    }
  }

LABEL_7:
  v18.receiver = self;
  v18.super_class = SUUICarouselPageSection;
  return [(SUUIStorePageSection *)&v18 applyUpdateType:type];
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  style = [viewElement style];

  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    v10 = color;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUICarouselPageSection;
    v10 = [(SUUIStorePageSection *)&v13 backgroundColorForIndexPath:pathCopy];
  }

  v11 = v10;

  return v11;
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  v6 = [(SUUICarouselPageSection *)self _indexPathIsProgressIndicator:pathCopy];
  collectionView = [context collectionView];
  v8 = collectionView;
  if (v6)
  {
    v9 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AFF040 forIndexPath:pathCopy];

    progressIndicatorElement = self->_progressIndicatorElement;
    [context activePageWidth];
    [v9 reloadWithViewElement:progressIndicatorElement width:self->_cellLayoutContext context:?];
    [v9 setContentInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v9 setCurrentPage:{-[SUUICarouselPageSection _currentPageIndex](self, "_currentPageIndex")}];
    [v9 setNumberOfPages:{-[NSArray count](self->_modelObjects, "count")}];
  }

  else
  {
    v9 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AF9C20 forIndexPath:pathCopy];

    _carouselCollectionView = [(SUUICarouselPageSection *)self _carouselCollectionView];
    v12 = _carouselCollectionView;
    if (self->_needsReload)
    {
      [_carouselCollectionView reloadData];
      self->_needsReload = 0;
      reloadIndexPath = self->_reloadIndexPath;
      if (reloadIndexPath)
      {
        [(SUUICarouselPageSection *)self _scrollToItemAtIndexPath:reloadIndexPath animated:0];
        v14 = self->_reloadIndexPath;
        self->_reloadIndexPath = 0;
      }
    }

    [v9 setCollectionView:v12];
    [v9 setContentInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v9 setRendersWithPerspective:0];
    [v9 setRendersWithParallax:0];
    context2 = [(SUUIStorePageSection *)self context];
    [context2 activePageWidth];
    v17 = v16;

    [(SUUICarouselPageSection *)self _actualContentWidth];
    v19 = v18;
    context3 = [(SUUIStorePageSection *)self context];
    [context3 activePageWidth];
    v22 = v21 + v21;

    if (v19 <= v22)
    {
      [v12 contentInset];
      v24 = v23;
      v26 = v25;
      v27 = [(NSArray *)self->_modelObjects count];
      v28 = (v17 - v19) * 0.5;
      v29 = fmaxf(floorf(v28), 0.0);
      [v12 setAlwaysBounceHorizontal:v27 > 1];
      [v12 setContentInset:{v24, v29, v26, v29}];
    }

    [(SUUICarouselPageSection *)self _startCycleTimerIfNecessary];
  }

  return v9;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  [context activePageWidth];
  v7 = v6;

  if ([(SUUICarouselPageSection *)self _indexPathIsProgressIndicator:pathCopy])
  {
    [SUUIPageControlCollectionViewCell sizeThatFitsWidth:self->_progressIndicatorElement viewElement:self->_cellLayoutContext context:v7];
    height = v8;
  }

  else
  {
    if (self->_needsHeightCalculation)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = self->_modelObjects;
      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        v14 = 0.0;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [(objc_class *)[(SUUICarouselPageSection *)self _cellClassForViewElement:*(*(&v21 + 1) + 8 * i) sizeThatFitsWidth:"sizeThatFitsWidth:viewElement:context:" viewElement:*(*(&v21 + 1) + 8 * i) context:self->_cellLayoutContext, self->_itemSize.width];
            if (v14 < v16)
            {
              v14 = v16;
            }
          }

          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }

      else
      {
        v14 = 0.0;
      }

      self->_itemSize.height = v14;
      self->_needsHeightCalculation = 0;
      _carouselCollectionView = [(SUUICarouselPageSection *)self _carouselCollectionView];
      collectionViewLayout = [_carouselCollectionView collectionViewLayout];

      [collectionViewLayout setItemSize:{self->_itemSize.width, self->_itemSize.height}];
    }

    height = self->_itemSize.height;
  }

  v19 = v7;
  v20 = height;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (![(SUUICarouselPageSection *)self _indexPathIsProgressIndicator:pathCopy])
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];

    context = [(SUUIStorePageSection *)self context];
    activeMetricsImpressionSession = [context activeMetricsImpressionSession];
    [activeMetricsImpressionSession beginActiveImpressionForViewElement:viewElement];
  }

  v9.receiver = self;
  v9.super_class = SUUICarouselPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:pathCopy];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (![(SUUICarouselPageSection *)self _indexPathIsProgressIndicator:pathCopy])
  {
    [(SUUICarouselPageSection *)self _cancelCycleTimer];
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];

    context = [(SUUIStorePageSection *)self context];
    activeMetricsImpressionSession = [context activeMetricsImpressionSession];
    [activeMetricsImpressionSession endActiveImpressionForViewElement:viewElement];
  }

  v9.receiver = self;
  v9.super_class = SUUICarouselPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (int64_t)defaultItemPinningStyle
{
  if ([(SUUIStorePageSection *)self isTopSection])
  {
    return 3;
  }

  v4.receiver = self;
  v4.super_class = SUUICarouselPageSection;
  return [(SUUIStorePageSection *)&v4 defaultItemPinningStyle];
}

- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  contextCopy = context;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_modelObjects;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(objc_class *)[(SUUICarouselPageSection *)self _cellClassForViewElement:*(*(&v14 + 1) + 8 * v12)] requestLayoutForViewElement:*(*(&v14 + 1) + 8 * v12) width:self->_cellLayoutContext context:self->_itemSize.width];
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13.receiver = self;
  v13.super_class = SUUICarouselPageSection;
  [(SUUIStorePageSection *)&v13 entityProvider:providerCopy didInvalidateWithContext:contextCopy];
}

- (void)invalidateCachedLayoutInformation
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  if (viewElement)
  {
    self->_needsHeightCalculation = 1;
  }

  v5.receiver = self;
  v5.super_class = SUUICarouselPageSection;
  [(SUUIStorePageSection *)&v5 invalidateCachedLayoutInformation];
}

- (int64_t)numberOfCells
{
  v3 = [(NSArray *)self->_modelObjects count];
  progressIndicatorElement = self->_progressIndicatorElement;
  if (v3)
  {
    if (progressIndicatorElement)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (progressIndicatorElement)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)prefetchResourcesWithReason:(int64_t)reason
{
  v19 = *MEMORY[0x277D85DE8];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_modelObjects;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (viewElement)
        {
          [(objc_class *)[(SUUICarouselPageSection *)self _cellClassForViewElement:*(*(&v14 + 1) + 8 * i)] prefetchResourcesForViewElement:*(*(&v14 + 1) + 8 * i) reason:reason context:self->_cellLayoutContext];
        }

        else
        {
          v12 = [*(*(&v14 + 1) + 8 * i) artworkForSize:{self->_itemSize.width, self->_itemSize.height}];
          [(SUUIViewElementLayoutContext *)self->_cellLayoutContext loadImageForArtwork:v12 reason:reason];
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if (!viewElement)
  {
    [(SUUICarouselPageSection *)self _loadMissingItemsFromIndex:0 withReason:reason];
  }

  v13.receiver = self;
  v13.super_class = SUUICarouselPageSection;
  [(SUUIStorePageSection *)&v13 prefetchResourcesWithReason:reason];
}

- (UIEdgeInsets)sectionContentInset
{
  if (!self->_progressIndicatorElement || self->_progressIndicatorCellIndex != 1)
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];
    style = [viewElement style];

    v10 = [style valueForStyle:*MEMORY[0x277D1AFF0]];
    if (v10)
    {
    }

    else
    {
      v11 = [style valueForStyle:@"itml-padding"];

      if (!v11)
      {
        v20.receiver = self;
        v20.super_class = SUUICarouselPageSection;
        [(SUUIStorePageSection *)&v20 sectionContentInset];
        goto LABEL_8;
      }
    }

    [style elementPadding];
LABEL_8:
    v3 = v12;
    v4 = v13;
    v5 = v14;
    v6 = v15;

    goto LABEL_9;
  }

  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
LABEL_9:
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)willAppearInContext:(id)context
{
  v66 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFF040];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF9C20];
  v6 = self->_cellLayoutContext;
  v7 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  -[SUUIViewElementLayoutContext setContainerViewElementType:](self->_cellLayoutContext, "setContainerViewElementType:", [viewElement elementType]);
  v11 = &OBJC_IVAR___SUUIDeveloperInfoLineItemView__contentInset;
  v12 = &OBJC_IVAR___SUUIDeveloperInfoLineItemView__contentInset;
  v53 = viewElement;
  v54 = v6;
  if (viewElement)
  {
    v52 = collectionView;
    self->_itemSize = *MEMORY[0x277CBF3A8];
    itemWidth = self->_itemWidth;
    if (itemWidth > 0.0)
    {
      self->_itemSize.width = itemWidth;
    }

    self->_needsHeightCalculation = 1;
    style = [viewElement style];
    [style elementPadding];
    v16 = v15;
    v18 = v17;

    if (v16 >= v18)
    {
      v19 = v16;
    }

    else
    {
      v19 = v18;
    }

    self->_itemSpacing = v19;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v20 = self->_modelObjects;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v61;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v61 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [(objc_class *)[(SUUICarouselPageSection *)self _cellClassForViewElement:*(*(&v60 + 1) + 8 * i)] preferredSizeForViewElement:*(*(&v60 + 1) + 8 * i) context:self->_cellLayoutContext];
          v26.f64[1] = v25;
          self->_itemSize = vbslq_s8(vcgtq_f64(v26, self->_itemSize), v26, self->_itemSize);
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v22);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v27 = self->_modelObjects;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v56 objects:v64 count:16];
    collectionView = v52;
    if (v28)
    {
      v29 = v28;
      v30 = *v57;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v57 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [(objc_class *)[(SUUICarouselPageSection *)self _cellClassForViewElement:*(*(&v56 + 1) + 8 * j)] requestLayoutForViewElement:*(*(&v56 + 1) + 8 * j) width:self->_cellLayoutContext context:self->_itemSize.width];
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v29);
    }

    v12 = &OBJC_IVAR___SUUIDeveloperInfoLineItemView__contentInset;
    v11 = &OBJC_IVAR___SUUIDeveloperInfoLineItemView__contentInset;
  }

  else
  {
    [(SUUICarouselPageSection *)self _reloadLegacySizing];
  }

  [contextCopy activePageWidth];
  v33 = v32;
  _carouselCollectionView = [(SUUICarouselPageSection *)self _carouselCollectionView];
  [_carouselCollectionView setSemanticContentAttribute:storeSemanticContentAttribute()];
  v35 = (self + v11[954]);
  [_carouselCollectionView setFrame:{0.0, 0.0, v33, v35[1]}];
  collectionViewLayout = [_carouselCollectionView collectionViewLayout];
  [collectionViewLayout setItemSize:{*v35, v35[1]}];
  v37 = v12[948];
  v38 = [*(&self->super.super.isa + v37) count];
  if (v38)
  {
    v39 = v38;
    [_carouselCollectionView contentInset];
    v41 = v40;
    v43 = v42;
    [(SUUICarouselPageSection *)self _actualContentWidth];
    v45 = v44;
    if (v44 <= v33 + v33)
    {
      v46 = 0;
      self->_cellCount = [*(&self->super.super.isa + v37) count];
      v51 = (v33 - v45) * 0.5;
      v47 = fmaxf(floorf(v51), 15.0);
      v48 = v39 > 1;
    }

    else
    {
      self->_cellCount = 100000;
      v46 = [MEMORY[0x277CCAA70] indexPathForItem:20000 / v39 * v39 inSection:0];
      v47 = 0.0;
      v48 = 1;
    }

    v49 = v54;
    [_carouselCollectionView setAlwaysBounceHorizontal:v48];
    [_carouselCollectionView setContentInset:{v41, v47, v43, v47}];
    v50 = v53;
    if (v46)
    {
      if (self->_needsReload)
      {
        if (!self->_reloadIndexPath)
        {
          objc_storeStrong(&self->_reloadIndexPath, v46);
        }
      }

      else
      {
        [(SUUICarouselPageSection *)self _scrollToItemAtIndexPath:v46 animated:0];
      }
    }
  }

  else
  {
    self->_cellCount = 0;
    *v35 = v33;
    v35[1] = 20.0;
    v50 = v53;
    v49 = v54;
  }

  v55.receiver = self;
  v55.super_class = SUUICarouselPageSection;
  [(SUUIStorePageSection *)&v55 willAppearInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = [(NSArray *)self->_modelObjects count];
  if (v8 >= 1)
  {
    v9 = v8;
    v35 = height;
    _carouselCollectionView = [(SUUICarouselPageSection *)self _carouselCollectionView];
    [_carouselCollectionView contentInset];
    v12 = v11;
    v14 = v13;
    [_carouselCollectionView bounds];
    x = v43.origin.x;
    y = v43.origin.y;
    v17 = v43.size.width;
    v18 = v43.size.height;
    MidX = CGRectGetMidX(v43);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = v17;
    v44.size.height = v18;
    v20 = [_carouselCollectionView indexPathForItemAtPoint:{MidX, CGRectGetMidY(v44)}];
    item = [v20 item];

    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];

    if (!viewElement)
    {
      [(SUUICarouselPageSection *)self _reloadLegacySizing];
      [(SUUICarouselPageSection *)self prefetchResourcesWithReason:0];
    }

    v24 = item % v9;
    context = [(SUUIStorePageSection *)self context];
    [context activePageWidth];
    v27 = v26;

    [(SUUICarouselPageSection *)self _actualContentWidth];
    v29 = v28;
    if (v28 <= v27 + v27)
    {
      self->_cellCount = [(NSArray *)self->_modelObjects count];
      v32 = (v27 - v29) * 0.5;
      v30 = fmaxf(floorf(v32), 0.0);
      v31 = v9 != 1;
    }

    else
    {
      self->_cellCount = 100000;
      v24 += 0x4E20uLL / v9 * v9;
      v30 = 0.0;
      v31 = 1;
    }

    [_carouselCollectionView setAlwaysBounceHorizontal:v31];
    [_carouselCollectionView setContentInset:{v12, v30, v14, v30}];
    v33 = MEMORY[0x277D75D18];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __74__SUUICarouselPageSection_willTransitionToSize_withTransitionCoordinator___block_invoke;
    v38[3] = &unk_2798F81C8;
    v41 = v27;
    v39 = _carouselCollectionView;
    selfCopy = self;
    v42 = v24;
    v34 = _carouselCollectionView;
    [v33 performWithoutAnimation:v38];
    [(SUUICarouselPageSection *)self _cancelCycleTimer];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __74__SUUICarouselPageSection_willTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v37[3] = &unk_2798F5A88;
    v37[4] = self;
    [coordinatorCopy animateAlongsideTransition:0 completion:v37];

    height = v35;
  }

  v36.receiver = self;
  v36.super_class = SUUICarouselPageSection;
  [(SUUIStorePageSection *)&v36 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

void __74__SUUICarouselPageSection_willTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) frame];
  [*(a1 + 32) setFrame:?];
  v2 = [*(a1 + 32) collectionViewLayout];
  [v2 setItemSize:{*(*(a1 + 40) + 120), *(*(a1 + 40) + 128)}];
  [v2 setMinimumInteritemSpacing:*(*(a1 + 40) + 136)];
  [v2 setMinimumLineSpacing:*(*(a1 + 40) + 136)];
  [v2 invalidateLayout];
  [*(a1 + 32) reloadData];
  [*(a1 + 32) layoutIfNeeded];
  v3 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 56) inSection:0];
  [*(a1 + 40) _scrollToItemAtIndexPath:v3 animated:0];
  v4 = *(a1 + 32);
  v6[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v4 reloadItemsAtIndexPaths:v5];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  imageCopy = image;
  [(UICollectionView *)self->_carouselCollectionView indexPathsForVisibleItems];
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

      v13 = [(UICollectionView *)self->_carouselCollectionView cellForItemAtIndexPath:*(*(&v15 + 1) + 8 * v12), v15];
      v14 = [v13 setImage:imageCopy forArtworkRequest:requestCopy context:self->_cellLayoutContext];

      if (v14)
      {
        break;
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

- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    [pageComponent updateWithMissingItems:itemsCopy];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  item = [pathCopy item];
  v9 = item % [(NSArray *)self->_modelObjects count];
  v10 = [(NSArray *)self->_modelObjects objectAtIndex:v9];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  if (viewElement)
  {
    v13 = [(SUUICarouselPageSection *)self _dequeueCellForViewElement:v10 collectionView:viewCopy indexPath:pathCopy];

    [v13 reloadWithViewElement:v10 width:self->_cellLayoutContext context:self->_itemSize.width];
  }

  else
  {
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:0x286AF3680 forIndexPath:pathCopy];

    [v13 reloadWithCarouselItem:v10 size:self->_cellLayoutContext context:{self->_itemSize.width, self->_itemSize.height}];
    context = [(SUUIStorePageSection *)self context];
    metricsController = [context metricsController];
    activeImpressionsSession = [metricsController activeImpressionsSession];

    if (activeImpressionsSession)
    {
      [(SUUICarouselPageSection *)self _addImpressionForIndex:v9 toSession:activeImpressionsSession];
    }

    [(SUUICarouselPageSection *)self _loadMissingItemsFromIndex:v9 withReason:1];
  }

  return v13;
}

- (void)collectionView:(id)view carouselLayout:(id)layout willApplyLayoutAttributes:(id)attributes
{
  viewCopy = view;
  attributesCopy = attributes;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  if (!viewElement || (modelObjects = self->_modelObjects, [attributesCopy indexPath], v11 = objc_claimAutoreleasedReturnValue(), -[NSArray objectAtIndex:](modelObjects, "objectAtIndex:", objc_msgSend(v11, "item") % -[NSArray count](self->_modelObjects, "count")), v12 = objc_claimAutoreleasedReturnValue(), v11, objc_msgSend(v12, "style"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "ikBackgroundColor"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "color"), backgroundColor = objc_claimAutoreleasedReturnValue(), v14, v13, v12, !backgroundColor))
  {
    backgroundColor = [viewCopy backgroundColor];
  }

  [attributesCopy setBackgroundColor:backgroundColor];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  item = [pathCopy item];
  v9 = item % [(NSArray *)self->_modelObjects count];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  v11 = [(NSArray *)self->_modelObjects objectAtIndex:v9];
  if (viewElement)
  {
    [v11 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

  else
  {
    link = [v11 link];
    v13 = [(SUUIStorePageSection *)self clickEventWithLink:link elementName:*MEMORY[0x277D6A4D8] index:v9];
    if (v13)
    {
      context = [(SUUIStorePageSection *)self context];
      metricsController = [context metricsController];
      [metricsController recordEvent:v13];
    }

    [(SUUIStorePageSection *)self showPageWithLink:link];
  }

  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = -[NSArray objectAtIndex:](self->_modelObjects, "objectAtIndex:", [path item] % -[NSArray count](self->_modelObjects, "count"));
  context = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];
  [activeMetricsImpressionSession beginActiveImpressionForViewElement:v8];

  [v8 dispatchEventOfType:9 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(NSArray *)self->_modelObjects count])
  {
    v6 = -[NSArray objectAtIndex:](self->_modelObjects, "objectAtIndex:", [pathCopy item] % -[NSArray count](self->_modelObjects, "count"));
    context = [(SUUIStorePageSection *)self context];
    activeMetricsImpressionSession = [context activeMetricsImpressionSession];
    [activeMetricsImpressionSession endActiveImpressionForViewElement:v6];

    [v6 dispatchEventOfType:10 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (self->_progressIndicatorElement)
  {
    context = [(SUUIStorePageSection *)self context];
    collectionView = [context collectionView];
    v6 = [MEMORY[0x277CCAA70] indexPathForItem:self->_progressIndicatorCellIndex inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v7 = [collectionView cellForItemAtIndexPath:v6];

    [v7 setCurrentPage:{-[SUUICarouselPageSection _currentPageIndex](self, "_currentPageIndex")}];
  }

  [(SUUICarouselPageSection *)self _startCycleTimerIfNecessary];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  if (self->_progressIndicatorElement)
  {
    context = [(SUUIStorePageSection *)self context];
    collectionView = [context collectionView];
    v6 = [MEMORY[0x277CCAA70] indexPathForItem:self->_progressIndicatorCellIndex inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v7 = [collectionView cellForItemAtIndexPath:v6];

    [v7 setCurrentPage:{-[SUUICarouselPageSection _currentPageIndex](self, "_currentPageIndex")}];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  cycleTimer = self->_cycleTimer;
  if (cycleTimer)
  {
    dispatch_source_cancel(cycleTimer);
    v5 = self->_cycleTimer;
    self->_cycleTimer = 0;
  }
}

- (double)_actualContentWidth
{
  v3 = [(NSArray *)self->_modelObjects count];
  result = self->_itemSize.width * v3;
  if (v3 >= 2)
  {
    return result + (v3 - 1) * self->_itemSpacing;
  }

  return result;
}

- (void)_addImpressionForIndex:(int64_t)index toSession:(id)session
{
  modelObjects = self->_modelObjects;
  sessionCopy = session;
  v7 = [(NSArray *)modelObjects objectAtIndex:index];
  [sessionCopy addItemIdentifier:{objc_msgSend(v7, "carouselItemIdentifier")}];
}

- (void)_cancelCycleTimer
{
  cycleTimer = self->_cycleTimer;
  if (cycleTimer)
  {
    dispatch_source_cancel(cycleTimer);
    v4 = self->_cycleTimer;
    self->_cycleTimer = 0;
  }
}

- (id)_carouselCollectionView
{
  carouselCollectionView = self->_carouselCollectionView;
  if (!carouselCollectionView)
  {
    v4 = objc_alloc_init(SUUICarouselCollectionViewLayout);
    [(UICollectionViewFlowLayout *)v4 setMinimumInteritemSpacing:self->_itemSpacing];
    [(UICollectionViewFlowLayout *)v4 setMinimumLineSpacing:self->_itemSpacing];
    [(UICollectionViewFlowLayout *)v4 setScrollDirection:1];
    v5 = objc_alloc(MEMORY[0x277D752A0]);
    v6 = [v5 initWithFrame:v4 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = self->_carouselCollectionView;
    self->_carouselCollectionView = v6;

    [(UICollectionView *)self->_carouselCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFFD60];
    [(UICollectionView *)self->_carouselCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF7760];
    [(UICollectionView *)self->_carouselCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFE180];
    [(UICollectionView *)self->_carouselCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF3680];
    [(UICollectionView *)self->_carouselCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFFCE0];
    [(UICollectionView *)self->_carouselCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF7FC0];
    [(UICollectionView *)self->_carouselCollectionView setDataSource:self];
    [(UICollectionView *)self->_carouselCollectionView setDecelerationRate:0.7];
    [(UICollectionView *)self->_carouselCollectionView setDelegate:self];
    [(UICollectionView *)self->_carouselCollectionView setScrollsToTop:0];
    [(UICollectionView *)self->_carouselCollectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)self->_carouselCollectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)self->_carouselCollectionView setSemanticContentAttribute:storeSemanticContentAttribute()];
    [(UICollectionView *)self->_carouselCollectionView setPrefetchingEnabled:0];
    v8 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v9 = self->_carouselCollectionView;
    v10 = [(SUUICarouselPageSection *)self backgroundColorForIndexPath:v8];
    [(UICollectionView *)v9 setBackgroundColor:v10];

    carouselCollectionView = self->_carouselCollectionView;
  }

  return carouselCollectionView;
}

- (Class)_cellClassForLockup:(id)lockup
{
  if ([lockup lockupViewType] <= 8)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (Class)_cellClassForViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  v6 = 0;
  if (elementType > 65)
  {
    if (elementType == 66)
    {
      v7 = [(SUUICarouselPageSection *)self _cellClassForLockup:elementCopy];
      goto LABEL_9;
    }

    if (elementType != 152)
    {
      goto LABEL_10;
    }

LABEL_7:
    v7 = objc_opt_class();
LABEL_9:
    v6 = v7;
    goto LABEL_10;
  }

  if (elementType == 14 || elementType == 49)
  {
    goto LABEL_7;
  }

LABEL_10:

  return v6;
}

- (int64_t)_currentPageIndex
{
  _carouselCollectionView = [(SUUICarouselPageSection *)self _carouselCollectionView];
  [_carouselCollectionView bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = [_carouselCollectionView indexPathForItemAtPoint:{MidX, CGRectGetMidY(v14)}];
  item = [v9 item];
  v11 = item % [(NSArray *)self->_modelObjects count];

  return v11;
}

- (id)_dequeueCellForLockup:(id)lockup collectionView:(id)view indexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  lockupViewType = [lockup lockupViewType];
  if (lockupViewType > 8)
  {
    v10 = 0;
  }

  else
  {
    v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:*off_2798F96B0[lockupViewType] forIndexPath:pathCopy];
  }

  return v10;
}

- (id)_dequeueCellForViewElement:(id)element collectionView:(id)view indexPath:(id)path
{
  elementCopy = element;
  viewCopy = view;
  pathCopy = path;
  elementType = [elementCopy elementType];
  v12 = 0;
  if (elementType > 48)
  {
    if (elementType != 49)
    {
      if (elementType == 66)
      {
        v14 = [(SUUICarouselPageSection *)self _dequeueCellForLockup:elementCopy collectionView:viewCopy indexPath:pathCopy];
        goto LABEL_11;
      }

      if (elementType != 152)
      {
        goto LABEL_12;
      }
    }

    v13 = 0x286AF3680;
LABEL_9:
    v14 = [viewCopy dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:pathCopy];
LABEL_11:
    v12 = v14;
    goto LABEL_12;
  }

  if (elementType != 14)
  {
    if (elementType != 28)
    {
      goto LABEL_12;
    }

    v13 = 0x286AF7760;
    goto LABEL_9;
  }

  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:0x286AFFD60 forIndexPath:pathCopy];
  [v12 setArtworkBoundingSize:0];
  [v12 setContentInset:{0.0, 15.0, 0.0, 15.0}];
LABEL_12:

  return v12;
}

- (void)_fireCycleTimer
{
  _carouselCollectionView = [(SUUICarouselPageSection *)self _carouselCollectionView];
  [_carouselCollectionView bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = [_carouselCollectionView indexPathForItemAtPoint:{MidX, CGRectGetMidY(v14)}];
  item = [v8 item];

  v10 = [MEMORY[0x277CCAA70] indexPathForItem:item + 1 inSection:0];
  [(SUUICarouselPageSection *)self _scrollToItemAtIndexPath:v10 animated:1];
}

- (BOOL)_isItemEnabledAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  if (viewElement)
  {
    v7 = -[NSArray objectAtIndex:](self->_modelObjects, "objectAtIndex:", [pathCopy item] % -[NSArray count](self->_modelObjects, "count"));
    isEnabled = [v7 isEnabled];
  }

  else
  {
    isEnabled = 1;
  }

  return isEnabled;
}

- (CGSize)_legacyItemSize
{
  context = [(SUUIStorePageSection *)self context];
  [context activePageWidth];
  v4 = v3;
  clientContext = [context clientContext];
  v6 = SUUIUserInterfaceIdiom(clientContext);

  if (v6 == 1)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v9 = v8;

    if (v4 >= v9)
    {
      *&v10 = 260.0;
      *&v11 = 530.0;
      goto LABEL_12;
    }

    if (v4 >= v9 * 0.666666687)
    {
      *&v10 = 195.0;
      *&v11 = 398.0;
      goto LABEL_12;
    }

    *&v10 = 130.0;
  }

  else
  {
    *&v10 = 130.0;
    if (v4 >= 736.0)
    {
      *&v11 = 265.0;
      goto LABEL_12;
    }

    *&v11 = 375.0;
    if (v4 >= 375.0)
    {
      *&v10 = 152.0;
      goto LABEL_12;
    }
  }

  *&v11 = 320.0;
LABEL_12:

  v12 = *&v11;
  v13 = *&v10;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)_legacyItemSpacing
{
  context = [(SUUIStorePageSection *)self context];
  [context activePageWidth];
  v4 = v3;
  clientContext = [context clientContext];
  v6 = SUUIUserInterfaceIdiom(clientContext);

  if (v6 == 1)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v9 = v8;

    v10 = v9 * 0.5;
    v11 = 5.0;
  }

  else
  {
    v11 = 3.0;
    v10 = 736.0;
  }

  if (v4 >= v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (void)_loadMissingItemsFromIndex:(int64_t)index withReason:(int64_t)reason
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  if ([pageComponent isMissingItemData])
  {
    _missingItemLoader = [(SUUICarouselPageSection *)self _missingItemLoader];
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

- (void)_reloadLegacySizing
{
  p_itemSize = &self->_itemSize;
  [(SUUICarouselPageSection *)self _legacyItemSize];
  p_itemSize->width = v4;
  p_itemSize->height = v5;
  [(SUUICarouselPageSection *)self _legacyItemSpacing];
  self->_itemSpacing = v6;
  v7 = 1.0;
  if (v6 <= 0.00000011920929)
  {
    v7 = 0.0;
  }

  cellLayoutContext = self->_cellLayoutContext;
  v9 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{0.0, v7, 1.0, v7}];
  [(SUUIViewElementLayoutContext *)cellLayoutContext setAggregateValue:v9 forKey:0x286AF3660];
}

- (void)_reloadViewElementProperties
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  style = [viewElement style];
  itemWidth = [style itemWidth];

  if (itemWidth)
  {
    [itemWidth floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  self->_itemWidth = v7;
  if (viewElement)
  {
    flattenedChildren = [viewElement flattenedChildren];
    modelObjects = self->_modelObjects;
    self->_modelObjects = flattenedChildren;

    progressIndicatorElement = [viewElement progressIndicatorElement];
  }

  else
  {
    carouselItems = [pageComponent carouselItems];
    v12 = self->_modelObjects;
    self->_modelObjects = carouselItems;

    progressIndicatorElement = 0;
  }

  progressIndicatorElement = self->_progressIndicatorElement;
  self->_progressIndicatorElement = progressIndicatorElement;

  style2 = [(SUUIProgressIndicatorViewElement *)self->_progressIndicatorElement style];
  v15 = [style2 elementPosition] != 2;

  self->_progressIndicatorCellIndex = v15;
}

- (void)_startCycleTimerIfNecessary
{
  if (!self->_cycleTimer)
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    [pageComponent cycleInterval];
    v5 = v4;

    if (v5 > 2.22044605e-16)
    {
      [(SUUICarouselPageSection *)self _actualContentWidth];
      v7 = v6;
      context = [(SUUIStorePageSection *)self context];
      [context activePageWidth];
      v10 = v9 + v9;

      if (v7 > v10)
      {
        v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
        cycleTimer = self->_cycleTimer;
        self->_cycleTimer = v11;

        v13 = v5 * 1000000000.0;
        v14 = self->_cycleTimer;
        v15 = dispatch_time(0, v13);
        dispatch_source_set_timer(v14, v15, v13, 0);
        objc_initWeak(&location, self);
        v16 = self->_cycleTimer;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __54__SUUICarouselPageSection__startCycleTimerIfNecessary__block_invoke;
        v17[3] = &unk_2798F67A0;
        objc_copyWeak(&v18, &location);
        dispatch_source_set_event_handler(v16, v17);
        dispatch_resume(self->_cycleTimer);
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __54__SUUICarouselPageSection__startCycleTimerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fireCycleTimer];
}

- (void)_scrollToItemAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  _carouselCollectionView = [(SUUICarouselPageSection *)self _carouselCollectionView];
  v7 = [_carouselCollectionView numberOfItemsInSection:0];

  if ([pathCopy row] < v7)
  {
    _carouselCollectionView2 = [(SUUICarouselPageSection *)self _carouselCollectionView];
    [_carouselCollectionView2 scrollToItemAtIndexPath:pathCopy atScrollPosition:16 animated:animatedCopy];
  }
}

@end