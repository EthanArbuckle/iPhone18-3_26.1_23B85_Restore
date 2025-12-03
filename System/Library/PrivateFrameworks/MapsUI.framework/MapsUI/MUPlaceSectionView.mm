@interface MUPlaceSectionView
+ (id)insetButtonSectionViewforContentView:(id)view;
+ (id)insetPlatterSectionViewForContentView:(id)view sectionHeaderViewModel:(id)model sectionFooterViewModel:(id)viewModel;
+ (id)insetTextSectionViewForContentView:(id)view sectionHeaderViewModel:(id)model sectionFooterViewModel:(id)viewModel;
- (MUPlaceSectionView)initWithStyle:(int64_t)style alwaysHideSeparators:(BOOL)separators sectionHeaderViewModel:(id)model sectionFooterViewModel:(id)viewModel;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateForContentSizeChange;
- (void)attachViewToContentView:(id)view;
- (void)configureWithSectionController:(id)controller;
- (void)setApplyVerticalSpacingBetweenHeaderAndContent:(BOOL)content;
- (void)setHeaderAXIdentifierWithBaseString:(id)string;
@end

@implementation MUPlaceSectionView

- (void)setApplyVerticalSpacingBetweenHeaderAndContent:(BOOL)content
{
  self->_applyVerticalSpacingBetweenHeaderAndContent = content;
  v3 = 0.0;
  if (content)
  {
    v3 = -10.0;
  }

  [(NSLayoutConstraint *)self->_headerContentSpacingConstraint setConstant:v3];
}

- (void)setHeaderAXIdentifierWithBaseString:(id)string
{
  v4 = [string stringByAppendingString:@"Header"];
  [(MUPlaceSectionHeaderView *)self->_headerView setAccessibilityIdentifier:v4];
}

- (void)_updateForContentSizeChange
{
  attributedText = [(MUPlaceSectionFooterViewModel *)self->_footerViewModel attributedText];
  [(MULinkView *)self->_footerView setAttributedText:attributedText];
}

- (void)attachViewToContentView:(id)view
{
  v22[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPlaceSectionView *)self addSubview:viewCopy];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [viewCopy setAccessibilityIdentifier:v6];

  v18 = MEMORY[0x1E696ACD8];
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v22[0] = v19;
  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v22[1] = v9;
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v22[2] = v12;
  bottomAnchor = [viewCopy bottomAnchor];

  bottomAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v22[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v18 activateConstraints:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_setupConstraints
{
  v55[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  MKPlaceHorizontalPlatterMargin();
  style = self->_style;
  if (style == 2)
  {
    v6 = v4;
  }

  else if (style == 1)
  {
    v6 = 20.0;
  }

  else
  {
    v6 = 0.0;
  }

  if (self->_headerViewModel)
  {
    if ([(MUPlaceSectionView *)self applyVerticalSpacingBetweenHeaderAndContent])
    {
      v7 = -10.0;
    }

    else
    {
      v7 = 0.0;
    }

    v49 = v3;
    bottomAnchor = [(MUPlaceSectionHeaderView *)self->_headerView bottomAnchor];
    topAnchor = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:v7];
    headerContentSpacingConstraint = self->_headerContentSpacingConstraint;
    self->_headerContentSpacingConstraint = v10;

    leadingAnchor = [(MUPlaceSectionHeaderView *)self->_headerView leadingAnchor];
    leadingAnchor2 = [(MUPlaceSectionView *)self leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v55[0] = v45;
    topAnchor2 = [(MUPlaceSectionHeaderView *)self->_headerView topAnchor];
    topAnchor3 = [(MUPlaceSectionView *)self topAnchor];
    v15 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v55[1] = v15;
    trailingAnchor = [(MUPlaceSectionHeaderView *)self->_headerView trailingAnchor];
    trailingAnchor2 = [(MUPlaceSectionView *)self trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v19 = self->_headerContentSpacingConstraint;
    v55[2] = v18;
    v55[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
    [v49 addObjectsFromArray:v20];

    v3 = v49;
  }

  else
  {
    topAnchor4 = [(MUPlaceSectionView *)self topAnchor];
    topAnchor5 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v23 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    [v3 addObject:v23];
  }

  leadingAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
  leadingAnchor4 = [(MUPlaceSectionView *)self leadingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v6];
  v54[0] = v26;
  trailingAnchor3 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
  trailingAnchor4 = [(MUPlaceSectionView *)self trailingAnchor];
  v29 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v6];
  v54[1] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  [v3 addObjectsFromArray:v30];

  footerView = self->_footerView;
  bottomAnchor2 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  if (footerView)
  {
    topAnchor6 = [(MULinkView *)self->_footerView topAnchor];
    v48 = [bottomAnchor2 constraintEqualToAnchor:topAnchor6 constant:-0.0];
    v52[0] = v48;
    leadingAnchor5 = [(MULinkView *)self->_footerView leadingAnchor];
    leadingAnchor6 = [(MUPlaceSectionView *)self leadingAnchor];
    v46 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:20.0];
    v52[1] = v46;
    [(MULinkView *)self->_footerView trailingAnchor];
    v35 = v34 = v3;
    trailingAnchor5 = [(MUPlaceSectionView *)self trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:trailingAnchor5 constant:-20.0];
    v52[2] = v37;
    bottomAnchor3 = [(MULinkView *)self->_footerView bottomAnchor];
    bottomAnchor4 = [(MUPlaceSectionView *)self bottomAnchor];
    v40 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v52[3] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
    [v34 addObjectsFromArray:v41];

    v42 = v48;
    bottomAnchor5 = topAnchor6;

    v3 = v34;
  }

  else
  {
    bottomAnchor5 = [(MUPlaceSectionView *)self bottomAnchor];
    v42 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor5];
    v53 = v42;
    leadingAnchor5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    [v3 addObjectsFromArray:leadingAnchor5];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v3];
  v44 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  if (self->_headerViewModel)
  {
    v3 = [[MUPlaceSectionHeaderView alloc] initWithViewModel:self->_headerViewModel];
    headerView = self->_headerView;
    self->_headerView = v3;

    [(MUPlaceSectionHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUPlaceSectionView *)self addSubview:self->_headerView];
  }

  v5 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  contentLayoutGuide = self->_contentLayoutGuide;
  self->_contentLayoutGuide = v5;

  [(MUPlaceSectionView *)self addLayoutGuide:self->_contentLayoutGuide];
  if (self->_footerViewModel)
  {
    v7 = [[MULinkView alloc] initWithLabelColor:0 linkColor:0];
    footerView = self->_footerView;
    self->_footerView = v7;

    [(MULinkView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    style = self->_style;
    if (style)
    {
      if (style == 2)
      {
        v10 = 6.0;
      }

      else
      {
        if (style != 1)
        {
LABEL_11:
          attributedText = [(MUPlaceSectionFooterViewModel *)self->_footerViewModel attributedText];
          [(MULinkView *)self->_footerView setAttributedText:attributedText];

          actionBlock = [(MUPlaceSectionFooterViewModel *)self->_footerViewModel actionBlock];

          if (actionBlock)
          {
            objc_initWeak(&location, self);
            v13 = self->_footerView;
            v14 = MEMORY[0x1E69E9820];
            v15 = 3221225472;
            v16 = __36__MUPlaceSectionView__setupSubviews__block_invoke;
            v17 = &unk_1E821BAA0;
            objc_copyWeak(&v18, &location);
            [(MULinkView *)v13 setSelectionBlock:&v14];
            objc_destroyWeak(&v18);
            objc_destroyWeak(&location);
          }

          [(MUPlaceSectionView *)self addSubview:self->_footerView, v14, v15, v16, v17];
          return;
        }

        v10 = 2.0;
      }
    }

    else
    {
      v10 = 0.0;
    }

    [(MULinkView *)self->_footerView setDirectionalLayoutMargins:v10, 0.0, 0.0, 0.0];
    goto LABEL_11;
  }
}

void __36__MUPlaceSectionView__setupSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[57] actionBlock];
    v2[2]();

    WeakRetained = v3;
  }
}

