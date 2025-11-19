@interface CKBrowserSwitcherFooterView
- (BOOL)collectionView:(id)a3 canMoveItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (CGPoint)targetContentOffsetForFocusPoint:(CGPoint)a3 initialLayoutMode:(unint64_t)a4 finalLayoutMode:(unint64_t)a5;
- (CKBrowserSwitcherFooterView)initWithFrame:(CGRect)a3 toggleBordersOnInterfaceStyle:(BOOL)a4;
- (CKBrowserSwitcherFooterViewDataSource)dataSource;
- (CKBrowserSwitcherFooterViewDelegate)delegate;
- (UIEdgeInsets)insetsForAppStrip;
- (double)contentHeight;
- (double)contentHeightForCameraApps;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateVisibilityState;
- (void)adjustMagnificationAtPoint:(CGPoint)a3 minifyImmediately:(BOOL)a4;
- (void)animateAppStripVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)appsLongPressed:(id)a3;
- (void)clearSelection;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)dealloc;
- (void)installedAppsChanged:(id)a3;
- (void)layoutSubviews;
- (void)minifyImmediately:(BOOL)a3;
- (void)reloadData;
- (void)resetScrollPosition;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)selectPluginAtIndexPath:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setInitiallySelectedPluginIfNeeded;
- (void)touchTrackerTrackedTouches:(id)a3;
- (void)transcriptCollectionStartedScrolling:(id)a3;
- (void)updateBrowserCell:(id)a3;
- (void)updateCollectionView:(id)a3;
- (void)updatePredictiveTypeSnapshot:(id)a3;
- (void)visibleAppsChanges:(id)a3;
- (void)willMoveToSuperview:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation CKBrowserSwitcherFooterView

- (void)dealloc
{
  [(NSTimer *)self->_minificationTimer invalidate];
  minificationTimer = self->_minificationTimer;
  self->_minificationTimer = 0;

  [(UICollectionView *)self->_appStripCollectionView setDelegate:0];
  [(UICollectionView *)self->_appStripCollectionView setDataSource:0];
  appStripCollectionView = self->_appStripCollectionView;
  self->_appStripCollectionView = 0;

  appStripLayout = self->_appStripLayout;
  self->_appStripLayout = 0;

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = CKBrowserSwitcherFooterView;
  [(CKBrowserSwitcherFooterView *)&v7 dealloc];
}

