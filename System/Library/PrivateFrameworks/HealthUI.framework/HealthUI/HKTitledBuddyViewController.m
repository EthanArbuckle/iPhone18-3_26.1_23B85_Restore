@interface HKTitledBuddyViewController
+ (id)embedView:(id)a3 inContainerViewWithMinimumEdgeInsets:(UIEdgeInsets)a4;
- (HKTitledBuddyViewController)init;
- (id)_createHeaderView;
- (void)_anchoredButtonTapped:(id)a3;
- (void)_createAnchoredButtons;
- (void)_updateForCurrentSizeCategory;
- (void)reloadViews;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v3 = [(HKTitledBuddyViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  loadingIndicator = self->_loadingIndicator;
  self->_loadingIndicator = v5;

  [(UIActivityIndicatorView *)self->_loadingIndicator setHidesWhenStopped:1];
  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_loadingIndicator];
  loadingIndicatorBarButtonItem = self->_loadingIndicatorBarButtonItem;
  self->_loadingIndicatorBarButtonItem = v7;

  [(UIBarButtonItem *)self->_loadingIndicatorBarButtonItem setHidden:1];
  v9 = [(HKTitledBuddyViewController *)self navigationItem];
  [v9 setRightBarButtonItem:self->_loadingIndicatorBarButtonItem];

  v10 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  containerStackView = self->_containerStackView;
  self->_containerStackView = v10;

  v12 = self->_containerStackView;
  v13 = [(HKTitledBuddyViewController *)self view];
  [v13 bounds];
  [(UIStackView *)v12 setFrame:?];

  [(UIStackView *)self->_containerStackView setAutoresizingMask:18];
  [(UIStackView *)self->_containerStackView setAxis:1];
  [(UIStackView *)self->_bodyStackView setAlignment:3];
  v14 = [(HKTitledBuddyViewController *)self view];
  [v14 addSubview:self->_containerStackView];

  v15 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v15;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_containerStackView addArrangedSubview:self->_scrollView];
  v17 = [(HKTitledBuddyViewController *)self _createHeaderView];
  v46[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  v19 = [v18 mutableCopy];

  v20 = [(HKTitledBuddyViewController *)self subsequentViews];
  [v19 addObjectsFromArray:v20];

  v21 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v19];
  bodyStackView = self->_bodyStackView;
  self->_bodyStackView = v21;

  [(UIStackView *)self->_bodyStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_bodyStackView setAxis:1];
  [(UIStackView *)self->_bodyStackView setAlignment:3];
  [(UIScrollView *)self->_scrollView addSubview:self->_bodyStackView];
  v23 = [(HKTitledBuddyViewController *)self bottomAnchoredButtons];
  v24 = [v23 count];

  if (v24)
  {
    v25 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v26 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v25];
    anchoredButtonContainerView = self->_anchoredButtonContainerView;
    self->_anchoredButtonContainerView = v26;

    [(UIVisualEffectView *)self->_anchoredButtonContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [(HKTitledBuddyViewController *)self view];
    [v28 addSubview:self->_anchoredButtonContainerView];

    [(HKTitledBuddyViewController *)self _createAnchoredButtons];
    v29 = [(UIVisualEffectView *)self->_anchoredButtonContainerView bottomAnchor];
    v30 = [(HKTitledBuddyViewController *)self view];
    v31 = [v30 bottomAnchor];
    v32 = [v29 constraintEqualToAnchor:v31];
    [v32 setActive:1];

    v33 = [(UIVisualEffectView *)self->_anchoredButtonContainerView leadingAnchor];
    v34 = [(HKTitledBuddyViewController *)self view];
    v35 = [v34 leadingAnchor];
    v36 = [v33 constraintEqualToAnchor:v35];
    [v36 setActive:1];

    v37 = [(UIVisualEffectView *)self->_anchoredButtonContainerView trailingAnchor];
    v38 = [(HKTitledBuddyViewController *)self view];
    v39 = [v38 trailingAnchor];
    v40 = [v37 constraintEqualToAnchor:v39];
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

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = HKTitledBuddyViewController;
  [(HKTitledBuddyViewController *)&v10 viewWillAppear:a3];
  if ([(HKTitledBuddyViewController *)self shouldCustomizeNavigationBar])
  {
    v4 = [(HKTitledBuddyViewController *)self navigationController];
    v5 = [v4 navigationBar];
    [v5 _setHidesShadow:1];

    v6 = [(HKTitledBuddyViewController *)self navigationController];
    v7 = [v6 navigationBar];
    v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v7 setBarTintColor:v8];

    v9 = [(HKTitledBuddyViewController *)self navigationController];
    [v9 setNavigationBarHidden:{-[HKTitledBuddyViewController shouldHideNavigationBar](self, "shouldHideNavigationBar")}];
  }
}

