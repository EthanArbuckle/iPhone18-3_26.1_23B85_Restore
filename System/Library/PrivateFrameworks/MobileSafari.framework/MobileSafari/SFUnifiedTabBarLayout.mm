@interface SFUnifiedTabBarLayout
+ (unint64_t)pinnedItemLimitForItemArrangement:(id)a3 tabBarWidth:(double)a4 barMetrics:(id)a5 standalone:(BOOL)a6;
- ($EA69BA523A51C5E357A2975D52DCD9F6)_scrollSlowingLayoutInfoForItemAtIndex:(SEL)a3 withLayoutInfo:(unint64_t)a4 activeItemFrame:(id *)a5;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_cornerRadiiForItem:(id)a3;
- (BOOL)_activeItemIsPinned;
- (BOOL)_itemAtIndexIsPinned:(unint64_t)a3;
- (BOOL)_shouldUseContentOpacityForTransitioningItem:(id)a3 inArrangement:(id)a4;
- (BOOL)centersActiveItemWhenExpanded;
- (BOOL)horizontalSpaceIsExtremelyConstrained;
- (BOOL)isCurrentlyScrollable;
- (BOOL)showsPinnedItemsSeparator;
- (CGPoint)_contentOffsetForScrollingToRegion:(id)a3 insets:(UIEdgeInsets)a4;
- (CGPoint)_midpointForCenteredContentInScrollView;
- (CGPoint)contentOffsetForScrollingToDroppingItems;
- (CGPoint)contentOffsetForScrollingToItemAtIndex:(unint64_t)a3;
- (CGPoint)midpointForCenteredContent;
- (CGRect)_activeItemPinnableArea;
- (CGRect)_adjustedActiveItemFrame:(CGRect)a3 pinActiveItem:(BOOL)a4 squishActiveItem:(BOOL)a5 centerExpandedItem:(BOOL)a6;
- (CGRect)_contentArea;
- (CGRect)_frameForItem:(id)a3 withOffset:(double)a4 pinActiveItem:(BOOL)a5 squishActiveItem:(BOOL)a6 centerExpandedItem:(BOOL)a7;
- (CGRect)_safeArea;
- (CGRect)_slideFrame:(CGRect)a3 forItemAtIndex:(unint64_t)a4 pinnedActiveItemOffset:(double)a5;
- (CGRect)_unpinnedFrameForItemAtIndex:(unint64_t)a3;
- (CGRect)_unpinnedItemSafeArea;
- (CGRect)frameForItem:(id)a3;
- (CGRect)frameForPreviewingItem:(id)a3 pinned:(BOOL)a4;
- (CGRect)pinnedItemDropArea;
- (CGRect)pinnedItemsSeparatorFrame;
- (CGSize)contentSize;
- (NSArray)visibleItems;
- (NSIndexSet)nonVisibleItemIndexes;
- (NSIndexSet)nonVisibleSectionIndexes;
- (NSIndexSet)visibleItemIndexes;
- (SFUnifiedTabBarLayout)initWithItemArrangement:(id)a3 configuration:(id)a4;
- (ScrollSlowingInfo)_scrollSlowingInfoForItemAtIndex:(SEL)a3 activeItemWidth:(unint64_t)a4;
- (UIEdgeInsets)_insetsForActiveItemPinnableArea;
- (UIEdgeInsets)_insetsForScrollingToItemAtIndex:(unint64_t)a3;
- (UIEdgeInsets)autoScrollTouchInsets;
- (double)_baseZPositionForItem:(id)a3;
- (double)_effectiveMaximumActiveItemWidth;
- (double)_effectiveMinimumActiveItemWidth;
- (double)_insetToRevealNextItem;
- (double)_insetToRevealNextSection;
- (double)_maximumItemSpacing;
- (double)_minimumHorizontalOffsetForOccludedItems;
- (double)_minimumItemSpacing;
- (double)_offsetForItemAtIndex:(unint64_t)a3;
- (double)_offsetForItemAtIndex:(unint64_t)a3 inItems:(id)a4;
- (double)_offsetForPinnedItemAtIndex:(unint64_t)a3;
- (double)_pinnedActiveItemOffsetSquishingActiveItem:(BOOL)a3 activeItemFrame:(CGRect *)a4;
- (double)_separatorOutset;
- (double)_spacingAfterItem:(id)a3;
- (double)_spacingBeforeItem:(id)a3;
- (double)_widthForItem:(id)a3;
- (double)pinnedItemsSeparatorOpacity;
- (id)_sectionsForItemsAtIndexes:(id)a3;
- (id)indexesOfItemsVisibleInRect:(CGRect)a3;
- (id)itemAtPoint:(CGPoint)a3;
- (id)itemClosestToPoint:(CGPoint)a3 passingTest:(id)a4;
- (id)itemsVisibleInRect:(CGRect)a3;
- (id)sectionsVisibleInRect:(CGRect)a3;
- (unint64_t)_indexOfItemClosestToPoint:(CGPoint)a3 passingTest:(id)a4;
- (unint64_t)_visibleSeparatorEdgesForItemAtIndex:(unint64_t)a3;
- (unint64_t)indexOfCenterItem;
- (void)_determineOffsetForCenteringExpandedItem;
- (void)_enumerateFramesForItemsAtIndexes:(id)a3 pinActiveItem:(BOOL)a4 usingBlock:(id)a5;
- (void)_updateContentSize;
- (void)_updateItemWidths;
- (void)_updateSquishedActiveItemWidth;
- (void)enumerateFinalLayoutForDisappearingItemsAtIndexes:(id)a3 withTransitionInfo:(id)a4 usingBlock:(id)a5;
- (void)enumerateFinalLayoutForDisappearingSectionBackgroundsAtIndexes:(id)a3 withTransitionInfo:(id)a4 usingBlock:(id)a5;
- (void)enumerateInitialLayoutForAppearingItemsAtIndexes:(id)a3 withTransitionInfo:(id)a4 usingBlock:(id)a5;
- (void)enumerateInitialLayoutForAppearingSectionBackgroundsAtIndexes:(id)a3 withTransitionInfo:(id)a4 usingBlock:(id)a5;
- (void)enumerateLayoutForItemsAtIndexes:(id)a3 usingBlock:(id)a4;
- (void)enumerateLayoutForSectionBackgroundsAtIndexes:(id)a3 usingBlock:(id)a4;
- (void)setBarMetrics:(id)a3;
- (void)setItemAtIndex:(unint64_t)a3 isOccluded:(BOOL)a4;
- (void)setItemAtIndex:(unint64_t)a3 isVisible:(BOOL)a4;
- (void)setStyle:(int64_t)a3;
- (void)updateItemSizes;
- (void)updateItemSizesIfNeeded;
@end

@implementation SFUnifiedTabBarLayout

- (SFUnifiedTabBarLayout)initWithItemArrangement:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v31.receiver = self;
  v31.super_class = SFUnifiedTabBarLayout;
  v9 = [(SFUnifiedTabBarLayout *)&v31 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemArrangement, a3);
    v11 = [v8 scrollView];
    scrollView = v10->_scrollView;
    v10->_scrollView = v11;

    v13 = [v8 barMetrics];
    barMetrics = v10->_barMetrics;
    v10->_barMetrics = v13;

    v10->_style = [v8 style];
    [v8 midpointForCenteredContent];
    v10->_midpointForCenteredContent.x = v15;
    v10->_midpointForCenteredContent.y = v16;
    v10->_standalone = [v8 isStandalone];
    v10->_flipped = [v8 flipped];
    v10->_shouldSlideInNewTrailingTab = [v8 shouldSlideInNewTrailingTab];
    [v8 visibleRectOverride];
    v10->_visibleRectOverride.origin.x = v17;
    v10->_visibleRectOverride.origin.y = v18;
    v10->_visibleRectOverride.size.width = v19;
    v10->_visibleRectOverride.size.height = v20;
    v21 = [v8 style];
    v22 = 1.0;
    if (!v21)
    {
      +[SFUnifiedBarMetrics transitioningItemScale];
    }

    v10->_transitioningItemScale = v22;
    v23 = [MEMORY[0x1E696AD50] indexSet];
    visibleItemIndexes = v10->_visibleItemIndexes;
    v10->_visibleItemIndexes = v23;

    v25 = [MEMORY[0x1E696AD50] indexSet];
    occludedItemIndexes = v10->_occludedItemIndexes;
    v10->_occludedItemIndexes = v25;

    v27 = [v8 preferredWidthForItem];
    preferredWidthProvider = v10->_preferredWidthProvider;
    v10->_preferredWidthProvider = v27;

    [(SFUnifiedTabBarLayout *)v10 updateItemSizesIfNeeded];
    [(SFUnifiedTabBarLayout *)v10 _determineOffsetForCenteringExpandedItem];
    v29 = v10;
  }

  return v10;
}

- (void)setBarMetrics:(id)a3
{
  v5 = a3;
  if (self->_barMetrics != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_barMetrics, a3);
    [(SFUnifiedTabBarLayout *)self updateItemSizes];
    v5 = v6;
  }
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(SFUnifiedTabBarLayout *)self updateItemSizes];
  }
}

- (void)updateItemSizesIfNeeded
{
  [(UIScrollView *)self->_scrollView frame];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->_scrollView contentOffset];
  if (self->_lastLayoutSize.width == v4 && self->_lastLayoutSize.height == v6)
  {
    x = self->_lastLayoutMidpoint.x;
    y = self->_lastLayoutMidpoint.y;
    v12 = self->_midpointForCenteredContent.x;
    v13 = self->_midpointForCenteredContent.y;
    v14 = self->_lastLayoutContentOffset.y != v8 || self->_lastLayoutContentOffset.x != v7;
    self->_lastLayoutSize.width = v4;
    self->_lastLayoutSize.height = v6;
    self->_lastLayoutMidpoint = self->_midpointForCenteredContent;
    self->_lastLayoutContentOffset.x = v7;
    self->_lastLayoutContentOffset.y = v8;
    if (x == v12 && y == v13)
    {
      if (!v14)
      {
        return;
      }
    }

    else
    {
      [(SFUnifiedTabBarLayout *)self _updateContentSize];
      if (!v14)
      {
        return;
      }
    }
  }

  else
  {
    self->_lastLayoutSize.width = v4;
    self->_lastLayoutSize.height = v6;
    self->_lastLayoutMidpoint = self->_midpointForCenteredContent;
    self->_lastLayoutContentOffset.x = v7;
    self->_lastLayoutContentOffset.y = v8;
    [(SFUnifiedTabBarLayout *)self _updateItemWidths];
    [(SFUnifiedTabBarLayout *)self _updateContentSize];
  }

  [(SFUnifiedTabBarLayout *)self _updateSquishedActiveItemWidth];
}

- (void)updateItemSizes
{
  [(SFUnifiedTabBarLayout *)self _updateItemWidths];
  [(SFUnifiedTabBarLayout *)self _updateContentSize];

  [(SFUnifiedTabBarLayout *)self _updateSquishedActiveItemWidth];
}

