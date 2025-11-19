@interface CKScrollViewController
+ (id)scrollGeometryUpdaterLogHandle;
- (BOOL)isKeyboardUndocked;
- (BOOL)manuallyUpdateKeyboardScreenFrameWithFrameIfNeeded:(CGRect)a3 animationDuration:(double)a4 animationCurve:(int64_t)a5;
- (BOOL)scrollGeometryContentInsetIsUpdatingForReasons:(id)a3 followingHoldForReason:(id)a4 withAnimationProperties:(id)a5;
- (CGRect)inputAccessoryViewFrameForFloatingKeyboard;
- (CGRect)keyboardFrameInViewCoordinates;
- (CGRect)keyboardScreenFrame;
- (CGRect)screenFrameForNotification:(id)a3;
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
- (void)_entryViewWillRotate:(id)a3;
- (void)_keyboardWillShowOrHide:(id)a3;
- (void)_updateKeyboardScreenFrameForShowOrHideWithNewScreenFrame:(CGRect)a3 previousFrame:(CGRect)a4 duration:(double)a5 animationCurve:(int64_t)a6 isShowEvent:(BOOL)a7;
- (void)inputAccessoryViewFrameUpdatedForFloatingKeyboard;
- (void)keyboardDidChangeFrame:(id)a3;
- (void)keyboardDidHide:(id)a3;
- (void)keyboardDidShow:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)primeWithKeyboardFrame:(CGRect)a3;
- (void)reasonTrackingUpdater:(id)a3 didBeginHoldingUpdatesWithInitialReason:(id)a4;
- (void)reasonTrackingUpdater:(id)a3 didEndHoldingUpdatesWithFinalReason:(id)a4;
- (void)reasonTrackingUpdater:(id)a3 needsUpdateForReasons:(id)a4 followingHoldForReason:(id)a5;
- (void)scrollGeometryIsUpdatingForReasons:(id)a3 followingHoldForReason:(id)a4;
- (void)scrollWithDuration:(double)a3 animationCurve:(int64_t)a4 scrollBlock:(id)a5;
- (void)setKeyboardScreenFrame:(CGRect)a3;
- (void)setKeyboardVisible:(BOOL)a3;
- (void)updateScrollGeometryForReason:(id)a3 withDuration:(double)a4 animationCurve:(int64_t)a5;
- (void)updateScrollGeometryWithInheritedAnimationForReason:(id)a3;
- (void)updateScrollGeometryWithoutAnimationForReason:(id)a3;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation CKScrollViewController

