@interface ICDocCamReorderingThumbnailCollectionViewLayout
+ (double)effectiveAspectRatioForSize:(CGSize)a3;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (CGSize)cachedContentSize;
- (CGSize)collectionViewContentSize;
- (CGSize)itemSizeForImageSize:(CGSize)a3;
- (ICDocCamReorderingThumbnailCollectionViewLayout)initWithDelegate:(id)a3;
- (ICDocCamThumbnailViewLayoutDelegate)delegate;
- (double)extraSpacingForCurrentItem;
- (double)horizontalContentOffsetAdjustmentForItem:(unint64_t)a3;
- (double)horizontalContentOffsetForItem:(unint64_t)a3;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)finalizeCollectionViewUpdates;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)setContentOffsetForItem:(unint64_t)a3 animated:(BOOL)a4;
- (void)setCurrentItem:(unint64_t)a3 animated:(BOOL)a4;
- (void)setInterPageScrollPosition:(double)a3;
- (void)setIsScrollingBetweenPages:(BOOL)a3;
- (void)setIsScrubbing:(BOOL)a3;
- (void)updateLayoutCacheIfNecessary;
@end

@implementation ICDocCamReorderingThumbnailCollectionViewLayout

- (ICDocCamReorderingThumbnailCollectionViewLayout)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICDocCamReorderingThumbnailCollectionViewLayout;
  v5 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_itemHeight = 40.0;
    v6->_itemSpacing = 1.0;
    v6->_topBottomMargins = 2.0;
    v6->_leftMargin = 0.0;
    v6->_rightMargin = 0.0;
    v6->_currentItem = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

+ (double)effectiveAspectRatioForSize:(CGSize)a3
{
  v3 = a3.height > a3.width || a3.height == 0.0;
  result = 1.3;
  if (v3)
  {
    return 0.769230769;
  }

  return result;
}

