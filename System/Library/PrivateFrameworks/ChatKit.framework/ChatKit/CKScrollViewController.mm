@interface CKScrollViewController
+ (id)scrollGeometryUpdaterLogHandle;
- (BOOL)isKeyboardUndocked;
- (BOOL)manuallyUpdateKeyboardScreenFrameWithFrameIfNeeded:(CGRect)needed animationDuration:(double)duration animationCurve:(int64_t)curve;
- (BOOL)scrollGeometryContentInsetIsUpdatingForReasons:(id)reasons followingHoldForReason:(id)reason withAnimationProperties:(id)properties;
- (CGRect)inputAccessoryViewFrameForFloatingKeyboard;
- (CGRect)keyboardFrameInViewCoordinates;
- (CGRect)keyboardScreenFrame;
- (CGRect)screenFrameForNotification:(id)notification;
- (CGSize)contentSizeForPinning;
- (CKScrollViewController)init;
- (UIEdgeInsets)_calculateContentInsets;
- (UIEdgeInsets)bannerInsets;
- (UIEdgeInsets)computedInsets;
- (UIEdgeInsets)macToolbarInsets;
- (UIEdgeInsets)navigationBarInsets;
- (UIEdgeInsets)navigationBarInsetsWithoutPalette;
- (double)_bottomRotatingFooterHeight;
- (double)_visibleKeyboardHeight;
- (double)accessoryViewHeight;
- (double)bottomInsetWithoutAccessoryView;
- (double)visibleHeightAboveKeyboard;
- (id)scrollGeometryUpdaterLogHandle;
- (void)_entryViewWillRotate:(id)rotate;
- (void)_keyboardWillShowOrHide:(id)hide;
- (void)_updateKeyboardScreenFrameForShowOrHideWithNewScreenFrame:(CGRect)frame previousFrame:(CGRect)previousFrame duration:(double)duration animationCurve:(int64_t)curve isShowEvent:(BOOL)event;
- (void)inputAccessoryViewFrameUpdatedForFloatingKeyboard;
- (void)keyboardDidChangeFrame:(id)frame;
- (void)keyboardDidHide:(id)hide;
- (void)keyboardDidShow:(id)show;
- (void)keyboardWillShow:(id)show;
- (void)primeWithKeyboardFrame:(CGRect)frame;
- (void)reasonTrackingUpdater:(id)updater didBeginHoldingUpdatesWithInitialReason:(id)reason;
- (void)reasonTrackingUpdater:(id)updater didEndHoldingUpdatesWithFinalReason:(id)reason;
- (void)reasonTrackingUpdater:(id)updater needsUpdateForReasons:(id)reasons followingHoldForReason:(id)reason;
- (void)scrollGeometryIsUpdatingForReasons:(id)reasons followingHoldForReason:(id)reason;
- (void)scrollWithDuration:(double)duration animationCurve:(int64_t)curve scrollBlock:(id)block;
- (void)setKeyboardScreenFrame:(CGRect)frame;
- (void)setKeyboardVisible:(BOOL)visible;
- (void)updateScrollGeometryForReason:(id)reason withDuration:(double)duration animationCurve:(int64_t)curve;
- (void)updateScrollGeometryWithInheritedAnimationForReason:(id)reason;
- (void)updateScrollGeometryWithoutAnimationForReason:(id)reason;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation CKScrollViewController

- (UIEdgeInsets)navigationBarInsetsWithoutPalette
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  navigationController = [(CKScrollViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  v9 = +[CKUIBehavior sharedBehaviors];
  shouldInsetForStatusBar = [v9 shouldInsetForStatusBar];

  if (shouldInsetForStatusBar)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    statusBar = [mEMORY[0x1E69DC668] statusBar];

    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    isStatusBarHidden = [mEMORY[0x1E69DC668]2 isStatusBarHidden];

    if ((isStatusBarHidden & 1) == 0)
    {
      [statusBar currentHeight];
      v3 = v15;
    }
  }

  else
  {
    v16 = +[CKUIBehavior sharedBehaviors];
    useMacToolbar = [v16 useMacToolbar];

    if (useMacToolbar)
    {
      [(CKScrollViewController *)self macToolbarInsets];
      v3 = v18;
      v4 = v19;
      v6 = v20;
      v5 = v21;
    }

    else if (([navigationBar isTranslucent] & 1) != 0 || (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "shouldInsetForStatusBarWithSafeArea"), v22, v23))
    {
      view = [(CKScrollViewController *)self view];
      [view safeAreaInsets];
      v3 = v25;

      v5 = 0.0;
      v6 = 0.0;
      v4 = 0.0;
    }
  }

  v26 = v3;
  v27 = v4;
  v28 = v6;
  v29 = v5;
  result.right = v29;
  result.bottom = v28;
  result.left = v27;
  result.top = v26;
  return result;
}