- (CKBrowserSwitcherFooterView)initWithFrame:(CGRect)a3 toggleBordersOnInterfaceStyle:(BOOL)a4
{
  v41.receiver = self;
  v41.super_class = CKBrowserSwitcherFooterView;
  v5 = [(CKBrowserSwitcherFooterView *)&v41 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(CKBrowserSwitcherFooterView *)v5 setBackgroundColor:0];
    v6->_scrollsLastUsedAppIconIntoView = 1;
    v6->_minifiesOnSelection = 1;
    v6->_hideShinyStatus = 1;
    v6->_toggleBordersOnInterfaceStyle = a4;
    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v9 = MEMORY[0x1E695F058];
    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v10 = +[CKUIBehavior sharedBehaviors];
      v11 = [v10 theme];
      v12 = [v11 browserSwitcherBorderColor];

      if (v12)
      {
        v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*v9, v9[1], v9[2], v9[3]}];
        v14 = +[CKUIBehavior sharedBehaviors];
        v15 = [v14 theme];
        v16 = [v15 browserSwitcherBorderColor];
        [v13 setBackgroundColor:v16];

        [(CKBrowserSwitcherFooterView *)v6 setGrayLine:v13];
        [(CKBrowserSwitcherFooterView *)v6 addSubview:v13];
      }
    }

    v17 = objc_alloc_init(CKAppStripLayout);
    appStripLayout = v6->_appStripLayout;
    v6->_appStripLayout = v17;

    v19 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:v6->_appStripLayout collectionViewLayout:{*v9, v9[1], v9[2], v9[3]}];
    for (i = 0; i != 3; ++i)
    {
      v21 = [CKBrowserCell classForItemType:i];
      v22 = [(objc_class *)v21 reuseIdentifier];
      [v19 registerClass:v21 forCellWithReuseIdentifier:v22];
    }

    v23 = objc_opt_class();
    v24 = +[CKBrowserSwitcherFooterAccessoryCell supplementryViewKind];
    v25 = +[CKBrowserSwitcherFooterAccessoryCell reuseIdentifier];
    [v19 registerClass:v23 forSupplementaryViewOfKind:v24 withReuseIdentifier:v25];

    [v19 setClipsToBounds:0];
    [v19 setOpaque:0];
    v26 = [MEMORY[0x1E69DC888] clearColor];
    [v19 setBackgroundColor:v26];

    [v19 setAlwaysBounceVertical:0];
    [v19 setAlwaysBounceHorizontal:1];
    [v19 setShowsVerticalScrollIndicator:0];
    [v19 setShowsHorizontalScrollIndicator:0];
    [v19 setAccessibilityIdentifier:@"appSelectionBrowserIdentifier"];
    [v19 setDelegate:v6];
    [v19 setDataSource:v6];
    [v19 setContentInset:{v6->_minifiedContentInsets.top, v6->_minifiedContentInsets.left, v6->_minifiedContentInsets.bottom, v6->_minifiedContentInsets.right}];
    objc_storeStrong(&v6->_appStripCollectionView, v19);
    [(CKBrowserSwitcherFooterView *)v6 addSubview:v19];
    objc_storeStrong(&v6->_visibleView, v6->_appStripCollectionView);
    v27 = objc_alloc_init(CKAppStripPredictiveTypeSimpleFadeTransition);
    animator = v6->_animator;
    v6->_animator = v27;

    v29 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v6 action:sel_appsLongPressed_];
    [v29 setMinimumPressDuration:0.2];
    [v29 setDelegate:v6];
    [v29 _setRequiresSystemGesturesToFail:1];
    objc_storeStrong(&v6->_longPressRecognizer, v29);
    [(UICollectionView *)v6->_appStripCollectionView addGestureRecognizer:v29];
    v30 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v6 action:sel_touchTrackerTrackedTouches_];
    [v30 setCancelsTouchesInView:0];
    [v30 setDelaysTouchesEnded:0];
    [v30 setMinimumPressDuration:0.0];
    [v30 setDelegate:v6];
    objc_storeStrong(&v6->_touchTracker, v30);
    [(UICollectionView *)v6->_appStripCollectionView addGestureRecognizer:v30];
    v31 = [MEMORY[0x1E69DC938] currentDevice];
    v32 = [v31 userInterfaceIdiom];

    if ((v32 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v33 = [(CKBrowserSwitcherFooterView *)v6 grayLine];
      [(CKBrowserSwitcherFooterView *)v6 bringSubviewToFront:v33];
    }

    v6->_isMagnificationEnabled = 0;
    if (v6->_toggleBordersOnInterfaceStyle)
    {
      v34 = [(CKBrowserSwitcherFooterView *)v6 traitCollection];
      -[CKBrowserSwitcherFooterView setShowBorders:](v6, "setShowBorders:", [v34 userInterfaceStyle] == 2);
    }

    v35 = [MEMORY[0x1E696AD88] defaultCenter];
    [v35 addObserver:v6 selector:sel_visibleAppsChanges_ name:@"CKBrowserSelectionControllerVisibleSwitcherPluginsChangedNotification" object:0];

    v36 = [MEMORY[0x1E696AD88] defaultCenter];
    [v36 addObserver:v6 selector:sel_updateCollectionView_ name:@"CKBrowserSelectionControllerDataSourceChangedNotification" object:0];

    v37 = [MEMORY[0x1E696AD88] defaultCenter];
    [v37 addObserver:v6 selector:sel_installedAppsChanged_ name:@"CKBrowserSelectionControllerInstallationsChangedNotification" object:0];

    v38 = [MEMORY[0x1E696AD88] defaultCenter];
    [v38 addObserver:v6 selector:sel_updateBrowserCell_ name:*MEMORY[0x1E69A56D0] object:0];

    v39 = [MEMORY[0x1E696AD88] defaultCenter];
    [v39 addObserver:v6 selector:sel_transcriptCollectionStartedScrolling_ name:@"transcriptCollectionViewWillBeginDragging" object:0];
  }

  return v6;
}

- (void)setDataSource:(id)a3
{
  objc_storeWeak(&self->_dataSource, a3);

  [(CKBrowserSwitcherFooterView *)self reloadData];
}

- (void)willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKBrowserSwitcherFooterView;
  [(CKBrowserSwitcherFooterView *)&v6 willMoveToWindow:?];
  if (!a3)
  {
    [(NSTimer *)self->_minificationTimer invalidate];
    minificationTimer = self->_minificationTimer;
    self->_minificationTimer = 0;
  }
}

