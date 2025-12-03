@interface ICNoteEditorInputAccessoryView
- (BOOL)buttonsVisible;
- (CGSize)intrinsicContentSize;
- (ICNoteEditorInputAccessoryView)initWithFrame:(CGRect)frame;
- (ICNoteEditorInputAccessoryViewDelegate)delegate;
- (id)accessibilityElements;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)disclosureTapRecognizer:(id)recognizer;
- (void)hide;
- (void)hideDisclosureViewForTransition:(BOOL)transition;
- (void)safeAreaInsetsDidChange;
- (void)setButtonsVisible:(BOOL)visible;
- (void)setContentVisible:(BOOL)visible;
- (void)setToolbar:(id)toolbar;
- (void)showWithDelay:(double)delay;
- (void)toggleDisclosureViewCloseStateWithTap:(BOOL)tap;
- (void)updateDisclosureViewTrailingConstraint;
- (void)updateLayoutWithSize:(CGSize)size;
- (void)updateToolbarColorsWithForceUpdate:(BOOL)update;
@end

@implementation ICNoteEditorInputAccessoryView

- (ICNoteEditorInputAccessoryView)initWithFrame:(CGRect)frame
{
  v76.receiver = self;
  v76.super_class = ICNoteEditorInputAccessoryView;
  v3 = [(ICNoteEditorInputAccessoryView *)&v76 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICNoteEditorInputAccessoryView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    array = [MEMORY[0x277CBEB18] array];
    heightAnchor = [(ICNoteEditorInputAccessoryView *)v4 heightAnchor];
    v7 = [heightAnchor constraintEqualToConstant:44.0];
    [(ICNoteEditorInputAccessoryView *)v4 setHeightConstraint:v7];

    heightConstraint = [(ICNoteEditorInputAccessoryView *)v4 heightConstraint];
    [array addObject:heightConstraint];

    v9 = [ICNoteEditorInputAccessoryContainerView alloc];
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
    v14 = [(ICNoteEditorInputAccessoryContainerView *)v9 initWithFrame:*MEMORY[0x277CBF3A0], v11, v12, v13];
    [(ICNoteEditorInputAccessoryView *)v4 setContainerView:v14];

    containerView = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    [(ICNoteEditorInputAccessoryView *)v4 addSubview:containerView];

    containerView2 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    [containerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    containerView3 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    topAnchor = [containerView3 topAnchor];
    topAnchor2 = [(ICNoteEditorInputAccessoryView *)v4 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v20];

    containerView4 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    leftAnchor = [containerView4 leftAnchor];
    leftAnchor2 = [(ICNoteEditorInputAccessoryView *)v4 leftAnchor];
    v24 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [array addObject:v24];

    containerView5 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    rightAnchor = [containerView5 rightAnchor];
    rightAnchor2 = [(ICNoteEditorInputAccessoryView *)v4 rightAnchor];
    v28 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [array addObject:v28];

    containerView6 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    bottomAnchor = [containerView6 bottomAnchor];
    bottomAnchor2 = [(ICNoteEditorInputAccessoryView *)v4 bottomAnchor];
    v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(ICNoteEditorInputAccessoryView *)v4 setBottomConstraint:v32];

    bottomConstraint = [(ICNoteEditorInputAccessoryView *)v4 bottomConstraint];
    [array addObject:bottomConstraint];

    v34 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10, v11, v12, v13}];
    [(ICNoteEditorInputAccessoryView *)v4 setBottomMarginView:v34];

    iCNoteEditorToolbarColor = [MEMORY[0x277D75348] ICNoteEditorToolbarColor];
    bottomMarginView = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    [bottomMarginView setBackgroundColor:iCNoteEditorToolbarColor];

    bottomMarginView2 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    [(ICNoteEditorInputAccessoryView *)v4 addSubview:bottomMarginView2];

    bottomMarginView3 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    [bottomMarginView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    bottomMarginView4 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    topAnchor3 = [bottomMarginView4 topAnchor];
    topAnchor4 = [(ICNoteEditorInputAccessoryView *)v4 topAnchor];
    v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:44.0];
    [(ICNoteEditorInputAccessoryView *)v4 setBottomMarginViewTopConstraint:v42];

    bottomMarginViewTopConstraint = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginViewTopConstraint];
    [array addObject:bottomMarginViewTopConstraint];

    bottomMarginView5 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    leftAnchor3 = [bottomMarginView5 leftAnchor];
    leftAnchor4 = [(ICNoteEditorInputAccessoryView *)v4 leftAnchor];
    v47 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    [array addObject:v47];

    bottomMarginView6 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    rightAnchor3 = [bottomMarginView6 rightAnchor];
    rightAnchor4 = [(ICNoteEditorInputAccessoryView *)v4 rightAnchor];
    v51 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    [array addObject:v51];

    bottomMarginView7 = [(ICNoteEditorInputAccessoryView *)v4 bottomMarginView];
    bottomAnchor3 = [bottomMarginView7 bottomAnchor];
    bottomAnchor4 = [(ICNoteEditorInputAccessoryView *)v4 bottomAnchor];
    v55 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [array addObject:v55];

    v56 = [[ICNoteEditorToolbarDisclosureView alloc] initWithFrame:0.0, 0.0, 44.0, 44.0];
    [(ICNoteEditorInputAccessoryView *)v4 setDisclosureView:v56];

    disclosureView = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    [disclosureView setTranslatesAutoresizingMaskIntoConstraints:0];

    containerView7 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    disclosureView2 = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    [containerView7 addSubview:disclosureView2];

    v60 = MEMORY[0x277CCAAD0];
    containerView8 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    disclosureView3 = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    v63 = [v60 constraintWithItem:containerView8 attribute:4 relatedBy:0 toItem:disclosureView3 attribute:4 multiplier:1.0 constant:16.0];
    [(ICNoteEditorInputAccessoryView *)v4 setDisclosureViewBottomConstraint:v63];

    disclosureViewBottomConstraint = [(ICNoteEditorInputAccessoryView *)v4 disclosureViewBottomConstraint];
    [array addObject:disclosureViewBottomConstraint];

    v65 = MEMORY[0x277CCAAD0];
    containerView9 = [(ICNoteEditorInputAccessoryView *)v4 containerView];
    disclosureView4 = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    v68 = [v65 constraintWithItem:containerView9 attribute:6 relatedBy:0 toItem:disclosureView4 attribute:6 multiplier:1.0 constant:16.0];
    [(ICNoteEditorInputAccessoryView *)v4 setDisclosureViewTrailingConstraint:v68];

    disclosureViewTrailingConstraint = [(ICNoteEditorInputAccessoryView *)v4 disclosureViewTrailingConstraint];
    [array addObject:disclosureViewTrailingConstraint];

    disclosureView5 = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    v71 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel_disclosureTapRecognizer_];
    [disclosureView5 addGestureRecognizer:v71];

    disclosureView6 = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    closeState = [disclosureView6 closeState];

    [(ICNoteEditorInputAccessoryView *)v4 setClipsToBounds:closeState];
    [MEMORY[0x277CCAAD0] activateConstraints:array];
    disclosureView7 = [(ICNoteEditorInputAccessoryView *)v4 disclosureView];
    [disclosureView7 setHidden:1];
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = ICNoteEditorInputAccessoryView;
  v5 = [(ICNoteEditorInputAccessoryView *)&v10 hitTest:event withEvent:test.x, test.y];
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
  heightConstraint = [(ICNoteEditorInputAccessoryView *)self heightConstraint];
  [heightConstraint setConstant:v5 + 44.0];

  bottomConstraint = [(ICNoteEditorInputAccessoryView *)self bottomConstraint];
  [bottomConstraint setConstant:-v5];

  [(ICNoteEditorInputAccessoryView *)self updateDisclosureViewTrailingConstraint];
  disclosureView = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  if ([disclosureView closeState])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5 + 44.0;
  }

  toolbarTopConstraint = [(ICNoteEditorInputAccessoryView *)self toolbarTopConstraint];
  [toolbarTopConstraint setConstant:v10];

  disclosureView2 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  if ([disclosureView2 closeState])
  {
    v6 = 44.0;
  }

  bottomMarginViewTopConstraint = [(ICNoteEditorInputAccessoryView *)self bottomMarginViewTopConstraint];
  [bottomMarginViewTopConstraint setConstant:v6];
}

