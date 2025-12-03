@interface CKBrowserSwitcherFooterView
- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (CGPoint)targetContentOffsetForFocusPoint:(CGPoint)point initialLayoutMode:(unint64_t)mode finalLayoutMode:(unint64_t)layoutMode;
- (CKBrowserSwitcherFooterView)initWithFrame:(CGRect)frame toggleBordersOnInterfaceStyle:(BOOL)style;
- (CKBrowserSwitcherFooterViewDataSource)dataSource;
- (CKBrowserSwitcherFooterViewDelegate)delegate;
- (UIEdgeInsets)insetsForAppStrip;
- (double)contentHeight;
- (double)contentHeightForCameraApps;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateVisibilityState;
- (void)adjustMagnificationAtPoint:(CGPoint)point minifyImmediately:(BOOL)immediately;
- (void)animateAppStripVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)appsLongPressed:(id)pressed;
- (void)clearSelection;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)dealloc;
- (void)installedAppsChanged:(id)changed;
- (void)layoutSubviews;
- (void)minifyImmediately:(BOOL)immediately;
- (void)reloadData;
- (void)resetScrollPosition;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)selectPluginAtIndexPath:(id)path;
- (void)setDataSource:(id)source;
- (void)setInitiallySelectedPluginIfNeeded;
- (void)touchTrackerTrackedTouches:(id)touches;
- (void)transcriptCollectionStartedScrolling:(id)scrolling;
- (void)updateBrowserCell:(id)cell;
- (void)updateCollectionView:(id)view;
- (void)updatePredictiveTypeSnapshot:(id)snapshot;
- (void)visibleAppsChanges:(id)changes;
- (void)willMoveToSuperview:(id)superview;
- (void)willMoveToWindow:(id)window;
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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v7.receiver = self;
  v7.super_class = CKBrowserSwitcherFooterView;
  [(CKBrowserSwitcherFooterView *)&v7 dealloc];
}

- (CKBrowserSwitcherFooterView)initWithFrame:(CGRect)frame toggleBordersOnInterfaceStyle:(BOOL)style
{
  v41.receiver = self;
  v41.super_class = CKBrowserSwitcherFooterView;
  v5 = [(CKBrowserSwitcherFooterView *)&v41 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(CKBrowserSwitcherFooterView *)v5 setBackgroundColor:0];
    v6->_scrollsLastUsedAppIconIntoView = 1;
    v6->_minifiesOnSelection = 1;
    v6->_hideShinyStatus = 1;
    v6->_toggleBordersOnInterfaceStyle = style;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v9 = MEMORY[0x1E695F058];
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v10 = +[CKUIBehavior sharedBehaviors];
      theme = [v10 theme];
      browserSwitcherBorderColor = [theme browserSwitcherBorderColor];

      if (browserSwitcherBorderColor)
      {
        v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*v9, v9[1], v9[2], v9[3]}];
        v14 = +[CKUIBehavior sharedBehaviors];
        theme2 = [v14 theme];
        browserSwitcherBorderColor2 = [theme2 browserSwitcherBorderColor];
        [v13 setBackgroundColor:browserSwitcherBorderColor2];

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
      reuseIdentifier = [(objc_class *)v21 reuseIdentifier];
      [v19 registerClass:v21 forCellWithReuseIdentifier:reuseIdentifier];
    }

    v23 = objc_opt_class();
    v24 = +[CKBrowserSwitcherFooterAccessoryCell supplementryViewKind];
    v25 = +[CKBrowserSwitcherFooterAccessoryCell reuseIdentifier];
    [v19 registerClass:v23 forSupplementaryViewOfKind:v24 withReuseIdentifier:v25];

    [v19 setClipsToBounds:0];
    [v19 setOpaque:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v19 setBackgroundColor:clearColor];

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
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      grayLine = [(CKBrowserSwitcherFooterView *)v6 grayLine];
      [(CKBrowserSwitcherFooterView *)v6 bringSubviewToFront:grayLine];
    }

    v6->_isMagnificationEnabled = 0;
    if (v6->_toggleBordersOnInterfaceStyle)
    {
      traitCollection = [(CKBrowserSwitcherFooterView *)v6 traitCollection];
      -[CKBrowserSwitcherFooterView setShowBorders:](v6, "setShowBorders:", [traitCollection userInterfaceStyle] == 2);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_visibleAppsChanges_ name:@"CKBrowserSelectionControllerVisibleSwitcherPluginsChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel_updateCollectionView_ name:@"CKBrowserSelectionControllerDataSourceChangedNotification" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v6 selector:sel_installedAppsChanged_ name:@"CKBrowserSelectionControllerInstallationsChangedNotification" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v6 selector:sel_updateBrowserCell_ name:*MEMORY[0x1E69A56D0] object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v6 selector:sel_transcriptCollectionStartedScrolling_ name:@"transcriptCollectionViewWillBeginDragging" object:0];
  }

  return v6;
}