- (void)_updateItemWidths
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0.0;
    if ([(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allowsScrollingPinnedItems])
    {
      v6 = 0;
    }

    else
    {
      v7 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement pinnedItems];
      v6 = [v7 count];

      if (v6)
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v8 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement pinnedItems];
        v9 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v48;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v48 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v47 + 1) + 8 * i);
              if (!self->_standalone)
              {
                v14 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];

                if (v13 == v14)
                {
                  continue;
                }
              }

              [(SFUnifiedTabBarLayout *)self _widthForItem:v13];
              v5 = v5 + v15;
            }

            v10 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
          }

          while (v10);
        }
      }
    }

    v16 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
    if (v16 && !self->_standalone)
    {
      v4 -= [(SFUnifiedTabBarLayout *)self _activeItemIsPinned]^ 1;
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    [(SFUnifiedTabBarLayout *)self _safeArea];
    v18 = CGRectGetWidth(v54) - v5;
    [(SFUnifiedTabBarLayout *)self _maximumItemSpacing];
    v20 = v19;
    if (self->_standalone)
    {
      v21 = v18;
    }

    else
    {
      v21 = 149.0;
    }

    [(SFUnifiedTabBarLayout *)self _minimumItemSpacing];
    v42 = v22;
    [(SFUnifiedTabBarMetrics *)self->_barMetrics minimumInactiveItemWidth];
    v24 = v23;
    if ([(SFUnifiedTabBarLayout *)self horizontalSpaceIsExtremelyConstrained])
    {
      if (shouldSquishActiveItem_onceToken != -1)
      {
        [SFUnifiedTabBarLayout _updateItemWidths];
      }

      if (!shouldSquishActiveItem_shouldSquishActiveItem)
      {
        v24 = 36.0;
      }
    }

    v25 = v4 - v6;
    self->_itemSpacing = v20;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v26 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
    v27 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
    v28 = 0.0;
    if (v27)
    {
      v29 = v27;
      v30 = *v44;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v44 != v30)
          {
            objc_enumerationMutation(v26);
          }

          [(SFUnifiedTabBarLayout *)self _spacingAfterItem:*(*(&v43 + 1) + 8 * j)];
          v28 = v28 + v32;
        }

        v29 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v29);
    }

    self->_activeItemWidth = v18 - v25 * v21 - v28;
    [(SFUnifiedTabBarLayout *)self _effectiveMinimumActiveItemWidth];
    v34 = v33;
    [(SFUnifiedTabBarLayout *)self _effectiveMaximumActiveItemWidth];
    v36 = v35;
    v37 = fmax(v34, fmin(v35, self->_activeItemWidth));
    self->_activeItemWidth = v37;
    self->_activeItemWidthWhenNotExpanded = v37;
    v38 = v18 - v37;
    if (v17)
    {
      v39 = v38;
    }

    else
    {
      v39 = v18;
    }

    v40 = fmax(fmin(_SFUninterpolate(v39, v28 + v25 * v24, v28 + v25 * v21), 1.0), 0.0);
    self->_itemSpacing = _SFInterpolate(v42, v20, v40);
    v41 = _SFInterpolate(v24, v21, v40);
    self->_itemWidth = v41;
    if (self->_standalone)
    {
      self->_activeItemWidth = v41;
      self->_activeItemWidthWhenNotExpanded = v41;
    }

    self->_scrollSlowingInset = fmin(v41 + self->_itemSpacing, v39 * 0.33);
    if ([(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIsExpanded])
    {
      if ([(SFUnifiedTabBarLayout *)self centersActiveItemWhenExpanded])
      {
        self->_activeItemWidth = v36;
      }
    }
  }
}

- (void)_updateContentSize
{
  v3 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
  v4 = [v3 count];

  if (v4)
  {
    self->_leadingItemOffset = 0.0;
    v5 = 0.0;
    if (![(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allowsScrollingPinnedItems])
    {
      v6 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement pinnedItems];
      v7 = [v6 count];

      if (v7)
      {
        [(SFUnifiedTabBarLayout *)self _offsetForPinnedItemAtIndex:v7];
        v5 = v8;
      }
    }

    self->_pinnedItemsWidth = v5;
    [(SFUnifiedTabBarLayout *)self _offsetForItemAtIndex:v4];
    v10 = v9;
    v11 = v9 + self->_pinnedItemsWidth;
    [(SFUnifiedTabBarLayout *)self _safeArea];
    Width = CGRectGetWidth(v19);
    self->_contentSize.width = fmax(v11, Width);
    self->_contentSize.height = 0.0;
    pinnedItemsWidth = self->_pinnedItemsWidth;
    v14 = fmax(self->_midpointForCenteredContent.x + v10 * -0.5, pinnedItemsWidth);
    [(UIScrollView *)self->_scrollView adjustedContentInset];
    v16 = v14 - v15;
    v17 = Width - v11 - (v14 - v15);
    if (self->_flipped)
    {
      v16 = v17;
    }

    self->_leadingItemOffset = fmax(pinnedItemsWidth, fmin(Width + pinnedItemsWidth - v11, v16));
    self->_contentIsCentered = v11 < Width;
    if (v11 < Width)
    {
      LOBYTE(v18) = 0;
    }

    else
    {
      v18 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIsExpanded];
      if (v18)
      {
        LOBYTE(v18) = [(SFUnifiedTabBarLayout *)self centersActiveItemWhenExpanded];
      }
    }

    self->_expandedItemIsCentered = v18;
  }
}

- (void)_updateSquishedActiveItemWidth
{
  if ([(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIsExpanded])
  {
    goto LABEL_6;
  }

  if (shouldSquishActiveItem_onceToken != -1)
  {
    [SFUnifiedTabBarLayout _updateSquishedActiveItemWidth];
  }

  if ((shouldSquishActiveItem_shouldSquishActiveItem & 1) == 0)
  {
LABEL_6:
    activeItemWidth = self->_activeItemWidth;
  }

  else
  {
    [(SFUnifiedTabBarLayout *)self _pinnedActiveItemOffsetSquishingActiveItem:0 activeItemFrame:0];
    activeItemWidth = fmax(self->_itemWidth, fmin(self->_activeItemWidth, self->_activeItemWidth - fabs(v3)));
  }

  self->_squishedActiveItemWidth = activeItemWidth;
}

- (void)_determineOffsetForCenteringExpandedItem
{
  if (self->_expandedItemIsCentered)
  {
    [(SFUnifiedTabBarLayout *)self _unpinnedFrameForItemAtIndex:[(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIndex]];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(SFUnifiedTabBarLayout *)self _adjustedActiveItemFrame:1 pinActiveItem:0 squishActiveItem:0 centerExpandedItem:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(SFUnifiedTabBarLayout *)self _adjustedActiveItemFrame:0 pinActiveItem:0 squishActiveItem:1 centerExpandedItem:v4, v6, v8, v10];
    MinX = CGRectGetMinX(v20);
    v21.origin.x = v12;
    v21.origin.y = v14;
    v21.size.width = v16;
    v21.size.height = v18;
    self->_offsetForCenteringExpandedItem = MinX - CGRectGetMinX(v21);
  }
}

- (void)enumerateLayoutForItemsAtIndexes:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = *(MEMORY[0x1E695F050] + 16);
    v24 = *MEMORY[0x1E695F050];
    v25 = v8;
    [(SFUnifiedTabBarLayout *)self _pinnedActiveItemOffsetSquishingActiveItem:1 activeItemFrame:&v24];
    v10 = v9;
    [(SFUnifiedTabBarLayout *)self _contentArea];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__SFUnifiedTabBarLayout_enumerateLayoutForItemsAtIndexes_usingBlock___block_invoke;
    v15[3] = &unk_1E721CCF8;
    v15[4] = self;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v10;
    v22 = v24;
    v23 = v25;
    v16 = v7;
    [(SFUnifiedTabBarLayout *)self _enumerateFramesForItemsAtIndexes:v6 pinActiveItem:1 usingBlock:v15];
  }
}

