@interface SUUIShelfPageSectionConfiguration
- (BOOL)prefetchResourcesForShelfItemViewElement:(id)element reason:(int64_t)reason;
- (CGSize)cellSizeForShelfViewElement:(id)element indexPath:(id)path numberOfShelfItems:(int64_t)items;
- (Class)_cellClassForEffectiveShelfItemViewElement:(id)element;
- (Class)_lockupCellClassWithLockup:(id)lockup;
- (SUUIShelfPageSectionConfigurationDataSource)dataSource;
- (UICollectionView)shelfCollectionView;
- (UIEdgeInsets)sectionContentInsetAdjustedFromValue:(UIEdgeInsets)value forShelfViewElement:(id)element withSectionIndex:(int64_t)index;
- (double)_columnSpacingForShelfItemViewElements:(id)elements;
- (double)_perspectiveHeightForContentSize:(double)size;
- (id)_dequeueCellForLockup:(id)lockup collectionView:(id)view indexPath:(id)path;
- (id)_reloadShelfLayoutDataWithNumberOfShelfItems:(int64_t)items;
- (id)_shelfItemViewElementAtIndex:(int64_t)index;
- (id)_styledShelfCollectionViewLayoutForExistingLayout:(id)layout;
- (id)actualIndexPathOfShelfItemClosestToVisibleBoundsForNormalizedIndexPath:(id)path numberOfShelfItems:(unint64_t)items;
- (id)backgroundColorForShelfViewElement:(id)element;
- (id)cellForShelfItemViewElement:(id)element indexPath:(id)path;
- (id)cellForShelfViewElement:(id)element indexPath:(id)path;
- (id)normalizedShelfItemIndexPathFromActualIndexPath:(id)path numberOfShelfItems:(unint64_t)items;
- (int64_t)lockupTypeForLockup:(id)lockup;
- (void)_updateShelfLayoutDataContentInset;
- (void)registerReusableClassesForCollectionView:(id)view;
- (void)reloadLockupTypeForShelfViewElement:(id)element;
- (void)reloadShelfLayoutDataForShelfViewElement:(id)element withShelfItemViewElements:(id)elements requestCellLayouts:(BOOL)layouts numberOfShelfItems:(int64_t)items;
- (void)requestCellLayoutForViewElement:(id)element withColumnWidth:(double)width;
- (void)setShelfCollectionViewBackgroundColor:(id)color;
- (void)setShelfCollectionViewDataSource:(id)source;
- (void)setShelfCollectionViewDelegate:(id)delegate;
- (void)setShelfViewElementStyle:(id)style;
- (void)shelfItemsCollectionView:(id)view willApplyLayoutAttributes:(id)attributes forViewElement:(id)element withItemIndex:(int64_t)index;
@end

@implementation SUUIShelfPageSectionConfiguration

- (UICollectionView)shelfCollectionView
{
  shelfCollectionView = self->_shelfCollectionView;
  if (!shelfCollectionView)
  {
    v4 = [(SUUIShelfPageSectionConfiguration *)self _styledShelfCollectionViewLayoutForExistingLayout:0];
    v5 = objc_alloc(MEMORY[0x277D752A0]);
    v6 = [v5 initWithFrame:v4 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = self->_shelfCollectionView;
    self->_shelfCollectionView = v6;

    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFFD60];
    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF7760];
    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFDBE0];
    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFE180];
    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF3680];
    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFFCE0];
    [(UICollectionView *)self->_shelfCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF7FC0];
    [(UICollectionView *)self->_shelfCollectionView setAlwaysBounceHorizontal:1];
    [(UICollectionView *)self->_shelfCollectionView setBackgroundColor:self->_shelfCollectionViewBackgroundColor];
    -[UICollectionView setClipsToBounds:](self->_shelfCollectionView, "setClipsToBounds:", [objc_opt_class() collectionViewCanClipToBounds]);
    [(UICollectionView *)self->_shelfCollectionView setDataSource:self->_shelfCollectionViewDataSource];
    v8 = self->_shelfCollectionView;
    [objc_opt_class() snapToBoundariesDecelerationRate];
    [(UICollectionView *)v8 setDecelerationRate:?];
    [(UICollectionView *)self->_shelfCollectionView setDelegate:self->_shelfCollectionViewDelegate];
    [(UICollectionView *)self->_shelfCollectionView setScrollsToTop:0];
    [(UICollectionView *)self->_shelfCollectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)self->_shelfCollectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)self->_shelfCollectionView setPrefetchingEnabled:0];
    if (self->_rendersWithPerspective)
    {
      [(UICollectionView *)self->_shelfCollectionView setClipsToBounds:0];
    }

    shelfCollectionView = self->_shelfCollectionView;
  }

  return shelfCollectionView;
}

