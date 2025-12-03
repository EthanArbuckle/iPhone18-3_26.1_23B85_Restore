@interface HKTitledBuddyViewController
+ (id)embedView:(id)view inContainerViewWithMinimumEdgeInsets:(UIEdgeInsets)insets;
- (HKTitledBuddyViewController)init;
- (id)_createHeaderView;
- (void)_anchoredButtonTapped:(id)tapped;
- (void)_createAnchoredButtons;
- (void)_updateForCurrentSizeCategory;
- (void)reloadViews;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HKTitledBuddyViewController

- (HKTitledBuddyViewController)init
{
  v3.receiver = self;
  v3.super_class = HKTitledBuddyViewController;
  return [(HKTitledBuddyViewController *)&v3 initWithNibName:0 bundle:0];
}

- (void)viewDidLoad
{
  v46[1] = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = HKTitledBuddyViewController;
  [(HKTitledBuddyViewController *)&v45 viewDidLoad];
  view = [(HKTitledBuddyViewController *)self view];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [view setBackgroundColor:secondarySystemBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  loadingIndicator = self->_loadingIndicator;
  self->_loadingIndicator = v5;

  [(UIActivityIndicatorView *)self->_loadingIndicator setHidesWhenStopped:1];
  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_loadingIndicator];
  loadingIndicatorBarButtonItem = self->_loadingIndicatorBarButtonItem;
  self->_loadingIndicatorBarButtonItem = v7;

  [(UIBarButtonItem *)self->_loadingIndicatorBarButtonItem setHidden:1];
  navigationItem = [(HKTitledBuddyViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:self->_loadingIndicatorBarButtonItem];

  v10 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  containerStackView = self->_containerStackView;
  self->_containerStackView = v10;

  v12 = self->_containerStackView;
  view2 = [(HKTitledBuddyViewController *)self view];
  [view2 bounds];
  [(UIStackView *)v12 setFrame:?];

  [(UIStackView *)self->_containerStackView setAutoresizingMask:18];
  [(UIStackView *)self->_containerStackView setAxis:1];
  [(UIStackView *)self->_bodyStackView setAlignment:3];
  view3 = [(HKTitledBuddyViewController *)self view];
  [view3 addSubview:self->_containerStackView];

  v15 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v15;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_containerStackView addArrangedSubview:self->_scrollView];
  _createHeaderView = [(HKTitledBuddyViewController *)self _createHeaderView];
  v46[0] = _createHeaderView;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  v19 = [v18 mutableCopy];

  subsequentViews = [(HKTitledBuddyViewController *)self subsequentViews];
  [v19 addObjectsFromArray:subsequentViews];

  v21 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v19];
  bodyStackView = self->_bodyStackView;
  self->_bodyStackView = v21;

  [(UIStackView *)self->_bodyStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_bodyStackView setAxis:1];
  [(UIStackView *)self->_bodyStackView setAlignment:3];
  [(UIScrollView *)self->_scrollView addSubview:self->_bodyStackView];
  bottomAnchoredButtons = [(HKTitledBuddyViewController *)self bottomAnchoredButtons];
  v24 = [bottomAnchoredButtons count];

  if (v24)
  {
    v25 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v26 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v25];
    anchoredButtonContainerView = self->_anchoredButtonContainerView;
    self->_anchoredButtonContainerView = v26;

    [(UIVisualEffectView *)self->_anchoredButtonContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    view4 = [(HKTitledBuddyViewController *)self view];
    [view4 addSubview:self->_anchoredButtonContainerView];

    [(HKTitledBuddyViewController *)self _createAnchoredButtons];
    bottomAnchor = [(UIVisualEffectView *)self->_anchoredButtonContainerView bottomAnchor];
    view5 = [(HKTitledBuddyViewController *)self view];
    bottomAnchor2 = [view5 bottomAnchor];
    v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v32 setActive:1];

    leadingAnchor = [(UIVisualEffectView *)self->_anchoredButtonContainerView leadingAnchor];
    view6 = [(HKTitledBuddyViewController *)self view];
    leadingAnchor2 = [view6 leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v36 setActive:1];

    trailingAnchor = [(UIVisualEffectView *)self->_anchoredButtonContainerView trailingAnchor];
    view7 = [(HKTitledBuddyViewController *)self view];
    trailingAnchor2 = [view7 trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v40 setActive:1];
  }

  v41 = _NSDictionaryOfVariableBindings(&cfstr_ScrollviewBody.isa, self->_scrollView, self->_bodyStackView, 0);
  v42 = [(UIScrollView *)self->_scrollView hk_addConstraintsWithFormat:@"H:|[_bodyStackView]|" options:0 views:v41];
  v43 = [(UIScrollView *)self->_scrollView hk_addConstraintsWithFormat:@"V:|[_bodyStackView]|" options:0 views:v41];
  v44 = [(UIScrollView *)self->_scrollView hk_addEqualsConstraintWithItem:self->_bodyStackView attribute:9 relatedTo:self->_scrollView constant:0.0];
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = HKTitledBuddyViewController;
  [(HKTitledBuddyViewController *)&v15 viewDidLayoutSubviews];
  [(UIScrollView *)self->_scrollView contentSize];
  v4 = v3;
  [(UIStackView *)self->_bodyStackView bounds];
  if (v4 < CGRectGetHeight(v16))
  {
    scrollView = self->_scrollView;
    [(UIStackView *)self->_bodyStackView bounds];
    [(UIScrollView *)scrollView setContentSize:v6, v7];
  }

  if (self->_anchoredButtonContainerView)
  {
    [(UIScrollView *)self->_scrollView contentInset];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UIVisualEffectView *)self->_anchoredButtonContainerView frame];
    Height = CGRectGetHeight(v17);
    [(UIScrollView *)self->_scrollView setContentInset:v9, v11, Height, v13];
    [(UIScrollView *)self->_scrollView setScrollIndicatorInsets:v9, v11, Height, v13];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = HKTitledBuddyViewController;
  [(HKTitledBuddyViewController *)&v10 viewWillAppear:appear];
  if ([(HKTitledBuddyViewController *)self shouldCustomizeNavigationBar])
  {
    navigationController = [(HKTitledBuddyViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar _setHidesShadow:1];

    navigationController2 = [(HKTitledBuddyViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [navigationBar2 setBarTintColor:systemBackgroundColor];

    navigationController3 = [(HKTitledBuddyViewController *)self navigationController];
    [navigationController3 setNavigationBarHidden:{-[HKTitledBuddyViewController shouldHideNavigationBar](self, "shouldHideNavigationBar")}];
  }
}

- (void)reloadViews
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  arrangedSubviews = [(UIStackView *)self->_bodyStackView arrangedSubviews];
  v4 = [arrangedSubviews countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        [(UIStackView *)self->_bodyStackView removeArrangedSubview:v8];
        [v8 removeFromSuperview];
      }

      v5 = [arrangedSubviews countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  _createHeaderView = [(HKTitledBuddyViewController *)self _createHeaderView];
  v27 = _createHeaderView;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v11 = [v10 mutableCopy];

  subsequentViews = [(HKTitledBuddyViewController *)self subsequentViews];
  [v11 addObjectsFromArray:subsequentViews];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(UIStackView *)self->_bodyStackView addArrangedSubview:*(*(&v18 + 1) + 8 * j), v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (id)_createHeaderView
{
  titleImage = [(HKTitledBuddyViewController *)self titleImage];
  [(HKTitledBuddyViewController *)self shouldHideNavigationBar];
  view = [(HKTitledBuddyViewController *)self view];
  [view frame];
  CGRectGetHeight(v22);
  view2 = [(HKTitledBuddyViewController *)self view];
  UIRoundToViewScale();
  v7 = v6;

  v8 = [HKTitledLogoBuddyHeaderView alloc];
  linkButtonTitle = [(HKTitledBuddyViewController *)self linkButtonTitle];
  v10 = [(HKTitledLogoBuddyHeaderView *)v8 initWithTopInset:linkButtonTitle linkButtonTitle:v7];
  header = self->_header;
  self->_header = v10;

  [(HKTitledBuddyHeaderView *)self->_header setDelegate:self];
  widthAnchor = [(HKTitledLogoBuddyHeaderView *)self->_header widthAnchor];
  view3 = [(HKTitledBuddyViewController *)self view];
  [view3 frame];
  v14 = [widthAnchor constraintEqualToConstant:CGRectGetWidth(v23)];
  [v14 setActive:1];

  v15 = self->_header;
  titleString = [(HKTitledBuddyViewController *)self titleString];
  [(HKTitledBuddyHeaderView *)v15 setTitleText:titleString];

  v17 = self->_header;
  bodyString = [(HKTitledBuddyViewController *)self bodyString];
  [(HKTitledBuddyHeaderView *)v17 setBodyText:bodyString alignment:[(HKTitledBuddyViewController *)self bodyTextAlignment]];

  [(HKTitledLogoBuddyHeaderView *)self->_header setLogoImage:titleImage];
  v19 = self->_header;
  v20 = v19;

  return v19;
}

- (void)_createAnchoredButtons
{
  array = [MEMORY[0x1E695DF70] array];
  bottomAnchoredButtons = [(HKTitledBuddyViewController *)self bottomAnchoredButtons];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __53__HKTitledBuddyViewController__createAnchoredButtons__block_invoke;
  v47[3] = &unk_1E81BA120;
  v47[4] = self;
  v5 = array;
  v48 = v5;
  v46 = bottomAnchoredButtons;
  [bottomAnchoredButtons enumerateObjectsUsingBlock:v47];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSArray *)v5 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [(NSArray *)v5 objectAtIndexedSubscript:v7];
      contentView = [(UIVisualEffectView *)self->_anchoredButtonContainerView contentView];
      [contentView addSubview:v8];

      centerXAnchor = [v8 centerXAnchor];
      centerXAnchor2 = [(UIVisualEffectView *)self->_anchoredButtonContainerView centerXAnchor];
      v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v12 setActive:1];

      v13 = HKHealthUIBuddyDirectionalEdgeInsets();
      v15 = v14;
      v17 = v16;
      leadingAnchor = [v8 leadingAnchor];
      superview = [v8 superview];
      leadingAnchor2 = [superview leadingAnchor];
      v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v15];
      [v21 setActive:1];

      trailingAnchor = [v8 trailingAnchor];
      superview2 = [v8 superview];
      trailingAnchor2 = [superview2 trailingAnchor];
      v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v17];
      [v25 setActive:1];

      if (v7)
      {
        break;
      }

      topAnchor = [v8 topAnchor];
      topAnchor2 = [(UIVisualEffectView *)self->_anchoredButtonContainerView topAnchor];
      v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:32.0];
      [v35 setActive:1];

      if ([(NSArray *)v5 count]== 1)
      {
        bottomAnchor = [v8 bottomAnchor];
        bottomAnchor2 = [(UIVisualEffectView *)self->_anchoredButtonContainerView bottomAnchor];
        lastBaselineAnchor = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-44.0];
        [lastBaselineAnchor setActive:1];
        goto LABEL_14;
      }

