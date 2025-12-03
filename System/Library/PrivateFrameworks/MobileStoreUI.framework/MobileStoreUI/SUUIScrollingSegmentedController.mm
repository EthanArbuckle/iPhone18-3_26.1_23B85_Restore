@interface SUUIScrollingSegmentedController
- (BOOL)_configureSegment:(id)segment forViewController:(id)controller;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (SUUIScrollingSegmentedController)initWithNibName:(id)name bundle:(id)bundle;
- (SUUIScrollingSegmentedControllerDelegate)delegate;
- (UIEdgeInsets)_viewControllerContentScrollViewContentInset;
- (UIEdgeInsets)segmentedControlContentEdgeInsets;
- (UIScrollView)scrollingTabNestedPagingScrollView;
- (double)segmentedControlHeight;
- (id)_indexPathOfFocusedItemAllowingLayoutIfNeeded:(BOOL)needed;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)contentScrollView;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)segmentedControlLayoutStyle;
- (void)_reloadTitleSegments;
- (void)_scrollToTitlesSelectionProgress:(double)progress animated:(BOOL)animated;
- (void)_setViewControllers:(id)controllers viewUpdatesHandler:(id)handler;
- (void)_titlesSegmentedControlValueChangeAction:(id)action;
- (void)_updateScrollViewContentOffsetsToTargetContentOffsets;
- (void)_updateTitleValueObservation;
- (void)_updateTitlesSelectionProgress;
- (void)_updateViewBackgroundColor;
- (void)_viewControllerNeedsContentScrollViewUpdates:(id)updates;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)contentScrollViewDidChangeForScrollingSegmentedControllerItemContext:(id)context;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)replaceViewControllerAtIndex:(unint64_t)index withViewController:(id)controller;
- (void)scrollViewDidChangeContentInset:(id)inset;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollingSegmentedControllerCollectionViewDidLayoutSubviews:(id)subviews;
- (void)scrollingTabAppearanceStatusWasUpdated:(id)updated;
- (void)selectViewControllerAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setClientContext:(id)context;
- (void)setMaximumContentWidth:(double)width;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)setSegmentedControlContentEdgeInsets:(UIEdgeInsets)insets;
- (void)setSegmentedControlHeight:(double)height;
- (void)setSegmentedControlLayoutStyle:(int64_t)style;
- (void)setViewControllers:(id)controllers;
- (void)setWantsWhiteBackgroundBeyondLeftEdgeWhenBouncing:(BOOL)bouncing;
- (void)setWantsWhiteBackgroundBeyondRightEdgeWhenBouncing:(BOOL)bouncing;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SUUIScrollingSegmentedController

- (SUUIScrollingSegmentedController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = SUUIScrollingSegmentedController;
  result = [(SUUIScrollingSegmentedController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_scrollingTabAppearanceStatus.progress = 1.0;
    *&result->_scrollingTabAppearanceStatus.isBouncingOffTheEdge = 0;
    result->_focusedViewControllerIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_titleObservingViewControllers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeObserver:self forKeyPath:@"navigationItem.title" context:_SUUIScrollingSegmentTitleValueObservationContext];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(SUUIProxyScrollView *)self->_proxyScrollView setDelegate:0];
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setDataSource:0];
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setDelegate:0];
  [(SUUIInteractiveSegmentedControl *)self->_titlesSegmentedControl removeTarget:self action:sel__titlesSegmentedControlValueChangeAction_ forControlEvents:4096];
  v8.receiver = self;
  v8.super_class = SUUIScrollingSegmentedController;
  [(SUUIViewController *)&v8 dealloc];
}