- (void)setShelfCollectionViewBackgroundColor:(id)color
{
  colorCopy = color;
  p_shelfCollectionViewBackgroundColor = &self->_shelfCollectionViewBackgroundColor;
  if (self->_shelfCollectionViewBackgroundColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(p_shelfCollectionViewBackgroundColor, color);
    p_shelfCollectionViewBackgroundColor = [(UICollectionView *)self->_shelfCollectionView setBackgroundColor:v7];
  }

  MEMORY[0x2821F9730](p_shelfCollectionViewBackgroundColor);
}

- (void)setShelfCollectionViewDataSource:(id)source
{
  if (self->_shelfCollectionViewDataSource != source)
  {
    self->_shelfCollectionViewDataSource = source;
    [(UICollectionView *)self->_shelfCollectionView setDataSource:?];
  }
}

- (void)setShelfCollectionViewDelegate:(id)delegate
{
  if (self->_shelfCollectionViewDelegate != delegate)
  {
    self->_shelfCollectionViewDelegate = delegate;
    [(UICollectionView *)self->_shelfCollectionView setDelegate:?];
  }
}

- (void)setShelfViewElementStyle:(id)style
{
  styleCopy = style;
  if (self->_shelfViewElementStyle != styleCopy)
  {
    objc_storeStrong(&self->_shelfViewElementStyle, style);
    v5 = [(IKViewElementStyle *)self->_shelfViewElementStyle valueForStyle:@"itml-shelf-zooming-layout-peeking-item-width"];
    [v5 floatValue];
    v7 = v6;

    v8 = [(IKViewElementStyle *)self->_shelfViewElementStyle valueForStyle:@"itml-shelf-zooming-layout-inter-item-spacing"];
    [v8 floatValue];
    self->_zoomingShelfLayoutInterItemSpacing = v9;

    v10 = [(IKViewElementStyle *)self->_shelfViewElementStyle valueForStyle:@"itml-shelf-zooming-layout-item-width"];
    [v10 floatValue];
    self->_zoomingShelfLayoutItemWidth = v11;

    v12 = [(IKViewElementStyle *)self->_shelfViewElementStyle valueForStyle:@"itml-shelf-zooming-layout-zoomed-item-width"];
    [v12 floatValue];
    self->_zoomingShelfLayoutScaledItemWidth = v13;

    self->_zoomingShelfLayoutFocusedItemHorizontalCenterOffset = self->_zoomingShelfLayoutInterItemSpacing + v7 + self->_zoomingShelfLayoutScaledItemWidth * 0.5;
    v14 = [(IKViewElementStyle *)self->_shelfViewElementStyle valueForStyle:@"itml-shelf-layout"];
    self->_wantsZoomingShelfLayout = [v14 isEqualToString:@"zooming"];

    [(SUUIShelfPageSectionConfiguration *)self _updateShelfLayoutDataContentInset];
    shelfCollectionView = self->_shelfCollectionView;
    if (shelfCollectionView)
    {
      collectionViewLayout = [(UICollectionView *)shelfCollectionView collectionViewLayout];
      v17 = [(SUUIShelfPageSectionConfiguration *)self _styledShelfCollectionViewLayoutForExistingLayout:collectionViewLayout];
      if (collectionViewLayout != v17)
      {
        [(UICollectionView *)self->_shelfCollectionView setCollectionViewLayout:v17];
        v18 = self->_shelfCollectionView;
        [objc_opt_class() snapToBoundariesDecelerationRate];
        [(UICollectionView *)v18 setDecelerationRate:?];
        -[UICollectionView setClipsToBounds:](self->_shelfCollectionView, "setClipsToBounds:", [objc_opt_class() collectionViewCanClipToBounds]);
      }
    }
  }
}

