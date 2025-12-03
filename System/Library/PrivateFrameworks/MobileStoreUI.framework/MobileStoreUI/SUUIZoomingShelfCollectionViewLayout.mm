@interface SUUIZoomingShelfCollectionViewLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (CGSize)collectionViewContentSize;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)menuBarFocusedItemIndexPathWithTransitionProgress:(double *)progress;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
- (void)setFocusedItemHorizontalCenterOffset:(double)offset;
- (void)setInterItemSpacing:(double)spacing;
- (void)setItemWidth:(double)width;
- (void)setLayoutData:(id)data;
- (void)setMenuBarFocusedItemIndexPath:(id)path withTransitionProgress:(double)progress;
- (void)setScaledItemWidth:(double)width;
@end

@implementation SUUIZoomingShelfCollectionViewLayout

- (void)prepareLayout
{
  v63.receiver = self;
  v63.super_class = SUUIZoomingShelfCollectionViewLayout;
  [(SUUIZoomingShelfCollectionViewLayout *)&v63 prepareLayout];
  collectionView = [(SUUIZoomingShelfCollectionViewLayout *)self collectionView];
  backgroundColor = [collectionView backgroundColor];
  [collectionView bounds];
  v61 = v5;
  v62 = v4;
  v59 = v7;
  v60 = v6;
  v49 = collectionView;
  [collectionView contentOffset];
  v9 = v8;
  focusedItemHorizontalCenterOffset = self->_focusedItemHorizontalCenterOffset;
  interItemSpacing = self->_interItemSpacing;
  itemWidth = self->_itemWidth;
  scaledItemWidth = self->_scaledItemWidth;
  v14 = scaledItemWidth * 0.5;
  if (self->_cachedLayoutAttributes && self->_invalidateGeometryOnlyOfExistingLayoutAttributes)
  {
    v55 = 0;
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedLayoutAttributes = self->_cachedLayoutAttributes;
    self->_cachedLayoutAttributes = v15;

    v55 = 1;
  }

  v17 = itemWidth * 0.5;
  v57 = interItemSpacing + itemWidth;
  v58 = focusedItemHorizontalCenterOffset - v14;
  numberOfSections = [collectionView numberOfSections];
  if (numberOfSections <= 0)
  {
    v44 = scaledItemWidth - itemWidth;
    v43 = -1.0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v46 = scaledItemWidth * 0.5;
    v47 = focusedItemHorizontalCenterOffset;
    v20 = v17 + interItemSpacing + v14 + v17 + interItemSpacing + v14;
    v53 = v20 * 0.5;
    v54 = v9 + focusedItemHorizontalCenterOffset;
    v56 = scaledItemWidth - itemWidth;
    v52 = v20 - (scaledItemWidth - itemWidth);
    v21 = *(MEMORY[0x277CBF3A0] + 8);
    v51 = *MEMORY[0x277CBF3A0];
    v22 = *MEMORY[0x277CDA7B8];
    v23 = scaledItemWidth / itemWidth;
    v24 = 1.0 - scaledItemWidth / itemWidth + 1.0 - scaledItemWidth / itemWidth;
    do
    {
      v25 = [v49 numberOfItemsInSection:{v19, *&v46, *&v47}];
      if (v25 >= 1)
      {
        for (i = 0; i != v25; ++i)
        {
          v27 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:v19];
          if ((v55 & 1) != 0 || ([(NSMutableDictionary *)self->_cachedLayoutAttributes objectForKey:v27], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v28 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];
            [v28 setBackgroundColor:backgroundColor];
          }

          [(SUUIShelfLayoutData *)self->_layoutData sizeForItemAtIndex:v18 + i];
          v30 = v29;
          v31 = v17 + v58 + (v18 + i) * v57;
          v32 = (v53 + v31 - v54) / v52;
          if (v32 < 0.0)
          {
            v32 = 0.0;
          }

          v33 = fmin(v32, 1.0);
          [v28 _setZoomingImageLambda:v33];
          v64.origin.y = v61;
          v64.origin.x = v62;
          v64.size.height = v59;
          v64.size.width = v60;
          [v28 setCenter:{v31 + v33 * v56, CGRectGetMinY(v64) + v30 * 0.5}];
          [v28 setBounds:{v51, v21, itemWidth, v30}];
          v34 = fabs(v33 + -0.5);
          v35 = [MEMORY[0x277CD9EF8] functionWithName:v22];
          *&v36 = 1.0 - v34;
          [v35 _solveForInput:v36];
          v38 = v37;

          [v28 setZoomingImageAlpha:v38];
          [v28 setZoomingImageWidth:itemWidth * (v23 + v24 * v34)];
          v39 = [MEMORY[0x277CD9EF8] functionWithName:v22];
          *&v40 = v34 + v34;
          [v39 _solveForInput:v40];
          v42 = v41;

          [v28 setZoomingImageImposedAlphaOfOtherViews:v42];
          [(NSMutableDictionary *)self->_cachedLayoutAttributes setObject:v28 forKey:v27];
        }
      }

      v18 += v25;
      ++v19;
    }

    while (v19 != numberOfSections);
    v43 = (v18 - 1);
    v14 = v46;
    focusedItemHorizontalCenterOffset = v47;
    v44 = v56;
  }

  [(SUUIShelfLayoutData *)self->_layoutData totalContentSize];
  self->_cachedCollectionViewContentSize.width = v17 + v44 + v17 + v58 + v43 * v57;
  self->_cachedCollectionViewContentSize.height = v45;
  v65.origin.y = v61;
  v65.origin.x = v62;
  v65.size.height = v59;
  v65.size.width = v60;
  self->_cachedCollectionViewContentSize.width = self->_cachedCollectionViewContentSize.width + CGRectGetWidth(v65) - focusedItemHorizontalCenterOffset - v14;
}