- (void)reloadViews
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [(UIStackView *)self->_bodyStackView arrangedSubviews];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        [(UIStackView *)self->_bodyStackView removeArrangedSubview:v8];
        [v8 removeFromSuperview];
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  v9 = [(HKTitledBuddyViewController *)self _createHeaderView];
  v27 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v11 = [v10 mutableCopy];

  v12 = [(HKTitledBuddyViewController *)self subsequentViews];
  [v11 addObjectsFromArray:v12];

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
  v3 = [(HKTitledBuddyViewController *)self titleImage];
  [(HKTitledBuddyViewController *)self shouldHideNavigationBar];
  v4 = [(HKTitledBuddyViewController *)self view];
  [v4 frame];
  CGRectGetHeight(v22);
  v5 = [(HKTitledBuddyViewController *)self view];
  UIRoundToViewScale();
  v7 = v6;

  v8 = [HKTitledLogoBuddyHeaderView alloc];
  v9 = [(HKTitledBuddyViewController *)self linkButtonTitle];
  v10 = [(HKTitledLogoBuddyHeaderView *)v8 initWithTopInset:v9 linkButtonTitle:v7];
  header = self->_header;
  self->_header = v10;

  [(HKTitledBuddyHeaderView *)self->_header setDelegate:self];
  v12 = [(HKTitledLogoBuddyHeaderView *)self->_header widthAnchor];
  v13 = [(HKTitledBuddyViewController *)self view];
  [v13 frame];
  v14 = [v12 constraintEqualToConstant:CGRectGetWidth(v23)];
  [v14 setActive:1];

  v15 = self->_header;
  v16 = [(HKTitledBuddyViewController *)self titleString];
  [(HKTitledBuddyHeaderView *)v15 setTitleText:v16];

  v17 = self->_header;
  v18 = [(HKTitledBuddyViewController *)self bodyString];
  [(HKTitledBuddyHeaderView *)v17 setBodyText:v18 alignment:[(HKTitledBuddyViewController *)self bodyTextAlignment]];

  [(HKTitledLogoBuddyHeaderView *)self->_header setLogoImage:v3];
  v19 = self->_header;
  v20 = v19;

  return v19;
}

- (void)_createAnchoredButtons
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(HKTitledBuddyViewController *)self bottomAnchoredButtons];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __53__HKTitledBuddyViewController__createAnchoredButtons__block_invoke;
  v47[3] = &unk_1E81BA120;
  v47[4] = self;
  v5 = v3;
  v48 = v5;
  v46 = v4;
  [v4 enumerateObjectsUsingBlock:v47];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSArray *)v5 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [(NSArray *)v5 objectAtIndexedSubscript:v7];
      v9 = [(UIVisualEffectView *)self->_anchoredButtonContainerView contentView];
      [v9 addSubview:v8];

      v10 = [v8 centerXAnchor];
      v11 = [(UIVisualEffectView *)self->_anchoredButtonContainerView centerXAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      [v12 setActive:1];

      v13 = HKHealthUIBuddyDirectionalEdgeInsets();
      v15 = v14;
      v17 = v16;
      v18 = [v8 leadingAnchor];
      v19 = [v8 superview];
      v20 = [v19 leadingAnchor];
      v21 = [v18 constraintEqualToAnchor:v20 constant:v15];
      [v21 setActive:1];

      v22 = [v8 trailingAnchor];
      v23 = [v8 superview];
      v24 = [v23 trailingAnchor];
      v25 = [v22 constraintEqualToAnchor:v24 constant:-v17];
      [v25 setActive:1];

      if (v7)
      {
        break;
      }

      v33 = [v8 topAnchor];
      v34 = [(UIVisualEffectView *)self->_anchoredButtonContainerView topAnchor];
      v35 = [v33 constraintEqualToAnchor:v34 constant:32.0];
      [v35 setActive:1];

      if ([(NSArray *)v5 count]== 1)
      {
        v30 = [v8 bottomAnchor];
        v36 = [(UIVisualEffectView *)self->_anchoredButtonContainerView bottomAnchor];
        v37 = [v30 constraintEqualToAnchor:v36 constant:-44.0];
        [v37 setActive:1];
        goto LABEL_14;
      }

LABEL_16:

      if (++v7 >= [(NSArray *)v5 count])
      {
        goto LABEL_17;
      }
    }

    v26 = [v8 titleLabel];
    v27 = [v26 font];
    [v27 _bodyLeading];
    v29 = v28;

    v30 = [(NSArray *)v5 objectAtIndexedSubscript:v7 - 1];
    v31 = [(NSArray *)v5 firstObject];

    if (v29 >= 42.0)
    {
      v32 = -v29;
    }

    else
    {
      v32 = -42.0;
    }

    if (v30 == v31)
    {
      [v30 bottomAnchor];
    }

    else
    {
      [v30 lastBaselineAnchor];
    }
    v38 = ;
    v39 = [v8 firstBaselineAnchor];
    v36 = [v38 constraintEqualToAnchor:v39 constant:v32];

    [v36 setActive:1];
    [(NSArray *)v6 addObject:v36];
    if (v7 == [(NSArray *)v5 count]- 1)
    {
      v37 = [v8 lastBaselineAnchor];
      v40 = [(UIVisualEffectView *)self->_anchoredButtonContainerView bottomAnchor];
      v41 = [v37 constraintEqualToAnchor:v40 constant:-44.0];
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

- (void)_anchoredButtonTapped:(id)a3
{
  v4 = [a3 tag];

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
        v9 = [(NSArray *)self->_buttons firstObject];
        v10 = [v9 titleLabel];
        v11 = [v10 font];
        [v11 _bodyLeading];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKTitledBuddyViewController;
  [(HKTitledBuddyViewController *)&v10 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKTitledBuddyViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

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

+ (id)embedView:(id)a3 inContainerViewWithMinimumEdgeInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v21[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:v8];
  v10 = _NSDictionaryOfVariableBindings(&cfstr_View_0.isa, v8, 0);
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
  v18 = [v9 hk_addEqualsConstraintWithItem:v8 attribute:9 relatedTo:v9 constant:0.0];

  return v9;
}

@end