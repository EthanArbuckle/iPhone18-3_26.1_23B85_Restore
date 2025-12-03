@interface TabBar
- (BOOL)_isScrollable;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)shouldPinItemsDroppedAtPoint:(CGPoint)point;
- (CGRect)_frameForItemAtIndex:(unint64_t)index;
- (CGRect)_initialFrameForItemAtIndex:(unint64_t)index;
- (CGRect)_scrollableItemArea;
- (CGRect)frameForItem:(id)item;
- (TabBar)initWithFrame:(CGRect)frame;
- (TabBarDelegate)delegate;
- (UIEdgeInsets)_pinnedItemInsets;
- (double)_horizontalPositionForItemAtIndex:(unint64_t)index withSlowingFactor:(double)factor pinned:(BOOL)pinned;
- (double)_itemWidth;
- (double)_pinnedItemsWidth;
- (double)_scrollableWidth;
- (id)_firstVisibleItemAfterIndex:(unint64_t)index;
- (id)_itemAtLocation:(CGPoint)location;
- (id)_itemForTouch:(id)touch;
- (id)_overflowPinnedItemsMenuElements;
- (id)_requestReusableTabBarItemView;
- (id)dragPreviewForItem:(id)item pinned:(BOOL)pinned;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)targetItemForDropAtPoint:(CGPoint)point;
- (id)targetedDragPreviewForLiftingItem:(id)item;
- (id)viewForItem:(id)item;
- (unint64_t)_effectiveIndexForIndex:(unint64_t)index ofItems:(id)items currentItems:(id)currentItems;
- (unint64_t)_lastVisiblePinnedItemIndex;
- (unint64_t)indexOfCenterItem;
- (unsigned)_edgeToAlignWithPreviewForItem:(id)item;
- (void)_activateItemIfNeeded:(id)needed;
- (void)_didCompleteScrolling;
- (void)_hover:(id)_hover;
- (void)_itemDidPressCloseButton:(id)button;
- (void)_layOutPinnedOverflowButton;
- (void)_layoutContainers;
- (void)_layoutIndexes:(id)indexes ofItems:(id)items currentItems:(id)currentItems;
- (void)_layoutItem:(id)item atIndex:(unint64_t)index inRect:(CGRect)rect itemCount:(unint64_t)count beforeActiveItem:(BOOL)activeItem;
- (void)_relinquishReusableTabBarItemView:(id)view;
- (void)_reorder:(id)_reorder;
- (void)_scrollToItemIfNeeded:(id)needed;
- (void)_scrollTowardItem:(id)item byAmount:(double)amount;
- (void)_tap:(id)_tap;
- (void)_toggleMediaStateMutedForItem:(id)item;
- (void)_updateBackground;
- (void)_updatePinnedItemCount;
- (void)_updateReorderRecognizer;
- (void)addInteraction:(id)interaction;
- (void)cleanUpDragPreviewForItem:(id)item;
- (void)dealloc;
- (void)layoutSubviews;
- (void)scrollToItem:(id)item animated:(BOOL)animated;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setHidesTitles:(BOOL)titles;
- (void)setItems:(id)items animated:(BOOL)animated;
- (void)setTintStyle:(int64_t)style;
- (void)updatePinnedItems;
@end

@implementation TabBar

- (TabBar)initWithFrame:(CGRect)frame
{
  v52.receiver = self;
  v52.super_class = TabBar;
  v3 = [(TabBar *)&v52 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tabBarItemViewReuseStack = v3->_tabBarItemViewReuseStack;
    v3->_tabBarItemViewReuseStack = v4;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:0];

    [(TabBar *)v3 setMultipleTouchEnabled:0];
    [(TabBar *)v3 setExclusiveTouch:1];
    layer = [(TabBar *)v3 layer];
    [layer setAnchorPoint:{0.5, 0.0}];

    layer2 = [(TabBar *)v3 layer];
    [layer2 setAllowsGroupOpacity:0];

    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    leadingContainer = v3->_leadingContainer;
    v3->_leadingContainer = v9;

    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    trailingContainer = v3->_trailingContainer;
    v3->_trailingContainer = v11;

    [(UIView *)v3->_leadingContainer setClipsToBounds:1];
    [(UIView *)v3->_trailingContainer setClipsToBounds:1];
    [(TabBar *)v3 addSubview:v3->_leadingContainer];
    [(TabBar *)v3 addSubview:v3->_trailingContainer];
    layer3 = [(UIView *)v3->_leadingContainer layer];
    layer4 = [(UIView *)v3->_trailingContainer layer];
    [layer3 setAllowsGroupOpacity:0];
    [layer4 setAllowsGroupOpacity:0];
    [layer3 setAllowsGroupBlending:0];
    [layer4 setAllowsGroupBlending:0];
    [layer3 setAllowsEdgeAntialiasing:0];
    [layer4 setAllowsEdgeAntialiasing:0];
    _sf_usesLeftToRightLayout = [(TabBar *)v3 _sf_usesLeftToRightLayout];
    [layer3 setAnchorPoint:{_sf_usesLeftToRightLayout, 0.5}];
    [layer4 setAnchorPoint:{(_sf_usesLeftToRightLayout ^ 1), 0.5}];
    v3->_tintStyle = 1;
    v16 = objc_alloc_init(MEMORY[0x277D75D68]);
    leadingVibrancyEffectView = v3->_leadingVibrancyEffectView;
    v3->_leadingVibrancyEffectView = v16;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    contentView = [(UIVisualEffectView *)v3->_leadingVibrancyEffectView contentView];
    [contentView setBackgroundColor:whiteColor];

    [(UIVisualEffectView *)v3->_leadingVibrancyEffectView _setOverrideUserInterfaceStyle:1];
    v20 = objc_alloc_init(MEMORY[0x277D75D68]);
    trailingVibrancyEffectView = v3->_trailingVibrancyEffectView;
    v3->_trailingVibrancyEffectView = v20;

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    contentView2 = [(UIVisualEffectView *)v3->_trailingVibrancyEffectView contentView];
    [contentView2 setBackgroundColor:whiteColor2];

    [(UIVisualEffectView *)v3->_trailingVibrancyEffectView _setOverrideUserInterfaceStyle:1];
    [(UIView *)v3->_leadingContainer addSubview:v3->_leadingVibrancyEffectView];
    [(UIView *)v3->_trailingContainer addSubview:v3->_trailingVibrancyEffectView];
    [(TabBar *)v3 _updateBackground];
    v24 = objc_alloc_init(MEMORY[0x277D759D8]);
    scrollView = v3->_scrollView;
    v3->_scrollView = v24;

    [(UIScrollView *)v3->_scrollView setDelegate:v3];
    [(UIScrollView *)v3->_scrollView setUserInteractionEnabled:0];
    [(UIScrollView *)v3->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v3->_scrollView setContentInsetAdjustmentBehavior:2];
    [(UIScrollView *)v3->_scrollView setTracksImmediatelyWhileDecelerating:0];
    [(TabBar *)v3 addSubview:v3->_scrollView];
    panGestureRecognizer = [(UIScrollView *)v3->_scrollView panGestureRecognizer];
    [panGestureRecognizer _setCanPanVertically:0];
    [(TabBar *)v3 addGestureRecognizer:panGestureRecognizer];
    [(UIScrollView *)v3->_scrollView _setAutoScrollTouchInsets:0.0, -128.0, 0.0, -128.0];
    v27 = objc_alloc_init(MEMORY[0x277D75D18]);
    dragPreviewContainer = v3->_dragPreviewContainer;
    v3->_dragPreviewContainer = v27;

    [(UIView *)v3->_dragPreviewContainer setHidden:1];
    [(TabBar *)v3 addSubview:v3->_dragPreviewContainer];
    v29 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel__tap_];
    tapRecognizer = v3->_tapRecognizer;
    v3->_tapRecognizer = v29;

    [(UITapGestureRecognizer *)v3->_tapRecognizer setEnabled:1];
    [(TabBar *)v3 addGestureRecognizer:v3->_tapRecognizer];
    [TabCollectionViewSpringLoadingBehavior addSpringLoadedInteractionToTabView:v3];
    array = [MEMORY[0x277CBEA60] array];
    [(TabBar *)v3 setItems:array];

    v32 = WBSMakeAccessibilityIdentifier();
    [(TabBar *)v3 setAccessibilityIdentifier:v32];

    IsPad = _SFDeviceIsPad();
    v34 = 119.0;
    if (IsPad)
    {
      v34 = 132.0;
    }

    v3->_minimumTabWidth = v34;
    v35 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v3 action:sel__reorder_];
    reorderRecognizer = v3->_reorderRecognizer;
    v3->_reorderRecognizer = v35;

    [(UIPanGestureRecognizer *)v3->_reorderRecognizer setDelegate:v3];
    [(TabBar *)v3 addGestureRecognizer:v3->_reorderRecognizer];
    v37 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v3 action:sel__hover_];
    hoverRecognizer = v3->_hoverRecognizer;
    v3->_hoverRecognizer = v37;

    [(TabBar *)v3 addGestureRecognizer:v3->_hoverRecognizer];
    v39 = objc_alloc_init(MEMORY[0x277D28D88]);
    tabHoverPreviewController = v3->_tabHoverPreviewController;
    v3->_tabHoverPreviewController = v39;

    [(SFTabHoverPreviewController *)v3->_tabHoverPreviewController setHoverRecognizer:v3->_hoverRecognizer];
    indexSet = [MEMORY[0x277CCAA78] indexSet];
    overflowPinnedItemIndexes = v3->_overflowPinnedItemIndexes;
    v3->_overflowPinnedItemIndexes = indexSet;

    v43 = objc_alloc_init(PinnedTabsOverflowButton);
    pinnedOverflowButton = v3->_pinnedOverflowButton;
    v3->_pinnedOverflowButton = v43;

    [(PinnedTabsOverflowButton *)v3->_pinnedOverflowButton setTintStyle:v3->_tintStyle];
    objc_initWeak(&location, v3);
    v45 = MEMORY[0x277D75710];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __24__TabBar_initWithFrame___block_invoke;
    v49[3] = &unk_2781D9580;
    objc_copyWeak(&v50, &location);
    v46 = [v45 safari_menuWithUncachedChildrenProvider:v49];
    [(PinnedTabsOverflowButton *)v3->_pinnedOverflowButton setMenu:v46];

    [(TabBar *)v3 addSubview:v3->_pinnedOverflowButton];
    v47 = v3;
    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
  }

  return v3;
}