- (void)willMoveToSuperview:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKBrowserSwitcherFooterView;
  [(CKBrowserSwitcherFooterView *)&v6 willMoveToSuperview:?];
  if (!a3)
  {
    [(NSTimer *)self->_minificationTimer invalidate];
    minificationTimer = self->_minificationTimer;
    self->_minificationTimer = 0;
  }
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = CKBrowserSwitcherFooterView;
  [(CKBrowserSwitcherFooterView *)&v17 layoutSubviews];
  [(CKBrowserSwitcherFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(CKBrowserSwitcherFooterView *)self insetsForAppStrip];
  self->_minifiedContentInsets.top = v9;
  self->_minifiedContentInsets.left = v10;
  self->_minifiedContentInsets.bottom = v11;
  self->_minifiedContentInsets.right = v12;
  [(UICollectionView *)self->_appStripCollectionView setContentInset:?];
  [(CKBrowserSwitcherFooterView *)self contentHeight];
  [(UICollectionView *)self->_appStripCollectionView setFrame:v4, v6, v8, v13];
  [(UICollectionView *)self->_appStripCollectionView _setVisibleRectEdgeInsets:0.0, v8 * -0.8, 0.0, v8 * -0.8];
  v14 = [(CKBrowserSwitcherFooterView *)self grayLine];
  [(CKBrowserSwitcherFooterView *)self bounds];
  v16 = v15;
  if (CKPixelWidth_once_2 != -1)
  {
    [CKBrowserSwitcherFooterView layoutSubviews];
  }

  [v14 setFrame:{0.0, 0.0, v16, *&CKPixelWidth_sPixel_2}];

  self->_isMagnificationEnabled = 1;
}

- (UIEdgeInsets)insetsForAppStrip
{
  if ([MEMORY[0x1E69DCBB8] __ck_isUsingCompactHeightPredictionBar] && (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isAppStripInKeyboard"), v2, (v3 & 1) != 0))
  {
    v4 = 7.0;
    v5 = 2.0;
  }

  else
  {
    v4 = 7.0;
    v5 = 3.0;
  }

  v6 = v5;
  v7 = v4;
  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v5;
  return result;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  if (self->_toggleBordersOnInterfaceStyle)
  {
    v3 = [(CKBrowserSwitcherFooterView *)self traitCollection];
    -[CKBrowserSwitcherFooterView setShowBorders:](self, "setShowBorders:", [v3 userInterfaceStyle] == 2);
  }

  [(CKBrowserSwitcherFooterView *)self reloadData];
}

- (void)setInitiallySelectedPluginIfNeeded
{
  v3 = [(CKBrowserSwitcherFooterView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UICollectionView *)self->_appStripCollectionView indexPathsForSelectedItems];
    v6 = [v5 count];

    if (!v6)
    {
      v8 = [(CKBrowserSwitcherFooterView *)self delegate];
      v7 = [v8 indexPathOfCurrentlySelectedPluginInSwitcherView:self];
      [(CKBrowserSwitcherFooterView *)self selectPluginAtIndexPath:v7];
    }
  }
}

- (void)selectPluginAtIndexPath:(id)a3
{
  v18 = a3;
  v4 = [(UICollectionView *)self->_appStripCollectionView indexPathsForSelectedItems];
  v5 = [v4 firstObject];

  v6 = [(UICollectionView *)self->_appStripCollectionView indexPathsForVisibleItems];
  if ([v6 containsObject:v18])
  {
    v7 = [(UICollectionView *)self->_appStripCollectionView cellForItemAtIndexPath:v18];
    [v7 frame];
    v9 = v8;
    [(UICollectionView *)self->_appStripCollectionView contentOffset];
    if (v9 >= v10 && ([v7 frame], MaxX = CGRectGetMaxX(v20), -[UICollectionView contentOffset](self->_appStripCollectionView, "contentOffset"), v13 = v12, -[UICollectionView bounds](self->_appStripCollectionView, "bounds"), MaxX <= v13 + v14))
    {
      v16 = 0;
    }

    else
    {
      v15 = [v18 item];
      if (v15 <= [v5 item])
      {
        v16 = 8;
      }

      else
      {
        v16 = 32;
      }
    }
  }

  else
  {
    v17 = [v18 item];
    if (v17 <= [v5 item])
    {
      v16 = 8;
    }

    else
    {
      v16 = 32;
    }
  }

  if (v18)
  {
    self->_isMagnificationEnabled = 0;
    [(UICollectionView *)self->_appStripCollectionView selectItemAtIndexPath:v18 animated:0 scrollPosition:v16];
    self->_isMagnificationEnabled = 1;
  }
}

- (void)resetScrollPosition
{
  v3 = [(CKBrowserSwitcherFooterView *)self appStripCollectionView];
  [v3 adjustedContentInset];
  v5 = v4;
  v7 = v6;

  v8 = [(CKBrowserSwitcherFooterView *)self appStripCollectionView];
  [v8 setContentOffset:{-v7, -v5}];

  [(CKBrowserSwitcherFooterView *)self clearSelection];
}

- (void)clearSelection
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(CKBrowserSwitcherFooterView *)self appStripCollectionView];
  v4 = [v3 indexPathsForSelectedItems];

  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          v11 = [(CKBrowserSwitcherFooterView *)self appStripCollectionView];
          [v11 deselectItemAtIndexPath:v10 animated:0];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (double)contentHeightForCameraApps
{
  v2 = [(CKBrowserSwitcherFooterView *)self isMagnified];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = v3;
  if (v2)
  {
    [v3 chatMagnifiedChromeBottomInset];
  }

  else
  {
    [v3 cameraAppsMinimizedDockHeight];
  }

  v6 = v5;

  return v6;
}