void __69__SFUnifiedTabBarLayout_enumerateLayoutForItemsAtIndexes_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a2;
  [*(a1 + 32) _cornerRadiiForItem:v13];
  v15 = v14;
  v17 = v16;
  [*(*(a1 + 32) + 8) bounds];
  v106.origin.x = v18;
  v106.origin.y = v19;
  v106.size.width = v20;
  v106.size.height = v21;
  v105.origin.x = a4;
  v105.origin.y = a5;
  v105.size.width = a6;
  v105.size.height = a7;
  v22 = CGRectIntersectsRect(v105, v106);
  v23 = _SFFlipRectInCoordinateSpace(*(*(a1 + 32) + 16), a4, a5, a6, a7, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [*(a1 + 32) _zPositionForItem:v13];
  v31 = v30;
  v32 = [*(a1 + 32) _visibleSeparatorEdgesForItemAtIndex:a3];
  [*(a1 + 32) _separatorOutset];
  v34 = v33;
  v35 = *(a1 + 32);
  if (v35[200])
  {
    [v35 _slideFrame:a3 forItemAtIndex:v23 pinnedActiveItemOffset:{v25, v27, v29, *(a1 + 80)}];
    v23 = v36;
    v25 = v37;
    v27 = v38;
    v29 = v39;
    v35 = *(a1 + 32);
  }

  *v83 = v23;
  *&v83[1] = v25;
  *&v83[2] = v27;
  *&v83[3] = v29;
  __asm { FMOV            V0.2D, #1.0 }

  v84 = _Q0;
  v85 = v31;
  v86 = v22;
  *v88 = 0;
  v87 = 0;
  *&v88[7] = 0;
  *&v88[15] = 0x3FF0000000000000;
  *&v88[23] = v15;
  *&v88[31] = v17;
  *&v88[39] = 0;
  *&v88[47] = v32;
  *&v88[55] = v34;
  *&v88[63] = 0x3FF0000000000000;
  [v35 _scrollSlowingLayoutInfoForItemAtIndex:a3 withLayoutInfo:v83 activeItemFrame:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  v45 = v89;
  v46 = v90;
  v47 = v91;
  v48 = v92;
  v50 = v93;
  v49 = v94;
  v51 = v95;
  v52 = v96;
  v53 = v98;
  v81 = v100;
  v82 = v99;
  v54 = v101;
  v55 = v102;
  v79 = v104;
  v80 = v103;
  v56 = *(a1 + 32);
  *(v83 + 3) = *&v97[3];
  LODWORD(v83[0]) = *v97;
  v57 = [*(v56 + 232) activeItem];
  v58 = v57;
  if (v57 == v13)
  {
    v60 = [*(*(a1 + 32) + 232) revealsSquishedActiveItem];

    v59 = *(a1 + 32);
    if ((v60 & 1) == 0)
    {
      v53 = *(v59 + 104) - *(v59 + 120);
    }
  }

  else
  {

    v59 = *(a1 + 32);
  }

  v61 = [*(v59 + 232) activeItemIsExpanded];
  v62 = *(a1 + 32);
  if (v61 && (*(v62 + 224) & 1) == 0 && (*(v62 + 200) & 1) == 0)
  {
    v63 = [*(v62 + 232) activeItem];

    v62 = *(a1 + 32);
    if (v63 == v13)
    {
      [v62 _safeArea];
      v45 = v64;
      v46 = v65;
      v47 = v66;
      v48 = v67;
      v62 = *(a1 + 32);
    }

    else
    {
      v49 = v49 * *(v62 + 168);
      v50 = 0.0;
    }
  }

  v68 = _SFFlipRectInCoordinateSpace(*(v62 + 16), v45, v46, v47, v48, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = [v13 isDragging];
  v76 = *(a1 + 40);
  v77 = *(v76 + 16);
  v78 = v50 * 0.5;
  if (!v75)
  {
    v78 = v50;
  }

  v89 = v68;
  v90 = v70;
  v91 = v72;
  v92 = v74;
  v93 = v78;
  v94 = v49;
  v95 = v51;
  v96 = v52;
  *v97 = v83[0];
  *&v97[3] = *(v83 + 3);
  v98 = v53;
  v100 = v81;
  v99 = v82;
  v101 = v54;
  v102 = v55;
  v103 = v80;
  v104 = v79;
  v77(v76, v13, a3, &v89);
}

- (void)enumerateInitialLayoutForAppearingItemsAtIndexes:(id)a3 withTransitionInfo:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v9 distanceToScroll];
  v12 = v11;
  [(SFUnifiedTabBarLayout *)self _activeItemPinnableArea];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __104__SFUnifiedTabBarLayout_enumerateInitialLayoutForAppearingItemsAtIndexes_withTransitionInfo_usingBlock___block_invoke;
  v20[3] = &unk_1E721CD20;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v12 + v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v20[4] = self;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  [(SFUnifiedTabBarLayout *)self _enumerateFramesForItemsAtIndexes:v19 pinActiveItem:0 usingBlock:v20];
}

void __104__SFUnifiedTabBarLayout_enumerateInitialLayoutForAppearingItemsAtIndexes_withTransitionInfo_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a2;
  v14 = a4 - *(a1 + 64);
  v15 = [*(a1 + 32) _itemAtIndexIsPinned:a3];
  v16 = [*(*(a1 + 32) + 232) activeItem];

  if (v16 != v13 || (v15 & 1) != 0)
  {
    v21 = a7;
    rect = a6;
    v18 = a5;
  }

  else
  {
    v14 = pinFrame(v14, a5, a6, a7, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
    v18 = v17;
    rect = v19;
    v21 = v20;
    a4 = pinFrame(a4, a5, a6, a7, *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128));
    a5 = v22;
    a6 = v23;
    a7 = v24;
  }

  v39 = a4;
  if (!v15)
  {
    v27 = [v13 isDragging];
    v26 = *(a1 + 32);
    if (v27)
    {
      v25 = a5;
      goto LABEL_19;
    }

    if (*(v26 + 17) == 1)
    {
      v28 = [v26 isCurrentlyScrollable];
      v26 = *(a1 + 32);
      if ((v28 & 1) == 0)
      {
        v29 = [*(v26 + 232) items];
        if ([v29 count] - 1 == a3)
        {
          v30 = [*(a1 + 40) count];

          v26 = *(a1 + 32);
          if (v30 == 1)
          {
            v31 = *(v26 + 16);
            [v26 _safeArea];
            if (v31 == 1)
            {
              CGRectGetMinX(*&v32);
            }

            else
            {
              CGRectGetMaxX(*&v32);
            }

LABEL_18:
            v25 = a5;
            v26 = *(a1 + 32);
            goto LABEL_19;
          }
        }

        else
        {

          v26 = *(a1 + 32);
        }
      }
    }

    if ((*(v26 + 16) & 1) == 0)
    {
      v41.origin.x = v14;
      v41.origin.y = v18;
      v41.size.width = rect;
      v41.size.height = v21;
      CGRectGetWidth(v41);
    }

    goto LABEL_18;
  }

  v25 = a5;
  v26 = *(a1 + 32);
LABEL_19:
  [v26 _cornerRadiiForItem:v13];
  v36 = *(a1 + 32);
  v37 = [*(a1 + 48) nextLayout];
  v38 = [v37 itemArrangement];
  [v36 _shouldUseContentOpacityForTransitioningItem:v13 inArrangement:v38];

  [*(a1 + 32) _zPositionForItem:v13];
  [*(a1 + 32) _separatorOutset];
  (*(*(a1 + 56) + 16))(v39, v25, a6, a7);
}

- (void)enumerateFinalLayoutForDisappearingItemsAtIndexes:(id)a3 withTransitionInfo:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 previousLayout];
  v12 = [v11 itemArrangement];

  [v9 distanceToScroll];
  v14 = v13;

  [(SFUnifiedTabBarLayout *)self _activeItemPinnableArea];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __105__SFUnifiedTabBarLayout_enumerateFinalLayoutForDisappearingItemsAtIndexes_withTransitionInfo_usingBlock___block_invoke;
  v21[3] = &unk_1E721CD48;
  v24 = v14;
  v25 = v15 - v14;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v21[4] = self;
  v22 = v12;
  v23 = v8;
  v19 = v8;
  v20 = v12;
  [(SFUnifiedTabBarLayout *)self _enumerateFramesForItemsAtIndexes:v10 pinActiveItem:0 usingBlock:v21];
}

void __105__SFUnifiedTabBarLayout_enumerateFinalLayoutForDisappearingItemsAtIndexes_withTransitionInfo_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a2;
  v14 = a4 + *(a1 + 56);
  v15 = [*(a1 + 32) _itemAtIndexIsPinned:a3];
  v16 = [*(*(a1 + 32) + 232) activeItem];

  if (v16 != v13 || (v15 & 1) != 0)
  {
    [*(a1 + 32) _cornerRadiiForItem:{v13, *&a6}];
  }

  else
  {
    pinFrame(v14, a5, a6, a7, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
    [*(a1 + 32) _cornerRadiiForItem:{v13, v17}];
  }

  [*(a1 + 32) _shouldUseContentOpacityForTransitioningItem:v13 inArrangement:*(a1 + 40)];
  [*(a1 + 32) _zPositionForItem:v13];
  (*(*(a1 + 48) + 16))();
}

- (void)_enumerateFramesForItemsAtIndexes:(id)a3 pinActiveItem:(BOOL)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v8, "lastIndex") + 1}];
    [(SFUnifiedTabBarLayout *)self _contentArea];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v32[0] = 0;
    v32[1] = v32;
    v19 = self->_leadingItemOffset + self->_offsetForCenteringExpandedItem;
    v32[2] = 0x2020000000;
    *&v32[3] = v19;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    [(SFUnifiedTabBarLayout *)self _safeArea];
    v31[3] = CGRectGetMinX(v33);
    v20 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __84__SFUnifiedTabBarLayout__enumerateFramesForItemsAtIndexes_pinActiveItem_usingBlock___block_invoke;
    v21[3] = &unk_1E721CD70;
    v21[4] = self;
    v24 = v31;
    v25 = v32;
    v30 = a4;
    v26 = v12;
    v27 = v14;
    v28 = v16;
    v29 = v18;
    v22 = v8;
    v23 = v9;
    [v20 enumerateObjectsAtIndexes:v10 options:0 usingBlock:v21];

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v32, 8);
  }
}

void __84__SFUnifiedTabBarLayout__enumerateFramesForItemsAtIndexes_pinActiveItem_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = a2;
  if ([*(a1 + 32) _itemAtIndexIsPinned:a3])
  {
    v5 = 56;
  }

  else
  {
    v5 = 64;
  }

  v6 = *(*(*(a1 + v5) + 8) + 24);
  [*(a1 + 32) _widthForItem:v25];
  v8 = v7;
  [*(a1 + 32) _spacingAfterItem:v25];
  *(*(*(a1 + v5) + 8) + 24) = v8 + v9 + *(*(*(a1 + v5) + 8) + 24);
  [*(a1 + 32) _frameForItem:v25 withOffset:*(a1 + 104) pinActiveItem:objc_msgSend(*(*(a1 + 32) + 232) squishActiveItem:"revealsSquishedActiveItem") ^ 1 centerExpandedItem:{1, v6}];
  v14 = _SFFlipRectInCoordinateSpace(*(*(a1 + 32) + 16), v10, v11, v12, v13, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
  v18 = SFFloorRectToPixels(v14, v15, v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if ([*(a1 + 40) containsIndex:a3])
  {
    (*(*(a1 + 48) + 16))(v18, v20, v22, v24);
  }
}

- (CGRect)_unpinnedFrameForItemAtIndex:(unint64_t)a3
{
  v5 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
  v6 = [v5 objectAtIndexedSubscript:a3];

  [(SFUnifiedTabBarLayout *)self _offsetForItemAtIndex:a3];
  [(SFUnifiedTabBarLayout *)self _frameForItem:v6 withOffset:0 pinActiveItem:0 squishActiveItem:0 centerExpandedItem:?];
  v11 = SFFloorRectToPixels(v7, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_frameForItem:(id)a3 withOffset:(double)a4 pinActiveItem:(BOOL)a5 squishActiveItem:(BOOL)a6 centerExpandedItem:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v12 = a3;
  [(SFUnifiedTabBarLayout *)self _widthForItem:v12];
  v14 = v13;
  [(SFUnifiedBarMetrics *)self->_barMetrics itemHeight];
  v16 = v15;
  v17 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];

  v18 = 0.0;
  if (v17 == v12)
  {
    [(SFUnifiedTabBarLayout *)self _adjustedActiveItemFrame:v9 pinActiveItem:v8 squishActiveItem:v7 centerExpandedItem:a4, 0.0, v14, v16];
    a4 = v19;
    v14 = v20;
    v16 = v21;
  }

  v22 = a4;
  v23 = v14;
  v24 = v16;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v18;
  result.origin.x = v22;
  return result;
}

- (double)_pinnedActiveItemOffsetSquishingActiveItem:(BOOL)a3 activeItemFrame:(CGRect *)a4
{
  v5 = a3;
  v7 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
  v8 = 0.0;
  if (v7)
  {
    v9 = v7;
    v10 = [(SFUnifiedTabBarLayout *)self _activeItemIsPinned];

    if (!v10)
    {
      [(SFUnifiedTabBarLayout *)self _unpinnedFrameForItemAtIndex:[(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIndex]];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [(SFUnifiedTabBarLayout *)self _adjustedActiveItemFrame:1 pinActiveItem:v5 squishActiveItem:1 centerExpandedItem:?];
      if (a4)
      {
        a4->origin.x = v19;
        a4->origin.y = v20;
        a4->size.width = v21;
        a4->size.height = v22;
      }

      MinX = CGRectGetMinX(*&v19);
      v25.origin.x = v12;
      v25.origin.y = v14;
      v25.size.width = v16;
      v25.size.height = v18;
      return MinX - CGRectGetMinX(v25);
    }
  }

  return v8;
}

- (CGRect)_adjustedActiveItemFrame:(CGRect)a3 pinActiveItem:(BOOL)a4 squishActiveItem:(BOOL)a5 centerExpandedItem:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(SFUnifiedTabBarLayout *)self _activeItemIsPinned])
  {
    if (v6 && self->_expandedItemIsCentered)
    {
      [(SFUnifiedTabBarLayout *)self _midpointForCenteredContentInScrollView];
      v15 = v14;
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      x = x + v15 - CGRectGetMidX(v27);
    }

    else if (v8)
    {
      if (v7)
      {
        width = self->_squishedActiveItemWidth;
      }

      [(SFUnifiedTabBarLayout *)self _activeItemPinnableArea];
      x = pinFrame(x, y, width, height, v16, v17, v18, v19);
      y = v20;
      width = v21;
      height = v22;
    }
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)_slideFrame:(CGRect)a3 forItemAtIndex:(unint64_t)a4 pinnedActiveItemOffset:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIndex]> a4)
  {
    v12 = fmax(a5, 0.0);
LABEL_5:
    x = x + v12;
    goto LABEL_6;
  }

  if ([(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIndex]< a4)
  {
    v12 = fmin(a5, 0.0);
    goto LABEL_5;
  }

LABEL_6:
  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (ScrollSlowingInfo)_scrollSlowingInfoForItemAtIndex:(SEL)a3 activeItemWidth:(unint64_t)a4
{
  retstr->var1 = 0.0;
  p_var1 = &retstr->var1;
  retstr->var2 = 0;
  retstr->var3 = 0.0;
  v10 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
  v42 = [v10 objectAtIndexedSubscript:a4];

  [(SFUnifiedTabBarLayout *)self _insetToRevealNextItem];
  v12 = v11;
  [(SFUnifiedTabBarLayout *)self _insetToRevealNextSection];
  v14 = v13;
  v15 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
  v16 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIndex];
  v39 = [(SFUnifiedTabBarLayout *)self _activeItemIsPinned];
  v17 = v16 > a4 && v15 != 0;
  v41 = v17;
  v18 = v16 < a4 && v15 != 0;
  v19 = v16 - 1 == a4 && v15 != 0;
  v38 = v19;
  v20 = v16 + 1 == a4 && v15 != 0;
  v35 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIsFirstInSection];
  v36 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIsLastInSection];
  v37 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIsInFirstUnpinnedSection];
  v40 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIsInLastSection];
  v21 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement isItemAtIndexInFirstUnpinnedSection:a4];
  v22 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement isItemAtIndexInLastSection:a4];
  v23 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement isItemFirstInSection:v42];
  v24 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement isItemLastInSection:v42];
  v25 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement isItemInSameSectionAsActiveItem:v42];
  v26 = v42 != v15 && !v23 && !v24 && !v38 && !v20;
  retstr->var0 = v26;
  if (!v21 && (v27 = v14, !v37) || (v28 = 0.0, v27 = v12, !((v42 != v15) & ~v18 | (v35 || v39))))
  {
    v28 = v27 + 0.0;
    *p_var1 = v27 + 0.0;
  }

  if (!v39 && (v18 & 1) != 0)
  {
    v29 = v28 + a5;
    itemSpacing = 8.0;
    if (v25)
    {
      itemSpacing = self->_itemSpacing;
    }

    *p_var1 = v29 + itemSpacing;
  }

  retstr->var2 = v26;
  if (!v22 && !v40 || (v31 = 0.0, v14 = v12, !((v42 != v15) & ~v41 | (v36 || v39))))
  {
    v31 = v14 + 0.0;
    retstr->var3 = v14 + 0.0;
  }

  if (v41)
  {
    v32 = v31 + a5;
    v33 = 8.0;
    if (v25)
    {
      v33 = self->_itemSpacing;
    }

    retstr->var3 = v32 + v33;
  }

  return result;
}

