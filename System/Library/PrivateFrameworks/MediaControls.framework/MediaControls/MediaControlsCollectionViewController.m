@interface MediaControlsCollectionViewController
+ (id)alphaAnimatorWithAnimations:(id)a3;
+ (id)frameAnimator;
- (BOOL)_canPerformBatchUpdates;
- (BOOL)_isScrollViewAnimatingScroll;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CGRect)_frameForViewAtIndex:(int64_t)a3;
- (CGRect)_frameForViewAtIndex:(int64_t)a3 displayMode:(int64_t)a4 size:(CGSize)a5;
- (CGRect)_frameForViewAtIndex:(int64_t)a3 size:(CGSize)a4;
- (MediaControlsCollectionViewController)init;
- (MediaControlsCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MediaControlsCollectionViewDataSource)dataSource;
- (MediaControlsCollectionViewDelegate)delegate;
- (NSArray)visibleBottomViewControllers;
- (NSArray)visibleTopViewControllers;
- (NSArray)visibleViewControllers;
- (NSIndexSet)visibleIndexes;
- (UIEdgeInsets)scrollViewInsets;
- (_NSRange)_rangeOfItemsInRect:(CGRect)a3;
- (double)_backgroundCornerRadius;
- (double)_selectedItemHeightInSize:(CGSize)a3 shouldIgnoreInsets:(BOOL)a4;
- (double)_totalHeight;
- (id)_indexesOfItemsInRect:(CGRect)a3;
- (id)_insertViewControllerForIndex:(int64_t)a3;
- (id)_visibleBottomViewControllers;
- (id)_visibleTopViewControllers;
- (id)dequeueReusableViewControllerForItemAtIndex:(int64_t)a3;
- (id)viewControllerForItemAtIndex:(int64_t)a3;
- (id)viewControllerForItemAtPoint:(CGPoint)a3;
- (id)viewControllerForSelectedItem;
- (int64_t)_closestItemAtPoint:(CGPoint)a3;
- (int64_t)itemAtPoint:(CGPoint)a3;
- (void)_adjustForEnvironmentChangeIfNeededWithSize:(CGSize)a3 transitionCoordinator:(id)a4;
- (void)_adjustForEnvironmentChangeWithSize:(CGSize)a3 transitionCoordinator:(id)a4;
- (void)_beginAppearanceTransitionForChildViewControllers:(BOOL)a3 animated:(BOOL)a4;
- (void)_beginAppearanceTransitionIfNeeded:(BOOL)a3 forChildViewController:(id)a4 animated:(BOOL)a5;
- (void)_commonInit;
- (void)_dequeueAndPerformBatchUpdatesIfNeeded;
- (void)_endAppearanceTransitionForChildViewControllerIfNeeded:(id)a3;
- (void)_endAppearanceTransitionForChildViewControllers;
- (void)_enumerateActiveViewControllers:(id)a3;
- (void)_handleScrollViewTap:(id)a3;
- (void)_populateViewsInFrame:(CGRect)a3;
- (void)_reapActiveViews;
- (void)_reapViewAtIndex:(int64_t)a3;
- (void)_reloadDataIfNeeded;
- (void)_removeInactiveViewControllersFromHierarchy;
- (void)_removeViewController:(id)a3;
- (void)_scrollToSelectedItemAnimated:(BOOL)a3;
- (void)_setFrame:(CGRect)a3 forVisibleViewAtIndex:(int64_t)a4;
- (void)_setHighlighted:(BOOL)a3 forViewController:(id)a4;
- (void)_setHighlighted:(BOOL)a3 forViewControllerAtIndex:(int64_t)a4;
- (void)_setSelectedItemIndex:(int64_t)a3 animated:(BOOL)a4 shouldScroll:(BOOL)a5 shouldNotifyDelegate:(BOOL)a6 withReason:(int64_t)a7;
- (void)_tileViews;
- (void)_transitionToDisplayMode:(int64_t)a3 usingTransitionCoordinator:(id)a4 assumingSize:(CGSize)a5;
- (void)_transitionToVisible:(BOOL)a3;
- (void)_transitionTopAndBottomViewControllersToVisible:(BOOL)a3 completion:(id)a4;
- (void)_updateContentSize;
- (void)_updateFrameForViewController:(id)a3 atIndex:(int64_t)a4 withCoordinator:(id)a5 assumingSize:(CGSize)a6;
- (void)_updateFramesForActiveViewControllersWithCoordinator:(id)a3 assumingSize:(CGSize)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)performBatchUpdates:(id)a3;
- (void)reloadData;
- (void)scrollViewDidScroll:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setDisplayMode:(int64_t)a3;
- (void)setScrollViewInsets:(UIEdgeInsets)a3;
- (void)updateContentInsets;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MediaControlsCollectionViewController

- (MediaControlsCollectionViewController)init
{
  v5.receiver = self;
  v5.super_class = MediaControlsCollectionViewController;
  v2 = [(MediaControlsCollectionViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MediaControlsCollectionViewController *)v2 _commonInit];
  }

  return v3;
}

- (MediaControlsCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = MediaControlsCollectionViewController;
  v4 = [(MediaControlsCollectionViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(MediaControlsCollectionViewController *)v4 _commonInit];
  }

  return v5;
}

- (void)_commonInit
{
  self->_displayMode = 0;
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  activeViewControllers = self->_activeViewControllers;
  self->_activeViewControllers = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  inactiveViewControllers = self->_inactiveViewControllers;
  self->_inactiveViewControllers = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pendingUpdates = self->_pendingUpdates;
  self->_pendingUpdates = v7;

  self->_selectedItemIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->_highlightedItemIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->_lastKnownEnvironmentSize = *MEMORY[0x1E695F060];
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  dismissalBlock = self->_dismissalBlock;
  if (dismissalBlock)
  {
    v7 = dismissalBlock[2];
    v8 = self->_dismissalBlock;

    v7(v8, a4);
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v9.receiver = self;
    v9.super_class = MediaControlsCollectionViewController;
    [(MediaControlsCollectionViewController *)&v9 dismissViewControllerAnimated:a3 completion:a4];
  }
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = MediaControlsCollectionViewController;
  [(MediaControlsCollectionViewController *)&v18 viewDidLoad];
  CCUIExpandedModuleEdgeInsets();
  self->_controlCenterEdgeInsets.top = v3;
  self->_controlCenterEdgeInsets.left = v4;
  self->_controlCenterEdgeInsets.bottom = v5;
  self->_controlCenterEdgeInsets.right = v6;
  v7 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v8 = [(MediaControlsCollectionViewController *)self view];
  [v8 bounds];
  v9 = [v7 initWithFrame:?];
  scrollView = self->_scrollView;
  self->_scrollView = v9;

  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setAutoresizingMask:18];
  [(UIScrollView *)self->_scrollView setAutoresizesSubviews:0];
  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  v11 = [(UIScrollView *)self->_scrollView layer];
  [v11 setHitTestsAsOpaque:1];

  v12 = [(UIScrollView *)self->_scrollView panGestureRecognizer];
  v13 = [(UIScrollView *)self->_scrollView panGestureRecognizer];
  [v13 _hysteresis];
  [v12 _setHysteresis:v14 + v14];

  [(UIScrollView *)self->_scrollView setDelegate:self];
  v15 = [[_MediaControlsTapHoldGestureRecognizer alloc] initWithTarget:self action:sel__handleScrollViewTap_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v15;

  [(_MediaControlsTapHoldGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
  [(_MediaControlsTapHoldGestureRecognizer *)self->_tapGestureRecognizer setEnabled:[(MediaControlsCollectionViewController *)self _wantsTapGestureRecognizer]];
  [(UIScrollView *)self->_scrollView addGestureRecognizer:self->_tapGestureRecognizer];
  v17 = [(MediaControlsCollectionViewController *)self view];
  [v17 addSubview:self->_scrollView];

  [(MediaControlsCollectionViewController *)self updateContentInsets];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MediaControlsCollectionViewController;
  [(MediaControlsCollectionViewController *)&v5 viewWillAppear:?];
  self->_appeared = 1;
  [(MediaControlsCollectionViewController *)self _beginAppearanceTransitionForChildViewControllers:1 animated:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MediaControlsCollectionViewController;
  [(MediaControlsCollectionViewController *)&v4 viewDidAppear:a3];
  [(MediaControlsCollectionViewController *)self _endAppearanceTransitionForChildViewControllers];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MediaControlsCollectionViewController;
  [(MediaControlsCollectionViewController *)&v5 viewWillDisappear:?];
  [(MediaControlsCollectionViewController *)self _beginAppearanceTransitionForChildViewControllers:0 animated:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MediaControlsCollectionViewController;
  [(MediaControlsCollectionViewController *)&v4 viewDidDisappear:a3];
  [(MediaControlsCollectionViewController *)self _endAppearanceTransitionForChildViewControllers];
  self->_appeared = 0;
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = MediaControlsCollectionViewController;
  [(MediaControlsCollectionViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(MediaControlsCollectionViewController *)self view];
  [v3 bounds];
  [(MediaControlsCollectionViewController *)self _adjustForEnvironmentChangeIfNeededWithSize:0 transitionCoordinator:v4, v5];
}

- (id)dequeueReusableViewControllerForItemAtIndex:(int64_t)a3
{
  if (self->_selectedItemIndex == a3 && (v4 = self->_inactiveSelectedViewController) != 0)
  {
    v5 = v4;
    inactiveSelectedViewController = self->_inactiveSelectedViewController;
    self->_inactiveSelectedViewController = 0;
  }

  else
  {
    v5 = [(NSMutableSet *)self->_inactiveViewControllers anyObject];
    if (v5)
    {
      [(NSMutableSet *)self->_inactiveViewControllers removeObject:v5];
    }
  }

  if ([(MediaControlsCollectionItemViewController *)v5 isViewLoaded])
  {
    v7 = [(MediaControlsCollectionItemViewController *)v5 view];
    [v7 setHidden:0];

    v8 = [(MediaControlsCollectionItemViewController *)v5 view];
    [v8 setAlpha:1.0];

    v9 = [(MediaControlsCollectionItemViewController *)v5 view];
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    v12[0] = *MEMORY[0x1E695EFD0];
    v12[1] = v10;
    v12[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v9 setTransform:v12];
  }

  return v5;
}

- (id)viewControllerForItemAtPoint:(CGPoint)a3
{
  v4 = [(MediaControlsCollectionViewController *)self itemAtPoint:a3.x, a3.y];

  return [(MediaControlsCollectionViewController *)self viewControllerForItemAtIndex:v4];
}

- (id)viewControllerForItemAtIndex:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    activeViewControllers = self->_activeViewControllers;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v3 = [(NSMutableDictionary *)activeViewControllers objectForKey:v5];
  }

  return v3;
}

- (id)viewControllerForSelectedItem
{
  v3 = [(MediaControlsCollectionViewController *)self viewControllerForItemAtIndex:self->_selectedItemIndex];
  inactiveSelectedViewController = v3;
  if (!v3)
  {
    inactiveSelectedViewController = self->_inactiveSelectedViewController;
  }

  v5 = inactiveSelectedViewController;

  return inactiveSelectedViewController;
}

- (NSArray)visibleViewControllers
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MediaControlsCollectionViewController *)self visibleIndexes];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __63__MediaControlsCollectionViewController_visibleViewControllers__block_invoke;
  v11 = &unk_1E76651B8;
  v12 = self;
  v13 = v3;
  v5 = v3;
  [v4 enumerateIndexesUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

uint64_t __63__MediaControlsCollectionViewController_visibleViewControllers__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) viewControllerForItemAtIndex:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 40) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (NSArray)visibleTopViewControllers
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MediaControlsCollectionViewController *)self visibleIndexes];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __66__MediaControlsCollectionViewController_visibleTopViewControllers__block_invoke;
  v11 = &unk_1E76651B8;
  v12 = self;
  v13 = v3;
  v5 = v3;
  [v4 enumerateIndexesUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

void *__66__MediaControlsCollectionViewController_visibleTopViewControllers__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = *(a1 + 32);
  if (result[144] == a2)
  {
    *a3 = 1;
  }

  else
  {
    v5 = [result viewControllerForItemAtIndex:a2];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      v5 = [*(a1 + 40) addObject:v5];
      v6 = v7;
    }

    return MEMORY[0x1EEE66BB8](v5, v6);
  }

  return result;
}