- (double)contentHeight
{
  if (CKIsRunningInCameraAppsClient())
  {

    [(CKBrowserSwitcherFooterView *)self contentHeightForCameraApps];
    return result;
  }

  if ([(CKBrowserSwitcherFooterView *)self isMagnified])
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 chatMagnifiedChromeBottomInset];
LABEL_9:
    v8 = v5;

    return v8;
  }

  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 chatChromeBottomInset];
    goto LABEL_9;
  }

  if ([MEMORY[0x1E69DCBB8] __ck_isUsingCompactHeightPredictionBar])
  {
    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [v9 isAppStripInKeyboard];

    if (v10)
    {
      return 37.0;
    }
  }

  v11 = MEMORY[0x1E69DCBB8];

  [v11 predictionViewHeightForCurrentInputMode];
  return result;
}

- (void)appsLongPressed:(id)a3
{
  v15 = a3;
  if ([v15 state] == 1)
  {
    if (!self->_isMagnified)
    {
      v4 = v15;
      appStripCollectionView = self;
LABEL_15:
      [v4 locationInView:appStripCollectionView];
      [(CKBrowserSwitcherFooterView *)self adjustMagnificationAtPoint:0 minifyImmediately:?];
      goto LABEL_16;
    }
  }

  else if (!self->_isMagnified)
  {
    goto LABEL_16;
  }

  [v15 locationInView:self->_appStripCollectionView];
  v7 = v6;
  v9 = v8;
  v10 = [v15 state];
  if (v10 == 3)
  {
    [(UICollectionView *)self->_appStripCollectionView endInteractiveMovement];
LABEL_14:
    [(UICollectionView *)self->_appStripCollectionView setEditing:0];
    v14 = [(UICollectionView *)self->_appStripCollectionView panGestureRecognizer];
    [v14 setEnabled:1];

    appStripCollectionView = self->_appStripCollectionView;
    v4 = v15;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    [(UICollectionView *)self->_appStripCollectionView updateInteractiveMovementTargetPosition:v7, v9];
    goto LABEL_16;
  }

  if (v10 != 1)
  {
    [(UICollectionView *)self->_appStripCollectionView cancelInteractiveMovement];
    goto LABEL_14;
  }

  v11 = self->_appStripCollectionView;
  [v15 locationInView:v11];
  v12 = [(UICollectionView *)v11 indexPathForItemAtPoint:?];
  if (v12)
  {
    [(UICollectionView *)self->_appStripCollectionView setEditing:1];
    [(UICollectionView *)self->_appStripCollectionView beginInteractiveMovementForItemAtIndexPath:v12];
    v13 = [(UICollectionView *)self->_appStripCollectionView panGestureRecognizer];
    [v13 setEnabled:0];
  }

LABEL_16:
}

- (void)touchTrackerTrackedTouches:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 4) < 2)
  {
    v5 = self;
    v6 = 1;
  }

  else
  {
    if (v4 != 3)
    {
      if (v4 == 1)
      {
        self->_hasTouches = 1;
      }

      return;
    }

    v5 = self;
    v6 = 0;
  }

  [(CKBrowserSwitcherFooterView *)v5 minifyImmediately:v6];
}

- (void)minifyImmediately:(BOOL)a3
{
  self->_hasTouches = 0;
  if (self->_isMagnified)
  {
    v4 = a3;
    [(UILongPressGestureRecognizer *)self->_longPressRecognizer locationInView:self->_appStripCollectionView];

    [(CKBrowserSwitcherFooterView *)self adjustMagnificationAtPoint:v4 minifyImmediately:?];
  }
}

