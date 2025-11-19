@interface OBWelcomeController
- (BOOL)_buttonTrayInlined;
- (BOOL)_landscapeiPhone;
- (BOOL)_scrollViewContentIsUnderTray;
- (BOOL)_usesAboveHeaderFullWidthLayout;
- (BOOL)contentViewUnderButtonTray;
- (BOOL)shouldInlineButtonTray;
- (CGRect)keyboardFrame;
- (OBWelcomeController)initWithTitle:(id)a3 attributedDetailText:(id)a4 contentLayout:(int64_t)a5;
- (OBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 appName:(id)a5 icon:(id)a6;
- (OBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (OBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (double)_contentViewHeight;
- (double)_headerTopOffset;
- (double)availableContentViewHeight;
- (double)contentViewsTopPaddingFromBottomOfHeader;
- (id)_currentContainerView;
- (id)setupHeaderViewIfNeeded:(id)a3 detailedText:(id)a4 icon:(id)a5;
- (int64_t)navigationBarScrollToEdgeBehavior;
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_animatePushTransitionForViews:(id)a3 transitionSubtype:(id)a4;
- (void)_commonInitWithContentLayout:(int64_t)a3;
- (void)_enableTrayButtonsForScrollToBottom:(id)a3;
- (void)_floatButtonTray;
- (void)_handleKeyboardPresentation:(id)a3;
- (void)_inlineButtonTray;
- (void)_inlineButtonTrayIfNeeded;
- (void)_keyboardWillHide:(id)a3;
- (void)_layoutButtonTray;
- (void)_registerForKeyboardNotifications;
- (void)_safelyAddConstraint:(id)a3 to:(id)a4;
- (void)_scrollViewDidLayoutSubviews:(id)a3;
- (void)_setupNavigationBarBleed;
- (void)_setupScrollView;
- (void)_unregisterForKeyboardNotifications;
- (void)_updateButtonTrayBackdrop;
- (void)_updateHeaderTopOffsetConstraint;
- (void)_updateScrollContentViewLayoutMargins;
- (void)_updateScrollViewInsets;
- (void)addBulletedListItemWithTitle:(id)a3 description:(id)a4 image:(id)a5 tintColor:(id)a6 linkButton:(id)a7;
- (void)addBulletedListItemWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5 tintColor:(id)a6 linkButton:(id)a7;
- (void)applicationDidBecomeActive:(id)a3;
- (void)loadView;
- (void)restoreNavigationBarAppearance;
- (void)scrollViewDidScroll:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setCallbackForLifeCyclePhase:(unint64_t)a3 callback:(id)a4;
- (void)setScrollingDisabled:(BOOL)a3;
- (void)setTemplateType:(unint64_t)a3;
- (void)setupBulletedListIfNeeded;
- (void)traitCollectionDidChange:(id)a3;
- (void)triggerCallbackForLifeCyclePhase:(unint64_t)a3;
- (void)updateDirectionalLayoutMargins;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation OBWelcomeController

- (void)setCallbackForLifeCyclePhase:(unint64_t)a3 callback:(id)a4
{
  v11 = a4;
  [(OBWelcomeController *)self _assertViewControllerIsNotASubclass];
  v6 = [(OBWelcomeController *)self callbacks];

  if (!v6)
  {
    v7 = objc_opt_new();
    [(OBWelcomeController *)self setCallbacks:v7];
  }

  v8 = MEMORY[0x1B8C83960](v11);
  v9 = [(OBWelcomeController *)self callbacks];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v9 setObject:v8 forKeyedSubscript:v10];
}

- (void)triggerCallbackForLifeCyclePhase:(unint64_t)a3
{
  v5 = [(OBWelcomeController *)self callbacks];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [v5 objectForKeyedSubscript:v6];

  v7 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, self);
    v7 = v8;
  }
}

- (void)addBulletedListItemWithTitle:(id)a3 description:(id)a4 image:(id)a5 tintColor:(id)a6 linkButton:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([(OBWelcomeController *)self contentViewLayout]!= 2)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Bulleted lists can only be positioned below the header userInfo:{normal width.", 0}];
    objc_exception_throw(v17);
  }

  [(OBWelcomeController *)self loadViewIfNeeded];
  [(OBWelcomeController *)self setupBulletedListIfNeeded];
  v16 = [(OBWelcomeController *)self bulletedList];
  [v16 addItemWithTitle:v18 description:v12 image:v13 tintColor:v14 linkButton:v15];
}

- (void)addBulletedListItemWithTitle:(id)a3 description:(id)a4 symbolName:(id)a5 tintColor:(id)a6 linkButton:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([(OBWelcomeController *)self contentViewLayout]!= 2)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Bulleted lists can only be positioned below the header userInfo:{normal width.", 0}];
    objc_exception_throw(v17);
  }

  [(OBWelcomeController *)self loadViewIfNeeded];
  [(OBWelcomeController *)self setupBulletedListIfNeeded];
  v16 = [(OBWelcomeController *)self bulletedList];
  [v16 addItemWithTitle:v18 description:v12 symbolName:v13 tintColor:v14 linkButton:v15];
}

- (void)_animatePushTransitionForViews:(id)a3 transitionSubtype:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E6979538] animation];
  v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v7 setTimingFunction:v8];

  [v7 setDuration:0.2];
  [v7 setType:@"push"];
  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  v10 = [v9 userInterfaceLayoutDirection];

  v11 = @"fromRight";
  if (v10 == 1)
  {
    v11 = @"fromLeft";
  }

  if (!v6)
  {
    v6 = v11;
  }

  [v7 setSubtype:v6];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    v16 = *MEMORY[0x1E697A028];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        v19 = [v18 layer];
        [v19 removeAllAnimations];

        v20 = [v18 layer];
        [v20 addAnimation:v7 forKey:v16];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (OBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 appName:(id)a5 icon:(id)a6
{
  v10 = a5;
  v11 = [(OBWelcomeController *)self initWithTitle:a3 detailText:a4 icon:a6 contentLayout:2];
  v12 = v11;
  if (v11)
  {
    v13 = [(OBWelcomeController *)v11 headerView];
    [v13 setAppNameForIntroScreen:v10];
  }

  return v12;
}

- (OBWelcomeController)initWithTitle:(id)a3 attributedDetailText:(id)a4 contentLayout:(int64_t)a5
{
  v8 = a4;
  v9 = [(OBWelcomeController *)self initWithTitle:a3 detailText:0 icon:0 contentLayout:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [(OBWelcomeController *)v9 headerView];
    [v11 setAttributedDetailText:v8];
  }

  return v10;
}

- (OBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = OBWelcomeController;
  v13 = [(OBWelcomeController *)&v17 initWithNibName:0 bundle:0];
  if (v13)
  {
    v14 = [[OBHeaderView alloc] initWithTitle:v10 detailText:v11 symbolName:v12 animated:1];
    [(OBWelcomeController *)v13 setHeaderView:v14];

    v15 = [(OBWelcomeController *)v13 headerView];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(OBWelcomeController *)v13 _commonInitWithContentLayout:a6];
  }

  return v13;
}

- (OBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = OBWelcomeController;
  v13 = [(OBWelcomeController *)&v17 initWithNibName:0 bundle:0];
  if (v13)
  {
    v14 = [[OBHeaderView alloc] initWithTitle:v10 detailText:v11 icon:v12];
    [(OBWelcomeController *)v13 setHeaderView:v14];

    v15 = [(OBWelcomeController *)v13 headerView];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(OBWelcomeController *)v13 _commonInitWithContentLayout:a6];
  }

  return v13;
}

- (void)_commonInitWithContentLayout:(int64_t)a3
{
  self->_shouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen = 1;
  self->_symbolNeedsAnimation = 0;
  v5 = [OBButtonTray alloc];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(OBButtonTray *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  [(OBWelcomeController *)self setButtonTray:v10];

  v11 = [(OBWelcomeController *)self buttonTray];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(OBWelcomeController *)self buttonTray];
  [v12 setParentViewController:self];

  v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
  [(OBWelcomeController *)self setButtonTrayScrollContainerView:v13];

  v14 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(OBWelcomeController *)self setContentViewLayout:a3];
  v15 = [(OBWelcomeController *)self _usesAboveHeaderFullWidthLayout];
  v16 = a3 == 4 || v15;
  v17 = [[OBContentView alloc] initWithFrame:v16 aboveHeaderLayout:v6, v7, v8, v9];
  [(OBWelcomeController *)self setContentView:v17];

  v18 = [(OBWelcomeController *)self contentView];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (a3 == 4)
  {
    v19 = [[OBContentView alloc] initWithFrame:v6, v7, v8, v9];
    secondaryContentView = self->_secondaryContentView;
    self->_secondaryContentView = &v19->super;

    [(OBWelcomeController *)self setIncludePaddingAboveContentView:1];
  }

  else
  {
    [(OBWelcomeController *)self setIncludePaddingAboveContentView:1];
    if ((a3 - 5) <= 1)
    {
      v21 = [(OBWelcomeController *)self headerView];
      [v21 setForceCenterAlignment:1];
    }
  }
}