- (NSArray)visibleBottomViewControllers
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MediaControlsCollectionViewController *)self visibleIndexes];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __69__MediaControlsCollectionViewController_visibleBottomViewControllers__block_invoke;
  v11 = &unk_1E76651B8;
  v12 = self;
  v13 = v3;
  v5 = v3;
  [v4 enumerateIndexesUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

void *__69__MediaControlsCollectionViewController_visibleBottomViewControllers__block_invoke(uint64_t a1, unint64_t a2)
{
  result = *(a1 + 32);
  if (result[144] < a2)
  {
    v4 = [result viewControllerForItemAtIndex:a2];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v4 = [*(a1 + 40) addObject:v4];
      v5 = v6;
    }

    return MEMORY[0x1EEE66BB8](v4, v5);
  }

  return result;
}

- (void)setDisplayMode:(int64_t)a3
{
  if (self->_displayMode != a3)
  {
    self->_displayMode = a3;
  }
}

- (void)setScrollViewInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_scrollViewInsets.top, v3), vceqq_f64(*&self->_scrollViewInsets.bottom, v4)))) & 1) == 0)
  {
    self->_scrollViewInsets = a3;
    [(MediaControlsCollectionViewController *)self _tileViews];
    v9 = objc_alloc_init(MediaControlsStyleCoordinator);
    v6 = [(MediaControlsCollectionViewController *)self view];
    [v6 bounds];
    [(MediaControlsCollectionViewController *)self _updateFramesForActiveViewControllersWithCoordinator:v9 assumingSize:v7, v8];

    [(MediaControlsStyleCoordinator *)v9 performAnimations];
    [(MediaControlsStyleCoordinator *)v9 performCompletions];
  }
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(MediaControlsCollectionViewController *)self _reloadDataIfNeeded];
    v5 = obj;
  }
}

- (void)performBatchUpdates:(id)a3
{
  v4 = a3;
  if ([(MediaControlsCollectionViewController *)self _canPerformBatchUpdates])
  {
    self->_isPerformingBatchUpdates = 1;
    self->_shouldIgnoreScrollNotifications = 1;
    v4[2](v4);
    if ([(MediaControlsCollectionViewCountData *)self->_countData hasPendingChanges])
    {
      v5 = [(MediaControlsCollectionViewController *)self dataSource];
      if (-[MediaControlsCollectionViewCountData validateCountForNumberOfItems:](self->_countData, "validateCountForNumberOfItems:", [v5 numberOfItemsInCollectionViewController:self]) && self->_displayMode == 1)
      {
        [(MediaControlsCollectionViewController *)self _setHighlighted:0 forViewControllerAtIndex:self->_highlightedItemIndex];
        [(UIScrollView *)self->_scrollView contentOffset];
        v131 = 0;
        v132 = &v131;
        v133 = 0x3010000000;
        v134 = &unk_1A233766F;
        v135 = v6;
        v136 = v7;
        selectedItemIndex = self->_selectedItemIndex;
        v130[0] = 0;
        v130[1] = v130;
        v130[2] = 0x2020000000;
        v130[3] = selectedItemIndex;
        v9 = [(MediaControlsCollectionViewController *)self visibleIndexes];
        v61 = [(MediaControlsCollectionViewCountData *)self->_countData insertedIndexes];
        v59 = [(MediaControlsCollectionViewCountData *)self->_countData deletedIndexes];
        v58 = v5;
        v53 = [(MediaControlsCollectionViewCountData *)self->_countData updatedIndexes];
        v10 = [MEMORY[0x1E695DFA8] set];
        v11 = [MEMORY[0x1E695DFA8] set];
        memset(&v129, 0, sizeof(v129));
        CGAffineTransformMakeScale(&v129, 0.32, 0.32);
        memset(&v128, 0, sizeof(v128));
        CGAffineTransformMakeScale(&v128, 0.32, 0.32);
        v127[0] = 0;
        v127[1] = v127;
        v127[2] = 0x2020000000;
        v127[3] = 0;
        v116[0] = MEMORY[0x1E69E9820];
        v116[1] = 3221225472;
        v116[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke;
        v116[3] = &unk_1E76651E0;
        v120 = v127;
        v48 = v9;
        v117 = v48;
        v118 = self;
        v12 = v10;
        v55 = *(MEMORY[0x1E695EFD0] + 16);
        v123 = *MEMORY[0x1E695EFD0];
        v57 = v123;
        v124 = v55;
        v125 = *(MEMORY[0x1E695EFD0] + 32);
        v54 = v125;
        v126 = selectedItemIndex;
        v119 = v12;
        v121 = v130;
        v122 = &v131;
        [v59 enumerateIndexesUsingBlock:v116];
        [(MediaControlsCollectionViewCountData *)self->_countData applyChanges];
        [(MediaControlsCollectionViewController *)self _updateContentSize];
        [(UIScrollView *)self->_scrollView setContentOffset:v132[4], v132[5]];
        self->_selectedItemIndex = [v58 defaultSelectedItemIndexForCollectionViewController:self];
        [(UIScrollView *)self->_scrollView bounds];
        v13 = [(MediaControlsCollectionViewController *)self _indexesOfItemsInRect:?];
        v115[0] = 0;
        v115[1] = v115;
        v115[2] = 0x2020000000;
        v115[3] = 0;
        v110[0] = MEMORY[0x1E69E9820];
        v110[1] = 3221225472;
        v110[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_2;
        v110[3] = &unk_1E7665208;
        v14 = v13;
        v113 = v115;
        v114 = &v131;
        v111 = v14;
        v112 = self;
        [v61 enumerateIndexesUsingBlock:v110];
        [(UIScrollView *)self->_scrollView setContentOffset:v132[4], v132[5]];
        [(UIScrollView *)self->_scrollView bounds];
        v15 = [(MediaControlsCollectionViewController *)self _indexesOfItemsInRect:?];

        v104[0] = MEMORY[0x1E69E9820];
        v104[1] = 3221225472;
        v104[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_3;
        v104[3] = &unk_1E7665230;
        v104[4] = self;
        v16 = v15;
        v105 = v16;
        v108 = v129;
        v17 = v11;
        v109 = selectedItemIndex;
        v106 = v17;
        v107 = v130;
        [v61 enumerateIndexesUsingBlock:v104];
        v103[0] = MEMORY[0x1E69E9820];
        v103[1] = 3221225472;
        v103[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_4;
        v103[3] = &unk_1E7665258;
        v103[4] = self;
        v18 = [v16 indexPassingTest:v103];
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 3221225472;
        v102[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_5;
        v102[3] = &unk_1E7665258;
        v102[4] = self;
        v19 = [v16 indexWithOptions:2 passingTest:v102];
        v20 = [v16 firstIndex];
        v21 = [v16 lastIndex];
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 3221225472;
        v101[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_6;
        v101[3] = &unk_1E7665280;
        v101[6] = v18 - v20;
        v101[7] = v19;
        v101[8] = v21 - v19;
        v101[5] = v18;
        v101[4] = self;
        [v16 enumerateIndexesUsingBlock:v101];
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_7;
        v92[3] = &unk_1E76652A8;
        v47 = v16;
        v93 = v47;
        v94 = self;
        v97 = v57;
        v98 = v55;
        v99 = v54;
        v22 = v12;
        v95 = v22;
        v100 = v129;
        v23 = v17;
        v96 = v23;
        [v53 enumerateIndexesUsingBlock:v92];
        v24 = self->_selectedItemIndex;
        v49 = objc_alloc_init(MediaControlsStyleCoordinator);
        v25 = [objc_opt_class() frameAnimator];
        v60 = [objc_opt_class() frameAnimator];
        v63 = [objc_opt_class() frameAnimator];
        v26 = objc_opt_class();
        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_8;
        v90[3] = &unk_1E7663898;
        v27 = v22;
        v91 = v27;
        v51 = [v26 alphaAnimatorWithAnimations:v90];
        v46 = v24;
        v28 = objc_opt_class();
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_9;
        v88[3] = &unk_1E7663898;
        v29 = v23;
        v89 = v29;
        v52 = [v28 alphaAnimatorWithAnimations:v88];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_10;
        aBlock[3] = &unk_1E76652D0;
        v30 = v27;
        v86 = v30;
        v87 = v128;
        v31 = _Block_copy(aBlock);
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_11;
        v79[3] = &unk_1E7665320;
        v79[4] = self;
        v32 = v29;
        v80 = v32;
        v83 = v130;
        v84 = v46;
        v33 = v49;
        v81 = v33;
        v45 = v61;
        v82 = v45;
        v62 = _Block_copy(v79);
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_13;
        v74[3] = &unk_1E76652D0;
        v50 = v32;
        v75 = v50;
        v76 = v57;
        v77 = v55;
        v78 = v54;
        v34 = _Block_copy(v74);
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_14;
        v69[3] = &unk_1E7665348;
        v69[4] = self;
        v72 = v130;
        v73 = v46;
        v56 = v47;
        v70 = v56;
        v35 = v33;
        v71 = v35;
        v36 = _Block_copy(v69);
        [v25 addAnimations:v31];
        [v60 addAnimations:v62];
        [v63 addAnimations:v34];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_15;
        v66[3] = &unk_1E7665370;
        v37 = v30;
        v67 = v37;
        v68 = self;
        [v25 addCompletion:v66];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_16;
        v64[3] = &unk_1E7664888;
        v38 = v36;
        v65 = v38;
        [v63 addCompletion:v64];
        if ([v37 count])
        {
          [v25 startAnimation];
          v39 = 0.1;
          [v51 startAnimationAfterDelay:0.1];
        }

        else
        {
          v39 = 0.0;
        }

        if ([v37 count] || objc_msgSend(v50, "count"))
        {
          [v60 startAnimationAfterDelay:v39];
          v39 = v39 + 0.1;
        }

        else
        {
          v42 = [(MediaControlsCollectionViewController *)self view];
          [v42 bounds];
          [(MediaControlsCollectionViewController *)self _updateFramesForActiveViewControllersWithCoordinator:v35 assumingSize:v43, v44];

          [(MediaControlsStyleCoordinator *)v35 performAnimations];
        }

        [v63 startAnimationAfterDelay:v39];
        [v52 startAnimationAfterDelay:v39 + 0.1];
        self->_shouldIgnoreScrollNotifications = 0;

        _Block_object_dispose(v115, 8);
        _Block_object_dispose(v127, 8);

        _Block_object_dispose(v130, 8);
        _Block_object_dispose(&v131, 8);
        v5 = v58;
      }

      else
      {
        self->_isPerformingBatchUpdates = 0;
        self->_shouldIgnoreScrollNotifications = 0;
        [(MediaControlsCollectionViewController *)self reloadData];
      }
    }

    else
    {
      self->_isPerformingBatchUpdates = 0;
      self->_shouldIgnoreScrollNotifications = 0;
      [(MediaControlsCollectionViewController *)self _dequeueAndPerformBatchUpdatesIfNeeded];
    }
  }

  else
  {
    pendingUpdates = self->_pendingUpdates;
    v41 = _Block_copy(v4);
    [(NSMutableArray *)pendingUpdates addObject:v41];
  }
}

void __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v45 = *MEMORY[0x1E69E9840];
  v4 = a2 - *(*(*(a1 + 56) + 8) + 24);
  v5 = 992;
  if ([*(a1 + 32) containsIndex:a2])
  {
    v6 = *(*(v3 + 40) + 992);
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      [*(v3 + 48) addObject:v8];
      v9 = *(*(v3 + 40) + 992);
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
      [v9 removeObjectForKey:v10];

      v11 = [v8 view];
      [v11 setAlpha:1.0];

      v12 = [v8 view];
      v13 = *(v3 + 96);
      v43[0] = *(v3 + 80);
      v43[1] = v13;
      v43[2] = *(v3 + 112);
      [v12 setTransform:v43];
    }

    v14 = *(v3 + 128);
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    if (v14 <= a2)
    {
      if (v14 != a2)
      {
LABEL_10:

        goto LABEL_11;
      }

      v16 = *(*(v3 + 64) + 8);
    }

    else
    {
      v16 = *(*(v3 + 64) + 8);
      v15 = *(v16 + 24) - 1;
    }

    *(v16 + 24) = v15;
    goto LABEL_10;
  }

LABEL_11:
  v17 = [*(*(v3 + 40) + 992) copy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v37 = v17;
  v18 = [v17 allKeys];
  v19 = [v18 sortedArrayUsingSelector:sel_compare_];

  obj = v19;
  v20 = [v19 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v40;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v39 + 1) + 8 * i);
        v25 = [v24 integerValue];
        if (v25 > v4)
        {
          v26 = v25;
          v27 = v4;
          v28 = v3;
          v29 = *(*(v3 + 40) + v5);
          [v37 objectForKey:v24];
          v31 = v30 = v5;
          v32 = [MEMORY[0x1E696AD98] numberWithInteger:v26 - 1];
          v33 = v29;
          v3 = v28;
          v4 = v27;
          [v33 setObject:v31 forKey:v32];

          v5 = v30;
          [*(*(v3 + 40) + v30) removeObjectForKey:v24];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v21);
  }

  if ([*(v3 + 32) firstIndex] > a2)
  {
    [*(v3 + 40) _frameForViewAtIndex:?];
    Height = CGRectGetHeight(v46);
    [*(v3 + 40) _verticalSpacing];
    *(*(*(v3 + 72) + 8) + 40) = *(*(*(v3 + 72) + 8) + 40) - (Height + v35);
  }

  ++*(*(*(v3 + 56) + 8) + 24);
}

uint64_t __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_2(uint64_t result, unint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = [*(result + 32) firstIndex];
    if (result)
    {
      result = [*(v3 + 32) firstIndex];
      if (*(*(*(v3 + 48) + 8) + 24) + result >= a2)
      {
        [*(v3 + 40) _frameForViewAtIndex:a2];
        Height = CGRectGetHeight(v6);
        result = [*(v3 + 40) _verticalSpacing];
        *(*(*(v3 + 56) + 8) + 40) = Height + v5 + *(*(*(v3 + 56) + 8) + 40);
        ++*(*(*(v3 + 48) + 8) + 24);
      }
    }
  }

  return result;
}

void __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_3(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v33 = *MEMORY[0x1E69E9840];
  v4 = [*(*(a1 + 32) + 992) copy];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = v4;
  v5 = [v4 allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];
  v7 = [v6 reverseObjectEnumerator];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = [v12 integerValue];
        if (v13 >= a2)
        {
          v14 = v13;
          v15 = v3;
          v16 = *(*(v3 + 32) + 992);
          v17 = [v25 objectForKey:v12];
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:v14 + 1];
          v19 = v16;
          v3 = v15;
          [v19 setObject:v17 forKey:v18];

          [*(*(v15 + 32) + 992) removeObjectForKey:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  if ([*(v3 + 40) containsIndex:a2])
  {
    v20 = [*(v3 + 32) _insertViewControllerForIndex:a2];
    v21 = [v20 view];
    [v21 setAlpha:0.0];

    v22 = [v20 view];
    v23 = *(v3 + 80);
    v27[0] = *(v3 + 64);
    v27[1] = v23;
    v27[2] = *(v3 + 96);
    [v22 setTransform:v27];

    [*(v3 + 48) addObject:v20];
  }

  v24 = *(v3 + 112);
  if (v24 != 0x7FFFFFFFFFFFFFFFLL && v24 >= a2)
  {
    ++*(*(*(v3 + 56) + 8) + 24);
  }
}

BOOL __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 992);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v4 = [v2 objectForKey:v3];
  v5 = v4 != 0;

  return v5;
}

BOOL __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 992);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v4 = [v2 objectForKey:v3];
  v5 = v4 != 0;

  return v5;
}