- (CGPoint)targetContentOffsetForFocusPoint:(CGPoint)a3 initialLayoutMode:(unint64_t)a4 finalLayoutMode:(unint64_t)a5
{
  x = a3.x;
  [(UICollectionView *)self->_appStripCollectionView contentOffset:a3.x];
  v10 = v9;
  v12 = v11;
  if (a4 != 1 || v9 != -self->_minifiedContentInsets.left)
  {
    [(CKAppStripLayout *)self->_appStripLayout collectionViewContentSizeForLayoutMode:a4];
    v14 = v13;
    [(CKAppStripLayout *)self->_appStripLayout collectionViewContentSizeForLayoutMode:a5];
    v10 = (x + v10) / v14 * v15 - x;
  }

  v16 = v10;
  v17 = v12;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)adjustMagnificationAtPoint:(CGPoint)a3 minifyImmediately:(BOOL)a4
{
  if (self->_isMagnificationEnabled)
  {
    y = a3.y;
    x = a3.x;
    if (![(UICollectionView *)self->_appStripCollectionView isEditing])
    {
      v8 = 0.0;
      if (!a4)
      {
        v8 = 1.5;
        if (!self->_isMagnified)
        {
          self->_isDoingMagnificationAnimation = 1;
          [(CKAppStripLayout *)self->_appStripLayout prepareForLayoutModeTransition];
          [(CKAppStripLayout *)self->_appStripLayout invalidateLayout];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __76__CKBrowserSwitcherFooterView_adjustMagnificationAtPoint_minifyImmediately___block_invoke;
          v22[3] = &unk_1E72F1058;
          v22[4] = self;
          *&v22[5] = x;
          *&v22[6] = y;
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __76__CKBrowserSwitcherFooterView_adjustMagnificationAtPoint_minifyImmediately___block_invoke_2;
          v21[3] = &unk_1E72EB9C8;
          v21[4] = self;
          [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v22 usingSpringWithDamping:v21 initialSpringVelocity:0.4 options:0.0 animations:0.75 completion:0.0];
        }
      }

      [(NSTimer *)self->_minificationTimer invalidate];
      objc_initWeak(&location, self);
      v9 = MEMORY[0x1E695DFF0];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __76__CKBrowserSwitcherFooterView_adjustMagnificationAtPoint_minifyImmediately___block_invoke_3;
      v16 = &unk_1E72F10D0;
      objc_copyWeak(v18, &location);
      v19 = a4;
      v18[1] = *&x;
      v18[2] = *&y;
      v17 = self;
      v10 = [v9 scheduledTimerWithTimeInterval:0 repeats:&v13 block:v8];
      minificationTimer = self->_minificationTimer;
      self->_minificationTimer = v10;

      v12 = [MEMORY[0x1E695DFD0] currentRunLoop];
      [v12 addTimer:self->_minificationTimer forMode:*MEMORY[0x1E695DA28]];

      objc_destroyWeak(v18);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __76__CKBrowserSwitcherFooterView_adjustMagnificationAtPoint_minifyImmediately___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 480) = 1;
  [*(*(a1 + 32) + 496) setMinimumPressDuration:0.5];
  v2 = [*(a1 + 32) delegate];
  [v2 switcherView:*(a1 + 32) didMagnify:1];

  [*(*(a1 + 32) + 408) setLayoutMode:1];
  [*(*(a1 + 32) + 408) collectionViewContentSizeForLayoutMode:1];
  v4 = v3;
  v5 = *(*(a1 + 32) + 416);
  [v5 bounds];
  [v5 setContentSize:{v4, v6}];
  [*(a1 + 32) targetContentOffsetForFocusPoint:0 initialLayoutMode:1 finalLayoutMode:{*(a1 + 40), *(a1 + 48)}];
  [*(*(a1 + 32) + 416) setContentOffset:?];
  v7 = *(*(a1 + 32) + 416);

  return [v7 performBatchUpdates:0 completion:0];
}

uint64_t __76__CKBrowserSwitcherFooterView_adjustMagnificationAtPoint_minifyImmediately___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 408) finishLayoutModeTransition];
  *(*(a1 + 32) + 481) = 0;
  return result;
}

void __76__CKBrowserSwitcherFooterView_adjustMagnificationAtPoint_minifyImmediately___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 480) == 1 && ([WeakRetained[52] isEditing] & 1) == 0 && (v5[64] & 1) == 0 && !__CurrentTestName)
  {
    *(v5 + 481) = 1;
    [v5[51] prepareForLayoutModeTransition];
    [v5[51] invalidateLayout];
    v6 = MEMORY[0x1E69DD250];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__CKBrowserSwitcherFooterView_adjustMagnificationAtPoint_minifyImmediately___block_invoke_4;
    v9[3] = &unk_1E72F1080;
    objc_copyWeak(&v10, (a1 + 40));
    v12 = *(a1 + 64);
    v11 = *(a1 + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__CKBrowserSwitcherFooterView_adjustMagnificationAtPoint_minifyImmediately___block_invoke_5;
    v7[3] = &unk_1E72F10A8;
    objc_copyWeak(&v8, (a1 + 40));
    v7[4] = *(a1 + 32);
    [v6 animateWithDuration:2 delay:v9 usingSpringWithDamping:v7 initialSpringVelocity:0.4 options:0.0 animations:0.75 completion:0.0];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
  }
}