void *__24__TabBar_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _overflowPinnedItemsMenuElements];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([eventCopy type] == 9 && (-[TabBar bounds](self, "bounds"), v14.size.height = 70.0, v13.x = x, v13.y = y, CGRectContainsPoint(v14, v13)))
  {
    v8 = self->_scrollView;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = TabBar;
    v8 = [(TabBar *)&v11 hitTest:eventCopy withEvent:x, y];
  }

  v9 = v8;

  return v9;
}

- (void)_updateReorderRecognizer
{
  v3 = [(TabBar *)self _isScrollable]^ 1;
  reorderRecognizer = self->_reorderRecognizer;

  [(UIPanGestureRecognizer *)reorderRecognizer _setCanPanHorizontally:v3];
}

- (void)_updateBackground
{
  v3 = [MEMORY[0x277D75D00] _sf_effectWithStyle:2 forBarTintStyle:self->_tintStyle];
  [(UIVisualEffectView *)self->_leadingVibrancyEffectView setEffect:v3];
  [(UIVisualEffectView *)self->_trailingVibrancyEffectView setEffect:v3];
}

- (void)_itemDidPressCloseButton:(id)button
{
  tabHoverPreviewController = self->_tabHoverPreviewController;
  buttonCopy = button;
  [(SFTabHoverPreviewController *)tabHoverPreviewController dismiss];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabCollectionView:self closeItem:buttonCopy];

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didCloseTabWithTrigger:0 tabCollectionViewType:1];
}

- (void)_toggleMediaStateMutedForItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabBar:self toggleMediaStateMutedForItem:itemCopy];
}

- (void)_layoutItem:(id)item atIndex:(unint64_t)index inRect:(CGRect)rect itemCount:(unint64_t)count beforeActiveItem:(BOOL)activeItem
{
  activeItemCopy = activeItem;
  rect_16 = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rect_24 = item;
  isActive = [rect_24 isActive];
  isPlaceholder = [rect_24 isPlaceholder];
  v14 = [(TabBar *)self _itemAtIndexIsPinned:index];
  [(TabBar *)self _scrollableItemArea];
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  if (isActive)
  {
    v23 = 1;
  }

  else
  {
    v93.origin.x = x;
    v93.origin.y = y;
    v93.size.width = width;
    v93.size.height = rect_16;
    v23 = (CGRectIntersectsRect(*&v15, v93) || v14) && activeItemCopy;
  }

  v80.origin.x = v19;
  v80.origin.y = v20;
  v80.size.width = v21;
  v80.size.height = v22;
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = width;
  v94.size.height = rect_16;
  rect = v14;
  v24 = CGRectIntersectsRect(v80, v94) || v14;
  rect_8 = index;
  v25 = ![(NSIndexSet *)self->_overflowPinnedItemIndexes containsIndex:index];
  v26 = v25 & v24;
  v27 = v25 & v24 & (v23 ^ 1u);
  v28 = v23 & v25;
  layoutInfo = [rect_24 layoutInfo];
  v30 = layoutInfo;
  LOBYTE(v31) = self->_newTabVisibleInTabBar;
  if ((v31 & 1) == 0 && v23 & v25 | v27)
  {
    v31 = [layoutInfo isVisibleInTabBar] ^ 1;
  }

  self->_newTabVisibleInTabBar = v31;
  [v30 setVisibleInTabBar:v28 | v27];
  [v30 setTrailingActiveItem:v27];
  tabBarItemView = [v30 tabBarItemView];
  dragState = [rect_24 dragState];
  v34 = 1.0;
  if (dragState == 1)
  {
    v34 = 0.5;
  }

  [tabBarItemView setAlpha:v34];
  if (isActive)
  {
    [(TabBar *)self addSubview:tabBarItemView];
    v35 = 0;
    v36 = 0;
    v37 = rect_8;
  }

  else
  {
    if (v23)
    {
      v38 = v25;
    }

    else
    {
      v38 = v26;
    }

    v37 = rect_8;
    if (v38 == 1)
    {
      v39 = &OBJC_IVAR___TabBar__trailingContainer;
      if (v28)
      {
        v39 = &OBJC_IVAR___TabBar__leadingContainer;
      }

      [*(&self->super.super.super.isa + *v39) addSubview:tabBarItemView];
    }

    if (isPlaceholder)
    {
      v35 = 0;
    }

    else
    {
      if (rect_8)
      {
        v35 = isActive ^ 1;
      }

      else
      {
        v35 = 0;
      }

      if ((isActive & 1) == 0)
      {
        v36 = count - 1 != rect_8;
        goto LABEL_26;
      }
    }

    v36 = 0;
  }

LABEL_26:
  v40 = [(TabBar *)self _firstVisibleItemAfterIndex:v37];
  v41 = v40;
  v42 = rect && ([v40 isPinned] & 1) == 0 && -[NSIndexSet count](self->_overflowPinnedItemIndexes, "count") != 0;
  if (v35)
  {
    v43 = self->_visiblePinnedItemCount < v37;
    if (!v36)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v43 = 0;
    if (!v36)
    {
LABEL_36:
      LOBYTE(v44) = 0;
      goto LABEL_37;
    }
  }

  if ([(NSArray *)self->_items count]- 1 <= v37)
  {
    goto LABEL_36;
  }

  v44 = [v41 isActive] ^ 1 | v42;
LABEL_37:
  v45 = 0.0;
  if (self->_visiblePinnedItemCount && !rect)
  {
    [(TabBar *)self _scrollableItemArea];
    v49 = v48;
    v51 = v50;
    recta = x;
    v53 = v52;
    v55 = v54;
    v81.origin.x = recta;
    v56 = y;
    v81.origin.y = y;
    v81.size.width = width;
    v81.size.height = rect_16;
    MinX = CGRectGetMinX(v81);
    v82.origin.x = v49;
    v82.origin.y = v51;
    v82.size.width = v53;
    v82.size.height = v55;
    v58 = MinX > CGRectGetMinX(v82);
    v83.origin.x = recta;
    v83.origin.y = y;
    v83.size.width = width;
    v83.size.height = rect_16;
    MaxX = CGRectGetMaxX(v83);
    v84.origin.x = v49;
    v84.origin.y = v51;
    v84.size.width = v53;
    v84.size.height = v55;
    v60 = MaxX < CGRectGetMaxX(v84);
    _sf_usesLeftToRightLayout = [(TabBar *)self _sf_usesLeftToRightLayout];
    if (_sf_usesLeftToRightLayout)
    {
      v62 = v58;
    }

    else
    {
      v62 = v60;
    }

    v43 = v43 & v62;
    if (_sf_usesLeftToRightLayout)
    {
      v63 = v60;
    }

    else
    {
      v63 = v58;
    }

    LOBYTE(v44) = v44 & v63;
    v85.origin.x = recta;
    v85.origin.y = y;
    v85.size.width = width;
    v85.size.height = rect_16;
    v64 = CGRectGetMinX(v85);
    v86.origin.x = v49;
    v86.origin.y = v51;
    v86.size.width = v53;
    v86.size.height = v55;
    v73 = width;
    v65 = CGRectGetMinX(v86);
    v87.origin.x = v49;
    v87.origin.y = v51;
    v87.size.width = v53;
    v87.size.height = v55;
    v47 = fmax(v65, fmin(CGRectGetMaxX(v87), v64));
    v88.size.width = v73;
    v88.origin.x = recta;
    v88.origin.y = y;
    v88.size.height = rect_16;
    v71 = CGRectGetMaxX(v88);
    v89.origin.x = v49;
    v89.origin.y = v51;
    v89.size.width = v53;
    v89.size.height = v55;
    v66 = CGRectGetMinX(v89);
    v90.origin.x = v49;
    v90.origin.y = v51;
    v90.size.width = v53;
    v90.size.height = v55;
    v67 = fmax(v66, fmin(CGRectGetMaxX(v90), v71));
    v91.origin.y = v56;
    width = v73;
    v91.origin.x = recta;
    y = v56;
    v91.size.width = v73;
    v91.size.height = rect_16;
    v45 = 0.0;
    if (v47 > CGRectGetMinX(v91))
    {
      v92.origin.x = recta;
      v92.origin.y = v56;
      v92.size.width = v73;
      v92.size.height = rect_16;
      v45 = CGRectGetMinX(v92) - v47;
    }

    v46 = v67 - v47;
  }

  else
  {
    v46 = width;
    v47 = x;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v30 setCanClose:{objc_msgSend(WeakRetained, "tabCollectionView:canCloseItem:", self, rect_24)}];

  [v30 setLeadingEdgeVisible:v43];
  [v30 setTrailingEdgeVisible:v44 & 1];
  if ([(TabBar *)self _itemAtIndexIsPinned:rect_8])
  {
    v69 = 36.0;
  }

  else
  {
    v69 = fmax(width, self->_minimumTabWidth);
  }

  [v30 setTitleLayoutWidth:v69];
  [v30 setContentOffset:v45];
  [v30 setFrame:{v47, y, v46, rect_16}];
}