- (UIEdgeInsets)navigationBarInsetsWithoutPalette
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  v7 = [(CKScrollViewController *)self navigationController];
  v8 = [v7 navigationBar];

  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 shouldInsetForStatusBar];

  if (v10)
  {
    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    v12 = [v11 statusBar];

    v13 = [MEMORY[0x1E69DC668] sharedApplication];
    v14 = [v13 isStatusBarHidden];

    if ((v14 & 1) == 0)
    {
      [v12 currentHeight];
      v3 = v15;
    }
  }

  else
  {
    v16 = +[CKUIBehavior sharedBehaviors];
    v17 = [v16 useMacToolbar];

    if (v17)
    {
      [(CKScrollViewController *)self macToolbarInsets];
      v3 = v18;
      v4 = v19;
      v6 = v20;
      v5 = v21;
    }

    else if (([v8 isTranslucent] & 1) != 0 || (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "shouldInsetForStatusBarWithSafeArea"), v22, v23))
    {
      v24 = [(CKScrollViewController *)self view];
      [v24 safeAreaInsets];
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
  v11 = [(CKScrollViewController *)self navigationController];
  v12 = [v11 existingPaletteForEdge:2];

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
  v2 = [(CKScrollViewController *)self rotatingFooterView];
  v3 = [v2 window];

  if (v3)
  {
    [v2 frame];
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
      v8 = [(CKScrollViewController *)self view];
      [v8 convertRect:0 fromView:{x, y, width, height}];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = [(CKScrollViewController *)self view];
      [v17 bounds];
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
        v33 = [(CKScrollViewController *)self view];
        [v33 bounds];
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
        v24 = [(CKScrollViewController *)self view];
        v25 = v24;
        if (v23)
        {
          v26 = [v24 window];

          v27 = [v26 windowScene];
          v28 = [v27 screen];
          v29 = [v28 coordinateSpace];
          v30 = [v27 coordinateSpace];
          [v29 convertRect:v30 toCoordinateSpace:{x, y, width, height}];
          v32 = v31;

          v25 = v26;
        }

        else
        {
          CKKeyboardFrameInViewCoodinates(v24, x, y, width, height);
          v32 = v40;
        }

        v3 = 0.0;

        if (v32 == 0.0)
        {
          v33 = IMLogHandleForCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [(CKScrollViewController *)v33 _visibleKeyboardHeight];
          }
        }

        else
        {
          v33 = [(CKScrollViewController *)self view];
          [v33 frame];
          v3 = v44 - v32;
        }

        goto LABEL_21;
      }

      v35 = [(CKScrollViewController *)self firstResponder];
      v36 = [v35 inputAccessoryViewController];
      v37 = [v36 view];
      v38 = v37;
      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = [(CKScrollViewController *)self inputAccessoryView];
      }

      v41 = v39;

      if (v41)
      {
        v42 = [(CKScrollViewController *)self inputAccessoryView];
        [v42 frame];
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
    v27 = [(CKScrollViewController *)self scrollView];
    [v27 frame];
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
    v7 = [(CKScrollViewController *)self scrollView];
    [v7 contentInset];
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [v3 addObserver:v2 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    [v3 addObserver:v2 selector:sel_keyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];
    [v3 addObserver:v2 selector:sel_keyboardDidHide_ name:*MEMORY[0x1E69DDF70] object:0];
    [v3 addObserver:v2 selector:sel_keyboardDidChangeFrame_ name:*MEMORY[0x1E69DDF68] object:0];
    [v3 addObserver:v2 selector:sel__changedStatusBarFrame_ name:*MEMORY[0x1E69DDAB8] object:0];
    [v3 addObserver:v2 selector:sel__entryViewWillRotate_ name:*MEMORY[0x1E69DDE58] object:0];
    v4 = [(CKScrollViewController *)v2 scrollGeometryUpdaterLogHandle];
    v5 = [objc_alloc(MEMORY[0x1E69A81E0]) initWithLogHandle:v4 delegate:v2];
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
  v3 = [(CKScrollViewController *)self view];
  v4 = [v3 window];

  if (v4)
  {
    v5 = [(CKScrollViewController *)self view];
    v6 = [v5 window];
    [v6 bounds];
    MaxY = CGRectGetMaxY(v16);
    [(CKScrollViewController *)self inputAccessoryViewFrameForFloatingKeyboard];
    v8 = MaxY - CGRectGetHeight(v17);

    v9 = [(CKScrollViewController *)self view];
    v10 = [v9 window];
    [v10 bounds];
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

- (void)setKeyboardScreenFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(CKScrollViewController *)self isKeyboardFloating])
  {
    v8 = [(CKScrollViewController *)self view];
    v9 = [v8 window];
    [v9 bounds];
    MaxY = CGRectGetMaxY(v15);
    [(CKScrollViewController *)self inputAccessoryViewFrameForFloatingKeyboard];
    y = MaxY - CGRectGetHeight(v16);

    v11 = [(CKScrollViewController *)self view];
    v12 = [v11 window];
    [v12 bounds];
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

- (void)keyboardWillShow:(id)a3
{
  v4 = a3;
  [(CKScrollViewController *)self setKeyboardVisible:1];
  [(CKScrollViewController *)self _keyboardWillShowOrHide:v4];
}

- (void)_keyboardWillShowOrHide:(id)a3
{
  v4 = a3;
  [(CKScrollViewController *)self screenFrameForNotification:v4];
  v39 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v4 userInfo];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69DDF98]];
  [v13 CGRectValue];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(CKScrollViewController *)self view];
  v23 = CKKeyboardFrameInViewCoodinates(v22, v15, v17, v19, v21);
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = [v4 userInfo];
  v31 = [v30 objectForKey:*MEMORY[0x1E69DDF40]];
  [v31 floatValue];
  v33 = v32;

  v34 = [v4 userInfo];
  v35 = [v34 objectForKey:*MEMORY[0x1E69DDF38]];
  v36 = [v35 integerValue];

  v37 = [v4 name];

  v38 = [v37 isEqualToString:*MEMORY[0x1E69DE080]];
  [(CKScrollViewController *)self _updateKeyboardScreenFrameForShowOrHideWithNewScreenFrame:v36 previousFrame:v38 duration:v39 animationCurve:v7 isShowEvent:v9, v11, v23, v25, v27, v29, *&v33];
}