- (CGSize)itemSizeForImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self updateLayoutCacheIfNecessary];
  [objc_opt_class() effectiveAspectRatioForSize:{width, height}];
  v7 = v6;
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemHeight];
  v9 = v8;
  v10 = round(v7 * v8);
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)setIsScrollingBetweenPages:(BOOL)a3
{
  if (self->_isScrollingBetweenPages != a3)
  {
    self->_isScrollingBetweenPages = a3;
    [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setCurrentInterPageScrollPosition:0.0];

    [(ICDocCamReorderingThumbnailCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setIsScrubbing:(BOOL)a3
{
  if (self->_isScrubbing != a3)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_isScrubbing = a3;
    [(ICDocCamReorderingThumbnailCollectionViewLayout *)self invalidateLayout];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__ICDocCamReorderingThumbnailCollectionViewLayout_setIsScrubbing___block_invoke;
    v6[3] = &unk_278F92C70;
    v6[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.2];
  }
}

void __66__ICDocCamReorderingThumbnailCollectionViewLayout_setIsScrubbing___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setContentOffsetForItem:objc_msgSend(*(a1 + 32) animated:{"currentItem"), 0}];
  v2 = [*(a1 + 32) collectionView];
  [v2 layoutIfNeeded];
}

- (double)extraSpacingForCurrentItem
{
  v3 = 0.0;
  if (![(ICDocCamReorderingThumbnailCollectionViewLayout *)self isScrubbing])
  {
    v4 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
    if ([v4 count] >= 3)
    {
      v3 = 8.0;
    }

    else
    {
      v3 = 0.0;
    }
  }

  return v3;
}

- (void)setInterPageScrollPosition:(double)a3
{
  v5 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
  v6 = [v5 count];

  if ([(ICDocCamReorderingThumbnailCollectionViewLayout *)self currentItem]< v6)
  {
    [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setCurrentInterPageScrollPosition:a3];
    v7 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self collectionView];
    [v7 contentOffset];
    v9 = v8;

    v10 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
    v42 = [v10 objectAtIndexedSubscript:{-[ICDocCamReorderingThumbnailCollectionViewLayout currentItem](self, "currentItem")}];

    [(ICDocCamReorderingThumbnailCollectionViewLayout *)self horizontalContentOffsetAdjustmentForItem:[(ICDocCamReorderingThumbnailCollectionViewLayout *)self currentItem]];
    v12 = v11;
    if (a3 <= 0.0 || [(ICDocCamReorderingThumbnailCollectionViewLayout *)self currentItem]>= v6 - 1)
    {
      if (a3 < 0.0 && [(ICDocCamReorderingThumbnailCollectionViewLayout *)self currentItem])
      {
        [(ICDocCamReorderingThumbnailCollectionViewLayout *)self horizontalContentOffsetAdjustmentForItem:[(ICDocCamReorderingThumbnailCollectionViewLayout *)self currentItem]- 1];
        v28 = v27;
        [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemSpacing];
        v30 = v29;
        [(ICDocCamReorderingThumbnailCollectionViewLayout *)self extraSpacingForCurrentItem];
        v32 = v30 + v31;
        v33 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
        v34 = [v33 objectAtIndexedSubscript:{-[ICDocCamReorderingThumbnailCollectionViewLayout currentItem](self, "currentItem") - 1}];

        [v42 frame];
        v36 = v35;
        [(ICDocCamReorderingThumbnailCollectionViewLayout *)self leftMargin];
        v38 = v36 - v37;
        [v34 size];
        v40 = v38 + (v32 + v39 - v28) * a3 + v12 * (a3 + 1.0);
        v41 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self collectionView];
        [v41 setContentOffset:0 animated:{v40, v9}];

        [(ICDocCamReorderingThumbnailCollectionViewLayout *)self invalidateLayout];
      }
    }

    else
    {
      [(ICDocCamReorderingThumbnailCollectionViewLayout *)self horizontalContentOffsetAdjustmentForItem:[(ICDocCamReorderingThumbnailCollectionViewLayout *)self currentItem]+ 1];
      v14 = v13;
      [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemSpacing];
      v16 = v15;
      [(ICDocCamReorderingThumbnailCollectionViewLayout *)self extraSpacingForCurrentItem];
      v18 = v16 + v17;
      if ([(ICDocCamReorderingThumbnailCollectionViewLayout *)self currentItem]== v6 - 2)
      {
        [(ICDocCamReorderingThumbnailCollectionViewLayout *)self extraSpacingForCurrentItem];
        v18 = v18 + v19;
      }

      [v42 frame];
      v21 = v20;
      [(ICDocCamReorderingThumbnailCollectionViewLayout *)self leftMargin];
      v23 = v21 - v22;
      [v42 size];
      v25 = v23 + (v14 + v18 + v24) * a3 + v12 * (1.0 - a3);
      v26 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self collectionView];
      [v26 setContentOffset:0 animated:{v25, v9}];

      [(ICDocCamReorderingThumbnailCollectionViewLayout *)self invalidateLayout];
    }
  }
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  if ([(ICDocCamReorderingThumbnailCollectionViewLayout *)self isScrubbing])
  {
    v5 = 0;
  }

  else
  {
    v5 = ![(ICDocCamReorderingThumbnailCollectionViewLayout *)self isScrollingBetweenPages];
  }

  v6 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self imageSizeCache];
  if (!v6 || ![(ICDocCamReorderingThumbnailCollectionViewLayout *)self movingItem])
  {
    goto LABEL_11;
  }

  v7 = [v4 previousIndexPathsForInteractivelyMovingItems];
  if ([v7 count] != 1)
  {
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  v8 = [v4 targetIndexPathsForInteractivelyMovingItems];
  if ([v8 count] != 1 || objc_msgSend(v4, "invalidateEverything"))
  {

    goto LABEL_10;
  }

  v9 = [v4 invalidateDataSourceCounts];

  if (v9)
  {
LABEL_12:
    [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setLayoutCacheIsValid:0];
    [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setCachedContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    if (v5)
    {
      [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setImageSizeCache:0];
    }

    goto LABEL_14;
  }

  v10 = [v4 previousIndexPathsForInteractivelyMovingItems];
  v11 = [v10 lastObject];
  v12 = [v11 item];

  v13 = [v4 targetIndexPathsForInteractivelyMovingItems];
  v14 = [v13 lastObject];
  v15 = [v14 item];

  if (v12 != v15)
  {
    v16 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self imageSizeCache];
    v17 = [v16 objectAtIndexedSubscript:v12];

    v18 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self imageSizeCache];
    [v18 removeObjectAtIndex:v12];

    v19 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self imageSizeCache];
    [v19 insertObject:v17 atIndex:v15];
  }

  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setLayoutCacheIsValid:0];
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setCachedContentSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
LABEL_14:
  v20.receiver = self;
  v20.super_class = ICDocCamReorderingThumbnailCollectionViewLayout;
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)&v20 invalidateLayoutWithContext:v4];
}