- (void)setToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  toolbar = self->_toolbar;
  if (toolbar != toolbarCopy)
  {
    v32 = toolbarCopy;
    [(UIToolbar *)toolbar removeFromSuperview];
    objc_storeStrong(&self->_toolbar, toolbar);
    toolbarCopy = v32;
    if (v32)
    {
      [(UIToolbar *)v32 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIToolbar *)v32 setClipsToBounds:1];
      [(ICNoteEditorInputAccessoryView *)self updateToolbarColorsWithForceUpdate:1];
      containerView = [(ICNoteEditorInputAccessoryView *)self containerView];
      disclosureView = [(ICNoteEditorInputAccessoryView *)self disclosureView];
      [containerView insertSubview:v32 belowSubview:disclosureView];

      containerView2 = [(ICNoteEditorInputAccessoryView *)self containerView];
      bottomMarginView = [(ICNoteEditorInputAccessoryView *)self bottomMarginView];
      [containerView2 sendSubviewToBack:bottomMarginView];

      v11 = MEMORY[0x277CCAAD0];
      containerView3 = [(ICNoteEditorInputAccessoryView *)self containerView];
      v13 = 0.0;
      v14 = [v11 constraintWithItem:containerView3 attribute:5 relatedBy:0 toItem:v32 attribute:5 multiplier:1.0 constant:0.0];
      [(ICNoteEditorInputAccessoryView *)self addConstraint:v14];

      v15 = MEMORY[0x277CCAAD0];
      containerView4 = [(ICNoteEditorInputAccessoryView *)self containerView];
      v17 = [v15 constraintWithItem:v32 attribute:6 relatedBy:0 toItem:containerView4 attribute:6 multiplier:1.0 constant:0.0];
      [(ICNoteEditorInputAccessoryView *)self addConstraint:v17];

      v18 = [MEMORY[0x277CCAAD0] constraintWithItem:v32 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:44.0];
      [(ICNoteEditorInputAccessoryView *)self addConstraint:v18];

      v19 = MEMORY[0x277CCAAD0];
      containerView5 = [(ICNoteEditorInputAccessoryView *)self containerView];
      disclosureView2 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
      if (([disclosureView2 closeState] & 1) == 0)
      {
        [(ICNoteEditorInputAccessoryView *)self safeAreaInsets];
        v13 = v22 + 44.0;
      }

      v23 = [v19 constraintWithItem:v32 attribute:3 relatedBy:0 toItem:containerView5 attribute:3 multiplier:1.0 constant:v13];
      [(ICNoteEditorInputAccessoryView *)self setToolbarTopConstraint:v23];

      toolbarTopConstraint = [(ICNoteEditorInputAccessoryView *)self toolbarTopConstraint];
      [(ICNoteEditorInputAccessoryView *)self addConstraint:toolbarTopConstraint];

      disclosureView3 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
      closeState = [disclosureView3 closeState];
      toolbar = [(ICNoteEditorInputAccessoryView *)self toolbar];
      [toolbar setHidden:closeState ^ 1u];

      disclosureView4 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
      closeState2 = [disclosureView4 closeState];
      bottomMarginView2 = [(ICNoteEditorInputAccessoryView *)self bottomMarginView];
      [bottomMarginView2 setHidden:closeState2 ^ 1u];

      disclosureView5 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
      [disclosureView5 setHidden:1];

      toolbarCopy = v32;
    }
  }
}