- (void)viewDidLoad
{
  v37[1] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = SUUIScrollingSegmentedController;
  [(SUUIScrollingSegmentedController *)&v35 viewDidLoad];
  view = [(SUUIScrollingSegmentedController *)self view];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [view setBackgroundColor:clearColor];

  self->_viewBackgroundIsWhite = 0;
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_alloc(MEMORY[0x277D75D18]);
  v14 = *(MEMORY[0x277CBF3A0] + 8);
  v34 = *MEMORY[0x277CBF3A0];
  v15 = *(MEMORY[0x277CBF3A0] + 16);
  v16 = *(MEMORY[0x277CBF3A0] + 24);
  v17 = [v13 initWithFrame:?];
  [v17 setHidden:1];
  [view addSubview:v17];
  self->_contentCollectionViewItemSize.width = v10;
  self->_contentCollectionViewItemSize.height = v12;
  v18 = objc_alloc_init(MEMORY[0x277D752F0]);
  [v18 setScrollDirection:1];
  [v18 setMinimumLineSpacing:0.0];
  v36 = *MEMORY[0x277D768E8];
  v37[0] = &unk_286BBE1A8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  [v18 _setRowAlignmentsOptions:v19];

  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  Width = CGRectGetWidth(v38);
  if (Width >= 2.0)
  {
    v21 = Width;
  }

  else
  {
    v21 = 2.0;
  }

  v39.origin.x = v6;
  v39.origin.y = v8;
  v39.size.width = v21;
  v39.size.height = v12;
  Height = CGRectGetHeight(v39);
  if (Height >= 2.0)
  {
    v23 = Height;
  }

  else
  {
    v23 = 2.0;
  }

  v24 = [[SUUIScrollingSegmentedControllerCollectionView alloc] initWithFrame:v18 collectionViewLayout:v6, v8, v21, v23];
  contentCollectionView = self->_contentCollectionView;
  self->_contentCollectionView = v24;

  panGestureRecognizer = [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView panGestureRecognizer];
  [panGestureRecognizer _setHysteresis:15.0];

  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setAllowsSelection:0];
  v27 = self->_contentCollectionView;
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [(SUUIScrollingSegmentedControllerCollectionView *)v27 setBackgroundColor:clearColor2];

  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setDataSource:self];
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setDelegate:self];
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AEFD80];
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setScrollsToTop:0];
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setPreservesSuperviewLayoutMargins:1];
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setShowsHorizontalScrollIndicator:0];
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setShowsVerticalScrollIndicator:0];
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setPagingEnabled:1];
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setScrollEnabled:self->_scrollEnabled];
  [view addSubview:self->_contentCollectionView];
  [(SUUIScrollingSegmentedController *)self _updateViewBackgroundColor];
  v29 = [[SUUIInteractiveSegmentedControl alloc] initWithFrame:v34, v14, v15, v16];
  titlesSegmentedControl = self->_titlesSegmentedControl;
  self->_titlesSegmentedControl = v29;

  [(SUUIInteractiveSegmentedControl *)self->_titlesSegmentedControl setDividerCreationBlock:&__block_literal_global_12];
  v31 = self->_titlesSegmentedControl;
  +[SUUIStandardInteractiveDividerView defaultWidth];
  [(SUUIInteractiveSegmentedControl *)v31 setDividerWidth:?];
  [(SUUIInteractiveSegmentedControl *)self->_titlesSegmentedControl addTarget:self action:sel__titlesSegmentedControlValueChangeAction_ forControlEvents:4096];
  [(SUUIScrollingSegmentedController *)self _reloadTitleSegments];
  v32 = [[SUUIScrollingSegmentedControllerNavigationBarTitleView alloc] initWithFrame:v34, v14, v15, v16];
  navigationBarTitleView = self->_navigationBarTitleView;
  self->_navigationBarTitleView = v32;

  [(SUUIScrollingSegmentedControllerNavigationBarTitleView *)self->_navigationBarTitleView setSegmentedControl:self->_titlesSegmentedControl];
}

SUUIStandardInteractiveDividerView *__47__SUUIScrollingSegmentedController_viewDidLoad__block_invoke(double a1, double a2, double a3, double a4)
{
  v4 = [[SUUIStandardInteractiveDividerView alloc] initWithFrame:a1, a2, a3, a4];

  return v4;
}

- (void)viewDidLayoutSubviews
{
  v32.receiver = self;
  v32.super_class = SUUIScrollingSegmentedController;
  [(SUUIScrollingSegmentedController *)&v32 viewDidLayoutSubviews];
  view = [(SUUIScrollingSegmentedController *)self view];
  [view setPreservesSuperviewLayoutMargins:1];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  proxyScrollView = self->_proxyScrollView;
  if (proxyScrollView)
  {
    superview = [(SUUIProxyScrollView *)proxyScrollView superview];

    if (!superview)
    {
      [view addSubview:self->_proxyScrollView];
    }
  }

  v15 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  width = self->_contentCollectionViewItemSize.width;
  if (width == v9 && self->_contentCollectionViewItemSize.height == v11)
  {
    v18 = 0;
  }

  else
  {
    v18 = width > 0.00000011920929;
    if (width > 0.00000011920929)
    {
      [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentOffset];
      v14 = v19;
      UIRoundToViewScale();
      v15 = v20;
    }

    self->_contentCollectionViewItemSize.width = v9;
    self->_contentCollectionViewItemSize.height = v11;
    collectionViewLayout = [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView collectionViewLayout];
    v22 = objc_alloc_init([objc_opt_class() invalidationContextClass]);

    [v22 setInvalidateFlowLayoutDelegateMetrics:1];
    collectionViewLayout2 = [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView collectionViewLayout];
    [collectionViewLayout2 invalidateLayoutWithContext:v22];
  }

  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  v24 = CGRectGetWidth(v33);
  if (v24 >= 2.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 2.0;
  }

  v34.origin.x = v5;
  v34.origin.y = v7;
  v34.size.width = v25;
  v34.size.height = v11;
  Height = CGRectGetHeight(v34);
  if (Height >= 2.0)
  {
    v27 = Height;
  }

  else
  {
    v27 = 2.0;
  }

  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setFrame:v5, v7, v25, v27];
  if (v18)
  {
    v28 = SUUIMPUFoundationFramework();
    v29 = SUUIWeakLinkedSymbolForString("MPUFloatEqualToFloat", v28);
    contentOffset = [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentOffset];
    if ((v29(contentOffset, v15, v31) & 1) == 0)
    {
      [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setContentOffset:v15, v14];
    }
  }

  [(SUUIScrollingSegmentedController *)self _updateTitlesSelectionProgress];
  [(SUUIScrollingSegmentedControllerNavigationBarTitleView *)self->_navigationBarTitleView setNeedsLayout];
}

