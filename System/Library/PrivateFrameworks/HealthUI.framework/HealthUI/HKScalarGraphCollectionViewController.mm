@interface HKScalarGraphCollectionViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)preferredContentSize;
- (HKScalarGraphCollectionViewCell)currentCell;
- (HKScalarGraphCollectionViewController)initWithMinimumHeight:(double)height unitController:(id)controller;
- (HKScalarGraphCollectionViewDelegate)delegate;
- (id)_buildCollectionViewLayout;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_pinView:(id)view toParentGuide:(id)guide;
- (void)_resetScrollPositionForIndex:(int64_t)index;
- (void)_setupChartCollectionView;
- (void)redrawCurrentCell;
- (void)reload;
- (void)resetToIndex:(int64_t)index;
- (void)resetToMostRecent;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setCollectionViewHeight:(double)height;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKScalarGraphCollectionViewController

- (HKScalarGraphCollectionViewController)initWithMinimumHeight:(double)height unitController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = HKScalarGraphCollectionViewController;
  v7 = [(HKScalarGraphCollectionViewController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(HKScalarGraphCollectionViewController *)v7 setMinimumHeight:height];
    [(HKScalarGraphCollectionViewController *)v8 setUnitController:controllerCopy];
  }

  return v8;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HKScalarGraphCollectionViewController;
  [(HKScalarGraphCollectionViewController *)&v9 viewDidLoad];
  view = [(HKScalarGraphCollectionViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  [(HKScalarGraphCollectionViewController *)self _setupChartCollectionView];
  view2 = [(HKScalarGraphCollectionViewController *)self view];
  collectionView = [(HKScalarGraphCollectionViewController *)self collectionView];
  [view2 addSubview:collectionView];

  collectionView = self->_collectionView;
  view3 = [(HKScalarGraphCollectionViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  [(HKScalarGraphCollectionViewController *)self _pinView:collectionView toParentGuide:safeAreaLayoutGuide];

  [(HKScalarGraphCollectionViewController *)self reload];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HKScalarGraphCollectionViewController;
  [(HKScalarGraphCollectionViewController *)&v4 viewWillLayoutSubviews];
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = HKScalarGraphCollectionViewController;
  [(HKScalarGraphCollectionViewController *)&v5 viewDidLayoutSubviews];
  collectionView = [(HKScalarGraphCollectionViewController *)self collectionView];
  [collectionView bounds];
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
  graphViewController = [v6 graphViewController];
  graphView = [graphViewController graphView];
  [graphView setNeedsReloadSeries];

  v11 = objc_loadWeakRetained(&self->_currentCell);
  graphViewController2 = [v11 graphViewController];
  graphView2 = [graphViewController2 graphView];
  [graphView2 autoscaleYAxesAnimated:0 specificRange:0 onlyIfNeeded:0 completion:0];
}

- (void)_resetScrollPositionForIndex:(int64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  numberOfItemsInCollection = [WeakRetained numberOfItemsInCollection];

  if (numberOfItemsInCollection > index)
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
    [(UICollectionView *)self->_collectionView scrollToItemAtIndexPath:v7 atScrollPosition:8 animated:0];
    [(UICollectionView *)self->_collectionView layoutIfNeeded];
  }
}

- (void)resetToIndex:(int64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  numberOfItemsInCollection = [WeakRetained numberOfItemsInCollection];

  if (numberOfItemsInCollection)
  {
    self->_currentIndex = index;
    [(HKScalarGraphCollectionViewController *)self _resetScrollPositionForIndex:index];
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
  numberOfItemsInCollection = [WeakRetained numberOfItemsInCollection];

  if (numberOfItemsInCollection)
  {

    [(HKScalarGraphCollectionViewController *)self resetToIndex:numberOfItemsInCollection - 1];
  }
}

- (CGSize)preferredContentSize
{
  view = [(HKScalarGraphCollectionViewController *)self view];
  [view frame];
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
  _buildCollectionViewLayout = [(HKScalarGraphCollectionViewController *)self _buildCollectionViewLayout];
  v5 = [v3 initWithFrame:_buildCollectionViewLayout collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKScalarGraphCollectionViewController *)self setCollectionView:v5];

  collectionView = [(HKScalarGraphCollectionViewController *)self collectionView];
  v7 = objc_opt_class();
  v8 = +[HKScalarGraphCollectionViewCell reuseIdentifier];
  [collectionView registerClass:v7 forCellWithReuseIdentifier:v8];

  collectionView2 = [(HKScalarGraphCollectionViewController *)self collectionView];
  heightAnchor = [collectionView2 heightAnchor];
  [(HKScalarGraphCollectionViewController *)self minimumHeight];
  v11 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
  [v11 setActive:1];

  collectionView3 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [collectionView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  collectionView4 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [collectionView4 setBackgroundColor:clearColor];

  collectionView5 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [collectionView5 setDelegate:self];

  collectionView6 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [collectionView6 setDataSource:self];

  collectionView7 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [collectionView7 setAllowsSelection:0];

  collectionView8 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [collectionView8 setAllowsMultipleSelection:0];

  collectionView9 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [collectionView9 setPagingEnabled:1];

  collectionView10 = [(HKScalarGraphCollectionViewController *)self collectionView];
  [collectionView10 setShowsHorizontalScrollIndicator:0];
}

- (void)setCollectionViewHeight:(double)height
{
  collectionViewHeight = self->_collectionViewHeight;
  self->_collectionViewHeight = height;
  if (collectionViewHeight != height)
  {
    collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];

    collectionViewLayout2 = [(UICollectionView *)self->_collectionView collectionViewLayout];
    [collectionViewLayout2 prepareLayout];

    [(HKScalarGraphCollectionViewController *)self reload];
    currentIndex = self->_currentIndex;

    [(HKScalarGraphCollectionViewController *)self resetToIndex:currentIndex];
  }
}

- (void)_pinView:(id)view toParentGuide:(id)guide
{
  guideCopy = guide;
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [guideCopy leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v9 setActive:1];

  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [guideCopy trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v12 setActive:1];

  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [guideCopy topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v15 setActive:1];

  bottomAnchor = [viewCopy bottomAnchor];

  bottomAnchor2 = [guideCopy bottomAnchor];

  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = [(HKScalarGraphCollectionViewController *)self collectionView:view];
  [v6 visibleSize];
  v8 = v7;
  collectionViewHeight = self->_collectionViewHeight;

  v10 = v8;
  v11 = collectionViewHeight;
  result.height = v11;
  result.width = v10;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  numberOfItemsInCollection = [WeakRetained numberOfItemsInCollection];

  return numberOfItemsInCollection;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[HKScalarGraphCollectionViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  graphViewController = [v9 graphViewController];

  if (graphViewController)
  {
    graphViewController2 = [v9 graphViewController];
    [graphViewController2 willMoveToParentViewController:0];

    graphViewController3 = [v9 graphViewController];
    view = [graphViewController3 view];
    [view removeFromSuperview];

    graphViewController4 = [v9 graphViewController];
    [graphViewController4 removeFromParentViewController];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = [WeakRetained graphViewControllerForIndex:{objc_msgSend(pathCopy, "row")}];

  [(HKScalarGraphCollectionViewController *)self addChildViewController:v16];
  [v9 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  view2 = [v16 view];
  [view2 setFrame:{v18, v20, v22, v24}];

  view3 = [v16 view];
  [v9 addSubview:view3];

  [v16 didMoveToParentViewController:self];
  [v9 setGraphViewController:v16];
  v27 = objc_loadWeakRetained(&self->_delegate);
  v28 = [v27 graphSeriesForIndex:{objc_msgSend(pathCopy, "row")}];
  [v9 setGraphSeries:v28];

  v29 = objc_loadWeakRetained(&self->_delegate);
  lollipopControllerForGraphCollectionView = [v29 lollipopControllerForGraphCollectionView];
  [v9 setLollipopController:lollipopControllerForGraphCollectionView];

  v31 = objc_loadWeakRetained(&self->_delegate);
  headerViewForLollipop = [v31 headerViewForLollipop];
  [v9 setHeader:headerViewForLollipop];

  graphView = [v16 graphView];
  [graphView setDelegate:v9];

  graphView2 = [v16 graphView];
  [graphView2 setNeedsReloadSeries];

  return v9;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
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
    delegate = [(HKScalarGraphCollectionViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate2 = [(HKScalarGraphCollectionViewController *)self delegate];
      [delegate2 graphCollectionView:self didChangeVisibleIndex:self->_currentIndex];
    }

    WeakRetained = objc_loadWeakRetained(&self->_currentCell);
    graphViewController = [WeakRetained graphViewController];
    graphView = [graphViewController graphView];
    [graphView setNeedsReloadSeries];

    v12 = v20;
  }

  MEMORY[0x1EEE66BB8](v11, v12);
}

- (void)scrollViewDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_currentCell);
  lollipopController = [WeakRetained lollipopController];
  [lollipopController setInvisibleAnimated:0];
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