uint64_t __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_6(uint64_t result, unint64_t a2)
{
  v3 = result;
  if (*(result + 40) <= a2)
  {
    if (*(result + 56) >= a2)
    {
      return result;
    }

    v4 = *(result + 64) + a2;
  }

  else
  {
    v4 = a2 - *(result + 48);
  }

  [*(result + 32) _frameForViewAtIndex:v4];
  v6 = v5;
  v8 = v7;
  [*(v3 + 32) _frameForViewAtIndex:a2];
  v10 = v9;
  v12 = v11;
  v13 = [*(v3 + 32) _insertViewControllerForIndex:a2];
  v14 = *(v3 + 32);

  return [v14 _setFrame:a2 forVisibleViewAtIndex:{v6, v8, v10, v12}];
}

void __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_7(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) containsIndex:a2])
  {
    v4 = *(*(a1 + 40) + 992);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      v7 = [v6 view];
      [v7 setAlpha:1.0];

      v8 = [v6 view];
      v9 = *(a1 + 80);
      v14 = *(a1 + 64);
      v15 = v9;
      v16 = *(a1 + 96);
      [v8 setTransform:&v14];

      [*(a1 + 48) addObject:v6];
    }

    v10 = [*(a1 + 40) _insertViewControllerForIndex:a2];
    v11 = [v10 view];
    [v11 setAlpha:0.0];

    v12 = [v10 view];
    v13 = *(a1 + 128);
    v14 = *(a1 + 112);
    v15 = v13;
    v16 = *(a1 + 144);
    [v12 setTransform:&v14];

    [*(a1 + 56) addObject:v10];
  }
}

void __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) view];
        [v6 setAlpha:0.0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_9(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) view];
        [v6 setAlpha:1.0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_10(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) view];
        v8 = *(a1 + 56);
        v9[0] = *(a1 + 40);
        v9[1] = v8;
        v9[2] = *(a1 + 72);
        [v7 setTransform:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_11(uint64_t a1)
{
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_12;
  v23 = &unk_1E76652F8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v24 = v3;
  v25 = v4;
  [v2 _enumerateActiveViewControllers:&v20];
  if (*(a1 + 72) != *(*(*(a1 + 64) + 8) + 24))
  {
    v5 = [*(a1 + 32) viewControllerForItemAtIndex:{v20, v21, v22, v23}];
    v6 = [*(a1 + 32) viewControllerForItemAtIndex:*(a1 + 72)];
    [v5 setSelected:0];
    [v6 setSelected:1];
    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = *(*(*(a1 + 64) + 8) + 24);
      v9 = *(a1 + 48);
      v10 = [v7 view];
      [v10 bounds];
      [v7 _updateFrameForViewController:v5 atIndex:v8 withCoordinator:v9 assumingSize:{v11, v12}];
    }

    v13 = [*(a1 + 32) delegate];
    [v13 mediaControlsCollectionViewController:*(a1 + 32) willSelectItemAtIndex:*(a1 + 72) withReason:1];

    if (v6 && ([*(a1 + 56) containsIndex:*(a1 + 72)] & 1) == 0)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 72);
      v16 = *(a1 + 48);
      v17 = [v14 view];
      [v17 bounds];
      [v14 _updateFrameForViewController:v6 atIndex:v15 withCoordinator:v16 assumingSize:{v18, v19}];
    }
  }

  [*(a1 + 48) performAnimations];
}

void __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_12(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) _frameForViewAtIndex:a2];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v23 view];
    [v13 position];
    v15 = v14;
    v17 = v16;

    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    MidX = CGRectGetMidX(v25);
    v26.origin.x = v6;
    v26.origin.y = v8;
    v26.size.width = v10;
    v26.size.height = v12;
    MidY = CGRectGetMidY(v26);
    if (v15 != MidX || v17 != MidY)
    {
      v21 = MidY;
      v22 = [v23 view];
      [v22 setPosition:{MidX, v21}];
    }
  }
}

void __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_13(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) view];
        v8 = *(a1 + 56);
        v9[0] = *(a1 + 40);
        v9[1] = v8;
        v9[2] = *(a1 + 72);
        [v7 setTransform:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

uint64_t __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_14(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [*(*(a1 + 32) + 992) copy];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        if (([*(a1 + 40) containsIndex:{objc_msgSend(v7, "integerValue")}] & 1) == 0)
        {
          [*(a1 + 32) _reapViewAtIndex:{objc_msgSend(v7, "integerValue")}];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  *(*(a1 + 32) + 1091) = 0;
  v8 = *(a1 + 32);
  [v8[142] bounds];
  [v8 _populateViewsInFrame:?];
  [*(a1 + 32) _dequeueAndPerformBatchUpdatesIfNeeded];
  [*(*(a1 + 32) + 1136) contentOffset];
  v10 = v9;
  v12 = v11;
  [*(*(a1 + 32) + 1136) contentSize];
  v14 = v13;
  [*(*(a1 + 32) + 1136) bounds];
  v16 = v14 - v15;
  [*(*(a1 + 32) + 1136) contentInset];
  if (v16 + v17 > 0.0 && v12 > v16 + v17)
  {
    [*(*(a1 + 32) + 1136) setContentOffset:1 animated:v10];
  }

  if (*(a1 + 64) != *(*(*(a1 + 56) + 8) + 24))
  {
    v19 = [*(a1 + 32) delegate];
    [v19 mediaControlsCollectionViewController:*(a1 + 32) didSelectItemAtIndex:*(a1 + 64) withReason:1];
  }

  return [*(a1 + 48) performCompletions];
}

void __61__MediaControlsCollectionViewController_performBatchUpdates___block_invoke_15(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _removeViewController:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)reloadData
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(MediaControlsCollectionViewController *)self dataSource];
  if (v3)
  {
    [(MediaControlsCollectionViewController *)self _setHighlighted:0 forViewControllerAtIndex:self->_highlightedItemIndex];
    [(MediaControlsCollectionViewController *)self _reapActiveViews];
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activeViewControllers = self->_activeViewControllers;
    self->_activeViewControllers = v4;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_pendingUpdates;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          self->_isPerformingBatchUpdates = 1;
          (*(v11 + 16))(v11);
          self->_isPerformingBatchUpdates = 0;
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingUpdates = self->_pendingUpdates;
    self->_pendingUpdates = v12;

    v14 = [MediaControlsCollectionViewCountData alloc];
    v15 = -[MediaControlsCollectionViewCountData initWithNumberOfItems:](v14, "initWithNumberOfItems:", [v3 numberOfItemsInCollectionViewController:{self, v17}]);
    countData = self->_countData;
    self->_countData = v15;

    self->_selectedItemIndex = [v3 defaultSelectedItemIndexForCollectionViewController:self];
    [(MediaControlsCollectionViewController *)self _tileViews];
    self->_needsReloadData = 0;
    [(MediaControlsCollectionViewController *)self _removeInactiveViewControllersFromHierarchy];
  }

  else
  {
    self->_needsReloadData = 1;
  }
}