- ($EA69BA523A51C5E357A2975D52DCD9F6)_scrollSlowingLayoutInfoForItemAtIndex:(SEL)a3 withLayoutInfo:(unint64_t)a4 activeItemFrame:(id *)a5
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  result = [(SFUnifiedTabBarLayout *)self _itemAtIndexIsPinned:?];
  if (result || (result = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIndex], result == a4) || ((v69 = 0u, v70 = 0u, v71.origin.x = x, v71.origin.y = y, v71.size.width = width, v71.size.height = height, [(SFUnifiedTabBarLayout *)self _scrollSlowingInfoForItemAtIndex:a4 activeItemWidth:CGRectGetWidth(v71)], [(SFUnifiedTabBarLayout *)self _unpinnedItemSafeArea], v16 = v15, v18 = v17 + 0.0, v20 = v19 + 0.0, v22 = v21 - (0.0 + 0.0), v24 = a5->var0.origin.x, v23 = a5->var0.origin.y, v72.size.width = a5->var0.size.width, v25 = a5->var0.size.height, v68 = v72.size.width, v72.origin.x = a5->var0.origin.x, v72.origin.y = v23, v72.size.height = v25, MinX = CGRectGetMinX(v72), v73.origin.x = v18, v73.origin.y = v20, v73.size.width = v22, v73.size.height = v16, v67 = MinX - CGRectGetMinX(v73), v74.origin.x = v18, v74.origin.y = v20, v74.size.width = v22, v74.size.height = v16, MaxX = CGRectGetMaxX(v74), v66 = v24, v75.origin.x = v24, v75.origin.y = v23, v75.size.width = v68, v75.size.height = v25, v28 = MaxX - CGRectGetMaxX(v75), v67 >= v28) ? (v29 = &v70) : (v29 = &v69), v67 >= v28 ? (v30 = v28) : (v30 = v67), v31 = self->_scrollSlowingInset, v30 >= v31))
  {
    v39 = *&a5->var11;
    *&retstr->var9.var1 = *&a5->var9.var1;
    *&retstr->var11 = v39;
    retstr->var13 = a5->var13;
    v40 = *&a5->var3;
    *&retstr->var1 = *&a5->var1;
    *&retstr->var3 = v40;
    v41 = *&a5->var8;
    *&retstr->var6 = *&a5->var6;
    *&retstr->var8 = v41;
    size = a5->var0.size;
    retstr->var0.origin = a5->var0.origin;
    retstr->var0.size = size;
  }

  else
  {
    v32 = *v29;
    v33 = _SFUninterpolate(v30, v31, v31 * -0.570796327);
    v34 = 1.0;
    if (v32 == 1)
    {
      v35 = _SFUninterpolate(v33, 1.0, 1.57079633);
      v34 = _SFInterpolate(1.0, 0.3, fmax(fmin(v35, 1.0), 0.0));
    }

    v65 = v34;
    v36 = CGRectGetHeight(a5->var0) * 0.5;
    if (v32 == 1 && v33 < 1.0)
    {
      scrollSlowingInset = self->_scrollSlowingInset;
      v44 = sin(v33 * 1.57079633);
      v45 = scrollSlowingInset - v30 - v44 * scrollSlowingInset;
      v46 = v36 - scrollSlowingInset * (1.0 - v44);
      v38 = v45;
      v47 = fmax(v46, 0.0);
      v36 = v36 - sqrt(v36 * v36 - v47 * v47);
    }

    else
    {
      if (v30 < 0.0)
      {
        v38 = -v30;
      }

      else
      {
        v38 = 0.0;
      }

      if (v30 >= 0.0)
      {
        v36 = -1.79769313e308;
      }
    }

    if (v67 >= v28)
    {
      v48 = v66 - v38;
      v50 = -1.0 - a4;
      v51 = 8;
    }

    else
    {
      v48 = v66 + v38;
      v49 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
      v50 = -([v49 count] - a4);

      v51 = 2;
    }

    v52 = _SFUninterpolate(0.4, 1.0, v33);
    v53 = _SFInterpolate(1.0, 3.0, fmax(fmin(v52, 1.0), 0.0));
    v54 = *&a5->var11;
    *&retstr->var9.var1 = *&a5->var9.var1;
    *&retstr->var11 = v54;
    retstr->var13 = a5->var13;
    v55 = *&a5->var3;
    *&retstr->var1 = *&a5->var1;
    *&retstr->var3 = v55;
    v56 = *&a5->var8;
    *&retstr->var6 = *&a5->var6;
    *&retstr->var8 = v56;
    v57 = a5->var0.size;
    retstr->var0.origin = a5->var0.origin;
    retstr->var0.size = v57;
    retstr->var0.origin.x = SFFloorRectToPixels(v48, v23, v68, v25);
    retstr->var0.origin.y = v58;
    retstr->var0.size.width = v59;
    retstr->var0.size.height = v60;
    retstr->var1 = v65 * retstr->var1;
    v61 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
    retstr->var3 = retstr->var3 + v50 / ([v61 count] + 1);

    v63 = v33 < 1.57079633 || v32 == 0;
    retstr->var4 = v63;
    result = [(SFUnifiedTabBarLayout *)self _minimumHorizontalOffsetForOccludedItems];
    retstr->var5 = v38 >= v64;
    retstr->var10 = v51;
    if (v33 > 0.75)
    {
      retstr->var11 = 0;
    }

    retstr->var13 = fmax(v53, v36);
  }

  return result;
}

- (double)_offsetForItemAtIndex:(unint64_t)a3
{
  v5 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allowsScrollingPinnedItems];
  leadingItemOffset = self->_leadingItemOffset;
  offsetForCenteringExpandedItem = self->_offsetForCenteringExpandedItem;
  itemArrangement = self->_itemArrangement;
  if (v5)
  {
    v9 = [(SFUnifiedTabBarItemArrangement *)itemArrangement items];
    [(SFUnifiedTabBarLayout *)self _offsetForItemAtIndex:a3 inItems:v9];
    v11 = v10;
  }

  else
  {
    v9 = [(SFUnifiedTabBarItemArrangement *)itemArrangement pinnedItems];
    v12 = a3 - [v9 count];
    v13 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement unpinnedItems];
    [(SFUnifiedTabBarLayout *)self _offsetForItemAtIndex:v12 inItems:v13];
    v11 = v14;
  }

  return leadingItemOffset + offsetForCenteringExpandedItem + v11;
}

- (double)_offsetForPinnedItemAtIndex:(unint64_t)a3
{
  v5 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement pinnedItems];
  [(SFUnifiedTabBarLayout *)self _offsetForItemAtIndex:a3 inItems:v5];
  v7 = v6;

  return v7;
}

- (double)_offsetForItemAtIndex:(unint64_t)a3 inItems:(id)a4
{
  v6 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__SFUnifiedTabBarLayout__offsetForItemAtIndex_inItems___block_invoke;
  v9[3] = &unk_1E721CD98;
  v9[5] = &v10;
  v9[6] = a3;
  v9[4] = self;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

double __55__SFUnifiedTabBarLayout__offsetForItemAtIndex_inItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 48) == a3)
  {
    *a4 = 1;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = a2;
    [v5 _widthForItem:v6];
    v8 = v7;
    [*(a1 + 32) _spacingAfterItem:v6];
    v10 = v9;

    v11 = *(*(a1 + 40) + 8);
    result = v8 + v10 + *(v11 + 24);
    *(v11 + 24) = result;
  }

  return result;
}