- (id)contentScrollView
{
  if (!self->_proxyScrollView && [(SUUIScrollingSegmentedController *)self isViewLoaded])
  {
    v3 = [SUUIProxyScrollView alloc];
    v4 = [(SUUIProxyScrollView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    proxyScrollView = self->_proxyScrollView;
    self->_proxyScrollView = v4;

    [(SUUIProxyScrollView *)self->_proxyScrollView setHidden:1];
    [(SUUIProxyScrollView *)self->_proxyScrollView setDelegate:self];
    [(SUUIProxyScrollView *)self->_proxyScrollView setScrollEnabled:0];
    [(SUUIProxyScrollView *)self->_proxyScrollView setScrollsToTop:0];
    view = [(SUUIScrollingSegmentedController *)self view];
    [view addSubview:self->_proxyScrollView];
  }

  v7 = self->_proxyScrollView;

  return v7;
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"_SUUIScrollingSegmentedControllerStateRestorationKeySelectedViewController"];
  if (v5)
  {
    viewControllers = [(SUUIScrollingSegmentedController *)self viewControllers];
    if ([viewControllers count])
    {
      v7 = [viewControllers indexOfObject:v5];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(SUUIScrollingSegmentedController *)self selectViewControllerAtIndex:v7 animated:0];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = SUUIScrollingSegmentedController;
  [(SUUIScrollingSegmentedController *)&v8 decodeRestorableStateWithCoder:coderCopy];
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  focusedViewControllerIndex = [(SUUIScrollingSegmentedController *)self focusedViewControllerIndex];
  viewControllers = [(SUUIScrollingSegmentedController *)self viewControllers];
  v7 = viewControllers;
  if (focusedViewControllerIndex != 0x7FFFFFFFFFFFFFFFLL && focusedViewControllerIndex < [viewControllers count])
  {
    v8 = [v7 objectAtIndex:focusedViewControllerIndex];
    [coderCopy encodeObject:v8 forKey:@"_SUUIScrollingSegmentedControllerStateRestorationKeySelectedViewController"];
  }

  v9.receiver = self;
  v9.super_class = SUUIScrollingSegmentedController;
  [(SUUIScrollingSegmentedController *)&v9 encodeRestorableStateWithCoder:coderCopy];
}

- (void)setClientContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = SUUIScrollingSegmentedController;
  [(SUUIViewController *)&v15 setClientContext:contextCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_viewControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 conformsToProtocol:{&unk_286BCF1D8, v11}])
        {
          [v10 setClientContext:contextCopy];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (_SUUIScrollingSegmentTitleValueObservationContext == context)
  {
    v13 = objectCopy;
    viewControllers = self->_viewControllers;
    if (viewControllers)
    {
      v15 = [(NSArray *)viewControllers indexOfObject:v13];
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = v15;
        segments = [(SUUIInteractiveSegmentedControl *)self->_titlesSegmentedControl segments];
        v18 = [segments objectAtIndex:v16];

        if ([(SUUIScrollingSegmentedController *)self _configureSegment:v18 forViewController:v13]&& [(SUUIScrollingSegmentedController *)self isViewLoaded])
        {
          view = [(SUUIScrollingSegmentedController *)self view];
          [view setNeedsLayout];
        }
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SUUIScrollingSegmentedController;
    [(SUUIScrollingSegmentedController *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)scrollViewDidChangeContentInset:(id)inset
{
  v32 = *MEMORY[0x277D85DE8];
  insetCopy = inset;
  v5 = insetCopy;
  if (self->_proxyScrollView == insetCopy)
  {
    window = [(SUUIProxyScrollView *)insetCopy window];

    if (window)
    {
      [(SUUIProxyScrollView *)v5 contentInset];
      v11.f64[0] = v7;
      v11.f64[1] = v8;
      v12.f64[0] = v9;
      v12.f64[1] = v10;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_proxyScrollViewContentInsetAdjustment.top, v11), vceqq_f64(*&self->_proxyScrollViewContentInsetAdjustment.bottom, v12)))) & 1) == 0)
      {
        self->_proxyScrollViewContentInsetAdjustment.top = v7;
        self->_proxyScrollViewContentInsetAdjustment.left = v8;
        self->_proxyScrollViewContentInsetAdjustment.bottom = v9;
        self->_proxyScrollViewContentInsetAdjustment.right = v10;
        [(SUUIScrollingSegmentedController *)self _viewControllerContentScrollViewContentInset];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        viewControllers = [(SUUIScrollingSegmentedController *)self viewControllers];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v22 = [viewControllers countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v28;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v28 != v24)
              {
                objc_enumerationMutation(viewControllers);
              }

              v26 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:*(*(&v27 + 1) + 8 * i)];
              [v26 applyNewContentInset:{v14, v16, v18, v20}];
            }

            v23 = [viewControllers countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v23);
        }
      }
    }
  }
}