- (void)showWithDelay:(double)delay
{
  if ([(ICNoteEditorInputAccessoryView *)self setButtonsVisibleWhenShown])
  {
    [(ICNoteEditorInputAccessoryView *)self setButtonsVisible:1];
    [(ICNoteEditorInputAccessoryView *)self setSetButtonsVisibleWhenShown:0];
  }

  disclosureView = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  closeState = [disclosureView closeState];

  if (closeState)
  {
    disclosureView2 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
    [disclosureView2 setHidden:0];

    toolbar = [(ICNoteEditorInputAccessoryView *)self toolbar];
    [toolbar setHidden:0];

    bottomMarginView = [(ICNoteEditorInputAccessoryView *)self bottomMarginView];
    [bottomMarginView setHidden:0];
  }

  else
  {
    CGAffineTransformMakeScale(&v14, 0.0, 0.0);
    disclosureView3 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
    v13 = v14;
    [disclosureView3 setTransform:&v13];

    disclosureView4 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
    [disclosureView4 setHidden:0];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__ICNoteEditorInputAccessoryView_showWithDelay___block_invoke;
    v12[3] = &unk_2781ABCF8;
    v12[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v12 options:0 animations:0.13 completion:delay];
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
  disclosureView = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  closeState = [disclosureView closeState];

  disclosureView2 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  [disclosureView2 setHidden:1];

  if (closeState)
  {
    toolbar = [(ICNoteEditorInputAccessoryView *)self toolbar];
    [toolbar setHidden:1];
  }

  else
  {
    disclosureView3 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
    [disclosureView3 setCloseState:0];

    [(ICNoteEditorInputAccessoryView *)self safeAreaInsets];
    v9 = v8 + 44.0;
    toolbarTopConstraint = [(ICNoteEditorInputAccessoryView *)self toolbarTopConstraint];
    [toolbarTopConstraint setConstant:v9];

    toolbar2 = [(ICNoteEditorInputAccessoryView *)self toolbar];
    [toolbar2 setHidden:1];

    toolbar3 = [(ICNoteEditorInputAccessoryView *)self toolbar];
    [toolbar3 layoutIfNeeded];

    [(ICNoteEditorInputAccessoryView *)self safeAreaInsets];
    v14 = v13 + 44.0;
    toolbar = [(ICNoteEditorInputAccessoryView *)self bottomMarginViewTopConstraint];
    [toolbar setConstant:v14];
  }

  bottomMarginView = [(ICNoteEditorInputAccessoryView *)self bottomMarginView];
  [bottomMarginView setHidden:1];
}

- (void)setContentVisible:(BOOL)visible
{
  if (visible)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  containerView = [(ICNoteEditorInputAccessoryView *)self containerView];
  [containerView setAlpha:v3];
}

- (void)setButtonsVisible:(BOOL)visible
{
  visibleCopy = visible;
  disclosureView = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  closeState = [disclosureView closeState];

  if (closeState != visibleCopy)
  {

    [(ICNoteEditorInputAccessoryView *)self toggleDisclosureViewCloseStateWithTap:0];
  }
}

- (BOOL)buttonsVisible
{
  disclosureView = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  closeState = [disclosureView closeState];

  return closeState;
}

- (void)hideDisclosureViewForTransition:(BOOL)transition
{
  transitionCopy = transition;
  if (![(ICNoteEditorInputAccessoryView *)self buttonsVisible])
  {
    v5 = 1.0;
    v6[1] = 3221225472;
    v6[0] = MEMORY[0x277D85DD0];
    v6[2] = __66__ICNoteEditorInputAccessoryView_hideDisclosureViewForTransition___block_invoke;
    v6[3] = &unk_2781AD1C0;
    if (transitionCopy)
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
  disclosureView = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  v3 = 16.0;
  if ([disclosureView closeState])
  {
    [(ICNoteEditorInputAccessoryView *)self disclosureViewCloseTrailingOffset];
    v3 = v4;
  }

  [(ICNoteEditorInputAccessoryView *)self ic_directionalSafeAreaInsets];
  v6 = v3 + v5;
  disclosureViewTrailingConstraint = [(ICNoteEditorInputAccessoryView *)self disclosureViewTrailingConstraint];
  [disclosureViewTrailingConstraint setConstant:v6];
}

- (void)updateLayoutWithSize:(CGSize)size
{
  v4 = size.width <= size.height;
  v5 = 16.0;
  if (!v4)
  {
    v5 = 15.0;
  }

  *&v5 = v5;
  [(ICNoteEditorInputAccessoryView *)self setDisclosureViewCloseTrailingOffset:v5];

  [(ICNoteEditorInputAccessoryView *)self updateDisclosureViewTrailingConstraint];
}

- (void)toggleDisclosureViewCloseStateWithTap:(BOOL)tap
{
  tapCopy = tap;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 inputAccessoryDisclosureStateWillChange:self];
  }

  [(ICNoteEditorInputAccessoryView *)self safeAreaInsets];
  v9 = v8 + 44.0;
  disclosureView = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  closeState = [disclosureView closeState];
  disclosureView2 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  [disclosureView2 setCloseState:closeState ^ 1u];

  disclosureView3 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  closeState2 = [disclosureView3 closeState];

  if (closeState2)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __72__ICNoteEditorInputAccessoryView_toggleDisclosureViewCloseStateWithTap___block_invoke;
    v29[3] = &unk_2781AD1C0;
    v29[4] = self;
    *&v29[5] = v9;
    [MEMORY[0x277D75D18] performWithoutAnimation:v29];
    toolbarTopConstraint = [(ICNoteEditorInputAccessoryView *)self toolbarTopConstraint];
    [toolbarTopConstraint setConstant:0.0];

    bottomMarginViewTopConstraint = [(ICNoteEditorInputAccessoryView *)self bottomMarginViewTopConstraint];
    v17 = bottomMarginViewTopConstraint;
    v18 = 44.0;
  }

  else
  {
    toolbarTopConstraint2 = [(ICNoteEditorInputAccessoryView *)self toolbarTopConstraint];
    [toolbarTopConstraint2 setConstant:v9];

    bottomMarginViewTopConstraint = [(ICNoteEditorInputAccessoryView *)self bottomMarginViewTopConstraint];
    v17 = bottomMarginViewTopConstraint;
    v18 = v9;
  }

  [bottomMarginViewTopConstraint setConstant:v18];

  disclosureView4 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  if ([disclosureView4 closeState])
  {
    v21 = 0.5;
  }

  else
  {
    v21 = 16.0;
  }

  disclosureViewBottomConstraint = [(ICNoteEditorInputAccessoryView *)self disclosureViewBottomConstraint];
  [disclosureViewBottomConstraint setConstant:v21];

  [(ICNoteEditorInputAccessoryView *)self updateDisclosureViewTrailingConstraint];
  disclosureView5 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  LOBYTE(disclosureViewBottomConstraint) = [disclosureView5 closeState];

  if ((disclosureViewBottomConstraint & 1) == 0)
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
    [v26 inputAccessoryDisclosureStateDidChange:self tapped:tapCopy];
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

