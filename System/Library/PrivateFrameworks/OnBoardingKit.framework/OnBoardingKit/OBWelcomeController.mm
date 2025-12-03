@interface OBWelcomeController
- (BOOL)_buttonTrayInlined;
- (BOOL)_landscapeiPhone;
- (BOOL)_scrollViewContentIsUnderTray;
- (BOOL)_usesAboveHeaderFullWidthLayout;
- (BOOL)contentViewUnderButtonTray;
- (BOOL)shouldInlineButtonTray;
- (CGRect)keyboardFrame;
- (OBWelcomeController)initWithTitle:(id)title attributedDetailText:(id)text contentLayout:(int64_t)layout;
- (OBWelcomeController)initWithTitle:(id)title detailText:(id)text appName:(id)name icon:(id)icon;
- (OBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (OBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (double)_contentViewHeight;
- (double)_headerTopOffset;
- (double)availableContentViewHeight;
- (double)contentViewsTopPaddingFromBottomOfHeader;
- (id)_currentContainerView;
- (id)setupHeaderViewIfNeeded:(id)needed detailedText:(id)text icon:(id)icon;
- (int64_t)navigationBarScrollToEdgeBehavior;
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_animatePushTransitionForViews:(id)views transitionSubtype:(id)subtype;
- (void)_commonInitWithContentLayout:(int64_t)layout;
- (void)_enableTrayButtonsForScrollToBottom:(id)bottom;
- (void)_floatButtonTray;
- (void)_handleKeyboardPresentation:(id)presentation;
- (void)_inlineButtonTray;
- (void)_inlineButtonTrayIfNeeded;
- (void)_keyboardWillHide:(id)hide;
- (void)_layoutButtonTray;
- (void)_registerForKeyboardNotifications;
- (void)_safelyAddConstraint:(id)constraint to:(id)to;
- (void)_scrollViewDidLayoutSubviews:(id)subviews;
- (void)_setupNavigationBarBleed;
- (void)_setupScrollView;
- (void)_unregisterForKeyboardNotifications;
- (void)_updateButtonTrayBackdrop;
- (void)_updateHeaderTopOffsetConstraint;
- (void)_updateScrollContentViewLayoutMargins;
- (void)_updateScrollViewInsets;
- (void)addBulletedListItemWithTitle:(id)title description:(id)description image:(id)image tintColor:(id)color linkButton:(id)button;
- (void)addBulletedListItemWithTitle:(id)title description:(id)description symbolName:(id)name tintColor:(id)color linkButton:(id)button;
- (void)applicationDidBecomeActive:(id)active;
- (void)loadView;
- (void)restoreNavigationBarAppearance;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setBackgroundColor:(id)color;
- (void)setCallbackForLifeCyclePhase:(unint64_t)phase callback:(id)callback;
- (void)setScrollingDisabled:(BOOL)disabled;
- (void)setTemplateType:(unint64_t)type;
- (void)setupBulletedListIfNeeded;
- (void)traitCollectionDidChange:(id)change;
- (void)triggerCallbackForLifeCyclePhase:(unint64_t)phase;
- (void)updateDirectionalLayoutMargins;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation OBWelcomeController

- (void)setCallbackForLifeCyclePhase:(unint64_t)phase callback:(id)callback
{
  callbackCopy = callback;
  [(OBWelcomeController *)self _assertViewControllerIsNotASubclass];
  callbacks = [(OBWelcomeController *)self callbacks];

  if (!callbacks)
  {
    v7 = objc_opt_new();
    [(OBWelcomeController *)self setCallbacks:v7];
  }

  v8 = MEMORY[0x1B8C83960](callbackCopy);
  callbacks2 = [(OBWelcomeController *)self callbacks];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:phase];
  [callbacks2 setObject:v8 forKeyedSubscript:v10];
}

- (void)triggerCallbackForLifeCyclePhase:(unint64_t)phase
{
  callbacks = [(OBWelcomeController *)self callbacks];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:phase];
  v8 = [callbacks objectForKeyedSubscript:v6];

  v7 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, self);
    v7 = v8;
  }
}

- (void)addBulletedListItemWithTitle:(id)title description:(id)description image:(id)image tintColor:(id)color linkButton:(id)button
{
  titleCopy = title;
  descriptionCopy = description;
  imageCopy = image;
  colorCopy = color;
  buttonCopy = button;
  if ([(OBWelcomeController *)self contentViewLayout]!= 2)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Bulleted lists can only be positioned below the header userInfo:{normal width.", 0}];
    objc_exception_throw(v17);
  }

  [(OBWelcomeController *)self loadViewIfNeeded];
  [(OBWelcomeController *)self setupBulletedListIfNeeded];
  bulletedList = [(OBWelcomeController *)self bulletedList];
  [bulletedList addItemWithTitle:titleCopy description:descriptionCopy image:imageCopy tintColor:colorCopy linkButton:buttonCopy];
}

- (void)addBulletedListItemWithTitle:(id)title description:(id)description symbolName:(id)name tintColor:(id)color linkButton:(id)button
{
  titleCopy = title;
  descriptionCopy = description;
  nameCopy = name;
  colorCopy = color;
  buttonCopy = button;
  if ([(OBWelcomeController *)self contentViewLayout]!= 2)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Bulleted lists can only be positioned below the header userInfo:{normal width.", 0}];
    objc_exception_throw(v17);
  }

  [(OBWelcomeController *)self loadViewIfNeeded];
  [(OBWelcomeController *)self setupBulletedListIfNeeded];
  bulletedList = [(OBWelcomeController *)self bulletedList];
  [bulletedList addItemWithTitle:titleCopy description:descriptionCopy symbolName:nameCopy tintColor:colorCopy linkButton:buttonCopy];
}