- (void)scrollingSegmentedControllerCollectionViewDidLayoutSubviews:(id)subviews
{
  if (self->_contentCollectionView == subviews)
  {
    [(SUUIScrollingSegmentedController *)self _updateTitlesSelectionProgress];
    item = [(SUUIScrollingSegmentedController *)self _indexPathOfFocusedItemAllowingLayoutIfNeeded:0];
    v6 = item;
    if (item)
    {
      v8 = item;
      item = [item item];
      v6 = v8;
      if (self->_focusedViewControllerIndex != item)
      {
        self->_focusedViewControllerIndex = item;
        if (item != 0x7FFFFFFFFFFFFFFFLL)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if (objc_opt_respondsToSelector())
          {
            [WeakRetained scrollingSegmentedController:self didFocusViewControllerAtIndex:self->_focusedViewControllerIndex];
          }

          v6 = v8;
        }
      }
    }

    else if (self->_focusedViewControllerIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_focusedViewControllerIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    MEMORY[0x2821F96F8](item, v6);
  }
}

- (void)contentScrollViewDidChangeForScrollingSegmentedControllerItemContext:(id)context
{
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    viewController = [contextCopy viewController];
    viewControllers = self->_viewControllers;
    if (viewControllers)
    {
      v7 = [(NSArray *)viewControllers indexOfObject:viewController];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [WeakRetained scrollingSegmentedController:self contentScrollViewDidChangeForViewControllerAtIndex:v7];
      }
    }
  }
}

- (void)scrollingTabAppearanceStatusWasUpdated:(id)updated
{
  self->_scrollingTabAppearanceStatus = updated;
  if ([(SUUIScrollingSegmentedController *)self isViewLoaded])
  {

    [(SUUIScrollingSegmentedController *)self _updateTitlesSelectionProgress];
  }
}

- (UIScrollView)scrollingTabNestedPagingScrollView
{
  view = [(SUUIScrollingSegmentedController *)self view];
  contentCollectionView = self->_contentCollectionView;

  return contentCollectionView;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (self->_contentCollectionView == view)
  {
    return [(NSArray *)self->_viewControllers count];
  }

  else
  {
    return 0;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  if (self->_contentCollectionView == view)
  {
    pathCopy = path;
    v4 = [view dequeueReusableCellWithReuseIdentifier:0x286AEFD80 forIndexPath:pathCopy];
    viewControllers = self->_viewControllers;
    item = [pathCopy item];

    v10 = [(NSArray *)viewControllers objectAtIndex:item];
    view = [v10 view];
    v12 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v10];
    [(SUUIScrollingSegmentedController *)self _viewControllerContentScrollViewContentInset];
    [v12 applyNewContentInset:?];
    [v12 updateAppliedContentInsetsAdjustment];
    [v4 setViewController:v10];
    [v4 setMaximumContentWidth:self->_maximumContentWidth];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (self->_contentCollectionView == view)
  {
    v9 = pathCopy;
    delegate = [(SUUIScrollingSegmentedController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate scrollingSegmentedController:self didEndDisplayingViewControllerAtIndex:{objc_msgSend(v9, "item") % -[NSArray count](self->_viewControllers, "count")}];
    }

    pathCopy = v9;
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (self->_contentCollectionView == view)
  {
    v9 = pathCopy;
    delegate = [(SUUIScrollingSegmentedController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate scrollingSegmentedController:self willDisplayViewControllerAtIndex:{objc_msgSend(v9, "item") % -[NSArray count](self->_viewControllers, "count")}];
    }

    pathCopy = v9;
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  if (self->_contentCollectionView == view)
  {
    p_contentCollectionViewItemSize = &self->_contentCollectionViewItemSize;
  }

  else
  {
    p_contentCollectionViewItemSize = MEMORY[0x277CBF3A8];
  }

  width = p_contentCollectionViewItemSize->width;
  height = p_contentCollectionViewItemSize->height;
  if (p_contentCollectionViewItemSize->width < 2.0)
  {
    width = 2.0;
  }

  if (height < 2.0)
  {
    height = 2.0;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (self->_contentCollectionView == scroll)
  {
    [(SUUIScrollingSegmentedController *)self _updateTitlesSelectionProgress];

    [(SUUIScrollingSegmentedController *)self _updateViewBackgroundColor];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (self->_contentCollectionView == decelerating)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 scrollingSegmentedControllerDidEndDecelerating:self];
    }
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (self->_contentCollectionView == dragging)
  {
    decelerateCopy = decelerate;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 scrollingSegmentedControllerDidEndDragging:self willDecelerate:decelerateCopy];
    }
  }
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  if (self->_contentCollectionView == decelerating)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 scrollingSegmentedControllerWillBeginDecelerating:self];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if (self->_contentCollectionView == dragging)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 scrollingSegmentedControllerWillBeginDragging:self];
    }
  }
}

- (void)setMaximumContentWidth:(double)width
{
  v15 = *MEMORY[0x277D85DE8];
  if (vabdd_f64(self->_maximumContentWidth, width) > 0.00000011920929)
  {
    self->_maximumContentWidth = width;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    visibleCells = [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView visibleCells];
    v5 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(visibleCells);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 setMaximumContentWidth:self->_maximumContentWidth];
          }
        }

        v6 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setScrollEnabled:(BOOL)enabled
{
  if (self->_scrollEnabled != enabled)
  {
    self->_scrollEnabled = enabled;
    [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setScrollEnabled:?];
  }
}

