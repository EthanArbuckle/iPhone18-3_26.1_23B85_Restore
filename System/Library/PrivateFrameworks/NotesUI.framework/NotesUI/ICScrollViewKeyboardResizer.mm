@interface ICScrollViewKeyboardResizer
- (ICScrollViewKeyboardResizer)initWithDelegate:(id)delegate;
- (ICScrollViewKeyboardResizerDelegate)delegate;
- (UIScrollView)scrollView;
- (void)animateUpdatedInsetsFromNotification:(id)notification;
- (void)applyInsetsFromKeyboardFrame:(CGRect)frame duration:(double)duration;
- (void)clearInsetsWithDuration:(double)duration;
- (void)dealloc;
- (void)handleKeyboardWillHide:(id)hide;
- (void)handleKeyboardWillShow:(id)show;
- (void)reapplyInsets;
- (void)startAutoResizing;
- (void)stopAutoResizing;
@end

@implementation ICScrollViewKeyboardResizer

- (void)startAutoResizing
{
  scrollView = [(ICScrollViewKeyboardResizer *)self scrollView];
  [scrollView layoutIfNeeded];

  if (![(ICScrollViewKeyboardResizer *)self isObservingKeyboardNotifications])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleKeyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_handleKeyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_handleKeyboardDidChangeFrame_ name:*MEMORY[0x1E69DDF68] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel_handleKeyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

    [(ICScrollViewKeyboardResizer *)self setObservingKeyboardNotifications:1];
  }

  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  window = [activeKeyboard window];

  if (window)
  {
    v9 = +[ICKeyboardNotificationListener sharedListener];
    [v9 currentKeyboardFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [(ICScrollViewKeyboardResizer *)self applyInsetsFromKeyboardFrame:v11 duration:v13, v15, v17, 0.0];
  }

  else if ([(ICScrollViewKeyboardResizer *)self didResizeScrollView])
  {
    [(ICScrollViewKeyboardResizer *)self clearInsetsWithDuration:0.0];
  }

  [(ICScrollViewKeyboardResizer *)self setAutoResizing:1];
}

- (UIScrollView)scrollView
{
  delegate = [(ICScrollViewKeyboardResizer *)self delegate];
  keyboardResizerScrollView = [delegate keyboardResizerScrollView];

  return keyboardResizerScrollView;
}

- (ICScrollViewKeyboardResizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICScrollViewKeyboardResizer)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = ICScrollViewKeyboardResizer;
  v5 = [(ICScrollViewKeyboardResizer *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = +[ICKeyboardNotificationListener sharedListener];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICScrollViewKeyboardResizer;
  [(ICScrollViewKeyboardResizer *)&v4 dealloc];
}

- (void)stopAutoResizing
{
  if ([(ICScrollViewKeyboardResizer *)self isObservingKeyboardNotifications])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];

    [(ICScrollViewKeyboardResizer *)self setObservingKeyboardNotifications:0];
  }

  [(ICScrollViewKeyboardResizer *)self setAutoResizing:0];
}