- (void)_updateKeyboardScreenFrameForShowOrHideWithNewScreenFrame:(CGRect)a3 previousFrame:(CGRect)a4 duration:(double)a5 animationCurve:(int64_t)a6 isShowEvent:(BOOL)a7
{
  width = a4.size.width;
  rect2 = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  height = a3.size.height;
  v10 = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  v14 = [(CKScrollViewController *)self view];
  v15 = CKKeyboardFrameInViewCoodinates(v14, v12, v11, v10, height);
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
  v26 = [(CKScrollViewController *)self shouldIgnoreKeyboardAnimationDuration];
  v27 = 0.0;
  if (![(CKScrollViewController *)self keyboardInteractionCancelled])
  {
    [(CKScrollViewController *)self _visibleKeyboardHeight];
    if (v28 > 0.0 && !v26)
    {
      v27 = a5;
      if (a5 > 0.0)
      {
        v29 = objc_alloc_init(MEMORY[0x1E69DCF88]);
        [v29 settlingDuration];
        v31 = v30;

        v32 = [CKScrollViewAnimationProperties animatedWithDuration:a6 animationCurve:v31];
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

  [(CKScrollViewController *)self updateScrollGeometryForReason:@"KeyboardScreenFrameChanged" withDuration:a6 animationCurve:v27];
  v35 = +[CKUIBehavior sharedBehaviors];
  v36 = [v35 isEntryViewInputAccessory];

  if (v36)
  {
    [(CKScrollViewController *)self accessoryViewHeight];
    v38 = v37;
    v39 = [(CKScrollViewController *)self firstResponder];
    v40 = [v39 inputAccessoryViewController];
    v41 = [v40 view];
    v42 = v41;
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v44 = [(CKScrollViewController *)self firstResponder];
      v43 = [v44 inputAccessoryView];
    }

    v45 = [(CKScrollViewController *)self scrollView];
    [v45 contentInset];
    v48 = v46 != v38 || v43 == 0;

    a7 = v52 <= y || v48;
  }

  if (![(CKScrollViewController *)self keyboardInteractionCancelled]&& !a7)
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

- (void)scrollWithDuration:(double)a3 animationCurve:(int64_t)a4 scrollBlock:(id)a5
{
  v7 = a5;
  v11 = v7;
  if (a3 <= 0.0)
  {
    [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
    goto LABEL_8;
  }

  if (UIViewAnimationCurveForCKAnimationCurve(103) == a4)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:333.34153 damping:36.51529 initialVelocity:{0.0, 0.0}];
LABEL_7:
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:a3];
    [v10 addAnimations:v11];
    [v10 startAnimation];

    goto LABEL_8;
  }

  if ((UIViewAnimationCurveForCKAnimationCurve(7) & a4) != 0)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DCF88]);
    goto LABEL_7;
  }

  [MEMORY[0x1E69DD250] animateWithDuration:a4 << 16 delay:v11 options:0 animations:a3 completion:0.0];
LABEL_8:
}

- (void)keyboardDidShow:(id)a3
{
  [(CKScrollViewController *)self setActiveKeyboardAppearanceAnimationProperties:0];
  [(CKScrollViewController *)self updateScrollGeometryWithoutAnimationForReason:@"KeyboardDidShow"];

  [(CKScrollViewController *)self setKeyboardInteractionCancelled:0];
}