- (double)_widthForItem:(id)a3
{
  v4 = a3;
  preferredWidthProvider = self->_preferredWidthProvider;
  v6 = [(SFUnifiedTabBarLayout *)self barMetrics];
  [v6 itemHeight];
  v7 = preferredWidthProvider[2](preferredWidthProvider, v4);

  if (v7 == 0.0)
  {
    if (!self->_standalone && ([(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 == v4))
    {
      activeItemWidth = self->_activeItemWidth;
    }

    else if (-[SFUnifiedTabBarItemArrangement allowsScrollingPinnedItems](self->_itemArrangement, "allowsScrollingPinnedItems") || (-[SFUnifiedTabBarItemArrangement pinnedItems](self->_itemArrangement, "pinnedItems"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 containsObject:v4], v10, (v11 & 1) == 0))
    {
      activeItemWidth = self->_itemWidth;
    }

    else
    {
      activeItemWidth = 32.0;
    }
  }

  else
  {
    activeItemWidth = fmin(v7, fmax(self->_itemWidth, 200.0));
  }

  return activeItemWidth;
}

- (double)_spacingAfterItem:(id)a3
{
  v4 = a3;
  if (-[SFUnifiedTabBarLayout showsPinnedItemsSeparator](self, "showsPinnedItemsSeparator") && (-[SFUnifiedTabBarItemArrangement pinnedItems](self->_itemArrangement, "pinnedItems"), v5 = objc_claimAutoreleasedReturnValue(), [v5 lastObject], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6 == v4))
  {
    itemSpacing = self->_itemSpacing;
    +[SFUnifiedBarMetrics separatorWidth];
    v9 = v11 + itemSpacing * 2.0;
  }

  else
  {
    v7 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
    v8 = [v7 lastObject];

    if (v8 == v4)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 8.0;
      if (![(SFUnifiedTabBarItemArrangement *)self->_itemArrangement isItemLastInSection:v4])
      {
        v9 = self->_itemSpacing;
      }
    }
  }

  return v9;
}

- (double)_spacingBeforeItem:(id)a3
{
  v4 = a3;
  if (-[SFUnifiedTabBarLayout showsPinnedItemsSeparator](self, "showsPinnedItemsSeparator") && (-[SFUnifiedTabBarItemArrangement unpinnedItems](self->_itemArrangement, "unpinnedItems"), v5 = objc_claimAutoreleasedReturnValue(), [v5 firstObject], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6 == v4))
  {
    itemSpacing = self->_itemSpacing;
    +[SFUnifiedBarMetrics separatorWidth];
    v9 = v11 + itemSpacing * 2.0;
  }

  else
  {
    v7 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
    v8 = [v7 firstObject];

    if (v8 == v4)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 8.0;
      if (![(SFUnifiedTabBarItemArrangement *)self->_itemArrangement isItemFirstInSection:v4])
      {
        v9 = self->_itemSpacing;
      }
    }
  }

  return v9;
}

- (double)_baseZPositionForItem:(id)a3
{
  v4 = a3;
  v5 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];

  if (v5 == v4)
  {
    v6 = 2.0;
  }

  else
  {
    v6 = 0.0;
    if (![(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allowsScrollingPinnedItems])
    {
      v7 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement pinnedItems];
      v8 = [v7 containsObject:v4];

      if (v8)
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.0;
      }
    }
  }

  return v6;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_cornerRadiiForItem:(id)a3
{
  [(SFUnifiedBarMetrics *)self->_barMetrics itemCornerRadius];
  v4 = v3;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (unint64_t)indexOfCenterItem
{
  [(SFUnifiedTabBarLayout *)self _unpinnedItemSafeArea];
  UIRectGetCenter();

  return [(SFUnifiedTabBarLayout *)self _indexOfItemClosestToPoint:0 passingTest:?];
}

- (CGRect)frameForItem:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x4010000000;
  v21 = "";
  v22 = 0u;
  v23 = 0u;
  v5 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allItemIndexes];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__SFUnifiedTabBarLayout_frameForItem___block_invoke;
  v15[3] = &unk_1E721CDC0;
  v6 = v4;
  v16 = v6;
  v17 = &v18;
  [(SFUnifiedTabBarLayout *)self _enumerateFramesForItemsAtIndexes:v5 pinActiveItem:1 usingBlock:v15];

  v7 = v19[4];
  v8 = v19[5];
  v9 = v19[6];
  v10 = v19[7];

  _Block_object_dispose(&v18, 8);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

uint64_t __38__SFUnifiedTabBarLayout_frameForItem___block_invoke(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, _BYTE *a8)
{
  if (*(result + 32) == a2)
  {
    v8 = *(*(result + 40) + 8);
    v8[4] = a3;
    v8[5] = a4;
    v8[6] = a5;
    v8[7] = a6;
    *a8 = 1;
  }

  return result;
}

- (CGRect)frameForPreviewingItem:(id)a3 pinned:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    [(SFUnifiedTabBarLayout *)self frameForItem:v6];
  }

  else
  {
    if (v4)
    {
      [(SFUnifiedTabBarLayout *)self _safeArea];
    }

    else
    {
      [(SFUnifiedTabBarLayout *)self _unpinnedItemSafeArea];
    }

    [(SFUnifiedTabBarLayout *)self _frameForItem:v6 withOffset:0 pinActiveItem:0 squishActiveItem:0 centerExpandedItem:CGRectGetMinX(*&v13)];
  }

  v17 = v9;
  v18 = v10;
  itemWidth = v11;
  v20 = v12;
  v21 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];

  if (v21 != v6)
  {
    if (v4)
    {
      itemWidth = 32.0;
    }

    else
    {
      itemWidth = self->_itemWidth;
    }
  }

  v22 = v17;
  v23 = v18;
  v24 = itemWidth;
  v25 = v20;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)itemClosestToPoint:(CGPoint)a3 passingTest:(id)a4
{
  v5 = [(SFUnifiedTabBarLayout *)self _indexOfItemClosestToPoint:a4 passingTest:a3.x, a3.y];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
    v6 = [v8 objectAtIndexedSubscript:v7];
  }

  return v6;
}

- (unint64_t)_indexOfItemClosestToPoint:(CGPoint)a3 passingTest:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0x7FEFFFFFFFFFFFFFLL;
  visibleItemIndexes = self->_visibleItemIndexes;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__SFUnifiedTabBarLayout__indexOfItemClosestToPoint_passingTest___block_invoke;
  v12[3] = &unk_1E721CDE8;
  v9 = v7;
  v16 = x;
  v17 = y;
  v13 = v9;
  v14 = &v19;
  v15 = v18;
  [(SFUnifiedTabBarLayout *)self _enumerateFramesForItemsAtIndexes:visibleItemIndexes pinActiveItem:0 usingBlock:v12];
  v10 = v20[3];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v19, 8);

  return v10;
}

void __64__SFUnifiedTabBarLayout__indexOfItemClosestToPoint_passingTest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v18 = a2;
  v15 = *(a1 + 32);
  if (!v15 || (*(v15 + 16))(v15, v18))
  {
    v20.origin.x = a5;
    v20.origin.y = a6;
    v20.size.width = a7;
    v20.size.height = a8;
    if (CGRectContainsPoint(v20, *(a1 + 56)))
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }

    v21.origin.x = a5;
    v21.origin.y = a6;
    v21.size.width = a7;
    v21.size.height = a8;
    v16 = vabdd_f64(*(a1 + 56), CGRectGetMinX(v21));
    v22.origin.x = a5;
    v22.origin.y = a6;
    v22.size.width = a7;
    v22.size.height = a8;
    v17 = fmin(v16, vabdd_f64(*(a1 + 56), CGRectGetMaxX(v22)));
    if (v17 < *(*(*(a1 + 48) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *(*(*(a1 + 48) + 8) + 24) = v17;
    }
  }
}

- (id)itemAtPoint:(CGPoint)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  visibleItemIndexes = self->_visibleItemIndexes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__SFUnifiedTabBarLayout_itemAtPoint___block_invoke;
  v6[3] = &unk_1E721CE10;
  v7 = a3;
  v6[4] = self;
  v6[5] = &v8;
  [(SFUnifiedTabBarLayout *)self _enumerateFramesForItemsAtIndexes:visibleItemIndexes pinActiveItem:1 usingBlock:v6];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __37__SFUnifiedTabBarLayout_itemAtPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v16 = a2;
  v18.origin.x = a4;
  v18.origin.y = a5;
  v18.size.width = a6;
  v18.size.height = a7;
  if (CGRectContainsPoint(v18, *(a1 + 48)) && ([*(*(a1 + 32) + 192) containsIndex:a3] & 1) == 0)
  {
    v14 = *(*(a1 + 40) + 8);
    if (*(v14 + 40))
    {
      v15 = [*(*(a1 + 32) + 232) activeItem];

      if (v15 != v16)
      {
        goto LABEL_7;
      }

      v14 = *(*(a1 + 40) + 8);
    }

    objc_storeStrong((v14 + 40), a2);
  }

LABEL_7:
}