- (double)horizontalContentOffsetAdjustmentForItem:(unint64_t)a3
{
  v3 = 0.0;
  if (a3)
  {
    v6 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
    v7 = [v6 count];

    if (v7 > a3)
    {
      v8 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
      v9 = [v8 objectAtIndexedSubscript:0];

      v10 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
      v11 = [v10 objectAtIndexedSubscript:a3];

      [v11 frame];
      v13 = v12 * 0.5;
      [v9 frame];
      v3 = v13 - v14 * 0.5;
    }
  }

  return v3;
}

- (double)horizontalContentOffsetForItem:(unint64_t)a3
{
  v5 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
  v6 = [v5 count];

  v7 = 0.0;
  if (v6 > a3)
  {
    v8 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
    v9 = [v8 objectAtIndexedSubscript:a3];

    [v9 frame];
    v11 = v10;
    [(ICDocCamReorderingThumbnailCollectionViewLayout *)self leftMargin];
    v13 = v11 - v12;
    [(ICDocCamReorderingThumbnailCollectionViewLayout *)self horizontalContentOffsetAdjustmentForItem:a3];
    v7 = v14 + v13;
  }

  return v7;
}

- (void)setContentOffsetForItem:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
  v8 = [v7 count];

  if (v8 > a3)
  {
    v9 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self collectionView];
    [v9 contentOffset];
    v11 = v10;

    [(ICDocCamReorderingThumbnailCollectionViewLayout *)self horizontalContentOffsetForItem:a3];
    v13 = v12;
    v14 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self collectionView];
    [v14 setContentOffset:v4 animated:{v13, v11}];
  }
}

- (void)setCurrentItem:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
  v8 = [v7 count];

  if (v8 > a3)
  {
    if (self->_currentItem != a3 || [(ICDocCamReorderingThumbnailCollectionViewLayout *)self isScrubbing]|| [(ICDocCamReorderingThumbnailCollectionViewLayout *)self isUndergoingOrientationChange])
    {
      self->_isScrubbing = 0;
      self->_currentItem = a3;
      [(ICDocCamReorderingThumbnailCollectionViewLayout *)self invalidateLayout];
      if (v4)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __75__ICDocCamReorderingThumbnailCollectionViewLayout_setCurrentItem_animated___block_invoke;
        v13[3] = &unk_278F92CD8;
        v13[4] = self;
        v13[5] = a3;
        [MEMORY[0x277D75D18] animateWithDuration:v13 animations:0.25];
        return;
      }

      v9 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self collectionView];
      [v9 layoutIfNeeded];

      v10 = self;
      v11 = a3;
      v12 = 0;
    }

    else
    {
      v10 = self;
      v11 = a3;
      v12 = v4;
    }

    [(ICDocCamReorderingThumbnailCollectionViewLayout *)v10 setContentOffsetForItem:v11 animated:v12];
  }
}

uint64_t __75__ICDocCamReorderingThumbnailCollectionViewLayout_setCurrentItem_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 layoutIfNeeded];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 setContentOffsetForItem:v4 animated:0];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  y = a3.y;
  x = a3.x;
  if (![(ICDocCamReorderingThumbnailCollectionViewLayout *)self movingItem:a3.x])
  {
    [(ICDocCamReorderingThumbnailCollectionViewLayout *)self leftMargin];
    v8 = v7;
    v9 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
    v10 = [v9 count];

    if (v10)
    {
      v34 = y;
      v11 = 0;
      v12 = x + v8;
      while (1)
      {
        v13 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
        v14 = [v13 objectAtIndexedSubscript:v11];

        [v14 frame];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemSpacing];
        v24 = -v23;
        v36.origin.x = v16;
        v36.origin.y = v18;
        v36.size.width = v20;
        v36.size.height = v22;
        v37 = CGRectInset(v36, v24, 0.0);
        v25 = v37.origin.x;
        v26 = v37.origin.y;
        width = v37.size.width;
        height = v37.size.height;
        [v14 size];
        v30 = v12 + v29 * 0.5;
        v38.origin.x = v25;
        v38.origin.y = v26;
        v38.size.width = width;
        v38.size.height = height;
        if (v30 >= CGRectGetMinX(v38))
        {
          v39.origin.x = v25;
          v39.origin.y = v26;
          v39.size.width = width;
          v39.size.height = height;
          if (v30 < CGRectGetMaxX(v39))
          {
            break;
          }
        }

        if (v10 == ++v11)
        {
          goto LABEL_9;
        }
      }

      [(ICDocCamReorderingThumbnailCollectionViewLayout *)self horizontalContentOffsetForItem:v11];
      x = v31;

LABEL_9:
      y = v34;
    }
  }

  v32 = x;
  v33 = y;
  result.y = v33;
  result.x = v32;
  return result;
}

