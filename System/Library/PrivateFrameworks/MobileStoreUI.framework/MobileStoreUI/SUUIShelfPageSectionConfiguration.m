@interface SUUIShelfPageSectionConfiguration
- (BOOL)prefetchResourcesForShelfItemViewElement:(id)a3 reason:(int64_t)a4;
- (CGSize)cellSizeForShelfViewElement:(id)a3 indexPath:(id)a4 numberOfShelfItems:(int64_t)a5;
- (Class)_cellClassForEffectiveShelfItemViewElement:(id)a3;
- (Class)_lockupCellClassWithLockup:(id)a3;
- (SUUIShelfPageSectionConfigurationDataSource)dataSource;
- (UICollectionView)shelfCollectionView;
- (UIEdgeInsets)sectionContentInsetAdjustedFromValue:(UIEdgeInsets)a3 forShelfViewElement:(id)a4 withSectionIndex:(int64_t)a5;
- (double)_columnSpacingForShelfItemViewElements:(id)a3;
- (double)_perspectiveHeightForContentSize:(double)a3;
- (id)_dequeueCellForLockup:(id)a3 collectionView:(id)a4 indexPath:(id)a5;
- (id)_reloadShelfLayoutDataWithNumberOfShelfItems:(int64_t)a3;
- (id)_shelfItemViewElementAtIndex:(int64_t)a3;
- (id)_styledShelfCollectionViewLayoutForExistingLayout:(id)a3;
- (id)actualIndexPathOfShelfItemClosestToVisibleBoundsForNormalizedIndexPath:(id)a3 numberOfShelfItems:(unint64_t)a4;
- (id)backgroundColorForShelfViewElement:(id)a3;
- (id)cellForShelfItemViewElement:(id)a3 indexPath:(id)a4;
- (id)cellForShelfViewElement:(id)a3 indexPath:(id)a4;
- (id)normalizedShelfItemIndexPathFromActualIndexPath:(id)a3 numberOfShelfItems:(unint64_t)a4;
- (int64_t)lockupTypeForLockup:(id)a3;
- (void)_updateShelfLayoutDataContentInset;
- (void)registerReusableClassesForCollectionView:(id)a3;
- (void)reloadLockupTypeForShelfViewElement:(id)a3;
- (void)reloadShelfLayoutDataForShelfViewElement:(id)a3 withShelfItemViewElements:(id)a4 requestCellLayouts:(BOOL)a5 numberOfShelfItems:(int64_t)a6;
- (void)requestCellLayoutForViewElement:(id)a3 withColumnWidth:(double)a4;
- (void)setShelfCollectionViewBackgroundColor:(id)a3;
- (void)setShelfCollectionViewDataSource:(id)a3;
- (void)setShelfCollectionViewDelegate:(id)a3;
- (void)setShelfViewElementStyle:(id)a3;
- (void)shelfItemsCollectionView:(id)a3 willApplyLayoutAttributes:(id)a4 forViewElement:(id)a5 withItemIndex:(int64_t)a6;
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

- (void)setShelfCollectionViewBackgroundColor:(id)a3
{
  v5 = a3;
  p_shelfCollectionViewBackgroundColor = &self->_shelfCollectionViewBackgroundColor;
  if (self->_shelfCollectionViewBackgroundColor != v5)
  {
    v7 = v5;
    objc_storeStrong(p_shelfCollectionViewBackgroundColor, a3);
    p_shelfCollectionViewBackgroundColor = [(UICollectionView *)self->_shelfCollectionView setBackgroundColor:v7];
  }

  MEMORY[0x2821F9730](p_shelfCollectionViewBackgroundColor);
}

- (void)setShelfCollectionViewDataSource:(id)a3
{
  if (self->_shelfCollectionViewDataSource != a3)
  {
    self->_shelfCollectionViewDataSource = a3;
    [(UICollectionView *)self->_shelfCollectionView setDataSource:?];
  }
}

- (void)setShelfCollectionViewDelegate:(id)a3
{
  if (self->_shelfCollectionViewDelegate != a3)
  {
    self->_shelfCollectionViewDelegate = a3;
    [(UICollectionView *)self->_shelfCollectionView setDelegate:?];
  }
}