void __76__CKBrowserSwitcherFooterView_adjustMagnificationAtPoint_minifyImmediately___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v3 = WeakRetained[52];
    v4 = v16[51];
    *(v16 + 480) = 0;
    v5 = [v16 delegate];
    [v5 switcherView:v16 didMagnify:0];

    [v4 setLayoutMode:0];
    if (*(a1 + 56) == 1)
    {
      v6 = *(a1 + 40);
    }

    else
    {
      [v3 contentOffset];
      v7 = *(v16 + 57);
      if (v8 >= 1.0 - v7)
      {
        [v3 contentOffset];
        v10 = v9;
        [v3 contentSize];
        v12 = v11;
        [v3 bounds];
        v14 = v12 - v13 + -1.0;
        [v3 bounds];
        v6 = v15;
        if (v10 <= v14)
        {
          v6 = v15 * 0.5;
        }
      }

      else
      {
        v6 = -v7;
      }
    }

    [v16 targetContentOffsetForFocusPoint:1 initialLayoutMode:0 finalLayoutMode:{v6, 0.0}];
    [v3 setContentOffset:?];
    [v3 performBatchUpdates:0 completion:0];

    WeakRetained = v16;
  }
}

void __76__CKBrowserSwitcherFooterView_adjustMagnificationAtPoint_minifyImmediately___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[51] finishLayoutModeTransition];
    *(v4 + 481) = 0;
    [v4[62] setMinimumPressDuration:0.2];
    WeakRetained = v4;
    v3 = *(a1 + 32);
    if (*(v3 + 517) == 1)
    {
      *(v3 + 517) = 0;
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  if (self->_isMagnificationEnabled && !self->_isDoingMagnificationAnimation)
  {
    v8 = v4;
    v5 = [(UICollectionView *)self->_appStripCollectionView isEditing];
    v4 = v8;
    if (!v5)
    {
      if (__CurrentTestName)
      {
        v6 = *MEMORY[0x1E695EFF8];
        v7 = *(MEMORY[0x1E695EFF8] + 8);
      }

      else
      {
        [(UILongPressGestureRecognizer *)self->_longPressRecognizer locationInView:self];
      }

      [(CKBrowserSwitcherFooterView *)self adjustMagnificationAtPoint:0 minifyImmediately:v6, v7];
      v4 = v8;
    }
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = [v25 cellForItemAtIndexPath:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 superview];
    [v7 center];
    [v8 convertPoint:self toView:?];
    v10 = v9;
    v12 = v11;

    v13 = [(CKBrowserSwitcherFooterView *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(CKBrowserSwitcherFooterView *)self delegate];
      v16 = [v15 indexPathOfCurrentlySelectedPluginInSwitcherView:self];

      if (v16 && [v6 isEqual:v16])
      {
        [(CKBrowserSwitcherFooterView *)self adjustMagnificationAtPoint:self->_isMagnified minifyImmediately:v10, v12];
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v16 = 0;
    }

    if ([v6 section] == 1)
    {
      v17 = [v6 row];
      v18 = v17 == [v25 numberOfItemsInSection:1] - 1;
    }

    else
    {
      v18 = 0;
    }

    if (self->_minifiesOnSelection || v18)
    {
      [(CKBrowserSwitcherFooterView *)self adjustMagnificationAtPoint:1 minifyImmediately:v10, v12];
    }

    self->_ignoreDataSourceChanges = 1;
    if ([v6 section] == 1)
    {
      v19 = [v6 row];
      v20 = +[CKBalloonPluginManager sharedInstance];
      v21 = [v20 visibleFavoriteAppStripPlugins];
      v22 = [v21 count];

      v23 = [MEMORY[0x1E696AC88] indexPathForRow:v22 + v19 inSection:0];

      v6 = v23;
    }

    v24 = [(CKBrowserSwitcherFooterView *)self delegate];
    [v24 switcherView:self didSelectPluginAtIndex:v6];

    self->_ignoreDataSourceChanges = 0;
    goto LABEL_16;
  }

LABEL_17:
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v4 = [a3 cellForItemAtIndexPath:a4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)collectionView:(id)a3 targetIndexPathForMoveFromItemAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v6 = a4;
  v7 = a5;
  if ([v6 section] != 1 || objc_msgSend(v7, "section") != 1)
  {
    if (![v6 section] && objc_msgSend(v7, "section") == 1)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:1];
      goto LABEL_14;
    }

    if (![v7 section])
    {
      v9 = +[CKBalloonPluginManager sharedInstance];
      v10 = [v9 isAppStoreEnabled];

      if (v10)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      if ([v7 item] <= v11)
      {
        v8 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
      }

      else
      {
        v8 = v7;
      }

      goto LABEL_14;
    }
  }

  v8 = v6;