- (id)actualIndexPathOfShelfItemClosestToVisibleBoundsForNormalizedIndexPath:(id)path numberOfShelfItems:(unint64_t)items
{
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ([(SUUIShelfPageSectionConfiguration *)self numberOfIterations]== 1)
  {
    v7 = pathCopy;
  }

  else
  {
    item = [pathCopy item];
    shelfCollectionView = [(SUUIShelfPageSectionConfiguration *)self shelfCollectionView];
    [shelfCollectionView indexPathsForVisibleItems];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v30 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
LABEL_5:
      v14 = 0;
      while (1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        if ([v15 item] % items == item)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v12)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v7 = v15;

      if (v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_11:
    }

    if ([v10 count])
    {
      v16 = [v10 sortedArrayUsingComparator:&__block_literal_global_23];

      firstObject = [v16 firstObject];
      lastObject = [v16 lastObject];
      v19 = firstObject;
      if (firstObject != lastObject)
      {
        v20 = [firstObject item] % items;
        v21 = [lastObject item] % items;
        v22 = v20 - item;
        if ((v20 - item) < 0)
        {
          v22 = item - v20;
        }

        v23 = v21 - item;
        if (v23 < 0)
        {
          v23 = -v23;
        }

        if (v22 >= v23)
        {
          v19 = lastObject;
        }

        else
        {
          v19 = firstObject;
        }
      }

      v24 = v19;
      item2 = [v24 item];
      v7 = [MEMORY[0x277CCAA70] indexPathForItem:item + item2 / items * items inSection:{objc_msgSend(pathCopy, "section")}];

      v10 = v16;
    }

    else
    {
      v7 = pathCopy;
    }

LABEL_24:
  }

  return v7;
}

uint64_t __127__SUUIShelfPageSectionConfiguration_actualIndexPathOfShelfItemClosestToVisibleBoundsForNormalizedIndexPath_numberOfShelfItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 item];
  v6 = [v4 item];

  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (id)backgroundColorForShelfViewElement:(id)element
{
  style = [element style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  return color;
}

- (id)cellForShelfViewElement:(id)element indexPath:(id)path
{
  pageSectionContext = self->_pageSectionContext;
  pathCopy = path;
  collectionView = [(SUUIStorePageSectionContext *)pageSectionContext collectionView];
  v8 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AF9C20 forIndexPath:pathCopy];

  shelfCollectionView = [(SUUIShelfPageSectionConfiguration *)self shelfCollectionView];
  [v8 setCollectionView:shelfCollectionView];
  if (self->_needsShelfCollectionViewReload)
  {
    [shelfCollectionView reloadData];
    self->_needsShelfCollectionViewReload = 0;
  }

  if (self->_rendersWithPerspective)
  {
    [(SUUIShelfLayoutData *)self->_shelfLayoutData totalContentSize];
    [(SUUIShelfPageSectionConfiguration *)self _perspectiveHeightForContentSize:v10];
    [v8 setContentInset:?];
    [v8 setRendersWithPerspective:1];
  }

  else
  {
    [v8 setContentInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v8 setRendersWithPerspective:0];
    [v8 setRendersWithParallax:0];
  }

  return v8;
}

