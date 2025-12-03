@interface CPUIGridCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_setContentClipCorners:(unint64_t)corners updateCorners:(BOOL)updateCorners;
- (void)_updateTintColors;
- (void)coreCellItemTapped:(id)tapped;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutGridView;
- (void)prepareForReuse;
- (void)setContentInsets:(NSDirectionalEdgeInsets)insets;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setTitle:(id)title;
- (void)setTrailingView:(id)view;
- (void)setViewModels:(id)models;
- (void)updateTopAnchorConstraints;
@end

@implementation CPUIGridCell

- (void)_updateTintColors
{
  if ([(CPUIGridCell *)self itemEnabled])
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    _carSystemFocusLabelColor = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    titleLabel = [(CPUIGridCell *)self titleLabel];
    if ([(CPUIGridCell *)self isHighlighted])
    {
      v5 = _carSystemFocusLabelColor;
    }

    else
    {
      v5 = labelColor;
    }

    [titleLabel setTextColor:v5];

    _carSystemSecondaryColor = [MEMORY[0x277D75348] _carSystemSecondaryColor];
    _carSystemFocusPrimaryColor = [MEMORY[0x277D75348] _carSystemFocusPrimaryColor];
  }

  else
  {
    labelColor = +[_CPUIBaseTableCell disabledColor];
    _carSystemFocusLabelColor = +[_CPUIBaseTableCell disabledHighlightedColor];
    titleLabel2 = [(CPUIGridCell *)self titleLabel];
    if ([(CPUIGridCell *)self isHighlighted])
    {
      v9 = _carSystemFocusLabelColor;
    }

    else
    {
      v9 = labelColor;
    }

    [titleLabel2 setTextColor:v9];

    _carSystemSecondaryColor = +[_CPUIBaseTableCell disabledColor];
    _carSystemFocusPrimaryColor = +[_CPUIBaseTableCell disabledHighlightedColor];
  }

  v10 = _carSystemFocusPrimaryColor;
  chevronView = [(CPUIGridCell *)self chevronView];
  if ([(CPUIGridCell *)self isHighlighted])
  {
    v12 = v10;
  }

  else
  {
    v12 = _carSystemSecondaryColor;
  }

  [chevronView setTintColor:v12];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CPUIGridCell;
  [(CPUIGridViewBaseTableViewCell *)&v3 prepareForReuse];
  self->_wasFocused = 0;
}

