@interface HKScalarGraphCollectionViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)preferredContentSize;
- (HKScalarGraphCollectionViewCell)currentCell;
- (HKScalarGraphCollectionViewController)initWithMinimumHeight:(double)a3 unitController:(id)a4;
- (HKScalarGraphCollectionViewDelegate)delegate;
- (id)_buildCollectionViewLayout;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_pinView:(id)a3 toParentGuide:(id)a4;
- (void)_resetScrollPositionForIndex:(int64_t)a3;
- (void)_setupChartCollectionView;
- (void)redrawCurrentCell;
- (void)reload;
- (void)resetToIndex:(int64_t)a3;
- (void)resetToMostRecent;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setCollectionViewHeight:(double)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKScalarGraphCollectionViewController

- (HKScalarGraphCollectionViewController)initWithMinimumHeight:(double)a3 unitController:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HKScalarGraphCollectionViewController;
  v7 = [(HKScalarGraphCollectionViewController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(HKScalarGraphCollectionViewController *)v7 setMinimumHeight:a3];
    [(HKScalarGraphCollectionViewController *)v8 setUnitController:v6];
  }

  return v8;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HKScalarGraphCollectionViewController;
  [(HKScalarGraphCollectionViewController *)&v9 viewDidLoad];
  v3 = [(HKScalarGraphCollectionViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(HKScalarGraphCollectionViewController *)self _setupChartCollectionView];
  v4 = [(HKScalarGraphCollectionViewController *)self view];
  v5 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [v4 addSubview:v5];

  collectionView = self->_collectionView;
  v7 = [(HKScalarGraphCollectionViewController *)self view];
  v8 = [v7 safeAreaLayoutGuide];
  [(HKScalarGraphCollectionViewController *)self _pinView:collectionView toParentGuide:v8];

  [(HKScalarGraphCollectionViewController *)self reload];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HKScalarGraphCollectionViewController;
  [(HKScalarGraphCollectionViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [v3 invalidateLayout];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = HKScalarGraphCollectionViewController;
  [(HKScalarGraphCollectionViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [v3 bounds];
  [(HKScalarGraphCollectionViewController *)self setCollectionViewHeight:v4];

  [(HKScalarGraphCollectionViewController *)self _resetScrollPositionForIndex:self->_currentIndex];
}

- (void)reload
{
  [(UICollectionView *)self->_collectionView reloadData];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView layoutIfNeeded];
}

- (void)redrawCurrentCell
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained graphSeriesForIndex:self->_currentIndex];
  v5 = objc_loadWeakRetained(&self->_currentCell);
  [v5 setGraphSeries:v4];

  v6 = objc_loadWeakRetained(&self->_currentCell);
  v7 = [v6 graphViewController];
  v8 = [v7 graphView];
  [v8 setNeedsReloadSeries];

  v11 = objc_loadWeakRetained(&self->_currentCell);
  v9 = [v11 graphViewController];
  v10 = [v9 graphView];
  [v10 autoscaleYAxesAnimated:0 specificRange:0 onlyIfNeeded:0 completion:0];
}

- (void)_resetScrollPositionForIndex:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained numberOfItemsInCollection];

  if (v6 > a3)
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
    [(UICollectionView *)self->_collectionView scrollToItemAtIndexPath:v7 atScrollPosition:8 animated:0];
    [(UICollectionView *)self->_collectionView layoutIfNeeded];
  }
}

- (void)resetToIndex:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained numberOfItemsInCollection];

  if (v6)
  {
    self->_currentIndex = a3;
    [(HKScalarGraphCollectionViewController *)self _resetScrollPositionForIndex:a3];
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:self->_currentIndex inSection:0];
    v7 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v9];
    objc_storeWeak(&self->_currentCell, v7);

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 graphCollectionView:self didChangeVisibleIndex:self->_currentIndex];
  }
}

- (void)resetToMostRecent
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained numberOfItemsInCollection];

  if (v4)
  {

    [(HKScalarGraphCollectionViewController *)self resetToIndex:v4 - 1];
  }
}

- (CGSize)preferredContentSize
{
  v3 = [(HKScalarGraphCollectionViewController *)self view];
  [v3 frame];
  v5 = v4;
  collectionViewHeight = self->_collectionViewHeight;

  v7 = v5;
  v8 = collectionViewHeight;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_setupChartCollectionView
{
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v4 = [(HKScalarGraphCollectionViewController *)self _buildCollectionViewLayout];
  v5 = [v3 initWithFrame:v4 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKScalarGraphCollectionViewController *)self setCollectionView:v5];

  v6 = [(HKScalarGraphCollectionViewController *)self collectionView];
  v7 = objc_opt_class();
  v8 = +[HKScalarGraphCollectionViewCell reuseIdentifier];
  [v6 registerClass:v7 forCellWithReuseIdentifier:v8];

  v9 = [(HKScalarGraphCollectionViewController *)self collectionView];
  v10 = [v9 heightAnchor];
  [(HKScalarGraphCollectionViewController *)self minimumHeight];
  v11 = [v10 constraintGreaterThanOrEqualToConstant:?];
  [v11 setActive:1];

  v12 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [MEMORY[0x1E69DC888] clearColor];
  v14 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [v14 setBackgroundColor:v13];

  v15 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [v15 setDelegate:self];

  v16 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [v16 setDataSource:self];

  v17 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [v17 setAllowsSelection:0];

  v18 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [v18 setAllowsMultipleSelection:0];

  v19 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [v19 setPagingEnabled:1];

  v20 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [v20 setShowsHorizontalScrollIndicator:0];
}