- (int64_t)itemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  selectedItemIndex = self->_selectedItemIndex;
  [(MediaControlsCollectionViewController *)self _preferredSelectedItemHeight];
  v8 = v7;
  if (self->_displayMode)
  {
    [(MediaControlsCollectionViewController *)self _regularItemHeight];
  }

  v9 = v7;
  [(MediaControlsCollectionViewController *)self _verticalSpacing];
  v11 = v9 + v10;
  v12 = y / (v9 + v10);
  if (v12 < 0.0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v12;
  if (selectedItemIndex <= v12)
  {
    v13 = selectedItemIndex;
    if (selectedItemIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = *MEMORY[0x1E695F058];
      v15 = *(MEMORY[0x1E695F058] + 8);
      v16 = *(MEMORY[0x1E695F058] + 16);
      v17 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      [(MediaControlsCollectionViewController *)self _frameForViewAtIndex:selectedItemIndex];
    }

    v19.x = x;
    v19.y = y;
    if (!CGRectContainsPoint(*&v14, v19))
    {
      v13 = ((y - (v8 - v9)) / v11);
      if ([(MediaControlsCollectionViewCountData *)self->_countData numberOfItems]< v13)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      [(MediaControlsCollectionViewController *)self _frameForViewAtIndex:v13];
      v20.x = x;
      v20.y = y;
      if (!CGRectContainsPoint(v21, v20))
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return v13;
}

- (NSIndexSet)visibleIndexes
{
  [(UIScrollView *)self->_scrollView bounds];

  return [(MediaControlsCollectionViewController *)self _indexesOfItemsInRect:?];
}

- (BOOL)_canPerformBatchUpdates
{
  if (self->_isPerformingBatchUpdates)
  {
    return 0;
  }

  else
  {
    return ![(MediaControlsCollectionViewController *)self _isScrollViewAnimatingScroll]&& !self->_appearanceTransitionCount && !self->_isAnimatingSelection;
  }
}

- (void)_dequeueAndPerformBatchUpdatesIfNeeded
{
  if ([(NSMutableArray *)self->_pendingUpdates count]&& [(MediaControlsCollectionViewController *)self _canPerformBatchUpdates])
  {
    v3 = [(NSMutableArray *)self->_pendingUpdates firstObject];
    [(NSMutableArray *)self->_pendingUpdates removeObjectAtIndex:0];
    [(MediaControlsCollectionViewController *)self performBatchUpdates:v3];
  }
}

- (int64_t)_closestItemAtPoint:(CGPoint)a3
{
  y = a3.y;
  selectedItemIndex = self->_selectedItemIndex;
  [(MediaControlsCollectionViewController *)self _preferredSelectedItemHeight];
  v7 = v6;
  if (self->_displayMode)
  {
    [(MediaControlsCollectionViewController *)self _regularItemHeight];
  }

  v8 = v6;
  [(MediaControlsCollectionViewController *)self _verticalSpacing];
  v10 = v8 + v9;
  v11 = y / (v8 + v9);
  if (v11 < 0.0)
  {
    return 0;
  }

  v12 = v11;
  if (selectedItemIndex <= v11)
  {
    v12 = selectedItemIndex;
    if (selectedItemIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = *MEMORY[0x1E695F058];
      v14 = *(MEMORY[0x1E695F058] + 8);
      v15 = *(MEMORY[0x1E695F058] + 16);
      v16 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      [(MediaControlsCollectionViewController *)self _frameForViewAtIndex:selectedItemIndex];
    }

    if (y > CGRectGetMaxY(*&v13))
    {
      return ((y - (v7 - v8)) / v10);
    }
  }

  return v12;
}

- (double)_selectedItemHeightInSize:(CGSize)a3 shouldIgnoreInsets:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  [(MediaControlsCollectionViewController *)self preferredItemHeightGivenWidth:?];
  v9 = v8;
  if (v4)
  {
    v9 = v8 + self->_controlCenterEdgeInsets.top + self->_controlCenterEdgeInsets.bottom;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    UIRectInset();
    width = v12;
    height = v13;
  }

  v14 = width;
  v15 = height;
  result = CGRectGetHeight(*&v11);
  if (v9 < result)
  {
    return v9;
  }

  return result;
}

- (id)_indexesOfItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc(MEMORY[0x1E696AC90]);
  v9 = [(MediaControlsCollectionViewController *)self _rangeOfItemsInRect:x, y, width, height];
  v11 = [v8 initWithIndexesInRange:{v9, v10}];

  return v11;
}

- (_NSRange)_rangeOfItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(MediaControlsCollectionViewCountData *)self->_countData numberOfItems];
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v9 = [(MediaControlsCollectionViewController *)self _closestItemAtPoint:CGRectGetMidX(v19), y];
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v11 = [(MediaControlsCollectionViewController *)self _closestItemAtPoint:MidX, CGRectGetMaxY(v21)];
  v12 = v8 - 1;
  if (v11 < v8 - 1)
  {
    v12 = v11;
  }

  if (v8 > 0 && v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9 & ~(v9 >> 63);
  }

  v15 = v12 - v14;
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15 + 1;
  }

  result.length = v17;
  result.location = v16;
  return result;
}

- (CGRect)_frameForViewAtIndex:(int64_t)a3
{
  v5 = [(MediaControlsCollectionViewController *)self view];
  [v5 bounds];
  [(MediaControlsCollectionViewController *)self _frameForViewAtIndex:a3 size:v6, v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)_frameForViewAtIndex:(int64_t)a3 size:(CGSize)a4
{
  [(MediaControlsCollectionViewController *)self _frameForViewAtIndex:a3 displayMode:self->_displayMode size:a4.width, a4.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_frameForViewAtIndex:(int64_t)a3 displayMode:(int64_t)a4 size:(CGSize)a5
{
  width = a5.width;
  selectedItemIndex = self->_selectedItemIndex;
  [(MediaControlsCollectionViewController *)self _selectedItemHeightInSize:a4 == 0 shouldIgnoreInsets:a5.width, a5.height];
  v11 = v10;
  if (a4)
  {
    [(MediaControlsCollectionViewController *)self _regularItemHeight];
    v13 = v12;
    [(MediaControlsCollectionViewController *)self _verticalSpacing];
    v15 = v14;
    left = self->_scrollViewInsets.left;
    width = width - (left + self->_scrollViewInsets.right);
  }

  else
  {
    [(MediaControlsCollectionViewController *)self _verticalSpacing];
    v15 = v17;
    left = 0.0;
    v13 = v11;
  }

  v18 = (v13 + v15) * a3;
  if (selectedItemIndex < a3)
  {
    v18 = v11 - v13 + v18;
  }

  if (selectedItemIndex == a3)
  {
    v19 = v11;
  }

  else
  {
    v19 = v13;
  }

  v20 = width;
  result.size.height = v19;
  result.size.width = v20;
  result.origin.y = v18;
  result.origin.x = left;
  return result;
}

- (void)_populateViewsInFrame:(CGRect)a3
{
  v4 = [(MediaControlsCollectionViewController *)self _indexesOfItemsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = [v4 mutableCopy];

  if (!self->_shouldDisableAutoReaping)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__MediaControlsCollectionViewController__populateViewsInFrame___block_invoke;
    v7[3] = &unk_1E76652F8;
    v8 = v5;
    v9 = self;
    [(MediaControlsCollectionViewController *)self _enumerateActiveViewControllers:v7];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__MediaControlsCollectionViewController__populateViewsInFrame___block_invoke_2;
  v6[3] = &unk_1E7665398;
  v6[4] = self;
  [v5 enumerateIndexesUsingBlock:v6];
}

uint64_t __63__MediaControlsCollectionViewController__populateViewsInFrame___block_invoke(uint64_t a1, unint64_t a2)
{
  if ([*(a1 + 32) firstIndex] <= a2 && objc_msgSend(*(a1 + 32), "lastIndex") >= a2)
  {
    v6 = *(a1 + 32);

    return [v6 removeIndex:a2];
  }

  else
  {
    v4 = *(a1 + 40);

    return [v4 _reapViewAtIndex:a2];
  }
}

void __63__MediaControlsCollectionViewController__populateViewsInFrame___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 992);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v7 = [*(a1 + 32) _insertViewControllerForIndex:a2];
  }
}

- (void)_reloadDataIfNeeded
{
  if (self->_needsReloadData)
  {
    self->_needsReloadData = 0;
    [(MediaControlsCollectionViewController *)self reloadData];
  }
}

- (void)_scrollToSelectedItemAnimated:(BOOL)a3
{
  if (self->_selectedItemIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    aBlock[5] = v6;
    aBlock[6] = v5;
    aBlock[15] = v3;
    aBlock[16] = v4;
    v7 = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__MediaControlsCollectionViewController__scrollToSelectedItemAnimated___block_invoke;
    aBlock[3] = &unk_1E7664FE8;
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (v7 && !self->_displayMode)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __71__MediaControlsCollectionViewController__scrollToSelectedItemAnimated___block_invoke_2;
      v17[3] = &unk_1E76653C0;
      v17[4] = self;
      v11 = _Block_copy(v17);
      v12 = [(MediaControlsCollectionViewController *)self visibleViewControllers];
      v13 = [v12 firstObject];
      v16 = v10;
      v14 = v11[2];
      v15 = v11;
      v14();
    }

    else
    {
      (*(v9 + 2))(v9, v7);
    }
  }
}

uint64_t __71__MediaControlsCollectionViewController__scrollToSelectedItemAnimated___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v3[142];
  [v3 _frameForViewAtIndex:v3[144]];

  return [v4 scrollRectToVisible:a2 animated:?];
}

void __71__MediaControlsCollectionViewController__scrollToSelectedItemAnimated___block_invoke_2(uint64_t a1, void *a2, int a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (a3)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = [v6 contentView];
    [v10 setAlpha:v9];

    v11 = objc_opt_class();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__MediaControlsCollectionViewController__scrollToSelectedItemAnimated___block_invoke_3;
    v20[3] = &unk_1E7663CE0;
    v12 = v6;
    v21 = v12;
    v22 = 1.0 - v9;
    v13 = [v11 alphaAnimatorWithAnimations:v20];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __71__MediaControlsCollectionViewController__scrollToSelectedItemAnimated___block_invoke_4;
    v17 = &unk_1E7663E98;
    v19 = v8;
    v18 = v12;
    [v13 addCompletion:&v14];
    [v13 startAnimation];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7);
  }
}

void __71__MediaControlsCollectionViewController__scrollToSelectedItemAnimated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  [v2 setAlpha:*(a1 + 40)];
}

void __71__MediaControlsCollectionViewController__scrollToSelectedItemAnimated___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) contentView];
  [v3 setAlpha:1.0];
}

void __71__MediaControlsCollectionViewController__scrollToSelectedItemAnimated___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) viewControllerForSelectedItem];
  (*(v2 + 16))(v2, v3, 1, 0);
}

- (void)_setFrame:(CGRect)a3 forVisibleViewAtIndex:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  activeViewControllers = self->_activeViewControllers;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v13 = [(NSMutableDictionary *)activeViewControllers objectForKey:v10];

  v11 = [v13 backgroundView];
  [(MediaControlsCollectionViewController *)self _backgroundCornerRadius];
  [v11 _setContinuousCornerRadius:?];

  v12 = [v13 view];
  [v12 setMediaControls_untransformedFrame:{x, y, width, height}];
  [v12 layoutIfNeeded];
}