- (void)layoutGridView
{
  v106[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  titleStackView = self->_titleStackView;
  self->_titleStackView = v3;

  [(UIStackView *)self->_titleStackView setAxis:0];
  [(UIStackView *)self->_titleStackView setDistribution:0];
  [(UIStackView *)self->_titleStackView setAlignment:3];
  [(UIStackView *)self->_titleStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_titleStackView setClipsToBounds:0];
  [(UIStackView *)self->_titleStackView setSpacing:4.0];
  v5 = objc_opt_new();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v5;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] weight:*MEMORY[0x277D743F8]];
  [(UILabel *)self->_titleLabel setFont:v7];

  [(UILabel *)self->_titleLabel setText:self->_title];
  titleStackView = [(CPUIGridCell *)self titleStackView];
  titleLabel = [(CPUIGridCell *)self titleLabel];
  [titleStackView addArrangedSubview:titleLabel];

  contentView = [(CPUIGridCell *)self contentView];
  [contentView addSubview:self->_titleStackView];

  gridViewReference = [(CPUIGridViewTableViewCell *)self gridViewReference];
  [gridViewReference setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(CPUIGridCell *)self contentView];
  gridViewReference2 = [(CPUIGridViewTableViewCell *)self gridViewReference];
  [contentView2 addSubview:gridViewReference2];

  gridViewReference3 = [(CPUIGridViewTableViewCell *)self gridViewReference];
  heightAnchor = [gridViewReference3 heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:0.0];
  heightConstraint = self->heightConstraint;
  self->heightConstraint = v16;

  gridViewReference4 = [(CPUIGridViewTableViewCell *)self gridViewReference];
  topAnchor = [gridViewReference4 topAnchor];
  titleStackView2 = [(CPUIGridCell *)self titleStackView];
  bottomAnchor = [titleStackView2 bottomAnchor];
  v22 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:8.0];
  gridTopAnchorConstraint = self->_gridTopAnchorConstraint;
  self->_gridTopAnchorConstraint = v22;

  v24 = MEMORY[0x277CCAAD0];
  v25 = self->heightConstraint;
  v106[0] = self->_gridTopAnchorConstraint;
  v106[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:2];
  [v24 activateConstraints:v26];

  v27 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:21];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v27;

  [(UIActivityIndicatorView *)self->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = objc_opt_new();
  focusIndicator = self->_focusIndicator;
  self->_focusIndicator = v29;

  [(CPUIImageRowHighlightButton *)self->_focusIndicator addTarget:self action:sel_coreCellItemTapped_ forControlEvents:0x2000];
  [(CPUIImageRowHighlightButton *)self->_focusIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPUIGridCell *)self addSubview:self->_focusIndicator];
  [(CPUIGridCell *)self sendSubviewToBack:self->_focusIndicator];
  v31 = objc_alloc(MEMORY[0x277D755E8]);
  traitCollection = [(CPUIGridCell *)self traitCollection];
  v33 = CPUIChevronRightGlyph();
  v34 = [v33 imageWithRenderingMode:2];
  v35 = [v31 initWithImage:v34];
  chevronView = self->_chevronView;
  self->_chevronView = v35;

  [(UIImageView *)self->_chevronView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPUIGridCell *)self setTrailingView:self->_chevronView];
  v37 = _UISolariumEnabled();
  v96 = MEMORY[0x277CCAAD0];
  v38 = self->_focusIndicator;
  if (v37)
  {
    heightAnchor2 = [(CPUIImageRowHighlightButton *)v38 heightAnchor];
    titleStackView7 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:28.0];
    v105[0] = titleStackView7;
    leadingAnchor = [(CPUIImageRowHighlightButton *)self->_focusIndicator leadingAnchor];
    titleStackView3 = [(CPUIGridCell *)self titleStackView];
    [titleStackView3 leadingAnchor];
    v99 = topAnchor5 = leadingAnchor;
    titleStackView8 = [leadingAnchor constraintEqualToAnchor:-8.0 constant:?];
    v105[1] = titleStackView8;
    trailingAnchor = [(CPUIImageRowHighlightButton *)self->_focusIndicator trailingAnchor];
    titleStackView4 = [(CPUIGridCell *)self titleStackView];
    [titleStackView4 trailingAnchor];
    v94 = v97 = trailingAnchor;
    titleStackView9 = [trailingAnchor constraintEqualToAnchor:8.0 constant:?];
    v105[2] = titleStackView9;
    topAnchor2 = [(CPUIImageRowHighlightButton *)self->_focusIndicator topAnchor];
    titleStackView5 = [(CPUIGridCell *)self titleStackView];
    topAnchor3 = [titleStackView5 topAnchor];
    titleStackView10 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:-3.0];
    v105[3] = titleStackView10;
    bottomAnchor2 = [(CPUIImageRowHighlightButton *)self->_focusIndicator bottomAnchor];
    titleStackView6 = [(CPUIGridCell *)self titleStackView];
    bottomAnchor3 = [titleStackView6 bottomAnchor];
    v48 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:3.0];
    v105[4] = v48;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:5];
    [v96 activateConstraints:v49];

    topAnchor4 = heightAnchor2;
  }

  else
  {
    topAnchor4 = [(CPUIImageRowHighlightButton *)v38 topAnchor];
    titleStackView7 = [(CPUIGridCell *)self titleStackView];
    topAnchor5 = [titleStackView7 topAnchor];
    titleStackView3 = [topAnchor4 constraintEqualToAnchor:-8.0 constant:?];
    v104[0] = titleStackView3;
    leadingAnchor2 = [(CPUIImageRowHighlightButton *)self->_focusIndicator leadingAnchor];
    titleStackView8 = [(CPUIGridCell *)self titleStackView];
    [titleStackView8 leadingAnchor];
    v97 = v99 = leadingAnchor2;
    titleStackView4 = [leadingAnchor2 constraintEqualToAnchor:-8.0 constant:?];
    v104[1] = titleStackView4;
    trailingAnchor2 = [(CPUIImageRowHighlightButton *)self->_focusIndicator trailingAnchor];
    titleStackView9 = [(CPUIGridCell *)self titleStackView];
    topAnchor2 = [titleStackView9 trailingAnchor];
    v94 = trailingAnchor2;
    titleStackView5 = [trailingAnchor2 constraintEqualToAnchor:topAnchor2 constant:8.0];
    v104[2] = titleStackView5;
    topAnchor3 = [(CPUIImageRowHighlightButton *)self->_focusIndicator bottomAnchor];
    titleStackView10 = [(CPUIGridCell *)self titleStackView];
    bottomAnchor2 = [titleStackView10 bottomAnchor];
    titleStackView6 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:8.0];
    v104[3] = titleStackView6;
    bottomAnchor3 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:4];
    [v96 activateConstraints:bottomAnchor3];
  }

  p_contentInsets = &self->_contentInsets;
  if (_UISolariumEnabled())
  {
    v54 = &CPUIGridCellDefaultContentInsets_Solarium;
  }

  else
  {
    v54 = &CPUIGridCellDefaultContentInsets;
  }

  v55 = v54[1];
  *&p_contentInsets->top = *v54;
  *&self->_contentInsets.bottom = v55;
  titleStackView11 = [(CPUIGridCell *)self titleStackView];
  topAnchor6 = [titleStackView11 topAnchor];
  contentView3 = [(CPUIGridCell *)self contentView];
  topAnchor7 = [contentView3 topAnchor];
  v60 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:p_contentInsets->top];
  topInsetConstraint = self->_topInsetConstraint;
  self->_topInsetConstraint = v60;

  gridViewReference5 = [(CPUIGridViewTableViewCell *)self gridViewReference];
  leadingAnchor3 = [gridViewReference5 leadingAnchor];
  contentView4 = [(CPUIGridCell *)self contentView];
  leadingAnchor4 = [contentView4 leadingAnchor];
  v66 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:self->_contentInsets.leading];
  leadingInsetConstraint = self->_leadingInsetConstraint;
  self->_leadingInsetConstraint = v66;

  gridViewReference6 = [(CPUIGridViewTableViewCell *)self gridViewReference];
  trailingAnchor3 = [gridViewReference6 trailingAnchor];
  contentView5 = [(CPUIGridCell *)self contentView];
  trailingAnchor4 = [contentView5 trailingAnchor];
  v72 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-self->_contentInsets.trailing];
  trailingInsetConstraint = self->_trailingInsetConstraint;
  self->_trailingInsetConstraint = v72;

  titleStackView12 = [(CPUIGridCell *)self titleStackView];
  leadingAnchor5 = [titleStackView12 leadingAnchor];
  contentView6 = [(CPUIGridCell *)self contentView];
  leadingAnchor6 = [contentView6 leadingAnchor];
  v78 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:self->_contentInsets.leading];
  titleLeadingInsetConstraint = self->_titleLeadingInsetConstraint;
  self->_titleLeadingInsetConstraint = v78;

  titleStackView13 = [(CPUIGridCell *)self titleStackView];
  trailingAnchor5 = [titleStackView13 trailingAnchor];
  contentView7 = [(CPUIGridCell *)self contentView];
  trailingAnchor6 = [contentView7 trailingAnchor];
  v84 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6 constant:-12.0 - self->_contentInsets.trailing];
  titleTrailingInsetConstraint = self->_titleTrailingInsetConstraint;
  self->_titleTrailingInsetConstraint = v84;

  v86 = MEMORY[0x277CCAAD0];
  v87 = self->_leadingInsetConstraint;
  v103[0] = self->_topInsetConstraint;
  v103[1] = v87;
  v88 = self->_titleLeadingInsetConstraint;
  v103[2] = self->_trailingInsetConstraint;
  v103[3] = v88;
  v103[4] = self->_titleTrailingInsetConstraint;
  v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:5];
  [v86 activateConstraints:v89];

  [(CPUIGridCell *)self setAccessibilityIdentifier:@"CPGridCell"];
  titleLabel2 = [(CPUIGridCell *)self titleLabel];
  [titleLabel2 setAccessibilityIdentifier:@"CPGridCellTitle"];

  if (_os_feature_enabled_impl())
  {
    titleLabel3 = [(CPUIGridCell *)self titleLabel];
    [titleLabel3 setAdjustsFontForContentSizeCategory:1];
  }
}