- (MUPlaceSectionView)initWithStyle:(int64_t)style alwaysHideSeparators:(BOOL)separators sectionHeaderViewModel:(id)model sectionFooterViewModel:(id)viewModel
{
  v20[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  viewModelCopy = viewModel;
  v19.receiver = self;
  v19.super_class = MUPlaceSectionView;
  v12 = [(MUPlaceSectionView *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = v12;
  if (v12)
  {
    v12->_applyVerticalSpacingBetweenHeaderAndContent = 1;
    objc_storeStrong(&v12->_headerViewModel, model);
    objc_storeStrong(&v13->_footerViewModel, viewModel);
    v13->_style = style;
    [(MUPlaceSectionView *)v13 _setupSubviews];
    [(MUPlaceSectionView *)v13 _setupConstraints];
    v14 = objc_opt_self();
    v20[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v16 = [(MUPlaceSectionView *)v13 registerForTraitChanges:v15 withTarget:v13 action:sel__updateForContentSizeChange];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)configureWithSectionController:(id)controller
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 stringByReplacingOccurrencesOfString:@"Controller" withString:&stru_1F44CA030];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"MU" withString:&stru_1F44CA030];

  [(MUPlaceSectionView *)self setAccessibilityIdentifier:v7];
  if (self->_headerViewModel)
  {
    [(MUPlaceSectionView *)self setHeaderAXIdentifierWithBaseString:v7];
  }
}

+ (id)insetButtonSectionViewforContentView:(id)view
{
  viewCopy = view;
  v4 = [[MUPlaceSectionView alloc] initWithStyle:2 sectionHeaderViewModel:0 sectionFooterViewModel:0];
  [(MUPlaceSectionView *)v4 attachViewToContentView:viewCopy];

  return v4;
}

+ (id)insetPlatterSectionViewForContentView:(id)view sectionHeaderViewModel:(id)model sectionFooterViewModel:(id)viewModel
{
  viewModelCopy = viewModel;
  modelCopy = model;
  viewCopy = view;
  v10 = [[MUPlaceSectionView alloc] initWithStyle:2 sectionHeaderViewModel:modelCopy sectionFooterViewModel:viewModelCopy];

  v11 = [[MUPlatterView alloc] initWithContentView:viewCopy];
  [(MUPlaceSectionView *)v10 attachViewToContentView:v11];

  return v10;
}

+ (id)insetTextSectionViewForContentView:(id)view sectionHeaderViewModel:(id)model sectionFooterViewModel:(id)viewModel
{
  viewModelCopy = viewModel;
  modelCopy = model;
  viewCopy = view;
  v10 = [[MUPlaceSectionView alloc] initWithStyle:1 sectionHeaderViewModel:modelCopy sectionFooterViewModel:viewModelCopy];

  [(MUPlaceSectionView *)v10 attachViewToContentView:viewCopy];

  return v10;
}

@end