- (void)_tileViews
{
  shouldIgnoreScrollNotifications = self->_shouldIgnoreScrollNotifications;
  self->_shouldIgnoreScrollNotifications = 1;
  [(MediaControlsCollectionViewController *)self updateContentInsets];
  v4 = [(MediaControlsCollectionViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(UIScrollView *)self->_scrollView setFrame:v6, v8, v10, v12];
  [(MediaControlsCollectionViewController *)self _updateContentSize];
  if (!self->_displayMode)
  {
    [(MediaControlsCollectionViewController *)self _scrollToSelectedItemAnimated:0];
  }

  [(UIScrollView *)self->_scrollView bounds];
  [(MediaControlsCollectionViewController *)self _populateViewsInFrame:?];
  self->_shouldIgnoreScrollNotifications = shouldIgnoreScrollNotifications;
}

- (double)_totalHeight
{
  [(MediaControlsCollectionViewController *)self _preferredSelectedItemHeight];
  v4 = v3;
  if (self->_displayMode)
  {
    [(MediaControlsCollectionViewController *)self _regularItemHeight];
  }

  v5 = v3;
  [(MediaControlsCollectionViewController *)self _verticalSpacing];
  return v4 + ([(MediaControlsCollectionViewCountData *)self->_countData numberOfItems]- 1) * (v5 + v6);
}

- (void)updateContentInsets
{
  if (self->_displayMode == 1)
  {
    v3 = [(MediaControlsCollectionViewController *)self view];
    [v3 bounds];
    Height = CGRectGetHeight(v13);
    [(MediaControlsCollectionViewController *)self _preferredSelectedItemHeight];
    v6 = (Height - v5) * 0.5;

    scrollView = self->_scrollView;
    v8 = 0.0;
    v9 = 0.0;
    v10 = v6;
    v11 = v6;
  }

  else
  {
    scrollView = self->_scrollView;
    v10 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v11 = *(MEMORY[0x1E69DDCE0] + 16);
    v9 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  [(UIScrollView *)scrollView setContentInset:v10, v8, v11, v9];
}

- (void)_updateContentSize
{
  [(UIScrollView *)self->_scrollView frame];
  Width = CGRectGetWidth(v9);
  [(MediaControlsCollectionViewController *)self _totalHeight];
  v5 = v4;
  v6 = Width - (self->_scrollViewInsets.left + self->_scrollViewInsets.right);
  scrollView = self->_scrollView;

  [(UIScrollView *)scrollView setContentSize:v6, v5];
}

- (void)_updateFramesForActiveViewControllersWithCoordinator:(id)a3 assumingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __107__MediaControlsCollectionViewController__updateFramesForActiveViewControllersWithCoordinator_assumingSize___block_invoke;
  v9[3] = &unk_1E7665410;
  v9[4] = self;
  v10 = v7;
  v11 = width;
  v12 = height;
  v8 = v7;
  [(MediaControlsCollectionViewController *)self _enumerateActiveViewControllers:v9];
}

- (void)_updateFrameForViewController:(id)a3 atIndex:(int64_t)a4 withCoordinator:(id)a5 assumingSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v11 = a5;
  v12 = a3;
  [(MediaControlsCollectionViewController *)self _frameForViewAtIndex:a4 size:width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [v12 willTransitionToSize:v11 withCoordinator:{v17, v19}];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __108__MediaControlsCollectionViewController__updateFrameForViewController_atIndex_withCoordinator_assumingSize___block_invoke;
  v21[3] = &unk_1E7665438;
  v21[4] = self;
  v21[5] = v14;
  v21[6] = v16;
  *&v21[7] = v18;
  *&v21[8] = v20;
  v21[9] = a4;
  [v11 animateAlongsideTransition:v21 completion:0];
}

- (void)_adjustForEnvironmentChangeIfNeededWithSize:(CGSize)a3 transitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  if (self->_lastKnownEnvironmentSize.width != a3.width || self->_lastKnownEnvironmentSize.height != a3.height)
  {
    p_controlCenterEdgeInsets = &self->_controlCenterEdgeInsets;
    v13 = a4;
    CCUIExpandedModuleEdgeInsets();
    p_controlCenterEdgeInsets->top = v9;
    p_controlCenterEdgeInsets->left = v10;
    p_controlCenterEdgeInsets->bottom = v11;
    p_controlCenterEdgeInsets->right = v12;
    [(MediaControlsCollectionViewController *)self _adjustForEnvironmentChangeWithSize:v13 transitionCoordinator:width, height];
  }
}

- (void)_adjustForEnvironmentChangeWithSize:(CGSize)a3 transitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = self->_lastKnownEnvironmentSize.width;
  v9 = self->_lastKnownEnvironmentSize.height;
  self->_lastKnownEnvironmentSize.width = width;
  self->_lastKnownEnvironmentSize.height = height;
  if (self->_displayMode == width > 200.0)
  {
    if (v8 != width || v9 != height)
    {
      v11 = objc_alloc_init(MediaControlsStyleCoordinator);
      [(MediaControlsCollectionViewController *)self _updateFramesForActiveViewControllersWithCoordinator:v11 assumingSize:width, height];
      if (v7)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __99__MediaControlsCollectionViewController__adjustForEnvironmentChangeWithSize_transitionCoordinator___block_invoke;
        v15[3] = &unk_1E7665460;
        v15[4] = self;
        v16 = v11;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __99__MediaControlsCollectionViewController__adjustForEnvironmentChangeWithSize_transitionCoordinator___block_invoke_2;
        v13[3] = &unk_1E76645E8;
        v14 = v16;
        [v7 animateAlongsideTransition:v15 completion:v13];
      }

      else
      {
        [(MediaControlsCollectionViewController *)self _tileViews];
        [(MediaControlsStyleCoordinator *)v11 performAnimations];
        [(MediaControlsStyleCoordinator *)v11 performCompletions];
      }
    }
  }

  else
  {
    [(MediaControlsCollectionViewController *)self _transitionToDisplayMode:width usingTransitionCoordinator:height assumingSize:?];
  }

  v12 = [(MediaControlsCollectionViewController *)self scrollView];
  [v12 setScrollEnabled:self->_displayMode == 1];
}

uint64_t __99__MediaControlsCollectionViewController__adjustForEnvironmentChangeWithSize_transitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _tileViews];
  v2 = *(a1 + 40);

  return [v2 performAnimations];
}

- (void)_transitionToDisplayMode:(int64_t)a3 usingTransitionCoordinator:(id)a4 assumingSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a4;
  v10 = [(MediaControlsCollectionViewController *)self viewControllerForSelectedItem];
  [(MediaControlsCollectionViewController *)self setDisplayMode:a3];
  self->_shouldDisableAutoReaping = a3 == 0;
  v11 = objc_alloc_init(MediaControlsStyleCoordinator);
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    selectedItemIndex = self->_selectedItemIndex;
    v13 = v9;
    [(MediaControlsCollectionViewController *)self _updateFrameForViewController:v10 atIndex:selectedItemIndex withCoordinator:v13 assumingSize:width, height];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __106__MediaControlsCollectionViewController__transitionToDisplayMode_usingTransitionCoordinator_assumingSize___block_invoke;
    v19[3] = &unk_1E7663CE0;
    v19[4] = self;
    v19[5] = a3;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __106__MediaControlsCollectionViewController__transitionToDisplayMode_usingTransitionCoordinator_assumingSize___block_invoke_3;
    v18[3] = &unk_1E7663CE0;
    v18[4] = self;
    v18[5] = a3;
    [(MediaControlsStyleCoordinator *)v11 animateAlongsideTransition:v19 completion:v18];
    [(MediaControlsCollectionViewController *)self _updateFramesForActiveViewControllersWithCoordinator:v11 assumingSize:width, height];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __106__MediaControlsCollectionViewController__transitionToDisplayMode_usingTransitionCoordinator_assumingSize___block_invoke_4;
    v16[3] = &unk_1E76645E8;
    v17 = v11;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __106__MediaControlsCollectionViewController__transitionToDisplayMode_usingTransitionCoordinator_assumingSize___block_invoke_5;
    v14[3] = &unk_1E76645E8;
    v15 = v17;
    [v13 animateAlongsideTransition:v16 completion:v14];
  }

  else
  {
    self->_shouldDisableAutoReaping = 0;
    [(MediaControlsCollectionViewController *)self _tileViews];
    [(MediaControlsCollectionViewController *)self _scrollToSelectedItemAnimated:0];
    [(_MediaControlsTapHoldGestureRecognizer *)self->_tapGestureRecognizer setEnabled:[(MediaControlsCollectionViewController *)self _wantsTapGestureRecognizer]];
    [(MediaControlsCollectionViewController *)self _updateFramesForActiveViewControllersWithCoordinator:v11 assumingSize:width, height];
    [(MediaControlsStyleCoordinator *)v11 performAnimations];
    [(MediaControlsStyleCoordinator *)v11 performCompletions];
  }
}

uint64_t __106__MediaControlsCollectionViewController__transitionToDisplayMode_usingTransitionCoordinator_assumingSize___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _tileViews];
  [*(a1 + 32) _scrollToSelectedItemAnimated:0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __106__MediaControlsCollectionViewController__transitionToDisplayMode_usingTransitionCoordinator_assumingSize___block_invoke_2;
  v4[3] = &unk_1E7665488;
  v2 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = v2;
  return [v5 _enumerateActiveViewControllers:v4];
}

uint64_t __106__MediaControlsCollectionViewController__transitionToDisplayMode_usingTransitionCoordinator_assumingSize___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  IsReduceMotionEnabled = a3;
  v6 = IsReduceMotionEnabled;
  if (*(*(a1 + 32) + 1152) != a2)
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      v10 = IsReduceMotionEnabled;
      v8 = [IsReduceMotionEnabled view];
      [v8 setAlpha:0.0];
      goto LABEL_7;
    }

    if (v7 == 1)
    {
      v10 = IsReduceMotionEnabled;
      IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
      v6 = v10;
      if ((IsReduceMotionEnabled & 1) == 0)
      {
        v8 = [v10 view];
        [v8 setHidden:1];
LABEL_7:

        v6 = v10;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](IsReduceMotionEnabled, v6);
}

uint64_t __106__MediaControlsCollectionViewController__transitionToDisplayMode_usingTransitionCoordinator_assumingSize___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 1088) = 0;
  [*(a1 + 32) _tileViews];
  [*(a1 + 32) _scrollToSelectedItemAnimated:0];
  result = [*(*(a1 + 32) + 1160) setEnabled:{objc_msgSend(*(a1 + 32), "_wantsTapGestureRecognizer")}];
  if (*(a1 + 40) == 1)
  {
    result = UIAccessibilityIsReduceMotionEnabled();
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 32);

      return [v3 _transitionTopAndBottomViewControllersToVisible:1 completion:0];
    }
  }

  return result;
}