- (void)_animatePushTransitionForViews:(id)views transitionSubtype:(id)subtype
{
  v27 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  subtypeCopy = subtype;
  animation = [MEMORY[0x1E6979538] animation];
  v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [animation setTimingFunction:v8];

  [animation setDuration:0.2];
  [animation setType:@"push"];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  v11 = @"fromRight";
  if (userInterfaceLayoutDirection == 1)
  {
    v11 = @"fromLeft";
  }

  if (!subtypeCopy)
  {
    subtypeCopy = v11;
  }

  [animation setSubtype:subtypeCopy];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = viewsCopy;
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
        layer = [v18 layer];
        [layer removeAllAnimations];

        layer2 = [v18 layer];
        [layer2 addAnimation:animation forKey:v16];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (OBWelcomeController)initWithTitle:(id)title detailText:(id)text appName:(id)name icon:(id)icon
{
  nameCopy = name;
  v11 = [(OBWelcomeController *)self initWithTitle:title detailText:text icon:icon contentLayout:2];
  v12 = v11;
  if (v11)
  {
    headerView = [(OBWelcomeController *)v11 headerView];
    [headerView setAppNameForIntroScreen:nameCopy];
  }

  return v12;
}

- (OBWelcomeController)initWithTitle:(id)title attributedDetailText:(id)text contentLayout:(int64_t)layout
{
  textCopy = text;
  v9 = [(OBWelcomeController *)self initWithTitle:title detailText:0 icon:0 contentLayout:layout];
  v10 = v9;
  if (v9)
  {
    headerView = [(OBWelcomeController *)v9 headerView];
    [headerView setAttributedDetailText:textCopy];
  }

  return v10;
}

- (OBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  titleCopy = title;
  textCopy = text;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = OBWelcomeController;
  v13 = [(OBWelcomeController *)&v17 initWithNibName:0 bundle:0];
  if (v13)
  {
    v14 = [[OBHeaderView alloc] initWithTitle:titleCopy detailText:textCopy symbolName:nameCopy animated:1];
    [(OBWelcomeController *)v13 setHeaderView:v14];

    headerView = [(OBWelcomeController *)v13 headerView];
    [headerView setTranslatesAutoresizingMaskIntoConstraints:0];

    [(OBWelcomeController *)v13 _commonInitWithContentLayout:layout];
  }

  return v13;
}

- (OBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  titleCopy = title;
  textCopy = text;
  iconCopy = icon;
  v17.receiver = self;
  v17.super_class = OBWelcomeController;
  v13 = [(OBWelcomeController *)&v17 initWithNibName:0 bundle:0];
  if (v13)
  {
    v14 = [[OBHeaderView alloc] initWithTitle:titleCopy detailText:textCopy icon:iconCopy];
    [(OBWelcomeController *)v13 setHeaderView:v14];

    headerView = [(OBWelcomeController *)v13 headerView];
    [headerView setTranslatesAutoresizingMaskIntoConstraints:0];

    [(OBWelcomeController *)v13 _commonInitWithContentLayout:layout];
  }

  return v13;
}

- (void)_commonInitWithContentLayout:(int64_t)layout
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

  buttonTray = [(OBWelcomeController *)self buttonTray];
  [buttonTray setTranslatesAutoresizingMaskIntoConstraints:0];

  buttonTray2 = [(OBWelcomeController *)self buttonTray];
  [buttonTray2 setParentViewController:self];

  v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
  [(OBWelcomeController *)self setButtonTrayScrollContainerView:v13];

  buttonTrayScrollContainerView = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  [buttonTrayScrollContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

  [(OBWelcomeController *)self setContentViewLayout:layout];
  _usesAboveHeaderFullWidthLayout = [(OBWelcomeController *)self _usesAboveHeaderFullWidthLayout];
  v16 = layout == 4 || _usesAboveHeaderFullWidthLayout;
  v17 = [[OBContentView alloc] initWithFrame:v16 aboveHeaderLayout:v6, v7, v8, v9];
  [(OBWelcomeController *)self setContentView:v17];

  contentView = [(OBWelcomeController *)self contentView];
  [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

  if (layout == 4)
  {
    v19 = [[OBContentView alloc] initWithFrame:v6, v7, v8, v9];
    secondaryContentView = self->_secondaryContentView;
    self->_secondaryContentView = &v19->super;

    [(OBWelcomeController *)self setIncludePaddingAboveContentView:1];
  }

  else
  {
    [(OBWelcomeController *)self setIncludePaddingAboveContentView:1];
    if ((layout - 5) <= 1)
    {
      headerView = [(OBWelcomeController *)self headerView];
      [headerView setForceCenterAlignment:1];
    }
  }
}

- (id)setupHeaderViewIfNeeded:(id)needed detailedText:(id)text icon:(id)icon
{
  headerView = self->_headerView;
  if (!headerView)
  {
    iconCopy = icon;
    textCopy = text;
    neededCopy = needed;
    v12 = [[OBHeaderView alloc] initWithTitle:neededCopy detailText:textCopy icon:iconCopy];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

  [(OBWelcomeController *)self triggerCallbackForLifeCyclePhase:0];
}

- (void)applicationDidBecomeActive:(id)active
{
  if (self->_symbolNeedsAnimation)
  {
    headerView = [(OBWelcomeController *)self headerView];
    [headerView startSymbolAnimation];

    self->_symbolNeedsAnimation = 0;
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = +[OBDevice currentDevice];
  type = [v3 type];

  if (type == 1)
  {
    return 6;
  }

  v6.receiver = self;
  v6.super_class = OBWelcomeController;
  return [(OBWelcomeController *)&v6 supportedInterfaceOrientations];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = OBWelcomeController;
  [(OBWelcomeController *)&v8 traitCollectionDidChange:change];
  if ([(OBWelcomeController *)self _usesAboveHeaderFullWidthLayout]|| [(OBWelcomeController *)self contentViewLayout]== 4)
  {
    [(OBWelcomeController *)self _contentViewHeight];
    v5 = v4;
    contentViewHeightConstraint = [(OBWelcomeController *)self contentViewHeightConstraint];
    [contentViewHeightConstraint setConstant:v5];
  }

  view = [(OBWelcomeController *)self view];
  [view layoutIfNeeded];

  [(OBWelcomeController *)self _layoutButtonTray];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v20.receiver = self;
  v20.super_class = OBWelcomeController;
  coordinatorCopy = coordinator;
  [(OBBaseWelcomeController *)&v20 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  view = [(OBWelcomeController *)self view];
  v9 = [OBViewUtilities activeInterfaceOrientationForView:view];

  view2 = [(OBWelcomeController *)self view];
  [view2 frame];
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
  [coordinatorCopy animateAlongsideTransition:0 completion:v19];
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

- (void)setScrollingDisabled:(BOOL)disabled
{
  if (self->_scrollingDisabled != disabled)
  {
    disabledCopy = disabled;
    self->_scrollingDisabled = disabled;
    scrollView = [(OBWelcomeController *)self scrollView];
    [scrollView setScrollEnabled:!disabledCopy];
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
    view = [(OBWelcomeController *)self view];
    [view bounds];
    v5 = v4;
    buttonTray = [(OBWelcomeController *)self buttonTray];
    [buttonTray bounds];
    v8 = v5 - v7;
    contentView = [(OBWelcomeController *)self contentView];
    [contentView frame];
    v11 = v8 - v10;
    view2 = [(OBWelcomeController *)self view];
    [view2 safeAreaInsets];
    v14 = fmax(v11 - v13, 0.0);
  }

  else
  {
    view = [(OBWelcomeController *)self buttonTray];
    [view frame];
    v16 = v15;
    buttonTray = [(OBWelcomeController *)self contentView];
    [buttonTray frame];
    v18 = v16 - v17;
    contentView = [(OBWelcomeController *)self view];
    [contentView safeAreaInsets];
    v14 = fmax(v18 - v19, 0.0);
  }

  return v14;
}

- (void)_setupNavigationBarBleed
{
  v34[4] = *MEMORY[0x1E69E9840];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem _setBackgroundHidden:1];

  v4 = objc_alloc(MEMORY[0x1E69DD250]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(OBWelcomeController *)self setBleedView:v5];

  contentView = [(OBWelcomeController *)self contentView];
  bleedView = [(OBWelcomeController *)self bleedView];
  [contentView setBleedView:bleedView];

  bleedView2 = [(OBWelcomeController *)self bleedView];
  [bleedView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(OBWelcomeController *)self view];
  bleedView3 = [(OBWelcomeController *)self bleedView];
  [view insertSubview:bleedView3 atIndex:0];

  v24 = MEMORY[0x1E696ACD8];
  bleedView4 = [(OBWelcomeController *)self bleedView];
  topAnchor = [bleedView4 topAnchor];
  view2 = [(OBWelcomeController *)self view];
  topAnchor2 = [view2 topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[0] = v29;
  bleedView5 = [(OBWelcomeController *)self bleedView];
  leftAnchor = [bleedView5 leftAnchor];
  scrollContentView = [(OBWelcomeController *)self scrollContentView];
  leftAnchor2 = [scrollContentView leftAnchor];
  v23 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
  v34[1] = v23;
  bleedView6 = [(OBWelcomeController *)self bleedView];
  widthAnchor = [bleedView6 widthAnchor];
  scrollContentView2 = [(OBWelcomeController *)self scrollContentView];
  widthAnchor2 = [scrollContentView2 widthAnchor];
  v14 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
  v34[2] = v14;
  bleedView7 = [(OBWelcomeController *)self bleedView];
  bottomAnchor = [bleedView7 bottomAnchor];
  contentView2 = [(OBWelcomeController *)self contentView];
  bottomAnchor2 = [contentView2 bottomAnchor];
  v19 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  v34[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
  [v24 activateConstraints:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_safelyAddConstraint:(id)constraint to:(id)to
{
  if (constraint)
  {

    [to addObject:?];
  }

  else
  {
    NSLog(&cfstr_WarningAttempt.isa, a2, constraint, to);
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

  scrollView = [(OBWelcomeController *)self scrollView];
  [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView2 = [(OBWelcomeController *)self scrollView];
  [scrollView2 setDelegate:self];

  scrollView3 = [(OBWelcomeController *)self scrollView];
  [scrollView3 setContentInsetAdjustmentBehavior:2];

  scrollView4 = [(OBWelcomeController *)self scrollView];
  [scrollView4 _setIndicatorInsetAdjustmentBehavior:2];

  LODWORD(scrollView4) = [(OBWelcomeController *)self isScrollingDisabled];
  scrollView5 = [(OBWelcomeController *)self scrollView];
  [scrollView5 setScrollEnabled:scrollView4 ^ 1];

  if (+[OBFeatureFlags isNaturalUIEnabled]&& ![(OBWelcomeController *)self _usesAboveHeaderFullWidthLayout]&& [(OBWelcomeController *)self contentViewLayout]!= 4)
  {
    backgroundColor = [(OBWelcomeController *)self backgroundColor];
    systemBackgroundColor = backgroundColor;
    if (!backgroundColor)
    {
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    }

    scrollView6 = [(OBWelcomeController *)self scrollView];
    [scrollView6 setBackgroundColor:systemBackgroundColor];

    if (!backgroundColor)
    {
    }
  }

  scrollView7 = [(OBWelcomeController *)self scrollView];
  v18 = [[OBScrollViewWeakLayoutObserver alloc] initWithLayoutObserver:self];
  [scrollView7 _setLayoutObserver:v18];

  v19 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
  [(OBWelcomeController *)self setScrollContentView:v19];

  scrollContentView = [(OBWelcomeController *)self scrollContentView];
  [scrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView8 = [(OBWelcomeController *)self scrollView];
  scrollContentView2 = [(OBWelcomeController *)self scrollContentView];
  [scrollView8 addSubview:scrollContentView2];

  scrollContentView3 = [(OBWelcomeController *)self scrollContentView];
  headerView = [(OBWelcomeController *)self headerView];
  [scrollContentView3 addSubview:headerView];

  scrollContentView4 = [(OBWelcomeController *)self scrollContentView];
  contentView = [(OBWelcomeController *)self contentView];
  [scrollContentView4 addSubview:contentView];

  scrollContentView5 = [(OBWelcomeController *)self scrollContentView];
  buttonTrayScrollContainerView = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  [scrollContentView5 addSubview:buttonTrayScrollContainerView];

  view = [(OBWelcomeController *)self view];
  scrollView9 = [(OBWelcomeController *)self scrollView];
  [view addSubview:scrollView9];

  buttonTrayScrollContainerView2 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  heightAnchor = [buttonTrayScrollContainerView2 heightAnchor];
  v33 = [heightAnchor constraintEqualToConstant:0.0];
  [(OBWelcomeController *)self setButtonTrayScrollContainerHeightConstraint:v33];

  array = [MEMORY[0x1E695DF70] array];
  scrollView10 = [(OBWelcomeController *)self scrollView];
  bottomAnchor = [scrollView10 bottomAnchor];
  view2 = [(OBWelcomeController *)self view];
  bottomAnchor2 = [view2 bottomAnchor];
  v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v39 to:array];

  scrollView11 = [(OBWelcomeController *)self scrollView];
  topAnchor = [scrollView11 topAnchor];
  scrollContentView6 = [(OBWelcomeController *)self scrollContentView];
  topAnchor2 = [scrollContentView6 topAnchor];
  v44 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v44 to:array];

  scrollView12 = [(OBWelcomeController *)self scrollView];
  bottomAnchor3 = [scrollView12 bottomAnchor];
  scrollContentView7 = [(OBWelcomeController *)self scrollContentView];
  bottomAnchor4 = [scrollContentView7 bottomAnchor];
  v49 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v49 to:array];

  scrollView13 = [(OBWelcomeController *)self scrollView];
  leftAnchor = [scrollView13 leftAnchor];
  scrollContentView8 = [(OBWelcomeController *)self scrollContentView];
  leftAnchor2 = [scrollContentView8 leftAnchor];
  v54 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v54 to:array];

  scrollView14 = [(OBWelcomeController *)self scrollView];
  rightAnchor = [scrollView14 rightAnchor];
  scrollContentView9 = [(OBWelcomeController *)self scrollContentView];
  rightAnchor2 = [scrollContentView9 rightAnchor];
  v59 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v59 to:array];

  scrollView15 = [(OBWelcomeController *)self scrollView];
  frameLayoutGuide = [scrollView15 frameLayoutGuide];
  widthAnchor = [frameLayoutGuide widthAnchor];
  scrollContentView10 = [(OBWelcomeController *)self scrollContentView];
  widthAnchor2 = [scrollContentView10 widthAnchor];
  v65 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v65 to:array];

  buttonTrayScrollContainerView3 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  centerXAnchor = [buttonTrayScrollContainerView3 centerXAnchor];
  view3 = [(OBWelcomeController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v70 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [(OBWelcomeController *)self _safelyAddConstraint:v70 to:array];

  buttonTrayScrollContainerView4 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  widthAnchor3 = [buttonTrayScrollContainerView4 widthAnchor];
  headerView2 = [(OBWelcomeController *)self headerView];
  widthAnchor4 = [headerView2 widthAnchor];
  v75 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:1.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v75 to:array];

  buttonTrayScrollContainerView5 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  bottomAnchor5 = [buttonTrayScrollContainerView5 bottomAnchor];
  scrollContentView11 = [(OBWelcomeController *)self scrollContentView];
  bottomAnchor6 = [scrollContentView11 bottomAnchor];
  v80 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v80 to:array];

  buttonTrayScrollContainerHeightConstraint = [(OBWelcomeController *)self buttonTrayScrollContainerHeightConstraint];
  v228 = array;
  [(OBWelcomeController *)self _safelyAddConstraint:buttonTrayScrollContainerHeightConstraint to:array];

  scrollContentView12 = [(OBWelcomeController *)self scrollContentView];
  v83 = 0x1E695D000;
  if (scrollContentView12)
  {
    v84 = scrollContentView12;
    headerView3 = [(OBWelcomeController *)self headerView];

    if (headerView3)
    {
      scrollContentView13 = [(OBWelcomeController *)self scrollContentView];
      layoutMarginsGuide = [scrollContentView13 layoutMarginsGuide];
      leadingAnchor = [layoutMarginsGuide leadingAnchor];
      headerView4 = [(OBWelcomeController *)self headerView];
      leadingAnchor2 = [headerView4 leadingAnchor];
      v87 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v235[0] = v87;
      scrollContentView14 = [(OBWelcomeController *)self scrollContentView];
      layoutMarginsGuide2 = [scrollContentView14 layoutMarginsGuide];
      trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
      headerView5 = [(OBWelcomeController *)self headerView];
      trailingAnchor2 = [headerView5 trailingAnchor];
      v93 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v235[1] = v93;
      v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v235 count:2];
      [v228 addObjectsFromArray:v94];

      v83 = 0x1E695D000uLL;
    }
  }

  scrollView16 = [(OBWelcomeController *)self scrollView];
  leftAnchor3 = [scrollView16 leftAnchor];
  view4 = [(OBWelcomeController *)self view];
  leftAnchor4 = [view4 leftAnchor];
  v97 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:0.0];
  v234[0] = v97;
  scrollView17 = [(OBWelcomeController *)self scrollView];
  rightAnchor3 = [scrollView17 rightAnchor];
  view5 = [(OBWelcomeController *)self view];
  rightAnchor4 = [view5 rightAnchor];
  v102 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:0.0];
  v234[1] = v102;
  v103 = [*(v83 + 3784) arrayWithObjects:v234 count:2];
  [v228 addObjectsFromArray:v103];

  LODWORD(scrollView17) = +[OBFeatureFlags isNaturalUIEnabled];
  scrollView18 = [(OBWelcomeController *)self scrollView];
  topAnchor3 = [scrollView18 topAnchor];
  view6 = [(OBWelcomeController *)self view];
  v107 = view6;
  if (scrollView17)
  {
    topAnchor4 = [view6 topAnchor];
    v108TopAnchor = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:0.0];
    v110 = v228;
    [v228 addObject:v108TopAnchor];
  }

  else
  {
    topAnchor4 = [view6 safeAreaLayoutGuide];
    v108TopAnchor = [topAnchor4 topAnchor];
    v111 = [topAnchor3 constraintEqualToAnchor:v108TopAnchor constant:0.0];
    [v228 addObject:v111];

    v110 = v228;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v110];
  contentViewLayout = [(OBWelcomeController *)self contentViewLayout];
  if (contentViewLayout <= 6)
  {
    if (((1 << contentViewLayout) & 0x32) != 0)
    {
      contentView2 = [(OBWelcomeController *)self contentView];
      topAnchor5 = [contentView2 topAnchor];
      scrollContentView15 = [(OBWelcomeController *)self scrollContentView];
      topAnchor6 = [scrollContentView15 topAnchor];
      v137 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:0.0];
      [(OBWelcomeController *)self setContentViewTopOffsetConstraint:v137];

      contentView3 = [(OBWelcomeController *)self contentView];
      heightAnchor2 = [contentView3 heightAnchor];
      [(OBWelcomeController *)self _contentViewHeight];
      v140 = [heightAnchor2 constraintEqualToConstant:?];
      [(OBWelcomeController *)self setContentViewHeightConstraint:v140];

      v203 = MEMORY[0x1E696ACD8];
      contentViewTopOffsetConstraint = [(OBWelcomeController *)self contentViewTopOffsetConstraint];
      v233[0] = contentViewTopOffsetConstraint;
      contentView4 = [(OBWelcomeController *)self contentView];
      leftAnchor5 = [contentView4 leftAnchor];
      scrollContentView16 = [(OBWelcomeController *)self scrollContentView];
      leftAnchor6 = [scrollContentView16 leftAnchor];
      v142 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6 constant:0.0];
      v233[1] = v142;
      contentView5 = [(OBWelcomeController *)self contentView];
      widthAnchor5 = [contentView5 widthAnchor];
      scrollContentView17 = [(OBWelcomeController *)self scrollContentView];
      widthAnchor6 = [scrollContentView17 widthAnchor];
      v147 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:1.0];
      v233[2] = v147;
      contentViewHeightConstraint = [(OBWelcomeController *)self contentViewHeightConstraint];
      v233[3] = contentViewHeightConstraint;
      v149 = [MEMORY[0x1E695DEC8] arrayWithObjects:v233 count:4];
      [v203 activateConstraints:v149];

      [(OBWelcomeController *)self _setupNavigationBarBleed];
      if ([(OBWelcomeController *)self contentViewLayout]!= 4)
      {
        v182 = MEMORY[0x1E696ACD8];
        buttonTrayScrollContainerView6 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
        topAnchor7 = [buttonTrayScrollContainerView6 topAnchor];
        headerView6 = [(OBWelcomeController *)self headerView];
        bottomAnchor7 = [headerView6 bottomAnchor];
        v129 = [topAnchor7 constraintEqualToAnchor:bottomAnchor7 constant:0.0];
        v231 = v129;
        v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v231 count:1];
        [v182 activateConstraints:v128];
        goto LABEL_26;
      }

      secondaryContentView = [(OBWelcomeController *)self secondaryContentView];
      [secondaryContentView setTranslatesAutoresizingMaskIntoConstraints:0];

      scrollContentView18 = [(OBWelcomeController *)self scrollContentView];
      secondaryContentView2 = [(OBWelcomeController *)self secondaryContentView];
      [scrollContentView18 addSubview:secondaryContentView2];

      secondaryContentView3 = [(OBWelcomeController *)self secondaryContentView];
      topAnchor8 = [secondaryContentView3 topAnchor];
      headerView7 = [(OBWelcomeController *)self headerView];
      bottomAnchor8 = [headerView7 bottomAnchor];
      [(OBWelcomeController *)self contentViewsTopPaddingFromBottomOfHeader];
      v157 = [topAnchor8 constraintEqualToAnchor:bottomAnchor8 constant:?];
      [(OBWelcomeController *)self setSecondaryContentViewTopOffsetConstraint:v157];

      v194 = MEMORY[0x1E696ACD8];
      secondaryContentViewTopOffsetConstraint = [(OBWelcomeController *)self secondaryContentViewTopOffsetConstraint];
      v232[0] = secondaryContentViewTopOffsetConstraint;
      secondaryContentView4 = [(OBWelcomeController *)self secondaryContentView];
      leftAnchor7 = [secondaryContentView4 leftAnchor];
      scrollContentView19 = [(OBWelcomeController *)self scrollContentView];
      layoutMarginsGuide3 = [scrollContentView19 layoutMarginsGuide];
      leftAnchor8 = [layoutMarginsGuide3 leftAnchor];
      contentView8 = [leftAnchor7 constraintEqualToAnchor:leftAnchor8 constant:0.0];
      v232[1] = contentView8;
      secondaryContentView5 = [(OBWelcomeController *)self secondaryContentView];
      widthAnchor7 = [secondaryContentView5 widthAnchor];
      headerView8 = [(OBWelcomeController *)self headerView];
      widthAnchor8 = [headerView8 widthAnchor];
      v188 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:1.0];
      v232[2] = v188;
      secondaryContentView6 = [(OBWelcomeController *)self secondaryContentView];
      bottomAnchor9 = [secondaryContentView6 bottomAnchor];
      buttonTrayScrollContainerView7 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
      topAnchor9 = [buttonTrayScrollContainerView7 topAnchor];
      v160 = [bottomAnchor9 constraintEqualToAnchor:topAnchor9 constant:0.0];
      v232[3] = v160;
      buttonTrayScrollContainerView8 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
      topAnchor10 = [buttonTrayScrollContainerView8 topAnchor];
      secondaryContentView7 = [(OBWelcomeController *)self secondaryContentView];
      bottomAnchor10 = [secondaryContentView7 bottomAnchor];
      v165 = [topAnchor10 constraintEqualToAnchor:bottomAnchor10 constant:0.0];
      v232[4] = v165;
      v166 = [MEMORY[0x1E695DEC8] arrayWithObjects:v232 count:5];
      [v194 activateConstraints:v166];

      v128 = leftAnchor8;
      v129 = layoutMarginsGuide3;

      buttonTrayScrollContainerView6 = secondaryContentViewTopOffsetConstraint;
      bottomAnchor7 = scrollContentView19;

      headerView6 = leftAnchor7;
      topAnchor7 = secondaryContentView4;

      v167 = secondaryContentView5;
    }

    else
    {
      if (((1 << contentViewLayout) & 0x48) != 0)
      {
        contentView6 = [(OBWelcomeController *)self contentView];
        topAnchor11 = [contentView6 topAnchor];
        headerView9 = [(OBWelcomeController *)self headerView];
        bottomAnchor11 = [headerView9 bottomAnchor];
        [(OBWelcomeController *)self contentViewsTopPaddingFromBottomOfHeader];
        v117 = [topAnchor11 constraintEqualToAnchor:bottomAnchor11 constant:?];
        [(OBWelcomeController *)self setContentViewTopOffsetConstraint:v117];

        v199 = MEMORY[0x1E696ACD8];
        contentViewTopOffsetConstraint2 = [(OBWelcomeController *)self contentViewTopOffsetConstraint];
        v229[0] = contentViewTopOffsetConstraint2;
        contentView7 = [(OBWelcomeController *)self contentView];
        leftAnchor9 = [contentView7 leftAnchor];
        scrollContentView20 = [(OBWelcomeController *)self scrollContentView];
        leftAnchor10 = [scrollContentView20 leftAnchor];
        v118 = [leftAnchor9 constraintEqualToAnchor:leftAnchor10 constant:0.0];
        v229[1] = v118;
        contentView8 = [(OBWelcomeController *)self contentView];
        widthAnchor9 = [contentView8 widthAnchor];
        scrollContentView21 = [(OBWelcomeController *)self scrollContentView];
        widthAnchor10 = [scrollContentView21 widthAnchor];
        v120 = [widthAnchor9 constraintEqualToAnchor:widthAnchor10 multiplier:1.0];
        v229[2] = v120;
        contentView9 = [(OBWelcomeController *)self contentView];
        bottomAnchor12 = [contentView9 bottomAnchor];
        buttonTrayScrollContainerView9 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
        topAnchor12 = [buttonTrayScrollContainerView9 topAnchor];
        v125 = [bottomAnchor12 constraintEqualToAnchor:topAnchor12 constant:0.0];
        v229[3] = v125;
        v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:v229 count:4];
        [v199 activateConstraints:v126];

        buttonTrayScrollContainerView6 = contentViewTopOffsetConstraint2;
        v128 = v118;

        v129 = leftAnchor10;
        bottomAnchor7 = scrollContentView20;

        headerView6 = leftAnchor9;
        topAnchor7 = contentView7;
      }

      else
      {
        if (contentViewLayout != 2)
        {
          goto LABEL_27;
        }

        contentView10 = [(OBWelcomeController *)self contentView];
        topAnchor13 = [contentView10 topAnchor];
        headerView10 = [(OBWelcomeController *)self headerView];
        bottomAnchor13 = [headerView10 bottomAnchor];
        [(OBWelcomeController *)self contentViewsTopPaddingFromBottomOfHeader];
        v172 = [topAnchor13 constraintEqualToAnchor:bottomAnchor13 constant:?];
        [(OBWelcomeController *)self setContentViewTopOffsetConstraint:v172];

        v197 = MEMORY[0x1E696ACD8];
        contentViewTopOffsetConstraint3 = [(OBWelcomeController *)self contentViewTopOffsetConstraint];
        v230[0] = contentViewTopOffsetConstraint3;
        contentView11 = [(OBWelcomeController *)self contentView];
        leftAnchor11 = [contentView11 leftAnchor];
        scrollContentView22 = [(OBWelcomeController *)self scrollContentView];
        layoutMarginsGuide4 = [scrollContentView22 layoutMarginsGuide];
        leftAnchor12 = [layoutMarginsGuide4 leftAnchor];
        contentView8 = [leftAnchor11 constraintEqualToAnchor:leftAnchor12 constant:0.0];
        v230[1] = contentView8;
        widthAnchor9 = [(OBWelcomeController *)self contentView];
        v193WidthAnchor = [widthAnchor9 widthAnchor];
        headerView11 = [(OBWelcomeController *)self headerView];
        widthAnchor11 = [headerView11 widthAnchor];
        v175 = [v193WidthAnchor constraintEqualToAnchor:widthAnchor11 multiplier:1.0];
        v230[2] = v175;
        contentView12 = [(OBWelcomeController *)self contentView];
        bottomAnchor14 = [contentView12 bottomAnchor];
        buttonTrayScrollContainerView10 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
        topAnchor14 = [buttonTrayScrollContainerView10 topAnchor];
        v180 = [bottomAnchor14 constraintEqualToAnchor:topAnchor14 constant:0.0];
        v230[3] = v180;
        v181 = [MEMORY[0x1E695DEC8] arrayWithObjects:v230 count:4];
        [v197 activateConstraints:v181];

        buttonTrayScrollContainerView6 = contentViewTopOffsetConstraint3;
        v128 = leftAnchor12;

        v129 = layoutMarginsGuide4;
        bottomAnchor7 = scrollContentView22;

        headerView6 = leftAnchor11;
        topAnchor7 = contentView11;
      }

      v167 = widthAnchor9;
    }