- (void)reapplyInsets
{
  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  v3 = +[ICKeyboardNotificationListener sharedListener];
  [v3 currentKeyboardFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  window = [activeKeyboard window];
  if (window && (v13 = window, v17.origin.x = v5, v17.origin.y = v7, v17.size.width = v9, v17.size.height = v11, IsNull = CGRectIsNull(v17), v13, !IsNull))
  {
    [(ICScrollViewKeyboardResizer *)self applyInsetsFromKeyboardFrame:v5 duration:v7, v9, v11, 0.0];
  }

  else
  {
    [(ICScrollViewKeyboardResizer *)self clearInsetsWithDuration:0.0];
  }
}

- (void)applyInsetsFromKeyboardFrame:(CGRect)frame duration:(double)duration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegate = [(ICScrollViewKeyboardResizer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(ICScrollViewKeyboardResizer *)self delegate];
    keyboardResizerAutoscrollAboveKeyboard = [delegate2 keyboardResizerAutoscrollAboveKeyboard];

    v12 = 0.0;
    if (keyboardResizerAutoscrollAboveKeyboard)
    {
      ic_isLargeiPad = [MEMORY[0x1E69DC938] ic_isLargeiPad];
      v12 = 60.0;
      if (ic_isLargeiPad)
      {
        y = y + -60.0;
      }

      else
      {
        v12 = 0.0;
      }

      if (ic_isLargeiPad)
      {
        height = height + 60.0;
      }
    }
  }

  else
  {

    v12 = 0.0;
  }

  v75 = v12;
  if (!ICInternalSettingsIsTextKit2Enabled() || (-[ICScrollViewKeyboardResizer scrollView](self, "scrollView"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isFirstResponder], v14, v15))
  {
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __69__ICScrollViewKeyboardResizer_applyInsetsFromKeyboardFrame_duration___block_invoke;
    v82[3] = &unk_1E8468BA0;
    v82[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:{v82, *&v75}];
    scrollView = [(ICScrollViewKeyboardResizer *)self scrollView];
    [scrollView layoutIfNeeded];
  }

  scrollView2 = [(ICScrollViewKeyboardResizer *)self scrollView];
  scrollView3 = [(ICScrollViewKeyboardResizer *)self scrollView];
  [scrollView3 bounds];
  [scrollView2 convertRect:0 toView:?];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  scrollView4 = [(ICScrollViewKeyboardResizer *)self scrollView];
  window = [scrollView4 window];
  [window convertRect:0 toWindow:{v20, v22, v24, v26}];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  v80 = width;
  MaxY = CGRectGetMaxY(v83);
  v84.origin.x = v30;
  v84.origin.y = v32;
  v84.size.width = v34;
  v84.size.height = v36;
  v38 = height - fmax(MaxY - CGRectGetMaxY(v84), 0.0);
  delegate3 = [(ICScrollViewKeyboardResizer *)self delegate];
  LOBYTE(window) = objc_opt_respondsToSelector();

  if (window)
  {
    delegate4 = [(ICScrollViewKeyboardResizer *)self delegate];
    [delegate4 keyboardResizerAdjustInsetsWithKeyboardFrame:x scrollAboveHeight:y duration:{v80, v38, v76, duration}];
  }

  else
  {
    delegate4 = [(ICScrollViewKeyboardResizer *)self scrollView];
    [delegate4 convertRect:0 fromView:{x, y, v80, v38}];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    [delegate4 bounds];
    v88.origin.x = v49;
    v88.origin.y = v50;
    v88.size.width = v51;
    v88.size.height = v52;
    v85.origin.x = v42;
    v85.origin.y = v44;
    v85.size.width = v46;
    v85.size.height = v48;
    v86 = CGRectIntersection(v85, v88);
    v53 = v86.origin.x;
    v54 = v86.origin.y;
    v55 = v86.size.width;
    v56 = v86.size.height;
    [delegate4 contentInset];
    v58 = v57;
    v79 = v59;
    v81 = v60;
    [delegate4 verticalScrollIndicatorInsets];
    v62 = v61;
    v64 = v63;
    v77 = v65;
    delegate5 = [(ICScrollViewKeyboardResizer *)self delegate];
    [delegate5 consumedBottomAreaForResizer:self];
    v68 = v67;

    v87.origin.x = v53;
    v87.origin.y = v54;
    v87.size.width = v55;
    v87.size.height = v56;
    v69 = CGRectGetHeight(v87);
    if (v68 >= v69)
    {
      v70 = v68;
    }

    else
    {
      v70 = v69;
    }

    delegate6 = [(ICScrollViewKeyboardResizer *)self delegate];
    v72 = objc_opt_respondsToSelector();

    if (v72)
    {
      delegate7 = [(ICScrollViewKeyboardResizer *)self delegate];
      [delegate7 topInsetForResizer:self];
      v58 = v74;

      v62 = v58;
    }

    [delegate4 setContentInset:{v58, v79, v70, v81}];
    [delegate4 setScrollIndicatorInsets:{v62, v64, v70, v77}];
  }

  [(ICScrollViewKeyboardResizer *)self setDidResizeScrollView:1];
}