- (void)_transitionToVisible:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [(MediaControlsCollectionViewController *)self _scrollToSelectedItemAnimated:0];
    v5 = 0.0;
    v6 = 1.0;
  }

  else
  {
    v5 = 1.0;
    v6 = 0.0;
  }

  v7 = [(MediaControlsCollectionViewController *)self viewControllerForSelectedItem];
  memset(&v38, 0, sizeof(v38));
  if (v3)
  {
    CGAffineTransformMakeScale(&v38, 1.92, 1.92);
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&v37.a = *MEMORY[0x1E695EFD0];
    *&v37.c = v8;
    *&v37.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    v9 = *MEMORY[0x1E695EFD0];
    v10 = *(MEMORY[0x1E695EFD0] + 32);
    *&v38.c = *(MEMORY[0x1E695EFD0] + 16);
    *&v38.tx = v10;
    *&v38.a = v9;
    memset(&v37, 0, sizeof(v37));
    CGAffineTransformMakeScale(&v37, 1.92, 1.92);
  }

  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke;
    v36[3] = &__block_descriptor_40_e76_v32__0q8__UIViewController_MediaControlsCollectionItemViewController__16_B24l;
    *&v36[4] = v5;
    [(MediaControlsCollectionViewController *)self _enumerateActiveViewControllers:v36];
    v11 = objc_opt_class();
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_2;
    v35[3] = &unk_1E7663CE0;
    v35[4] = self;
    *&v35[5] = v6;
    v12 = [v11 alphaAnimatorWithAnimations:v35];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_4;
    v34[3] = &unk_1E76643F0;
    v34[4] = self;
    [v12 addCompletion:v34];
    [v12 startAnimation];
  }

  else
  {
    ++self->_appearanceTransitionCount;
    v13 = [v7 view];
    [v13 setHidden:0];

    v14 = [v7 view];
    [v14 setAlpha:v5];

    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v15 = [v7 view];
      v33 = v38;
      [v15 setTransform:&v33];
    }

    v16 = 0.1;
    if (v3)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_6;
      v32[3] = &unk_1E76654F0;
      v32[4] = self;
      [(MediaControlsCollectionViewController *)self _enumerateActiveViewControllers:v32];
      v16 = 0.0;
    }

    v17 = [objc_opt_class() frameAnimator];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_7;
    v29[3] = &unk_1E76652D0;
    v18 = v7;
    v30 = v18;
    v31 = v37;
    [v17 addAnimations:v29];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_8;
    v25[3] = &unk_1E7665518;
    v19 = v18;
    v28 = v3;
    v26 = v19;
    v27 = self;
    [v17 addCompletion:v25];
    v20 = objc_opt_class();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_11;
    v22[3] = &unk_1E7663CE0;
    v23 = v19;
    v24 = v6;
    v21 = [v20 alphaAnimatorWithAnimations:v22];
    [v17 startAnimationAfterDelay:v16];
    [v21 startAnimationAfterDelay:v16 + 0.1];
    if (!v3)
    {
      [(MediaControlsCollectionViewController *)self _transitionTopAndBottomViewControllersToVisible:0 completion:0];
    }
  }
}

void __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 view];
  [v4 setAlpha:*(a1 + 32)];
}

uint64_t __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_3;
  v3[3] = &__block_descriptor_40_e76_v32__0q8__UIViewController_MediaControlsCollectionItemViewController__16_B24l;
  v3[4] = *(a1 + 40);
  return [v1 _enumerateActiveViewControllers:v3];
}

void __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 view];
  [v4 setAlpha:*(a1 + 32)];
}

void __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 view];
  [v3 setAlpha:1.0];
}

void __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(*(a1 + 32) + 1152) != a2)
  {
    v4 = [a3 view];
    [v4 setHidden:1];
  }
}

void __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  v4[2] = *(a1 + 72);
  [v2 setTransform:v4];
}

uint64_t __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v7[0] = *MEMORY[0x1E695EFD0];
  v7[1] = v3;
  v7[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v7];

  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_9;
    v6[3] = &unk_1E7663898;
    v6[4] = v4;
    [v4 _transitionTopAndBottomViewControllersToVisible:1 completion:v6];
  }

  --*(*(a1 + 40) + 1080);
  return [*(a1 + 40) _dequeueAndPerformBatchUpdatesIfNeeded];
}

uint64_t __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_10;
  v3[3] = &unk_1E76654F0;
  v3[4] = v1;
  return [v1 _enumerateActiveViewControllers:v3];
}

void __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_10(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(*(a1 + 32) + 1152) != a2)
  {
    v4 = [a3 view];
    [v4 setHidden:0];
  }
}

void __62__MediaControlsCollectionViewController__transitionToVisible___block_invoke_11(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:*(a1 + 40)];
}

- (void)_transitionTopAndBottomViewControllersToVisible:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v138 = *MEMORY[0x1E69E9840];
  v6 = a4;
  ++self->_appearanceTransitionCount;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke;
  aBlock[3] = &unk_1E7664490;
  aBlock[4] = self;
  v7 = v6;
  v134 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [(MediaControlsCollectionViewController *)self viewControllerForSelectedItem];
  if (v9 && !UIAccessibilityIsReduceMotionEnabled())
  {
    v21 = [MEMORY[0x1E695DF70] array];
    v85 = [MEMORY[0x1E695DF70] array];
    v26 = [(MediaControlsCollectionViewController *)self _visibleTopViewControllers];
    v27 = [(MediaControlsCollectionViewController *)self _visibleBottomViewControllers];
    v28 = [v9 view];
    v29 = v28;
    v78 = v27;
    if (v4)
    {
      v84 = v21;
      v77 = v8;
      v80 = v7;
      [v28 setHidden:0];

      v76 = v9;
      v30 = [v9 view];
      [v30 setAlpha:1.0];

      v31 = [v26 allKeys];
      v129[0] = MEMORY[0x1E69E9820];
      v129[1] = 3221225472;
      v129[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_2;
      v129[3] = &unk_1E7665540;
      v75 = v26;
      v32 = v26;
      v130 = v32;
      v131 = self;
      v132 = 0x4056000000000000;
      [v31 enumerateObjectsUsingBlock:v129];

      v33 = [v27 allKeys];
      v125[0] = MEMORY[0x1E69E9820];
      v125[1] = 3221225472;
      v125[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_3;
      v125[3] = &unk_1E7665540;
      v83 = v27;
      v126 = v83;
      v127 = self;
      v128 = 0x4056000000000000;
      [v33 enumerateObjectsUsingBlock:v125];

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v34 = [v32 allKeys];
      v35 = [v34 sortedArrayUsingSelector:?];
      v36 = [v35 reverseObjectEnumerator];

      obj = v36;
      v37 = [v36 countByEnumeratingWithState:&v121 objects:v137 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v122;
        v40 = 0.0;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v122 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v42 = *(*(&v121 + 1) + 8 * i);
            v43 = [v32 objectForKey:v42];
            v44 = [objc_opt_class() frameAnimator];
            v117[0] = MEMORY[0x1E69E9820];
            v117[1] = 3221225472;
            v117[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_4;
            v117[3] = &unk_1E7663D30;
            v45 = v43;
            v118 = v45;
            v119 = self;
            v120 = v42;
            [v44 addAnimations:v117];
            v46 = objc_opt_class();
            v115[0] = MEMORY[0x1E69E9820];
            v115[1] = 3221225472;
            v115[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_5;
            v115[3] = &unk_1E7663898;
            v116 = v45;
            v47 = v45;
            v48 = [v46 alphaAnimatorWithAnimations:v115];
            [v44 startAnimationAfterDelay:v40];
            v40 = v40 + 0.1;
            [v48 startAnimationAfterDelay:v40];
            [v84 addObject:v44];
            [v85 addObject:v48];
          }

          v38 = [obj countByEnumeratingWithState:&v121 objects:v137 count:16];
        }

        while (v38);
      }

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v49 = [v83 allKeys];
      v50 = [v49 sortedArrayUsingSelector:sel_compare_];

      obja = v50;
      v51 = [v50 countByEnumeratingWithState:&v111 objects:v136 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v112;
        v54 = 0.0;
        do
        {
          for (j = 0; j != v52; ++j)
          {
            if (*v112 != v53)
            {
              objc_enumerationMutation(obja);
            }

            v56 = *(*(&v111 + 1) + 8 * j);
            v57 = [v83 objectForKey:v56];
            v58 = [objc_opt_class() frameAnimator];
            v107[0] = MEMORY[0x1E69E9820];
            v107[1] = 3221225472;
            v107[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_6;
            v107[3] = &unk_1E7663D30;
            v59 = v57;
            v108 = v59;
            v109 = self;
            v110 = v56;
            [v58 addAnimations:v107];
            v60 = objc_opt_class();
            v105[0] = MEMORY[0x1E69E9820];
            v105[1] = 3221225472;
            v105[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_7;
            v105[3] = &unk_1E7663898;
            v106 = v59;
            v61 = v59;
            v62 = [v60 alphaAnimatorWithAnimations:v105];
            [v58 startAnimationAfterDelay:v54];
            v54 = v54 + 0.1;
            [v62 startAnimationAfterDelay:v54];
            [v84 addObject:v58];
            [v85 addObject:v62];
          }

          v52 = [obja countByEnumeratingWithState:&v111 objects:v136 count:16];
        }

        while (v52);
      }

      v63 = v130;
      v64 = v80;
      v9 = v76;
      v8 = v77;
      v21 = v84;
      v26 = v75;
    }

    else
    {
      v64 = v7;
      [v28 frame];
      MinY = CGRectGetMinY(v139);
      [(UIScrollView *)self->_scrollView bounds];
      v66 = MinY - CGRectGetMinY(v140);

      [(UIScrollView *)self->_scrollView bounds];
      MaxY = CGRectGetMaxY(v141);
      v68 = [v9 view];
      [v68 frame];
      v69 = MaxY - CGRectGetMaxY(v142);

      v63 = [objc_opt_class() frameAnimator];
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_8;
      v100[3] = &unk_1E7665590;
      v70 = v26;
      v101 = v70;
      v103 = v66;
      v71 = v27;
      v102 = v71;
      v104 = v69;
      [v63 addAnimations:v100];
      v72 = objc_opt_class();
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_11;
      v97[3] = &unk_1E76639D0;
      v98 = v70;
      v99 = v71;
      v73 = [v72 alphaAnimatorWithAnimations:v97];
      [v63 startAnimationAfterDelay:0.0];
      [v73 startAnimationAfterDelay:0.1];
    }

    v24 = v85;
    if ([v85 count])
    {
      v74 = [v85 lastObject];
      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_14;
      v95[3] = &unk_1E7664888;
      v23 = v8;
      v96 = v8;
      [v74 addCompletion:v95];
    }

    else
    {
      v23 = v8;
      v8[2](v8);
    }

    v25 = v64;
  }

  else
  {
    v79 = v7;
    v10 = v9;
    v11 = [(MediaControlsCollectionViewController *)self visibleViewControllers];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v91 objects:v135 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v92;
      if (v4)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      do
      {
        for (k = 0; k != v13; ++k)
        {
          if (*v92 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v91 + 1) + 8 * k);
          v18 = [v17 view];
          [v18 setHidden:0];

          v19 = [v17 view];
          [v19 setAlpha:v15];
        }

        v13 = [v11 countByEnumeratingWithState:&v91 objects:v135 count:16];
      }

      while (v13);
    }

    v20 = objc_opt_class();
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_15;
    v88[3] = &unk_1E7663F38;
    v89 = v11;
    v90 = v4;
    v21 = v11;
    v22 = [v20 alphaAnimatorWithAnimations:v88];
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_16;
    v86[3] = &unk_1E7664888;
    v23 = v8;
    v87 = v8;
    [v22 addCompletion:v86];
    [v22 startAnimation];

    v24 = v89;
    v9 = v10;
    v25 = v79;
  }
}

uint64_t __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 1080);
  [*(a1 + 32) _removeInactiveViewControllersFromHierarchy];
  [*(a1 + 32) _dequeueAndPerformBatchUpdatesIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20 = [*(a1 + 32) objectForKey:a2];
  v5 = [v20 view];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [*(*(a1 + 40) + 1136) bounds];
  MinY = CGRectGetMinY(v22);
  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  v15 = MinY - CGRectGetHeight(v23);
  v24.origin.x = v7;
  v24.origin.y = v9;
  v24.size.width = v11;
  v24.size.height = v13;
  v16 = v15 - a3 * (CGRectGetHeight(v24) - *(a1 + 48));
  v17 = [v20 view];
  [v17 setMediaControls_untransformedFrame:{v7, v16, v11, v13}];

  v18 = [v20 view];
  [v18 setAlpha:0.0];

  v19 = [v20 view];
  [v19 setHidden:0];
}