- (BOOL)_shouldUseContentOpacityForTransitioningItem:(id)a3 inArrangement:(id)a4
{
  v6 = a3;
  if (self->_style == 1)
  {
    v7 = [a4 activeItem];
    if (v7 == v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v6 supportsContentOpacity];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)_visibleSeparatorEdgesForItemAtIndex:(unint64_t)a3
{
  v5 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
  v6 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
  v7 = [v5 objectAtIndexedSubscript:a3];

  if (v7 == v6 || ([v5 objectAtIndexedSubscript:a3], v8 = objc_claimAutoreleasedReturnValue(), hoveringItem = self->_hoveringItem, v8, v8 == hoveringItem))
  {
    v13 = 0;
  }

  else
  {
    if (a3)
    {
      v10 = [v5 objectAtIndexedSubscript:a3 - 1];
      v11 = v10;
      v12 = 0;
      if (v10 && v10 != v6)
      {
        v12 = 2 * (v10 != self->_hoveringItem);
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    if ([v5 count] - 1 <= a3)
    {
      v15 = 0;
    }

    else
    {
      v14 = [v5 objectAtIndexedSubscript:a3 + 1];
      v15 = v14;
      if (v14 && v14 != v6 && v14 != self->_hoveringItem)
      {
        v12 |= 8uLL;
      }
    }

    v16 = [v5 objectAtIndexedSubscript:a3];
    if ([(SFUnifiedTabBarItemArrangement *)self->_itemArrangement isItemFirstInSection:v16])
    {
      v12 &= ~2uLL;
    }

    if ([(SFUnifiedTabBarItemArrangement *)self->_itemArrangement isItemLastInSection:v16])
    {
      v13 = v12 & 7;
    }

    else
    {
      v13 = v12;
    }
  }

  return v13;
}

- (double)_separatorOutset
{
  itemSpacing = self->_itemSpacing;
  +[SFUnifiedBarMetrics separatorWidth];
  return (itemSpacing - v3) * 0.5;
}

- (CGPoint)contentOffsetForScrollingToItemAtIndex:(unint64_t)a3
{
  if ([(SFUnifiedTabBarLayout *)self _itemAtIndexIsPinned:?])
  {
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView contentOffset];
  }

  else
  {
    [(SFUnifiedTabBarLayout *)self _offsetForItemAtIndex:a3];
    v9 = v8;
    v10 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
    v11 = [v10 objectAtIndexedSubscript:a3];
    [(SFUnifiedTabBarLayout *)self _widthForItem:v11];
    v13 = v12;

    if (self->_flipped)
    {
      v9 = self->_contentSize.width - v9 - v13;
    }

    [(SFUnifiedTabBarLayout *)self _insetsForScrollingToItemAtIndex:a3];

    [(SFUnifiedTabBarLayout *)self _contentOffsetForScrollingToRegion:v9 insets:v13 + v9, v14, v15, v16, v17];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)contentOffsetForScrollingToDroppingItems
{
  v13 = 0;
  v14 = &v13;
  v16 = "";
  v15 = 0x4010000000;
  v3 = *(MEMORY[0x1E695F050] + 16);
  v17 = *MEMORY[0x1E695F050];
  v18 = v3;
  v4 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allItemIndexes];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__SFUnifiedTabBarLayout_contentOffsetForScrollingToDroppingItems__block_invoke;
  v12[3] = &unk_1E721CE38;
  v12[4] = &v13;
  [(SFUnifiedTabBarLayout *)self _enumerateFramesForItemsAtIndexes:v4 pinActiveItem:0 usingBlock:v12];

  MinX = CGRectGetMinX(v14[1]);
  [(SFUnifiedTabBarLayout *)self _contentOffsetForScrollingToRegion:MinX insets:CGRectGetMaxX(v14[1]), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  v7 = v6;
  v9 = v8;
  _Block_object_dispose(&v13, 8);
  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

void __65__SFUnifiedTabBarLayout_contentOffsetForScrollingToDroppingItems__block_invoke(uint64_t a1, void *a2, CGFloat a3, CGFloat y, CGFloat width, CGFloat height)
{
  if ([a2 isDropping])
  {
    IsNull = CGRectIsNull(*(*(*(a1 + 32) + 8) + 32));
    v12 = *(*(a1 + 32) + 8);
    if (IsNull)
    {
      v12[1].origin.x = a3;
    }

    else
    {
      v14.origin.x = a3;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      v13 = CGRectUnion(v12[1], v14);
      y = v13.origin.y;
      width = v13.size.width;
      height = v13.size.height;
      v12 = *(*(a1 + 32) + 8);
      v12[1].origin.x = v13.origin.x;
    }

    v12[1].origin.y = y;
    v12[1].size.width = width;
    v12[1].size.height = height;
  }
}

- (CGPoint)_contentOffsetForScrollingToRegion:(id)a3 insets:(UIEdgeInsets)a4
{
  right = a4.right;
  left = a4.left;
  var1 = a3.var1;
  var0 = a3.var0;
  [(UIScrollView *)self->_scrollView adjustedContentInset:a3.var0];
  v10 = v9;
  [(SFUnifiedTabBarLayout *)self _safeArea];
  Width = CGRectGetWidth(v16);
  [(UIScrollView *)self->_scrollView contentOffset];
  v14 = fmin(fmax(fmax(fmin(v10 + v13, var0 - left), right + var1 - Width), 0.0), self->_contentSize.width - Width) - v10;
  result.y = v12;
  result.x = v14;
  return result;
}

- (UIEdgeInsets)_insetsForScrollingToItemAtIndex:(unint64_t)a3
{
  v5 = MEMORY[0x1E69DDCE0];
  if (a3)
  {
    v6 = self->_itemWidth + self->_itemSpacing;
  }

  else
  {
    v6 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  v7 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
  v8 = [v7 count] - 1;

  if (v8 <= a3)
  {
    v9 = v5[3];
  }

  else
  {
    v9 = self->_itemWidth + self->_itemSpacing;
  }

  v10 = *v5;
  v11 = v5[2];
  v12 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIndex];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v12;
    if (v12 <= a3)
    {
      if (v12 < a3)
      {
        [(SFUnifiedTabBarLayout *)self _insetsForActiveItemPinnableArea];
        v23 = v22 + self->_squishedActiveItemWidth;
        v24 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
        [(SFUnifiedTabBarLayout *)self _spacingAfterItem:v24];
        v6 = v23 + v25;

        if (v17 + 1 < a3)
        {
          v6 = v6 + self->_itemWidth + self->_itemSpacing;
        }
      }
    }

    else
    {
      v18 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
      [(SFUnifiedTabBarLayout *)self _spacingBeforeItem:v18];
      v20 = v19 + self->_squishedActiveItemWidth;
      [(SFUnifiedTabBarLayout *)self _insetsForActiveItemPinnableArea];
      v9 = v20 + v21;

      if (v17 - 1 > a3)
      {
        v9 = v9 + self->_itemWidth + self->_itemSpacing;
      }
    }
  }

  v13 = v10;
  v14 = v6;
  v15 = v11;
  v16 = v9;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (BOOL)isCurrentlyScrollable
{
  [(SFUnifiedTabBarLayout *)self _unpinnedItemSafeArea];
  Width = CGRectGetWidth(v5);
  return Width < _SFRoundFloatToPixels(self->_contentSize.width - (self->_activeItemWidth - self->_activeItemWidthWhenNotExpanded));
}

- (CGRect)pinnedItemsSeparatorFrame
{
  +[SFUnifiedBarMetrics separatorWidth];
  v4 = v3;
  if ([(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allowsScrollingPinnedItems])
  {
    v5 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement pinnedItems];
    -[SFUnifiedTabBarLayout _offsetForItemAtIndex:](self, "_offsetForItemAtIndex:", [v5 count]);
    v7 = v6 - self->_itemSpacing - v4;

    v8 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIndex];
    v9 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement pinnedItems];
    v10 = [v9 count] - 1;

    if (v8 == v10)
    {
      [(SFUnifiedTabBarLayout *)self _activeItemPinnableArea];
      v7 = fmax(v7, CGRectGetMinX(v29) + self->_itemWidth + self->_itemSpacing);
    }

    v11 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIndex];
    v12 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement pinnedItems];
    v13 = [v12 count];

    if (v11 == v13)
    {
      [(SFUnifiedTabBarLayout *)self _activeItemPinnableArea];
      v7 = fmin(v7, CGRectGetMaxX(v30) - self->_itemWidth - self->_itemSpacing - v4);
    }
  }

  else
  {
    [(SFUnifiedTabBarLayout *)self _safeArea];
    v7 = CGRectGetMinX(v31) + self->_pinnedItemsWidth - self->_itemSpacing - v4;
  }

  [(SFUnifiedBarMetrics *)self->_barMetrics itemHeight];
  v32.size.height = v14;
  v32.origin.y = 0.0;
  v32.origin.x = v7;
  v32.size.width = v4;
  v33 = CGRectInset(v32, 0.0, 4.0);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  [(SFUnifiedTabBarLayout *)self _contentArea];
  flipped = self->_flipped;

  v24 = _SFFlipRectInCoordinateSpace(flipped, x, y, width, height, v19, v20, v21, v22);
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (double)pinnedItemsSeparatorOpacity
{
  if (![(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIsExpanded]|| (result = 0.0, self->_contentIsCentered))
  {
    v4 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allowsScrollingPinnedItems];
    result = 1.0;
    if (v4)
    {
      v5 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIndex];
      v6 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement pinnedItems];
      v7 = [v6 count];

      itemWidth = self->_itemWidth;
      [(SFUnifiedBarMetrics *)self->_barMetrics itemCornerRadius];
      v10 = itemWidth - v9;
      v11 = 0.0;
      if (v5 != v7 && v5 != v7 - 1)
      {
        v11 = self->_itemWidth + self->_itemSpacing;
      }

      v12 = v10 + v11;
      v13 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement unpinnedItems];
      if ([v13 count])
      {
        v14 = v10;
      }

      else
      {
        v14 = 0.0;
      }

      if (v5 >= v7)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      [(SFUnifiedTabBarLayout *)self _safeArea];
      v17 = v16;
      v19 = v15 + v18;
      v21 = v20 + 0.0;
      v23 = v22 - (v12 + v14);
      [(SFUnifiedTabBarLayout *)self pinnedItemsSeparatorFrame];
      v25.origin.x = v19;
      v25.origin.y = v21;
      v25.size.width = v23;
      v25.size.height = v17;
      return CGRectIntersectsRect(v24, v25);
    }
  }

  return result;
}

- (CGRect)pinnedItemDropArea
{
  [(UIScrollView *)self->_scrollView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v10 = v9 + self->_pinnedItemsWidth + self->_itemWidth * 0.33;
  [(SFUnifiedTabBarLayout *)self _contentArea];
  flipped = self->_flipped;

  v16 = _SFFlipRectInCoordinateSpace(flipped, v4, v6, v10, v8, v11, v12, v13, v14);
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (UIEdgeInsets)autoScrollTouchInsets
{
  v2 = -self->_scrollSlowingInset;
  pinnedItemsWidth = self->_pinnedItemsWidth;
  v4 = v2 - pinnedItemsWidth;
  if (self->_flipped)
  {
    v5 = -self->_scrollSlowingInset;
  }

  else
  {
    v5 = v2 - pinnedItemsWidth;
  }

  if (self->_flipped)
  {
    v6 = v4;
  }

  else
  {
    v6 = -self->_scrollSlowingInset;
  }

  v7 = 0.0;
  v8 = 0.0;
  result.right = v6;
  result.bottom = v8;
  result.left = v5;
  result.top = v7;
  return result;
}

+ (unint64_t)pinnedItemLimitForItemArrangement:(id)a3 tabBarWidth:(double)a4 barMetrics:(id)a5 standalone:(BOOL)a6
{
  v7 = a6;
  v10 = a3;
  v11 = a5;
  v12 = [v10 unpinnedItems];
  v13 = [v12 count];
  if (v13 >= 2)
  {
    v6 = [v10 unpinnedItems];
    v14 = 3.5;
    if ([v6 count] > 3)
    {
      goto LABEL_6;
    }
  }

  v15 = [v10 unpinnedItems];
  v14 = 1.0;
  if ([v15 count] >= 2)
  {
    v16 = [v10 unpinnedItems];
    v14 = [v16 count];
  }

  if (v13 >= 2)
  {
LABEL_6:
  }

  if (v7)
  {
    [v11 minimumInactiveItemWidth];
  }

  else
  {
    [v11 minimumActiveItemWidth];
  }

  v18 = v17;
  [v11 minimumInactiveItemWidth];
  v20 = v19;
  [v11 minimumItemSpacing];
  v22 = v21;
  v23 = v18 + v20 * v14 + v21 * (v14 + 1.0);
  +[SFUnifiedBarMetrics separatorWidth];
  v25 = fmax((a4 - (v23 + v24)) / (v22 + 32.0) + -2.0, 1.0);

  return v25;
}

- (BOOL)_activeItemIsPinned
{
  v3 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
  if (v3)
  {
    v4 = [(SFUnifiedTabBarLayout *)self _itemAtIndexIsPinned:[(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIndex]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_itemAtIndexIsPinned:(unint64_t)a3
{
  if ([(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allowsScrollingPinnedItems])
  {
    return 0;
  }

  v6 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement pinnedItems];
  v5 = [v6 count] > a3;

  return v5;
}

- (NSIndexSet)visibleItemIndexes
{
  v2 = [(NSMutableIndexSet *)self->_visibleItemIndexes copy];

  return v2;
}

- (NSArray)visibleItems
{
  v3 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
  v4 = [v3 objectsAtIndexes:self->_visibleItemIndexes];

  return v4;
}

- (NSIndexSet)nonVisibleItemIndexes
{
  v3 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allItemIndexes];
  v4 = [v3 mutableCopy];

  [v4 removeIndexes:self->_visibleItemIndexes];
  v5 = [v4 copy];

  return v5;
}

- (void)setItemAtIndex:(unint64_t)a3 isVisible:(BOOL)a4
{
  visibleItemIndexes = self->_visibleItemIndexes;
  if (a4)
  {
    [(NSMutableIndexSet *)visibleItemIndexes addIndex:a3];
  }

  else
  {
    [(NSMutableIndexSet *)visibleItemIndexes removeIndex:a3];
  }
}

- (void)setItemAtIndex:(unint64_t)a3 isOccluded:(BOOL)a4
{
  occludedItemIndexes = self->_occludedItemIndexes;
  if (a4)
  {
    [(NSMutableIndexSet *)occludedItemIndexes addIndex:a3];
  }

  else
  {
    [(NSMutableIndexSet *)occludedItemIndexes removeIndex:a3];
  }
}

- (id)indexesOfItemsVisibleInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
    if (self->_expandedItemIsCentered)
    {
      [(SFUnifiedTabBarLayout *)self _pinnedActiveItemOffsetSquishingActiveItem:0 activeItemFrame:0];
      v10 = v11;
    }

    v12 = [MEMORY[0x1E696AD50] indexSet];
    v13 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIndex];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 addIndex:v13];
    }

    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v31 = CGRectInset(v30, self->_scrollSlowingInset * -1.57079633, 0.0);
    v14 = v31.origin.x;
    v15 = v31.origin.y;
    v16 = v31.size.width;
    v17 = v31.size.height;
    v18 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allItemIndexes];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __53__SFUnifiedTabBarLayout_indexesOfItemsVisibleInRect___block_invoke;
    v22[3] = &unk_1E721CE60;
    v24 = v10;
    v25 = v14;
    v26 = v15;
    v27 = v16;
    v28 = v17;
    v22[4] = self;
    v23 = v12;
    v19 = v12;
    [(SFUnifiedTabBarLayout *)self _enumerateFramesForItemsAtIndexes:v18 pinActiveItem:0 usingBlock:v22];

    v20 = [v19 copy];
  }

  else
  {
    v20 = [MEMORY[0x1E696AC90] indexSet];
  }

  return v20;
}