- (void)keyboardDidHide:(id)a3
{
  [(CKScrollViewController *)self setKeyboardVisible:0];
  [(CKScrollViewController *)self updateScrollGeometryWithoutAnimationForReason:@"KeyboardDidHide"];

  [(CKScrollViewController *)self setKeyboardInteractionCancelled:0];
}

- (void)keyboardDidChangeFrame:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CKScrollViewController *)self view];
  v6 = [v5 window];
  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  v8 = [v7 keyWindow];

  if (v6 == v8)
  {
    [(CKScrollViewController *)self screenFrameForNotification:v4];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(CKScrollViewController *)self view];
    v18 = CKKeyboardFrameInViewCoodinates(v17, v10, v12, v14, v16);
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v41.origin.x = v18;
    v41.origin.y = v20;
    v41.size.width = v22;
    v41.size.height = v24;
    if (CGRectIsEmpty(v41))
    {
      v25 = IMLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(v38) = 0;
        v26 = "Ignoring keyboard frame change because frame is empty";
LABEL_19:
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, v26, &v38, 2u);
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
    v25 = IMLogHandleForCategory();
    v32 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
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
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Updating keyboard screen frame", &v38, 2u);
    }

    [(CKScrollViewController *)self setKeyboardScreenFrame:v10, v12, v14, v16];
    v33 = [(CKScrollViewController *)self shouldUpdateScrollPositionForKeyboardScreenFrameChanges];
    v25 = IMLogHandleForCategory();
    v34 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
    if (!v33)
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
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Updating scroll geometry for reason: %@", &v38, 0xCu);
    }

    [(CKScrollViewController *)self updateScrollGeometryWithoutAnimationForReason:@"KeyboardDidChangeFrame"];
    v35 = [(CKScrollViewController *)self scrollView];
    v36 = [v35 __ck_isScrolledToBottom];

    if (v36)
    {
      v37 = IMLogHandleForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        LOWORD(v38) = 0;
        _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "Is scrolling to bottom", &v38, 2u);
      }

      v25 = [(CKScrollViewController *)self scrollView];
      [v25 __ck_scrollToBottom:1];
      goto LABEL_20;
    }
  }

LABEL_21:
}

- (void)reasonTrackingUpdater:(id)a3 needsUpdateForReasons:(id)a4 followingHoldForReason:(id)a5
{
  if (self->_scrollGeometryUpdater == a3)
  {
    [(CKScrollViewController *)self scrollGeometryIsUpdatingForReasons:a4 followingHoldForReason:a5];
  }
}

- (void)reasonTrackingUpdater:(id)a3 didBeginHoldingUpdatesWithInitialReason:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_scrollGeometryUpdater == a3)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Scroll geometry is being held. Initial reason: %@", &v8, 0xCu);
    }
  }
}

- (void)reasonTrackingUpdater:(id)a3 didEndHoldingUpdatesWithFinalReason:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_scrollGeometryUpdater == a3)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v6;
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

- (void)updateScrollGeometryWithoutAnimationForReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[CKScrollViewController updateScrollGeometryWithoutAnimationForReason:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s, reason: %@", &v8, 0x16u);
  }

  v6 = +[CKScrollViewAnimationProperties unanimated];
  v7 = [[CKScrollViewScrollGeometryUpdateReason alloc] initWithReasonType:v4 animationProperties:v6];
  [(IMReasonTrackingUpdater *)self->_scrollGeometryUpdater updateImmediatelyWithReason:v7];
}

- (void)updateScrollGeometryWithInheritedAnimationForReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[CKScrollViewController updateScrollGeometryWithInheritedAnimationForReason:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "%s, reason: %@", &v8, 0x16u);
  }

  v6 = +[CKScrollViewAnimationProperties inheritedAnimation];
  v7 = [[CKScrollViewScrollGeometryUpdateReason alloc] initWithReasonType:v4 animationProperties:v6];
  [(IMReasonTrackingUpdater *)self->_scrollGeometryUpdater updateImmediatelyWithReason:v7];
}