- (void)updateTopAnchorConstraints
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAD0];
  topInsetConstraint = self->_topInsetConstraint;
  v23[0] = self->_gridTopAnchorConstraint;
  v23[1] = topInsetConstraint;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v3 deactivateConstraints:v5];

  if ([(UIStackView *)self->_titleStackView isHidden])
  {
    gridViewReference = [(CPUIGridViewTableViewCell *)self gridViewReference];
    topAnchor = [gridViewReference topAnchor];
    contentView = [(CPUIGridCell *)self contentView];
    topAnchor2 = [contentView topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:self->_contentInsets.top];
    gridTopAnchorConstraint = self->_topInsetConstraint;
    self->_topInsetConstraint = v10;
  }

  else
  {
    titleStackView = [(CPUIGridCell *)self titleStackView];
    topAnchor3 = [titleStackView topAnchor];
    contentView2 = [(CPUIGridCell *)self contentView];
    topAnchor4 = [contentView2 topAnchor];
    v16 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:self->_contentInsets.top];
    v17 = self->_topInsetConstraint;
    self->_topInsetConstraint = v16;

    gridViewReference = [(CPUIGridViewTableViewCell *)self gridViewReference];
    topAnchor = [gridViewReference topAnchor];
    contentView = [(CPUIGridCell *)self titleStackView];
    topAnchor2 = [contentView bottomAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    gridTopAnchorConstraint = self->_gridTopAnchorConstraint;
    self->_gridTopAnchorConstraint = v18;
  }

  v19 = MEMORY[0x277CCAAD0];
  v20 = self->_topInsetConstraint;
  v22[0] = self->_gridTopAnchorConstraint;
  v22[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [v19 activateConstraints:v21];

  [(CPUIGridCell *)self setNeedsLayout];
}