- (void)disclosureTapRecognizer:(id)recognizer
{
  [(ICNoteEditorInputAccessoryView *)self toggleDisclosureViewCloseStateWithTap:1];
  v4 = *MEMORY[0x277D76488];
  disclosureView = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  UIAccessibilityPostNotification(v4, disclosureView);
}

- (id)accessibilityElements
{
  array = [MEMORY[0x277CBEB18] array];
  disclosureView = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  closeState = [disclosureView closeState];

  if (closeState)
  {
    toolbar = [(ICNoteEditorInputAccessoryView *)self toolbar];
    _accessibleSubviews = [toolbar _accessibleSubviews];
    [array addObjectsFromArray:_accessibleSubviews];
  }

  disclosureView2 = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  [array addObject:disclosureView2];

  v9 = [array copy];

  return v9;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = ICNoteEditorInputAccessoryView;
  [(ICNoteEditorInputAccessoryView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(ICNoteEditorInputAccessoryView *)self updateToolbarColorsWithForceUpdate:1];
}

- (void)updateToolbarColorsWithForceUpdate:(BOOL)update
{
  updateCopy = update;
  v21 = *MEMORY[0x277D85DE8];
  disclosureView = [(ICNoteEditorInputAccessoryView *)self disclosureView];
  itemColor = [disclosureView itemColor];

  toolbar = [(ICNoteEditorInputAccessoryView *)self toolbar];
  tintColor = [toolbar tintColor];
  v9 = [tintColor isEqual:itemColor];

  if (!v9 || updateCopy)
  {
    [toolbar setTintColor:itemColor];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    items = [toolbar items];
    v11 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(items);
          }

          [*(*(&v16 + 1) + 8 * v14++) setTintColor:itemColor];
        }

        while (v12 != v14);
        v12 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    iCNoteEditorToolbarColor = [MEMORY[0x277D75348] ICNoteEditorToolbarColor];
    [toolbar setBarTintColor:iCNoteEditorToolbarColor];
  }
}

- (ICNoteEditorInputAccessoryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end