- (double)_itemWidth
{
  [(TabBar *)self _sf_safeAreaBounds];
  Width = CGRectGetWidth(v10);
  [(TabBar *)self _pinnedItemsWidth];
  v5 = v4;
  minimumTabWidth = self->_minimumTabWidth;
  _scrollableItemCount = [(TabBar *)self _scrollableItemCount];
  _scrollableItemCount2 = 1.0;
  if (_scrollableItemCount >= 2)
  {
    _scrollableItemCount2 = [(TabBar *)self _scrollableItemCount];
  }

  return fmax(minimumTabWidth, (Width - v5) / _scrollableItemCount2);
}

- (double)_scrollableWidth
{
  [(TabBar *)self _itemWidth];
  v4 = v3;
  _scrollableItemCount = [(TabBar *)self _scrollableItemCount];
  [(TabBar *)self _pinnedItemsWidth];
  return v6 + v4 * _scrollableItemCount;
}

- (BOOL)_isScrollable
{
  [(TabBar *)self _scrollableWidth];
  v4 = v3;
  [(TabBar *)self _sf_safeAreaBounds];
  return v4 > CGRectGetWidth(v6);
}

- (void)_scrollToItemIfNeeded:(id)needed
{
  neededCopy = needed;
  _isScrollable = [(TabBar *)self _isScrollable];
  if (neededCopy)
  {
    if (_isScrollable && ([neededCopy isPinned] & 1) == 0)
    {
      [(TabBar *)self _sf_safeAreaBounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [(TabBar *)self _itemWidth];
      v14 = v13;
      v15 = [(NSArray *)self->_items indexOfObject:neededCopy];
      if (v15 < [(NSArray *)self->_items count])
      {
        if ([(TabBar *)self _sf_usesLeftToRightLayout])
        {
          [(TabBar *)self _totalPinnedItemCount];
        }

        [(TabBar *)self _pinnedItemInsets];
        v25.origin.x = v6;
        v25.origin.y = v8;
        v25.size.width = v10;
        v25.size.height = v12;
        CGRectGetMinX(v25);
        _SFRoundFloatToPixels();
        v17 = v16;
        [(UIScrollView *)self->_scrollView contentOffset];
        v19 = v18;
        v21 = fmax(fmin(v20, v17 + -128.0), v14 + v17 - v10 + 128.0);
        [(TabBar *)self _scrollableWidth];
        [(UIScrollView *)self->_scrollView setContentOffset:fmax(fmin(v21, v22 - v10), 0.0), v19];
      }
    }
  }
}

- (void)scrollToItem:(id)item animated:(BOOL)animated
{
  v33 = *MEMORY[0x277D85DE8];
  [(TabBar *)self _scrollToItemIfNeeded:item];
  if (animated)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = self->_items;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          layoutInfo = [*(*(&v27 + 1) + 8 * i) layoutInfo];
          if ([layoutInfo isVisibleInTabBar])
          {
            [v6 addObject:layoutInfo];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v23 + 1) + 8 * j) setActiveAnimationCount:{objc_msgSend(*(*(&v23 + 1) + 8 * j), "activeAnimationCount") + 1}];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v15);
    }

    v18 = MEMORY[0x277D75D18];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __32__TabBar_scrollToItem_animated___block_invoke;
    v22[3] = &unk_2781D4D40;
    v22[4] = self;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __32__TabBar_scrollToItem_animated___block_invoke_2;
    v20[3] = &unk_2781D4B18;
    v21 = v13;
    v19 = v13;
    [v18 _animateUsingDefaultTimingWithOptions:2 animations:v22 completion:v20];
  }

  else
  {

    [(TabBar *)self layoutBelowIfNeeded];
  }
}