- (void)setViewModels:(id)models
{
  v11[1] = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  [(CPUIGridCell *)self _updateTintColors];
  titleLabel = [(CPUIGridCell *)self titleLabel];
  text = [titleLabel text];

  if (text)
  {
    titleLabel2 = [(CPUIGridCell *)self titleLabel];
    text2 = [titleLabel2 text];
    v11[0] = text2;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [(CPUIGridCell *)self setAccessibilityUserInputLabels:v9];
  }

  else
  {
    [(CPUIGridCell *)self setAccessibilityUserInputLabels:MEMORY[0x277CBEBF8]];
  }

  v10.receiver = self;
  v10.super_class = CPUIGridCell;
  [(CPUIGridViewBaseTableViewCell *)&v10 setViewModels:modelsCopy];
}

- (void)coreCellItemTapped:(id)tapped
{
  titleAction = [(CPUIGridCell *)self titleAction];

  if (titleAction)
  {
    titleAction2 = [(CPUIGridCell *)self titleAction];
    titleAction2[2]();
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(CPUIGridCell *)self titleLabel];
  [titleLabel setText:titleCopy];

  objc_storeStrong(&self->_title, title);
  title = [(CPUIGridCell *)self title];
  if (!title)
  {
    goto LABEL_4;
  }

  title2 = [(CPUIGridCell *)self title];
  v8 = [title2 isEqualToString:&stru_2855CA368];

  if (v8)
  {
    title = 0;
LABEL_4:
    v9 = 1;
    goto LABEL_6;
  }

  title3 = [(CPUIGridCell *)self title];
  titleLabel2 = [(CPUIGridCell *)self titleLabel];
  [titleLabel2 setText:title3];

  v9 = 0;
  title = 1;
LABEL_6:
  [(UIStackView *)self->_titleStackView setHidden:v9];
  [(CPUIMediaButton *)self->_focusIndicator setHidden:v9];
  [(CPUIImageRowHighlightButton *)self->_focusIndicator setEnabled:title];
  [(CPUIGridCell *)self updateTopAnchorConstraints];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  focusIndicator = [(CPUIGridCell *)self focusIndicator];
  nextFocusedItem = [contextCopy nextFocusedItem];

  self->_wasFocused = focusIndicator == nextFocusedItem;
  wasFocused = self->_wasFocused;

  [(CPUIGridCell *)self setHighlighted:wasFocused];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v5 = highlighted || self->_wasFocused;
  v8.receiver = self;
  v8.super_class = CPUIGridCell;
  [(CPUIGridCell *)&v8 setHighlighted:v5 animated:animated];
  [(CPUIGridCell *)self _updateTintColors];
  isHighlighted = [(CPUIGridCell *)self isHighlighted];
  focusIndicator = [(CPUIGridCell *)self focusIndicator];
  [focusIndicator setShowHighlight:isHighlighted];
}