- (UIEdgeInsets)navigationBarInsets
{
  [(CKScrollViewController *)self navigationBarInsetsWithoutPalette];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  navigationController = [(CKScrollViewController *)self navigationController];
  v12 = [navigationController existingPaletteForEdge:2];

  if (v12 && [v12 isAttached])
  {
    [v12 frame];
    v4 = v4 + v13;
  }

  v14 = v4;
  v15 = v6;
  v16 = v8;
  v17 = v10;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (double)_bottomRotatingFooterHeight
{
  rotatingFooterView = [(CKScrollViewController *)self rotatingFooterView];
  window = [rotatingFooterView window];

  if (window)
  {
    [rotatingFooterView frame];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (CGRect)keyboardScreenFrame
{
  x = self->_keyboardScreenFrame.origin.x;
  y = self->_keyboardScreenFrame.origin.y;
  width = self->_keyboardScreenFrame.size.width;
  height = self->_keyboardScreenFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)_visibleKeyboardHeight
{
  v3 = 0.0;
  if (![(CKScrollViewController *)self isKeyboardFloating])
  {
    [(CKScrollViewController *)self keyboardFrame];
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    if (!CGRectIsEmpty(v46))
    {
      view = [(CKScrollViewController *)self view];
      [view convertRect:0 fromView:{x, y, width, height}];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      view2 = [(CKScrollViewController *)self view];
      [view2 bounds];
      v52.origin.x = v10;
      v52.origin.y = v12;
      v52.size.width = v14;
      v52.size.height = v16;
      v48 = CGRectIntersection(v47, v52);
      v18 = v48.origin.x;
      v19 = v48.origin.y;
      v20 = v48.size.width;
      v21 = v48.size.height;

      v49.origin.x = v18;
      v49.origin.y = v19;
      v49.size.width = v20;
      v49.size.height = v21;
      if (!CGRectIsEmpty(v49))
      {
        view3 = [(CKScrollViewController *)self view];
        [view3 bounds];
        MaxY = CGRectGetMaxY(v50);
        v51.origin.x = v18;
        v51.origin.y = v19;
        v51.size.width = v20;
        v51.size.height = v21;
        v3 = MaxY - CGRectGetMinY(v51);
LABEL_21:

        return v3;
      }

      if (x != *MEMORY[0x1E695EFF8] || y != *(MEMORY[0x1E695EFF8] + 8))
      {
        v23 = CKIsRunningInMessagesViewService();
        view4 = [(CKScrollViewController *)self view];
        v25 = view4;
        if (v23)
        {
          window = [view4 window];

          windowScene = [window windowScene];
          screen = [windowScene screen];
          coordinateSpace = [screen coordinateSpace];
          coordinateSpace2 = [windowScene coordinateSpace];
          [coordinateSpace convertRect:coordinateSpace2 toCoordinateSpace:{x, y, width, height}];
          v32 = v31;

          v25 = window;
        }

        else
        {
          CKKeyboardFrameInViewCoodinates(view4, x, y, width, height);
          v32 = v40;
        }

        v3 = 0.0;

        if (v32 == 0.0)
        {
          view3 = IMLogHandleForCategory();
          if (os_log_type_enabled(view3, OS_LOG_TYPE_ERROR))
          {
            [(CKScrollViewController *)view3 _visibleKeyboardHeight];
          }
        }

        else
        {
          view3 = [(CKScrollViewController *)self view];
          [view3 frame];
          v3 = v44 - v32;
        }

        goto LABEL_21;
      }

      firstResponder = [(CKScrollViewController *)self firstResponder];
      inputAccessoryViewController = [firstResponder inputAccessoryViewController];
      view5 = [inputAccessoryViewController view];
      v38 = view5;
      if (view5)
      {
        inputAccessoryView = view5;
      }

      else
      {
        inputAccessoryView = [(CKScrollViewController *)self inputAccessoryView];
      }

      v41 = inputAccessoryView;

      if (v41)
      {
        inputAccessoryView2 = [(CKScrollViewController *)self inputAccessoryView];
        [inputAccessoryView2 frame];
        v3 = v43;
      }

      else
      {
        v3 = 0.0;
      }
    }
  }

  return v3;
}

- (UIEdgeInsets)_calculateContentInsets
{
  v3 = MEMORY[0x1E69DDCE0];
  if ([(CKScrollViewController *)self topInsetIncludesPalette])
  {
    [(CKScrollViewController *)self navigationBarInsets];
  }

  else
  {
    [(CKScrollViewController *)self navigationBarInsetsWithoutPalette];
  }

  v5 = v4;
  v6 = *(v3 + 8);
  v7 = *(v3 + 24);
  [(CKScrollViewController *)self topInsetPadding];
  v9 = v5 + v8;
  v10 = 0.0;
  if ([(CKScrollViewController *)self isUsingVisibleInputViewHeightWhenUpdatingScrollGeometry])
  {
    [(CKScrollViewController *)self visibleInputViewHeight];
    v10 = v11;
  }

  [(CKScrollViewController *)self _bottomRotatingFooterHeight];
  v13 = v12;
  [(CKScrollViewController *)self bottomInsetPadding];
  if (v10 >= v13)
  {
    v15 = v10;
  }

  else
  {
    v15 = v13;
  }

  v16 = v14 + v15;
  [(CKScrollViewController *)self minimumBottomInset];
  if (v16 < v17)
  {
    v16 = v17;
  }

  [(CKScrollViewController *)self setComputedInsets:v9, v6, v16, v7];
  [(CKScrollViewController *)self adjustedContentInsetsForComputedInsets:v9, v6, v16, v7];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if (self->_enableContentPinning)
  {
    [(CKScrollViewController *)self contentSizeForPinning];
    v26 = v25;
    scrollView = [(CKScrollViewController *)self scrollView];
    [scrollView frame];
    Height = CGRectGetHeight(v33);

    v18 = 0.0;
    if (v26 < Height - v22)
    {
      v29 = Height - v22 - v26;
      if (v22 <= self->_contentPinningThreshold)
      {
        v29 = v29 * 0.5;
      }

      v18 = fmax(v29, 0.0);
    }
  }

  v30 = v20;
  v31 = v22;
  v32 = v24;
  result.right = v32;
  result.bottom = v31;
  result.left = v30;
  result.top = v18;
  return result;
}

- (UIEdgeInsets)computedInsets
{
  if ([(CKScrollViewController *)self hasSetComputedInsets])
  {
    top = self->_computedInsets.top;
    left = self->_computedInsets.left;
    bottom = self->_computedInsets.bottom;
    right = self->_computedInsets.right;
  }

  else
  {
    scrollView = [(CKScrollViewController *)self scrollView];
    [scrollView contentInset];
    top = v8;
    left = v9;
    bottom = v10;
    right = v11;
  }

  v12 = top;
  v13 = left;
  v14 = bottom;
  v15 = right;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (CKScrollViewController)init
{
  v8.receiver = self;
  v8.super_class = CKScrollViewController;
  v2 = [(CKScrollViewController *)&v8 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [defaultCenter addObserver:v2 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    [defaultCenter addObserver:v2 selector:sel_keyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];
    [defaultCenter addObserver:v2 selector:sel_keyboardDidHide_ name:*MEMORY[0x1E69DDF70] object:0];
    [defaultCenter addObserver:v2 selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x1E69DDF68] object:0];
    [defaultCenter addObserver:v2 selector:sel__changedStatusBarFrame_ name:*MEMORY[0x1E69DDAB8] object:0];
    [defaultCenter addObserver:v2 selector:sel__entryViewWillRotate_ name:*MEMORY[0x1E69DDE58] object:0];
    scrollGeometryUpdaterLogHandle = [(CKScrollViewController *)v2 scrollGeometryUpdaterLogHandle];
    v5 = [objc_alloc(MEMORY[0x1E69A81E0]) initWithLogHandle:scrollGeometryUpdaterLogHandle delegate:v2];
    scrollGeometryUpdater = v2->_scrollGeometryUpdater;
    v2->_scrollGeometryUpdater = v5;
  }

  return v2;
}

+ (id)scrollGeometryUpdaterLogHandle
{
  if (scrollGeometryUpdaterLogHandle_onceToken != -1)
  {
    +[CKScrollViewController scrollGeometryUpdaterLogHandle];
  }

  v3 = scrollGeometryUpdaterLogHandle_sLogHandle;

  return v3;
}

void __56__CKScrollViewController_scrollGeometryUpdaterLogHandle__block_invoke()
{
  v0 = os_log_create("com.apple.Messages", "CKScrollViewGeometryUpdater");
  v1 = scrollGeometryUpdaterLogHandle_sLogHandle;
  scrollGeometryUpdaterLogHandle_sLogHandle = v0;
}

- (id)scrollGeometryUpdaterLogHandle
{
  v2 = objc_opt_class();

  return [v2 scrollGeometryUpdaterLogHandle];
}

- (CGRect)inputAccessoryViewFrameForFloatingKeyboard
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)inputAccessoryViewFrameUpdatedForFloatingKeyboard
{
  view = [(CKScrollViewController *)self view];
  window = [view window];

  if (window)
  {
    view2 = [(CKScrollViewController *)self view];
    window2 = [view2 window];
    [window2 bounds];
    MaxY = CGRectGetMaxY(v16);
    [(CKScrollViewController *)self inputAccessoryViewFrameForFloatingKeyboard];
    v8 = MaxY - CGRectGetHeight(v17);

    view3 = [(CKScrollViewController *)self view];
    window3 = [view3 window];
    [window3 bounds];
    MaxX = CGRectGetMaxX(v18);
    [(CKScrollViewController *)self inputAccessoryViewFrameForFloatingKeyboard];
    v12 = MaxX - CGRectGetWidth(v19);

    [(CKScrollViewController *)self inputAccessoryViewFrameForFloatingKeyboard];
    Width = CGRectGetWidth(v20);
    [(CKScrollViewController *)self accessoryViewHeight];
    [(CKScrollViewController *)self setKeyboardScreenFrame:v12, v8, Width, v14];

    [(CKScrollViewController *)self updateScrollGeometryWithoutAnimationForReason:@"InputAccessoryFrameChanged"];
  }
}

- (void)setKeyboardScreenFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if ([(CKScrollViewController *)self isKeyboardFloating])
  {
    view = [(CKScrollViewController *)self view];
    window = [view window];
    [window bounds];
    MaxY = CGRectGetMaxY(v15);
    [(CKScrollViewController *)self inputAccessoryViewFrameForFloatingKeyboard];
    y = MaxY - CGRectGetHeight(v16);

    view2 = [(CKScrollViewController *)self view];
    window2 = [view2 window];
    [window2 bounds];
    MaxX = CGRectGetMaxX(v17);
    [(CKScrollViewController *)self inputAccessoryViewFrameForFloatingKeyboard];
    x = MaxX - CGRectGetWidth(v18);

    p_keyboardScreenFrame = &self->_keyboardScreenFrame;
    [(CKScrollViewController *)self inputAccessoryViewFrameForFloatingKeyboard];
    width = CGRectGetWidth(v19);
    [(CKScrollViewController *)self inputAccessoryViewFrameForFloatingKeyboard];
    height = CGRectGetHeight(v20);
  }

  else
  {
    p_keyboardScreenFrame = &self->_keyboardScreenFrame;
  }

  p_keyboardScreenFrame->origin.x = x;
  p_keyboardScreenFrame->origin.y = y;
  p_keyboardScreenFrame->size.width = width;
  p_keyboardScreenFrame->size.height = height;
}

- (void)keyboardWillShow:(id)show
{
  showCopy = show;
  [(CKScrollViewController *)self setKeyboardVisible:1];
  [(CKScrollViewController *)self _keyboardWillShowOrHide:showCopy];
}

- (void)_keyboardWillShowOrHide:(id)hide
{
  hideCopy = hide;
  [(CKScrollViewController *)self screenFrameForNotification:hideCopy];
  v39 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  userInfo = [hideCopy userInfo];
  v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDF98]];
  [v13 CGRectValue];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  view = [(CKScrollViewController *)self view];
  v23 = CKKeyboardFrameInViewCoodinates(view, v15, v17, v19, v21);
  v25 = v24;
  v27 = v26;
  v29 = v28;

  userInfo2 = [hideCopy userInfo];
  v31 = [userInfo2 objectForKey:*MEMORY[0x1E69DDF40]];
  [v31 floatValue];
  v33 = v32;

  userInfo3 = [hideCopy userInfo];
  v35 = [userInfo3 objectForKey:*MEMORY[0x1E69DDF38]];
  integerValue = [v35 integerValue];

  name = [hideCopy name];

  v38 = [name isEqualToString:*MEMORY[0x1E69DE080]];
  [(CKScrollViewController *)self _updateKeyboardScreenFrameForShowOrHideWithNewScreenFrame:integerValue previousFrame:v38 duration:v39 animationCurve:v7 isShowEvent:v9, v11, v23, v25, v27, v29, *&v33];
}