- (void)setViewControllers:(id)controllers
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SUUIScrollingSegmentedController_setViewControllers___block_invoke;
  v5[3] = &unk_2798F5BE8;
  v5[4] = self;
  selfCopy = self;
  [(SUUIScrollingSegmentedController *)selfCopy _setViewControllers:controllers viewUpdatesHandler:v5];
}

void __55__SUUIScrollingSegmentedController_setViewControllers___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reloadTitleSegments];
  [*(*(a1 + 32) + 1080) reloadData];
  [*(a1 + 32) _updateScrollViewContentOffsetsToTargetContentOffsets];
  if ([*(a1 + 32) isViewLoaded])
  {
    v2 = [*(a1 + 32) view];
    [v2 setNeedsLayout];

    v3 = [*(a1 + 32) navigationBarTitleView];
    [v3 setNeedsLayout];
  }
}

- (UIEdgeInsets)segmentedControlContentEdgeInsets
{
  navigationBarTitleView = [(SUUIScrollingSegmentedController *)self navigationBarTitleView];
  [navigationBarTitleView layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setSegmentedControlContentEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  navigationBarTitleView = [(SUUIScrollingSegmentedController *)self navigationBarTitleView];
  [navigationBarTitleView setLayoutMargins:{top, left, bottom, right}];
}

- (double)segmentedControlHeight
{
  navigationBarTitleView = [(SUUIScrollingSegmentedController *)self navigationBarTitleView];
  [navigationBarTitleView segmentedControlMinimumHeight];
  v4 = v3;

  return v4;
}

- (void)setSegmentedControlHeight:(double)height
{
  navigationBarTitleView = [(SUUIScrollingSegmentedController *)self navigationBarTitleView];
  [navigationBarTitleView setSegmentedControlMinimumHeight:height];
}

- (int64_t)segmentedControlLayoutStyle
{
  navigationBarTitleView = [(SUUIScrollingSegmentedController *)self navigationBarTitleView];
  layoutStyle = [navigationBarTitleView layoutStyle];

  return layoutStyle;
}

- (void)setSegmentedControlLayoutStyle:(int64_t)style
{
  navigationBarTitleView = [(SUUIScrollingSegmentedController *)self navigationBarTitleView];
  [navigationBarTitleView setLayoutStyle:style];
}

- (void)setWantsWhiteBackgroundBeyondLeftEdgeWhenBouncing:(BOOL)bouncing
{
  if (self->_wantsWhiteBackgroundBeyondLeftEdgeWhenBouncing != bouncing)
  {
    self->_wantsWhiteBackgroundBeyondLeftEdgeWhenBouncing = bouncing;
    [(SUUIScrollingSegmentedController *)self _updateViewBackgroundColor];
  }
}

- (void)setWantsWhiteBackgroundBeyondRightEdgeWhenBouncing:(BOOL)bouncing
{
  if (self->_wantsWhiteBackgroundBeyondRightEdgeWhenBouncing != bouncing)
  {
    self->_wantsWhiteBackgroundBeyondRightEdgeWhenBouncing = bouncing;
    [(SUUIScrollingSegmentedController *)self _updateViewBackgroundColor];
  }
}

- (void)replaceViewControllerAtIndex:(unint64_t)index withViewController:(id)controller
{
  controllerCopy = controller;
  v7 = [(NSArray *)self->_viewControllers mutableCopy];
  [v7 replaceObjectAtIndex:index withObject:controllerCopy];
  v8 = [(NSArray *)self->_viewControllers objectAtIndex:index];
  title = [v8 title];
  title2 = [controllerCopy title];
  v11 = [title isEqualToString:title2];

  if (v11)
  {
    v12 = [(NSArray *)self->_viewControllers count];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __84__SUUIScrollingSegmentedController_replaceViewControllerAtIndex_withViewController___block_invoke;
    v14[3] = &unk_2798F81C8;
    v14[4] = self;
    v16 = v12;
    indexCopy = index;
    v15 = controllerCopy;
    selfCopy = self;
    [(SUUIScrollingSegmentedController *)selfCopy _setViewControllers:v7 viewUpdatesHandler:v14];
  }

  else
  {
    [(SUUIScrollingSegmentedController *)self setViewControllers:v7];
  }
}

void __84__SUUIScrollingSegmentedController_replaceViewControllerAtIndex_withViewController___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 1080);
  [v2 indexPathsForVisibleItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 item] % *(a1 + 48) == *(a1 + 56))
        {
          v9 = [v2 cellForItemAtIndexPath:v8];
          if (v9)
          {
            v10 = v9;
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  v11 = [*(a1 + 40) view];
  v12 = [*(*(a1 + 32) + 1176) objectForKey:*(a1 + 40)];
  [*(a1 + 32) _viewControllerContentScrollViewContentInset];
  [v12 applyNewContentInset:?];
  [v10 setViewController:*(a1 + 40)];
}

- (void)selectViewControllerAtIndex:(unint64_t)index animated:(BOOL)animated
{
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    animatedCopy = animated;
    if ([(NSArray *)self->_viewControllers count]> index)
    {
      if (([(SUUIScrollingSegmentedController *)self isViewLoaded]& 1) == 0)
      {
        view = [(SUUIScrollingSegmentedController *)self view];
        [view layoutIfNeeded];
      }

      [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView layoutIfNeeded];
      contentCollectionView = self->_contentCollectionView;
      v9 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
      v25 = [(SUUIScrollingSegmentedControllerCollectionView *)contentCollectionView layoutAttributesForItemAtIndexPath:v9];

      [v25 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentOffset];
      v19 = v18;
      [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentInset];
      v21 = v20;
      v23 = v22;
      v24 = v19 + v20;
      v27.origin.x = v11;
      v27.origin.y = v13;
      v27.size.width = v15;
      v27.size.height = v17;
      [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView setContentOffset:animatedCopy animated:CGRectGetMinX(v27) - v23, v24 - v21];
    }
  }
}

