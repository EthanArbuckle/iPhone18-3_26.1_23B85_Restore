@interface ICNoteEditorInputAccessoryView
- (BOOL)buttonsVisible;
- (CGSize)intrinsicContentSize;
- (ICNoteEditorInputAccessoryView)initWithFrame:(CGRect)a3;
- (ICNoteEditorInputAccessoryViewDelegate)delegate;
- (id)accessibilityElements;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)disclosureTapRecognizer:(id)a3;
- (void)hide;
- (void)hideDisclosureViewForTransition:(BOOL)a3;
- (void)safeAreaInsetsDidChange;
- (void)setButtonsVisible:(BOOL)a3;
- (void)setContentVisible:(BOOL)a3;
- (void)setToolbar:(id)a3;
- (void)showWithDelay:(double)a3;
- (void)toggleDisclosureViewCloseStateWithTap:(BOOL)a3;
- (void)updateDisclosureViewTrailingConstraint;
- (void)updateLayoutWithSize:(CGSize)a3;
- (void)updateToolbarColorsWithForceUpdate:(BOOL)a3;
@end

@implementation ICNoteEditorInputAccessoryView

- (ICNoteEditorInputAccessoryView)initWithFrame:(CGRect)a3
{
  v76.receiver = self;
  v76.super_class = ICNoteEditorInputAccessoryView;
  v3 = [(ICNoteEditorInputAccessoryView *)&v76 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICNoteEditorInputAccessoryView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [(ICNoteEditorInputAccessoryView *)v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:44.0];
    [(ICNoteEditorInputAccessoryView *)v4 setHeightConstraint:v7];

    v8 = [(ICNoteEditorInputAccessoryView *)v4 heightConstraint];
    [v5 addObject:v8];

    v9 = [ICNoteEditorInputAccessoryContainerView alloc];
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
    v14 = [(ICNoteEditorInputAccessoryContainerView *)v9 initWithFrame:*MEMORY[0x277CBF3A0], v11, v12, v13];
    [(ICNoteEditorInputAccessoryView *)v4 setContainerView:v14];

    v15 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    [(ICNoteEditorInputAccessoryView *)v4 addSubview:v15];

    v16 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    v18 = [v17 topAnchor];
    v19 = [(ICNoteEditorInputAccessoryView *)v4 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v5 addObject:v20];

    v21 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    v22 = [v21 leftAnchor];
    v23 = [(ICNoteEditorInputAccessoryView *)v4 leftAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v5 addObject:v24];

    v25 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    v26 = [v25 rightAnchor];
    v27 = [(ICNoteEditorInputAccessoryView *)v4 rightAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    [v5 addObject:v28];

    v29 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    v30 = [v29 bottomAnchor];
    v31 = [(ICNoteEditorInputAccessoryView *)v4 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    [(ICNoteEditorInputAccessoryView *)v4 setBottomConstraint:v32];

    v33 = [(ICNoteEditorInputAccessoryView *)v4 bottomConstraint];
    [v5 addObject:v33];

    v34 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10, v11, v12, v13}];
    [(ICNoteEditorInputAccessoryView *)v4 setBottomMarginView:v34];

    v35 = [MEMORY[0x277D75348] ICNoteEditorToolbarColor];
    v36 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    [v36 setBackgroundColor:v35];

    v37 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    [(ICNoteEditorInputAccessoryView *)v4 addSubview:v37];

    v38 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

    v39 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    v40 = [v39 topAnchor];
    v41 = [(ICNoteEditorInputAccessoryView *)v4 topAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:44.0];
    [(ICNoteEditorInputAccessoryView *)v4 setBottomMarginViewTopConstraint:v42];

    v43 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginViewTopConstraint];
    [v5 addObject:v43];

    v44 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    v45 = [v44 leftAnchor];
    v46 = [(ICNoteEditorInputAccessoryView *)v4 leftAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];
    [v5 addObject:v47];

    v48 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    v49 = [v48 rightAnchor];
    v50 = [(ICNoteEditorInputAccessoryView *)v4 rightAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];
    [v5 addObject:v51];

    v52 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    v53 = [v52 bottomAnchor];
    v54 = [(ICNoteEditorInputAccessoryView *)v4 bottomAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];
    [v5 addObject:v55];

    v56 = [[ICNoteEditorToolbarDisclosureView alloc] initWithFrame:0.0, 0.0, 44.0, 44.0];
    [(ICNoteEditorInputAccessoryView *)v4 setDisclosureView:v56];

    v57 = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];

    v58 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    v59 = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    [v58 addSubview:v59];

    v60 = MEMORY[0x277CCAAD0];
    v61 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    v62 = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    v63 = [v60 constraintWithItem:v61 attribute:4 relatedBy:0 toItem:v62 attribute:4 multiplier:1.0 constant:16.0];
    [(ICNoteEditorInputAccessoryView *)v4 setDisclosureViewBottomConstraint:v63];

    v64 = [(ICNoteEditorInputAccessoryView *)v4 disclosureViewBottomConstraint];
    [v5 addObject:v64];

    v65 = MEMORY[0x277CCAAD0];
    v66 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    v67 = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    v68 = [v65 constraintWithItem:v66 attribute:6 relatedBy:0 toItem:v67 attribute:6 multiplier:1.0 constant:16.0];
    [(ICNoteEditorInputAccessoryView *)v4 setDisclosureViewTrailingConstraint:v68];

    v69 = [(ICNoteEditorInputAccessoryView *)v4 disclosureViewTrailingConstraint];
    [v5 addObject:v69];

    v70 = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    v71 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel_disclosureTapRecognizer_];
    [v70 addGestureRecognizer:v71];

    v72 = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    v73 = [v72 closeState];

    [(ICNoteEditorInputAccessoryView *)v4 setClipsToBounds:v73];
    [MEMORY[0x277CCAAD0] activateConstraints:v5];
    v74 = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    [v74 setHidden:1];
  }

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = ICNoteEditorInputAccessoryView;
  v5 = [(ICNoteEditorInputAccessoryView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (CGSize)intrinsicContentSize
{
  [(ICNoteEditorInputAccessoryView *)self safeAreaInsets];
  v3 = v2 + 44.0;
  v4 = -1.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)safeAreaInsetsDidChange
{
  [(ICNoteEditorInputAccessoryView *)self safeAreaInsets];
  v4 = v3;
  if ([MEMORY[0x277D75658] shouldMinimizeForHardwareKeyboard])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = v5 + 44.0;
  v7 = [(ICNoteEditorInputAccessoryView *)self heightConstraint];
  [v7 setConstant:v5 + 44.0];

  v8 = [(ICNoteEditorInputAccessoryView *)self bottomConstraint];
  [v8 setConstant:-v5];

  [(ICNoteEditorInputAccessoryView *)self updateDisclosureViewTrailingConstraint];
  v9 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  if ([v9 closeState])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5 + 44.0;
  }

  v11 = [(ICNoteEditorInputAccessoryView *)self toolbarTopConstraint];
  [v11 setConstant:v10];

  v13 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  if ([v13 closeState])
  {
    v6 = 44.0;
  }

  v12 = [(ICNoteEditorInputAccessoryView *)self bottomMarginViewTopConstraint];
  [v12 setConstant:v6];
}

- (void)setToolbar:(id)a3
{
  v5 = a3;
  toolbar = self->_toolbar;
  if (toolbar != v5)
  {
    v32 = v5;
    [(UIToolbar *)toolbar removeFromSuperview];
    objc_storeStrong(&self->_toolbar, a3);
    v5 = v32;
    if (v32)
    {
      [(UIToolbar *)v32 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIToolbar *)v32 setClipsToBounds:1];
      [(ICNoteEditorInputAccessoryView *)self updateToolbarColorsWithForceUpdate:1];
      v7 = [(ICNoteEditorInputAccessoryView *)self containerView];
      v8 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
      [v7 insertSubview:v32 belowSubview:v8];

      v9 = [(ICNoteEditorInputAccessoryView *)self containerView];
      v10 = [(ICNoteEditorInputAccessoryView *)self bottomMarginView];
      [v9 sendSubviewToBack:v10];

      v11 = MEMORY[0x277CCAAD0];
      v12 = [(ICNoteEditorInputAccessoryView *)self containerView];
      v13 = 0.0;
      v14 = [v11 constraintWithItem:v12 attribute:5 relatedBy:0 toItem:v32 attribute:5 multiplier:1.0 constant:0.0];
      [(ICNoteEditorInputAccessoryView *)self addConstraint:v14];

      v15 = MEMORY[0x277CCAAD0];
      v16 = [(ICNoteEditorInputAccessoryView *)self containerView];
      v17 = [v15 constraintWithItem:v32 attribute:6 relatedBy:0 toItem:v16 attribute:6 multiplier:1.0 constant:0.0];
      [(ICNoteEditorInputAccessoryView *)self addConstraint:v17];

      v18 = [MEMORY[0x277CCAAD0] constraintWithItem:v32 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:44.0];
      [(ICNoteEditorInputAccessoryView *)self addConstraint:v18];

      v19 = MEMORY[0x277CCAAD0];
      v20 = [(ICNoteEditorInputAccessoryView *)self containerView];
      v21 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
      if (([v21 closeState] & 1) == 0)
      {
        [(ICNoteEditorInputAccessoryView *)self safeAreaInsets];
        v13 = v22 + 44.0;
      }

      v23 = [v19 constraintWithItem:v32 attribute:3 relatedBy:0 toItem:v20 attribute:3 multiplier:1.0 constant:v13];
      [(ICNoteEditorInputAccessoryView *)self setToolbarTopConstraint:v23];

      v24 = [(ICNoteEditorInputAccessoryView *)self toolbarTopConstraint];
      [(ICNoteEditorInputAccessoryView *)self addConstraint:v24];

      v25 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
      v26 = [v25 closeState];
      v27 = [(ICNoteEditorInputAccessoryView *)self toolbar];
      [v27 setHidden:v26 ^ 1u];

      v28 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
      v29 = [v28 closeState];
      v30 = [(ICNoteEditorInputAccessoryView *)self bottomMarginView];
      [v30 setHidden:v29 ^ 1u];

      v31 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
      [v31 setHidden:1];

      v5 = v32;
    }
  }
}