- (void)_updateKeyboardScreenFrameForShowOrHideWithNewScreenFrame:(CGRect)frame previousFrame:(CGRect)previousFrame duration:(double)duration animationCurve:(int64_t)curve isShowEvent:(BOOL)event
{
  width = previousFrame.size.width;
  rect2 = previousFrame.size.height;
  y = previousFrame.origin.y;
  x = previousFrame.origin.x;
  height = frame.size.height;
  v10 = frame.size.width;
  v11 = frame.origin.y;
  v12 = frame.origin.x;
  view = [(CKScrollViewController *)self view];
  v15 = CKKeyboardFrameInViewCoodinates(view, v12, v11, v10, height);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(CKScrollViewController *)self keyboardFrame];
  v60.origin.x = v22;
  v60.origin.y = v23;
  v60.size.width = v24;
  v60.size.height = v25;
  v58.origin.x = v15;
  v52 = v17;
  v58.origin.y = v17;
  v58.size.width = v19;
  v58.size.height = v21;
  if (CGRectEqualToRect(v58, v60) || (v59.origin.x = v15, v59.origin.y = v17, v61.origin.y = y, v59.size.width = v19, v59.size.height = v21, v61.origin.x = x, v61.size.width = width, v61.size.height = rect2, CGRectEqualToRect(v59, v61)))
  {
    [(CKScrollViewController *)self setKeyboardInteractionCancelled:1];
  }

  [(CKScrollViewController *)self setKeyboardScreenFrame:v12, v11, v10, height];
  shouldIgnoreKeyboardAnimationDuration = [(CKScrollViewController *)self shouldIgnoreKeyboardAnimationDuration];
  durationCopy = 0.0;
  if (![(CKScrollViewController *)self keyboardInteractionCancelled])
  {
    [(CKScrollViewController *)self _visibleKeyboardHeight];
    if (v28 > 0.0 && !shouldIgnoreKeyboardAnimationDuration)
    {
      durationCopy = duration;
      if (duration > 0.0)
      {
        v29 = objc_alloc_init(MEMORY[0x1E69DCF88]);
        [v29 settlingDuration];
        v31 = v30;

        v32 = [CKScrollViewAnimationProperties animatedWithDuration:curve animationCurve:v31];
        [(CKScrollViewController *)self setActiveKeyboardAppearanceAnimationProperties:v32];
        objc_initWeak(&location, self);
        v33 = dispatch_time(0, (v31 * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __134__CKScrollViewController__updateKeyboardScreenFrameForShowOrHideWithNewScreenFrame_previousFrame_duration_animationCurve_isShowEvent___block_invoke;
        block[3] = &unk_1E72EBB98;
        objc_copyWeak(&v56, &location);
        v55 = v32;
        v34 = v32;
        dispatch_after(v33, MEMORY[0x1E69E96A0], block);

        objc_destroyWeak(&v56);
        objc_destroyWeak(&location);
      }
    }
  }

  [(CKScrollViewController *)self updateScrollGeometryForReason:@"KeyboardScreenFrameChanged" withDuration:curve animationCurve:durationCopy];
  v35 = +[CKUIBehavior sharedBehaviors];
  isEntryViewInputAccessory = [v35 isEntryViewInputAccessory];

  if (isEntryViewInputAccessory)
  {
    [(CKScrollViewController *)self accessoryViewHeight];
    v38 = v37;
    firstResponder = [(CKScrollViewController *)self firstResponder];
    inputAccessoryViewController = [firstResponder inputAccessoryViewController];
    view2 = [inputAccessoryViewController view];
    v42 = view2;
    if (view2)
    {
      inputAccessoryView = view2;
    }

    else
    {
      firstResponder2 = [(CKScrollViewController *)self firstResponder];
      inputAccessoryView = [firstResponder2 inputAccessoryView];
    }

    scrollView = [(CKScrollViewController *)self scrollView];
    [scrollView contentInset];
    v48 = v46 != v38 || inputAccessoryView == 0;

    event = v52 <= y || v48;
  }

  if (![(CKScrollViewController *)self keyboardInteractionCancelled]&& !event)
  {
    [(CKScrollViewController *)self keyboardWillHideViaGesture];
  }
}

void __134__CKScrollViewController__updateKeyboardScreenFrameForShowOrHideWithNewScreenFrame_previousFrame_duration_animationCurve_isShowEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained activeKeyboardAppearanceAnimationProperties];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 setActiveKeyboardAppearanceAnimationProperties:0];
  }
}