void __32__TabBar_scrollToItem_animated___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) setActiveAnimationCount:{objc_msgSend(*(*(&v6 + 1) + 8 * v5), "activeAnimationCount", v6) - 1}];
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (CGRect)frameForItem:(id)item
{
  layoutInfo = [item layoutInfo];
  [layoutInfo frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)viewForItem:(id)item
{
  layoutInfo = [item layoutInfo];
  tabBarItemView = [layoutInfo tabBarItemView];

  return tabBarItemView;
}

- (id)targetItemForDropAtPoint:(CGPoint)point
{
  x = point.x;
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v27;
    v10 = 1.79769313e308;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        layoutInfo = [v12 layoutInfo];
        if ([layoutInfo hasViews])
        {
          [layoutInfo frame];
          v14 = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;
          v18 = CGRectGetWidth(v33);
          [(TabBar *)self _itemWidth];
          _SFRoundFloatToPixels();
          v20 = v19;
          _SFOnePixel();
          if (v18 >= v20 - v21 || [v12 isPinned])
          {
            v34.origin.x = v14;
            v34.origin.y = y;
            v34.size.width = width;
            v34.size.height = height;
            v22 = x - CGRectGetMidX(v34);
            v23 = v22 >= 0.0 ? v22 : -v22;
            if (v23 < v10)
            {
              v24 = v12;

              v8 = v24;
              v10 = v23;
            }
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unsigned)_edgeToAlignWithPreviewForItem:(id)item
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [(NSArray *)self->_items indexOfObjectIdenticalTo:item];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = -1;
    while (2)
    {
      v10 = 0;
      v11 = v9 + 1;
      v9 += v7;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v13 + 1) + 8 * v10) isActive])
        {
          v9 = v11;
          goto LABEL_12;
        }

        ++v10;
        ++v11;
      }

      while (v7 != v10);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = -1;
  }