- (void)setCollectionViewHeight:(double)a3
{
  collectionViewHeight = self->_collectionViewHeight;
  self->_collectionViewHeight = a3;
  if (collectionViewHeight != a3)
  {
    v6 = [(UICollectionView *)self->_collectionView collectionViewLayout];
    [v6 invalidateLayout];

    v7 = [(UICollectionView *)self->_collectionView collectionViewLayout];
    [v7 prepareLayout];

    [(HKScalarGraphCollectionViewController *)self reload];
    currentIndex = self->_currentIndex;

    [(HKScalarGraphCollectionViewController *)self resetToIndex:currentIndex];
  }
}

- (void)_pinView:(id)a3 toParentGuide:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 leadingAnchor];
  v8 = [v5 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [v6 trailingAnchor];
  v11 = [v5 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [v6 topAnchor];
  v14 = [v5 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v18 = [v6 bottomAnchor];

  v16 = [v5 bottomAnchor];

  v17 = [v18 constraintEqualToAnchor:v16];
  [v17 setActive:1];
}

- (id)_buildCollectionViewLayout
{
  v2 = objc_opt_new();
  [v2 setScrollDirection:1];
  [v2 setSectionInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v2 setMinimumLineSpacing:0.0];

  return v2;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = [(HKScalarGraphCollectionViewController *)self collectionView:a3];
  [v6 visibleSize];
  v8 = v7;
  collectionViewHeight = self->_collectionViewHeight;

  v10 = v8;
  v11 = collectionViewHeight;
  result.height = v11;
  result.width = v10;
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained numberOfItemsInCollection];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HKScalarGraphCollectionViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  v10 = [v9 graphViewController];

  if (v10)
  {
    v11 = [v9 graphViewController];
    [v11 willMoveToParentViewController:0];

    v12 = [v9 graphViewController];
    v13 = [v12 view];
    [v13 removeFromSuperview];

    v14 = [v9 graphViewController];
    [v14 removeFromParentViewController];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = [WeakRetained graphViewControllerForIndex:{objc_msgSend(v6, "row")}];

  [(HKScalarGraphCollectionViewController *)self addChildViewController:v16];
  [v9 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v16 view];
  [v25 setFrame:{v18, v20, v22, v24}];

  v26 = [v16 view];
  [v9 addSubview:v26];

  [v16 didMoveToParentViewController:self];
  [v9 setGraphViewController:v16];
  v27 = objc_loadWeakRetained(&self->_delegate);
  v28 = [v27 graphSeriesForIndex:{objc_msgSend(v6, "row")}];
  [v9 setGraphSeries:v28];

  v29 = objc_loadWeakRetained(&self->_delegate);
  v30 = [v29 lollipopControllerForGraphCollectionView];
  [v9 setLollipopController:v30];

  v31 = objc_loadWeakRetained(&self->_delegate);
  v32 = [v31 headerViewForLollipop];
  [v9 setHeader:v32];

  v33 = [v16 graphView];
  [v33 setDelegate:v9];

  v34 = [v16 graphView];
  [v34 setNeedsReloadSeries];

  return v9;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [(UICollectionView *)self->_collectionView contentOffset];
  v5 = v4;
  v7 = v6;
  [(UICollectionView *)self->_collectionView bounds];
  width = v22.size.width;
  height = v22.size.height;
  v22.origin.x = v5;
  v22.origin.y = v7;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = width;
  v23.size.height = height;
  v11 = [(UICollectionView *)self->_collectionView indexPathForItemAtPoint:MidX, CGRectGetMidY(v23)];
  v12 = v11;
  if (v11)
  {
    v20 = v11;
    v13 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v11];
    objc_storeWeak(&self->_currentCell, v13);

    self->_currentIndex = [v20 row];
    v14 = [(HKScalarGraphCollectionViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(HKScalarGraphCollectionViewController *)self delegate];
      [v16 graphCollectionView:self didChangeVisibleIndex:self->_currentIndex];
    }

    WeakRetained = objc_loadWeakRetained(&self->_currentCell);
    v18 = [WeakRetained graphViewController];
    v19 = [v18 graphView];
    [v19 setNeedsReloadSeries];

    v12 = v20;
  }

  MEMORY[0x1EEE66BB8](v11, v12);
}

- (void)scrollViewDidScroll:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_currentCell);
  v3 = [WeakRetained lollipopController];
  [v3 setInvisibleAnimated:0];
}

- (HKScalarGraphCollectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HKScalarGraphCollectionViewCell)currentCell
{
  WeakRetained = objc_loadWeakRetained(&self->_currentCell);

  return WeakRetained;
}

@end