- (CGSize)cellSizeForShelfViewElement:(id)element indexPath:(id)path numberOfShelfItems:(int64_t)items
{
  [(SUUIStorePageSectionContext *)self->_pageSectionContext activePageWidth:element];
  v8 = v7;
  if (self->_needsShelfCollectionViewLayout)
  {
    v9 = [(SUUIShelfPageSectionConfiguration *)self _reloadShelfLayoutDataWithNumberOfShelfItems:items];
    self->_needsShelfCollectionViewLayout = 0;
  }

  [(SUUIShelfLayoutData *)self->_shelfLayoutData totalContentSize];
  v11 = v10;
  if (self->_rendersWithPerspective)
  {
    [(SUUIShelfPageSectionConfiguration *)self _perspectiveHeightForContentSize:v10];
    v11 = v11 + v12;
  }

  if (self->_wantsZoomingShelfLayout)
  {
    v11 = v11 + self->_zoomingShelfLayoutScaledItemWidth - self->_zoomingShelfLayoutItemWidth;
  }

  v13 = v8;
  v14 = v11;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)cellForShelfItemViewElement:(id)element indexPath:(id)path
{
  elementCopy = element;
  pathCopy = path;
  shelfCollectionView = [(SUUIShelfPageSectionConfiguration *)self shelfCollectionView];
  v9 = [(SUUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:elementCopy];
  elementType = [v9 elementType];
  v11 = 0;
  if (elementType <= 48)
  {
    if (elementType == 14)
    {
      if ([elementCopy cardType] != 3)
      {
        v11 = [shelfCollectionView dequeueReusableCellWithReuseIdentifier:0x286AFFD60 forIndexPath:pathCopy];
        [v11 setArtworkBoundingSize:0];
        goto LABEL_14;
      }

      v12 = 0x286AFDBE0;
    }

    else
    {
      if (elementType != 28)
      {
        goto LABEL_14;
      }

      v12 = 0x286AF7760;
    }

    v11 = [shelfCollectionView dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:pathCopy];
    goto LABEL_14;
  }

  if (elementType == 49)
  {
LABEL_5:
    v11 = [shelfCollectionView dequeueReusableCellWithReuseIdentifier:0x286AF3680 forIndexPath:pathCopy];
    [v11 setShowsReflectionImage:0];
    goto LABEL_14;
  }

  if (elementType != 66)
  {
    if (elementType != 152)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  shelfCollectionView2 = [(SUUIShelfPageSectionConfiguration *)self shelfCollectionView];
  v11 = [(SUUIShelfPageSectionConfiguration *)self _dequeueCellForLockup:v9 collectionView:shelfCollectionView2 indexPath:pathCopy];

LABEL_14:
  -[SUUIShelfLayoutData sizeForItemAtIndex:](self->_shelfLayoutData, "sizeForItemAtIndex:", [pathCopy item]);
  v15 = v14;
  style = [v9 style];
  visibility = [style visibility];
  v18 = [visibility isEqualToString:@"hidden"];

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v9;
  }

  [v11 reloadWithViewElement:v19 width:self->_cellLayoutContext context:v15];
  if (self->_rendersWithPerspective && [v11 conformsToProtocol:&unk_286C2FC68])
  {
    pageSectionContext = self->_pageSectionContext;
    v21 = v11;
    parentViewController = [(SUUIStorePageSectionContext *)pageSectionContext parentViewController];
    view = [parentViewController view];

    [v21 setPerspectiveTargetView:view];
    [view bounds];
    [v21 setVanishingPoint:{CGRectGetMidX(v26), -800.0}];
  }

  return v11;
}

- (int64_t)lockupTypeForLockup:(id)lockup
{
  result = self->_lockupType;
  if (result == -1)
  {
    return [lockup lockupViewType];
  }

  return result;
}

- (id)normalizedShelfItemIndexPathFromActualIndexPath:(id)path numberOfShelfItems:(unint64_t)items
{
  pathCopy = path;
  if ([(SUUIShelfPageSectionConfiguration *)self numberOfIterations]== 1)
  {
    v7 = pathCopy;
  }

  else
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(pathCopy inSection:{"item") % items, objc_msgSend(pathCopy, "section")}];
  }

  v8 = v7;

  return v8;
}

- (BOOL)prefetchResourcesForShelfItemViewElement:(id)element reason:(int64_t)reason
{
  v6 = [(SUUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:element];
  LOBYTE(reason) = [(objc_class *)[(SUUIShelfPageSectionConfiguration *)self _cellClassForEffectiveShelfItemViewElement:v6] prefetchResourcesForViewElement:v6 reason:reason context:self->_cellLayoutContext];

  return reason;
}

- (void)registerReusableClassesForCollectionView:(id)view
{
  viewCopy = view;
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF9C20];
}