- (void)showWithDelay:(double)a3
{
  if ([(ICNoteEditorInputAccessoryView *)self setButtonsVisibleWhenShown])
  {
    [(ICNoteEditorInputAccessoryView *)self setButtonsVisible:1];
    [(ICNoteEditorInputAccessoryView *)self setSetButtonsVisibleWhenShown:0];
  }

  v5 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  v6 = [v5 closeState];

  if (v6)
  {
    v7 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
    [v7 setHidden:0];

    v8 = [(ICNoteEditorInputAccessoryView *)self toolbar];
    [v8 setHidden:0];

    v11 = [(ICNoteEditorInputAccessoryView *)self bottomMarginView];
    [v11 setHidden:0];
  }

  else
  {
    CGAffineTransformMakeScale(&v14, 0.0, 0.0);
    v9 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
    v13 = v14;
    [v9 setTransform:&v13];

    v10 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
    [v10 setHidden:0];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__ICNoteEditorInputAccessoryView_showWithDelay___block_invoke;
    v12[3] = &unk_2781ABCF8;
    v12[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v12 options:0 animations:0.13 completion:a3];
  }
}

void __48__ICNoteEditorInputAccessoryView_showWithDelay___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v4, 1.0, 1.0);
  v2 = [*(a1 + 32) disclosureView];
  v3 = v4;
  [v2 setTransform:&v3];
}