LABEL_12:

  if (v4 > v9 != [(TabBar *)self _sf_usesLeftToRightLayout])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (id)targetedDragPreviewForLiftingItem:(id)item
{
  itemCopy = item;
  v5 = [(TabBar *)self viewForItem:itemCopy];
  if (v5)
  {
    v6 = itemCopy;
    layoutInfo = [v6 layoutInfo];
    viewForDragPreview = [layoutInfo viewForDragPreview];

    [viewForDragPreview frame];
    x = v41.origin.x;
    y = v41.origin.y;
    height = v41.size.height;
    Width = CGRectGetWidth(v41);
    if ([v6 isPinned])
    {
      v13 = 36.0;
    }

    else
    {
      [(TabBar *)self itemWidth];
    }

    [viewForDragPreview setFrame:{x, y, fmax(Width, v13), height}];
    [v5 center];
    v16 = v15;
    [v5 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [viewForDragPreview frame];
    v25 = CGRectGetWidth(v42);
    v26 = [(TabBar *)self _edgeToAlignWithPreviewForItem:v6];
    v27 = v25 * 0.5;
    v28 = v18;
    v29 = v20;
    v30 = v22;
    v31 = v24;
    if (v26)
    {
      v32 = CGRectGetMaxX(*&v28) - v27;
    }

    else
    {
      v32 = v27 + CGRectGetMinX(*&v28);
    }

    v33 = objc_alloc_init(MEMORY[0x277D75480]);
    if (_SFIsDarkTintStyle())
    {
      darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
      [v33 setBackgroundColor:darkGrayColor];
    }

    v35 = objc_alloc(MEMORY[0x277D75B88]);
    v36 = objc_alloc(MEMORY[0x277D75488]);
    superview = [v5 superview];
    v38 = [v36 initWithContainer:superview center:{v32, v16}];
    v14 = [v35 initWithView:viewForDragPreview parameters:v33 target:v38];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)shouldPinItemsDroppedAtPoint:(CGPoint)point
{
  x = point.x;
  [(TabBar *)self _pinnedItemsWidth:point.x];
  v6 = v5 + self->_minimumTabWidth * 0.33;
  _sf_usesLeftToRightLayout = [(TabBar *)self _sf_usesLeftToRightLayout];
  [(TabBar *)self _sf_safeAreaBounds];
  if (_sf_usesLeftToRightLayout)
  {
    return x < v6 + CGRectGetMinX(*&v8);
  }

  else
  {
    return x > CGRectGetMaxX(*&v8) - v6;
  }
}

- (id)dragPreviewForItem:(id)item pinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  itemCopy = item;
  [itemCopy setTabBar:self];
  layoutInfo = [itemCopy layoutInfo];

  tabBarItemPreviewView = [layoutInfo tabBarItemPreviewView];

  [tabBarItemPreviewView setPinned:pinnedCopy];
  if (pinnedCopy && !self->_allowsScrollingPinnedItems)
  {
    v10 = 36.0;
  }

  else
  {
    [(TabBar *)self itemWidth];
    v10 = v9;
  }

  [(TabBar *)self bounds];
  [tabBarItemPreviewView setFrame:{0.0, 0.0, v10, CGRectGetHeight(v21)}];
  [tabBarItemPreviewView setTitleLayoutWidth:v10];
  if (pinnedCopy)
  {
    closeButton = [tabBarItemPreviewView closeButton];
    [closeButton setHidden:0];
  }

  v12 = MEMORY[0x277D75D18];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __36__TabBar_dragPreviewForItem_pinned___block_invoke;
  v18[3] = &unk_2781D4D40;
  v13 = tabBarItemPreviewView;
  v19 = v13;
  [v12 performWithoutAnimation:v18];
  [(UIView *)self->_dragPreviewContainer addSubview:v13];
  v14 = objc_alloc_init(MEMORY[0x277D75480]);
  if (_SFIsDarkTintStyle())
  {
    darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
    [v14 setBackgroundColor:darkGrayColor];
  }

  v16 = [objc_alloc(MEMORY[0x277D75478]) initWithView:v13 parameters:v14];

  return v16;
}

- (void)cleanUpDragPreviewForItem:(id)item
{
  itemCopy = item;
  layoutInfo = [itemCopy layoutInfo];
  [layoutInfo clearPreviewView];

  if (![(NSArray *)self->_items containsObject:itemCopy])
  {
    tabBar = [itemCopy tabBar];

    if (tabBar == self)
    {
      [itemCopy setTabBar:0];
    }
  }
}

- (void)_scrollTowardItem:(id)item byAmount:(double)amount
{
  v6 = [(NSArray *)self->_items indexOfObject:item];
  if (v6 < [(NSArray *)self->_items count])
  {
    _sf_usesLeftToRightLayout = [(TabBar *)self _sf_usesLeftToRightLayout];
    if (_sf_usesLeftToRightLayout)
    {
      [(TabBar *)self _totalPinnedItemCount];
    }

    [(TabBar *)self _sf_safeAreaBounds];
    v9 = v8;
    [(TabBar *)self _itemWidth];
    _SFRoundFloatToPixels();
    v11 = v10;
    if (_sf_usesLeftToRightLayout)
    {
      [(TabBar *)self _pinnedItemsWidth];
      v11 = v11 + v12;
    }

    [(UIScrollView *)self->_scrollView contentOffset];
    v14 = v13 + v9 * 0.5;
    [(UIScrollView *)self->_scrollView contentOffset];
    v16 = v15;
    v18 = v17 + v9 * amount;
    v19 = v17 - v9 * amount;
    if (v11 <= v14)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    [(TabBar *)self _scrollableWidth];
    v22 = fmax(fmin(v20, v21 - v9), 0.0);
    [(TabBar *)self layoutBelowIfNeeded];
    [(UIScrollView *)self->_scrollView setContentOffset:v22, v16];
    [(UIHoverGestureRecognizer *)self->_hoverRecognizer setEnabled:0];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __37__TabBar__scrollTowardItem_byAmount___block_invoke;
    v24[3] = &unk_2781D4D40;
    v24[4] = self;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __37__TabBar__scrollTowardItem_byAmount___block_invoke_2;
    v23[3] = &unk_2781D4B18;
    v23[4] = self;
    [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:2 animations:v24 completion:v23];
  }
}

- (double)_horizontalPositionForItemAtIndex:(unint64_t)index withSlowingFactor:(double)factor pinned:(BOOL)pinned
{
  indexCopy = index;
  if (pinned)
  {
    v7 = (index - [(NSIndexSet *)self->_overflowPinnedItemIndexes countOfIndexesInRange:0, index, factor]) * 36.0;
    [(TabBar *)self _sf_safeAreaBounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    _sf_usesLeftToRightLayout = [(TabBar *)self _sf_usesLeftToRightLayout];
    v17 = v9;
    v18 = v11;
    v19 = v13;
    v20 = v15;
    if (_sf_usesLeftToRightLayout)
    {
      return v7 + CGRectGetMinX(*&v17);
    }

    else
    {
      return CGRectGetMaxX(*&v17) - v7;
    }
  }

  else
  {
    [(TabBar *)self bounds];
    v24 = v23;
    v25 = [(NSArray *)self->_items count];
    [(TabBar *)self _itemWidth];
    v27 = v26;
    if (![(TabBar *)self _sf_usesLeftToRightLayout])
    {
      indexCopy = v25 - indexCopy;
    }

    if ([(TabBar *)self _sf_usesLeftToRightLayout])
    {
      indexCopy -= [(TabBar *)self _totalPinnedItemCount];
    }

    [(TabBar *)self _pinnedItemInsets];
    v29 = v28;
    [(TabBar *)self _sf_safeAreaBounds];
    v30 = v29 + CGRectGetMinX(v36);
    if ([(TabBar *)self _isScrollable])
    {
      [(UIScrollView *)self->_scrollView contentOffset];
      v32 = v31;
      v33 = v29 + v27 * [(TabBar *)self _scrollableItemCount];
      v34 = v30 + indexCopy * v27;
      itemOffsetForSlowingOffset(v33 - v34, v33 - v24 - v32, factor);
      itemOffsetForSlowingOffset(v34 - v29, v32, factor);
    }

    _SFRoundFloatToPixels();
  }

  return result;
}

- (CGRect)_frameForItemAtIndex:(unint64_t)index
{
  v5 = [(TabBar *)self _itemAtIndexIsPinned:?];
  if ([(NSIndexSet *)self->_overflowPinnedItemIndexes containsIndex:index])
  {
    index = [(TabBar *)self _lastVisiblePinnedItemIndex];
  }

  [(TabBar *)self _horizontalPositionForItemAtIndex:index withSlowingFactor:v5 pinned:64.0];
  v7 = v6;
  [(TabBar *)self _horizontalPositionForItemAtIndex:index + 1 withSlowingFactor:v5 pinned:64.0];
  v9 = v8;
  [(TabBar *)self _sf_usesLeftToRightLayout];
  [(TabBar *)self bounds];

  _SFRoundRectToPixels();
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)_initialFrameForItemAtIndex:(unint64_t)index
{
  v5 = [(NSArray *)self->_items count]- 1;
  [(TabBar *)self _sf_safeAreaBounds];
  Width = CGRectGetWidth(v15);
  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = fmax(self->_minimumTabWidth, Width / v7);
  _sf_usesLeftToRightLayout = [(TabBar *)self _sf_usesLeftToRightLayout];
  if (v8 * v5 <= Width)
  {
    [(TabBar *)self _sf_safeAreaBounds];
    CGRectGetMinX(v16);
  }

  else
  {
    [(TabBar *)self _horizontalPositionForItemAtIndex:(_sf_usesLeftToRightLayout ^ 1u) + index];
  }

  [(TabBar *)self bounds];

  _SFRoundRectToPixels();
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (unint64_t)_effectiveIndexForIndex:(unint64_t)index ofItems:(id)items currentItems:(id)currentItems
{
  itemsCopy = items;
  currentItemsCopy = currentItems;
  v10 = 0;
  indexCopy = index;
  while (1)
  {
    if (indexCopy < [itemsCopy count])
    {
      v12 = [itemsCopy objectAtIndex:indexCopy];
      v13 = currentItemsCopy ? currentItemsCopy : self->_items;
      v14 = [(NSArray *)v13 indexOfObject:v12];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    ++v10;
    --indexCopy;
    if (v10 > index)
    {
      goto LABEL_10;
    }
  }

  index = v14 + v10;
LABEL_10:

  return index;
}

- (void)_layoutContainers
{
  v70 = *MEMORY[0x277D85DE8];
  _sf_usesLeftToRightLayout = [(TabBar *)self _sf_usesLeftToRightLayout];
  v61 = 0.0;
  MaxX = 0.0;
  if (_sf_usesLeftToRightLayout)
  {
    [(TabBar *)self bounds];
    MaxX = CGRectGetMaxX(v71);
  }

  [(TabBar *)self bounds];
  Height = CGRectGetHeight(v72);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v6 = self->_items;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v66;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v66 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v65 + 1) + 8 * i);
        if ([v11 isActive])
        {
          layoutInfo = [v11 layoutInfo];
          tabBarItemView = [layoutInfo tabBarItemView];
          [tabBarItemView frame];
          MaxX = v14;
          v59 = v16;
          v61 = v15;
          rect_24 = v17;

          goto LABEL_13;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  rect_24 = 0.0;
  v59 = Height;
LABEL_13:
  rect = MaxX;

  if (_sf_usesLeftToRightLayout)
  {
    v18 = &OBJC_IVAR___TabBar__leadingContainer;
  }

  else
  {
    v18 = &OBJC_IVAR___TabBar__trailingContainer;
  }

  v19 = *(&self->super.super.super.isa + *v18);
  if (_sf_usesLeftToRightLayout)
  {
    v20 = &OBJC_IVAR___TabBar__trailingContainer;
  }

  else
  {
    v20 = &OBJC_IVAR___TabBar__leadingContainer;
  }

  v21 = v19;
  v22 = *(&self->super.super.super.isa + *v20);
  [(TabBar *)self bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(TabBar *)self bounds];
  rect_8 = v34;
  rect_16 = v33;
  v35 = v31;
  v36 = v32;
  if (_sf_usesLeftToRightLayout)
  {
    v37 = v26;
  }

  else
  {
    v37 = v31;
  }

  v51 = v31;
  if (_sf_usesLeftToRightLayout)
  {
    v38 = v30;
  }

  else
  {
    v38 = v32;
  }

  v57 = v37;
  v58 = v38;
  v73.origin.x = MaxX;
  v73.size.height = v59;
  v73.origin.y = v61;
  v73.size.width = rect_24;
  v39 = CGRectGetMinX(v73) - v24;
  v74.origin.x = v24;
  v74.origin.y = v26;
  v74.size.width = v28;
  v74.size.height = v30;
  v40 = fmax(fmin(CGRectGetWidth(v74), v39), 0.0);
  [v21 setBounds:{v24, v26, v40, v30}];
  v75.origin.x = v24;
  v75.origin.y = v26;
  v75.size.width = v40;
  v75.size.height = v30;
  v41 = CGRectGetMaxX(v75);
  v76.origin.x = v24;
  v76.origin.y = v26;
  v76.size.width = v40;
  v76.size.height = v30;
  [v21 setCenter:{v41, CGRectGetMidY(v76)}];
  v77.origin.x = rect;
  v77.size.height = v59;
  v77.origin.y = v61;
  v77.size.width = rect_24;
  v42 = CGRectGetMaxX(v77);
  v78.origin.x = rect_16;
  v78.origin.y = v35;
  v78.size.width = rect_8;
  v78.size.height = v36;
  v43 = fmax(fmin(CGRectGetWidth(v78), v42 - rect_16), 0.0);
  v44 = rect_16 + v43;
  v45 = rect_8 - v43;
  if (_sf_usesLeftToRightLayout)
  {
    v46 = rect_8 - v43;
  }

  else
  {
    v46 = v40;
  }

  if (_sf_usesLeftToRightLayout)
  {
    v47 = rect_16 + v43;
  }

  else
  {
    v47 = v24;
  }

  rect_24a = v47;
  if (_sf_usesLeftToRightLayout)
  {
    v26 = v51;
    v48 = v36;
  }

  else
  {
    v48 = v30;
  }

  v60 = v48;
  v62 = v46;
  if (!_sf_usesLeftToRightLayout)
  {
    v40 = v45;
    v24 = v44;
  }

  [v22 setBounds:{v44, v51, v45, v36}];
  v79.origin.x = v44;
  v79.origin.y = v51;
  v79.size.width = v45;
  v79.size.height = v36;
  MinX = CGRectGetMinX(v79);
  v80.origin.x = v44;
  v80.origin.y = v51;
  v80.size.width = v45;
  v80.size.height = v36;
  MidY = CGRectGetMidY(v80);
  CGAffineTransformMakeTranslation(&v64, MinX, MidY);
  v63 = v64;
  [v22 setTransform:&v63];
  [(UIVisualEffectView *)self->_leadingVibrancyEffectView setFrame:v24, v57, v40, v58];
  [(UIVisualEffectView *)self->_trailingVibrancyEffectView setFrame:rect_24a, v26, v62, v60];
}

- (void)_layoutIndexes:(id)indexes ofItems:(id)items currentItems:(id)currentItems
{
  rect2_8 = indexes;
  itemsCopy = items;
  currentItemsCopy = currentItems;
  v10 = [itemsCopy count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    rect2 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
    v16 = 1;
    do
    {
      v17 = [itemsCopy objectAtIndexedSubscript:{v12, *&rect2}];
      [v17 setTabBar:self];
      layoutInfo = [v17 layoutInfo];
      if (self->_hidesTitles)
      {
        isPlaceholder = 1;
      }

      else
      {
        isPlaceholder = [v17 isPlaceholder];
      }

      [layoutInfo setHidesTitleText:isPlaceholder];
      if ([rect2_8 containsIndex:v12])
      {
        v20 = [(TabBar *)self _effectiveIndexForIndex:v12 ofItems:itemsCopy currentItems:currentItemsCopy];
        if (!currentItemsCopy || ([layoutInfo frame], v46.origin.x = rect2, v46.origin.y = v13, v46.size.width = v14, v46.size.height = v15, !CGRectEqualToRect(v44, v46)) || (objc_msgSend(v17, "isActive") & 1) != 0 || (objc_msgSend(v17, "isPlaceholder") & 1) != 0 || v20 >= -[NSArray count](self->_items, "count"))
        {
          [(TabBar *)self _frameForItemAtIndex:v20];
        }

        else
        {
          [(TabBar *)self _initialFrameForItemAtIndex:v20];
        }

        v25 = v21;
        v26 = v22;
        v27 = v23;
        v28 = v24;
        _isScrollable = [(TabBar *)self _isScrollable];
        v30 = 0.0;
        if (_isScrollable)
        {
          [(TabBar *)self _horizontalPositionForItemAtIndex:v20 withSlowingFactor:52.0];
          v32 = v31;
          [(TabBar *)self _horizontalPositionForItemAtIndex:v20];
          v30 = vabdd_f64(v32, v33);
        }

        [layoutInfo setTitleAnchorAdditionalOffset:v30];
        [(TabBar *)self _layoutItem:v17 atIndex:v12 inRect:v11 itemCount:v16 & 1 beforeActiveItem:v25, v26, v27, v28];
      }

      v16 &= [v17 isActive] ^ 1;

      ++v12;
    }

    while (v11 != v12);
  }

  [(TabBar *)self _layoutContainers];
  [(TabBar *)self safeAreaInsets];
  v35 = v34;
  v37 = v36;
  scrollView = self->_scrollView;
  [(TabBar *)self _scrollableWidth];
  v40 = v37 + v35 + v39;
  [(TabBar *)self bounds];
  [(UIScrollView *)scrollView setContentSize:v40, CGRectGetHeight(v45)];
  [(TabBar *)self _updateReorderRecognizer];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = TabBar;
  [(TabBar *)&v18 layoutSubviews];
  [(TabBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self->_scrollView frame];
  v20.origin.x = v11;
  v20.origin.y = v12;
  v20.size.width = v13;
  v20.size.height = v14;
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  if (!CGRectEqualToRect(v19, v20))
  {
    [(UIScrollView *)self->_scrollView setFrame:v4, v6, v8, v10];
    [(TabBar *)self _updatePinnedItemCount];
  }

  v15 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, -[NSArray count](self->_items, "count")}];
  [(TabBar *)self _layoutIndexes:v15 ofItems:self->_items currentItems:0];

  if (![(UIScrollView *)self->_scrollView isDragging]&& ![(UIScrollView *)self->_scrollView isDecelerating]&& self->_newTabVisibleInTabBar)
  {
    [(SFTabHoverPreviewController *)self->_tabHoverPreviewController setNeedsSnapshotUpdate];
    self->_newTabVisibleInTabBar = 0;
  }

  [(TabBar *)self _pinnedItemInsets];
  [(UIScrollView *)self->_scrollView _setAutoScrollTouchInsets:0.0, -128.0 - v16, 0.0, -128.0 - v17];
  [(TabBar *)self _layOutPinnedOverflowButton];
}

- (void)setTintStyle:(int64_t)style
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_tintStyle != style || ([(UIVisualEffectView *)self->_leadingVibrancyEffectView effect], (v5 = objc_claimAutoreleasedReturnValue()) == 0) || (v6 = v5, [(UIVisualEffectView *)self->_trailingVibrancyEffectView effect], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    self->_tintStyle = style;
    [(TabBar *)self _setOverrideUserInterfaceStyle:2 * (style == 4)];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = self->_items;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          layoutInfo = [*(*(&v23 + 1) + 8 * v12) layoutInfo];
          [layoutInfo updateTabBarStyle];

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v10);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = self->_tabBarItemViewReuseStack;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v19 + 1) + 8 * v18++) updateTabBarStyle];
        }

        while (v16 != v18);
        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v16);
    }

    [(PinnedTabsOverflowButton *)self->_pinnedOverflowButton setTintStyle:style];
    [(TabBar *)self _updateBackground];
    [(TabBar *)self setNeedsLayout];
  }
}