- (id)setupHeaderViewIfNeeded:(id)a3 detailedText:(id)a4 icon:(id)a5
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v12 = [[OBHeaderView alloc] initWithTitle:v11 detailText:v10 icon:v9];

    v13 = self->_headerView;
    self->_headerView = v12;

    [(OBHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
    headerView = self->_headerView;
  }

  v14 = headerView;

  return v14;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = OBWelcomeController;
  [(OBBaseWelcomeController *)&v3 loadView];
  [(OBWelcomeController *)self _setupScrollView];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = OBWelcomeController;
  [(OBWelcomeController *)&v3 viewWillLayoutSubviews];
  [(OBWelcomeController *)self triggerCallbackForLifeCyclePhase:5];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = OBWelcomeController;
  [(OBBaseWelcomeController *)&v3 viewDidLayoutSubviews];
  if ([(OBWelcomeController *)self _appearState]!= 3)
  {
    if ([(OBWelcomeController *)self _appearState])
    {
      [(OBWelcomeController *)self _inlineButtonTrayIfNeeded];
      [(OBWelcomeController *)self updateNavigationBarAnimated:0];
      [(OBWelcomeController *)self _updateHeaderTopOffsetConstraint];
      [(OBWelcomeController *)self _updateButtonTrayBackdrop];
      [(OBWelcomeController *)self _updateScrollViewInsets];
      [(OBWelcomeController *)self triggerCallbackForLifeCyclePhase:6];
    }
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = OBWelcomeController;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

  [(OBWelcomeController *)self triggerCallbackForLifeCyclePhase:0];
}

- (void)applicationDidBecomeActive:(id)a3
{
  if (self->_symbolNeedsAnimation)
  {
    v4 = [(OBWelcomeController *)self headerView];
    [v4 startSymbolAnimation];

    self->_symbolNeedsAnimation = 0;
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = +[OBDevice currentDevice];
  v4 = [v3 type];

  if (v4 == 1)
  {
    return 6;
  }

  v6.receiver = self;
  v6.super_class = OBWelcomeController;
  return [(OBWelcomeController *)&v6 supportedInterfaceOrientations];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = OBWelcomeController;
  [(OBWelcomeController *)&v8 traitCollectionDidChange:a3];
  if ([(OBWelcomeController *)self _usesAboveHeaderFullWidthLayout]|| [(OBWelcomeController *)self contentViewLayout]== 4)
  {
    [(OBWelcomeController *)self _contentViewHeight];
    v5 = v4;
    v6 = [(OBWelcomeController *)self contentViewHeightConstraint];
    [v6 setConstant:v5];
  }

  v7 = [(OBWelcomeController *)self view];
  [v7 layoutIfNeeded];

  [(OBWelcomeController *)self _layoutButtonTray];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v20.receiver = self;
  v20.super_class = OBWelcomeController;
  v7 = a4;
  [(OBBaseWelcomeController *)&v20 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(OBWelcomeController *)self view];
  v9 = [OBViewUtilities activeInterfaceOrientationForView:v8];

  v10 = [(OBWelcomeController *)self view];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__OBWelcomeController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v19[3] = &unk_1E7C15B78;
  v19[4] = self;
  v19[5] = v9;
  v19[6] = v12;
  v19[7] = v14;
  v19[8] = v16;
  v19[9] = v18;
  [v7 animateAlongsideTransition:0 completion:v19];
}

void __74__OBWelcomeController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) updateDirectionalLayoutMargins];
  if (([*v2 _usesAboveHeaderFullWidthLayout] & 1) != 0 || objc_msgSend(*v2, "contentViewLayout") == 4)
  {
    [*v2 _contentViewHeight];
    v4 = v3;
    v5 = [*v2 contentViewHeightConstraint];
  }

  else
  {
    [*v2 contentViewsTopPaddingFromBottomOfHeader];
    v4 = v6;
    v5 = [*v2 contentViewTopOffsetConstraint];
  }

  v7 = v5;
  [v5 setConstant:v4];

  v8 = [*(a1 + 32) view];
  v9 = [OBViewUtilities activeInterfaceOrientationForView:v8];

  v10 = *(a1 + 40);
  if (v10 != v9 && ((v10 - 3) < 2 || (v9 - 3) <= 1))
  {
    v11 = [MEMORY[0x1E69DC938] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if ((v12 & 0xFFFFFFFFFFFFFFFBLL) != 1 && [*v2 contentViewLayout] != 2)
    {
      v13 = _OBLoggingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        __74__OBWelcomeController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_cold_1(v2, v13);
      }
    }
  }

  v14 = [*(a1 + 32) view];
  [v14 frame];
  v20.origin.x = v15;
  v20.origin.y = v16;
  v20.size.width = v17;
  v20.size.height = v18;
  v19 = CGRectEqualToRect(*(a1 + 48), v20);

  if (!v19)
  {
    [*v2 _layoutButtonTray];
  }
}

- (void)setScrollingDisabled:(BOOL)a3
{
  if (self->_scrollingDisabled != a3)
  {
    v4 = a3;
    self->_scrollingDisabled = a3;
    v5 = [(OBWelcomeController *)self scrollView];
    [v5 setScrollEnabled:!v4];
  }
}