- (CGSize)collectionViewContentSize
{
  width = self->_cachedCollectionViewContentSize.width;
  height = self->_cachedCollectionViewContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  cachedLayoutAttributes = self->_cachedLayoutAttributes;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__SUUIZoomingShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
  v12[3] = &unk_2798F6CE0;
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  v10 = v8;
  v13 = v10;
  [(NSMutableDictionary *)cachedLayoutAttributes enumerateKeysAndObjectsUsingBlock:v12];

  return v10;
}

void __74__SUUIZoomingShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 frame];
  if (CGRectIntersectsRect(v6, *(a1 + 40)))
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  v14.receiver = self;
  v14.super_class = SUUIZoomingShelfCollectionViewLayout;
  v6 = [(SUUIZoomingShelfCollectionViewLayout *)&v14 invalidationContextForBoundsChange:change.origin.x, change.origin.y];
  collectionView = [(SUUIZoomingShelfCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v9 = v8;
  v11 = v10;

  if (v9 == width && v11 == height)
  {
    [v6 setInvalidateGeometryOnlyOfExistingLayoutAttributes:1];
  }

  return v6;
}

- (void)invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  self->_invalidateGeometryOnlyOfExistingLayoutAttributes = [contextCopy invalidateGeometryOnlyOfExistingLayoutAttributes];
  v5.receiver = self;
  v5.super_class = SUUIZoomingShelfCollectionViewLayout;
  [(SUUIZoomingShelfCollectionViewLayout *)&v5 invalidateLayoutWithContext:contextCopy];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = offset.y;
  v7 = offset.x;
  collectionView = [(SUUIZoomingShelfCollectionViewLayout *)self collectionView];
  focusedItemHorizontalCenterOffset = self->_focusedItemHorizontalCenterOffset;
  interItemSpacing = self->_interItemSpacing;
  itemWidth = self->_itemWidth;
  scaledItemWidth = self->_scaledItemWidth;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__10;
  v33 = __Block_byref_object_dispose__10;
  v34 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  cachedLayoutAttributes = self->_cachedLayoutAttributes;
  v28[3] = 0x7FEFFFFFFFFFFFFFLL;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __106__SUUIZoomingShelfCollectionViewLayout_targetContentOffsetForProposedContentOffset_withScrollingVelocity___block_invoke;
  v27[3] = &unk_2798F6D08;
  *&v27[6] = v7 + focusedItemHorizontalCenterOffset;
  v27[4] = v28;
  v27[5] = &v29;
  [(NSMutableDictionary *)cachedLayoutAttributes enumerateKeysAndObjectsUsingBlock:v27];
  v26.receiver = self;
  v26.super_class = SUUIZoomingShelfCollectionViewLayout;
  [(SUUIZoomingShelfCollectionViewLayout *)&v26 targetContentOffsetForProposedContentOffset:v7 withScrollingVelocity:v6, x, y];
  v17 = v16;
  v18 = v30[5];
  if (v18)
  {
    section = [v18 section];
    item = [v30[5] item];
    if (section < 1)
    {
      v22 = 0;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      do
      {
        v22 += [collectionView numberOfItemsInSection:v21++];
      }

      while (section != v21);
    }

    v23 = itemWidth * 0.5 + focusedItemHorizontalCenterOffset - scaledItemWidth * 0.5 + (v22 + item) * (interItemSpacing + itemWidth) + (scaledItemWidth - itemWidth) * 0.5 - focusedItemHorizontalCenterOffset;
  }

  else
  {
    v23 = v15;
  }

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v29, 8);

  v24 = v23;
  v25 = v17;
  result.y = v25;
  result.x = v24;
  return result;
}