- (void)scrollWithDuration:(double)duration animationCurve:(int64_t)curve scrollBlock:(id)block
{
  blockCopy = block;
  v11 = blockCopy;
  if (duration <= 0.0)
  {
    [MEMORY[0x1E69DD250] performWithoutAnimation:blockCopy];
    goto LABEL_8;
  }

  if (UIViewAnimationCurveForCKAnimationCurve(103) == curve)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:333.34153 damping:36.51529 initialVelocity:{0.0, 0.0}];
LABEL_7:
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:duration];
    [v10 addAnimations:v11];
    [v10 startAnimation];

    goto LABEL_8;
  }

  if ((UIViewAnimationCurveForCKAnimationCurve(7) & curve) != 0)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DCF88]);
    goto LABEL_7;
  }

  [MEMORY[0x1E69DD250] animateWithDuration:curve << 16 delay:v11 options:0 animations:duration completion:0.0];
LABEL_8:
}

- (void)keyboardDidShow:(id)show
{
  [(CKScrollViewController *)self setActiveKeyboardAppearanceAnimationProperties:0];
  [(CKScrollViewController *)self updateScrollGeometryWithoutAnimationForReason:@"KeyboardDidShow"];

  [(CKScrollViewController *)self setKeyboardInteractionCancelled:0];
}