- (int64_t)preferredUserInterfaceStyle
{
  if (self->_darkMode)
  {
    return 2;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = OBWelcomeController;
  return [(OBWelcomeController *)&v5 preferredUserInterfaceStyle];
}

- (double)availableContentViewHeight
{
  if ([(OBWelcomeController *)self _buttonTrayInlined])
  {
    v3 = [(OBWelcomeController *)self view];
    [v3 bounds];
    v5 = v4;
    v6 = [(OBWelcomeController *)self buttonTray];
    [v6 bounds];
    v8 = v5 - v7;
    v9 = [(OBWelcomeController *)self contentView];
    [v9 frame];
    v11 = v8 - v10;
    v12 = [(OBWelcomeController *)self view];
    [v12 safeAreaInsets];
    v14 = fmax(v11 - v13, 0.0);
  }

  else
  {
    v3 = [(OBWelcomeController *)self buttonTray];
    [v3 frame];
    v16 = v15;
    v6 = [(OBWelcomeController *)self contentView];
    [v6 frame];
    v18 = v16 - v17;
    v9 = [(OBWelcomeController *)self view];
    [v9 safeAreaInsets];
    v14 = fmax(v18 - v19, 0.0);
  }

  return v14;
}

- (void)_setupNavigationBarBleed
{
  v34[4] = *MEMORY[0x1E69E9840];
  v3 = [(OBBaseWelcomeController *)self navigationItem];
  [v3 _setBackgroundHidden:1];

  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBWelcomeController *)self setBleedView:v5];

  v6 = [(OBWelcomeController *)self contentView];
  v7 = [(OBWelcomeController *)self bleedView];
  [v6 setBleedView:v7];

  v8 = [(OBWelcomeController *)self bleedView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(OBWelcomeController *)self view];
  v10 = [(OBWelcomeController *)self bleedView];
  [v9 insertSubview:v10 atIndex:0];

  v24 = MEMORY[0x1E696ACD8];
  v33 = [(OBWelcomeController *)self bleedView];
  v31 = [v33 topAnchor];
  v32 = [(OBWelcomeController *)self view];
  v30 = [v32 topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v34[0] = v29;
  v28 = [(OBWelcomeController *)self bleedView];
  v26 = [v28 leftAnchor];
  v27 = [(OBWelcomeController *)self scrollContentView];
  v25 = [v27 leftAnchor];
  v23 = [v26 constraintEqualToAnchor:v25 constant:0.0];
  v34[1] = v23;
  v22 = [(OBWelcomeController *)self bleedView];
  v11 = [v22 widthAnchor];
  v12 = [(OBWelcomeController *)self scrollContentView];
  v13 = [v12 widthAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 multiplier:1.0];
  v34[2] = v14;
  v15 = [(OBWelcomeController *)self bleedView];
  v16 = [v15 bottomAnchor];
  v17 = [(OBWelcomeController *)self contentView];
  v18 = [v17 bottomAnchor];
  v19 = [v16 constraintGreaterThanOrEqualToAnchor:v18];
  v34[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
  [v24 activateConstraints:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_safelyAddConstraint:(id)a3 to:(id)a4
{
  if (a3)
  {

    [a4 addObject:?];
  }

  else
  {
    NSLog(&cfstr_WarningAttempt.isa, a2, a3, a4);
  }
}

- (void)_setupScrollView
{
  v235[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  [(OBWelcomeController *)self setScrollView:v8];

  v9 = [(OBWelcomeController *)self scrollView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(OBWelcomeController *)self scrollView];
  [v10 setDelegate:self];

  v11 = [(OBWelcomeController *)self scrollView];
  [v11 setContentInsetAdjustmentBehavior:2];

  v12 = [(OBWelcomeController *)self scrollView];
  [v12 _setIndicatorInsetAdjustmentBehavior:2];

  LODWORD(v12) = [(OBWelcomeController *)self isScrollingDisabled];
  v13 = [(OBWelcomeController *)self scrollView];
  [v13 setScrollEnabled:v12 ^ 1];

  if (+[OBFeatureFlags isNaturalUIEnabled]&& ![(OBWelcomeController *)self _usesAboveHeaderFullWidthLayout]&& [(OBWelcomeController *)self contentViewLayout]!= 4)
  {
    v14 = [(OBWelcomeController *)self backgroundColor];
    v15 = v14;
    if (!v14)
    {
      v15 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    }

    v16 = [(OBWelcomeController *)self scrollView];
    [v16 setBackgroundColor:v15];

    if (!v14)
    {
    }
  }

  v17 = [(OBWelcomeController *)self scrollView];
  v18 = [[OBScrollViewWeakLayoutObserver alloc] initWithLayoutObserver:self];
  [v17 _setLayoutObserver:v18];

  v19 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
  [(OBWelcomeController *)self setScrollContentView:v19];

  v20 = [(OBWelcomeController *)self scrollContentView];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [(OBWelcomeController *)self scrollView];
  v22 = [(OBWelcomeController *)self scrollContentView];
  [v21 addSubview:v22];

  v23 = [(OBWelcomeController *)self scrollContentView];
  v24 = [(OBWelcomeController *)self headerView];
  [v23 addSubview:v24];

  v25 = [(OBWelcomeController *)self scrollContentView];
  v26 = [(OBWelcomeController *)self contentView];
  [v25 addSubview:v26];

  v27 = [(OBWelcomeController *)self scrollContentView];
  v28 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  [v27 addSubview:v28];

  v29 = [(OBWelcomeController *)self view];
  v30 = [(OBWelcomeController *)self scrollView];
  [v29 addSubview:v30];

  v31 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  v32 = [v31 heightAnchor];
  v33 = [v32 constraintEqualToConstant:0.0];
  [(OBWelcomeController *)self setButtonTrayScrollContainerHeightConstraint:v33];

  v34 = [MEMORY[0x1E695DF70] array];
  v35 = [(OBWelcomeController *)self scrollView];
  v36 = [v35 bottomAnchor];
  v37 = [(OBWelcomeController *)self view];
  v38 = [v37 bottomAnchor];
  v39 = [v36 constraintEqualToAnchor:v38 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v39 to:v34];

  v40 = [(OBWelcomeController *)self scrollView];
  v41 = [v40 topAnchor];
  v42 = [(OBWelcomeController *)self scrollContentView];
  v43 = [v42 topAnchor];
  v44 = [v41 constraintEqualToAnchor:v43 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v44 to:v34];

  v45 = [(OBWelcomeController *)self scrollView];
  v46 = [v45 bottomAnchor];
  v47 = [(OBWelcomeController *)self scrollContentView];
  v48 = [v47 bottomAnchor];
  v49 = [v46 constraintEqualToAnchor:v48 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v49 to:v34];

  v50 = [(OBWelcomeController *)self scrollView];
  v51 = [v50 leftAnchor];
  v52 = [(OBWelcomeController *)self scrollContentView];
  v53 = [v52 leftAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v54 to:v34];

  v55 = [(OBWelcomeController *)self scrollView];
  v56 = [v55 rightAnchor];
  v57 = [(OBWelcomeController *)self scrollContentView];
  v58 = [v57 rightAnchor];
  v59 = [v56 constraintEqualToAnchor:v58 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v59 to:v34];

  v60 = [(OBWelcomeController *)self scrollView];
  v61 = [v60 frameLayoutGuide];
  v62 = [v61 widthAnchor];
  v63 = [(OBWelcomeController *)self scrollContentView];
  v64 = [v63 widthAnchor];
  v65 = [v62 constraintEqualToAnchor:v64 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v65 to:v34];

  v66 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  v67 = [v66 centerXAnchor];
  v68 = [(OBWelcomeController *)self view];
  v69 = [v68 centerXAnchor];
  v70 = [v67 constraintEqualToAnchor:v69];
  [(OBWelcomeController *)self _safelyAddConstraint:v70 to:v34];

  v71 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  v72 = [v71 widthAnchor];
  v73 = [(OBWelcomeController *)self headerView];
  v74 = [v73 widthAnchor];
  v75 = [v72 constraintEqualToAnchor:v74 multiplier:1.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v75 to:v34];

  v76 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  v77 = [v76 bottomAnchor];
  v78 = [(OBWelcomeController *)self scrollContentView];
  v79 = [v78 bottomAnchor];
  v80 = [v77 constraintEqualToAnchor:v79 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v80 to:v34];

  v81 = [(OBWelcomeController *)self buttonTrayScrollContainerHeightConstraint];
  v228 = v34;
  [(OBWelcomeController *)self _safelyAddConstraint:v81 to:v34];

  v82 = [(OBWelcomeController *)self scrollContentView];
  v83 = 0x1E695D000;
  if (v82)
  {
    v84 = v82;
    v85 = [(OBWelcomeController *)self headerView];

    if (v85)
    {
      v222 = [(OBWelcomeController *)self scrollContentView];
      v216 = [v222 layoutMarginsGuide];
      v206 = [v216 leadingAnchor];
      v211 = [(OBWelcomeController *)self headerView];
      v86 = [v211 leadingAnchor];
      v87 = [v206 constraintEqualToAnchor:v86];
      v235[0] = v87;
      v88 = [(OBWelcomeController *)self scrollContentView];
      v89 = [v88 layoutMarginsGuide];
      v90 = [v89 trailingAnchor];
      v91 = [(OBWelcomeController *)self headerView];
      v92 = [v91 trailingAnchor];
      v93 = [v90 constraintEqualToAnchor:v92];
      v235[1] = v93;
      v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v235 count:2];
      [v228 addObjectsFromArray:v94];

      v83 = 0x1E695D000uLL;
    }
  }

  v223 = [(OBWelcomeController *)self scrollView];
  v217 = [v223 leftAnchor];
  v95 = [(OBWelcomeController *)self view];
  v96 = [v95 leftAnchor];
  v97 = [v217 constraintEqualToAnchor:v96 constant:0.0];
  v234[0] = v97;
  v98 = [(OBWelcomeController *)self scrollView];
  v99 = [v98 rightAnchor];
  v100 = [(OBWelcomeController *)self view];
  v101 = [v100 rightAnchor];
  v102 = [v99 constraintEqualToAnchor:v101 constant:0.0];
  v234[1] = v102;
  v103 = [*(v83 + 3784) arrayWithObjects:v234 count:2];
  [v228 addObjectsFromArray:v103];

  LODWORD(v98) = +[OBFeatureFlags isNaturalUIEnabled];
  v104 = [(OBWelcomeController *)self scrollView];
  v105 = [v104 topAnchor];
  v106 = [(OBWelcomeController *)self view];
  v107 = v106;
  if (v98)
  {
    v108 = [v106 topAnchor];
    v109 = [v105 constraintEqualToAnchor:v108 constant:0.0];
    v110 = v228;
    [v228 addObject:v109];
  }

  else
  {
    v108 = [v106 safeAreaLayoutGuide];
    v109 = [v108 topAnchor];
    v111 = [v105 constraintEqualToAnchor:v109 constant:0.0];
    [v228 addObject:v111];

    v110 = v228;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v110];
  v112 = [(OBWelcomeController *)self contentViewLayout];
  if (v112 <= 6)
  {
    if (((1 << v112) & 0x32) != 0)
    {
      v133 = [(OBWelcomeController *)self contentView];
      v134 = [v133 topAnchor];
      v135 = [(OBWelcomeController *)self scrollContentView];
      v136 = [v135 topAnchor];
      v137 = [v134 constraintEqualToAnchor:v136 constant:0.0];
      [(OBWelcomeController *)self setContentViewTopOffsetConstraint:v137];

      v138 = [(OBWelcomeController *)self contentView];
      v139 = [v138 heightAnchor];
      [(OBWelcomeController *)self _contentViewHeight];
      v140 = [v139 constraintEqualToConstant:?];
      [(OBWelcomeController *)self setContentViewHeightConstraint:v140];

      v203 = MEMORY[0x1E696ACD8];
      v225 = [(OBWelcomeController *)self contentViewTopOffsetConstraint];
      v233[0] = v225;
      v219 = [(OBWelcomeController *)self contentView];
      v208 = [v219 leftAnchor];
      v213 = [(OBWelcomeController *)self scrollContentView];
      v141 = [v213 leftAnchor];
      v142 = [v208 constraintEqualToAnchor:v141 constant:0.0];
      v233[1] = v142;
      v143 = [(OBWelcomeController *)self contentView];
      v144 = [v143 widthAnchor];
      v145 = [(OBWelcomeController *)self scrollContentView];
      v146 = [v145 widthAnchor];
      v147 = [v144 constraintEqualToAnchor:v146 multiplier:1.0];
      v233[2] = v147;
      v148 = [(OBWelcomeController *)self contentViewHeightConstraint];
      v233[3] = v148;
      v149 = [MEMORY[0x1E695DEC8] arrayWithObjects:v233 count:4];
      [v203 activateConstraints:v149];

      [(OBWelcomeController *)self _setupNavigationBarBleed];
      if ([(OBWelcomeController *)self contentViewLayout]!= 4)
      {
        v182 = MEMORY[0x1E696ACD8];
        v127 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
        v132 = [v127 topAnchor];
        v131 = [(OBWelcomeController *)self headerView];
        v130 = [v131 bottomAnchor];
        v129 = [v132 constraintEqualToAnchor:v130 constant:0.0];
        v231 = v129;
        v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v231 count:1];
        [v182 activateConstraints:v128];
        goto LABEL_26;
      }

      v150 = [(OBWelcomeController *)self secondaryContentView];
      [v150 setTranslatesAutoresizingMaskIntoConstraints:0];

      v151 = [(OBWelcomeController *)self scrollContentView];
      v152 = [(OBWelcomeController *)self secondaryContentView];
      [v151 addSubview:v152];

      v153 = [(OBWelcomeController *)self secondaryContentView];
      v154 = [v153 topAnchor];
      v155 = [(OBWelcomeController *)self headerView];
      v156 = [v155 bottomAnchor];
      [(OBWelcomeController *)self contentViewsTopPaddingFromBottomOfHeader];
      v157 = [v154 constraintEqualToAnchor:v156 constant:?];
      [(OBWelcomeController *)self setSecondaryContentViewTopOffsetConstraint:v157];

      v194 = MEMORY[0x1E696ACD8];
      v220 = [(OBWelcomeController *)self secondaryContentViewTopOffsetConstraint];
      v232[0] = v220;
      v226 = [(OBWelcomeController *)self secondaryContentView];
      v209 = [v226 leftAnchor];
      v214 = [(OBWelcomeController *)self scrollContentView];
      v204 = [v214 layoutMarginsGuide];
      v200 = [v204 leftAnchor];
      v198 = [v209 constraintEqualToAnchor:v200 constant:0.0];
      v232[1] = v198;
      v196 = [(OBWelcomeController *)self secondaryContentView];
      v190 = [v196 widthAnchor];
      v191 = [(OBWelcomeController *)self headerView];
      v189 = [v191 widthAnchor];
      v188 = [v190 constraintEqualToAnchor:v189 multiplier:1.0];
      v232[2] = v188;
      v187 = [(OBWelcomeController *)self secondaryContentView];
      v186 = [v187 bottomAnchor];
      v158 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
      v159 = [v158 topAnchor];
      v160 = [v186 constraintEqualToAnchor:v159 constant:0.0];
      v232[3] = v160;
      v161 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
      v162 = [v161 topAnchor];
      v163 = [(OBWelcomeController *)self secondaryContentView];
      v164 = [v163 bottomAnchor];
      v165 = [v162 constraintEqualToAnchor:v164 constant:0.0];
      v232[4] = v165;
      v166 = [MEMORY[0x1E695DEC8] arrayWithObjects:v232 count:5];
      [v194 activateConstraints:v166];

      v128 = v200;
      v129 = v204;

      v127 = v220;
      v130 = v214;

      v131 = v209;
      v132 = v226;

      v167 = v196;
    }

    else
    {
      if (((1 << v112) & 0x48) != 0)
      {
        v113 = [(OBWelcomeController *)self contentView];
        v114 = [v113 topAnchor];
        v115 = [(OBWelcomeController *)self headerView];
        v116 = [v115 bottomAnchor];
        [(OBWelcomeController *)self contentViewsTopPaddingFromBottomOfHeader];
        v117 = [v114 constraintEqualToAnchor:v116 constant:?];
        [(OBWelcomeController *)self setContentViewTopOffsetConstraint:v117];

        v199 = MEMORY[0x1E696ACD8];
        v218 = [(OBWelcomeController *)self contentViewTopOffsetConstraint];
        v229[0] = v218;
        v224 = [(OBWelcomeController *)self contentView];
        v207 = [v224 leftAnchor];
        v212 = [(OBWelcomeController *)self scrollContentView];
        v202 = [v212 leftAnchor];
        v118 = [v207 constraintEqualToAnchor:v202 constant:0.0];
        v229[1] = v118;
        v198 = [(OBWelcomeController *)self contentView];
        v193 = [v198 widthAnchor];
        v195 = [(OBWelcomeController *)self scrollContentView];
        v119 = [v195 widthAnchor];
        v120 = [v193 constraintEqualToAnchor:v119 multiplier:1.0];
        v229[2] = v120;
        v121 = [(OBWelcomeController *)self contentView];
        v122 = [v121 bottomAnchor];
        v123 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
        v124 = [v123 topAnchor];
        v125 = [v122 constraintEqualToAnchor:v124 constant:0.0];
        v229[3] = v125;
        v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:v229 count:4];
        [v199 activateConstraints:v126];

        v127 = v218;
        v128 = v118;

        v129 = v202;
        v130 = v212;

        v131 = v207;
        v132 = v224;
      }

      else
      {
        if (v112 != 2)
        {
          goto LABEL_27;
        }

        v168 = [(OBWelcomeController *)self contentView];
        v169 = [v168 topAnchor];
        v170 = [(OBWelcomeController *)self headerView];
        v171 = [v170 bottomAnchor];
        [(OBWelcomeController *)self contentViewsTopPaddingFromBottomOfHeader];
        v172 = [v169 constraintEqualToAnchor:v171 constant:?];
        [(OBWelcomeController *)self setContentViewTopOffsetConstraint:v172];

        v197 = MEMORY[0x1E696ACD8];
        v221 = [(OBWelcomeController *)self contentViewTopOffsetConstraint];
        v230[0] = v221;
        v227 = [(OBWelcomeController *)self contentView];
        v210 = [v227 leftAnchor];
        v215 = [(OBWelcomeController *)self scrollContentView];
        v205 = [v215 layoutMarginsGuide];
        v201 = [v205 leftAnchor];
        v198 = [v210 constraintEqualToAnchor:v201 constant:0.0];
        v230[1] = v198;
        v193 = [(OBWelcomeController *)self contentView];
        v192 = [v193 widthAnchor];
        v173 = [(OBWelcomeController *)self headerView];
        v174 = [v173 widthAnchor];
        v175 = [v192 constraintEqualToAnchor:v174 multiplier:1.0];
        v230[2] = v175;
        v176 = [(OBWelcomeController *)self contentView];
        v177 = [v176 bottomAnchor];
        v178 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
        v179 = [v178 topAnchor];
        v180 = [v177 constraintEqualToAnchor:v179 constant:0.0];
        v230[3] = v180;
        v181 = [MEMORY[0x1E695DEC8] arrayWithObjects:v230 count:4];
        [v197 activateConstraints:v181];

        v127 = v221;
        v128 = v201;

        v129 = v205;
        v130 = v215;

        v131 = v210;
        v132 = v227;
      }

      v167 = v193;
    }

LABEL_26:
    v110 = v228;
  }

LABEL_27:
  [(OBWelcomeController *)self _layoutButtonTray];
  [(OBWelcomeController *)self _updateHeaderTopOffsetConstraint];
  v183 = [(OBWelcomeController *)self tabBarController];

  if (v183)
  {
    v184 = [(OBWelcomeController *)self scrollView];
    [(OBWelcomeController *)self setContentScrollView:v184 forEdge:4];
  }

  v185 = *MEMORY[0x1E69E9840];
}

- (void)setupBulletedListIfNeeded
{
  v48[4] = *MEMORY[0x1E69E9840];
  v3 = [(OBWelcomeController *)self bulletedList];

  if (!v3)
  {
    v4 = objc_alloc_init(OBBulletedList);
    [(OBWelcomeController *)self setBulletedList:v4];

    v5 = [(OBWelcomeController *)self bulletedList];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(OBWelcomeController *)self templateType];
    v7 = [(OBWelcomeController *)self bulletedList];
    [v7 setTemplateType:v6];

    v8 = [(OBWelcomeController *)self contentView];
    v9 = [(OBWelcomeController *)self bulletedList];
    [v8 addSubview:v9];

    [(OBWelcomeController *)self contentViewsTopPaddingFromBottomOfHeader];
    v11 = v10;
    v12 = [(OBWelcomeController *)self contentViewTopOffsetConstraint];
    [v12 setActive:0];

    v13 = [(OBWelcomeController *)self contentView];
    v14 = [v13 topAnchor];
    v15 = [(OBWelcomeController *)self headerView];
    v16 = [v15 bottomAnchor];
    v17 = [v14 constraintEqualToAnchor:v16 constant:v11];
    [(OBWelcomeController *)self setContentViewTopOffsetConstraint:v17];

    v18 = [(OBWelcomeController *)self contentViewTopOffsetConstraint];
    [v18 setActive:1];

    v19 = [(OBWelcomeController *)self contentView];
    v20 = [v19 leadingAnchor];
    v21 = [(OBWelcomeController *)self bulletedList];
    v22 = [v21 leadingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v24 = [(OBWelcomeController *)self bulletedList];
    [v24 setLeadingConstraint:v23];

    v25 = [(OBWelcomeController *)self contentView];
    v26 = [v25 trailingAnchor];
    v27 = [(OBWelcomeController *)self bulletedList];
    v28 = [v27 trailingAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    v30 = [(OBWelcomeController *)self bulletedList];
    [v30 setTrailingConstraint:v29];

    v42 = MEMORY[0x1E696ACD8];
    v47 = [(OBWelcomeController *)self bulletedList];
    v46 = [v47 leadingConstraint];
    v48[0] = v46;
    v45 = [(OBWelcomeController *)self bulletedList];
    v44 = [v45 trailingConstraint];
    v48[1] = v44;
    v43 = [(OBWelcomeController *)self contentView];
    v31 = [v43 topAnchor];
    v32 = [(OBWelcomeController *)self bulletedList];
    v33 = [v32 topAnchor];
    v34 = [v31 constraintEqualToAnchor:v33];
    v48[2] = v34;
    v35 = [(OBWelcomeController *)self contentView];
    v36 = [v35 bottomAnchor];
    v37 = [(OBWelcomeController *)self bulletedList];
    v38 = [v37 bottomAnchor];
    v39 = [v36 constraintEqualToAnchor:v38];
    v48[3] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
    [v42 activateConstraints:v40];
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (double)contentViewsTopPaddingFromBottomOfHeader
{
  v3 = [(OBWelcomeController *)self bulletedList];

  if (v3)
  {
    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    v5 = [(OBWelcomeController *)self view];
    v6 = [v5 window];
    v7 = [v4 supportedInterfaceOrientationsForWindow:v6];

    v9 = v7 == 8 || (v7 & 0xFFFFFFFFFFFFFFF7) == 16;
    v10 = [(OBWelcomeController *)self view];
    v11 = [v10 window];

    if (![(OBWelcomeController *)self _landscapeiPhone]|| !v11 || (v12 = 24.0, !v9))
    {
      v13 = +[OBDevice currentDevice];
      v14 = [v13 templateType];

      v12 = 0.0;
      if (v14 <= 9)
      {
        if (((1 << v14) & 0x24E) != 0)
        {
          if (+[OBFeatureFlags isNaturalUIEnabled])
          {
            v12 = 26.0;
          }

          else
          {
            v12 = 30.0;
          }

          v15 = MGGetProductType();
          if (v15 != 2903084588 && v15 != 1895344378)
          {
            return v12;
          }
        }

        else if (((1 << v14) & 0x1B0) == 0)
        {
          return v12;
        }

        return 27.0;
      }
    }
  }

  else
  {
    v12 = 0.0;
    if (![(OBWelcomeController *)self _usesAboveHeaderFullWidthLayout]&& [(OBWelcomeController *)self contentViewLayout]!= 4)
    {
      if ([(OBWelcomeController *)self includePaddingAboveContentView])
      {
        return 20.0;
      }

      else
      {
        return 0.0;
      }
    }
  }

  return v12;
}

- (int64_t)navigationBarScrollToEdgeBehavior
{
  if ([(OBWelcomeController *)self _usesAboveHeaderFullWidthLayout])
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = OBWelcomeController;
  return [(OBBaseWelcomeController *)&v4 navigationBarScrollToEdgeBehavior];
}

- (BOOL)contentViewUnderButtonTray
{
  v3 = [(OBWelcomeController *)self contentViewLayout];
  v4 = 0;
  if (v3 <= 6)
  {
    if (((1 << v3) & 0x32) != 0)
    {
      v5 = [(OBWelcomeController *)self secondaryContentView];
      goto LABEL_6;
    }

    if (((1 << v3) & 0x4C) != 0)
    {
      v5 = [(OBWelcomeController *)self contentView];
LABEL_6:
      v4 = v5;
    }
  }

  [v4 frame];
  MaxY = CGRectGetMaxY(v12);
  v7 = [(OBWelcomeController *)self scrollView];
  [v7 frame];
  v8 = CGRectGetMaxY(v13);
  v9 = [(OBWelcomeController *)self buttonTray];
  [v9 frame];
  v10 = MaxY >= v8 - CGRectGetHeight(v14);

  return v10;
}

- (void)setBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_backgroundColor, a3);
  v5 = a3;
  v6 = [(OBWelcomeController *)self scrollView];
  [v6 setBackgroundColor:v5];
}

- (double)_contentViewHeight
{
  v3 = [(OBWelcomeController *)self parentViewController];
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = v3;
  v5 = [(OBWelcomeController *)self contentViewHeightConstraintsBlock];

  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = [(OBWelcomeController *)self contentViewHeightConstraintsBlock];
  v7 = v6[2]();

  if (v7)
  {
    if (([v7 isActive] & 1) == 0)
    {
      [v7 setActive:1];
    }

    v8 = [(OBWelcomeController *)self contentView];
    [v8 layoutIfNeeded];

    v9 = [(OBWelcomeController *)self contentView];
    [v9 frame];
    v11 = v10;
  }

  else
  {
LABEL_24:
    if ([(OBWelcomeController *)self _usesAboveHeaderFullWidthLayout]|| (v11 = 0.0, [(OBWelcomeController *)self contentViewLayout]== 4))
    {
      v12 = +[OBDevice currentDevice];
      v13 = [v12 type];

      if (v13 == 2)
      {
        v14 = [(OBWelcomeController *)self presentingViewController];
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = [(OBWelcomeController *)self presentingViewController];
        v17 = [v16 presentedViewController];
        v18 = [v17 modalPresentationStyle];

        if (v18)
        {
          v34.receiver = self;
          v34.super_class = OBWelcomeController;
          [(OBBaseWelcomeController *)&v34 preferredContentSize];
        }

        else
        {
LABEL_17:
          v27 = +[OBUtilities mainScreen];
          [v27 bounds];
          v29 = v28;

          v30 = +[OBUtilities mainScreen];
          [v30 bounds];
          v32 = v31;

          if (v29 >= v32)
          {
            v19 = v29;
          }

          else
          {
            v19 = v32;
          }
        }

        return v19 * 0.36;
      }

      else
      {
        v20 = +[OBUtilities mainScreen];
        [v20 bounds];
        v22 = v21;

        v23 = +[OBUtilities mainScreen];
        [v23 bounds];
        v25 = v24;

        if (v22 >= v25)
        {
          v26 = v22;
        }

        else
        {
          v26 = v25;
        }

        return v26 * 0.36;
      }
    }
  }

  return v11;
}

- (void)_updateHeaderTopOffsetConstraint
{
  v3 = [(OBWelcomeController *)self headerTopOffsetConstraint];

  if (v3)
  {
    [(OBWelcomeController *)self _headerTopOffset];
    v5 = -v4;
    v14 = [(OBWelcomeController *)self headerTopOffsetConstraint];
    [v14 setConstant:v5];
    goto LABEL_10;
  }

  v6 = [(OBWelcomeController *)self contentViewLayout];
  if (v6 <= 6)
  {
    if (((1 << v6) & 0x32) != 0)
    {
      v7 = [(OBWelcomeController *)self contentView];
      v8 = [v7 bottomAnchor];
      goto LABEL_8;
    }

    if (((1 << v6) & 0x4C) != 0)
    {
      v7 = [(OBWelcomeController *)self scrollView];
      v8 = [v7 topAnchor];
LABEL_8:
      v9 = v8;
      v10 = [(OBWelcomeController *)self headerView];
      v11 = [v10 topAnchor];
      [(OBWelcomeController *)self _headerTopOffset];
      v13 = [v9 constraintEqualToAnchor:v11 constant:-v12];
      [(OBWelcomeController *)self setHeaderTopOffsetConstraint:v13];
    }
  }

  v14 = [(OBWelcomeController *)self headerTopOffsetConstraint];
  [v14 setActive:1];
LABEL_10:
}

- (double)_headerTopOffset
{
  v4 = [(OBWelcomeController *)self contentViewLayout];
  if (v4 <= 6)
  {
    if (((1 << v4) & 0x32) != 0)
    {
      [(OBWelcomeController *)self _contentViewHeight];
      return v11 * 0.09;
    }

    else if (((1 << v4) & 0x4C) != 0)
    {
      v5 = +[OBDevice currentDevice];
      v6 = [v5 type];

      if (v6 == 2)
      {
        v7 = [(OBWelcomeController *)self view];
        [v7 bounds];
        v9 = v8 * 0.09 + -20.0;
        v10 = 20.0;
      }

      else
      {
        v12 = [(OBWelcomeController *)self navigationController];
        v13 = [v12 navigationBar];
        [v13 bounds];
        v15 = v14;

        v16 = [(OBWelcomeController *)self navigationController];
        v17 = [v16 navigationBar];
        LODWORD(v13) = [v17 isHidden];

        v7 = +[OBUtilities mainScreen];
        [v7 bounds];
        v19 = -v15;
        if (v13)
        {
          v19 = -0.0;
        }

        v9 = v19 + v18 * 0.09;
        v10 = 0.0;
      }

      v2 = fmaxf(v9, v10);
    }
  }

  return v2;
}

- (BOOL)shouldInlineButtonTray
{
  v3 = +[OBViewUtilities shouldUseAccessibilityLayout];
  v4 = [(OBWelcomeController *)self contentViewLayout];
  if (v4 <= 6)
  {
    if (((1 << v4) & 0x5C) != 0)
    {
      v5 = [(OBWelcomeController *)self contentViewUnderButtonTray];
    }

    else
    {
      if (((1 << v4) & 0x22) == 0)
      {
        goto LABEL_7;
      }

      v6 = [(OBWelcomeController *)self headerView];
      [v6 frame];
      MaxY = CGRectGetMaxY(v51);
      v8 = [(OBWelcomeController *)self view];
      [v8 bounds];
      v9 = CGRectGetMaxY(v52);
      v10 = [(OBWelcomeController *)self buttonTray];
      [v10 frame];
      v5 = MaxY >= v9 - CGRectGetHeight(v53);
    }

    if (v3 && v5)
    {
      return 1;
    }
  }

LABEL_7:
  if ([(OBWelcomeController *)self _shouldInlineButtontray])
  {
    return 1;
  }

  if (-[OBWelcomeController shouldAdjustButtonTrayForKeyboard](self, "shouldAdjustButtonTrayForKeyboard") && -[OBWelcomeController _shouldDetachButtonTray](self, "_shouldDetachButtonTray") && (-[OBWelcomeController buttonTray](self, "buttonTray"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isHidden], v12, (v13 & 1) == 0))
  {
    v14 = [(OBWelcomeController *)self buttonTray];
    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    if ([(OBWelcomeController *)self _shouldDetachButtonTray])
    {
      v23 = [(OBWelcomeController *)self buttonTray];
      [v23 detachedSize];
      v20 = v24;
      v25 = [(OBWelcomeController *)self buttonTray];
      [v25 detachedSize];
      v22 = v26;
      v16 = 0.0;

      rect = 0.0;
    }

    else
    {
      rect = v18;
    }

    v27 = [(OBWelcomeController *)self view];
    v28 = [(OBWelcomeController *)self headerView];
    [v28 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [(OBWelcomeController *)self headerView];
    [v27 convertRect:v37 fromView:{v30, v32, v34, v36}];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    [(OBWelcomeController *)self keyboardFrame];
    MinY = CGRectGetMinY(v54);
    v55.origin.x = v16;
    v55.origin.y = rect;
    v55.size.width = v20;
    v55.size.height = v22;
    v47 = MinY - CGRectGetHeight(v55);
    v56.origin.x = v39;
    v56.origin.y = v41;
    v56.size.width = v43;
    v56.size.height = v45;
    v48 = CGRectGetMaxY(v56);
    v57.origin.x = v16;
    v57.origin.y = v47;
    v57.size.width = v20;
    v57.size.height = v22;
    return v48 > CGRectGetMinY(v57);
  }

  else
  {

    return [(OBWelcomeController *)self _shouldDetachButtonTray];
  }
}

- (BOOL)_scrollViewContentIsUnderTray
{
  v3 = [(OBWelcomeController *)self scrollView];
  v4 = [(OBWelcomeController *)self buttonTray];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(OBWelcomeController *)self buttonTray];
  [v3 convertRect:v13 fromView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(OBWelcomeController *)self scrollView];
  [v22 contentSize];
  v24 = v23;
  v26.origin.x = v15;
  v26.origin.y = v17;
  v26.size.width = v19;
  v26.size.height = v21;
  LOBYTE(v3) = v24 > CGRectGetMinY(v26);

  return v3;
}

- (void)_updateButtonTrayBackdrop
{
  if ([(OBWelcomeController *)self shouldInlineButtonTray])
  {
    v3 = [(OBWelcomeController *)self buttonTray];
    v4 = v3;
  }

  else
  {
    v5 = [(OBWelcomeController *)self _scrollViewContentIsUnderTray];
    v3 = [(OBWelcomeController *)self buttonTray];
    v4 = v3;
    if (v5)
    {
      [v3 setBackdropStyle:2];

      v7 = [(OBWelcomeController *)self buttonTray];
      v6 = [(OBWelcomeController *)self scrollView];
      [v7 addScrollPocketToScrollView:v6];

      goto LABEL_6;
    }
  }

  [v3 setBackdropStyle:1];

  v7 = [(OBWelcomeController *)self buttonTray];
  [v7 removeScrollPocket];
LABEL_6:
}

- (void)_updateScrollContentViewLayoutMargins
{
  v3 = [(OBWelcomeController *)self scrollContentView];
  [v3 directionalLayoutMargins];
  v5 = v4;

  if ([(OBWelcomeController *)self _landscapeiPhone])
  {
    v6 = [(OBWelcomeController *)self view];
    [v6 directionalLayoutMargins];
    v8 = v7;
    v9 = [(OBWelcomeController *)self view];
    [v9 safeAreaInsets];
    v11 = v8 - v10;

    v12 = [(OBWelcomeController *)self view];
    [v12 directionalLayoutMargins];
    v14 = v13;
    v15 = [(OBWelcomeController *)self view];
    [v15 safeAreaInsets];
    v17 = v14 - v16;
  }

  else
  {
    [(OBBaseWelcomeController *)self directionalLayoutMargins];
    if (v18 > 0.0)
    {
      [(OBBaseWelcomeController *)self directionalLayoutMargins];
      if (v19 > 0.0)
      {
        [(OBBaseWelcomeController *)self directionalLayoutMargins];
        v11 = v20;
        [(OBBaseWelcomeController *)self directionalLayoutMargins];
        v17 = v21;
        goto LABEL_8;
      }
    }

    v22 = [(OBWelcomeController *)self view];
    [v22 directionalLayoutMargins];
    v11 = v23;

    v12 = [(OBWelcomeController *)self view];
    [v12 directionalLayoutMargins];
    v17 = v24;
  }

LABEL_8:
  v25 = 0.0;
  if (![(OBWelcomeController *)self shouldInlineButtonTray])
  {
    v26 = [(OBWelcomeController *)self buttonTray];
    [v26 frame];
    v25 = v27;
  }

  v28 = [(OBWelcomeController *)self scrollContentView];
  [v28 setDirectionalLayoutMargins:{v5, v11, v25, v17}];
}

- (void)_updateScrollViewInsets
{
  v3 = [(OBWelcomeController *)self scrollView];

  if (!v3)
  {
    return;
  }

  v4 = [(OBWelcomeController *)self scrollView];
  [v4 contentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [(OBWelcomeController *)self scrollView];
  [v11 verticalScrollIndicatorInsets];
  v13 = v12;
  v15 = v14;

  v16 = [(OBWelcomeController *)self shouldAdjustScrollViewInsetForKeyboard];
  v17 = [(OBWelcomeController *)self _buttonTrayInlined];
  if ([(OBWelcomeController *)self shouldAdjustButtonTrayForKeyboard])
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  if (v18)
  {
    [(OBWelcomeController *)self keyboardFrame];
    v61.origin.x = v19;
    v61.origin.y = v20;
    v61.size.width = v21;
    v61.size.height = v22;
    if (!CGRectEqualToRect(*MEMORY[0x1E695F058], v61))
    {
      [(OBWelcomeController *)self keyboardFrame];
      Height = CGRectGetHeight(v60);
      goto LABEL_18;
    }
  }

  v23 = [(OBWelcomeController *)self buttonTray];
  if (([v23 hasContent] & 1) == 0)
  {

    goto LABEL_13;
  }

  v24 = [(OBWelcomeController *)self buttonTray];
  [v24 frame];
  IsEmpty = CGRectIsEmpty(v59);

  if (IsEmpty)
  {
LABEL_13:
    v33 = [(OBWelcomeController *)self tabBarController];

    if (v33)
    {
      v34 = [(OBWelcomeController *)self scrollView];
      [v34 setContentInsetAdjustmentBehavior:0];

      v35 = [(OBWelcomeController *)self scrollView];
      [v35 _setIndicatorInsetAdjustmentBehavior:0];
    }

    v27 = [(OBWelcomeController *)self view];
    [v27 safeAreaInsets];
    Height = v36;
    goto LABEL_16;
  }

  Height = 0.0;
  if (!v17)
  {
    v27 = [(OBWelcomeController *)self _currentContainerView];
    v28 = [(OBWelcomeController *)self view];
    v29 = [(OBWelcomeController *)self buttonTray];
    [v29 frame];
    [v28 convertPoint:v27 toView:?];
    v31 = v30;

    [v27 bounds];
    Height = v32 - v31;
LABEL_16:
  }

LABEL_18:
  if ([(OBWelcomeController *)self _landscapeiPhone]&& Height == 0.0)
  {
    v37 = [(OBWelcomeController *)self view];
    [v37 safeAreaInsets];
    Height = v38;
  }

  if (!+[OBFeatureFlags isNaturalUIEnabled])
  {
    goto LABEL_37;
  }

  v39 = [(OBWelcomeController *)self scrollView];
  v40 = [v39 contentInsetAdjustmentBehavior];

  if (v40 != 2)
  {
    goto LABEL_37;
  }

  v41 = [(OBWelcomeController *)self view];
  [v41 safeAreaInsets];
  v6 = v42;

  if ([(OBWelcomeController *)self didSetContentOffsetOnInitialAppearance])
  {
    goto LABEL_37;
  }

  v43 = [(OBWelcomeController *)self bleedView];
  if (v43)
  {
    v44 = v43;
    v45 = [(OBWelcomeController *)self bleedView];
    v46 = [v45 superview];
    v47 = [(OBWelcomeController *)self view];
    if (v46 == v47)
    {
    }

    else
    {
      if (v6 != 0.0)
      {
        LOBYTE(v17) = 1;
      }

      if (!v17)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v48 = v6 != 0.0 || v17;
    if ((v48 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v49 = [(OBWelcomeController *)self scrollView];
  [v49 contentOffset];
  v51 = v50;
  v52 = [(OBWelcomeController *)self view];
  [v52 safeAreaInsets];
  v54 = -v53;
  v55 = [(OBWelcomeController *)self scrollView];
  [v55 setContentOffset:{v51, v54}];

LABEL_37:
  v56 = [(OBWelcomeController *)self scrollView];
  [v56 setContentInset:{v6, v8, Height, v10}];

  v57 = [(OBWelcomeController *)self scrollView];
  [v57 setScrollIndicatorInsets:{v6, v13, Height, v15}];
}

- (id)_currentContainerView
{
  v3 = [(OBWelcomeController *)self navigationController];
  v4 = [v3 view];

  if (!v4)
  {
    v5 = [(OBWelcomeController *)self parentViewController];
    v4 = [v5 view];

    if (!v4)
    {
      v4 = [(OBWelcomeController *)self view];
    }
  }

  return v4;
}

- (void)_inlineButtonTray
{
  v3 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  v4 = [(OBWelcomeController *)self buttonTray];
  [v3 addSubview:v4];

  v5 = [(OBWelcomeController *)self buttonTrayScrollContainerHeightConstraint];
  [v5 setActive:0];

  v32 = [MEMORY[0x1E695DF70] array];
  v6 = [(OBWelcomeController *)self buttonTray];
  v7 = [v6 topAnchor];
  v8 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  v9 = [v8 topAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v10 to:v32];

  v11 = [(OBWelcomeController *)self buttonTray];
  v12 = [v11 bottomAnchor];
  v13 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v15 to:v32];

  v16 = [(OBWelcomeController *)self buttonTray];
  v17 = [v16 leadingAnchor];
  v18 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  v19 = [v18 leadingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v20 to:v32];

  v21 = [(OBWelcomeController *)self buttonTray];
  v22 = [v21 trailingAnchor];
  v23 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  [(OBWelcomeController *)self _safelyAddConstraint:v25 to:v32];

  v26 = [(OBWelcomeController *)self buttonTray];
  v27 = [v26 buttonLayoutGuide];
  v28 = [v27 bottomAnchor];
  v29 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  v30 = [v29 bottomAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [(OBWelcomeController *)self _safelyAddConstraint:v31 to:v32];

  [MEMORY[0x1E696ACD8] activateConstraints:v32];
}

- (void)_floatButtonTray
{
  v3 = [(OBWelcomeController *)self buttonTray];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(OBWelcomeController *)self view];
  v5 = [(OBWelcomeController *)self buttonTray];
  [v4 addSubview:v5];

  v6 = [(OBWelcomeController *)self view];
  v7 = [v6 bottomAnchor];

  if ([(OBWelcomeController *)self shouldAdjustButtonTrayForKeyboard]&& ([(OBWelcomeController *)self keyboardFrame], v40.origin.x = v8, v40.origin.y = v9, v40.size.width = v10, v40.size.height = v11, !CGRectEqualToRect(*MEMORY[0x1E695F058], v40)))
  {
    v19 = [(OBWelcomeController *)self buttonTray];
    v20 = [v19 buttonLayoutGuide];
    v21 = [v20 bottomAnchor];
    [(OBWelcomeController *)self keyboardFrame];
    v37 = [v7 constraintEqualToAnchor:v21 constant:CGRectGetHeight(v39)];

    v17 = [(OBWelcomeController *)self buttonTray];
    v18 = [v17 buttonLayoutGuide];
    v16 = [v18 bottomAnchor];
  }

  else
  {
    v12 = [(OBWelcomeController *)self tabBarController];

    if (v12)
    {
      v13 = [(OBWelcomeController *)self view];
      v14 = [v13 safeAreaLayoutGuide];
      v15 = [v14 bottomAnchor];

      v7 = v15;
    }

    v16 = v7;
    v17 = [(OBWelcomeController *)self buttonTray];
    v18 = [v17 buttonLayoutGuide];
    v7 = [v18 bottomAnchor];
    v37 = [v7 constraintEqualToAnchor:v16];
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [(OBWelcomeController *)self buttonTray];
  v24 = [v23 bottomAnchor];
  v25 = [v24 constraintEqualToAnchor:v16 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v25 to:v22];

  v26 = [(OBWelcomeController *)self buttonTray];
  v27 = [v26 leadingAnchor];
  v28 = [(OBWelcomeController *)self view];
  v29 = [v28 leadingAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v30 to:v22];

  v31 = [(OBWelcomeController *)self buttonTray];
  v32 = [v31 trailingAnchor];
  v33 = [(OBWelcomeController *)self view];
  v34 = [v33 trailingAnchor];
  v35 = [v32 constraintEqualToAnchor:v34 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v35 to:v22];

  [(OBWelcomeController *)self _safelyAddConstraint:v37 to:v22];
  [MEMORY[0x1E696ACD8] activateConstraints:v22];
  v36 = [(OBWelcomeController *)self buttonTrayScrollContainerHeightConstraint];
  [v36 setActive:1];
}

- (void)_layoutButtonTray
{
  v65[5] = *MEMORY[0x1E69E9840];
  v3 = [(OBWelcomeController *)self buttonTray];
  [v3 removeFromSuperview];

  if ([(OBWelcomeController *)self shouldInlineButtonTray])
  {
    [(OBWelcomeController *)self _inlineButtonTray];
    v4 = 0;
  }

  else
  {
    [(OBWelcomeController *)self _floatButtonTray];
    v4 = [(OBWelcomeController *)self _shouldDetachButtonTray];
  }

  v5 = [(OBWelcomeController *)self buttonTray];
  [v5 setDetached:v4];

  v6 = [(OBWelcomeController *)self buttonTray];

  if (v6)
  {
    v7 = +[OBDevice currentDevice];
    if ([v7 type] == 2 || -[OBWelcomeController _landscapeiPhone](self, "_landscapeiPhone"))
    {
      v8 = +[OBDevice currentDevice];
      v9 = [(OBWelcomeController *)self view];
      [v9 bounds];
      v11 = [v8 templateTypeForBoundsWidth:v10];

      if (v11 != 7)
      {
        v12 = [(OBWelcomeController *)self buttonTray];
        v13 = [v12 buttonLayoutGuide];
        v14 = [v13 widthConstraint];

        if (!v14)
        {
          v25 = [(OBWelcomeController *)self buttonTray];
          v26 = [v25 buttonLayoutGuide];
          v27 = [v26 widthAnchor];
          v28 = [v27 constraintEqualToConstant:360.0];
          v29 = [(OBWelcomeController *)self buttonTray];
          v30 = [v29 buttonLayoutGuide];
          [v30 setWidthConstraint:v28];

          v31 = [(OBWelcomeController *)self buttonTray];
          v32 = [v31 buttonLayoutGuide];
          v33 = [v32 widthConstraint];
          LODWORD(v34) = 1144750080;
          [v33 setPriority:v34];
        }

        v35 = [(OBWelcomeController *)self buttonTray];
        v36 = [v35 buttonLayoutGuide];
        v37 = [v36 widthAnchor];
        v54 = [v37 constraintLessThanOrEqualToConstant:360.0];

        v55 = MEMORY[0x1E696ACD8];
        v56 = [(OBWelcomeController *)self buttonTray];
        v51 = [v56 buttonLayoutGuide];
        v52 = [v51 widthConstraint];
        v65[0] = v52;
        v65[1] = v54;
        v53 = [(OBWelcomeController *)self buttonTray];
        v63 = [v53 buttonLayoutGuide];
        v38 = [v63 leadingAnchor];
        v61 = [(OBWelcomeController *)self view];
        v39 = [v61 leadingAnchor];
        [(OBBaseWelcomeController *)self directionalLayoutMargins];
        v62 = v38;
        v60 = v39;
        v59 = [v38 constraintGreaterThanOrEqualToAnchor:v39 constant:v40];
        v65[2] = v59;
        v58 = [(OBWelcomeController *)self buttonTray];
        v57 = [v58 buttonLayoutGuide];
        v22 = [v57 trailingAnchor];
        v23 = [(OBWelcomeController *)self view];
        v24 = [v23 trailingAnchor];
        [(OBBaseWelcomeController *)self directionalLayoutMargins];
        v50 = [v22 constraintLessThanOrEqualToAnchor:v24 constant:-v41];
        v65[3] = v50;
        v49 = [(OBWelcomeController *)self buttonTray];
        v42 = [v49 buttonLayoutGuide];
        v43 = [v42 centerXAnchor];
        v44 = [(OBWelcomeController *)self view];
        v45 = [v44 centerXAnchor];
        v46 = [v43 constraintEqualToAnchor:v45];
        v65[4] = v46;
        v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:5];
        [v55 activateConstraints:v47];

        v18 = v51;
        v17 = v56;

        v19 = v52;
        v16 = v54;

        v20 = v53;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v15 = MEMORY[0x1E696ACD8];
    v16 = [(OBWelcomeController *)self buttonTray];
    v17 = [v16 buttonLayoutGuide];
    v18 = [v17 leadingAnchor];
    v19 = [(OBWelcomeController *)self view];
    v20 = [v19 layoutMarginsGuide];
    v63 = [v20 leadingAnchor];
    v62 = [v18 constraintEqualToAnchor:?];
    v64[0] = v62;
    v61 = [(OBWelcomeController *)self buttonTray];
    v60 = [v61 buttonLayoutGuide];
    v21 = [v60 trailingAnchor];
    v58 = [(OBWelcomeController *)self view];
    v57 = [v58 layoutMarginsGuide];
    v22 = [v57 trailingAnchor];
    v59 = v21;
    v23 = [v21 constraintEqualToAnchor:v22];
    v64[1] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    [v15 activateConstraints:v24];
LABEL_14:

    [(OBWelcomeController *)self _updateScrollViewInsets];
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (BOOL)_buttonTrayInlined
{
  v2 = self;
  v3 = [(OBWelcomeController *)self buttonTray];
  v4 = [v3 superview];
  v5 = [(OBWelcomeController *)v2 buttonTrayScrollContainerView];
  LOBYTE(v2) = v4 == v5;

  return v2;
}

- (void)_inlineButtonTrayIfNeeded
{
  v3 = [(OBWelcomeController *)self shouldInlineButtonTray];
  if (v3 != [(OBWelcomeController *)self _buttonTrayInlined])
  {

    [(OBWelcomeController *)self _layoutButtonTray];
  }
}

- (void)updateDirectionalLayoutMargins
{
  v3.receiver = self;
  v3.super_class = OBWelcomeController;
  [(OBBaseWelcomeController *)&v3 updateDirectionalLayoutMargins];
  [(OBWelcomeController *)self _updateScrollContentViewLayoutMargins];
  [(OBWelcomeController *)self _updateScrollViewInsets];
}

- (void)_enableTrayButtonsForScrollToBottom:(id)a3
{
  v4 = [(OBWelcomeController *)self _buttonTrayInlined];
  v5 = [(OBWelcomeController *)self scrollView];
  [v5 contentOffset];
  v7 = v6;
  v8 = [(OBWelcomeController *)self scrollView];
  [v8 frame];
  v10 = v9 + v7;

  v11 = [(OBWelcomeController *)self scrollView];
  [v11 contentSize];
  v13 = v10 >= v12 - 1;

  if (!v4)
  {
    v13 = ![(OBWelcomeController *)self _scrollViewContentIsUnderTray];
  }

  if ([(OBWelcomeController *)self disableButtonsUntilAllContentWasVisable]&& v13)
  {
    v15 = [(OBWelcomeController *)self buttonTray];
    v14 = [v15 buttons];
    [v14 enumerateObjectsUsingBlock:&__block_literal_global_100];
  }
}

void __59__OBWelcomeController__enableTrayButtonsForScrollToBottom___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 isEnabled] & 1) == 0)
  {
    [v2 setEnabled:1];
  }
}

- (void)_registerForKeyboardNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

  v12 = *MEMORY[0x1E69DE080];
  v4 = [(OBWelcomeController *)self presentingViewController];
  if (v4)
  {
    v5 = [(OBWelcomeController *)self presentingViewController];
    v6 = [v5 presentedViewController];
    v7 = [v6 modalPresentationStyle] != 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [MEMORY[0x1E69DC938] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1 && !v7)
  {
    v10 = *MEMORY[0x1E69DDF78];

    v12 = v10;
  }

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel__handleKeyboardPresentation_ name:v12 object:0];
}

- (void)_unregisterForKeyboardNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE078] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE080] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];
}

- (void)_keyboardWillHide:(id)a3
{
  [(OBWelcomeController *)self keyboardFrame];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v10.origin.x = *MEMORY[0x1E695F058];
  v10.origin.y = v5;
  v10.size.width = v6;
  v10.size.height = v7;
  if (!CGRectEqualToRect(v9, v10))
  {
    [(OBWelcomeController *)self setKeyboardFrame:v4, v5, v6, v7];
    [(OBWelcomeController *)self _layoutButtonTray];
    if ([(OBWelcomeController *)self shouldAdjustScrollViewInsetForKeyboard])
    {

      [(OBWelcomeController *)self _updateScrollViewInsets];
    }
  }
}

- (void)_handleKeyboardPresentation:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v13 != 0.0 && v11 != 0.0)
  {
    v14 = [(OBWelcomeController *)self view];
    [v14 convertRect:0 fromView:{v7, v9, v11, v13}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(OBWelcomeController *)self view];
    [v23 frame];
    v36.origin.x = v16;
    v36.origin.y = v18;
    v36.size.width = v20;
    v36.size.height = v22;
    v34 = CGRectIntersection(v33, v36);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;

    [(OBWelcomeController *)self keyboardFrame];
    v37.origin.x = v28;
    v37.origin.y = v29;
    v37.size.width = v30;
    v37.size.height = v31;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    if (!CGRectEqualToRect(v35, v37))
    {
      [(OBWelcomeController *)self setKeyboardFrame:x, y, width, height];
    }

    if ([(OBWelcomeController *)self shouldAdjustButtonTrayForKeyboard])
    {
      [(OBWelcomeController *)self _layoutButtonTray];
    }

    if ([(OBWelcomeController *)self shouldAdjustScrollViewInsetForKeyboard])
    {

      [(OBWelcomeController *)self _updateScrollViewInsets];
    }
  }
}

