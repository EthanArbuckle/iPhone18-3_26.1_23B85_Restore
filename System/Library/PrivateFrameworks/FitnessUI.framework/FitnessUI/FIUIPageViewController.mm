@interface FIUIPageViewController
- (FIUIPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (FIUIPageViewControllerDataSource)dataSource;
- (FIUIPageViewControllerDelegate)delegate;
- (UIViewController)currentlyDisplayedViewController;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_addViewController:(id)a3 toCell:(id)a4;
- (void)_pageSelectedWithControl:(id)a3;
- (void)_scrollViewDidStop;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)loadView;
- (void)reloadData;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setCurrentlyDisplayedIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)setDataSource:(id)a3;
- (void)setScrollDirection:(int64_t)a3;
- (void)setShowsPagingIndicator:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation FIUIPageViewController

- (FIUIPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = FIUIPageViewController;
  v4 = [(FIUIPageViewController *)&v9 initWithNibName:a3 bundle:a4];
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

  v4 = [(FIUIPageViewController *)self collectionViewLayout];
  [v4 setMinimumLineSpacing:0.0];

  v5 = [(FIUIPageViewController *)self collectionViewLayout];
  [v5 setMinimumInteritemSpacing:0.0];

  v6 = *MEMORY[0x1E69DDCE0];
  v7 = *(MEMORY[0x1E69DDCE0] + 8);
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  v9 = *(MEMORY[0x1E69DDCE0] + 24);
  v10 = [(FIUIPageViewController *)self collectionViewLayout];
  [v10 setSectionInset:{v6, v7, v8, v9}];

  v11 = [(FIUIPageViewController *)self scrollDirection];
  v12 = [(FIUIPageViewController *)self collectionViewLayout];
  [v12 setScrollDirection:v11];

  v13 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v14 = [(FIUIPageViewController *)self collectionViewLayout];
  v15 = *MEMORY[0x1E695F058];
  v16 = *(MEMORY[0x1E695F058] + 8);
  v17 = *(MEMORY[0x1E695F058] + 16);
  v18 = *(MEMORY[0x1E695F058] + 24);
  v19 = [v13 initWithFrame:v14 collectionViewLayout:{*MEMORY[0x1E695F058], v16, v17, v18}];
  [(FIUIPageViewController *)self setCollectionView:v19];

  v20 = [(FIUIPageViewController *)self collectionView];
  [v20 setPrefetchingEnabled:1];

  v21 = [(FIUIPageViewController *)self collectionView];
  [v21 setPrefetchDataSource:self];

  v22 = [(FIUIPageViewController *)self collectionView];
  [v22 setDataSource:self];

  v23 = [(FIUIPageViewController *)self collectionView];
  [v23 setDelegate:self];

  v24 = [(FIUIPageViewController *)self collectionView];
  [v24 setShowsHorizontalScrollIndicator:0];

  v25 = [(FIUIPageViewController *)self collectionView];
  [v25 setShowsVerticalScrollIndicator:0];

  v26 = [(FIUIPageViewController *)self collectionView];
  [v26 setPagingEnabled:1];

  v27 = [(FIUIPageViewController *)self collectionView];
  [v27 setContentInsetAdjustmentBehavior:2];

  v28 = [(FIUIPageViewController *)self view];
  v29 = [(FIUIPageViewController *)self collectionView];
  [v28 addSubview:v29];

  v30 = [(FIUIPageViewController *)self collectionView];
  [v30 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"com.apple.FitnessUI.FIUIPageViewController.ReuseIdentifier"];

  v31 = [objc_alloc(MEMORY[0x1E69DCD10]) initWithFrame:{v15, v16, v17, v18}];
  [(FIUIPageViewController *)self setPageControl:v31];

  v32 = [(FIUIPageViewController *)self pageControl];
  [v32 setHidesForSinglePage:1];

  v33 = [(FIUIPageViewController *)self pageControl];
  [v33 addTarget:self action:sel__pageSelectedWithControl_ forControlEvents:4096];

  v34 = [(FIUIPageViewController *)self pageControl];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  v35 = [(FIUIPageViewController *)self view];
  v36 = [(FIUIPageViewController *)self pageControl];
  [v35 addSubview:v36];

  v37 = [(FIUIPageViewController *)self pageControl];
  v38 = [v37 centerXAnchor];
  v39 = [(FIUIPageViewController *)self view];
  v40 = [v39 centerXAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  [v41 setActive:1];

  v42 = [(FIUIPageViewController *)self pageControl];
  v43 = [v42 bottomAnchor];
  v44 = [(FIUIPageViewController *)self view];
  v45 = [v44 bottomAnchor];
  v46 = [v43 constraintEqualToAnchor:v45];
  [v46 setActive:1];
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = FIUIPageViewController;
  [(FIUIPageViewController *)&v19 viewWillLayoutSubviews];
  v3 = [(FIUIPageViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(FIUIPageViewController *)self collectionView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(FIUIPageViewController *)self view];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v18 = [(FIUIPageViewController *)self collectionViewLayout];
  [v18 setItemSize:{v15, v17}];

  if ([(FIUIPageViewController *)self currentlyDisplayedIndex]>= 1)
  {
    [(FIUIPageViewController *)self setCurrentlyDisplayedIndex:[(FIUIPageViewController *)self currentlyDisplayedIndex]];
  }
}

- (void)setCurrentlyDisplayedIndex:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v16[1] = *MEMORY[0x1E69E9840];
  currentlyDisplayedIndex = self->_currentlyDisplayedIndex;
  v8 = [(FIUIPageViewController *)self dataSource];
  v9 = [v8 numberOfViewControllersForPageViewController:self];

  if (v9 <= a3)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Requested setting currently displayed index out of range" userInfo:0];
    [v11 raise];
  }

  else
  {
    self->_currentlyDisplayedIndex = a3;
    v10 = currentlyDisplayedIndex != a3 && v4;
    [(FIUIPageViewController *)self setShouldNotifyDelegateWhenScrollViewSettles:v10 | [(FIUIPageViewController *)self shouldNotifyDelegateWhenScrollViewSettles]];
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:self->_currentlyDisplayedIndex inSection:0];
    v12 = [(FIUIPageViewController *)self collectionView];
    v16[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [(FIUIPageViewController *)self collectionView:v12 prefetchItemsAtIndexPaths:v13];

    v14 = [(FIUIPageViewController *)self collectionView];
    [v14 scrollToItemAtIndexPath:v11 atScrollPosition:16 animated:v4];
  }

  if (currentlyDisplayedIndex != a3 && !v4)
  {
    v15 = [(FIUIPageViewController *)self delegate];
    [v15 pageViewController:self didUpdateCurrentlyDisplayedIndex:self->_currentlyDisplayedIndex];
  }
}