- (void)keyboardDidHide:(id)hide
{
  [(CKScrollViewController *)self setKeyboardVisible:0];
  [(CKScrollViewController *)self updateScrollGeometryWithoutAnimationForReason:@"KeyboardDidHide"];

  [(CKScrollViewController *)self setKeyboardInteractionCancelled:0];
}

- (void)keyboardDidChangeFrame:(id)frame
{
  v40 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  view = [(CKScrollViewController *)self view];
  window = [view window];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  keyWindow = [mEMORY[0x1E69DC668] keyWindow];

  if (window == keyWindow)
  {
    [(CKScrollViewController *)self screenFrameForNotification:frameCopy];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    view2 = [(CKScrollViewController *)self view];
    v18 = CKKeyboardFrameInViewCoodinates(view2, v10, v12, v14, v16);
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v41.origin.x = v18;
    v41.origin.y = v20;
    v41.size.width = v22;
    v41.size.height = v24;
    if (CGRectIsEmpty(v41))
    {
      scrollView2 = IMLogHandleForCategory();
      if (os_log_type_enabled(scrollView2, OS_LOG_TYPE_INFO))
      {
        LOWORD(v38) = 0;
        v26 = "Ignoring keyboard frame change because frame is empty";
LABEL_19:
        _os_log_impl(&dword_19020E000, scrollView2, OS_LOG_TYPE_INFO, v26, &v38, 2u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    [(CKScrollViewController *)self keyboardFrame];
    v43.origin.x = v27;
    v43.origin.y = v28;
    v43.size.width = v29;
    v43.size.height = v30;
    v42.origin.x = v18;
    v42.origin.y = v20;
    v42.size.width = v22;
    v42.size.height = v24;
    v31 = CGRectEqualToRect(v42, v43);
    scrollView2 = IMLogHandleForCategory();
    v32 = os_log_type_enabled(scrollView2, OS_LOG_TYPE_INFO);
    if (v31)
    {
      if (v32)
      {
        LOWORD(v38) = 0;
        v26 = "Ignoring keyboard frame change because value has not changed";
        goto LABEL_19;
      }

LABEL_20:

      goto LABEL_21;
    }

    if (v32)
    {
      LOWORD(v38) = 0;
      _os_log_impl(&dword_19020E000, scrollView2, OS_LOG_TYPE_INFO, "Updating keyboard screen frame", &v38, 2u);
    }

    [(CKScrollViewController *)self setKeyboardScreenFrame:v10, v12, v14, v16];
    shouldUpdateScrollPositionForKeyboardScreenFrameChanges = [(CKScrollViewController *)self shouldUpdateScrollPositionForKeyboardScreenFrameChanges];
    scrollView2 = IMLogHandleForCategory();
    v34 = os_log_type_enabled(scrollView2, OS_LOG_TYPE_INFO);
    if (!shouldUpdateScrollPositionForKeyboardScreenFrameChanges)
    {
      if (v34)
      {
        LOWORD(v38) = 0;
        v26 = "Not updating scroll position due to current view controller configuration.";
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (v34)
    {
      v38 = 138412290;
      v39 = @"KeyboardDidChangeFrame";
      _os_log_impl(&dword_19020E000, scrollView2, OS_LOG_TYPE_INFO, "Updating scroll geometry for reason: %@", &v38, 0xCu);
    }

    [(CKScrollViewController *)self updateScrollGeometryWithoutAnimationForReason:@"KeyboardDidChangeFrame"];
    scrollView = [(CKScrollViewController *)self scrollView];
    __ck_isScrolledToBottom = [scrollView __ck_isScrolledToBottom];

    if (__ck_isScrolledToBottom)
    {
      v37 = IMLogHandleForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        LOWORD(v38) = 0;
        _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "Is scrolling to bottom", &v38, 2u);
      }

      scrollView2 = [(CKScrollViewController *)self scrollView];
      [scrollView2 __ck_scrollToBottom:1];
      goto LABEL_20;
    }
  }

LABEL_21:
}

- (void)reasonTrackingUpdater:(id)updater needsUpdateForReasons:(id)reasons followingHoldForReason:(id)reason
{
  if (self->_scrollGeometryUpdater == updater)
  {
    [(CKScrollViewController *)self scrollGeometryIsUpdatingForReasons:reasons followingHoldForReason:reason];
  }
}

- (void)reasonTrackingUpdater:(id)updater didBeginHoldingUpdatesWithInitialReason:(id)reason
{
  v10 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (self->_scrollGeometryUpdater == updater)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = reasonCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Scroll geometry is being held. Initial reason: %@", &v8, 0xCu);
    }
  }
}

- (void)reasonTrackingUpdater:(id)updater didEndHoldingUpdatesWithFinalReason:(id)reason
{
  v10 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (self->_scrollGeometryUpdater == updater)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = reasonCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Scroll geometry hold ending. Final reason: %@", &v8, 0xCu);
    }
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = CKScrollViewController;
  [(CKScrollViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(CKScrollViewController *)self updateScrollGeometryWithoutAnimationForReason:@"SafeAreaInsetsChanged"];
}

- (void)updateScrollGeometryWithoutAnimationForReason:(id)reason
{
  v12 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[CKScrollViewController updateScrollGeometryWithoutAnimationForReason:]";
    v10 = 2112;
    v11 = reasonCopy;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s, reason: %@", &v8, 0x16u);
  }

  v6 = +[CKScrollViewAnimationProperties unanimated];
  v7 = [[CKScrollViewScrollGeometryUpdateReason alloc] initWithReasonType:reasonCopy animationProperties:v6];
  [(IMReasonTrackingUpdater *)self->_scrollGeometryUpdater updateImmediatelyWithReason:v7];
}