- (void)setTemplateType:(unint64_t)a3
{
  v5 = [(OBWelcomeController *)self headerView];
  [v5 setTemplateType:a3];

  v6 = [(OBWelcomeController *)self bulletedList];
  [v6 setTemplateType:a3];

  self->_templateType = a3;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [(OBWelcomeController *)self _updateButtonTrayBackdrop];
  [(OBWelcomeController *)self updateNavigationBarAnimated:1];
  [(OBWelcomeController *)self _enableTrayButtonsForScrollToBottom:v4];
}

- (void)restoreNavigationBarAppearance
{
  v3 = [(OBWelcomeController *)self retainedNavigationController];
  v4 = [(OBWelcomeController *)self transitionCoordinator];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 viewControllerForKey:*MEMORY[0x1E69DE778]];
    if ([v6 conformsToProtocol:&unk_1F2D0F560])
    {
      v7 = v6;
      v8 = [(OBWelcomeController *)self cachedBarState];
      [v7 setCurrentNavigationBarDisplayState:v8];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__OBWelcomeController_restoreNavigationBarAppearance__block_invoke;
    v13[3] = &unk_1E7C158A0;
    v13[4] = self;
    v14 = v3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__OBWelcomeController_restoreNavigationBarAppearance__block_invoke_2;
    v10[3] = &unk_1E7C158A0;
    v11 = v14;
    v12 = self;
    [v5 animateAlongsideTransition:v13 completion:v10];
  }

  else
  {
    v6 = [(OBWelcomeController *)self cachedBarState];
    v9 = [v3 navigationBar];
    [v6 applyState:v9];
  }

  [(OBWelcomeController *)self setRetainedNavigationController:0];
}