- (void)hide
{
  v3 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  v4 = [v3 closeState];

  v5 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  [v5 setHidden:1];

  if (v4)
  {
    v6 = [(ICNoteEditorInputAccessoryView *)self toolbar];
    [v6 setHidden:1];
  }

  else
  {
    v7 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
    [v7 setCloseState:0];

    [(ICNoteEditorInputAccessoryView *)self safeAreaInsets];
    v9 = v8 + 44.0;
    v10 = [(ICNoteEditorInputAccessoryView *)self toolbarTopConstraint];
    [v10 setConstant:v9];

    v11 = [(ICNoteEditorInputAccessoryView *)self toolbar];
    [v11 setHidden:1];

    v12 = [(ICNoteEditorInputAccessoryView *)self toolbar];
    [v12 layoutIfNeeded];

    [(ICNoteEditorInputAccessoryView *)self safeAreaInsets];
    v14 = v13 + 44.0;
    v6 = [(ICNoteEditorInputAccessoryView *)self bottomMarginViewTopConstraint];
    [v6 setConstant:v14];
  }

  v15 = [(ICNoteEditorInputAccessoryView *)self bottomMarginView];
  [v15 setHidden:1];
}

- (void)setContentVisible:(BOOL)a3
{
  if (a3)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [(ICNoteEditorInputAccessoryView *)self containerView];
  [v4 setAlpha:v3];
}