void __106__SUUIZoomingShelfCollectionViewLayout_targetContentOffsetForProposedContentOffset_withScrollingVelocity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  [a3 center];
  v7 = vabdd_f64(v6, *(a1 + 48));
  v8 = *(*(a1 + 32) + 8);
  if (v7 < *(v8 + 24))
  {
    *(v8 + 24) = v7;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)menuBarFocusedItemIndexPathWithTransitionProgress:(double *)progress
{
  v33[1] = *MEMORY[0x277D85DE8];
  collectionView = [(SUUIZoomingShelfCollectionViewLayout *)self collectionView];
  [collectionView layoutIfNeeded];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  progressCopy = progress;
  if (![indexPathsForVisibleItems count])
  {
    [collectionView contentOffset];
    if (v7 <= 0.0)
    {
      v10 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
      v33[0] = v10;
      v11 = v33;
    }

    else
    {
      v8 = [collectionView numberOfSections] - 1;
      v9 = [collectionView numberOfItemsInSection:v8];
      v10 = [MEMORY[0x277CCAA70] indexPathForItem:v9 - 1 inSection:v8];
      v32 = v10;
      v11 = &v32;
    }

    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

    indexPathsForVisibleItems = v12;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = indexPathsForVisibleItems;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v28;
    v18 = 1.79769313e308;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        v21 = [(NSMutableDictionary *)self->_cachedLayoutAttributes objectForKey:v20];
        [v21 _zoomingImageLambda];
        v23 = v22;
        if (fabs(v22 + -0.5) < fabs(v18 + -0.5))
        {
          v24 = v20;

          v18 = v23;
          v16 = v24;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
    v18 = 1.79769313e308;
  }

  if (progressCopy)
  {
    *progressCopy = v18 * 2.0 + -1.0;
  }

  return v16;
}

- (void)setMenuBarFocusedItemIndexPath:(id)path withTransitionProgress:(double)progress
{
  pathCopy = path;
  collectionView = [(SUUIZoomingShelfCollectionViewLayout *)self collectionView];
  interItemSpacing = self->_interItemSpacing;
  itemWidth = self->_itemWidth;
  scaledItemWidth = self->_scaledItemWidth;
  section = [pathCopy section];
  if (section < 1)
  {
    v13 = 0;
  }

  else
  {
    v11 = section;
    v12 = 0;
    v13 = 0;
    do
    {
      v13 += [collectionView numberOfItemsInSection:v12++];
    }

    while (v11 != v12);
  }

  v14 = itemWidth * 0.5 + interItemSpacing + scaledItemWidth * 0.5 + itemWidth * 0.5 + interItemSpacing + scaledItemWidth * 0.5;
  v15 = [pathCopy item] + v13;
  [collectionView contentOffset];
  [collectionView setContentOffset:v14 * 0.5 + itemWidth * 0.5 + scaledItemWidth * -0.5 + v15 * (interItemSpacing + itemWidth) + (progress + 1.0) * -0.5 * (v14 - (scaledItemWidth - itemWidth))];
}

- (void)setFocusedItemHorizontalCenterOffset:(double)offset
{
  if (self->_focusedItemHorizontalCenterOffset != offset)
  {
    self->_focusedItemHorizontalCenterOffset = offset;
    [(SUUIZoomingShelfCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setLayoutData:(id)data
{
  dataCopy = data;
  if (self->_layoutData != dataCopy)
  {
    v6 = dataCopy;
    objc_storeStrong(&self->_layoutData, data);
    [(SUUIZoomingShelfCollectionViewLayout *)self invalidateLayout];
    dataCopy = v6;
  }
}

- (void)setInterItemSpacing:(double)spacing
{
  if (self->_interItemSpacing != spacing)
  {
    self->_interItemSpacing = spacing;
    [(SUUIZoomingShelfCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setItemWidth:(double)width
{
  if (self->_itemWidth != width)
  {
    self->_itemWidth = width;
    [(SUUIZoomingShelfCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setScaledItemWidth:(double)width
{
  if (self->_scaledItemWidth != width)
  {
    self->_scaledItemWidth = width;
    [(SUUIZoomingShelfCollectionViewLayout *)self invalidateLayout];
  }
}

@end