- (void)reloadLockupTypeForShelfViewElement:(id)element
{
  style = [element style];
  lockupType = [style lockupType];

  v5 = lockupType;
  if (lockupType)
  {
    v6 = SUUILockupViewTypeForString(lockupType);
    v5 = lockupType;
  }

  else
  {
    v6 = -1;
  }

  self->_lockupType = v6;

  MEMORY[0x2821F96F8](v6, v5);
}

- (void)reloadShelfLayoutDataForShelfViewElement:(id)element withShelfItemViewElements:(id)elements requestCellLayouts:(BOOL)layouts numberOfShelfItems:(int64_t)items
{
  layoutsCopy = layouts;
  elementsCopy = elements;
  elementCopy = element;
  v12 = [SUUIShelfLayoutData alloc];
  numberOfRows = [elementCopy numberOfRows];

  [(SUUIShelfPageSectionConfiguration *)self _columnSpacingForShelfItemViewElements:elementsCopy];
  v15 = v14;

  v16 = [(SUUIShelfLayoutData *)v12 initWithNumberOfRows:numberOfRows columnSpacing:v15];
  shelfLayoutData = self->_shelfLayoutData;
  self->_shelfLayoutData = v16;

  [(SUUIShelfPageSectionConfiguration *)self _updateShelfLayoutDataContentInset];
  v18 = [(SUUIShelfPageSectionConfiguration *)self _reloadShelfLayoutDataWithNumberOfShelfItems:items];
  if (layoutsCopy)
  {
    numberOfIterations = [(SUUIShelfPageSectionConfiguration *)self numberOfIterations];
    numberOfRows2 = [(SUUIShelfLayoutData *)self->_shelfLayoutData numberOfRows];
    v21 = self->_shelfLayoutData;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __142__SUUIShelfPageSectionConfiguration_reloadShelfLayoutDataForShelfViewElement_withShelfItemViewElements_requestCellLayouts_numberOfShelfItems___block_invoke;
    v23[3] = &unk_2798FA858;
    v26 = numberOfRows2;
    itemsCopy = items;
    v28 = numberOfIterations;
    v24 = v18;
    selfCopy = self;
    [(SUUIShelfLayoutData *)v21 enumerateColumnsUsingBlock:v23];
  }

  collectionViewLayout = [(UICollectionView *)self->_shelfCollectionView collectionViewLayout];
  [collectionViewLayout setLayoutData:self->_shelfLayoutData];
}

void __142__SUUIShelfPageSectionConfiguration_reloadShelfLayoutDataForShelfViewElement_withShelfItemViewElements_requestCellLayouts_numberOfShelfItems___block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  v15 = *(a1 + 48);
  if (v15 >= 1)
  {
    v29 = v14;
    v30 = v13;
    v31 = v10;
    v32 = v9;
    v33 = v8;
    v34 = v7;
    v35 = v6;
    v36 = v5;
    v37 = v4;
    v38 = v3;
    v39 = v11;
    v40 = v12;
    v18 = 0;
    v19 = v15 * a2;
    do
    {
      v20 = v19 + v18;
      v21 = *(a1 + 56);
      if (v19 + v18 >= (*(a1 + 64) * v21))
      {
        break;
      }

      v22 = v20 % v21;
      v23 = *(a1 + 32);
      if (v23)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithInteger:v20 % v21];
        v25 = [v23 objectForKey:v24];

        if (!v25)
        {
          continue;
        }
      }

      v26 = [*(a1 + 40) _shelfItemViewElementAtIndex:{v22, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40}];
      [*(a1 + 40) requestCellLayoutForViewElement:v26 withColumnWidth:a3];
      v27 = *(a1 + 32);
      if (v27)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
        [v27 removeObjectForKey:v28];
      }

      ++v18;
    }

    while (v18 < *(a1 + 48));
  }
}