LABEL_14:
  v12 = v8;

  return v12;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = [(CKBrowserSwitcherFooterView *)self dataSource];
  v7 = [v6 numberOfPluginsInSwitcherView:self forSection:a4];

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v22 = 0;
  v6 = a4;
  v7 = a3;
  v8 = [(CKBrowserSwitcherFooterView *)self dataSource];
  v9 = [v8 switcherView:self modelAtIndexPath:v6 type:&v22];

  v10 = [(objc_class *)[CKBrowserCell classForItemType:?]];
  v11 = [v7 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v6];

  if (v22 == 2)
  {
    [v11 setInstallation:v9];
  }

  else
  {
    if (v22 == 1)
    {
      v12 = v11;
      [v12 setPlugin:v9 hideShinyStatus:[(CKBrowserSwitcherFooterView *)self hideShinyStatus]];
      v13 = [v12 browserImage];
      v14 = [v13 layer];
      v15 = [(CKBrowserSwitcherFooterView *)self appStripLayout];
      v16 = [v15 shouldDimPluginCells];
      v17 = +[CKUIBehavior sharedBehaviors];
      v18 = [v17 theme];
      v19 = v18;
      if (v16)
      {
        [v18 browserAppStripDimmedPluginCellOpacity];
      }

      else
      {
        [v18 browserAppStripLightPluginCellOpacity];
      }

      *&v20 = v20;
      [v14 setOpacity:v20];
    }

    else
    {
      if (v22)
      {
        goto LABEL_12;
      }

      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CKBrowserSwitcherFooterView collectionView:v12 cellForItemAtIndexPath:?];
      }
    }
  }

LABEL_12:
  [v11 setShouldShowLabel:self->_isMagnified];

  return v11;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = +[CKBrowserSwitcherFooterAccessoryCell supplementryViewKind];
  v9 = +[CKBrowserSwitcherFooterAccessoryCell reuseIdentifier];
  v10 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:v6];

  +[CKAppStripLayout maxHeight];
  [v10 setMaxHeight:?];
  +[CKAppStripLayout minHeight];
  [v10 setMinHeight:?];

  return v10;
}

- (BOOL)collectionView:(id)a3 canMoveItemAtIndexPath:(id)a4
{
  v5 = a4;
  if (CKIsRunningInCameraAppsClient())
  {
    goto LABEL_13;
  }

  v6 = ![v5 section] && objc_msgSend(v5, "item") == 0;
  if ([v5 section] || objc_msgSend(v5, "item") != 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = +[CKBalloonPluginManager sharedInstance];
    v8 = [v7 isAppStoreEnabled];
  }

  if ([v5 section] == 1)
  {
    v9 = [v5 item];
    v10 = v9 != [(UICollectionView *)self->_appStripCollectionView numberOfItemsInSection:1]- 1;
  }

  else
  {
    v10 = 1;
  }

  v15 = 0;
  v11 = [(CKBrowserSwitcherFooterView *)self dataSource];
  v12 = [v11 switcherView:self modelAtIndexPath:v5 type:&v15];

  if ((v6 | v8))
  {
LABEL_13:
    v13 = 0;
  }

  else
  {
    v13 = v15 == 1 && v10;
  }

  return v13;
}

- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = a5;
  v12 = 0;
  v8 = a4;
  v9 = [(CKBrowserSwitcherFooterView *)self dataSource];
  v10 = [v9 switcherView:self modelAtIndexPath:v8 type:&v12];

  if (v12 == 1)
  {
    v11 = +[CKBalloonPluginManager sharedInstance];
    [v11 updateIndexPath:v7 forPlugin:v10 isDrawerPluginPath:1];
  }
}

- (void)visibleAppsChanges:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CKBrowserSwitcherFooterView *)self scrollsLastUsedAppIconIntoView])
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKey:@"CKBrowserSelectionControllerInstalledPluginsKey"];

    if ([v6 count])
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:0];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v21 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v23;
        do
        {
          v12 = 0;
          do
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v22 + 1) + 8 * v12);
            v14 = [(CKBrowserSwitcherFooterView *)self dataSource];
            v15 = [v14 switcherView:self indexPathOfModelWithIdentifier:v13];

            if ([v7 item] == 0x7FFFFFFFFFFFFFFFLL || (v16 = objc_msgSend(v15, "item"), v16 > objc_msgSend(v7, "item")))
            {
              v17 = v15;

              v7 = v17;
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v10);
      }

      if ([v7 item] == 0x7FFFFFFFFFFFFFFFLL || (v18 = objc_msgSend(v7, "section"), v18 >= -[UICollectionView numberOfSections](self->_appStripCollectionView, "numberOfSections")) || (v19 = objc_msgSend(v7, "item"), v19 >= -[UICollectionView numberOfItemsInSection:](self->_appStripCollectionView, "numberOfItemsInSection:", objc_msgSend(v7, "section"))))
      {
        v20 = IMLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [(CKBrowserSwitcherFooterView *)v7 visibleAppsChanges:v20];
        }
      }

      else
      {
        [(UICollectionView *)self->_appStripCollectionView scrollToItemAtIndexPath:v7 atScrollPosition:8 animated:1];
      }

      v6 = v21;
    }
  }
}