- (void)updateScrollGeometryWithInheritedAnimationForReason:(id)reason
{
  v12 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[CKScrollViewController updateScrollGeometryWithInheritedAnimationForReason:]";
    v10 = 2112;
    v11 = reasonCopy;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s, reason: %@", &v8, 0x16u);
  }

  v6 = +[CKScrollViewAnimationProperties inheritedAnimation];
  v7 = [[CKScrollViewScrollGeometryUpdateReason alloc] initWithReasonType:reasonCopy animationProperties:v6];
  [(IMReasonTrackingUpdater *)self->_scrollGeometryUpdater updateImmediatelyWithReason:v7];
}

- (void)updateScrollGeometryForReason:(id)reason withDuration:(double)duration animationCurve:(int64_t)curve
{
  v16 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[CKScrollViewController updateScrollGeometryForReason:withDuration:animationCurve:]";
    v14 = 2112;
    v15 = reasonCopy;
    _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "%s, reason: %@", &v12, 0x16u);
  }

  v10 = [CKScrollViewAnimationProperties animatedWithDuration:curve animationCurve:duration];
  v11 = [[CKScrollViewScrollGeometryUpdateReason alloc] initWithReasonType:reasonCopy animationProperties:v10];
  [(IMReasonTrackingUpdater *)self->_scrollGeometryUpdater updateImmediatelyWithReason:v11];
}