- (void)setHidesTitles:(BOOL)titles
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_hidesTitles != titles)
  {
    titlesCopy = titles;
    self->_hidesTitles = titles;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_items;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          layoutInfo = [*(*(&v10 + 1) + 8 * v8) layoutInfo];
          [layoutInfo setHidesTitleText:titlesCopy];

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  v58 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v7 = itemsCopy;
  if (self->_items != itemsCopy && ![(NSArray *)itemsCopy isEqualToArray:?])
  {
    v35 = animatedCopy;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v36 = v7;
    v8 = v7;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v53;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v53 != v11)
          {
            objc_enumerationMutation(v8);
          }

          layoutInfo = [*(*(&v52 + 1) + 8 * i) layoutInfo];
          [layoutInfo setRemovedFromTabBar:0];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v10);
    }

    v14 = [MEMORY[0x277CBEB98] setWithArray:v8];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = self->_items;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v49;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v49 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v48 + 1) + 8 * j);
          if (([v14 containsObject:v20] & 1) == 0)
          {
            layoutInfo2 = [v20 layoutInfo];
            [layoutInfo2 setRemovedFromTabBar:1];

            [v20 setTabBar:0];
          }
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v17);
    }

    v22 = [MEMORY[0x277CBEB70] orderedSetWithArray:self->_items];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __28__TabBar_setItems_animated___block_invoke;
    v46[3] = &unk_2781D95A8;
    v23 = v22;
    v47 = v23;
    v24 = [(NSArray *)v8 indexOfObjectWithOptions:2 passingTest:v46];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __28__TabBar_setItems_animated___block_invoke_2;
    v42[3] = &unk_2781D95D0;
    v42[4] = self;
    v25 = v8;
    v43 = v25;
    v26 = v23;
    v44 = v26;
    v45 = v24;
    v27 = [(NSArray *)v25 indexesOfObjectsPassingTest:v42];
    if (v35)
    {
      [(TabBar *)self _layoutIndexes:v27 ofItems:v25 currentItems:v26];
    }

    v28 = [(NSArray *)v25 copy];
    items = self->_items;
    self->_items = v28;

    [(TabBar *)self _updatePinnedItemCount];
    v30 = [MEMORY[0x277CBEB70] orderedSetWithArray:self->_items];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __28__TabBar_setItems_animated___block_invoke_3;
    v37[3] = &unk_2781D95F8;
    v37[4] = self;
    v31 = v25;
    v38 = v31;
    v32 = v30;
    v40 = v26;
    v41 = v24;
    v39 = v32;
    v33 = v26;
    v34 = [(NSArray *)v31 indexesOfObjectsPassingTest:v37];
    v7 = v36;
    if (v35)
    {
      [(TabBar *)self _layoutIndexes:v34 ofItems:v31 currentItems:v32];
    }

    [(TabBar *)self setNeedsLayout];
  }
}