void __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_3(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = [*(a1 + 32) objectForKey:a2];
  v5 = [v19 view];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [*(*(a1 + 40) + 1136) bounds];
  MaxY = CGRectGetMaxY(v21);
  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  v15 = MaxY + a3 * (CGRectGetHeight(v22) - *(a1 + 48));
  v16 = [v19 view];
  [v16 setMediaControls_untransformedFrame:{v7, v15, v11, v13}];

  v17 = [v19 view];
  [v17 setAlpha:0.0];

  v18 = [v19 view];
  [v18 setHidden:0];
}

void __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_4(id *a1)
{
  v2 = [a1[4] view];
  [a1[5] _frameForViewAtIndex:{objc_msgSend(a1[6], "integerValue")}];
  [v2 setMediaControls_untransformedFrame:?];
}

void __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_6(id *a1)
{
  v2 = [a1[4] view];
  [a1[5] _frameForViewAtIndex:{objc_msgSend(a1[6], "integerValue")}];
  [v2 setMediaControls_untransformedFrame:?];
}

void __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_7(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_9;
  v7[3] = &unk_1E7665568;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v7];

  v3 = [*(a1 + 40) allKeys];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_10;
  v4[3] = &unk_1E7665568;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v10 = [*(a1 + 32) objectForKey:a2];
  v3 = [v10 view];
  [v3 center];
  v5 = v4;
  v7 = v6;

  v8 = v7 - *(a1 + 40);
  v9 = [v10 view];
  [v9 setCenter:{v5, v8}];
}

void __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_10(uint64_t a1, uint64_t a2)
{
  v10 = [*(a1 + 32) objectForKey:a2];
  v3 = [v10 view];
  [v3 center];
  v5 = v4;
  v7 = v6;

  v8 = v7 + *(a1 + 40);
  v9 = [v10 view];
  [v9 setCenter:{v5, v8}];
}

void __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_11(uint64_t a1)
{
  v2 = [*(a1 + 32) allValues];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_39_0];

  v3 = [*(a1 + 40) allValues];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_41];
}

void __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 view];
  [v2 setAlpha:0.0];
}

void __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 view];
  [v2 setAlpha:0.0];
}

void __100__MediaControlsCollectionViewController__transitionTopAndBottomViewControllersToVisible_completion___block_invoke_15(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) view];
        v8 = v7;
        if (*(a1 + 40))
        {
          v9 = 1.0;
        }

        else
        {
          v9 = 0.0;
        }

        [v7 setAlpha:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (id)_insertViewControllerForIndex:(int64_t)a3
{
  v5 = [(MediaControlsCollectionViewController *)self dataSource];
  v6 = [v5 mediaControlsCollectionViewController:self viewControllerForItemAtIndex:a3];

  [v6 setSelected:self->_selectedItemIndex == a3];
  activeViewControllers = self->_activeViewControllers;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableDictionary *)activeViewControllers setObject:v6 forKey:v8];

  v9 = [v6 backgroundView];

  if (!v9)
  {
    v10 = [MediaControlsMaterialView alloc];
    v11 = [(MediaControlsMaterialView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [v6 setBackgroundView:v11];
  }

  [(MediaControlsCollectionViewController *)self _frameForViewAtIndex:a3];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = objc_alloc_init(MediaControlsStyleCoordinator);
  [v6 willTransitionToSize:v20 withCoordinator:{v17, v19}];
  v21 = [v6 view];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __71__MediaControlsCollectionViewController__insertViewControllerForIndex___block_invoke;
  v27[3] = &unk_1E7665438;
  v27[4] = self;
  v27[5] = v13;
  v27[6] = v15;
  *&v27[7] = v17;
  *&v27[8] = v19;
  v27[9] = a3;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v27];
  [(MediaControlsStyleCoordinator *)v20 performAnimations];
  [(MediaControlsStyleCoordinator *)v20 performCompletions];
  v22 = [(MediaControlsCollectionViewController *)self delegate];
  [v22 mediaControlsCollectionViewController:self willDisplayViewController:v6 forItemAtIndex:a3];
  v23 = [v6 parentViewController];

  if (v23 == self)
  {
    [(MediaControlsCollectionViewController *)self _beginAppearanceTransitionIfNeeded:1 forChildViewController:v6 animated:0];
    [(MediaControlsCollectionViewController *)self _endAppearanceTransitionForChildViewControllerIfNeeded:v6];
  }

  else
  {
    [(MediaControlsCollectionViewController *)self addChildViewController:v6];
    [(MediaControlsCollectionViewController *)self _beginAppearanceTransitionIfNeeded:1 forChildViewController:v6 animated:0];
    v24 = [v21 superview];
    scrollView = self->_scrollView;

    if (v24 != scrollView)
    {
      [(UIScrollView *)self->_scrollView addSubview:v21];
    }

    [(MediaControlsCollectionViewController *)self _endAppearanceTransitionForChildViewControllerIfNeeded:v6];
    [v6 didMoveToParentViewController:self];
  }

  [v21 setHidden:0];
  [v21 setAlpha:1.0];
  [v22 mediaControlsCollectionViewController:self didDisplayViewController:v6 forItemAtIndex:a3];

  return v6;
}

- (void)_reapViewAtIndex:(int64_t)a3
{
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v5 = [(NSMutableDictionary *)self->_activeViewControllers objectForKey:?];
  if (v5)
  {
    [(MediaControlsCollectionViewController *)self _beginAppearanceTransitionIfNeeded:0 forChildViewController:v5 animated:0];
    v6 = [v5 view];
    [v6 setHidden:1];

    [(MediaControlsCollectionViewController *)self _endAppearanceTransitionForChildViewControllerIfNeeded:v5];
    [(NSMutableDictionary *)self->_activeViewControllers removeObjectForKey:v8];
    if (self->_selectedItemIndex == a3)
    {
      objc_storeStrong(&self->_inactiveSelectedViewController, v5);
    }

    else
    {
      [(NSMutableSet *)self->_inactiveViewControllers addObject:v5];
    }

    v7 = [(MediaControlsCollectionViewController *)self delegate];
    [v7 mediaControlsCollectionViewController:self didEndDisplayingViewController:v5 forItemAtIndex:a3];
  }
}

- (void)_reapActiveViews
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__MediaControlsCollectionViewController__reapActiveViews__block_invoke;
  v2[3] = &unk_1E76654F0;
  v2[4] = self;
  [(MediaControlsCollectionViewController *)self _enumerateActiveViewControllers:v2];
}

- (void)_removeInactiveViewControllersFromHierarchy
{
  inactiveViewControllers = self->_inactiveViewControllers;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__MediaControlsCollectionViewController__removeInactiveViewControllersFromHierarchy__block_invoke;
  v4[3] = &unk_1E76655D8;
  v4[4] = self;
  [(NSMutableSet *)inactiveViewControllers enumerateObjectsUsingBlock:v4];
  if (self->_inactiveSelectedViewController)
  {
    [(MediaControlsCollectionViewController *)self _removeViewController:?];
  }
}

- (void)_removeViewController:(id)a3
{
  v5 = a3;
  [v5 willMoveToParentViewController:0];
  if ([v5 isViewLoaded])
  {
    [(MediaControlsCollectionViewController *)self _beginAppearanceTransitionIfNeeded:0 forChildViewController:v5 animated:0];
    v4 = [v5 view];
    [v4 removeFromSuperview];

    [(MediaControlsCollectionViewController *)self _endAppearanceTransitionForChildViewControllerIfNeeded:v5];
  }

  [v5 removeFromParentViewController];
}

- (void)_setHighlighted:(BOOL)a3 forViewControllerAtIndex:(int64_t)a4
{
  v5 = a3;
  if (self->_highlightedItemIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(MediaControlsCollectionViewController *)self viewControllerForItemAtIndex:?];
    [(MediaControlsCollectionViewController *)self _setHighlighted:0 forViewController:v7];
  }

  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(MediaControlsCollectionViewController *)self viewControllerForItemAtIndex:a4];
    [(MediaControlsCollectionViewController *)self _setHighlighted:v5 forViewController:v8];
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5)
  {
    v9 = a4;
  }

  self->_highlightedItemIndex = v9;
}

- (void)_setHighlighted:(BOOL)a3 forViewController:(id)a4
{
  v4 = a3;
  v5 = [a4 backgroundView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setHighlighted:v4];
  }
}

- (void)_beginAppearanceTransitionIfNeeded:(BOOL)a3 forChildViewController:(id)a4 animated:(BOOL)a5
{
  if (self->_appeared)
  {
    [a4 beginAppearanceTransition:a3 animated:a5];
  }
}

- (void)_endAppearanceTransitionForChildViewControllerIfNeeded:(id)a3
{
  if (self->_appeared)
  {
    [a3 endAppearanceTransition];
  }
}

- (void)_beginAppearanceTransitionForChildViewControllers:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(MediaControlsCollectionViewController *)self visibleViewControllers];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) beginAppearanceTransition:v5 animated:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_endAppearanceTransitionForChildViewControllers
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(MediaControlsCollectionViewController *)self visibleViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) endAppearanceTransition];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  if (!self->_shouldIgnoreScrollNotifications)
  {
    [(UIScrollView *)self->_scrollView bounds];

    [(MediaControlsCollectionViewController *)self _populateViewsInFrame:?];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (self->_tapGestureRecognizer != a3)
  {
    return 1;
  }

  [a4 locationInView:self->_scrollView];
  v6 = [(MediaControlsCollectionViewController *)self itemAtPoint:?];
  return v6 == 0x7FFFFFFFFFFFFFFFLL || v6 != self->_selectedItemIndex;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  if (self->_tapGestureRecognizer != a3)
  {
    return 0;
  }

  scrollView = self->_scrollView;
  v6 = a4;
  v7 = [(UIScrollView *)scrollView gestureRecognizers];
  v8 = [v7 containsObject:v6];

  return v8;
}

- (void)_handleScrollViewTap:(id)a3
{
  v13 = a3;
  [v13 locationInView:self->_scrollView];
  v5 = v4;
  v6 = [(MediaControlsCollectionViewController *)self itemAtPoint:?];
  [(UIScrollView *)self->_scrollView bounds];
  v8 = v7;
  v9 = v6 < 0 || v6 >= [(MediaControlsCollectionViewCountData *)self->_countData numberOfItems];
  if (v5 < self->_scrollViewInsets.left || v5 > v8 - self->_scrollViewInsets.right || v9)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = [v13 state] == 1 || objc_msgSend(v13, "state") == 2;
  [(MediaControlsCollectionViewController *)self _setHighlighted:v10 forViewControllerAtIndex:v6];
  if ([v13 state] == 3)
  {
    [(MediaControlsCollectionViewController *)self _setHighlighted:0 forViewControllerAtIndex:v6];
    v11 = [(MediaControlsCollectionViewController *)self delegate];
    if ([v11 mediaControlsCollectionViewController:self canSelectItemAtIndex:v6])
    {
      appearanceTransitionCount = self->_appearanceTransitionCount;

      if (!appearanceTransitionCount)
      {
        [(MediaControlsCollectionViewController *)self _setSelectedItemIndex:v6 animated:1 shouldScroll:1 shouldNotifyDelegate:1 withReason:0];
      }
    }

    else
    {
    }
  }
}