- (void)scrollGeometryIsUpdatingForReasons:(id)reasons followingHoldForReason:(id)reason
{
  reasonCopy = reason;
  reasonsCopy = reasons;
  scrollView = [(CKScrollViewController *)self scrollView];
  __ck_isScrolledToBottom = [scrollView __ck_isScrolledToBottom];
  v9 = +[CKScrollViewAnimationProperties unanimated];
  v10 = [(CKScrollViewController *)self scrollGeometryContentInsetIsUpdatingForReasons:reasonsCopy followingHoldForReason:reasonCopy withAnimationProperties:v9];

  if (__ck_isScrolledToBottom && v10)
  {
    [scrollView __ck_scrollToBottom:0];
  }
}

- (CGRect)keyboardFrameInViewCoordinates
{
  [(CKScrollViewController *)self keyboardScreenFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(CKScrollViewController *)self view];
  v12 = CKKeyboardFrameInViewCoodinates(view, v4, v6, v8, v10);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (UIEdgeInsets)bannerInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)macToolbarInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)visibleHeightAboveKeyboard
{
  [(CKScrollViewController *)self keyboardFrame];
  v4 = v3;
  v6 = v5;
  v7 = *MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  view = [(CKScrollViewController *)self view];
  [view bounds];
  v11 = v10;
  if (v4 != v7 || v6 != v8)
  {
    [(CKScrollViewController *)self keyboardFrame];
    v11 = v11 - v13;
  }

  return v11;
}

- (BOOL)isKeyboardUndocked
{
  mEMORY[0x1E69DCD68] = [MEMORY[0x1E69DCD68] sharedInstance];
  isUndocked = [mEMORY[0x1E69DCD68] isUndocked];

  return isUndocked;
}

