@interface ICScrollViewKeyboardResizer
- (ICScrollViewKeyboardResizer)initWithDelegate:(id)a3;
- (ICScrollViewKeyboardResizerDelegate)delegate;
- (UIScrollView)scrollView;
- (void)animateUpdatedInsetsFromNotification:(id)a3;
- (void)applyInsetsFromKeyboardFrame:(CGRect)a3 duration:(double)a4;
- (void)clearInsetsWithDuration:(double)a3;
- (void)dealloc;
- (void)handleKeyboardWillHide:(id)a3;
- (void)handleKeyboardWillShow:(id)a3;
- (void)reapplyInsets;
- (void)startAutoResizing;
- (void)stopAutoResizing;
@end

@implementation ICScrollViewKeyboardResizer

- (void)startAutoResizing
{
  v3 = [(ICScrollViewKeyboardResizer *)self scrollView];
  [v3 layoutIfNeeded];

  if (![(ICScrollViewKeyboardResizer *)self isObservingKeyboardNotifications])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel_handleKeyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel_handleKeyboardDidShow_ name:*MEMORY[0x1E69DDF78] object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:self selector:sel_handleKeyboardDidChangeFrame_ name:*MEMORY[0x1E69DDF68] object:0];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:self selector:sel_handleKeyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

    [(ICScrollViewKeyboardResizer *)self setObservingKeyboardNotifications:1];
  }

  v18 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  v8 = [v18 window];

  if (v8)
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
  v2 = [(ICScrollViewKeyboardResizer *)self delegate];
  v3 = [v2 keyboardResizerScrollView];

  return v3;
}

- (ICScrollViewKeyboardResizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICScrollViewKeyboardResizer)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICScrollViewKeyboardResizer;
  v5 = [(ICScrollViewKeyboardResizer *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = +[ICKeyboardNotificationListener sharedListener];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICScrollViewKeyboardResizer;
  [(ICScrollViewKeyboardResizer *)&v4 dealloc];
}

- (void)stopAutoResizing
{
  if ([(ICScrollViewKeyboardResizer *)self isObservingKeyboardNotifications])
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self];

    [(ICScrollViewKeyboardResizer *)self setObservingKeyboardNotifications:0];
  }

  [(ICScrollViewKeyboardResizer *)self setAutoResizing:0];
}

- (void)reapplyInsets
{
  v15 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  v3 = +[ICKeyboardNotificationListener sharedListener];
  [v3 currentKeyboardFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [v15 window];
  if (v12 && (v13 = v12, v17.origin.x = v5, v17.origin.y = v7, v17.size.width = v9, v17.size.height = v11, IsNull = CGRectIsNull(v17), v13, !IsNull))
  {
    [(ICScrollViewKeyboardResizer *)self applyInsetsFromKeyboardFrame:v5 duration:v7, v9, v11, 0.0];
  }

  else
  {
    [(ICScrollViewKeyboardResizer *)self clearInsetsWithDuration:0.0];
  }
}

- (void)applyInsetsFromKeyboardFrame:(CGRect)a3 duration:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(ICScrollViewKeyboardResizer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(ICScrollViewKeyboardResizer *)self delegate];
    v11 = [v10 keyboardResizerAutoscrollAboveKeyboard];

    v12 = 0.0;
    if (v11)
    {
      v13 = [MEMORY[0x1E69DC938] ic_isLargeiPad];
      v12 = 60.0;
      if (v13)
      {
        y = y + -60.0;
      }

      else
      {
        v12 = 0.0;
      }

      if (v13)
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
    v16 = [(ICScrollViewKeyboardResizer *)self scrollView];
    [v16 layoutIfNeeded];
  }

  v17 = [(ICScrollViewKeyboardResizer *)self scrollView];
  v18 = [(ICScrollViewKeyboardResizer *)self scrollView];
  [v18 bounds];
  [v17 convertRect:0 toView:?];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [(ICScrollViewKeyboardResizer *)self scrollView];
  v28 = [v27 window];
  [v28 convertRect:0 toWindow:{v20, v22, v24, v26}];
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
  v39 = [(ICScrollViewKeyboardResizer *)self delegate];
  LOBYTE(v28) = objc_opt_respondsToSelector();

  if (v28)
  {
    v40 = [(ICScrollViewKeyboardResizer *)self delegate];
    [v40 keyboardResizerAdjustInsetsWithKeyboardFrame:x scrollAboveHeight:y duration:{v80, v38, v76, a4}];
  }

  else
  {
    v40 = [(ICScrollViewKeyboardResizer *)self scrollView];
    [v40 convertRect:0 fromView:{x, y, v80, v38}];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    [v40 bounds];
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
    [v40 contentInset];
    v58 = v57;
    v79 = v59;
    v81 = v60;
    [v40 verticalScrollIndicatorInsets];
    v62 = v61;
    v64 = v63;
    v77 = v65;
    v66 = [(ICScrollViewKeyboardResizer *)self delegate];
    [v66 consumedBottomAreaForResizer:self];
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

    v71 = [(ICScrollViewKeyboardResizer *)self delegate];
    v72 = objc_opt_respondsToSelector();

    if (v72)
    {
      v73 = [(ICScrollViewKeyboardResizer *)self delegate];
      [v73 topInsetForResizer:self];
      v58 = v74;

      v62 = v58;
    }

    [v40 setContentInset:{v58, v79, v70, v81}];
    [v40 setScrollIndicatorInsets:{v62, v64, v70, v77}];
  }

  [(ICScrollViewKeyboardResizer *)self setDidResizeScrollView:1];
}