void __53__SFUnifiedTabBarLayout_indexesOfItemsVisibleInRect___block_invoke(uint64_t a1, void *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v18 = a2;
  v13 = *(a1 + 32);
  if (v13[200] == 1)
  {
    [v13 _slideFrame:a3 forItemAtIndex:a4 pinnedActiveItemOffset:{a5, a6, a7, *(a1 + 48)}];
    a4 = v14;
    a5 = v15;
    a6 = v16;
    a7 = v17;
  }

  v20.origin.x = a4;
  v20.origin.y = a5;
  v20.size.width = a6;
  v20.size.height = a7;
  if (CGRectIntersectsRect(*(a1 + 56), v20))
  {
    [*(a1 + 40) addIndex:a3];
  }
}

- (id)itemsVisibleInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = MEMORY[0x1E695DFD8];
  v9 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
  v10 = [(SFUnifiedTabBarLayout *)self indexesOfItemsVisibleInRect:x, y, width, height];
  v11 = [v9 objectsAtIndexes:v10];
  v12 = [v8 setWithArray:v11];

  return v12;
}

- (CGRect)_safeArea
{
  if (CGRectIsNull(self->_visibleRectOverride))
  {
    [(UIScrollView *)self->_scrollView bounds];
    x = v3;
    y = v5;
    width = v7;
    height = v9;
  }

  else
  {
    x = self->_visibleRectOverride.origin.x;
    y = self->_visibleRectOverride.origin.y;
    width = self->_visibleRectOverride.size.width;
    height = self->_visibleRectOverride.size.height;
  }

  [(UIScrollView *)self->_scrollView adjustedContentInset];
  v12 = x + v11;
  v14 = y + v13;
  v16 = width - (v11 + v15);
  v18 = height - (v13 + v17);
  [(SFUnifiedTabBarLayout *)self _contentArea];
  flipped = self->_flipped;

  v24 = _SFFlipRectInCoordinateSpace(flipped, v12, v14, v16, v18, v19, v20, v21, v22);
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)_unpinnedItemSafeArea
{
  [(SFUnifiedTabBarLayout *)self _safeArea];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  UIEdgeInsetsMakeWithEdges();
  v11 = v5 + v10;
  v14 = v7 - (v12 + v13);
  v16 = v9 - (v10 + v15);
  v17 = v3 + v12;
  v18 = v11;
  v19 = v14;
  result.size.height = v16;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_activeItemPinnableArea
{
  [(SFUnifiedTabBarLayout *)self _unpinnedItemSafeArea];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SFUnifiedTabBarLayout *)self _insetsForActiveItemPinnableArea];
  v12 = v6 + v11;
  v15 = v8 - (v13 + v14);
  v17 = v10 - (v11 + v16);
  v18 = v4 + v13;
  v19 = v12;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_contentArea
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIEdgeInsets)_insetsForActiveItemPinnableArea
{
  if ([(SFUnifiedTabBarLayout *)self _activeItemIsPinned]|| (v3 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIndex], v3 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v5 = *MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    v6 = *(MEMORY[0x1E69DDCE0] + 16);
    v7 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v5 = 0.0;
    [(SFUnifiedTabBarLayout *)self _scrollSlowingInfoForItemAtIndex:v3 activeItemWidth:0.0, 0];
    v4 = 0.0;
    v7 = 0.0;
    v6 = 0.0;
  }

  v8 = v5;
  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v8;
  return result;
}

- (id)sectionsVisibleInRect:(CGRect)a3
{
  v4 = [(SFUnifiedTabBarLayout *)self indexesOfItemsVisibleInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [(SFUnifiedTabBarLayout *)self _sectionsForItemsAtIndexes:v4];

  return v5;
}

- (NSIndexSet)nonVisibleSectionIndexes
{
  v3 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allSectionIndexes];
  v4 = [v3 mutableCopy];

  itemArrangement = self->_itemArrangement;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __49__SFUnifiedTabBarLayout_nonVisibleSectionIndexes__block_invoke;
  v12 = &unk_1E721CE88;
  v13 = self;
  v14 = v4;
  v6 = v4;
  [(SFUnifiedTabBarItemArrangement *)itemArrangement enumerateSectionsAndItemsUsingBlock:&v9];
  v7 = [v6 copy];

  return v7;
}

uint64_t __49__SFUnifiedTabBarLayout_nonVisibleSectionIndexes__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [*(*(a1 + 32) + 184) containsIndex:a5];
  if (result)
  {
    v8 = *(a1 + 40);

    return [v8 removeIndex:a3];
  }

  return result;
}

- (id)_sectionsForItemsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  itemArrangement = self->_itemArrangement;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __52__SFUnifiedTabBarLayout__sectionsForItemsAtIndexes___block_invoke;
  v14 = &unk_1E721CE88;
  v15 = v4;
  v16 = v5;
  v7 = v5;
  v8 = v4;
  [(SFUnifiedTabBarItemArrangement *)itemArrangement enumerateSectionsAndItemsUsingBlock:&v11];
  v9 = [v7 copy];

  return v9;
}

void __52__SFUnifiedTabBarLayout__sectionsForItemsAtIndexes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  if ([*(a1 + 32) containsIndex:a5])
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (double)_effectiveMinimumActiveItemWidth
{
  [(SFUnifiedTabBarMetrics *)self->_barMetrics minimumActiveItemWidth];
  v4 = v3;
  [(SFUnifiedTabBarLayout *)self _safeArea];
  Width = CGRectGetWidth(v8);
  [(SFUnifiedTabBarMetrics *)self->_barMetrics minimumActiveItemWidthRatio];
  return fmin(v4, Width * v6);
}

- (double)_effectiveMaximumActiveItemWidth
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 bounds];
    Width = CGRectGetWidth(v12);
    v5 = [(UIScrollView *)self->_scrollView window];
    [v5 bounds];
    v6 = fmax(Width, CGRectGetWidth(v13));
    [(SFUnifiedTabBarMetrics *)self->_barMetrics maximumURLFieldWidthRatio];
    v8 = v6 * v7;

    return v8;
  }

  else
  {
    barMetrics = self->_barMetrics;

    [(SFUnifiedTabBarMetrics *)barMetrics maximumActiveItemWidth];
  }

  return result;
}

- (double)_minimumItemSpacing
{
  style = self->_style;
  if (style == 1)
  {
    [SFUnifiedBarMetrics separatorWidth:v2];
    return v7 + 2.0;
  }

  else if (!style)
  {
    barMetrics = self->_barMetrics;

    [(SFUnifiedTabBarMetrics *)barMetrics minimumItemSpacing];
  }

  return result;
}

- (double)_maximumItemSpacing
{
  style = self->_style;
  if (style == 1)
  {
    [SFUnifiedBarMetrics separatorWidth:v2];
    return v7 + 2.0;
  }

  else if (!style)
  {
    barMetrics = self->_barMetrics;

    [(SFUnifiedTabBarMetrics *)barMetrics maximumItemSpacing];
  }

  return result;
}

- (double)_minimumHorizontalOffsetForOccludedItems
{
  style = self->_style;
  if (style == 1)
  {
    return self->_itemWidth * 0.5;
  }

  if (!style)
  {
    itemSpacing = self->_itemSpacing;
    [(SFUnifiedBarMetrics *)self->_barMetrics cutoutBorderWidth];
    return itemSpacing - v4 + 1.0;
  }

  return result;
}

- (double)_insetToRevealNextItem
{
  if (self->_style)
  {
    return 16.0;
  }

  [(SFUnifiedTabBarMetrics *)self->_barMetrics insetToRevealNextItem];
  return result;
}

- (double)_insetToRevealNextSection
{
  [(SFUnifiedTabBarLayout *)self _insetToRevealNextItem];
  v4 = v3;
  [(SFUnifiedBarMetrics *)self->_barMetrics cutoutBorderWidth];
  return v4 + v5;
}

- (BOOL)centersActiveItemWhenExpanded
{
  v3 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement pinnedItems];
  v4 = [v3 count];

  if (v4)
  {
    return 0;
  }

  [(SFUnifiedTabBarMetrics *)self->_barMetrics maximumActiveItemWidth];
  v7 = v6;
  [(SFUnifiedTabBarLayout *)self _maximumActiveItemWidthForCenteringExpandedItem];
  return v7 <= v8;
}

- (BOOL)horizontalSpaceIsExtremelyConstrained
{
  [(SFUnifiedTabBarLayout *)self _activeItemPinnableArea];
  Width = CGRectGetWidth(v10);
  [(SFUnifiedTabBarLayout *)self _effectiveMinimumActiveItemWidth];
  v5 = Width - v4;
  [(SFUnifiedTabBarMetrics *)self->_barMetrics minimumInactiveItemWidth];
  v7 = v6;
  [(SFUnifiedTabBarMetrics *)self->_barMetrics minimumItemSpacing];
  return v5 < v8 + v7 * 2.0;
}