- (void)requestCellLayoutForViewElement:(id)element withColumnWidth:(double)width
{
  v6 = [(SUUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:element];
  [(objc_class *)[(SUUIShelfPageSectionConfiguration *)self _cellClassForEffectiveShelfItemViewElement:v6] requestLayoutForViewElement:v6 width:self->_cellLayoutContext context:width];
}

- (UIEdgeInsets)sectionContentInsetAdjustedFromValue:(UIEdgeInsets)value forShelfViewElement:(id)element withSectionIndex:(int64_t)index
{
  right = value.right;
  bottom = value.bottom;
  left = value.left;
  top = value.top;
  v18 = 0;
  style = [element style];
  v11 = SUUIViewElementPaddingForStyle(style, &v18);
  v13 = v12;

  if (index)
  {
    v14 = top;
  }

  else
  {
    v14 = bottom;
  }

  if (v18)
  {
    v15 = v13;
  }

  else
  {
    v15 = bottom;
  }

  if (v18)
  {
    v14 = v11;
  }

  v16 = left;
  v17 = right;
  result.right = v17;
  result.bottom = v15;
  result.left = v16;
  result.top = v14;
  return result;
}

- (void)shelfItemsCollectionView:(id)view willApplyLayoutAttributes:(id)attributes forViewElement:(id)element withItemIndex:(int64_t)index
{
  viewCopy = view;
  attributesCopy = attributes;
  v11 = [(SUUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:element];
  style = [v11 style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    [attributesCopy setBackgroundColor:color];
  }

  else
  {
    backgroundColor = [viewCopy backgroundColor];
    [attributesCopy setBackgroundColor:backgroundColor];
  }

  numberOfRows = [(SUUIShelfLayoutData *)self->_shelfLayoutData numberOfRows];
  if (numberOfRows == 1)
  {
    v17 = 40;
  }

  else if (index % numberOfRows)
  {
    if (index % numberOfRows == numberOfRows - 1)
    {
      v17 = 32;
    }

    else
    {
      v17 = 16;
    }
  }

  else
  {
    v17 = 8;
  }

  [attributesCopy setPosition:v17];
}

- (Class)_cellClassForEffectiveShelfItemViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  v6 = 0;
  if (elementType <= 48)
  {
    if (elementType == 14)
    {
      [elementCopy cardType];
      goto LABEL_11;
    }

    if (elementType == 28)
    {
      goto LABEL_11;
    }
  }

  else
  {
    switch(elementType)
    {
      case 49:
        goto LABEL_11;
      case 66:
        v7 = [(SUUIShelfPageSectionConfiguration *)self _lockupCellClassWithLockup:elementCopy];
LABEL_12:
        v6 = v7;
        break;
      case 152:
LABEL_11:
        v7 = objc_opt_class();
        goto LABEL_12;
    }
  }

  v8 = v6;

  return v6;
}

- (double)_columnSpacingForShelfItemViewElements:(id)elements
{
  clientContext = [(SUUIStorePageSectionContext *)self->_pageSectionContext clientContext];
  v5 = SUUIUserInterfaceIdiom(clientContext);

  result = 15.0;
  if (v5 == 1)
  {
    [(SUUIStorePageSectionContext *)self->_pageSectionContext activePageWidth];
    v8 = v7 < 768.0;
    result = 30.0;
    if (v8)
    {
      return 20.0;
    }
  }

  return result;
}

- (id)_dequeueCellForLockup:(id)lockup collectionView:(id)view indexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = [(SUUIShelfPageSectionConfiguration *)self lockupTypeForLockup:lockup];
  if (v10 > 8)
  {
    v11 = 0;
  }

  else if (((1 << v10) & 0x1E6) != 0)
  {
    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:0x286AFE180 forIndexPath:pathCopy];
    [v11 setSeparatorStyle:5];
  }

  else
  {
    if (((1 << v10) & 0x11) != 0)
    {
      v12 = 0x286AF7FC0;
    }

    else
    {
      v12 = 0x286AFFCE0;
    }

    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:pathCopy];
  }

  return v11;
}