- (void)setButtonsVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  v6 = [v5 closeState];

  if (v6 != v3)
  {

    [(ICNoteEditorInputAccessoryView *)self toggleDisclosureViewCloseStateWithTap:0];
  }
}

- (BOOL)buttonsVisible
{
  v2 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  v3 = [v2 closeState];

  return v3;
}

- (void)hideDisclosureViewForTransition:(BOOL)a3
{
  v3 = a3;
  if (![(ICNoteEditorInputAccessoryView *)self buttonsVisible])
  {
    v5 = 1.0;
    v6[1] = 3221225472;
    v6[0] = MEMORY[0x277D85DD0];
    v6[2] = __66__ICNoteEditorInputAccessoryView_hideDisclosureViewForTransition___block_invoke;
    v6[3] = &unk_2781AD1C0;
    if (v3)
    {
      v5 = 0.0;
    }

    v6[4] = self;
    *&v6[5] = v5;
    [MEMORY[0x277D75D18] animateWithDuration:v6 animations:0.2];
  }
}

void __66__ICNoteEditorInputAccessoryView_hideDisclosureViewForTransition___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) disclosureView];
  [v2 setAlpha:v1];
}

- (void)updateDisclosureViewTrailingConstraint
{
  v8 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  v3 = 16.0;
  if ([v8 closeState])
  {
    [(ICNoteEditorInputAccessoryView *)self disclosureViewCloseTrailingOffset];
    v3 = v4;
  }

  [(ICNoteEditorInputAccessoryView *)self ic_directionalSafeAreaInsets];
  v6 = v3 + v5;
  v7 = [(ICNoteEditorInputAccessoryView *)self disclosureViewTrailingConstraint];
  [v7 setConstant:v6];
}

- (void)updateLayoutWithSize:(CGSize)a3
{
  v4 = a3.width <= a3.height;
  v5 = 16.0;
  if (!v4)
  {
    v5 = 15.0;
  }

  *&v5 = v5;
  [(ICNoteEditorInputAccessoryView *)self setDisclosureViewCloseTrailingOffset:v5];

  [(ICNoteEditorInputAccessoryView *)self updateDisclosureViewTrailingConstraint];
}