LABEL_26:
    v110 = v228;
  }

LABEL_27:
  [(OBWelcomeController *)self _layoutButtonTray];
  [(OBWelcomeController *)self _updateHeaderTopOffsetConstraint];
  tabBarController = [(OBWelcomeController *)self tabBarController];

  if (tabBarController)
  {
    scrollView19 = [(OBWelcomeController *)self scrollView];
    [(OBWelcomeController *)self setContentScrollView:scrollView19 forEdge:4];
  }

  v185 = *MEMORY[0x1E69E9840];
}

- (void)setupBulletedListIfNeeded
{
  v48[4] = *MEMORY[0x1E69E9840];
  bulletedList = [(OBWelcomeController *)self bulletedList];

  if (!bulletedList)
  {
    v4 = objc_alloc_init(OBBulletedList);
    [(OBWelcomeController *)self setBulletedList:v4];

    bulletedList2 = [(OBWelcomeController *)self bulletedList];
    [bulletedList2 setTranslatesAutoresizingMaskIntoConstraints:0];

    templateType = [(OBWelcomeController *)self templateType];
    bulletedList3 = [(OBWelcomeController *)self bulletedList];
    [bulletedList3 setTemplateType:templateType];

    contentView = [(OBWelcomeController *)self contentView];
    bulletedList4 = [(OBWelcomeController *)self bulletedList];
    [contentView addSubview:bulletedList4];

    [(OBWelcomeController *)self contentViewsTopPaddingFromBottomOfHeader];
    v11 = v10;
    contentViewTopOffsetConstraint = [(OBWelcomeController *)self contentViewTopOffsetConstraint];
    [contentViewTopOffsetConstraint setActive:0];

    contentView2 = [(OBWelcomeController *)self contentView];
    topAnchor = [contentView2 topAnchor];
    headerView = [(OBWelcomeController *)self headerView];
    bottomAnchor = [headerView bottomAnchor];
    v17 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:v11];
    [(OBWelcomeController *)self setContentViewTopOffsetConstraint:v17];

    contentViewTopOffsetConstraint2 = [(OBWelcomeController *)self contentViewTopOffsetConstraint];
    [contentViewTopOffsetConstraint2 setActive:1];

    contentView3 = [(OBWelcomeController *)self contentView];
    leadingAnchor = [contentView3 leadingAnchor];
    bulletedList5 = [(OBWelcomeController *)self bulletedList];
    leadingAnchor2 = [bulletedList5 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    bulletedList6 = [(OBWelcomeController *)self bulletedList];
    [bulletedList6 setLeadingConstraint:v23];

    contentView4 = [(OBWelcomeController *)self contentView];
    trailingAnchor = [contentView4 trailingAnchor];
    bulletedList7 = [(OBWelcomeController *)self bulletedList];
    trailingAnchor2 = [bulletedList7 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    bulletedList8 = [(OBWelcomeController *)self bulletedList];
    [bulletedList8 setTrailingConstraint:v29];

    v42 = MEMORY[0x1E696ACD8];
    bulletedList9 = [(OBWelcomeController *)self bulletedList];
    leadingConstraint = [bulletedList9 leadingConstraint];
    v48[0] = leadingConstraint;
    bulletedList10 = [(OBWelcomeController *)self bulletedList];
    trailingConstraint = [bulletedList10 trailingConstraint];
    v48[1] = trailingConstraint;
    contentView5 = [(OBWelcomeController *)self contentView];
    topAnchor2 = [contentView5 topAnchor];
    bulletedList11 = [(OBWelcomeController *)self bulletedList];
    topAnchor3 = [bulletedList11 topAnchor];
    v34 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v48[2] = v34;
    contentView6 = [(OBWelcomeController *)self contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    bulletedList12 = [(OBWelcomeController *)self bulletedList];
    bottomAnchor3 = [bulletedList12 bottomAnchor];
    v39 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v48[3] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
    [v42 activateConstraints:v40];
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (double)contentViewsTopPaddingFromBottomOfHeader
{
  bulletedList = [(OBWelcomeController *)self bulletedList];

  if (bulletedList)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    view = [(OBWelcomeController *)self view];
    window = [view window];
    v7 = [mEMORY[0x1E69DC668] supportedInterfaceOrientationsForWindow:window];

    v9 = v7 == 8 || (v7 & 0xFFFFFFFFFFFFFFF7) == 16;
    view2 = [(OBWelcomeController *)self view];
    window2 = [view2 window];

    if (![(OBWelcomeController *)self _landscapeiPhone]|| !window2 || (v12 = 24.0, !v9))
    {
      v13 = +[OBDevice currentDevice];
      templateType = [v13 templateType];

      v12 = 0.0;
      if (templateType <= 9)
      {
        if (((1 << templateType) & 0x24E) != 0)
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

        else if (((1 << templateType) & 0x1B0) == 0)
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
  contentViewLayout = [(OBWelcomeController *)self contentViewLayout];
  v4 = 0;
  if (contentViewLayout <= 6)
  {
    if (((1 << contentViewLayout) & 0x32) != 0)
    {
      secondaryContentView = [(OBWelcomeController *)self secondaryContentView];
      goto LABEL_6;
    }

    if (((1 << contentViewLayout) & 0x4C) != 0)
    {
      secondaryContentView = [(OBWelcomeController *)self contentView];
LABEL_6:
      v4 = secondaryContentView;
    }
  }

  [v4 frame];
  MaxY = CGRectGetMaxY(v12);
  scrollView = [(OBWelcomeController *)self scrollView];
  [scrollView frame];
  v8 = CGRectGetMaxY(v13);
  buttonTray = [(OBWelcomeController *)self buttonTray];
  [buttonTray frame];
  v10 = MaxY >= v8 - CGRectGetHeight(v14);

  return v10;
}

- (void)setBackgroundColor:(id)color
{
  objc_storeStrong(&self->_backgroundColor, color);
  colorCopy = color;
  scrollView = [(OBWelcomeController *)self scrollView];
  [scrollView setBackgroundColor:colorCopy];
}

- (double)_contentViewHeight
{
  parentViewController = [(OBWelcomeController *)self parentViewController];
  if (!parentViewController)
  {
    goto LABEL_24;
  }

  v4 = parentViewController;
  contentViewHeightConstraintsBlock = [(OBWelcomeController *)self contentViewHeightConstraintsBlock];

  if (!contentViewHeightConstraintsBlock)
  {
    goto LABEL_24;
  }

  contentViewHeightConstraintsBlock2 = [(OBWelcomeController *)self contentViewHeightConstraintsBlock];
  v7 = contentViewHeightConstraintsBlock2[2]();

  if (v7)
  {
    if (([v7 isActive] & 1) == 0)
    {
      [v7 setActive:1];
    }

    contentView = [(OBWelcomeController *)self contentView];
    [contentView layoutIfNeeded];

    contentView2 = [(OBWelcomeController *)self contentView];
    [contentView2 frame];
    v11 = v10;
  }

  else
  {
LABEL_24:
    if ([(OBWelcomeController *)self _usesAboveHeaderFullWidthLayout]|| (v11 = 0.0, [(OBWelcomeController *)self contentViewLayout]== 4))
    {
      v12 = +[OBDevice currentDevice];
      type = [v12 type];

      if (type == 2)
      {
        presentingViewController = [(OBWelcomeController *)self presentingViewController];
        if (!presentingViewController)
        {
          goto LABEL_17;
        }

        v15 = presentingViewController;
        presentingViewController2 = [(OBWelcomeController *)self presentingViewController];
        presentedViewController = [presentingViewController2 presentedViewController];
        modalPresentationStyle = [presentedViewController modalPresentationStyle];

        if (modalPresentationStyle)
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
  headerTopOffsetConstraint = [(OBWelcomeController *)self headerTopOffsetConstraint];

  if (headerTopOffsetConstraint)
  {
    [(OBWelcomeController *)self _headerTopOffset];
    v5 = -v4;
    headerTopOffsetConstraint2 = [(OBWelcomeController *)self headerTopOffsetConstraint];
    [headerTopOffsetConstraint2 setConstant:v5];
    goto LABEL_10;
  }

  contentViewLayout = [(OBWelcomeController *)self contentViewLayout];
  if (contentViewLayout <= 6)
  {
    if (((1 << contentViewLayout) & 0x32) != 0)
    {
      contentView = [(OBWelcomeController *)self contentView];
      bottomAnchor = [contentView bottomAnchor];
      goto LABEL_8;
    }

    if (((1 << contentViewLayout) & 0x4C) != 0)
    {
      contentView = [(OBWelcomeController *)self scrollView];
      bottomAnchor = [contentView topAnchor];
LABEL_8:
      v9 = bottomAnchor;
      headerView = [(OBWelcomeController *)self headerView];
      topAnchor = [headerView topAnchor];
      [(OBWelcomeController *)self _headerTopOffset];
      v13 = [v9 constraintEqualToAnchor:topAnchor constant:-v12];
      [(OBWelcomeController *)self setHeaderTopOffsetConstraint:v13];
    }
  }

  headerTopOffsetConstraint2 = [(OBWelcomeController *)self headerTopOffsetConstraint];
  [headerTopOffsetConstraint2 setActive:1];
LABEL_10:
}

- (double)_headerTopOffset
{
  contentViewLayout = [(OBWelcomeController *)self contentViewLayout];
  if (contentViewLayout <= 6)
  {
    if (((1 << contentViewLayout) & 0x32) != 0)
    {
      [(OBWelcomeController *)self _contentViewHeight];
      return v11 * 0.09;
    }

    else if (((1 << contentViewLayout) & 0x4C) != 0)
    {
      v5 = +[OBDevice currentDevice];
      type = [v5 type];

      if (type == 2)
      {
        view = [(OBWelcomeController *)self view];
        [view bounds];
        v9 = v8 * 0.09 + -20.0;
        v10 = 20.0;
      }

      else
      {
        navigationController = [(OBWelcomeController *)self navigationController];
        navigationBar = [navigationController navigationBar];
        [navigationBar bounds];
        v15 = v14;

        navigationController2 = [(OBWelcomeController *)self navigationController];
        navigationBar2 = [navigationController2 navigationBar];
        LODWORD(navigationBar) = [navigationBar2 isHidden];

        view = +[OBUtilities mainScreen];
        [view bounds];
        v19 = -v15;
        if (navigationBar)
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
  contentViewLayout = [(OBWelcomeController *)self contentViewLayout];
  if (contentViewLayout <= 6)
  {
    if (((1 << contentViewLayout) & 0x5C) != 0)
    {
      contentViewUnderButtonTray = [(OBWelcomeController *)self contentViewUnderButtonTray];
    }

    else
    {
      if (((1 << contentViewLayout) & 0x22) == 0)
      {
        goto LABEL_7;
      }

      headerView = [(OBWelcomeController *)self headerView];
      [headerView frame];
      MaxY = CGRectGetMaxY(v51);
      view = [(OBWelcomeController *)self view];
      [view bounds];
      v9 = CGRectGetMaxY(v52);
      buttonTray = [(OBWelcomeController *)self buttonTray];
      [buttonTray frame];
      contentViewUnderButtonTray = MaxY >= v9 - CGRectGetHeight(v53);
    }

    if (v3 && contentViewUnderButtonTray)
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
    buttonTray2 = [(OBWelcomeController *)self buttonTray];
    [buttonTray2 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    if ([(OBWelcomeController *)self _shouldDetachButtonTray])
    {
      buttonTray3 = [(OBWelcomeController *)self buttonTray];
      [buttonTray3 detachedSize];
      v20 = v24;
      buttonTray4 = [(OBWelcomeController *)self buttonTray];
      [buttonTray4 detachedSize];
      v22 = v26;
      v16 = 0.0;

      rect = 0.0;
    }

    else
    {
      rect = v18;
    }

    view2 = [(OBWelcomeController *)self view];
    headerView2 = [(OBWelcomeController *)self headerView];
    [headerView2 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    headerView3 = [(OBWelcomeController *)self headerView];
    [view2 convertRect:headerView3 fromView:{v30, v32, v34, v36}];
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
  scrollView = [(OBWelcomeController *)self scrollView];
  buttonTray = [(OBWelcomeController *)self buttonTray];
  [buttonTray bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  buttonTray2 = [(OBWelcomeController *)self buttonTray];
  [scrollView convertRect:buttonTray2 fromView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  scrollView2 = [(OBWelcomeController *)self scrollView];
  [scrollView2 contentSize];
  v24 = v23;
  v26.origin.x = v15;
  v26.origin.y = v17;
  v26.size.width = v19;
  v26.size.height = v21;
  LOBYTE(scrollView) = v24 > CGRectGetMinY(v26);

  return scrollView;
}

- (void)_updateButtonTrayBackdrop
{
  if ([(OBWelcomeController *)self shouldInlineButtonTray])
  {
    buttonTray = [(OBWelcomeController *)self buttonTray];
    v4 = buttonTray;
  }

  else
  {
    _scrollViewContentIsUnderTray = [(OBWelcomeController *)self _scrollViewContentIsUnderTray];
    buttonTray = [(OBWelcomeController *)self buttonTray];
    v4 = buttonTray;
    if (_scrollViewContentIsUnderTray)
    {
      [buttonTray setBackdropStyle:2];

      buttonTray2 = [(OBWelcomeController *)self buttonTray];
      scrollView = [(OBWelcomeController *)self scrollView];
      [buttonTray2 addScrollPocketToScrollView:scrollView];

      goto LABEL_6;
    }
  }

  [buttonTray setBackdropStyle:1];

  buttonTray2 = [(OBWelcomeController *)self buttonTray];
  [buttonTray2 removeScrollPocket];
LABEL_6:
}

- (void)_updateScrollContentViewLayoutMargins
{
  scrollContentView = [(OBWelcomeController *)self scrollContentView];
  [scrollContentView directionalLayoutMargins];
  v5 = v4;

  if ([(OBWelcomeController *)self _landscapeiPhone])
  {
    view = [(OBWelcomeController *)self view];
    [view directionalLayoutMargins];
    v8 = v7;
    view2 = [(OBWelcomeController *)self view];
    [view2 safeAreaInsets];
    v11 = v8 - v10;

    view3 = [(OBWelcomeController *)self view];
    [view3 directionalLayoutMargins];
    v14 = v13;
    view4 = [(OBWelcomeController *)self view];
    [view4 safeAreaInsets];
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

    view5 = [(OBWelcomeController *)self view];
    [view5 directionalLayoutMargins];
    v11 = v23;

    view3 = [(OBWelcomeController *)self view];
    [view3 directionalLayoutMargins];
    v17 = v24;
  }

LABEL_8:
  v25 = 0.0;
  if (![(OBWelcomeController *)self shouldInlineButtonTray])
  {
    buttonTray = [(OBWelcomeController *)self buttonTray];
    [buttonTray frame];
    v25 = v27;
  }

  scrollContentView2 = [(OBWelcomeController *)self scrollContentView];
  [scrollContentView2 setDirectionalLayoutMargins:{v5, v11, v25, v17}];
}

- (void)_updateScrollViewInsets
{
  scrollView = [(OBWelcomeController *)self scrollView];

  if (!scrollView)
  {
    return;
  }

  scrollView2 = [(OBWelcomeController *)self scrollView];
  [scrollView2 contentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  scrollView3 = [(OBWelcomeController *)self scrollView];
  [scrollView3 verticalScrollIndicatorInsets];
  v13 = v12;
  v15 = v14;

  shouldAdjustScrollViewInsetForKeyboard = [(OBWelcomeController *)self shouldAdjustScrollViewInsetForKeyboard];
  _buttonTrayInlined = [(OBWelcomeController *)self _buttonTrayInlined];
  if ([(OBWelcomeController *)self shouldAdjustButtonTrayForKeyboard])
  {
    v18 = _buttonTrayInlined;
  }

  else
  {
    v18 = shouldAdjustScrollViewInsetForKeyboard;
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

  buttonTray = [(OBWelcomeController *)self buttonTray];
  if (([buttonTray hasContent] & 1) == 0)
  {

    goto LABEL_13;
  }

  buttonTray2 = [(OBWelcomeController *)self buttonTray];
  [buttonTray2 frame];
  IsEmpty = CGRectIsEmpty(v59);

  if (IsEmpty)
  {
LABEL_13:
    tabBarController = [(OBWelcomeController *)self tabBarController];

    if (tabBarController)
    {
      scrollView4 = [(OBWelcomeController *)self scrollView];
      [scrollView4 setContentInsetAdjustmentBehavior:0];

      scrollView5 = [(OBWelcomeController *)self scrollView];
      [scrollView5 _setIndicatorInsetAdjustmentBehavior:0];
    }

    view = [(OBWelcomeController *)self view];
    [view safeAreaInsets];
    Height = v36;
    goto LABEL_16;
  }

  Height = 0.0;
  if (!_buttonTrayInlined)
  {
    view = [(OBWelcomeController *)self _currentContainerView];
    view2 = [(OBWelcomeController *)self view];
    buttonTray3 = [(OBWelcomeController *)self buttonTray];
    [buttonTray3 frame];
    [view2 convertPoint:view toView:?];
    v31 = v30;

    [view bounds];
    Height = v32 - v31;
LABEL_16:
  }

LABEL_18:
  if ([(OBWelcomeController *)self _landscapeiPhone]&& Height == 0.0)
  {
    view3 = [(OBWelcomeController *)self view];
    [view3 safeAreaInsets];
    Height = v38;
  }

  if (!+[OBFeatureFlags isNaturalUIEnabled])
  {
    goto LABEL_37;
  }

  scrollView6 = [(OBWelcomeController *)self scrollView];
  contentInsetAdjustmentBehavior = [scrollView6 contentInsetAdjustmentBehavior];

  if (contentInsetAdjustmentBehavior != 2)
  {
    goto LABEL_37;
  }

  view4 = [(OBWelcomeController *)self view];
  [view4 safeAreaInsets];
  v6 = v42;

  if ([(OBWelcomeController *)self didSetContentOffsetOnInitialAppearance])
  {
    goto LABEL_37;
  }

  bleedView = [(OBWelcomeController *)self bleedView];
  if (bleedView)
  {
    v44 = bleedView;
    bleedView2 = [(OBWelcomeController *)self bleedView];
    superview = [bleedView2 superview];
    view5 = [(OBWelcomeController *)self view];
    if (superview == view5)
    {
    }

    else
    {
      if (v6 != 0.0)
      {
        LOBYTE(_buttonTrayInlined) = 1;
      }

      if (!_buttonTrayInlined)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v48 = v6 != 0.0 || _buttonTrayInlined;
    if ((v48 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  scrollView7 = [(OBWelcomeController *)self scrollView];
  [scrollView7 contentOffset];
  v51 = v50;
  view6 = [(OBWelcomeController *)self view];
  [view6 safeAreaInsets];
  v54 = -v53;
  scrollView8 = [(OBWelcomeController *)self scrollView];
  [scrollView8 setContentOffset:{v51, v54}];

LABEL_37:
  scrollView9 = [(OBWelcomeController *)self scrollView];
  [scrollView9 setContentInset:{v6, v8, Height, v10}];

  scrollView10 = [(OBWelcomeController *)self scrollView];
  [scrollView10 setScrollIndicatorInsets:{v6, v13, Height, v15}];
}

- (id)_currentContainerView
{
  navigationController = [(OBWelcomeController *)self navigationController];
  view = [navigationController view];

  if (!view)
  {
    parentViewController = [(OBWelcomeController *)self parentViewController];
    view = [parentViewController view];

    if (!view)
    {
      view = [(OBWelcomeController *)self view];
    }
  }

  return view;
}

- (void)_inlineButtonTray
{
  buttonTrayScrollContainerView = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  buttonTray = [(OBWelcomeController *)self buttonTray];
  [buttonTrayScrollContainerView addSubview:buttonTray];

  buttonTrayScrollContainerHeightConstraint = [(OBWelcomeController *)self buttonTrayScrollContainerHeightConstraint];
  [buttonTrayScrollContainerHeightConstraint setActive:0];

  array = [MEMORY[0x1E695DF70] array];
  buttonTray2 = [(OBWelcomeController *)self buttonTray];
  topAnchor = [buttonTray2 topAnchor];
  buttonTrayScrollContainerView2 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  topAnchor2 = [buttonTrayScrollContainerView2 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v10 to:array];

  buttonTray3 = [(OBWelcomeController *)self buttonTray];
  bottomAnchor = [buttonTray3 bottomAnchor];
  buttonTrayScrollContainerView3 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  bottomAnchor2 = [buttonTrayScrollContainerView3 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v15 to:array];

  buttonTray4 = [(OBWelcomeController *)self buttonTray];
  leadingAnchor = [buttonTray4 leadingAnchor];
  buttonTrayScrollContainerView4 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  leadingAnchor2 = [buttonTrayScrollContainerView4 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v20 to:array];

  buttonTray5 = [(OBWelcomeController *)self buttonTray];
  trailingAnchor = [buttonTray5 trailingAnchor];
  buttonTrayScrollContainerView5 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  trailingAnchor2 = [buttonTrayScrollContainerView5 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(OBWelcomeController *)self _safelyAddConstraint:v25 to:array];

  buttonTray6 = [(OBWelcomeController *)self buttonTray];
  buttonLayoutGuide = [buttonTray6 buttonLayoutGuide];
  bottomAnchor3 = [buttonLayoutGuide bottomAnchor];
  buttonTrayScrollContainerView6 = [(OBWelcomeController *)self buttonTrayScrollContainerView];
  bottomAnchor4 = [buttonTrayScrollContainerView6 bottomAnchor];
  v31 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [(OBWelcomeController *)self _safelyAddConstraint:v31 to:array];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)_floatButtonTray
{
  buttonTray = [(OBWelcomeController *)self buttonTray];
  [buttonTray setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(OBWelcomeController *)self view];
  buttonTray2 = [(OBWelcomeController *)self buttonTray];
  [view addSubview:buttonTray2];

  view2 = [(OBWelcomeController *)self view];
  bottomAnchor = [view2 bottomAnchor];

  if ([(OBWelcomeController *)self shouldAdjustButtonTrayForKeyboard]&& ([(OBWelcomeController *)self keyboardFrame], v40.origin.x = v8, v40.origin.y = v9, v40.size.width = v10, v40.size.height = v11, !CGRectEqualToRect(*MEMORY[0x1E695F058], v40)))
  {
    buttonTray3 = [(OBWelcomeController *)self buttonTray];
    buttonLayoutGuide = [buttonTray3 buttonLayoutGuide];
    bottomAnchor2 = [buttonLayoutGuide bottomAnchor];
    [(OBWelcomeController *)self keyboardFrame];
    v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:CGRectGetHeight(v39)];

    buttonTray4 = [(OBWelcomeController *)self buttonTray];
    buttonLayoutGuide2 = [buttonTray4 buttonLayoutGuide];
    bottomAnchor3 = [buttonLayoutGuide2 bottomAnchor];
  }

  else
  {
    tabBarController = [(OBWelcomeController *)self tabBarController];

    if (tabBarController)
    {
      view3 = [(OBWelcomeController *)self view];
      safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
      bottomAnchor4 = [safeAreaLayoutGuide bottomAnchor];

      bottomAnchor = bottomAnchor4;
    }

    bottomAnchor3 = bottomAnchor;
    buttonTray4 = [(OBWelcomeController *)self buttonTray];
    buttonLayoutGuide2 = [buttonTray4 buttonLayoutGuide];
    bottomAnchor = [buttonLayoutGuide2 bottomAnchor];
    v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor3];
  }

  array = [MEMORY[0x1E695DF70] array];
  buttonTray5 = [(OBWelcomeController *)self buttonTray];
  bottomAnchor5 = [buttonTray5 bottomAnchor];
  v25 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v25 to:array];

  buttonTray6 = [(OBWelcomeController *)self buttonTray];
  leadingAnchor = [buttonTray6 leadingAnchor];
  view4 = [(OBWelcomeController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v30 to:array];

  buttonTray7 = [(OBWelcomeController *)self buttonTray];
  trailingAnchor = [buttonTray7 trailingAnchor];
  view5 = [(OBWelcomeController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  [(OBWelcomeController *)self _safelyAddConstraint:v35 to:array];

  [(OBWelcomeController *)self _safelyAddConstraint:v37 to:array];
  [MEMORY[0x1E696ACD8] activateConstraints:array];
  buttonTrayScrollContainerHeightConstraint = [(OBWelcomeController *)self buttonTrayScrollContainerHeightConstraint];
  [buttonTrayScrollContainerHeightConstraint setActive:1];
}

- (void)_layoutButtonTray
{
  v65[5] = *MEMORY[0x1E69E9840];
  buttonTray = [(OBWelcomeController *)self buttonTray];
  [buttonTray removeFromSuperview];

  if ([(OBWelcomeController *)self shouldInlineButtonTray])
  {
    [(OBWelcomeController *)self _inlineButtonTray];
    _shouldDetachButtonTray = 0;
  }

  else
  {
    [(OBWelcomeController *)self _floatButtonTray];
    _shouldDetachButtonTray = [(OBWelcomeController *)self _shouldDetachButtonTray];
  }

  buttonTray2 = [(OBWelcomeController *)self buttonTray];
  [buttonTray2 setDetached:_shouldDetachButtonTray];

  buttonTray3 = [(OBWelcomeController *)self buttonTray];

  if (buttonTray3)
  {
    v7 = +[OBDevice currentDevice];
    if ([v7 type] == 2 || -[OBWelcomeController _landscapeiPhone](self, "_landscapeiPhone"))
    {
      v8 = +[OBDevice currentDevice];
      view = [(OBWelcomeController *)self view];
      [view bounds];
      v11 = [v8 templateTypeForBoundsWidth:v10];

      if (v11 != 7)
      {
        buttonTray4 = [(OBWelcomeController *)self buttonTray];
        buttonLayoutGuide = [buttonTray4 buttonLayoutGuide];
        widthConstraint = [buttonLayoutGuide widthConstraint];

        if (!widthConstraint)
        {
          buttonTray5 = [(OBWelcomeController *)self buttonTray];
          buttonLayoutGuide2 = [buttonTray5 buttonLayoutGuide];
          widthAnchor = [buttonLayoutGuide2 widthAnchor];
          v28 = [widthAnchor constraintEqualToConstant:360.0];
          buttonTray6 = [(OBWelcomeController *)self buttonTray];
          buttonLayoutGuide3 = [buttonTray6 buttonLayoutGuide];
          [buttonLayoutGuide3 setWidthConstraint:v28];

          buttonTray7 = [(OBWelcomeController *)self buttonTray];
          buttonLayoutGuide4 = [buttonTray7 buttonLayoutGuide];
          widthConstraint2 = [buttonLayoutGuide4 widthConstraint];
          LODWORD(v34) = 1144750080;
          [widthConstraint2 setPriority:v34];
        }

        buttonTray8 = [(OBWelcomeController *)self buttonTray];
        buttonLayoutGuide5 = [buttonTray8 buttonLayoutGuide];
        widthAnchor2 = [buttonLayoutGuide5 widthAnchor];
        v54 = [widthAnchor2 constraintLessThanOrEqualToConstant:360.0];

        v55 = MEMORY[0x1E696ACD8];
        buttonTray9 = [(OBWelcomeController *)self buttonTray];
        buttonLayoutGuide6 = [buttonTray9 buttonLayoutGuide];
        widthConstraint3 = [buttonLayoutGuide6 widthConstraint];
        v65[0] = widthConstraint3;
        v65[1] = v54;
        buttonTray10 = [(OBWelcomeController *)self buttonTray];
        buttonLayoutGuide7 = [buttonTray10 buttonLayoutGuide];
        leadingAnchor = [buttonLayoutGuide7 leadingAnchor];
        view2 = [(OBWelcomeController *)self view];
        leadingAnchor2 = [view2 leadingAnchor];
        [(OBBaseWelcomeController *)self directionalLayoutMargins];
        v62 = leadingAnchor;
        buttonLayoutGuide11 = leadingAnchor2;
        v59 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:v40];
        v65[2] = v59;
        buttonTray11 = [(OBWelcomeController *)self buttonTray];
        buttonLayoutGuide8 = [buttonTray11 buttonLayoutGuide];
        trailingAnchor = [buttonLayoutGuide8 trailingAnchor];
        view3 = [(OBWelcomeController *)self view];
        trailingAnchor2 = [view3 trailingAnchor];
        [(OBBaseWelcomeController *)self directionalLayoutMargins];
        v50 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-v41];
        v65[3] = v50;
        buttonTray12 = [(OBWelcomeController *)self buttonTray];
        buttonLayoutGuide9 = [buttonTray12 buttonLayoutGuide];
        centerXAnchor = [buttonLayoutGuide9 centerXAnchor];
        view4 = [(OBWelcomeController *)self view];
        centerXAnchor2 = [view4 centerXAnchor];
        v46 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v65[4] = v46;
        v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:5];
        [v55 activateConstraints:v47];

        leadingAnchor3 = buttonLayoutGuide6;
        buttonLayoutGuide10 = buttonTray9;

        view5 = widthConstraint3;
        buttonTray13 = v54;

        layoutMarginsGuide = buttonTray10;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v15 = MEMORY[0x1E696ACD8];
    buttonTray13 = [(OBWelcomeController *)self buttonTray];
    buttonLayoutGuide10 = [buttonTray13 buttonLayoutGuide];
    leadingAnchor3 = [buttonLayoutGuide10 leadingAnchor];
    view5 = [(OBWelcomeController *)self view];
    layoutMarginsGuide = [view5 layoutMarginsGuide];
    buttonLayoutGuide7 = [layoutMarginsGuide leadingAnchor];
    v62 = [leadingAnchor3 constraintEqualToAnchor:?];
    v64[0] = v62;
    view2 = [(OBWelcomeController *)self buttonTray];
    buttonLayoutGuide11 = [view2 buttonLayoutGuide];
    trailingAnchor3 = [buttonLayoutGuide11 trailingAnchor];
    buttonTray11 = [(OBWelcomeController *)self view];
    buttonLayoutGuide8 = [buttonTray11 layoutMarginsGuide];
    trailingAnchor = [buttonLayoutGuide8 trailingAnchor];
    v59 = trailingAnchor3;
    view3 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor];
    v64[1] = view3;
    trailingAnchor2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    [v15 activateConstraints:trailingAnchor2];
LABEL_14:

    [(OBWelcomeController *)self _updateScrollViewInsets];
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (BOOL)_buttonTrayInlined
{
  selfCopy = self;
  buttonTray = [(OBWelcomeController *)self buttonTray];
  superview = [buttonTray superview];
  buttonTrayScrollContainerView = [(OBWelcomeController *)selfCopy buttonTrayScrollContainerView];
  LOBYTE(selfCopy) = superview == buttonTrayScrollContainerView;

  return selfCopy;
}

- (void)_inlineButtonTrayIfNeeded
{
  shouldInlineButtonTray = [(OBWelcomeController *)self shouldInlineButtonTray];
  if (shouldInlineButtonTray != [(OBWelcomeController *)self _buttonTrayInlined])
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

- (void)_enableTrayButtonsForScrollToBottom:(id)bottom
{
  _buttonTrayInlined = [(OBWelcomeController *)self _buttonTrayInlined];
  scrollView = [(OBWelcomeController *)self scrollView];
  [scrollView contentOffset];
  v7 = v6;
  scrollView2 = [(OBWelcomeController *)self scrollView];
  [scrollView2 frame];
  v10 = v9 + v7;

  scrollView3 = [(OBWelcomeController *)self scrollView];
  [scrollView3 contentSize];
  v13 = v10 >= v12 - 1;

  if (!_buttonTrayInlined)
  {
    v13 = ![(OBWelcomeController *)self _scrollViewContentIsUnderTray];
  }

  if ([(OBWelcomeController *)self disableButtonsUntilAllContentWasVisable]&& v13)
  {
    buttonTray = [(OBWelcomeController *)self buttonTray];
    buttons = [buttonTray buttons];
    [buttons enumerateObjectsUsingBlock:&__block_literal_global_100];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

  v12 = *MEMORY[0x1E69DE080];
  presentingViewController = [(OBWelcomeController *)self presentingViewController];
  if (presentingViewController)
  {
    presentingViewController2 = [(OBWelcomeController *)self presentingViewController];
    presentedViewController = [presentingViewController2 presentedViewController];
    v7 = [presentedViewController modalPresentationStyle] != 2;
  }

  else
  {
    v7 = 1;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && !v7)
  {
    v10 = *MEMORY[0x1E69DDF78];

    v12 = v10;
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleKeyboardPresentation_ name:v12 object:0];
}

- (void)_unregisterForKeyboardNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE078] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DE080] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];
}

- (void)_keyboardWillHide:(id)hide
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

- (void)_handleKeyboardPresentation:(id)presentation
{
  userInfo = [presentation userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v13 != 0.0 && v11 != 0.0)
  {
    view = [(OBWelcomeController *)self view];
    [view convertRect:0 fromView:{v7, v9, v11, v13}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    view2 = [(OBWelcomeController *)self view];
    [view2 frame];
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

- (void)setTemplateType:(unint64_t)type
{
  headerView = [(OBWelcomeController *)self headerView];
  [headerView setTemplateType:type];

  bulletedList = [(OBWelcomeController *)self bulletedList];
  [bulletedList setTemplateType:type];

  self->_templateType = type;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(OBWelcomeController *)self _updateButtonTrayBackdrop];
  [(OBWelcomeController *)self updateNavigationBarAnimated:1];
  [(OBWelcomeController *)self _enableTrayButtonsForScrollToBottom:scrollCopy];
}

- (void)restoreNavigationBarAppearance
{
  retainedNavigationController = [(OBWelcomeController *)self retainedNavigationController];
  transitionCoordinator = [(OBWelcomeController *)self transitionCoordinator];
  v5 = transitionCoordinator;
  if (transitionCoordinator)
  {
    cachedBarState2 = [transitionCoordinator viewControllerForKey:*MEMORY[0x1E69DE778]];
    if ([cachedBarState2 conformsToProtocol:&unk_1F2D0F560])
    {
      v7 = cachedBarState2;
      cachedBarState = [(OBWelcomeController *)self cachedBarState];
      [v7 setCurrentNavigationBarDisplayState:cachedBarState];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__OBWelcomeController_restoreNavigationBarAppearance__block_invoke;
    v13[3] = &unk_1E7C158A0;
    v13[4] = self;
    v14 = retainedNavigationController;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__OBWelcomeController_restoreNavigationBarAppearance__block_invoke_2;
    v10[3] = &unk_1E7C158A0;
    v11 = v14;
    selfCopy = self;
    [v5 animateAlongsideTransition:v13 completion:v10];
  }

  else
  {
    cachedBarState2 = [(OBWelcomeController *)self cachedBarState];
    navigationBar = [retainedNavigationController navigationBar];
    [cachedBarState2 applyState:navigationBar];
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

- (void)_scrollViewDidLayoutSubviews:(id)subviews
{
  _buttonTrayInlined = [(OBWelcomeController *)self _buttonTrayInlined];
  [(OBWelcomeController *)self _inlineButtonTrayIfNeeded];
  [(OBWelcomeController *)self _updateButtonTrayBackdrop];
  if (_buttonTrayInlined != [(OBWelcomeController *)self _buttonTrayInlined])
  {
    scrollView = [(OBWelcomeController *)self scrollView];
    [scrollView setNeedsLayout];

    scrollView2 = [(OBWelcomeController *)self scrollView];
    [scrollView2 layoutIfNeeded];
  }

  scrollView3 = [(OBWelcomeController *)self scrollView];
  [(OBWelcomeController *)self _enableTrayButtonsForScrollToBottom:scrollView3];
}

- (BOOL)_landscapeiPhone
{
  v3 = +[OBDevice currentDevice];
  if ([v3 type] == 1)
  {
    view = [(OBWelcomeController *)self view];
    v5 = ([OBViewUtilities activeInterfaceOrientationForView:view]- 3) < 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_usesAboveHeaderFullWidthLayout
{
  contentViewLayout = [(OBWelcomeController *)self contentViewLayout];
  if (contentViewLayout != 1)
  {
    LOBYTE(contentViewLayout) = [(OBWelcomeController *)self contentViewLayout]== 5;
  }

  return contentViewLayout;
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