- (void)_setSelectedItemIndex:(int64_t)a3 animated:(BOOL)a4 shouldScroll:(BOOL)a5 shouldNotifyDelegate:(BOOL)a6 withReason:(int64_t)a7
{
  if (!self->_isPerformingBatchUpdates && self->_selectedItemIndex != a3)
  {
    v10 = a6;
    v12 = a4;
    v13 = [(MediaControlsCollectionViewController *)self visibleIndexes];
    v52 = [(MediaControlsCollectionViewController *)self viewControllerForItemAtIndex:self->_selectedItemIndex];
    if ([v13 containsIndex:a3] & 1) != 0 || (objc_msgSend(v13, "containsIndex:", self->_selectedItemIndex))
    {
      displayMode = self->_displayMode;
      v15 = displayMode == 1;
    }

    else
    {
      v15 = 0;
      displayMode = self->_displayMode;
    }

    v51 = displayMode == 0;
    [v52 setSelected:0];
    self->_selectedItemIndex = a3;
    v16 = [(MediaControlsCollectionViewController *)self delegate];
    v17 = v16;
    if (v10)
    {
      [v16 mediaControlsCollectionViewController:self willSelectItemAtIndex:a3 withReason:a7];
    }

    if (!v15)
    {
      if (a5 || !displayMode)
      {
        [(MediaControlsCollectionViewController *)self _scrollToSelectedItemAnimated:1];
      }

      if (v10)
      {
        [v17 mediaControlsCollectionViewController:self didSelectItemAtIndex:a3 withReason:a7];
      }

      goto LABEL_25;
    }

    v49 = v17;
    v50 = v13;
    v18 = [(MediaControlsCollectionViewController *)self viewControllerForSelectedItem];
    v19 = [v18 isSelected];
    v48 = v18;
    [v18 setSelected:1];
    [(UIScrollView *)self->_scrollView bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [(MediaControlsCollectionViewController *)self _preferredSelectedItemHeight];
    v29 = -v28;
    v76.origin.x = v21;
    v76.origin.y = v23;
    v76.size.width = v25;
    v76.size.height = v27;
    v77 = CGRectInset(v76, 0.0, v29);
    [(MediaControlsCollectionViewController *)self _populateViewsInFrame:v77.origin.x, v77.origin.y, v77.size.width, v77.size.height];
    v30 = [(MediaControlsCollectionViewController *)self view];
    [v30 bounds];
    v32 = v31;
    v34 = v33;

    if (v19)
    {
      v17 = v49;
      if (a5 || !displayMode)
      {
        [(MediaControlsCollectionViewController *)self _scrollToSelectedItemAnimated:1];
      }

      v35 = objc_alloc_init(MediaControlsStyleCoordinator);
      [(MediaControlsCollectionViewController *)self _updateFramesForActiveViewControllersWithCoordinator:v35 assumingSize:v32, v34];
      [(MediaControlsStyleCoordinator *)v35 performAnimations];
      [(MediaControlsStyleCoordinator *)v35 performCompletions];
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v12)
      {
        v36 = objc_alloc_init(MediaControlsStyleCoordinator);
        v37 = objc_alloc_init(MediaControlsStyleCoordinator);
        v38 = [objc_opt_class() frameAnimator];
        v39 = [objc_opt_class() frameAnimator];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __117__MediaControlsCollectionViewController__setSelectedItemIndex_animated_shouldScroll_shouldNotifyDelegate_withReason___block_invoke;
        v68[3] = &unk_1E7665600;
        v73 = v32;
        v74 = v34;
        v75 = a3;
        v68[4] = self;
        v69 = v39;
        v40 = v37;
        v70 = v40;
        v71 = v38;
        v41 = v36;
        v72 = v41;
        v42 = v38;
        v43 = v39;
        [(MediaControlsCollectionViewController *)self _enumerateActiveViewControllers:v68];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __117__MediaControlsCollectionViewController__setSelectedItemIndex_animated_shouldScroll_shouldNotifyDelegate_withReason___block_invoke_3;
        v66[3] = &unk_1E7663898;
        v44 = v41;
        v67 = v44;
        [v42 addAnimations:v66];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __117__MediaControlsCollectionViewController__setSelectedItemIndex_animated_shouldScroll_shouldNotifyDelegate_withReason___block_invoke_4;
        v61[3] = &unk_1E7665628;
        v45 = v40;
        v64 = a5;
        v65 = v51;
        v62 = v45;
        v63 = self;
        [v43 addAnimations:v61];
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __117__MediaControlsCollectionViewController__setSelectedItemIndex_animated_shouldScroll_shouldNotifyDelegate_withReason___block_invoke_5;
        v59[3] = &unk_1E76643F0;
        v60 = v44;
        v46 = v44;
        [v42 addCompletion:v59];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __117__MediaControlsCollectionViewController__setSelectedItemIndex_animated_shouldScroll_shouldNotifyDelegate_withReason___block_invoke_6;
        v53[3] = &unk_1E7665650;
        v53[4] = self;
        v58 = v10;
        v17 = v49;
        v56 = a3;
        v57 = a7;
        v54 = v49;
        v55 = v45;
        v47 = v45;
        [v43 addCompletion:v53];
        ++self->_animatedSelectionCount;
        self->_isAnimatingSelection = 1;
        self->_shouldDisableAutoReaping = 1;
        [v42 startAnimation];
        [v43 startAnimationAfterDelay:0.1];

        goto LABEL_24;
      }

      if (a5 || !displayMode)
      {
        [(MediaControlsCollectionViewController *)self _scrollToSelectedItemAnimated:0];
      }

      v35 = objc_alloc_init(MediaControlsStyleCoordinator);
      [(MediaControlsCollectionViewController *)self _updateFramesForActiveViewControllersWithCoordinator:v35 assumingSize:v32, v34];
      [(MediaControlsStyleCoordinator *)v35 performAnimations];
      [(MediaControlsStyleCoordinator *)v35 performCompletions];
      [(UIScrollView *)self->_scrollView bounds];
      [(MediaControlsCollectionViewController *)self _populateViewsInFrame:?];
      v17 = v49;
      if (!v10)
      {
LABEL_16:

LABEL_24:
        v13 = v50;
LABEL_25:

        return;
      }
    }

    [v17 mediaControlsCollectionViewController:self didSelectItemAtIndex:a3 withReason:a7];
    goto LABEL_16;
  }
}

void __117__MediaControlsCollectionViewController__setSelectedItemIndex_animated_shouldScroll_shouldNotifyDelegate_withReason___block_invoke(double *a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 4);
  v6 = a1[9];
  v7 = a1[10];
  v8 = a3;
  [v5 _frameForViewAtIndex:a2 size:{v6, v7}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = 7;
  if (*(a1 + 11) == a2)
  {
    v17 = 5;
    v18 = 6;
  }

  else
  {
    v18 = 8;
  }

  v19 = *&a1[v17];
  v20 = *&a1[v18];
  [v8 willTransitionToSize:v20 withCoordinator:{v14, v16}];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __117__MediaControlsCollectionViewController__setSelectedItemIndex_animated_shouldScroll_shouldNotifyDelegate_withReason___block_invoke_2;
  v21[3] = &unk_1E7665438;
  *&v21[4] = a1[4];
  v21[5] = v10;
  v21[6] = v12;
  *&v21[7] = v14;
  *&v21[8] = v16;
  v21[9] = a2;
  [v19 addAnimations:v21];
}

uint64_t __117__MediaControlsCollectionViewController__setSelectedItemIndex_animated_shouldScroll_shouldNotifyDelegate_withReason___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) performAnimations];
  if ((*(a1 + 48) & 1) != 0 || *(a1 + 49) == 1)
  {
    v3 = *(a1 + 40);

    return [v3 _scrollToSelectedItemAnimated:0];
  }

  return result;
}

uint64_t __117__MediaControlsCollectionViewController__setSelectedItemIndex_animated_shouldScroll_shouldNotifyDelegate_withReason___block_invoke_6(uint64_t a1)
{
  --*(*(a1 + 32) + 1072);
  v2 = *(a1 + 32);
  if (!*(v2 + 1072))
  {
    *(v2 + 1090) = 0;
    *(*(a1 + 32) + 1088) = 0;
    v2 = *(a1 + 32);
  }

  [*(v2 + 1136) bounds];
  [v2 _populateViewsInFrame:?];
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 40) mediaControlsCollectionViewController:*(a1 + 32) didSelectItemAtIndex:*(a1 + 56) withReason:*(a1 + 64)];
  }

  [*(a1 + 48) performCompletions];
  v3 = *(a1 + 32);

  return [v3 _dequeueAndPerformBatchUpdatesIfNeeded];
}

- (void)_enumerateActiveViewControllers:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_activeViewControllers copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__MediaControlsCollectionViewController__enumerateActiveViewControllers___block_invoke;
  v7[3] = &unk_1E7665678;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __73__MediaControlsCollectionViewController__enumerateActiveViewControllers___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  (*(v6 + 16))(v6, [a2 integerValue], v7, a4);
}

- (id)_visibleTopViewControllers
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_activeViewControllers mutableCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_activeViewControllers;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 integerValue] >= self->_selectedItemIndex)
        {
          [v3 removeObjectForKey:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_visibleBottomViewControllers
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_activeViewControllers mutableCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_activeViewControllers;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 integerValue] <= self->_selectedItemIndex)
        {
          [v3 removeObjectForKey:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)_isScrollViewAnimatingScroll
{
  if ([(UIScrollView *)self->_scrollView isDecelerating])
  {
    return 1;
  }

  scrollView = self->_scrollView;

  return [(UIScrollView *)scrollView isDragging];
}

- (double)_backgroundCornerRadius
{
  CCUIExpandedModuleContinuousCornerRadius();
  if (!self->_displayMode)
  {
    return 20.0;
  }

  return result;
}

+ (id)frameAnimator
{
  if (frameAnimator_onceToken != -1)
  {
    +[MediaControlsCollectionViewController frameAnimator];
  }

  v2 = objc_alloc(MEMORY[0x1E6970500]);
  v3 = [v2 initWithDuration:frameAnimator_timing timingParameters:1.0];

  return v3;
}

void __54__MediaControlsCollectionViewController_frameAnimator__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E6970508]) initWithMass:2.0 stiffness:300.0 damping:38.0 initialVelocity:{0.0, 0.0}];
  v1 = frameAnimator_timing;
  frameAnimator_timing = v0;

  v2 = [objc_alloc(MEMORY[0x1E69DC908]) initWithControlPoint1:0.187800005 controlPoint2:{0.00230000005, 0.539900005, 0.962899983}];
  [frameAnimator_timing setSpringCubicTimingParameters:v2];
}

+ (id)alphaAnimatorWithAnimations:(id)a3
{
  v3 = MEMORY[0x1E69DD278];
  v4 = a3;
  v5 = [[v3 alloc] initWithDuration:v4 controlPoint1:0.4 controlPoint2:0.25 animations:{0.1, 0.25, 1.0}];

  return v5;
}

- (MediaControlsCollectionViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (MediaControlsCollectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)scrollViewInsets
{
  top = self->_scrollViewInsets.top;
  left = self->_scrollViewInsets.left;
  bottom = self->_scrollViewInsets.bottom;
  right = self->_scrollViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end