- (void)setDataSource:(id)source
{
  objc_storeWeak(&self->_dataSource, source);

  [(CKBrowserSwitcherFooterView *)self reloadData];
}

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = CKBrowserSwitcherFooterView;
  [(CKBrowserSwitcherFooterView *)&v6 willMoveToWindow:?];
  if (!window)
  {
    [(NSTimer *)self->_minificationTimer invalidate];
    minificationTimer = self->_minificationTimer;
    self->_minificationTimer = 0;
  }
}

- (void)willMoveToSuperview:(id)superview
{
  v6.receiver = self;
  v6.super_class = CKBrowserSwitcherFooterView;
  [(CKBrowserSwitcherFooterView *)&v6 willMoveToSuperview:?];
  if (!superview)
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
  grayLine = [(CKBrowserSwitcherFooterView *)self grayLine];
  [(CKBrowserSwitcherFooterView *)self bounds];
  v16 = v15;
  if (CKPixelWidth_once_2 != -1)
  {
    [CKBrowserSwitcherFooterView layoutSubviews];
  }

  [grayLine setFrame:{0.0, 0.0, v16, *&CKPixelWidth_sPixel_2}];

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
    traitCollection = [(CKBrowserSwitcherFooterView *)self traitCollection];
    -[CKBrowserSwitcherFooterView setShowBorders:](self, "setShowBorders:", [traitCollection userInterfaceStyle] == 2);
  }

  [(CKBrowserSwitcherFooterView *)self reloadData];
}