- (void)updateLayoutCacheIfNecessary
{
  if ([(ICDocCamReorderingThumbnailCollectionViewLayout *)self layoutCacheIsValid])
  {
    return;
  }

  v3 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self collectionView];
  [v3 bounds];
  v64 = v4;
  v6 = v5;

  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self topBottomMargins];
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setItemHeight:v6 + v7 * -2.0];
  v8 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self collectionView];
  v9 = [v8 numberOfItemsInSection:0];

  v10 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self imageSizeCache];
  v11 = v10;
  if (v10 && [v10 count] == v9)
  {
    v65 = v11;
  }

  else
  {
    v65 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];

    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v13 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self delegate];
        v14 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self collectionView];
        [v13 collectionView:v14 imageSizeAtIndex:i];
        v16 = v15;
        v18 = v17;

        v19 = [MEMORY[0x277CCAE60] valueWithCGSize:{v16, v18}];
        [v65 addObject:v19];
      }
    }

    [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setImageSizeCache:v65];
  }

  if (v9 < 3)
  {
    v26 = 0;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self currentItem];
    [(ICDocCamReorderingThumbnailCollectionViewLayout *)self currentInterPageScrollPosition];
    if (v21 != 0.0)
    {
      [(ICDocCamReorderingThumbnailCollectionViewLayout *)self currentInterPageScrollPosition];
      v23 = v22;
      v24 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self currentItem];
      if (v23 >= 0.0)
      {
        v25 = v24 + 1;
      }

      else
      {
        v25 = v24 - 1;
      }

      v63 = v25;
      v26 = 1;
      goto LABEL_18;
    }

    v26 = 0;
  }

  v63 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self currentInterPageScrollPosition];
  if (v27 >= 0.0)
  {
    v28 = v27;
  }

  else
  {
    v28 = -v27;
  }

  if (v26)
  {
    v29 = 1.0 - v28;
  }

  else
  {
    v29 = 1.0;
  }

  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self topBottomMargins];
  v31 = v30;
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemHeight];
  v33 = v32;
  v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
  if (v9)
  {
    v35 = 0;
    v36 = v9 - 1;
    v37 = 0.0;
    do
    {
      v38 = MEMORY[0x277D75308];
      v39 = [MEMORY[0x277CCAA70] indexPathForItem:v35 inSection:0];
      v40 = [v38 layoutAttributesForCellWithIndexPath:v39];

      v41 = [v65 objectAtIndexedSubscript:v35];
      [v41 CGSizeValue];
      v43 = v42;
      v45 = v44;

      [objc_opt_class() effectiveAspectRatioForSize:{v43, v45}];
      v47 = v46;
      [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemHeight];
      v33 = v48;
      v49 = round(v47 * v48);
      if (v35)
      {
        [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemSpacing];
        v37 = v37 + v50;
        if (v20 == v35)
        {
          [(ICDocCamReorderingThumbnailCollectionViewLayout *)self extraSpacingForCurrentItem];
          v37 = v37 + v29 * v51;
        }

        else if (v63 == v35)
        {
          [(ICDocCamReorderingThumbnailCollectionViewLayout *)self extraSpacingForCurrentItem];
          v37 = v37 + v28 * v53;
        }
      }

      else
      {
        [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setLeftMargin:round((v64 - v49) * 0.5)];
        [(ICDocCamReorderingThumbnailCollectionViewLayout *)self leftMargin];
        v37 = v52;
      }

      if (v9 == 1)
      {
        [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setRightMargin:round((v64 - v49) * 0.5)];
      }

      [(ICDocCamReorderingThumbnailCollectionViewLayout *)self topBottomMargins];
      v31 = v54;
      [v40 setFrame:{v37, v54, v49, v33}];
      [v40 setSize:{v49, v33}];
      if (v35 < v36)
      {
        v37 = v49 + v37;
        v55 = v29;
        if (v20 == v35 || (v55 = v28, v63 == v35))
        {
          [(ICDocCamReorderingThumbnailCollectionViewLayout *)self extraSpacingForCurrentItem];
          v37 = v37 + v56 * v55;
        }
      }

      [v34 addObject:v40];

      ++v35;
      --v9;
    }

    while (v9);
  }

  else
  {
    v49 = 0.0;
    v37 = 0.0;
  }

  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setItemAttributes:v34];
  v67.origin.x = v37;
  v67.origin.y = v31;
  v67.size.width = v49;
  v67.size.height = v33;
  MaxX = CGRectGetMaxX(v67);
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self rightMargin];
  v59 = MaxX + v58;
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemHeight];
  v61 = v60;
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self topBottomMargins];
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setCachedContentSize:v59, v61 + v62 * 2.0];
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setLayoutCacheIsValid:1];
}