LABEL_16:

      if (++v7 >= [(NSArray *)v5 count])
      {
        goto LABEL_17;
      }
    }

    titleLabel = [v8 titleLabel];
    font = [titleLabel font];
    [font _bodyLeading];
    v29 = v28;

    bottomAnchor = [(NSArray *)v5 objectAtIndexedSubscript:v7 - 1];
    firstObject = [(NSArray *)v5 firstObject];

    if (v29 >= 42.0)
    {
      v32 = -v29;
    }

    else
    {
      v32 = -42.0;
    }

    if (bottomAnchor == firstObject)
    {
      [bottomAnchor bottomAnchor];
    }

    else
    {
      [bottomAnchor lastBaselineAnchor];
    }
    v38 = ;
    firstBaselineAnchor = [v8 firstBaselineAnchor];
    bottomAnchor2 = [v38 constraintEqualToAnchor:firstBaselineAnchor constant:v32];

    [bottomAnchor2 setActive:1];
    [(NSArray *)v6 addObject:bottomAnchor2];
    if (v7 == [(NSArray *)v5 count]- 1)
    {
      lastBaselineAnchor = [v8 lastBaselineAnchor];
      bottomAnchor3 = [(UIVisualEffectView *)self->_anchoredButtonContainerView bottomAnchor];
      v41 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor3 constant:-44.0];
      [v41 setActive:1];