- (Class)_lockupCellClassWithLockup:(id)lockup
{
  if ([(SUUIShelfPageSectionConfiguration *)self lockupTypeForLockup:lockup]<= 8)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (double)_perspectiveHeightForContentSize:(double)size
{
  [SUUIStackedImageView maximumPerspectiveHeightForSize:size, size];
  v5 = v4;
  isTopSection = [(SUUIShelfPageSectionConfiguration *)self isTopSection];
  result = v5 + -15.0;
  if (isTopSection)
  {
    return v5;
  }

  return result;
}

- (id)_reloadShelfLayoutDataWithNumberOfShelfItems:(int64_t)items
{
  numberOfIterations = [(SUUIShelfPageSectionConfiguration *)self numberOfIterations];
  if (numberOfIterations < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  shelfLayoutData = self->_shelfLayoutData;
  v8 = numberOfIterations * items;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__SUUIShelfPageSectionConfiguration__reloadShelfLayoutDataWithNumberOfShelfItems___block_invoke;
  v12[3] = &unk_2798FA880;
  itemsCopy = items;
  v9 = v6;
  v13 = v9;
  selfCopy = self;
  [(SUUIShelfLayoutData *)shelfLayoutData reloadWithItemCount:v8 sizeBlock:v12];
  v10 = v9;

  return v9;
}

double __82__SUUIShelfPageSectionConfiguration__reloadShelfLayoutDataWithNumberOfShelfItems___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = a2 % v3;
  v5 = *(a1 + 32);
  if (v5 && ([MEMORY[0x277CCABB0] numberWithInteger:a2 % v3], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    [v7 CGSizeValue];
    v9 = v8;
  }

  else
  {
    v7 = [*(a1 + 40) _shelfItemViewElementAtIndex:v4];
    v10 = [*(a1 + 40) effectiveViewElementForShelfItemViewElement:v7];
    [objc_msgSend(*(a1 + 40) _cellClassForEffectiveShelfItemViewElement:{v10), "preferredSizeForViewElement:context:", v10, *(*(a1 + 40) + 32)}];
    v9 = v11;
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = [MEMORY[0x277CCAE60] valueWithCGSize:{v11, v12}];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
      [v13 setObject:v14 forKey:v15];
    }
  }

  return v9;
}

- (id)_shelfItemViewElementAtIndex:(int64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained shelfPageSectionConfiguration:self viewElementAtIndex:index];

  return v6;
}

- (id)_styledShelfCollectionViewLayoutForExistingLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_wantsZoomingShelfLayout)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = layoutCopy;
    }

    else
    {
      v5 = objc_alloc_init(SUUIZoomingShelfCollectionViewLayout);
      [(SUUIZoomingShelfCollectionViewLayout *)v5 setLayoutData:self->_shelfLayoutData];
    }

    [(SUUIZoomingShelfCollectionViewLayout *)v5 setFocusedItemHorizontalCenterOffset:self->_zoomingShelfLayoutFocusedItemHorizontalCenterOffset];
    [(SUUIZoomingShelfCollectionViewLayout *)v5 setInterItemSpacing:self->_zoomingShelfLayoutInterItemSpacing];
    [(SUUIZoomingShelfCollectionViewLayout *)v5 setItemWidth:self->_zoomingShelfLayoutItemWidth];
    [(SUUIZoomingShelfCollectionViewLayout *)v5 setScaledItemWidth:self->_zoomingShelfLayoutScaledItemWidth];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = layoutCopy;
    }

    else
    {
      v5 = objc_alloc_init(SUUIShelfCollectionViewLayout);
      [(SUUIZoomingShelfCollectionViewLayout *)v5 setLayoutData:self->_shelfLayoutData];
    }
  }

  return v5;
}

- (void)_updateShelfLayoutDataContentInset
{
  if (self->_wantsZoomingShelfLayout)
  {
    shelfLayoutData = self->_shelfLayoutData;
    v4 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v7 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    pageSectionContext = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
    [pageSectionContext horizontalPadding];
    v10 = v9;
    pageSectionContext2 = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
    [pageSectionContext2 horizontalPadding];
    v13 = v12;

    v5 = v10 + 100.0;
    if (self->_rendersWithPerspective)
    {
      v7 = v13 + 100.0;
    }

    else
    {
      v5 = v10;
      v7 = v13;
    }

    shelfLayoutData = self->_shelfLayoutData;
    v4 = 0.0;
    v6 = 0.0;
  }

  [(SUUIShelfLayoutData *)shelfLayoutData setContentInset:v4, v5, v6, v7];
}

- (SUUIShelfPageSectionConfigurationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end