- (CGSize)collectionViewContentSize
{
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self updateLayoutCacheIfNecessary];

  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self cachedContentSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__ICDocCamReorderingThumbnailCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
  v10[3] = &__block_descriptor_64_e49_B32__0__UICollectionViewLayoutAttributes_8Q16_B24l;
  *&v10[4] = x;
  *&v10[5] = y;
  *&v10[6] = width;
  *&v10[7] = height;
  v8 = [v7 dc_objectsPassingTest:v10];

  return v8;
}

BOOL __85__ICDocCamReorderingThumbnailCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(void *a1, void *a2)
{
  [a2 frame];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];

  return CGRectIntersectsRect(*&v3, *&v7);
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    v10 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamReorderingThumbnailCollectionViewLayout *)v4 layoutAttributesForItemAtIndexPath:v10];
    }

    v9 = 0;
  }

  else
  {
    v8 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self itemAttributes];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
  }

  return v9;
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ICDocCamReorderingThumbnailCollectionViewLayout;
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)&v20 prepareForCollectionViewUpdates:v4];
  v5 = [MEMORY[0x277CBEB18] array];
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setDeleteIndexPaths:v5];

  v6 = [MEMORY[0x277CBEB18] array];
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setInsertIndexPaths:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 updateAction] == 1)
        {
          v13 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self deleteIndexPaths];
          v14 = [v12 indexPathBeforeUpdate];
        }

        else
        {
          if ([v12 updateAction])
          {
            continue;
          }

          v13 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self insertIndexPaths];
          v14 = [v12 indexPathAfterUpdate];
        }

        v15 = v14;
        [v13 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = ICDocCamReorderingThumbnailCollectionViewLayout;
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)&v3 finalizeCollectionViewUpdates];
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setDeleteIndexPaths:0];
  [(ICDocCamReorderingThumbnailCollectionViewLayout *)self setInsertIndexPaths:0];
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICDocCamReorderingThumbnailCollectionViewLayout;
  v5 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)&v9 initialLayoutAttributesForAppearingItemAtIndexPath:v4];
  v6 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self insertIndexPaths];
  v7 = [v6 containsObject:v4];

  if ((v7 & 1) == 0)
  {
    if (!v5)
    {
      v5 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v4];
    }

    [v5 setAlpha:1.0];
  }

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICDocCamReorderingThumbnailCollectionViewLayout;
  v5 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)&v9 finalLayoutAttributesForDisappearingItemAtIndexPath:v4];
  v6 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self deleteIndexPaths];
  v7 = [v6 containsObject:v4];

  if ((v7 & 1) == 0)
  {
    if (!v5)
    {
      v5 = [(ICDocCamReorderingThumbnailCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v4];
    }

    [v5 setAlpha:1.0];
  }

  return v5;
}

- (ICDocCamThumbnailViewLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)cachedContentSize
{
  width = self->_cachedContentSize.width;
  height = self->_cachedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutAttributesForItemAtIndexPath:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 itemAttributes];
  v6 = 138412546;
  v7 = a1;
  v8 = 2048;
  v9 = [v5 count];
  _os_log_error_impl(&dword_249253000, a3, OS_LOG_TYPE_ERROR, "Index out of bounds: %@, %ld", &v6, 0x16u);
}

@end