- (void)setInitiallySelectedPluginIfNeeded
{
  delegate = [(CKBrowserSwitcherFooterView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    indexPathsForSelectedItems = [(UICollectionView *)self->_appStripCollectionView indexPathsForSelectedItems];
    v6 = [indexPathsForSelectedItems count];

    if (!v6)
    {
      delegate2 = [(CKBrowserSwitcherFooterView *)self delegate];
      v7 = [delegate2 indexPathOfCurrentlySelectedPluginInSwitcherView:self];
      [(CKBrowserSwitcherFooterView *)self selectPluginAtIndexPath:v7];
    }
  }
}

- (void)selectPluginAtIndexPath:(id)path
{
  pathCopy = path;
  indexPathsForSelectedItems = [(UICollectionView *)self->_appStripCollectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  indexPathsForVisibleItems = [(UICollectionView *)self->_appStripCollectionView indexPathsForVisibleItems];
  if ([indexPathsForVisibleItems containsObject:pathCopy])
  {
    v7 = [(UICollectionView *)self->_appStripCollectionView cellForItemAtIndexPath:pathCopy];
    [v7 frame];
    v9 = v8;
    [(UICollectionView *)self->_appStripCollectionView contentOffset];
    if (v9 >= v10 && ([v7 frame], MaxX = CGRectGetMaxX(v20), -[UICollectionView contentOffset](self->_appStripCollectionView, "contentOffset"), v13 = v12, -[UICollectionView bounds](self->_appStripCollectionView, "bounds"), MaxX <= v13 + v14))
    {
      v16 = 0;
    }

    else
    {
      item = [pathCopy item];
      if (item <= [firstObject item])
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
    item2 = [pathCopy item];
    if (item2 <= [firstObject item])
    {
      v16 = 8;
    }

    else
    {
      v16 = 32;
    }
  }

  if (pathCopy)
  {
    self->_isMagnificationEnabled = 0;
    [(UICollectionView *)self->_appStripCollectionView selectItemAtIndexPath:pathCopy animated:0 scrollPosition:v16];
    self->_isMagnificationEnabled = 1;
  }
}

- (void)resetScrollPosition
{
  appStripCollectionView = [(CKBrowserSwitcherFooterView *)self appStripCollectionView];
  [appStripCollectionView adjustedContentInset];
  v5 = v4;
  v7 = v6;

  appStripCollectionView2 = [(CKBrowserSwitcherFooterView *)self appStripCollectionView];
  [appStripCollectionView2 setContentOffset:{-v7, -v5}];

  [(CKBrowserSwitcherFooterView *)self clearSelection];
}

- (void)clearSelection
{
  v17 = *MEMORY[0x1E69E9840];
  appStripCollectionView = [(CKBrowserSwitcherFooterView *)self appStripCollectionView];
  indexPathsForSelectedItems = [appStripCollectionView indexPathsForSelectedItems];

  if (indexPathsForSelectedItems)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = indexPathsForSelectedItems;
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
          appStripCollectionView2 = [(CKBrowserSwitcherFooterView *)self appStripCollectionView];
          [appStripCollectionView2 deselectItemAtIndexPath:v10 animated:0];

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
  isMagnified = [(CKBrowserSwitcherFooterView *)self isMagnified];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = v3;
  if (isMagnified)
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

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 chatChromeBottomInset];
    goto LABEL_9;
  }

  if ([MEMORY[0x1E69DCBB8] __ck_isUsingCompactHeightPredictionBar])
  {
    v9 = +[CKUIBehavior sharedBehaviors];
    isAppStripInKeyboard = [v9 isAppStripInKeyboard];

    if (isAppStripInKeyboard)
    {
      return 37.0;
    }
  }

  v11 = MEMORY[0x1E69DCBB8];

  [v11 predictionViewHeightForCurrentInputMode];
  return result;
}

- (void)appsLongPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([pressedCopy state] == 1)
  {
    if (!self->_isMagnified)
    {
      v4 = pressedCopy;
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

  [pressedCopy locationInView:self->_appStripCollectionView];
  v7 = v6;
  v9 = v8;
  state = [pressedCopy state];
  if (state == 3)
  {
    [(UICollectionView *)self->_appStripCollectionView endInteractiveMovement];
LABEL_14:
    [(UICollectionView *)self->_appStripCollectionView setEditing:0];
    panGestureRecognizer = [(UICollectionView *)self->_appStripCollectionView panGestureRecognizer];
    [panGestureRecognizer setEnabled:1];

    appStripCollectionView = self->_appStripCollectionView;
    v4 = pressedCopy;
    goto LABEL_15;
  }

  if (state == 2)
  {
    [(UICollectionView *)self->_appStripCollectionView updateInteractiveMovementTargetPosition:v7, v9];
    goto LABEL_16;
  }

  if (state != 1)
  {
    [(UICollectionView *)self->_appStripCollectionView cancelInteractiveMovement];
    goto LABEL_14;
  }

  v11 = self->_appStripCollectionView;
  [pressedCopy locationInView:v11];
  v12 = [(UICollectionView *)v11 indexPathForItemAtPoint:?];
  if (v12)
  {
    [(UICollectionView *)self->_appStripCollectionView setEditing:1];
    [(UICollectionView *)self->_appStripCollectionView beginInteractiveMovementForItemAtIndexPath:v12];
    panGestureRecognizer2 = [(UICollectionView *)self->_appStripCollectionView panGestureRecognizer];
    [panGestureRecognizer2 setEnabled:0];
  }

LABEL_16:
}

- (void)touchTrackerTrackedTouches:(id)touches
{
  state = [touches state];
  if ((state - 4) < 2)
  {
    selfCopy2 = self;
    v6 = 1;
  }

  else
  {
    if (state != 3)
    {
      if (state == 1)
      {
        self->_hasTouches = 1;
      }

      return;
    }

    selfCopy2 = self;
    v6 = 0;
  }

  [(CKBrowserSwitcherFooterView *)selfCopy2 minifyImmediately:v6];
}

- (void)minifyImmediately:(BOOL)immediately
{
  self->_hasTouches = 0;
  if (self->_isMagnified)
  {
    immediatelyCopy = immediately;
    [(UILongPressGestureRecognizer *)self->_longPressRecognizer locationInView:self->_appStripCollectionView];

    [(CKBrowserSwitcherFooterView *)self adjustMagnificationAtPoint:immediatelyCopy minifyImmediately:?];
  }
}

- (CGPoint)targetContentOffsetForFocusPoint:(CGPoint)point initialLayoutMode:(unint64_t)mode finalLayoutMode:(unint64_t)layoutMode
{
  x = point.x;
  [(UICollectionView *)self->_appStripCollectionView contentOffset:point.x];
  v10 = v9;
  v12 = v11;
  if (mode != 1 || v9 != -self->_minifiedContentInsets.left)
  {
    [(CKAppStripLayout *)self->_appStripLayout collectionViewContentSizeForLayoutMode:mode];
    v14 = v13;
    [(CKAppStripLayout *)self->_appStripLayout collectionViewContentSizeForLayoutMode:layoutMode];
    v10 = (x + v10) / v14 * v15 - x;
  }

  v16 = v10;
  v17 = v12;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)adjustMagnificationAtPoint:(CGPoint)point minifyImmediately:(BOOL)immediately
{
  if (self->_isMagnificationEnabled)
  {
    y = point.y;
    x = point.x;
    if (![(UICollectionView *)self->_appStripCollectionView isEditing])
    {
      v8 = 0.0;
      if (!immediately)
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
      immediatelyCopy = immediately;
      v18[1] = *&x;
      v18[2] = *&y;
      selfCopy = self;
      v10 = [v9 scheduledTimerWithTimeInterval:0 repeats:&v13 block:v8];
      minificationTimer = self->_minificationTimer;
      self->_minificationTimer = v10;

      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      [currentRunLoop addTimer:self->_minificationTimer forMode:*MEMORY[0x1E695DA28]];

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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  if (self->_isMagnificationEnabled && !self->_isDoingMagnificationAnimation)
  {
    v8 = draggingCopy;
    isEditing = [(UICollectionView *)self->_appStripCollectionView isEditing];
    draggingCopy = v8;
    if (!isEditing)
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
      draggingCopy = v8;
    }
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [viewCopy cellForItemAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    superview = [v7 superview];
    [v7 center];
    [superview convertPoint:self toView:?];
    v10 = v9;
    v12 = v11;

    delegate = [(CKBrowserSwitcherFooterView *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate2 = [(CKBrowserSwitcherFooterView *)self delegate];
      v16 = [delegate2 indexPathOfCurrentlySelectedPluginInSwitcherView:self];

      if (v16 && [pathCopy isEqual:v16])
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

    if ([pathCopy section] == 1)
    {
      v17 = [pathCopy row];
      v18 = v17 == [viewCopy numberOfItemsInSection:1] - 1;
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
    if ([pathCopy section] == 1)
    {
      v19 = [pathCopy row];
      v20 = +[CKBalloonPluginManager sharedInstance];
      visibleFavoriteAppStripPlugins = [v20 visibleFavoriteAppStripPlugins];
      v22 = [visibleFavoriteAppStripPlugins count];

      v23 = [MEMORY[0x1E696AC88] indexPathForRow:v22 + v19 inSection:0];

      pathCopy = v23;
    }

    delegate3 = [(CKBrowserSwitcherFooterView *)self delegate];
    [delegate3 switcherView:self didSelectPluginAtIndex:pathCopy];

    self->_ignoreDataSourceChanges = 0;
    goto LABEL_16;
  }

LABEL_17:
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v4 = [view cellForItemAtIndexPath:path];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if ([pathCopy section] != 1 || objc_msgSend(indexPathCopy, "section") != 1)
  {
    if (![pathCopy section] && objc_msgSend(indexPathCopy, "section") == 1)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:1];
      goto LABEL_14;
    }

    if (![indexPathCopy section])
    {
      v9 = +[CKBalloonPluginManager sharedInstance];
      isAppStoreEnabled = [v9 isAppStoreEnabled];

      if (isAppStoreEnabled)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      if ([indexPathCopy item] <= v11)
      {
        v8 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:0];
      }

      else
      {
        v8 = indexPathCopy;
      }

      goto LABEL_14;
    }
  }

  v8 = pathCopy;
LABEL_14:
  v12 = v8;

  return v12;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  dataSource = [(CKBrowserSwitcherFooterView *)self dataSource];
  v7 = [dataSource numberOfPluginsInSwitcherView:self forSection:section];

  return v7;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v22 = 0;
  pathCopy = path;
  viewCopy = view;
  dataSource = [(CKBrowserSwitcherFooterView *)self dataSource];
  v9 = [dataSource switcherView:self modelAtIndexPath:pathCopy type:&v22];

  v10 = [(objc_class *)[CKBrowserCell classForItemType:?]];
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];

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
      browserImage = [v12 browserImage];
      layer = [browserImage layer];
      appStripLayout = [(CKBrowserSwitcherFooterView *)self appStripLayout];
      shouldDimPluginCells = [appStripLayout shouldDimPluginCells];
      v17 = +[CKUIBehavior sharedBehaviors];
      theme = [v17 theme];
      v19 = theme;
      if (shouldDimPluginCells)
      {
        [theme browserAppStripDimmedPluginCellOpacity];
      }

      else
      {
        [theme browserAppStripLightPluginCellOpacity];
      }

      *&v20 = v20;
      [layer setOpacity:v20];
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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CKBrowserSwitcherFooterAccessoryCell supplementryViewKind];
  v9 = +[CKBrowserSwitcherFooterAccessoryCell reuseIdentifier];
  v10 = [viewCopy dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:pathCopy];

  +[CKAppStripLayout maxHeight];
  [v10 setMaxHeight:?];
  +[CKAppStripLayout minHeight];
  [v10 setMinHeight:?];

  return v10;
}

- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (CKIsRunningInCameraAppsClient())
  {
    goto LABEL_13;
  }

  v6 = ![pathCopy section] && objc_msgSend(pathCopy, "item") == 0;
  if ([pathCopy section] || objc_msgSend(pathCopy, "item") != 1)
  {
    isAppStoreEnabled = 0;
  }

  else
  {
    v7 = +[CKBalloonPluginManager sharedInstance];
    isAppStoreEnabled = [v7 isAppStoreEnabled];
  }

  if ([pathCopy section] == 1)
  {
    item = [pathCopy item];
    v10 = item != [(UICollectionView *)self->_appStripCollectionView numberOfItemsInSection:1]- 1;
  }

  else
  {
    v10 = 1;
  }

  v15 = 0;
  dataSource = [(CKBrowserSwitcherFooterView *)self dataSource];
  v12 = [dataSource switcherView:self modelAtIndexPath:pathCopy type:&v15];

  if ((v6 | isAppStoreEnabled))
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

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  v12 = 0;
  pathCopy = path;
  dataSource = [(CKBrowserSwitcherFooterView *)self dataSource];
  v10 = [dataSource switcherView:self modelAtIndexPath:pathCopy type:&v12];

  if (v12 == 1)
  {
    v11 = +[CKBalloonPluginManager sharedInstance];
    [v11 updateIndexPath:indexPathCopy forPlugin:v10 isDrawerPluginPath:1];
  }
}

- (void)visibleAppsChanges:(id)changes
{
  v27 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  if ([(CKBrowserSwitcherFooterView *)self scrollsLastUsedAppIconIntoView])
  {
    userInfo = [changesCopy userInfo];
    v6 = [userInfo objectForKey:@"CKBrowserSelectionControllerInstalledPluginsKey"];

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
            dataSource = [(CKBrowserSwitcherFooterView *)self dataSource];
            v15 = [dataSource switcherView:self indexPathOfModelWithIdentifier:v13];

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

- (void)updateCollectionView:(id)view
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CKBrowserSwitcherFooterView_updateCollectionView___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)installedAppsChanged:(id)changed
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

  indexPathsForSelectedItems = [(UICollectionView *)self->_appStripCollectionView indexPathsForSelectedItems];
  lastObject = [indexPathsForSelectedItems lastObject];

  [(CKAppStripLayout *)self->_appStripLayout invalidateCachedLayout];
  [(UICollectionView *)self->_appStripCollectionView reloadData];
  v5 = [(UICollectionView *)self->_appStripCollectionView numberOfItemsInSection:0];
  if ([lastObject item] < v5 - 1)
  {
    v6 = lastObject;
    if (!lastObject)
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

- (void)updateBrowserCell:(id)cell
{
  cellCopy = cell;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CKBrowserSwitcherFooterView_updateBrowserCell___block_invoke;
  v6[3] = &unk_1E72EB8D0;
  v7 = cellCopy;
  selfCopy = self;
  v5 = cellCopy;
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

- (void)transcriptCollectionStartedScrolling:(id)scrolling
{
  scrollingCopy = scrolling;
  if (self->_isMagnified && !self->_isMinifyingOnTranscriptScroll)
  {
    self->_isMinifyingOnTranscriptScroll = 1;
    v5 = scrollingCopy;
    [(CKBrowserSwitcherFooterView *)self minifyImmediately:1];
    scrollingCopy = v5;
  }
}

- (void)updatePredictiveTypeSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  [(UIView *)self->_predictiveTypeSnapshotView removeFromSuperview];
  if (snapshotCopy)
  {
    objc_storeStrong(&self->_predictiveTypeSnapshotView, snapshot);
    if (!self->_visibleView)
    {
      objc_storeStrong(&self->_visibleView, snapshot);
    }

    [(CKBrowserSwitcherFooterView *)self addSubview:snapshotCopy];
  }

  [(CKBrowserSwitcherFooterView *)self _updateVisibilityState];
}

- (void)animateAppStripVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  completionCopy = completion;
  if (visibleCopy)
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
    if (animatedCopy)
    {
      if (v19 == self->_predictiveTypeSnapshotView)
      {
        v20 = 1;
      }

      else
      {
        v20 = -1;
      }

      [(CKAppStripPredictiveTypeTransition *)self->_animator transitionFromView:v19 toView:v17 withDirection:v20 completion:completionCopy];

      goto LABEL_13;
    }

    [(CKBrowserSwitcherFooterView *)self _updateVisibilityState];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
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