- (void)_setContentClipCorners:(unint64_t)corners updateCorners:(BOOL)updateCorners
{
  v4 = [(CPUIGridCell *)self layer:corners];
  [v4 setMasksToBounds:0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v21.receiver = self;
  v21.super_class = CPUIGridCell;
  [(CPUIGridViewTableViewCell *)&v21 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  titleStackView = [(CPUIGridCell *)self titleStackView];
  contentView = [(CPUIGridCell *)self contentView];
  [contentView bounds];
  [titleStackView sizeThatFits:{v10, v11}];
  v13 = v12;

  title = [(CPUIGridCell *)self title];
  if (title && (v15 = title, -[CPUIGridCell title](self, "title"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isEqualToString:&stru_2855CA368], v16, v15, (v17 & 1) == 0))
  {
    v18 = self->_contentInsets.bottom + v7 + v13 + self->_contentInsets.top + 8.0;
  }

  else
  {
    v18 = v7 + self->_contentInsets.top + self->_contentInsets.bottom;
  }

  [(NSLayoutConstraint *)self->heightConstraint setConstant:v7];
  v19 = v5;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)setTrailingView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_trailingView removeFromSuperview];
  titleStackView = [(CPUIGridCell *)self titleStackView];
  [titleStackView removeArrangedSubview:self->_trailingView];

  trailingView = self->_trailingView;
  self->_trailingView = viewCopy;
  v9 = viewCopy;

  titleStackView2 = [(CPUIGridCell *)self titleStackView];
  [titleStackView2 addArrangedSubview:v9];

  LODWORD(v8) = 1148846080;
  [(UIView *)v9 setContentCompressionResistancePriority:0 forAxis:v8];
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.leading;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    leading = insets.leading;
    trailing = insets.trailing;
    [(NSLayoutConstraint *)self->_topInsetConstraint setConstant:?];
    [(NSLayoutConstraint *)self->_leadingInsetConstraint setConstant:leading];
    [(NSLayoutConstraint *)self->_trailingInsetConstraint setConstant:-trailing];
    [(NSLayoutConstraint *)self->_leadingInsetConstraint constant];
    [(NSLayoutConstraint *)self->_titleLeadingInsetConstraint setConstant:?];
    [(NSLayoutConstraint *)self->_trailingInsetConstraint constant];
    [(NSLayoutConstraint *)self->_titleTrailingInsetConstraint setConstant:v6 + -12.0];
    titleStackView = [(CPUIGridCell *)self titleStackView];
    [titleStackView setNeedsLayout];

    gridViewReference = [(CPUIGridViewTableViewCell *)self gridViewReference];
    [gridViewReference setNeedsLayout];
  }
}

@end