- (CGPoint)_midpointForCenteredContentInScrollView
{
  scrollView = self->_scrollView;
  v4 = [(UIScrollView *)scrollView superview];
  [(UIScrollView *)scrollView convertPoint:v4 fromView:self->_midpointForCenteredContent.x, self->_midpointForCenteredContent.y];
  v6 = v5;
  v8 = v7;

  if (self->_flipped)
  {
    v6 = self->_contentSize.width - v6;
  }

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (BOOL)showsPinnedItemsSeparator
{
  if (self->_style)
  {
    return 0;
  }

  v3 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement pinnedItems];
  v2 = [v3 count] != 0;

  return v2;
}

- (void)enumerateLayoutForSectionBackgroundsAtIndexes:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v25 = a4;
  v7 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement sections];
  [(SFUnifiedTabBarMetrics *)self->_barMetrics backgroundOutset];
  v9 = v8;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  v61[3] = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = __Block_byref_object_copy__2;
  v59[4] = __Block_byref_object_dispose__2;
  v60 = [v7 firstObject];
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v58 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x4010000000;
  v54[3] = "";
  v10 = *(MEMORY[0x1E695F050] + 16);
  v55 = *MEMORY[0x1E695F050];
  v56 = v10;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v53[3] = 0x7FEFFFFFFFFFFFFFLL;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v52[3] = 0x7FEFFFFFFFFFFFFFLL;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v51[3] = 0x7FEFFFFFFFFFFFFFLL;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__SFUnifiedTabBarLayout_enumerateLayoutForSectionBackgroundsAtIndexes_usingBlock___block_invoke;
  aBlock[3] = &unk_1E721CEB0;
  v44 = v61;
  v11 = v7;
  v43 = v11;
  v45 = v59;
  v46 = v57;
  v47 = v54;
  v48 = v53;
  v49 = v52;
  v50 = v51;
  v12 = _Block_copy(aBlock);
  [(SFUnifiedTabBarLayout *)self _contentArea];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allItemIndexes];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __82__SFUnifiedTabBarLayout_enumerateLayoutForSectionBackgroundsAtIndexes_usingBlock___block_invoke_2;
  v26[3] = &unk_1E721CED8;
  v37 = v14;
  v38 = v16;
  v39 = v18;
  v40 = v20;
  v30 = v57;
  v31 = v54;
  v26[4] = self;
  v32 = v53;
  v33 = v51;
  v34 = v52;
  v35 = v59;
  v22 = v6;
  v27 = v22;
  v36 = v61;
  v41 = v9;
  v23 = v25;
  v28 = v23;
  v24 = v12;
  v29 = v24;
  [(SFUnifiedTabBarLayout *)self enumerateLayoutForItemsAtIndexes:v21 usingBlock:v26];

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v52, 8);
  _Block_object_dispose(v53, 8);
  _Block_object_dispose(v54, 8);
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v59, 8);

  _Block_object_dispose(v61, 8);
}

__n128 __82__SFUnifiedTabBarLayout_enumerateLayoutForSectionBackgroundsAtIndexes_usingBlock___block_invoke(uint64_t a1)
{
  v2 = ++*(*(*(a1 + 40) + 8) + 24);
  if (v2 < [*(a1 + 32) count])
  {
    v3 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  v6 = *(*(a1 + 64) + 8);
  result = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 16);
  *(v6 + 32) = *MEMORY[0x1E695F050];
  *(v6 + 48) = v8;
  *(*(*(a1 + 72) + 8) + 24) = 0x7FEFFFFFFFFFFFFFLL;
  *(*(*(a1 + 80) + 8) + 24) = 0x7FEFFFFFFFFFFFFFLL;
  *(*(*(a1 + 88) + 8) + 24) = 0x7FEFFFFFFFFFFFFFLL;
  return result;
}

void __82__SFUnifiedTabBarLayout_enumerateLayoutForSectionBackgroundsAtIndexes_usingBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a1 + 64) + 8);
  if (*(v6 + 24))
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a4 + 56);
  }

  *(v6 + 24) = v7 & 1;
  v8 = *(*(a1 + 72) + 8);
  v9 = *(*(a1 + 32) + 16);
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);
  v14 = *(a1 + 120);
  v15 = *(a1 + 128);
  v16 = *(a1 + 136);
  v17 = *(a1 + 144);
  v18 = a2;
  v48.origin.x = _SFFlipRectInCoordinateSpace(v9, v10, v11, v12, v13, v14, v15, v16, v17);
  v48.origin.y = v19;
  v48.size.width = v20;
  v48.size.height = v21;
  *(*(*(a1 + 72) + 8) + 32) = CGRectUnion(v8[1], v48);
  v22 = *(a4 + 104);
  v23 = 96;
  if (v22 == 8)
  {
    v23 = 88;
  }

  _ZF = v22 == 2;
  v25 = 80;
  if (!_ZF)
  {
    v25 = v23;
  }

  *(*(*(a1 + v25) + 8) + 24) = fmin(*(*(*(a1 + v25) + 8) + 24), *(a4 + 48));
  v26 = [*(*(*(a1 + 104) + 8) + 40) items];
  v27 = [v26 lastObject];

  if (v27 == v18)
  {
    if ([*(a1 + 40) containsIndex:*(*(*(a1 + 112) + 8) + 24)])
    {
      [*(*(a1 + 32) + 240) itemCornerRadius];
      v28 = *(*(a1 + 72) + 8);
      x = v28[4];
      y = v28[5];
      width = v28[6];
      height = v28[7];
      if (([*(*(*(a1 + 104) + 8) + 40) isPinned] & 1) == 0)
      {
        [*(a1 + 32) _unpinnedItemSafeArea];
        v49.origin.x = v33;
        v49.origin.y = v34;
        v49.size.width = v35;
        v49.size.height = v36;
        v44.origin.x = x;
        v44.origin.y = y;
        v44.size.width = width;
        v44.size.height = height;
        v45 = CGRectIntersection(v44, v49);
        x = v45.origin.x;
        y = v45.origin.y;
        width = v45.size.width;
        height = v45.size.height;
      }

      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      v47 = CGRectInset(v46, -*(a1 + 152), -*(a1 + 152));
      _SFFlipRectInCoordinateSpace(*(*(a1 + 32) + 16), v47.origin.x, v47.origin.y, v47.size.width, v47.size.height, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144));
      v37 = *(*(a1 + 80) + 8);
      if (*(v37 + 24) == 1.79769313e308)
      {
        *(v37 + 24) = 0xFFEFFFFFFFFFFFFFLL;
      }

      v38 = *(*(a1 + 96) + 8);
      if (*(v38 + 24) == 1.79769313e308)
      {
        *(v38 + 24) = 0xFFEFFFFFFFFFFFFFLL;
      }

      v39 = *(*(a1 + 88) + 8);
      if (*(v39 + 24) == 1.79769313e308)
      {
        *(v39 + 24) = 0xFFEFFFFFFFFFFFFFLL;
      }

      __asm { FMOV            V0.2D, #1.0 }

      (*(*(a1 + 48) + 16))();
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)enumerateInitialLayoutForAppearingSectionBackgroundsAtIndexes:(id)a3 withTransitionInfo:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  scrollView = self->_scrollView;
  v10 = a4;
  v11 = a3;
  [(UIScrollView *)scrollView bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v10 distanceToScroll];
  v21 = v20;

  v23[1] = 3221225472;
  v23[0] = MEMORY[0x1E69E9820];
  v23[2] = __117__SFUnifiedTabBarLayout_enumerateInitialLayoutForAppearingSectionBackgroundsAtIndexes_withTransitionInfo_usingBlock___block_invoke;
  v23[3] = &unk_1E721CF00;
  v25 = v21 + v13;
  v26 = v15;
  v27 = v17;
  v28 = v19;
  v24 = v8;
  v22 = v8;
  [(SFUnifiedTabBarLayout *)self enumerateLayoutForSectionBackgroundsAtIndexes:v11 usingBlock:v23];
}

void __117__SFUnifiedTabBarLayout_enumerateInitialLayoutForAppearingSectionBackgroundsAtIndexes_withTransitionInfo_usingBlock___block_invoke(double *a1, void *a2, uint64_t a3, __int128 *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4[1];
  v30 = *a4;
  v31 = v6;
  v29 = *(a4 + 40);
  v7 = *(a4 + 73);
  v8 = *(a4 + 105);
  v34 = *(a4 + 89);
  v35[0] = v8;
  *(v35 + 15) = *(a4 + 120);
  v32 = *(a4 + 57);
  v33 = v7;
  v9 = *a4;
  v10 = *(a4 + 1);
  v11 = *(a4 + 2);
  v12 = *(a4 + 3);
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  v16 = a1[8];
  v17 = a2;
  v37.origin.x = v9;
  v37.origin.y = v10;
  v37.size.width = v11;
  v37.size.height = v12;
  v38.origin.x = v13;
  v38.origin.y = v14;
  v38.size.width = v15;
  v38.size.height = v16;
  v18 = CGRectIntersectsRect(v37, v38);
  v19 = *(a1 + 4);
  v20 = *(v19 + 16);
  v21[0] = v30;
  v21[1] = v31;
  v23 = v29;
  v26 = v33;
  v27 = v34;
  v28[0] = v35[0];
  *(v28 + 15) = *(v35 + 15);
  v22 = 0;
  v24 = v18;
  v25 = v32;
  v20(v19, v17, a3, v21);
}

- (void)enumerateFinalLayoutForDisappearingSectionBackgroundsAtIndexes:(id)a3 withTransitionInfo:(id)a4 usingBlock:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __118__SFUnifiedTabBarLayout_enumerateFinalLayoutForDisappearingSectionBackgroundsAtIndexes_withTransitionInfo_usingBlock___block_invoke;
  v9[3] = &unk_1E721CF28;
  v10 = v7;
  v8 = v7;
  [(SFUnifiedTabBarLayout *)self enumerateLayoutForSectionBackgroundsAtIndexes:a3 usingBlock:v9];
}

uint64_t __118__SFUnifiedTabBarLayout_enumerateFinalLayoutForDisappearingSectionBackgroundsAtIndexes_withTransitionInfo_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a4 + 40);
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  v11 = *(a4 + 16);
  v13[0] = *a4;
  v13[1] = v11;
  v14 = 0;
  v15 = v8;
  v16 = 0xFFEFFFFFFFFFFFFFLL;
  v17 = 0;
  v19 = *(a4 + 73);
  v20 = *(a4 + 89);
  v21[0] = *(a4 + 105);
  *(v21 + 15) = *(a4 + 120);
  v18 = *(a4 + 57);
  return v10(v9, a2, a3, v13, a5, a6, a7, a8);
}

- (CGPoint)midpointForCenteredContent
{
  x = self->_midpointForCenteredContent.x;
  y = self->_midpointForCenteredContent.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end