void __53__OBWelcomeController_restoreNavigationBarAppearance__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) cachedBarState];
  v2 = [*(a1 + 40) navigationBar];
  [v3 applyState:v2];
}

void __53__OBWelcomeController_restoreNavigationBarAppearance__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 isCancelled];
  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = [v5 navigationItem];
    v7 = [v6 _backgroundHidden];
    if (v7)
    {
      v8 = 0.0;
    }

    else
    {
      v2 = [*(a1 + 40) cachedBarState];
      [v2 backgroundOpacity];
      v8 = v10;
    }

    v11 = [*(a1 + 32) navigationBar];
    [v11 _setBackgroundOpacity:v8];

    if ((v7 & 1) == 0)
    {
    }

    v15 = [*(a1 + 40) navigationItem];
    v9 = [v15 navigationBar];
    [v9 _titleOpacity];
    v13 = v12;
    v14 = [*(a1 + 32) navigationBar];
    [v14 _setTitleOpacity:v13];
  }

  else
  {
    v15 = [v5 cachedBarState];
    v9 = [*(a1 + 32) navigationBar];
    [v15 applyState:v9];
  }
}

- (void)_scrollViewDidLayoutSubviews:(id)a3
{
  v4 = [(OBWelcomeController *)self _buttonTrayInlined];
  [(OBWelcomeController *)self _inlineButtonTrayIfNeeded];
  [(OBWelcomeController *)self _updateButtonTrayBackdrop];
  if (v4 != [(OBWelcomeController *)self _buttonTrayInlined])
  {
    v5 = [(OBWelcomeController *)self scrollView];
    [v5 setNeedsLayout];

    v6 = [(OBWelcomeController *)self scrollView];
    [v6 layoutIfNeeded];
  }

  v7 = [(OBWelcomeController *)self scrollView];
  [(OBWelcomeController *)self _enableTrayButtonsForScrollToBottom:v7];
}

- (BOOL)_landscapeiPhone
{
  v3 = +[OBDevice currentDevice];
  if ([v3 type] == 1)
  {
    v4 = [(OBWelcomeController *)self view];
    v5 = ([OBViewUtilities activeInterfaceOrientationForView:v4]- 3) < 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_usesAboveHeaderFullWidthLayout
{
  v3 = [(OBWelcomeController *)self contentViewLayout];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(OBWelcomeController *)self contentViewLayout]== 5;
  }

  return v3;
}

- (CGRect)keyboardFrame
{
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

void __74__OBWelcomeController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*a1 contentViewLayout];
  v5 = 134217984;
  v6 = v3;
  _os_log_fault_impl(&dword_1B4FB6000, a2, OS_LOG_TYPE_FAULT, "The contentLayoutType currently in use does not support landscape rotation layout:%li", &v5, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

@end