LABEL_14:
    }

    goto LABEL_16;
  }

LABEL_17:
  buttonStackConstraints = self->_buttonStackConstraints;
  self->_buttonStackConstraints = v6;
  v43 = v6;

  buttons = self->_buttons;
  self->_buttons = v5;
  v45 = v5;
}

void __53__HKTitledBuddyViewController__createAnchoredButtons__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69DC738];
  v6 = a2;
  v7 = HKHealthKeyColor();
  v8 = *(a1 + 32);
  if (a3)
  {
    [v5 hk_buttonTintedWithColor:v7 title:v6 target:v8 action:sel__anchoredButtonTapped_];
  }

  else
  {
    [v5 hk_multiLineRoundRectButtonTintedWithColor:v7 title:v6 target:v8 action:sel__anchoredButtonTapped_];
  }
  v9 = ;

  [v9 setTag:a3];
  [*(a1 + 40) addObject:v9];
}

- (void)_anchoredButtonTapped:(id)tapped
{
  v4 = [tapped tag];

  [(HKTitledBuddyViewController *)self buttonAtIndexTapped:v4];
}

- (void)_updateForCurrentSizeCategory
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_buttonStackConstraints;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        firstObject = [(NSArray *)self->_buttons firstObject];
        titleLabel = [firstObject titleLabel];
        font = [titleLabel font];
        [font _bodyLeading];
        v13 = v12;

        v14 = -v13;
        if (v13 < 42.0)
        {
          v14 = -42.0;
        }

        [v8 setConstant:v14];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = HKTitledBuddyViewController;
  [(HKTitledBuddyViewController *)&v10 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKTitledBuddyViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__HKTitledBuddyViewController_traitCollectionDidChange___block_invoke;
      block[3] = &unk_1E81B55A8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

+ (id)embedView:(id)view inContainerViewWithMinimumEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v21[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:viewCopy];
  v10 = _NSDictionaryOfVariableBindings(&cfstr_View_0.isa, viewCopy, 0);
  v20[0] = @"topInset";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:top];
  v21[0] = v11;
  v20[1] = @"leftInset";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:left];
  v21[1] = v12;
  v20[2] = @"bottomInset";
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:bottom];
  v21[2] = v13;
  v20[3] = @"rightInset";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:right];
  v21[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v16 = [v9 hk_addConstraintsWithFormat:@"V:|-(>=topInset)-[view]-(>=bottomInset)-|" options:0 metrics:v15 views:v10];
  v17 = [v9 hk_addConstraintsWithFormat:@"H:|-(>=leftInset)-[view]-(>=rightInset)-|" options:0 metrics:v15 views:v10];
  v18 = [v9 hk_addEqualsConstraintWithItem:viewCopy attribute:9 relatedTo:v9 constant:0.0];

  return v9;
}

@end