- (double)accessoryViewHeight
{
  inputAccessoryViewController = [(CKScrollViewController *)self inputAccessoryViewController];
  view = [inputAccessoryViewController view];
  if (view)
  {
    inputAccessoryView = view;
  }

  else
  {
    inputAccessoryView = [(CKScrollViewController *)self inputAccessoryView];

    if (!inputAccessoryView)
    {
      return 0.0;
    }
  }

  [inputAccessoryView frame];
  v7 = v6;

  return v7;
}

- (double)bottomInsetWithoutAccessoryView
{
  scrollView = [(CKScrollViewController *)self scrollView];
  [scrollView contentInset];
  v5 = v4;
  [(CKScrollViewController *)self accessoryViewHeight];
  v7 = v5 - v6;

  result = 0.0;
  if (v7 >= 0.0)
  {
    return v7;
  }

  return result;
}

- (void)primeWithKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(CKScrollViewController *)self setKeyboardScreenFrame:?];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v8 = CGRectGetHeight(v11);
  [(CKScrollViewController *)self accessoryViewHeight];
  if (v8 > v9)
  {
    [(CKScrollViewController *)self setKeyboardVisible:1];
  }

  [(CKScrollViewController *)self updateScrollGeometryWithoutAnimationForReason:@"PrimeKeyboardFrame"];
}

- (BOOL)manuallyUpdateKeyboardScreenFrameWithFrameIfNeeded:(CGRect)needed animationDuration:(double)duration animationCurve:(int64_t)curve
{
  height = needed.size.height;
  width = needed.size.width;
  y = needed.origin.y;
  x = needed.origin.x;
  v37 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      [(CKScrollViewController *)self keyboardScreenFrame];
      v12 = NSStringFromCGRect(v38);
      v39.origin.x = x;
      v39.origin.y = y;
      v39.size.width = width;
      v39.size.height = height;
      v13 = NSStringFromCGRect(v39);
      *buf = 136315650;
      v32 = "[CKScrollViewController manuallyUpdateKeyboardScreenFrameWithFrameIfNeeded:animationDuration:animationCurve:]";
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "%s current %@ updated %@", buf, 0x20u);
    }
  }

  [(CKScrollViewController *)self keyboardScreenFrame];
  v41.origin.x = v14;
  v41.origin.y = v15;
  v41.size.width = v16;
  v41.size.height = v17;
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v18 = CGRectEqualToRect(v40, v41);
  if (!v18)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v32 = "[CKScrollViewController manuallyUpdateKeyboardScreenFrameWithFrameIfNeeded:animationDuration:animationCurve:]";
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "%s applying fix-up for keyboard insets!", buf, 0xCu);
      }
    }

    [(CKScrollViewController *)self keyboardScreenFrame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [(CKScrollViewController *)self keyboardScreenFrame];
    [(CKScrollViewController *)self _updateKeyboardScreenFrameForShowOrHideWithNewScreenFrame:curve previousFrame:y > v28 duration:x animationCurve:y isShowEvent:width, height, v21, v23, v25, v27, *&duration];
  }

  return !v18;
}

- (CGRect)screenFrameForNotification:(id)notification
{
  userInfo = [notification userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)setKeyboardVisible:(BOOL)visible
{
  if (self->_keyboardVisible != visible)
  {
    self->_keyboardVisible = visible;
    [(CKScrollViewController *)self keyboardVisibilityWillChange];
  }
}

- (BOOL)scrollGeometryContentInsetIsUpdatingForReasons:(id)reasons followingHoldForReason:(id)reason withAnimationProperties:(id)properties
{
  propertiesCopy = properties;
  scrollView = [(CKScrollViewController *)self scrollView];
  v8 = scrollView;
  if (!scrollView || (([scrollView contentInset], v10 = v9, v12 = v11, v14 = v13, v16 = v15, -[CKScrollViewController _calculateContentInsets](self, "_calculateContentInsets"), v18 == v12) ? (v21 = v17 == v10) : (v21 = 0), v21 ? (v22 = v20 == v16) : (v22 = 0), v22 ? (v23 = v19 == v14) : (v23 = 0), v23))
  {
    v28 = 0;
  }

  else
  {
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    [(CKScrollViewController *)self contentInsetWillChange:propertiesCopy withAnimationProperties:?];
    [v8 setContentInset:{v24, v25, v26, v27}];
    [(CKScrollViewController *)self contentInsetDidChangeWithAnimationProperties:propertiesCopy];
    v28 = 1;
  }

  return v28;
}

- (void)_entryViewWillRotate:(id)rotate
{
  [(CKScrollViewController *)self screenFrameForNotification:rotate];

  [(CKScrollViewController *)self setKeyboardScreenFrame:?];
}

- (CGSize)contentSizeForPinning
{
  width = self->_contentSizeForPinning.width;
  height = self->_contentSizeForPinning.height;
  result.height = height;
  result.width = width;
  return result;
}

@end