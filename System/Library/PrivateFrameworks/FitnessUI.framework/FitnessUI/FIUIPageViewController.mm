@interface FIUIPageViewController
- (FIUIPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (FIUIPageViewControllerDataSource)dataSource;
- (FIUIPageViewControllerDelegate)delegate;
- (UIViewController)currentlyDisplayedViewController;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_addViewController:(id)controller toCell:(id)cell;
- (void)_pageSelectedWithControl:(id)control;
- (void)_scrollViewDidStop;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)loadView;
- (void)reloadData;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setCurrentlyDisplayedIndex:(int64_t)index animated:(BOOL)animated;
- (void)setDataSource:(id)source;
- (void)setScrollDirection:(int64_t)direction;
- (void)setShowsPagingIndicator:(BOOL)indicator;
- (void)viewWillLayoutSubviews;
@end

@implementation FIUIPageViewController

- (FIUIPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = FIUIPageViewController;
  v4 = [(FIUIPageViewController *)&v9 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_currentlyDisplayedIndex = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    viewControllerForIndexPath = v5->_viewControllerForIndexPath;
    v5->_viewControllerForIndexPath = v6;

    [(NSCache *)v5->_viewControllerForIndexPath setCountLimit:5];
    v5->_scrollDirection = 1;
    v5->_shouldNotifyDelegateWhenScrollViewSettles = 0;
  }

  return v5;
}