- (void)setDataSource:(id)a3
{
  objc_storeWeak(&self->_dataSource, a3);
  v4 = [(FIUIPageViewController *)self collectionView];
  [v4 reloadData];

  v5 = [(FIUIPageViewController *)self dataSource];
  v6 = [v5 numberOfViewControllersForPageViewController:self];

  if ([(FIUIPageViewController *)self showsPagingIndicator])
  {
    v7 = [(FIUIPageViewController *)self pageControl];
    [v7 setNumberOfPages:v6];
  }

  if ([(FIUIPageViewController *)self isViewLoaded])
  {
    v8 = [(FIUIPageViewController *)self view];
    [v8 setNeedsLayout];
  }
}

- (void)setScrollDirection:(int64_t)a3
{
  v4 = [(FIUIPageViewController *)self collectionViewLayout];
  [v4 setScrollDirection:a3];
}

- (void)setShowsPagingIndicator:(BOOL)a3
{
  v3 = a3;
  self->_showsPagingIndicator = a3;
  if (a3)
  {
    v5 = [(FIUIPageViewController *)self dataSource];
    v6 = [v5 numberOfViewControllersForPageViewController:self];

    v7 = [(FIUIPageViewController *)self pageControl];
    [v7 setNumberOfPages:v6];
  }

  v8 = [(FIUIPageViewController *)self pageControl];
  [v8 setHidden:!v3];
}

- (UIViewController)currentlyDisplayedViewController
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:-[FIUIPageViewController currentlyDisplayedIndex](self inSection:{"currentlyDisplayedIndex"), 0}];
  v4 = [(FIUIPageViewController *)self viewControllerForIndexPath];
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(FIUIPageViewController *)self collectionView];
    v8 = [v7 cellForItemAtIndexPath:v3];

    v6 = [v8 viewController];
    if (v6)
    {
      v9 = [(FIUIPageViewController *)self viewControllerForIndexPath];
      [v9 setObject:v6 forKey:v3];
    }
  }

  return v6;
}

