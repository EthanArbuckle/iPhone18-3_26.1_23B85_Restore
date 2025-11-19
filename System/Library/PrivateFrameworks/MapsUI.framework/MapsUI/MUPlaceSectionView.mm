@interface MUPlaceSectionView
+ (id)insetButtonSectionViewforContentView:(id)a3;
+ (id)insetPlatterSectionViewForContentView:(id)a3 sectionHeaderViewModel:(id)a4 sectionFooterViewModel:(id)a5;
+ (id)insetTextSectionViewForContentView:(id)a3 sectionHeaderViewModel:(id)a4 sectionFooterViewModel:(id)a5;
- (MUPlaceSectionView)initWithStyle:(int64_t)a3 alwaysHideSeparators:(BOOL)a4 sectionHeaderViewModel:(id)a5 sectionFooterViewModel:(id)a6;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateForContentSizeChange;
- (void)attachViewToContentView:(id)a3;
- (void)configureWithSectionController:(id)a3;
- (void)setApplyVerticalSpacingBetweenHeaderAndContent:(BOOL)a3;
- (void)setHeaderAXIdentifierWithBaseString:(id)a3;
@end

@implementation MUPlaceSectionView

- (void)setApplyVerticalSpacingBetweenHeaderAndContent:(BOOL)a3
{
  self->_applyVerticalSpacingBetweenHeaderAndContent = a3;
  v3 = 0.0;
  if (a3)
  {
    v3 = -10.0;
  }

  [(NSLayoutConstraint *)self->_headerContentSpacingConstraint setConstant:v3];
}

- (void)setHeaderAXIdentifierWithBaseString:(id)a3
{
  v4 = [a3 stringByAppendingString:@"Header"];
  [(MUPlaceSectionHeaderView *)self->_headerView setAccessibilityIdentifier:v4];
}

- (void)_updateForContentSizeChange
{
  v3 = [(MUPlaceSectionFooterViewModel *)self->_footerViewModel attributedText];
  [(MULinkView *)self->_footerView setAttributedText:v3];
}

- (void)attachViewToContentView:(id)a3
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPlaceSectionView *)self addSubview:v4];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setAccessibilityIdentifier:v6];

  v18 = MEMORY[0x1E696ACD8];
  v21 = [v4 leadingAnchor];
  v20 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v22[0] = v19;
  v7 = [v4 trailingAnchor];
  v8 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v22[1] = v9;
  v10 = [v4 topAnchor];
  v11 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v22[2] = v12;
  v13 = [v4 bottomAnchor];

  v14 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
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
    v8 = [(MUPlaceSectionHeaderView *)self->_headerView bottomAnchor];
    v9 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:v7];
    headerContentSpacingConstraint = self->_headerContentSpacingConstraint;
    self->_headerContentSpacingConstraint = v10;

    v12 = [(MUPlaceSectionHeaderView *)self->_headerView leadingAnchor];
    v47 = [(MUPlaceSectionView *)self leadingAnchor];
    v45 = [v12 constraintEqualToAnchor:v47 constant:20.0];
    v55[0] = v45;
    v13 = [(MUPlaceSectionHeaderView *)self->_headerView topAnchor];
    v14 = [(MUPlaceSectionView *)self topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v55[1] = v15;
    v16 = [(MUPlaceSectionHeaderView *)self->_headerView trailingAnchor];
    v17 = [(MUPlaceSectionView *)self trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:-20.0];
    v19 = self->_headerContentSpacingConstraint;
    v55[2] = v18;
    v55[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
    [v49 addObjectsFromArray:v20];

    v3 = v49;
  }

  else
  {
    v21 = [(MUPlaceSectionView *)self topAnchor];
    v22 = [(UILayoutGuide *)self->_contentLayoutGuide topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v3 addObject:v23];
  }

  v24 = [(UILayoutGuide *)self->_contentLayoutGuide leadingAnchor];
  v25 = [(MUPlaceSectionView *)self leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:v6];
  v54[0] = v26;
  v27 = [(UILayoutGuide *)self->_contentLayoutGuide trailingAnchor];
  v28 = [(MUPlaceSectionView *)self trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-v6];
  v54[1] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  [v3 addObjectsFromArray:v30];

  footerView = self->_footerView;
  v32 = [(UILayoutGuide *)self->_contentLayoutGuide bottomAnchor];
  if (footerView)
  {
    v51 = [(MULinkView *)self->_footerView topAnchor];
    v48 = [v32 constraintEqualToAnchor:v51 constant:-0.0];
    v52[0] = v48;
    v33 = [(MULinkView *)self->_footerView leadingAnchor];
    v50 = [(MUPlaceSectionView *)self leadingAnchor];
    v46 = [v33 constraintEqualToAnchor:v50 constant:20.0];
    v52[1] = v46;
    [(MULinkView *)self->_footerView trailingAnchor];
    v35 = v34 = v3;
    v36 = [(MUPlaceSectionView *)self trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:-20.0];
    v52[2] = v37;
    v38 = [(MULinkView *)self->_footerView bottomAnchor];
    v39 = [(MUPlaceSectionView *)self bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v52[3] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
    [v34 addObjectsFromArray:v41];

    v42 = v48;
    v43 = v51;

    v3 = v34;
  }

  else
  {
    v43 = [(MUPlaceSectionView *)self bottomAnchor];
    v42 = [v32 constraintEqualToAnchor:v43];
    v53 = v42;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    [v3 addObjectsFromArray:v33];
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
          v11 = [(MUPlaceSectionFooterViewModel *)self->_footerViewModel attributedText];
          [(MULinkView *)self->_footerView setAttributedText:v11];

          v12 = [(MUPlaceSectionFooterViewModel *)self->_footerViewModel actionBlock];

          if (v12)
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

- (MUPlaceSectionView)initWithStyle:(int64_t)a3 alwaysHideSeparators:(BOOL)a4 sectionHeaderViewModel:(id)a5 sectionFooterViewModel:(id)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = MUPlaceSectionView;
  v12 = [(MUPlaceSectionView *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = v12;
  if (v12)
  {
    v12->_applyVerticalSpacingBetweenHeaderAndContent = 1;
    objc_storeStrong(&v12->_headerViewModel, a5);
    objc_storeStrong(&v13->_footerViewModel, a6);
    v13->_style = a3;
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

- (void)configureWithSectionController:(id)a3
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

+ (id)insetButtonSectionViewforContentView:(id)a3
{
  v3 = a3;
  v4 = [[MUPlaceSectionView alloc] initWithStyle:2 sectionHeaderViewModel:0 sectionFooterViewModel:0];
  [(MUPlaceSectionView *)v4 attachViewToContentView:v3];

  return v4;
}

+ (id)insetPlatterSectionViewForContentView:(id)a3 sectionHeaderViewModel:(id)a4 sectionFooterViewModel:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MUPlaceSectionView alloc] initWithStyle:2 sectionHeaderViewModel:v8 sectionFooterViewModel:v7];

  v11 = [[MUPlatterView alloc] initWithContentView:v9];
  [(MUPlaceSectionView *)v10 attachViewToContentView:v11];

  return v10;
}

+ (id)insetTextSectionViewForContentView:(id)a3 sectionHeaderViewModel:(id)a4 sectionFooterViewModel:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MUPlaceSectionView alloc] initWithStyle:1 sectionHeaderViewModel:v8 sectionFooterViewModel:v7];

  [(MUPlaceSectionView *)v10 attachViewToContentView:v9];

  return v10;
}

@end