- (void)setShelfViewElementStyle:(id)a3
{
  v19 = a3;
  if (self->_shelfViewElementStyle != v19)
  {
    objc_storeStrong(&self->_shelfViewElementStyle, a3);
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
      v16 = [(UICollectionView *)shelfCollectionView collectionViewLayout];
      v17 = [(SUUIShelfPageSectionConfiguration *)self _styledShelfCollectionViewLayoutForExistingLayout:v16];
      if (v16 != v17)
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

- (id)actualIndexPathOfShelfItemClosestToVisibleBoundsForNormalizedIndexPath:(id)a3 numberOfShelfItems:(unint64_t)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(SUUIShelfPageSectionConfiguration *)self numberOfIterations]== 1)
  {
    v7 = v6;
  }

  else
  {
    v8 = [v6 item];
    v9 = [(SUUIShelfPageSectionConfiguration *)self shelfCollectionView];
    [v9 indexPathsForVisibleItems];
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
        if ([v15 item] % a4 == v8)
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

      v17 = [v16 firstObject];
      v18 = [v16 lastObject];
      v19 = v17;
      if (v17 != v18)
      {
        v20 = [v17 item] % a4;
        v21 = [v18 item] % a4;
        v22 = v20 - v8;
        if ((v20 - v8) < 0)
        {
          v22 = v8 - v20;
        }

        v23 = v21 - v8;
        if (v23 < 0)
        {
          v23 = -v23;
        }

        if (v22 >= v23)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }
      }

      v24 = v19;
      v25 = [v24 item];
      v7 = [MEMORY[0x277CCAA70] indexPathForItem:v8 + v25 / a4 * a4 inSection:{objc_msgSend(v6, "section")}];

      v10 = v16;
    }

    else
    {
      v7 = v6;
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

- (id)backgroundColorForShelfViewElement:(id)a3
{
  v3 = [a3 style];
  v4 = [v3 ikBackgroundColor];
  v5 = [v4 color];

  return v5;
}

- (id)cellForShelfViewElement:(id)a3 indexPath:(id)a4
{
  pageSectionContext = self->_pageSectionContext;
  v6 = a4;
  v7 = [(SUUIStorePageSectionContext *)pageSectionContext collectionView];
  v8 = [v7 dequeueReusableCellWithReuseIdentifier:0x286AF9C20 forIndexPath:v6];

  v9 = [(SUUIShelfPageSectionConfiguration *)self shelfCollectionView];
  [v8 setCollectionView:v9];
  if (self->_needsShelfCollectionViewReload)
  {
    [v9 reloadData];
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

- (CGSize)cellSizeForShelfViewElement:(id)a3 indexPath:(id)a4 numberOfShelfItems:(int64_t)a5
{
  [(SUUIStorePageSectionContext *)self->_pageSectionContext activePageWidth:a3];
  v8 = v7;
  if (self->_needsShelfCollectionViewLayout)
  {
    v9 = [(SUUIShelfPageSectionConfiguration *)self _reloadShelfLayoutDataWithNumberOfShelfItems:a5];
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

- (id)cellForShelfItemViewElement:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIShelfPageSectionConfiguration *)self shelfCollectionView];
  v9 = [(SUUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:v6];
  v10 = [v9 elementType];
  v11 = 0;
  if (v10 <= 48)
  {
    if (v10 == 14)
    {
      if ([v6 cardType] != 3)
      {
        v11 = [v8 dequeueReusableCellWithReuseIdentifier:0x286AFFD60 forIndexPath:v7];
        [v11 setArtworkBoundingSize:0];
        goto LABEL_14;
      }

      v12 = 0x286AFDBE0;
    }

    else
    {
      if (v10 != 28)
      {
        goto LABEL_14;
      }

      v12 = 0x286AF7760;
    }

    v11 = [v8 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:v7];
    goto LABEL_14;
  }

  if (v10 == 49)
  {
LABEL_5:
    v11 = [v8 dequeueReusableCellWithReuseIdentifier:0x286AF3680 forIndexPath:v7];
    [v11 setShowsReflectionImage:0];
    goto LABEL_14;
  }

  if (v10 != 66)
  {
    if (v10 != 152)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  v13 = [(SUUIShelfPageSectionConfiguration *)self shelfCollectionView];
  v11 = [(SUUIShelfPageSectionConfiguration *)self _dequeueCellForLockup:v9 collectionView:v13 indexPath:v7];

LABEL_14:
  -[SUUIShelfLayoutData sizeForItemAtIndex:](self->_shelfLayoutData, "sizeForItemAtIndex:", [v7 item]);
  v15 = v14;
  v16 = [v9 style];
  v17 = [v16 visibility];
  v18 = [v17 isEqualToString:@"hidden"];

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
    v22 = [(SUUIStorePageSectionContext *)pageSectionContext parentViewController];
    v23 = [v22 view];

    [v21 setPerspectiveTargetView:v23];
    [v23 bounds];
    [v21 setVanishingPoint:{CGRectGetMidX(v26), -800.0}];
  }

  return v11;
}

- (int64_t)lockupTypeForLockup:(id)a3
{
  result = self->_lockupType;
  if (result == -1)
  {
    return [a3 lockupViewType];
  }

  return result;
}

- (id)normalizedShelfItemIndexPathFromActualIndexPath:(id)a3 numberOfShelfItems:(unint64_t)a4
{
  v6 = a3;
  if ([(SUUIShelfPageSectionConfiguration *)self numberOfIterations]== 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v6 inSection:{"item") % a4, objc_msgSend(v6, "section")}];
  }

  v8 = v7;

  return v8;
}

- (BOOL)prefetchResourcesForShelfItemViewElement:(id)a3 reason:(int64_t)a4
{
  v6 = [(SUUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:a3];
  LOBYTE(a4) = [(objc_class *)[(SUUIShelfPageSectionConfiguration *)self _cellClassForEffectiveShelfItemViewElement:v6] prefetchResourcesForViewElement:v6 reason:a4 context:self->_cellLayoutContext];

  return a4;
}

- (void)registerReusableClassesForCollectionView:(id)a3
{
  v3 = a3;
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF9C20];
}

- (void)reloadLockupTypeForShelfViewElement:(id)a3
{
  v4 = [a3 style];
  v7 = [v4 lockupType];

  v5 = v7;
  if (v7)
  {
    v6 = SUUILockupViewTypeForString(v7);
    v5 = v7;
  }

  else
  {
    v6 = -1;
  }

  self->_lockupType = v6;

  MEMORY[0x2821F96F8](v6, v5);
}

- (void)reloadShelfLayoutDataForShelfViewElement:(id)a3 withShelfItemViewElements:(id)a4 requestCellLayouts:(BOOL)a5 numberOfShelfItems:(int64_t)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [SUUIShelfLayoutData alloc];
  v13 = [v11 numberOfRows];

  [(SUUIShelfPageSectionConfiguration *)self _columnSpacingForShelfItemViewElements:v10];
  v15 = v14;

  v16 = [(SUUIShelfLayoutData *)v12 initWithNumberOfRows:v13 columnSpacing:v15];
  shelfLayoutData = self->_shelfLayoutData;
  self->_shelfLayoutData = v16;

  [(SUUIShelfPageSectionConfiguration *)self _updateShelfLayoutDataContentInset];
  v18 = [(SUUIShelfPageSectionConfiguration *)self _reloadShelfLayoutDataWithNumberOfShelfItems:a6];
  if (v7)
  {
    v19 = [(SUUIShelfPageSectionConfiguration *)self numberOfIterations];
    v20 = [(SUUIShelfLayoutData *)self->_shelfLayoutData numberOfRows];
    v21 = self->_shelfLayoutData;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __142__SUUIShelfPageSectionConfiguration_reloadShelfLayoutDataForShelfViewElement_withShelfItemViewElements_requestCellLayouts_numberOfShelfItems___block_invoke;
    v23[3] = &unk_2798FA858;
    v26 = v20;
    v27 = a6;
    v28 = v19;
    v24 = v18;
    v25 = self;
    [(SUUIShelfLayoutData *)v21 enumerateColumnsUsingBlock:v23];
  }

  v22 = [(UICollectionView *)self->_shelfCollectionView collectionViewLayout];
  [v22 setLayoutData:self->_shelfLayoutData];
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

- (void)requestCellLayoutForViewElement:(id)a3 withColumnWidth:(double)a4
{
  v6 = [(SUUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:a3];
  [(objc_class *)[(SUUIShelfPageSectionConfiguration *)self _cellClassForEffectiveShelfItemViewElement:v6] requestLayoutForViewElement:v6 width:self->_cellLayoutContext context:a4];
}

- (UIEdgeInsets)sectionContentInsetAdjustedFromValue:(UIEdgeInsets)a3 forShelfViewElement:(id)a4 withSectionIndex:(int64_t)a5
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v18 = 0;
  v10 = [a4 style];
  v11 = SUUIViewElementPaddingForStyle(v10, &v18);
  v13 = v12;

  if (a5)
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

- (void)shelfItemsCollectionView:(id)a3 willApplyLayoutAttributes:(id)a4 forViewElement:(id)a5 withItemIndex:(int64_t)a6
{
  v18 = a3;
  v10 = a4;
  v11 = [(SUUIShelfPageSectionConfiguration *)self effectiveViewElementForShelfItemViewElement:a5];
  v12 = [v11 style];
  v13 = [v12 ikBackgroundColor];
  v14 = [v13 color];

  if (v14)
  {
    [v10 setBackgroundColor:v14];
  }

  else
  {
    v15 = [v18 backgroundColor];
    [v10 setBackgroundColor:v15];
  }

  v16 = [(SUUIShelfLayoutData *)self->_shelfLayoutData numberOfRows];
  if (v16 == 1)
  {
    v17 = 40;
  }

  else if (a6 % v16)
  {
    if (a6 % v16 == v16 - 1)
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

  [v10 setPosition:v17];
}

- (Class)_cellClassForEffectiveShelfItemViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 elementType];
  v6 = 0;
  if (v5 <= 48)
  {
    if (v5 == 14)
    {
      [v4 cardType];
      goto LABEL_11;
    }

    if (v5 == 28)
    {
      goto LABEL_11;
    }
  }

  else
  {
    switch(v5)
    {
      case 49:
        goto LABEL_11;
      case 66:
        v7 = [(SUUIShelfPageSectionConfiguration *)self _lockupCellClassWithLockup:v4];
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

- (double)_columnSpacingForShelfItemViewElements:(id)a3
{
  v4 = [(SUUIStorePageSectionContext *)self->_pageSectionContext clientContext];
  v5 = SUUIUserInterfaceIdiom(v4);

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

- (id)_dequeueCellForLockup:(id)a3 collectionView:(id)a4 indexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SUUIShelfPageSectionConfiguration *)self lockupTypeForLockup:a3];
  if (v10 > 8)
  {
    v11 = 0;
  }

  else if (((1 << v10) & 0x1E6) != 0)
  {
    v11 = [v8 dequeueReusableCellWithReuseIdentifier:0x286AFE180 forIndexPath:v9];
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

    v11 = [v8 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:v9];
  }

  return v11;
}

- (Class)_lockupCellClassWithLockup:(id)a3
{
  if ([(SUUIShelfPageSectionConfiguration *)self lockupTypeForLockup:a3]<= 8)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (double)_perspectiveHeightForContentSize:(double)a3
{
  [SUUIStackedImageView maximumPerspectiveHeightForSize:a3, a3];
  v5 = v4;
  v6 = [(SUUIShelfPageSectionConfiguration *)self isTopSection];
  result = v5 + -15.0;
  if (v6)
  {
    return v5;
  }

  return result;
}

- (id)_reloadShelfLayoutDataWithNumberOfShelfItems:(int64_t)a3
{
  v5 = [(SUUIShelfPageSectionConfiguration *)self numberOfIterations];
  if (v5 < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  shelfLayoutData = self->_shelfLayoutData;
  v8 = v5 * a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__SUUIShelfPageSectionConfiguration__reloadShelfLayoutDataWithNumberOfShelfItems___block_invoke;
  v12[3] = &unk_2798FA880;
  v15 = a3;
  v9 = v6;
  v13 = v9;
  v14 = self;
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

- (id)_shelfItemViewElementAtIndex:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained shelfPageSectionConfiguration:self viewElementAtIndex:a3];

  return v6;
}

- (id)_styledShelfCollectionViewLayoutForExistingLayout:(id)a3
{
  v4 = a3;
  if (self->_wantsZoomingShelfLayout)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
      v5 = v4;
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
    v8 = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
    [v8 horizontalPadding];
    v10 = v9;
    v11 = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
    [v11 horizontalPadding];
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