- (void)_titlesSegmentedControlValueChangeAction:(id)action
{
  titlesSegmentedControl = self->_titlesSegmentedControl;
  if (titlesSegmentedControl == action)
  {
    [(SUUIInteractiveSegmentedControl *)titlesSegmentedControl selectionProgress];

    [(SUUIScrollingSegmentedController *)self _scrollToTitlesSelectionProgress:0 animated:?];
  }
}

- (BOOL)_configureSegment:(id)segment forViewController:(id)controller
{
  segmentCopy = segment;
  navigationItem = [controller navigationItem];
  title = [navigationItem title];

  if (title)
  {
    v8 = title;
  }

  else
  {
    v8 = &stru_286AECDE0;
  }

  v9 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v8];
  attributedTitle = [segmentCopy attributedTitle];
  v11 = attributedTitle;
  if (attributedTitle == v9 || ([attributedTitle isEqualToAttributedString:v9] & 1) != 0)
  {
    v12 = 0;
  }

  else
  {
    [segmentCopy setAttributedTitle:v9];
    v12 = 1;
  }

  return v12;
}

- (id)_indexPathOfFocusedItemAllowingLayoutIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v32 = *MEMORY[0x277D85DE8];
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView bounds];
  UIRectGetCenter();
  v6 = v5;
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentOffset];
  v8 = v7;
  v9 = self->_contentCollectionView;
  [(SUUIScrollingSegmentedControllerCollectionView *)v9 contentOffset];
  v11 = v10;
  if (neededCopy)
  {
    [(SUUIScrollingSegmentedControllerCollectionView *)v9 layoutIfNeeded];
  }

  [(SUUIScrollingSegmentedControllerCollectionView *)v9 visibleCells];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v28;
    v17 = v6 - v8 + v11;
    v18 = 0.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v20 = [(SUUIScrollingSegmentedControllerCollectionView *)v9 indexPathForCell:*(*(&v27 + 1) + 8 * i)];
        if (v20)
        {
          v21 = [(SUUIScrollingSegmentedControllerCollectionView *)v9 layoutAttributesForItemAtIndexPath:v20];
          [v21 frame];
          v22 = v17 - CGRectGetMidX(v34);
          if (!v14 || fabs(v22) < fabs(v18))
          {
            v23 = v20;

            v24 = v21;
            v14 = v23;
            v15 = v24;
            v18 = v22;
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  return v14;
}

- (void)_reloadTitleSegments
{
  v20 = *MEMORY[0x277D85DE8];
  segments = [(SUUIInteractiveSegmentedControl *)self->_titlesSegmentedControl segments];
  v4 = [segments mutableCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_viewControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        firstObject = [v4 firstObject];
        if (firstObject)
        {
          v13 = firstObject;
          [v4 removeObjectAtIndex:0];
        }

        else
        {
          v13 = objc_alloc_init(SUUIStandardInteractiveSegment);
        }

        [(SUUIScrollingSegmentedController *)self _configureSegment:v13 forViewController:v11];
        if (!v8)
        {
          v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_viewControllers, "count")}];
        }

        [v8 addObject:v13];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  [(SUUIInteractiveSegmentedControl *)self->_titlesSegmentedControl setSegments:v8];
  [(SUUIScrollingSegmentedController *)self _updateTitlesSelectionProgress];
  navigationBarTitleView = [(SUUIScrollingSegmentedController *)self navigationBarTitleView];
  [navigationBarTitleView sizeToFit];
}

- (void)_scrollToTitlesSelectionProgress:(double)progress animated:(BOOL)animated
{
  animatedCopy = animated;
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentSize];
  v7 = v6;
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView bounds];
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  x = v29.origin.x;
  v26 = v7;
  v11 = v7 - CGRectGetWidth(v29);
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentInset];
  v13 = v12;
  v15 = v14;
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentOffset];
  v27 = v16;
  segments = [(SUUIInteractiveSegmentedControl *)self->_titlesSegmentedControl segments];
  v18 = 1.0 / [segments count];

  v19 = 0.0;
  if (1.0 - v18 > 0.00000011920929)
  {
    v19 = (progress + v18 * -0.5) / (1.0 - v18);
  }

  v20 = v11 * v19 - v15;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v20 = v26 - v20 - CGRectGetWidth(v30);
  }

  contentCollectionView = self->_contentCollectionView;

  [(SUUIScrollingSegmentedControllerCollectionView *)contentCollectionView setContentOffset:animatedCopy animated:v20, v13 + v27 - v13];
}