- (void)reloadData
{
  v3 = [(FIUIPageViewController *)self viewControllerForIndexPath];
  [v3 removeAllObjects];

  v4 = [(FIUIPageViewController *)self collectionView];
  [v4 reloadData];

  [(FIUIPageViewController *)self setShowsPagingIndicator:self->_showsPagingIndicator];
  v5 = [(FIUIPageViewController *)self dataSource];
  v6 = [v5 numberOfViewControllersForPageViewController:self];

  if (self->_currentlyDisplayedIndex >= v6)
  {
    v7 = [(FIUIPageViewController *)self dataSource];
    -[FIUIPageViewController setCurrentlyDisplayedIndex:](self, "setCurrentlyDisplayedIndex:", [v7 numberOfViewControllersForPageViewController:self] - 1);
  }

  else
  {

    [(FIUIPageViewController *)self setCurrentlyDisplayedIndex:?];
  }
}

- (void)_pageSelectedWithControl:(id)a3
{
  v4 = [a3 currentPage];
  [(FIUIPageViewController *)self setUserDidTapPageControl:1];
  [(FIUIPageViewController *)self setCurrentlyDisplayedIndex:v4 animated:1];
  v5 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__FIUIPageViewController__pageSelectedWithControl___block_invoke;
  block[3] = &unk_1E878BFE0;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

- (void)_addViewController:(id)a3 toCell:(id)a4
{
  v6 = a4;
  v9 = a3;
  [v6 setViewController:v9];
  [(FIUIPageViewController *)self addChildViewController:v9];
  v7 = [v6 contentView];

  v8 = [v9 view];
  [v7 addSubview:v8];

  [v9 didMoveToParentViewController:self];
}

- (void)_scrollViewDidStop
{
  v3 = [(FIUIPageViewController *)self collectionView];
  v4 = [(FIUIPageViewController *)self collectionView:v3 numberOfItemsInSection:0];

  v5 = [(FIUIPageViewController *)self collectionView];
  [v5 contentOffset];
  v7 = v6;
  v8 = [(FIUIPageViewController *)self collectionView];
  [v8 contentSize];
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

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  if ([(FIUIPageViewController *)self shouldNotifyDelegateWhenScrollViewSettles])
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:-[FIUIPageViewController currentlyDisplayedIndex](self inSection:{"currentlyDisplayedIndex"), 0}];
    v4 = [(FIUIPageViewController *)self collectionView];
    v5 = [v4 cellForItemAtIndexPath:v7];

    if (v5)
    {
      [(FIUIPageViewController *)self setShouldNotifyDelegateWhenScrollViewSettles:0];
      v6 = [(FIUIPageViewController *)self delegate];
      [v6 pageViewController:self didUpdateCurrentlyDisplayedIndex:{-[FIUIPageViewController currentlyDisplayedIndex](self, "currentlyDisplayedIndex")}];
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  if (![(FIUIPageViewController *)self userDidTapPageControl])
  {
    v4 = [(FIUIPageViewController *)self collectionView];
    [v4 contentOffset];
    v6 = v5;
    v7 = [(FIUIPageViewController *)self collectionView];
    [v7 contentSize];
    v9 = v6 / v8;

    v10 = [(FIUIPageViewController *)self pageControl];
    v11 = [v10 numberOfPages];

    v12 = [(FIUIPageViewController *)self pageControl];
    [v12 setCurrentPage:llround(v9 * v11)];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(FIUIPageViewController *)self _scrollViewDidStop];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(FIUIPageViewController *)self dataSource:a3];
  v6 = [v5 numberOfViewControllersForPageViewController:self];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(FIUIPageViewController *)self collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"com.apple.FitnessUI.FIUIPageViewController.ReuseIdentifier" forIndexPath:v5];

  return v7;
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [(FIUIPageViewController *)self viewControllerForIndexPath];
        v12 = [v11 objectForKey:v10];

        if (!v12)
        {
          v13 = [v10 item];
          v14 = [(FIUIPageViewController *)self dataSource];
          v15 = [v14 pageViewController:self viewControllerAtIndex:v13];

          if (v15)
          {
            v16 = [(FIUIPageViewController *)self viewControllerForIndexPath];
            [v16 setObject:v15 forKey:v10];
          }

          [v15 view];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = [(FIUIPageViewController *)self viewControllerForIndexPath];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v10 = [v7 item];
    v11 = [(FIUIPageViewController *)self dataSource];
    v9 = [v11 pageViewController:self viewControllerAtIndex:v10];

    v12 = [(FIUIPageViewController *)self viewControllerForIndexPath];
    [v12 setObject:v9 forKey:v7];
  }

  [(FIUIPageViewController *)self _addViewController:v9 toCell:v13];
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