uint64_t __28__TabBar_setItems_animated___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) _effectiveIndexForIndex:a3 ofItems:*(a1 + 40) currentItems:*(a1 + 48)] <= *(a1 + 56))
  {
    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 48) containsObject:v5] ^ 1;
  }

  return v6;
}

uint64_t __28__TabBar_setItems_animated___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) _effectiveIndexForIndex:a3 ofItems:*(a1 + 40) currentItems:*(a1 + 48)] <= *(a1 + 64))
  {
    v6 = [*(a1 + 56) containsObject:v5] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_itemAtLocation:(CGPoint)location
{
  x = location.x;
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_items;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        layoutInfo = [v8 layoutInfo];
        if ([layoutInfo hasViews])
        {
          [layoutInfo frame];
          v10 = v22.origin.x;
          y = v22.origin.y;
          width = v22.size.width;
          height = v22.size.height;
          if (CGRectGetMinX(v22) <= x)
          {
            v23.origin.x = v10;
            v23.origin.y = y;
            v23.size.width = width;
            v23.size.height = height;
            if (x < CGRectGetMaxX(v23))
            {
              v5 = v8;

              goto LABEL_13;
            }
          }
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

- (void)_activateItemIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = neededCopy;
  if (neededCopy)
  {
    v9 = neededCopy;
    isActive = [neededCopy isActive];
    v5 = v9;
    if ((isActive & 1) == 0)
    {
      isPlaceholder = [v9 isPlaceholder];
      v5 = v9;
      if ((isPlaceholder & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained tabCollectionView:self didSelectItem:v9];

        v5 = v9;
      }
    }
  }
}

- (id)_itemForTouch:(id)touch
{
  [touch locationInView:self];

  return [(TabBar *)self _itemAtLocation:?];
}

- (void)_tap:(id)_tap
{
  [_tap locationInView:self];
  v4 = [(TabBar *)self _itemAtLocation:?];
  v11 = v4;
  if (v4)
  {
    _isScrollable = [(TabBar *)self _isScrollable];
    v4 = v11;
    if (_isScrollable)
    {
      layoutInfo = [v11 layoutInfo];
      [layoutInfo frame];
      v8 = v7;
      [(TabBar *)self _itemWidth];
      if (v8 >= v9 * 0.8)
      {

        v4 = v11;
      }

      else
      {
        isPinned = [v11 isPinned];

        v4 = v11;
        if ((isPinned & 1) == 0)
        {
          [(TabBar *)self _scrollTowardItem:v11 byAmount:0.25];
          goto LABEL_8;
        }
      }
    }
  }

  [(TabBar *)self _activateItemIfNeeded:v4];
LABEL_8:
}

- (void)addInteraction:(id)interaction
{
  interactionCopy = interaction;
  v6.receiver = self;
  v6.super_class = TabBar;
  [(TabBar *)&v6 addInteraction:interactionCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_dragInteraction, interaction);
  }
}

- (void)_reorder:(id)_reorder
{
  v21 = *MEMORY[0x277D85DE8];
  _reorderCopy = _reorder;
  if (([_reorderCopy state] - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    [(UIPanGestureRecognizer *)self->_reorderRecognizer translationInView:self];
    if (v6 != *MEMORY[0x277CBF348] || v5 != *(MEMORY[0x277CBF348] + 8))
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      _activeEvents = [_reorderCopy _activeEvents];
      v9 = [_activeEvents countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(_activeEvents);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            if (![v13 type])
            {
              v14 = [_reorderCopy _activeTouchesForEvent:v13];
              anyObject = [v14 anyObject];

              if (anyObject)
              {

                [(UIDragInteraction *)self->_dragInteraction _immediatelyBeginDragWithTouch:anyObject completion:0];
                _activeEvents = anyObject;
                goto LABEL_17;
              }
            }
          }

          v10 = [_activeEvents countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:

      [_reorderCopy setEnabled:0];
      [_reorderCopy setEnabled:1];
    }
  }
}

- (void)_hover:(id)_hover
{
  _hoverCopy = _hover;
  [_hoverCopy locationInView:self];
  v6 = v5;
  v8 = v7;
  state = [_hoverCopy state];

  if ((state - 1) > 1)
  {
    tabHoverPreviewController = self->_tabHoverPreviewController;

    [(SFTabHoverPreviewController *)tabHoverPreviewController updateWithItem:0 atLocation:v6, v8];
  }

  else
  {
    v11 = [(TabBar *)self _itemAtLocation:v6, v8];
    [(SFTabHoverPreviewController *)self->_tabHoverPreviewController updateWithItem:v11 atLocation:v6, v8];
  }
}

- (unint64_t)indexOfCenterItem
{
  [(TabBar *)self bounds];
  MidX = CGRectGetMidX(v21);
  if (MidX == 0.0)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(TabBar *)v4 indexOfCenterItem];
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = MidX;
  if (![(NSArray *)self->_items count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = 0;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v8 = [(NSArray *)self->_items objectAtIndexedSubscript:v7];
    layoutInfo = [v8 layoutInfo];
    [layoutInfo frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v22.origin.x = v11;
    v22.origin.y = v13;
    v22.size.width = v15;
    v22.size.height = v17;
    MinX = CGRectGetMinX(v22);
    v23.origin.x = v11;
    v23.origin.y = v13;
    v23.size.width = v15;
    v23.size.height = v17;
    if (v6 <= CGRectGetMaxX(v23) && MinX < v6)
    {
      v5 = v7;
    }

    ++v7;
  }

  while (v7 < [(NSArray *)self->_items count]);
  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TabBar;
  [(TabBar *)&v4 dealloc];
}

- (void)updatePinnedItems
{
  visiblePinnedItemCount = self->_visiblePinnedItemCount;
  v4 = [(NSIndexSet *)self->_overflowPinnedItemIndexes count];
  [(TabBar *)self _updatePinnedItemCount];
  v5 = [(NSIndexSet *)self->_overflowPinnedItemIndexes count];
  if (v4 != v5 || visiblePinnedItemCount != self->_visiblePinnedItemCount)
  {
    [(TabBar *)self setNeedsLayout];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __27__TabBar_updatePinnedItems__block_invoke;
    v6[3] = &unk_2781D4D40;
    v6[4] = self;
    [MEMORY[0x277D75D18] sf_animate:(v5 | v4) == 0 usingDefaultMotionWithOptions:2 animations:v6 completion:0];
  }
}

- (void)_updatePinnedItemCount
{
  v29 = *MEMORY[0x277D85DE8];
  self->_visiblePinnedItemCount = 0;
  indexSet = [MEMORY[0x277CCAA78] indexSet];
  overflowPinnedItemIndexes = self->_overflowPinnedItemIndexes;
  self->_overflowPinnedItemIndexes = indexSet;

  if (!self->_allowsScrollingPinnedItems)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = self->_items;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v8 += [*(*(&v24 + 1) + 8 * i) isPinned];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    self->_visiblePinnedItemCount = v8;
    v11 = [(NSArray *)self->_items indexOfObjectPassingTest:&__block_literal_global_50];
    v12 = v11;
    v14 = v11 != 0x7FFFFFFFFFFFFFFFLL && v11 < v8;
    v15 = 3.5;
    if ([(NSArray *)self->_items count]- v8 <= 3)
    {
      v15 = ([(NSArray *)self->_items count]- v8);
    }

    [(TabBar *)self _sf_safeAreaBounds];
    Width = CGRectGetWidth(v30);
    [(TabBar *)self _itemWidth];
    v18 = fmax((Width - v17 * v15) / 36.0 + -1.0, 1.0) + v14;
    if (v8 > v18 + 1)
    {
      if (v8 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v8;
      }

      self->_visiblePinnedItemCount = v19;
      v20 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{v19, v8 - v19}];
      v21 = [(NSArray *)self->_items indexOfObjectPassingTest:&__block_literal_global_54_0];
      if ([v20 containsIndex:v21])
      {
        [v20 addIndex:{objc_msgSend(v20, "firstIndex") - 1}];
        [v20 removeIndex:v21];
      }

      if ([v20 containsIndex:v12])
      {
        [v20 addIndex:{objc_msgSend(v20, "firstIndex") - 1}];
        [v20 removeIndex:v12];
      }

      v22 = [v20 copy];
      v23 = self->_overflowPinnedItemIndexes;
      self->_overflowPinnedItemIndexes = v22;
    }
  }
}

- (id)_firstVisibleItemAfterIndex:(unint64_t)index
{
  while (++index < [(NSArray *)self->_items count])
  {
    if (![(NSIndexSet *)self->_overflowPinnedItemIndexes containsIndex:index])
    {
      v5 = [(NSArray *)self->_items objectAtIndexedSubscript:index];
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (unint64_t)_lastVisiblePinnedItemIndex
{
  if (![(TabBar *)self _totalPinnedItemCount])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = 0;
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (![(NSIndexSet *)self->_overflowPinnedItemIndexes containsIndex:v3])
    {
      v4 = v3;
    }

    ++v3;
  }

  while (v3 < [(TabBar *)self _totalPinnedItemCount]);
  return v4;
}

- (double)_pinnedItemsWidth
{
  visiblePinnedItemCount = self->_visiblePinnedItemCount;
  if ([(NSIndexSet *)self->_overflowPinnedItemIndexes count])
  {
    v3 = visiblePinnedItemCount + 1;
  }

  else
  {
    v3 = visiblePinnedItemCount;
  }

  return v3 * 36.0;
}

- (UIEdgeInsets)_pinnedItemInsets
{
  [(TabBar *)self _sf_usesLeftToRightLayout];
  [(TabBar *)self _pinnedItemsWidth];

  UIEdgeInsetsMakeWithEdges();
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGRect)_scrollableItemArea
{
  if (self->_visiblePinnedItemCount)
  {
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v5 = *(MEMORY[0x277D768C8] + 16);
    v6 = *(MEMORY[0x277D768C8] + 24);
    _sf_usesLeftToRightLayout = [(TabBar *)self _sf_usesLeftToRightLayout];
    [(TabBar *)self safeAreaInsets];
    v9 = v8;
    v11 = v10;
    [(TabBar *)self _pinnedItemsWidth];
    v13 = v9 + v12;
    v14 = v11 + v12;
    if (_sf_usesLeftToRightLayout)
    {
      v15 = v6;
    }

    else
    {
      v15 = v14;
    }

    if (_sf_usesLeftToRightLayout)
    {
      v16 = v13;
    }

    else
    {
      v16 = v4;
    }

    [(TabBar *)self bounds];
    v18 = v16 + v17;
    v20 = v3 + v19;
    v22 = v21 - (v15 + v16);
    v24 = v23 - (v3 + v5);
  }

  else
  {
    [(TabBar *)self bounds];
  }

  result.size.height = v24;
  result.size.width = v22;
  result.origin.y = v20;
  result.origin.x = v18;
  return result;
}

- (void)_layOutPinnedOverflowButton
{
  v3 = [(NSIndexSet *)self->_overflowPinnedItemIndexes count];
  [(PinnedTabsOverflowButton *)self->_pinnedOverflowButton setHidden:v3 == 0];
  _sf_usesLeftToRightLayout = [(TabBar *)self _sf_usesLeftToRightLayout];
  [(TabBar *)self _sf_safeAreaBounds];
  if (_sf_usesLeftToRightLayout)
  {
    MinX = CGRectGetMinX(*&v5);
    visiblePinnedItemCount = self->_visiblePinnedItemCount;
    v11 = 36.0;
  }

  else
  {
    MinX = CGRectGetMaxX(*&v5);
    visiblePinnedItemCount = (self->_visiblePinnedItemCount + 1);
    v11 = -36.0;
  }

  v12 = MinX + visiblePinnedItemCount * v11;
  [(TabBar *)self bounds];
  [(PinnedTabsOverflowButton *)self->_pinnedOverflowButton setFrame:v12, 0.0, 36.0, CGRectGetHeight(v18)];
  _totalPinnedItemCount = [(TabBar *)self _totalPinnedItemCount];
  if (_totalPinnedItemCount >= [(NSArray *)self->_items count])
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v14 = [(NSArray *)self->_items objectAtIndexedSubscript:_totalPinnedItemCount];
    v15 = [v14 isActive] ^ 1;
  }

  pinnedOverflowButton = self->_pinnedOverflowButton;

  [(PinnedTabsOverflowButton *)pinnedOverflowButton setShowsTrailingSeparator:(v3 != 0) & v15];
}

- (id)_overflowPinnedItemsMenuElements
{
  objc_initWeak(&location, self);
  v3 = [(NSArray *)self->_items objectsAtIndexes:self->_overflowPinnedItemIndexes];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__TabBar__overflowPinnedItemsMenuElements__block_invoke;
  v6[3] = &unk_2781D9668;
  objc_copyWeak(&v7, &location);
  v4 = [v3 safari_mapObjectsUsingBlock:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

id __42__TabBar__overflowPinnedItemsMenuElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__TabBar__overflowPinnedItemsMenuElements__block_invoke_2;
  v6[3] = &unk_2781D9640;
  objc_copyWeak(&v7, (a1 + 32));
  v4 = [v3 menuElementRepresentationWithSelectionHandler:v6];
  objc_destroyWeak(&v7);

  return v4;
}

void __42__TabBar__overflowPinnedItemsMenuElements__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _activateItemIfNeeded:v3];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v4 = [(TabBar *)self _itemForTouch:touch];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  reorderRecognizer = self->_reorderRecognizer;
  if (reorderRecognizer == beginCopy && ([(UIPanGestureRecognizer *)reorderRecognizer translationInView:self], v6 < 0.0))
  {
    v7 = 0;
  }

  else
  {
    [(UIPanGestureRecognizer *)beginCopy locationInView:self];
    v8 = [(TabBar *)self _itemAtLocation:?];
    if (v8)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v7 = [WeakRetained tabBar:self canMoveItem:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(UIHoverGestureRecognizer *)self->_hoverRecognizer setEnabled:0];
  tabHoverPreviewController = self->_tabHoverPreviewController;

  [(SFTabHoverPreviewController *)tabHoverPreviewController cancel];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(TabBar *)self _didCompleteScrolling];
  }
}

- (void)_didCompleteScrolling
{
  [(UIHoverGestureRecognizer *)self->_hoverRecognizer setEnabled:1];
  if (self->_newTabVisibleInTabBar)
  {
    [(SFTabHoverPreviewController *)self->_tabHoverPreviewController setNeedsSnapshotUpdate];
    self->_newTabVisibleInTabBar = 0;
  }
}

- (id)_requestReusableTabBarItemView
{
  lastObject = [(NSMutableArray *)self->_tabBarItemViewReuseStack lastObject];
  if (lastObject)
  {
    [(NSMutableArray *)self->_tabBarItemViewReuseStack removeLastObject];
    [lastObject setHidden:0];
    v4 = lastObject;
  }

  else
  {
    v4 = [[TabBarItemView alloc] initWithTabBar:self];
  }

  v5 = v4;

  return v5;
}

- (void)_relinquishReusableTabBarItemView:(id)view
{
  if (view)
  {
    viewCopy = view;
    [viewCopy setHidden:1];
    [(NSMutableArray *)self->_tabBarItemViewReuseStack addObject:viewCopy];
  }
}

- (TabBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end