- (void)loadView
{
  v47.receiver = self;
  v47.super_class = FIUIPageViewController;
  [(FIUIPageViewController *)&v47 loadView];
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [(FIUIPageViewController *)self setCollectionViewLayout:v3];

  collectionViewLayout = [(FIUIPageViewController *)self collectionViewLayout];
  [collectionViewLayout setMinimumLineSpacing:0.0];

  collectionViewLayout2 = [(FIUIPageViewController *)self collectionViewLayout];
  [collectionViewLayout2 setMinimumInteritemSpacing:0.0];

  v6 = *MEMORY[0x1E69DDCE0];
  v7 = *(MEMORY[0x1E69DDCE0] + 8);
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  v9 = *(MEMORY[0x1E69DDCE0] + 24);
  collectionViewLayout3 = [(FIUIPageViewController *)self collectionViewLayout];
  [collectionViewLayout3 setSectionInset:{v6, v7, v8, v9}];

  scrollDirection = [(FIUIPageViewController *)self scrollDirection];
  collectionViewLayout4 = [(FIUIPageViewController *)self collectionViewLayout];
  [collectionViewLayout4 setScrollDirection:scrollDirection];

  v13 = objc_alloc(MEMORY[0x1E69DC7F0]);
  collectionViewLayout5 = [(FIUIPageViewController *)self collectionViewLayout];
  v15 = *MEMORY[0x1E695F058];
  v16 = *(MEMORY[0x1E695F058] + 8);
  v17 = *(MEMORY[0x1E695F058] + 16);
  v18 = *(MEMORY[0x1E695F058] + 24);
  v19 = [v13 initWithFrame:collectionViewLayout5 collectionViewLayout:{*MEMORY[0x1E695F058], v16, v17, v18}];
  [(FIUIPageViewController *)self setCollectionView:v19];

  collectionView = [(FIUIPageViewController *)self collectionView];
  [collectionView setPrefetchingEnabled:1];

  collectionView2 = [(FIUIPageViewController *)self collectionView];
  [collectionView2 setPrefetchDataSource:self];

  collectionView3 = [(FIUIPageViewController *)self collectionView];
  [collectionView3 setDataSource:self];

  collectionView4 = [(FIUIPageViewController *)self collectionView];
  [collectionView4 setDelegate:self];

  collectionView5 = [(FIUIPageViewController *)self collectionView];
  [collectionView5 setShowsHorizontalScrollIndicator:0];

  collectionView6 = [(FIUIPageViewController *)self collectionView];
  [collectionView6 setShowsVerticalScrollIndicator:0];

  collectionView7 = [(FIUIPageViewController *)self collectionView];
  [collectionView7 setPagingEnabled:1];

  collectionView8 = [(FIUIPageViewController *)self collectionView];
  [collectionView8 setContentInsetAdjustmentBehavior:2];

  view = [(FIUIPageViewController *)self view];
  collectionView9 = [(FIUIPageViewController *)self collectionView];
  [view addSubview:collectionView9];

  collectionView10 = [(FIUIPageViewController *)self collectionView];
  [collectionView10 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"com.apple.FitnessUI.FIUIPageViewController.ReuseIdentifier"];

  v31 = [objc_alloc(MEMORY[0x1E69DCD10]) initWithFrame:{v15, v16, v17, v18}];
  [(FIUIPageViewController *)self setPageControl:v31];

  pageControl = [(FIUIPageViewController *)self pageControl];
  [pageControl setHidesForSinglePage:1];

  pageControl2 = [(FIUIPageViewController *)self pageControl];
  [pageControl2 addTarget:self action:sel__pageSelectedWithControl_ forControlEvents:4096];

  pageControl3 = [(FIUIPageViewController *)self pageControl];
  [pageControl3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(FIUIPageViewController *)self view];
  pageControl4 = [(FIUIPageViewController *)self pageControl];
  [view2 addSubview:pageControl4];

  pageControl5 = [(FIUIPageViewController *)self pageControl];
  centerXAnchor = [pageControl5 centerXAnchor];
  view3 = [(FIUIPageViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v41 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v41 setActive:1];

  pageControl6 = [(FIUIPageViewController *)self pageControl];
  bottomAnchor = [pageControl6 bottomAnchor];
  view4 = [(FIUIPageViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v46 setActive:1];
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = FIUIPageViewController;
  [(FIUIPageViewController *)&v19 viewWillLayoutSubviews];
  view = [(FIUIPageViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  collectionView = [(FIUIPageViewController *)self collectionView];
  [collectionView setFrame:{v5, v7, v9, v11}];

  view2 = [(FIUIPageViewController *)self view];
  [view2 bounds];
  v15 = v14;
  v17 = v16;
  collectionViewLayout = [(FIUIPageViewController *)self collectionViewLayout];
  [collectionViewLayout setItemSize:{v15, v17}];

  if ([(FIUIPageViewController *)self currentlyDisplayedIndex]>= 1)
  {
    [(FIUIPageViewController *)self setCurrentlyDisplayedIndex:[(FIUIPageViewController *)self currentlyDisplayedIndex]];
  }
}

- (void)setCurrentlyDisplayedIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  v16[1] = *MEMORY[0x1E69E9840];
  currentlyDisplayedIndex = self->_currentlyDisplayedIndex;
  dataSource = [(FIUIPageViewController *)self dataSource];
  v9 = [dataSource numberOfViewControllersForPageViewController:self];

  if (v9 <= index)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Requested setting currently displayed index out of range" userInfo:0];
    [v11 raise];
  }

  else
  {
    self->_currentlyDisplayedIndex = index;
    v10 = currentlyDisplayedIndex != index && animatedCopy;
    [(FIUIPageViewController *)self setShouldNotifyDelegateWhenScrollViewSettles:v10 | [(FIUIPageViewController *)self shouldNotifyDelegateWhenScrollViewSettles]];
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:self->_currentlyDisplayedIndex inSection:0];
    collectionView = [(FIUIPageViewController *)self collectionView];
    v16[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [(FIUIPageViewController *)self collectionView:collectionView prefetchItemsAtIndexPaths:v13];

    collectionView2 = [(FIUIPageViewController *)self collectionView];
    [collectionView2 scrollToItemAtIndexPath:v11 atScrollPosition:16 animated:animatedCopy];
  }

  if (currentlyDisplayedIndex != index && !animatedCopy)
  {
    delegate = [(FIUIPageViewController *)self delegate];
    [delegate pageViewController:self didUpdateCurrentlyDisplayedIndex:self->_currentlyDisplayedIndex];
  }
}

- (void)setDataSource:(id)source
{
  objc_storeWeak(&self->_dataSource, source);
  collectionView = [(FIUIPageViewController *)self collectionView];
  [collectionView reloadData];

  dataSource = [(FIUIPageViewController *)self dataSource];
  v6 = [dataSource numberOfViewControllersForPageViewController:self];

  if ([(FIUIPageViewController *)self showsPagingIndicator])
  {
    pageControl = [(FIUIPageViewController *)self pageControl];
    [pageControl setNumberOfPages:v6];
  }

  if ([(FIUIPageViewController *)self isViewLoaded])
  {
    view = [(FIUIPageViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)setScrollDirection:(int64_t)direction
{
  collectionViewLayout = [(FIUIPageViewController *)self collectionViewLayout];
  [collectionViewLayout setScrollDirection:direction];
}

- (void)setShowsPagingIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  self->_showsPagingIndicator = indicator;
  if (indicator)
  {
    dataSource = [(FIUIPageViewController *)self dataSource];
    v6 = [dataSource numberOfViewControllersForPageViewController:self];

    pageControl = [(FIUIPageViewController *)self pageControl];
    [pageControl setNumberOfPages:v6];
  }

  pageControl2 = [(FIUIPageViewController *)self pageControl];
  [pageControl2 setHidden:!indicatorCopy];
}

- (UIViewController)currentlyDisplayedViewController
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:-[FIUIPageViewController currentlyDisplayedIndex](self inSection:{"currentlyDisplayedIndex"), 0}];
  viewControllerForIndexPath = [(FIUIPageViewController *)self viewControllerForIndexPath];
  v5 = [viewControllerForIndexPath objectForKey:v3];

  if (v5)
  {
    viewController = v5;
  }

  else
  {
    collectionView = [(FIUIPageViewController *)self collectionView];
    v8 = [collectionView cellForItemAtIndexPath:v3];

    viewController = [v8 viewController];
    if (viewController)
    {
      viewControllerForIndexPath2 = [(FIUIPageViewController *)self viewControllerForIndexPath];
      [viewControllerForIndexPath2 setObject:viewController forKey:v3];
    }
  }

  return viewController;
}

- (void)reloadData
{
  viewControllerForIndexPath = [(FIUIPageViewController *)self viewControllerForIndexPath];
  [viewControllerForIndexPath removeAllObjects];

  collectionView = [(FIUIPageViewController *)self collectionView];
  [collectionView reloadData];

  [(FIUIPageViewController *)self setShowsPagingIndicator:self->_showsPagingIndicator];
  dataSource = [(FIUIPageViewController *)self dataSource];
  v6 = [dataSource numberOfViewControllersForPageViewController:self];

  if (self->_currentlyDisplayedIndex >= v6)
  {
    dataSource2 = [(FIUIPageViewController *)self dataSource];
    -[FIUIPageViewController setCurrentlyDisplayedIndex:](self, "setCurrentlyDisplayedIndex:", [dataSource2 numberOfViewControllersForPageViewController:self] - 1);
  }

  else
  {

    [(FIUIPageViewController *)self setCurrentlyDisplayedIndex:?];
  }
}

- (void)_pageSelectedWithControl:(id)control
{
  currentPage = [control currentPage];
  [(FIUIPageViewController *)self setUserDidTapPageControl:1];
  [(FIUIPageViewController *)self setCurrentlyDisplayedIndex:currentPage animated:1];
  v5 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__FIUIPageViewController__pageSelectedWithControl___block_invoke;
  block[3] = &unk_1E878BFE0;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

- (void)_addViewController:(id)controller toCell:(id)cell
{
  cellCopy = cell;
  controllerCopy = controller;
  [cellCopy setViewController:controllerCopy];
  [(FIUIPageViewController *)self addChildViewController:controllerCopy];
  contentView = [cellCopy contentView];

  view = [controllerCopy view];
  [contentView addSubview:view];

  [controllerCopy didMoveToParentViewController:self];
}

- (void)_scrollViewDidStop
{
  collectionView = [(FIUIPageViewController *)self collectionView];
  v4 = [(FIUIPageViewController *)self collectionView:collectionView numberOfItemsInSection:0];

  collectionView2 = [(FIUIPageViewController *)self collectionView];
  [collectionView2 contentOffset];
  v7 = v6;
  collectionView3 = [(FIUIPageViewController *)self collectionView];
  [collectionView3 contentSize];
  v10 = v7 / v9;

  IsRightToLeft = FIUILocaleIsRightToLeft();
  v12 = -(v10 * v4);
  if (!IsRightToLeft)
  {
    v12 = v10 * v4;
  }

  v13 = v12;
  v14 = FIUILocaleIsRightToLeft();
  v15 = v4 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  [(FIUIPageViewController *)self setCurrentlyDisplayedIndex:v15 + v13];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  if ([(FIUIPageViewController *)self shouldNotifyDelegateWhenScrollViewSettles])
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:-[FIUIPageViewController currentlyDisplayedIndex](self inSection:{"currentlyDisplayedIndex"), 0}];
    collectionView = [(FIUIPageViewController *)self collectionView];
    v5 = [collectionView cellForItemAtIndexPath:v7];

    if (v5)
    {
      [(FIUIPageViewController *)self setShouldNotifyDelegateWhenScrollViewSettles:0];
      delegate = [(FIUIPageViewController *)self delegate];
      [delegate pageViewController:self didUpdateCurrentlyDisplayedIndex:{-[FIUIPageViewController currentlyDisplayedIndex](self, "currentlyDisplayedIndex")}];
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (![(FIUIPageViewController *)self userDidTapPageControl])
  {
    collectionView = [(FIUIPageViewController *)self collectionView];
    [collectionView contentOffset];
    v6 = v5;
    collectionView2 = [(FIUIPageViewController *)self collectionView];
    [collectionView2 contentSize];
    v9 = v6 / v8;

    pageControl = [(FIUIPageViewController *)self pageControl];
    numberOfPages = [pageControl numberOfPages];

    pageControl2 = [(FIUIPageViewController *)self pageControl];
    [pageControl2 setCurrentPage:llround(v9 * numberOfPages)];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(FIUIPageViewController *)self _scrollViewDidStop];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = [(FIUIPageViewController *)self dataSource:view];
  v6 = [v5 numberOfViewControllersForPageViewController:self];

  return v6;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(FIUIPageViewController *)self collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"com.apple.FitnessUI.FIUIPageViewController.ReuseIdentifier" forIndexPath:pathCopy];

  return v7;
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  v22 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [pathsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(pathsCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        viewControllerForIndexPath = [(FIUIPageViewController *)self viewControllerForIndexPath];
        v12 = [viewControllerForIndexPath objectForKey:v10];

        if (!v12)
        {
          item = [v10 item];
          dataSource = [(FIUIPageViewController *)self dataSource];
          v15 = [dataSource pageViewController:self viewControllerAtIndex:item];

          if (v15)
          {
            viewControllerForIndexPath2 = [(FIUIPageViewController *)self viewControllerForIndexPath];
            [viewControllerForIndexPath2 setObject:v15 forKey:v10];
          }

          [v15 view];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [pathsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  viewControllerForIndexPath = [(FIUIPageViewController *)self viewControllerForIndexPath];
  v9 = [viewControllerForIndexPath objectForKey:pathCopy];

  if (!v9)
  {
    item = [pathCopy item];
    dataSource = [(FIUIPageViewController *)self dataSource];
    v9 = [dataSource pageViewController:self viewControllerAtIndex:item];

    viewControllerForIndexPath2 = [(FIUIPageViewController *)self viewControllerForIndexPath];
    [viewControllerForIndexPath2 setObject:v9 forKey:pathCopy];
  }

  [(FIUIPageViewController *)self _addViewController:v9 toCell:cellCopy];
}

- (FIUIPageViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (FIUIPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end