- (void)_setViewControllers:(id)controllers viewUpdatesHandler:(id)handler
{
  v80 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  handlerCopy = handler;
  viewControllers = self->_viewControllers;
  if (viewControllers != controllersCopy && ![(NSArray *)viewControllers isEqualToArray:controllersCopy])
  {
    v57 = handlerCopy;
    v9 = [(NSArray *)self->_viewControllers copy];
    v56 = controllersCopy;
    v10 = [(NSArray *)controllersCopy copy];
    v11 = self->_viewControllers;
    self->_viewControllers = v10;

    v58 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v73;
      v16 = *MEMORY[0x277D768C8];
      v17 = *(MEMORY[0x277D768C8] + 8);
      v18 = *(MEMORY[0x277D768C8] + 16);
      v19 = *(MEMORY[0x277D768C8] + 24);
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v73 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v21 = *(*(&v72 + 1) + 8 * i);
          if (![(NSArray *)self->_viewControllers containsObject:v21])
          {
            parentViewController = [v21 parentViewController];

            if (parentViewController == self)
            {
              [v58 addObject:v21];
              [v21 willMoveToParentViewController:0];
            }

            v23 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v21];
            [v23 applyNewContentInset:{v16, v17, v18, v19}];
            if ([v21 isViewLoaded])
            {
              view = [v21 view];
              [view removeFromSuperview];
            }

            [(NSMapTable *)self->_viewControllerToItemContext removeObjectForKey:v21];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v14);
    }

    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_viewControllers, "count")}];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v26 = self->_viewControllers;
    v27 = [(NSArray *)v26 countByEnumeratingWithState:&v68 objects:v78 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v69;
      p_cache = &OBJC_METACLASS___SUUICollectionDOMFeature.cache;
      v59 = v12;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v69 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v68 + 1) + 8 * j);
          if (([v12 containsObject:v32] & 1) == 0)
          {
            [v25 addObject:v32];
            if ([v32 conformsToProtocol:&unk_286BCF1D8])
            {
              clientContext = [(SUUIViewController *)self clientContext];
              [v32 setClientContext:clientContext];
            }

            [(SUUIScrollingSegmentedController *)self addChildViewController:v32];
            v34 = [objc_alloc((p_cache + 158)) initWithViewController:v32];
            [v34 setDelegate:self];
            viewControllerToItemContext = self->_viewControllerToItemContext;
            if (!viewControllerToItemContext)
            {
              v36 = v28;
              v37 = v29;
              v38 = v26;
              v39 = v25;
              v40 = objc_alloc(MEMORY[0x277CCAB00]);
              v41 = [(NSArray *)self->_viewControllers count];
              v42 = v40;
              v25 = v39;
              v26 = v38;
              v29 = v37;
              v28 = v36;
              p_cache = (&OBJC_METACLASS___SUUICollectionDOMFeature + 16);
              v43 = [v42 initWithKeyOptions:0 valueOptions:0 capacity:v41];
              v44 = self->_viewControllerToItemContext;
              self->_viewControllerToItemContext = v43;

              viewControllerToItemContext = self->_viewControllerToItemContext;
            }

            [(NSMapTable *)viewControllerToItemContext setObject:v34 forKey:v32];

            v12 = v59;
          }
        }

        v28 = [(NSArray *)v26 countByEnumeratingWithState:&v68 objects:v78 count:16];
      }

      while (v28);
    }

    if (v57)
    {
      v57[2]();
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v45 = v25;
    v46 = [v45 countByEnumeratingWithState:&v64 objects:v77 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v65;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v65 != v48)
          {
            objc_enumerationMutation(v45);
          }

          [*(*(&v64 + 1) + 8 * k) didMoveToParentViewController:self];
        }

        v47 = [v45 countByEnumeratingWithState:&v64 objects:v77 count:16];
      }

      while (v47);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v50 = v58;
    v51 = [v50 countByEnumeratingWithState:&v60 objects:v76 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v61;
      do
      {
        for (m = 0; m != v52; ++m)
        {
          if (*v61 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v60 + 1) + 8 * m);
          [v55 removeFromParentViewController];
          if ([v55 conformsToProtocol:&unk_286BCF1D8])
          {
            [v55 setClientContext:0];
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v60 objects:v76 count:16];
      }

      while (v52);
    }

    [(SUUIScrollingSegmentedController *)self _updateTitleValueObservation];
    controllersCopy = v56;
    handlerCopy = v57;
  }
}