- (void)updateScrollGeometryForReason:(id)a3 withDuration:(double)a4 animationCurve:(int64_t)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[CKScrollViewController updateScrollGeometryForReason:withDuration:animationCurve:]";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "%s, reason: %@", &v12, 0x16u);
  }

  v10 = [CKScrollViewAnimationProperties animatedWithDuration:a5 animationCurve:a4];
  v11 = [[CKScrollViewScrollGeometryUpdateReason alloc] initWithReasonType:v8 animationProperties:v10];
  [(IMReasonTrackingUpdater *)self->_scrollGeometryUpdater updateImmediatelyWithReason:v11];
}

- (void)scrollGeometryIsUpdatingForReasons:(id)a3 followingHoldForReason:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(CKScrollViewController *)self scrollView];
  v8 = [v11 __ck_isScrolledToBottom];
  v9 = +[CKScrollViewAnimationProperties unanimated];
  v10 = [(CKScrollViewController *)self scrollGeometryContentInsetIsUpdatingForReasons:v7 followingHoldForReason:v6 withAnimationProperties:v9];

  if (v8 && v10)
  {
    [v11 __ck_scrollToBottom:0];
  }
}

- (CGRect)keyboardFrameInViewCoordinates
{
  [(CKScrollViewController *)self keyboardScreenFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKScrollViewController *)self view];
  v12 = CKKeyboardFrameInViewCoodinates(v11, v4, v6, v8, v10);
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
  v9 = [(CKScrollViewController *)self view];
  [v9 bounds];
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
  v2 = [MEMORY[0x1E69DCD68] sharedInstance];
  v3 = [v2 isUndocked];

  return v3;
}

- (double)accessoryViewHeight
{
  v3 = [(CKScrollViewController *)self inputAccessoryViewController];
  v4 = [v3 view];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(CKScrollViewController *)self inputAccessoryView];

    if (!v5)
    {
      return 0.0;
    }
  }

  [v5 frame];
  v7 = v6;

  return v7;
}

- (double)bottomInsetWithoutAccessoryView
{
  v3 = [(CKScrollViewController *)self scrollView];
  [v3 contentInset];
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

- (void)primeWithKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (BOOL)manuallyUpdateKeyboardScreenFrameWithFrameIfNeeded:(CGRect)a3 animationDuration:(double)a4 animationCurve:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    [(CKScrollViewController *)self _updateKeyboardScreenFrameForShowOrHideWithNewScreenFrame:a5 previousFrame:y > v28 duration:x animationCurve:y isShowEvent:width, height, v21, v23, v25, v27, *&a4];
  }

  return !v18;
}

- (CGRect)screenFrameForNotification:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:*MEMORY[0x1E69DDFA0]];
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

- (void)setKeyboardVisible:(BOOL)a3
{
  if (self->_keyboardVisible != a3)
  {
    self->_keyboardVisible = a3;
    [(CKScrollViewController *)self keyboardVisibilityWillChange];
  }
}

- (BOOL)scrollGeometryContentInsetIsUpdatingForReasons:(id)a3 followingHoldForReason:(id)a4 withAnimationProperties:(id)a5
{
  v6 = a5;
  v7 = [(CKScrollViewController *)self scrollView];
  v8 = v7;
  if (!v7 || (([v7 contentInset], v10 = v9, v12 = v11, v14 = v13, v16 = v15, -[CKScrollViewController _calculateContentInsets](self, "_calculateContentInsets"), v18 == v12) ? (v21 = v17 == v10) : (v21 = 0), v21 ? (v22 = v20 == v16) : (v22 = 0), v22 ? (v23 = v19 == v14) : (v23 = 0), v23))
  {
    v28 = 0;
  }

  else
  {
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    [(CKScrollViewController *)self contentInsetWillChange:v6 withAnimationProperties:?];
    [v8 setContentInset:{v24, v25, v26, v27}];
    [(CKScrollViewController *)self contentInsetDidChangeWithAnimationProperties:v6];
    v28 = 1;
  }

  return v28;
}

- (void)_entryViewWillRotate:(id)a3
{
  [(CKScrollViewController *)self screenFrameForNotification:a3];

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