- (void)updateCollectionView:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CKBrowserSwitcherFooterView_updateCollectionView___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)installedAppsChanged:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CKBrowserSwitcherFooterView_installedAppsChanged___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)reloadData
{
  if (self->_ignoreDataSourceChanges)
  {
    return;
  }

  v4 = [(UICollectionView *)self->_appStripCollectionView indexPathsForSelectedItems];
  v9 = [v4 lastObject];

  [(CKAppStripLayout *)self->_appStripLayout invalidateCachedLayout];
  [(UICollectionView *)self->_appStripCollectionView reloadData];
  v5 = [(UICollectionView *)self->_appStripCollectionView numberOfItemsInSection:0];
  if ([v9 item] < v5 - 1)
  {
    v6 = v9;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = [MEMORY[0x1E696AC88] indexPathForItem:v5 - 2 inSection:0];

  v6 = v7;
  if (v7)
  {
LABEL_6:
    isMagnificationEnabled = self->_isMagnificationEnabled;
    v10 = v6;
    [(UICollectionView *)self->_appStripCollectionView selectItemAtIndexPath:v6 animated:0 scrollPosition:0];
    v6 = v10;
    self->_isMagnificationEnabled = isMagnificationEnabled;
  }

LABEL_7:
}

- (void)updateBrowserCell:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CKBrowserSwitcherFooterView_updateBrowserCell___block_invoke;
  v6[3] = &unk_1E72EB8D0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __49__CKBrowserSwitcherFooterView_updateBrowserCell___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v9 = [v2 valueForKey:@"IMBalloonPluginIdentifierKey"];

  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 valueForKey:@"UpdatedIMBalloonPluginIconKey"];

  v5 = [*(a1 + 40) dataSource];
  v6 = [v5 switcherView:*(a1 + 40) indexPathOfModelWithIdentifier:v9];

  v7 = [*(*(a1 + 40) + 416) cellForItemAtIndexPath:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 browserImage];
    [v8 setImage:v4];
  }
}

- (void)transcriptCollectionStartedScrolling:(id)a3
{
  v4 = a3;
  if (self->_isMagnified && !self->_isMinifyingOnTranscriptScroll)
  {
    self->_isMinifyingOnTranscriptScroll = 1;
    v5 = v4;
    [(CKBrowserSwitcherFooterView *)self minifyImmediately:1];
    v4 = v5;
  }
}

- (void)updatePredictiveTypeSnapshot:(id)a3
{
  v5 = a3;
  [(UIView *)self->_predictiveTypeSnapshotView removeFromSuperview];
  if (v5)
  {
    objc_storeStrong(&self->_predictiveTypeSnapshotView, a3);
    if (!self->_visibleView)
    {
      objc_storeStrong(&self->_visibleView, a3);
    }

    [(CKBrowserSwitcherFooterView *)self addSubview:v5];
  }

  [(CKBrowserSwitcherFooterView *)self _updateVisibilityState];
}

- (void)animateAppStripVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v21 = a5;
  if (v6)
  {
    v8 = self->_appStripCollectionView;
  }

  else
  {
    v8 = self->_predictiveTypeSnapshotView;
  }

  [(UIView *)self->_predictiveTypeSnapshotView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CKBrowserSwitcherFooterView *)self snapshotVerticalOffset];
  [(UIView *)self->_predictiveTypeSnapshotView setFrame:v10, v15, v12, v14];
  visibleView = self->_visibleView;
  if (visibleView != v8)
  {
    v17 = v8;
    v18 = self->_visibleView;
    self->_visibleView = v17;
    v19 = visibleView;

    [(UIView *)v17 setHidden:0];
    [(UIView *)v17 setUserInteractionEnabled:1];
    if (v5)
    {
      if (v19 == self->_predictiveTypeSnapshotView)
      {
        v20 = 1;
      }

      else
      {
        v20 = -1;
      }

      [(CKAppStripPredictiveTypeTransition *)self->_animator transitionFromView:v19 toView:v17 withDirection:v20 completion:v21];

      goto LABEL_13;
    }

    [(CKBrowserSwitcherFooterView *)self _updateVisibilityState];
  }

  if (v21)
  {
    v21[2](v21, 1);
  }

LABEL_13:
}

- (void)_updateVisibilityState
{
  visibleView = self->_visibleView;
  predictiveTypeSnapshotView = self->_predictiveTypeSnapshotView;
  if (visibleView == predictiveTypeSnapshotView)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (visibleView == predictiveTypeSnapshotView)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [(UIView *)predictiveTypeSnapshotView setAlpha:v5];
  appStripCollectionView = self->_appStripCollectionView;

  [(UICollectionView *)appStripCollectionView setAlpha:v6];
}

- (CKBrowserSwitcherFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CKBrowserSwitcherFooterViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)visibleAppsChanges:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Attempted to present app at invalid indexPath: %@", &v2, 0xCu);
}

@end