- (void)_updateScrollViewContentOffsetsToTargetContentOffsets
{
  if ([(SUUIScrollingSegmentedController *)self isViewLoaded])
  {
    view = [(SUUIScrollingSegmentedController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v12);

    [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentSize];
    v6 = v5;
    [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView bounds];
    MidX = CGRectGetMidX(v13);
    if (MidX < 1.0)
    {
      MidX = 1.0;
    }

    if (MidX >= v6)
    {
      MidX = v6;
    }

    v8 = round((MidX + -1.0) / Width);
    [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentOffset];
    if (v9 != Width * v8)
    {
      contentCollectionView = self->_contentCollectionView;

      [(SUUIScrollingSegmentedControllerCollectionView *)contentCollectionView setContentOffset:?];
    }
  }
}

- (void)_updateTitlesSelectionProgress
{
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentSize];
  v4 = v3;
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView bounds];
  v5 = v4 - CGRectGetWidth(v19);
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentInset];
  v7 = v6;
  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentOffset];
  v9 = (v7 + v8) / v5;
  segments = [(SUUIInteractiveSegmentedControl *)self->_titlesSegmentedControl segments];
  v11 = 1.0 / [segments count];

  v12 = v11 * 0.5 + (1.0 - v11) * v9;
  if (v12 < v11 * 0.5)
  {
    v12 = v11 * 0.5;
  }

  if (v12 >= 1.0 - v11 * 0.5)
  {
    v13 = 1.0 - v11 * 0.5;
  }

  else
  {
    v13 = v12;
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

  v16 = 1.0 - v13;
  if (userInterfaceLayoutDirection != 1)
  {
    v16 = v13;
  }

  titlesSegmentedControl = self->_titlesSegmentedControl;

  [(SUUIInteractiveSegmentedControl *)titlesSegmentedControl setSelectionProgress:v16];
}

- (void)_updateTitleValueObservation
{
  v30 = *MEMORY[0x277D85DE8];
  viewControllers = [(SUUIScrollingSegmentedController *)self viewControllers];
  v4 = [(NSMutableArray *)self->_titleObservingViewControllers mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = viewControllers;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        [v4 removeObject:v9];
        if (([(NSMutableArray *)self->_titleObservingViewControllers containsObject:v9]& 1) == 0)
        {
          titleObservingViewControllers = self->_titleObservingViewControllers;
          if (!titleObservingViewControllers)
          {
            v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(obj, "count")}];
            v12 = self->_titleObservingViewControllers;
            self->_titleObservingViewControllers = v11;

            titleObservingViewControllers = self->_titleObservingViewControllers;
          }

          [(NSMutableArray *)titleObservingViewControllers addObject:v9];
          [v9 addObserver:self forKeyPath:@"navigationItem.title" options:0 context:_SUUIScrollingSegmentTitleValueObservationContext];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v20 + 1) + 8 * j) removeObserver:self forKeyPath:@"navigationItem.title" context:_SUUIScrollingSegmentTitleValueObservationContext];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  [(NSMutableArray *)self->_titleObservingViewControllers removeObjectsInArray:v13];
  if (![(NSMutableArray *)self->_titleObservingViewControllers count])
  {
    v18 = self->_titleObservingViewControllers;
    self->_titleObservingViewControllers = 0;
  }
}

- (void)_updateViewBackgroundColor
{
  if (![(SUUIScrollingSegmentedController *)self isViewLoaded])
  {
    return;
  }

  p_wantsWhiteBackgroundBeyondLeftEdgeWhenBouncing = &self->_wantsWhiteBackgroundBeyondLeftEdgeWhenBouncing;
  if (!self->_wantsWhiteBackgroundBeyondLeftEdgeWhenBouncing && !self->_wantsWhiteBackgroundBeyondRightEdgeWhenBouncing)
  {
    goto LABEL_6;
  }

  [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentOffset];
  v5 = v4;
  if (v4 > -0.00000011920929)
  {
    [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView contentSize];
    v7 = v6;
    [(SUUIScrollingSegmentedControllerCollectionView *)self->_contentCollectionView bounds];
    if (v5 < v7 - CGRectGetWidth(v13) + 0.00000011920929)
    {
LABEL_6:
      v8 = 0;
      goto LABEL_9;
    }

    p_wantsWhiteBackgroundBeyondLeftEdgeWhenBouncing = &self->_wantsWhiteBackgroundBeyondRightEdgeWhenBouncing;
  }

  v8 = *p_wantsWhiteBackgroundBeyondLeftEdgeWhenBouncing;
LABEL_9:
  v9 = v8;
  if (self->_viewBackgroundIsWhite != v9)
  {
    self->_viewBackgroundIsWhite = v9;
    if (v9)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] clearColor];
    }
    v11 = ;
    view = [(SUUIScrollingSegmentedController *)self view];
    [view setBackgroundColor:v11];
  }
}

- (UIEdgeInsets)_viewControllerContentScrollViewContentInset
{
  top = self->_proxyScrollViewContentInsetAdjustment.top;
  left = self->_proxyScrollViewContentInsetAdjustment.left;
  bottom = self->_proxyScrollViewContentInsetAdjustment.bottom;
  right = self->_proxyScrollViewContentInsetAdjustment.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_viewControllerNeedsContentScrollViewUpdates:(id)updates
{
  v3 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:updates];
  [v3 updateAppliedContentInsetsAdjustment];
}

- (SUUIScrollingSegmentedControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end