void __69__ICScrollViewKeyboardResizer_applyInsetsFromKeyboardFrame_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scrollView];
  v1 = [v2 window];
  [v1 layoutIfNeeded];
}

- (void)clearInsetsWithDuration:(double)a3
{
  v5 = [(ICScrollViewKeyboardResizer *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(ICScrollViewKeyboardResizer *)self delegate];
    [v7 keyboardResizerAdjustInsetsWithKeyboardFrame:*MEMORY[0x1E695F050] scrollAboveHeight:*(MEMORY[0x1E695F050] + 8) duration:{*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), 0.0, a3}];
  }

  else
  {
    v7 = [(ICScrollViewKeyboardResizer *)self scrollView];
    v8 = [(ICScrollViewKeyboardResizer *)self delegate];
    [v8 consumedBottomAreaForResizer:self];
    v10 = v9;

    [v7 contentInset];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v7 verticalScrollIndicatorInsets];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [(ICScrollViewKeyboardResizer *)self delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [(ICScrollViewKeyboardResizer *)self delegate];
      [v25 topInsetForResizer:self];
      v18 = v26;

      v12 = v18;
    }

    [v7 setContentInset:{v12, v14, v10, v16}];
    [v7 setScrollIndicatorInsets:{v18, v20, v10, v22}];
  }

  [(ICScrollViewKeyboardResizer *)self setDidResizeScrollView:0];
}

- (void)animateUpdatedInsetsFromNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v6 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v4 userInfo];
  v16 = [v15 objectForKey:*MEMORY[0x1E69DDF40]];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v4 userInfo];

  v20 = [v19 objectForKey:*MEMORY[0x1E69DDF38]];
  v21 = [v20 unsignedIntegerValue];

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
  [MEMORY[0x1E69DD250] animateWithDuration:v21 << 16 delay:v22 options:0 animations:v18 completion:0.0];
}

- (void)handleKeyboardWillShow:(id)a3
{
  v4 = a3;
  [(ICScrollViewKeyboardResizer *)self setShowingKeyboard:1];
  [(ICScrollViewKeyboardResizer *)self animateUpdatedInsetsFromNotification:v4];
}

- (void)handleKeyboardWillHide:(id)a3
{
  v4 = a3;
  [(ICScrollViewKeyboardResizer *)self setShowingKeyboard:0];
  [(ICScrollViewKeyboardResizer *)self setFullyShowingKeyboard:0];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69DDF40]];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v4 userInfo];

  v10 = [v9 objectForKey:*MEMORY[0x1E69DDF38]];
  v11 = [v10 unsignedIntegerValue];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__ICScrollViewKeyboardResizer_handleKeyboardWillHide___block_invoke;
  v12[3] = &unk_1E84698E0;
  v12[4] = self;
  *&v12[5] = v8;
  [MEMORY[0x1E69DD250] animateWithDuration:v11 << 16 delay:v12 options:0 animations:v8 completion:0.0];
}

@end