- (void)toggleDisclosureViewCloseStateWithTap:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 inputAccessoryDisclosureStateWillChange:self];
  }

  [(ICNoteEditorInputAccessoryView *)self safeAreaInsets];
  v9 = v8 + 44.0;
  v10 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  v11 = [v10 closeState];
  v12 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  [v12 setCloseState:v11 ^ 1u];

  v13 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  v14 = [v13 closeState];

  if (v14)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __72__ICNoteEditorInputAccessoryView_toggleDisclosureViewCloseStateWithTap___block_invoke;
    v29[3] = &unk_2781AD1C0;
    v29[4] = self;
    *&v29[5] = v9;
    [MEMORY[0x277D75D18] performWithoutAnimation:v29];
    v15 = [(ICNoteEditorInputAccessoryView *)self toolbarTopConstraint];
    [v15 setConstant:0.0];

    v16 = [(ICNoteEditorInputAccessoryView *)self bottomMarginViewTopConstraint];
    v17 = v16;
    v18 = 44.0;
  }

  else
  {
    v19 = [(ICNoteEditorInputAccessoryView *)self toolbarTopConstraint];
    [v19 setConstant:v9];

    v16 = [(ICNoteEditorInputAccessoryView *)self bottomMarginViewTopConstraint];
    v17 = v16;
    v18 = v9;
  }

  [v16 setConstant:v18];

  v20 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  if ([v20 closeState])
  {
    v21 = 0.5;
  }

  else
  {
    v21 = 16.0;
  }

  v22 = [(ICNoteEditorInputAccessoryView *)self disclosureViewBottomConstraint];
  [v22 setConstant:v21];

  [(ICNoteEditorInputAccessoryView *)self updateDisclosureViewTrailingConstraint];
  v23 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  LOBYTE(v22) = [v23 closeState];

  if ((v22 & 1) == 0)
  {
    [(ICNoteEditorInputAccessoryView *)self setClipsToBounds:0];
  }

  v27[4] = self;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __72__ICNoteEditorInputAccessoryView_toggleDisclosureViewCloseStateWithTap___block_invoke_2;
  v28[3] = &unk_2781ABCF8;
  v28[4] = self;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __72__ICNoteEditorInputAccessoryView_toggleDisclosureViewCloseStateWithTap___block_invoke_3;
  v27[3] = &unk_2781AD098;
  [MEMORY[0x277D75D18] animateWithDuration:v28 animations:v27 completion:0.25];
  v24 = objc_loadWeakRetained(&self->_delegate);
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = objc_loadWeakRetained(&self->_delegate);
    [v26 inputAccessoryDisclosureStateDidChange:self tapped:v3];
  }
}

uint64_t __72__ICNoteEditorInputAccessoryView_toggleDisclosureViewCloseStateWithTap___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) toolbarTopConstraint];
  [v3 setConstant:v2];

  v4 = [*(a1 + 32) toolbar];
  [v4 setHidden:0];

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) bottomMarginViewTopConstraint];
  [v6 setConstant:v5];

  v7 = [*(a1 + 32) bottomMarginView];
  [v7 setHidden:0];

  [*(a1 + 32) setNeedsLayout];
  v8 = *(a1 + 32);

  return [v8 layoutIfNeeded];
}

void __72__ICNoteEditorInputAccessoryView_toggleDisclosureViewCloseStateWithTap___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) disclosureView];
  v3 = [v2 closeState];
  v4 = [*(a1 + 32) toolbar];
  [v4 setHidden:v3 ^ 1u];

  v5 = [*(a1 + 32) disclosureView];
  v6 = [v5 closeState];
  v7 = [*(a1 + 32) bottomMarginView];
  [v7 setHidden:v6 ^ 1u];

  v8 = [*(a1 + 32) disclosureView];
  v9 = [v8 closeState];

  if (v9)
  {
    v10 = *(a1 + 32);

    [v10 setClipsToBounds:1];
  }
}

- (void)disclosureTapRecognizer:(id)a3
{
  [(ICNoteEditorInputAccessoryView *)self toggleDisclosureViewCloseStateWithTap:1];
  v4 = *MEMORY[0x277D76488];
  v5 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  UIAccessibilityPostNotification(v4, v5);
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  v5 = [v4 closeState];

  if (v5)
  {
    v6 = [(ICNoteEditorInputAccessoryView *)self toolbar];
    v7 = [v6 _accessibleSubviews];
    [v3 addObjectsFromArray:v7];
  }

  v8 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  [v3 addObject:v8];

  v9 = [v3 copy];

  return v9;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = ICNoteEditorInputAccessoryView;
  [(ICNoteEditorInputAccessoryView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(ICNoteEditorInputAccessoryView *)self updateToolbarColorsWithForceUpdate:1];
}

- (void)updateToolbarColorsWithForceUpdate:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  v6 = [v5 itemColor];

  v7 = [(ICNoteEditorInputAccessoryView *)self toolbar];
  v8 = [v7 tintColor];
  v9 = [v8 isEqual:v6];

  if (!v9 || v3)
  {
    [v7 setTintColor:v6];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [v7 items];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v16 + 1) + 8 * v14++) setTintColor:v6];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    v15 = [MEMORY[0x277D75348] ICNoteEditorToolbarColor];
    [v7 setBarTintColor:v15];
  }
}

- (ICNoteEditorInputAccessoryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end