void __69__ICScrollViewKeyboardResizer_applyInsetsFromKeyboardFrame_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scrollView];
  v1 = [v2 window];
  [v1 layoutIfNeeded];
}

- (void)clearInsetsWithDuration:(double)duration
{
  delegate = [(ICScrollViewKeyboardResizer *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(ICScrollViewKeyboardResizer *)self delegate];
    [delegate2 keyboardResizerAdjustInsetsWithKeyboardFrame:*MEMORY[0x1E695F050] scrollAboveHeight:*(MEMORY[0x1E695F050] + 8) duration:{*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), 0.0, duration}];
  }

  else
  {
    delegate2 = [(ICScrollViewKeyboardResizer *)self scrollView];
    delegate3 = [(ICScrollViewKeyboardResizer *)self delegate];
    [delegate3 consumedBottomAreaForResizer:self];
    v10 = v9;

    [delegate2 contentInset];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [delegate2 verticalScrollIndicatorInsets];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    delegate4 = [(ICScrollViewKeyboardResizer *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      delegate5 = [(ICScrollViewKeyboardResizer *)self delegate];
      [delegate5 topInsetForResizer:self];
      v18 = v26;

      v12 = v18;
    }

    [delegate2 setContentInset:{v12, v14, v10, v16}];
    [delegate2 setScrollIndicatorInsets:{v18, v20, v10, v22}];
  }

  [(ICScrollViewKeyboardResizer *)self setDidResizeScrollView:0];
}

- (void)animateUpdatedInsetsFromNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  userInfo2 = [notificationCopy userInfo];
  v16 = [userInfo2 objectForKey:*MEMORY[0x1E69DDF40]];
  [v16 doubleValue];
  v18 = v17;

  userInfo3 = [notificationCopy userInfo];

  v20 = [userInfo3 objectForKey:*MEMORY[0x1E69DDF38]];
  unsignedIntegerValue = [v20 unsignedIntegerValue];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68__ICScrollViewKeyboardResizer_animateUpdatedInsetsFromNotification___block_invoke;
  v22[3] = &unk_1E8469D00;
  v22[4] = self;
  v22[5] = v8;
  v22[6] = v10;
  v22[7] = v12;
  v22[8] = v14;
  *&v22[9] = v18;
  [MEMORY[0x1E69DD250] animateWithDuration:unsignedIntegerValue << 16 delay:v22 options:0 animations:v18 completion:0.0];
}

- (void)handleKeyboardWillShow:(id)show
{
  showCopy = show;
  [(ICScrollViewKeyboardResizer *)self setShowingKeyboard:1];
  [(ICScrollViewKeyboardResizer *)self animateUpdatedInsetsFromNotification:showCopy];
}

- (void)handleKeyboardWillHide:(id)hide
{
  hideCopy = hide;
  [(ICScrollViewKeyboardResizer *)self setShowingKeyboard:0];
  [(ICScrollViewKeyboardResizer *)self setFullyShowingKeyboard:0];
  userInfo = [hideCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69DDF40]];
  [v6 doubleValue];
  v8 = v7;

  userInfo2 = [hideCopy userInfo];

  v10 = [userInfo2 objectForKey:*MEMORY[0x1E69DDF38]];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__ICScrollViewKeyboardResizer_handleKeyboardWillHide___block_invoke;
  v12[3] = &unk_1E84698E0;
  v12[4] = self;
  *&v12[5] = v8;
  [MEMORY[0x1E69DD250] animateWithDuration:unsignedIntegerValue << 16 delay:v12 options:0 animations:v8 completion:0.0];
}

@end