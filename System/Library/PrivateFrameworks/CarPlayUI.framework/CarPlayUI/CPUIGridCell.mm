@interface CPUIGridCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_setContentClipCorners:(unint64_t)a3 updateCorners:(BOOL)a4;
- (void)_updateTintColors;
- (void)coreCellItemTapped:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutGridView;
- (void)prepareForReuse;
- (void)setContentInsets:(NSDirectionalEdgeInsets)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setTitle:(id)a3;
- (void)setTrailingView:(id)a3;
- (void)setViewModels:(id)a3;
- (void)updateTopAnchorConstraints;
@end

@implementation CPUIGridCell

- (void)_updateTintColors
{
  if ([(CPUIGridCell *)self itemEnabled])
  {
    v13 = [MEMORY[0x277D75348] labelColor];
    v3 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    v4 = [(CPUIGridCell *)self titleLabel];
    if ([(CPUIGridCell *)self isHighlighted])
    {
      v5 = v3;
    }

    else
    {
      v5 = v13;
    }

    [v4 setTextColor:v5];

    v6 = [MEMORY[0x277D75348] _carSystemSecondaryColor];
    v7 = [MEMORY[0x277D75348] _carSystemFocusPrimaryColor];
  }

  else
  {
    v13 = +[_CPUIBaseTableCell disabledColor];
    v3 = +[_CPUIBaseTableCell disabledHighlightedColor];
    v8 = [(CPUIGridCell *)self titleLabel];
    if ([(CPUIGridCell *)self isHighlighted])
    {
      v9 = v3;
    }

    else
    {
      v9 = v13;
    }

    [v8 setTextColor:v9];

    v6 = +[_CPUIBaseTableCell disabledColor];
    v7 = +[_CPUIBaseTableCell disabledHighlightedColor];
  }

  v10 = v7;
  v11 = [(CPUIGridCell *)self chevronView];
  if ([(CPUIGridCell *)self isHighlighted])
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  [v11 setTintColor:v12];
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
  v8 = [(CPUIGridCell *)self titleStackView];
  v9 = [(CPUIGridCell *)self titleLabel];
  [v8 addArrangedSubview:v9];

  v10 = [(CPUIGridCell *)self contentView];
  [v10 addSubview:self->_titleStackView];

  v11 = [(CPUIGridViewTableViewCell *)self gridViewReference];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(CPUIGridCell *)self contentView];
  v13 = [(CPUIGridViewTableViewCell *)self gridViewReference];
  [v12 addSubview:v13];

  v14 = [(CPUIGridViewTableViewCell *)self gridViewReference];
  v15 = [v14 heightAnchor];
  v16 = [v15 constraintEqualToConstant:0.0];
  heightConstraint = self->heightConstraint;
  self->heightConstraint = v16;

  v18 = [(CPUIGridViewTableViewCell *)self gridViewReference];
  v19 = [v18 topAnchor];
  v20 = [(CPUIGridCell *)self titleStackView];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:8.0];
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
  v32 = [(CPUIGridCell *)self traitCollection];
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
    v92 = [(CPUIImageRowHighlightButton *)v38 heightAnchor];
    v102 = [v92 constraintGreaterThanOrEqualToConstant:28.0];
    v105[0] = v102;
    v39 = [(CPUIImageRowHighlightButton *)self->_focusIndicator leadingAnchor];
    v100 = [(CPUIGridCell *)self titleStackView];
    [v100 leadingAnchor];
    v99 = v101 = v39;
    v98 = [v39 constraintEqualToAnchor:-8.0 constant:?];
    v105[1] = v98;
    v40 = [(CPUIImageRowHighlightButton *)self->_focusIndicator trailingAnchor];
    v95 = [(CPUIGridCell *)self titleStackView];
    [v95 trailingAnchor];
    v94 = v97 = v40;
    v93 = [v40 constraintEqualToAnchor:8.0 constant:?];
    v105[2] = v93;
    v41 = [(CPUIImageRowHighlightButton *)self->_focusIndicator topAnchor];
    v42 = [(CPUIGridCell *)self titleStackView];
    v43 = [v42 topAnchor];
    v44 = [v41 constraintEqualToAnchor:v43 constant:-3.0];
    v105[3] = v44;
    v45 = [(CPUIImageRowHighlightButton *)self->_focusIndicator bottomAnchor];
    v46 = [(CPUIGridCell *)self titleStackView];
    v47 = [v46 bottomAnchor];
    v48 = [v45 constraintEqualToAnchor:v47 constant:3.0];
    v105[4] = v48;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:5];
    [v96 activateConstraints:v49];

    v50 = v92;
  }

  else
  {
    v50 = [(CPUIImageRowHighlightButton *)v38 topAnchor];
    v102 = [(CPUIGridCell *)self titleStackView];
    v101 = [v102 topAnchor];
    v100 = [v50 constraintEqualToAnchor:-8.0 constant:?];
    v104[0] = v100;
    v51 = [(CPUIImageRowHighlightButton *)self->_focusIndicator leadingAnchor];
    v98 = [(CPUIGridCell *)self titleStackView];
    [v98 leadingAnchor];
    v97 = v99 = v51;
    v95 = [v51 constraintEqualToAnchor:-8.0 constant:?];
    v104[1] = v95;
    v52 = [(CPUIImageRowHighlightButton *)self->_focusIndicator trailingAnchor];
    v93 = [(CPUIGridCell *)self titleStackView];
    v41 = [v93 trailingAnchor];
    v94 = v52;
    v42 = [v52 constraintEqualToAnchor:v41 constant:8.0];
    v104[2] = v42;
    v43 = [(CPUIImageRowHighlightButton *)self->_focusIndicator bottomAnchor];
    v44 = [(CPUIGridCell *)self titleStackView];
    v45 = [v44 bottomAnchor];
    v46 = [v43 constraintEqualToAnchor:v45 constant:8.0];
    v104[3] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:4];
    [v96 activateConstraints:v47];
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
  v56 = [(CPUIGridCell *)self titleStackView];
  v57 = [v56 topAnchor];
  v58 = [(CPUIGridCell *)self contentView];
  v59 = [v58 topAnchor];
  v60 = [v57 constraintEqualToAnchor:v59 constant:p_contentInsets->top];
  topInsetConstraint = self->_topInsetConstraint;
  self->_topInsetConstraint = v60;

  v62 = [(CPUIGridViewTableViewCell *)self gridViewReference];
  v63 = [v62 leadingAnchor];
  v64 = [(CPUIGridCell *)self contentView];
  v65 = [v64 leadingAnchor];
  v66 = [v63 constraintEqualToAnchor:v65 constant:self->_contentInsets.leading];
  leadingInsetConstraint = self->_leadingInsetConstraint;
  self->_leadingInsetConstraint = v66;

  v68 = [(CPUIGridViewTableViewCell *)self gridViewReference];
  v69 = [v68 trailingAnchor];
  v70 = [(CPUIGridCell *)self contentView];
  v71 = [v70 trailingAnchor];
  v72 = [v69 constraintEqualToAnchor:v71 constant:-self->_contentInsets.trailing];
  trailingInsetConstraint = self->_trailingInsetConstraint;
  self->_trailingInsetConstraint = v72;

  v74 = [(CPUIGridCell *)self titleStackView];
  v75 = [v74 leadingAnchor];
  v76 = [(CPUIGridCell *)self contentView];
  v77 = [v76 leadingAnchor];
  v78 = [v75 constraintEqualToAnchor:v77 constant:self->_contentInsets.leading];
  titleLeadingInsetConstraint = self->_titleLeadingInsetConstraint;
  self->_titleLeadingInsetConstraint = v78;

  v80 = [(CPUIGridCell *)self titleStackView];
  v81 = [v80 trailingAnchor];
  v82 = [(CPUIGridCell *)self contentView];
  v83 = [v82 trailingAnchor];
  v84 = [v81 constraintLessThanOrEqualToAnchor:v83 constant:-12.0 - self->_contentInsets.trailing];
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
  v90 = [(CPUIGridCell *)self titleLabel];
  [v90 setAccessibilityIdentifier:@"CPGridCellTitle"];

  if (_os_feature_enabled_impl())
  {
    v91 = [(CPUIGridCell *)self titleLabel];
    [v91 setAdjustsFontForContentSizeCategory:1];
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
    v6 = [(CPUIGridViewTableViewCell *)self gridViewReference];
    v7 = [v6 topAnchor];
    v8 = [(CPUIGridCell *)self contentView];
    v9 = [v8 topAnchor];
    v10 = [v7 constraintEqualToAnchor:v9 constant:self->_contentInsets.top];
    gridTopAnchorConstraint = self->_topInsetConstraint;
    self->_topInsetConstraint = v10;
  }

  else
  {
    v12 = [(CPUIGridCell *)self titleStackView];
    v13 = [v12 topAnchor];
    v14 = [(CPUIGridCell *)self contentView];
    v15 = [v14 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v15 constant:self->_contentInsets.top];
    v17 = self->_topInsetConstraint;
    self->_topInsetConstraint = v16;

    v6 = [(CPUIGridViewTableViewCell *)self gridViewReference];
    v7 = [v6 topAnchor];
    v8 = [(CPUIGridCell *)self titleStackView];
    v9 = [v8 bottomAnchor];
    v18 = [v7 constraintEqualToAnchor:v9 constant:8.0];
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

- (void)setViewModels:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(CPUIGridCell *)self _updateTintColors];
  v5 = [(CPUIGridCell *)self titleLabel];
  v6 = [v5 text];

  if (v6)
  {
    v7 = [(CPUIGridCell *)self titleLabel];
    v8 = [v7 text];
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [(CPUIGridCell *)self setAccessibilityUserInputLabels:v9];
  }

  else
  {
    [(CPUIGridCell *)self setAccessibilityUserInputLabels:MEMORY[0x277CBEBF8]];
  }

  v10.receiver = self;
  v10.super_class = CPUIGridCell;
  [(CPUIGridViewBaseTableViewCell *)&v10 setViewModels:v4];
}

- (void)coreCellItemTapped:(id)a3
{
  v4 = [(CPUIGridCell *)self titleAction];

  if (v4)
  {
    v5 = [(CPUIGridCell *)self titleAction];
    v5[2]();
  }
}

- (void)setTitle:(id)a3
{
  v12 = a3;
  v5 = [(CPUIGridCell *)self titleLabel];
  [v5 setText:v12];

  objc_storeStrong(&self->_title, a3);
  v6 = [(CPUIGridCell *)self title];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [(CPUIGridCell *)self title];
  v8 = [v7 isEqualToString:&stru_2855CA368];

  if (v8)
  {
    v6 = 0;
LABEL_4:
    v9 = 1;
    goto LABEL_6;
  }

  v10 = [(CPUIGridCell *)self title];
  v11 = [(CPUIGridCell *)self titleLabel];
  [v11 setText:v10];

  v9 = 0;
  v6 = 1;
LABEL_6:
  [(UIStackView *)self->_titleStackView setHidden:v9];
  [(CPUIMediaButton *)self->_focusIndicator setHidden:v9];
  [(CPUIImageRowHighlightButton *)self->_focusIndicator setEnabled:v6];
  [(CPUIGridCell *)self updateTopAnchorConstraints];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = a3;
  v6 = [(CPUIGridCell *)self focusIndicator];
  v7 = [v5 nextFocusedItem];

  self->_wasFocused = v6 == v7;
  wasFocused = self->_wasFocused;

  [(CPUIGridCell *)self setHighlighted:wasFocused];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3 || self->_wasFocused;
  v8.receiver = self;
  v8.super_class = CPUIGridCell;
  [(CPUIGridCell *)&v8 setHighlighted:v5 animated:a4];
  [(CPUIGridCell *)self _updateTintColors];
  v6 = [(CPUIGridCell *)self isHighlighted];
  v7 = [(CPUIGridCell *)self focusIndicator];
  [v7 setShowHighlight:v6];
}

- (void)_setContentClipCorners:(unint64_t)a3 updateCorners:(BOOL)a4
{
  v4 = [(CPUIGridCell *)self layer:a3];
  [v4 setMasksToBounds:0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v21.receiver = self;
  v21.super_class = CPUIGridCell;
  [(CPUIGridViewTableViewCell *)&v21 sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  v8 = [(CPUIGridCell *)self titleStackView];
  v9 = [(CPUIGridCell *)self contentView];
  [v9 bounds];
  [v8 sizeThatFits:{v10, v11}];
  v13 = v12;

  v14 = [(CPUIGridCell *)self title];
  if (v14 && (v15 = v14, -[CPUIGridCell title](self, "title"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isEqualToString:&stru_2855CA368], v16, v15, (v17 & 1) == 0))
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

- (void)setTrailingView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_trailingView removeFromSuperview];
  v5 = [(CPUIGridCell *)self titleStackView];
  [v5 removeArrangedSubview:self->_trailingView];

  trailingView = self->_trailingView;
  self->_trailingView = v4;
  v9 = v4;

  v7 = [(CPUIGridCell *)self titleStackView];
  [v7 addArrangedSubview:v9];

  LODWORD(v8) = 1148846080;
  [(UIView *)v9 setContentCompressionResistancePriority:0 forAxis:v8];
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    leading = a3.leading;
    trailing = a3.trailing;
    [(NSLayoutConstraint *)self->_topInsetConstraint setConstant:?];
    [(NSLayoutConstraint *)self->_leadingInsetConstraint setConstant:leading];
    [(NSLayoutConstraint *)self->_trailingInsetConstraint setConstant:-trailing];
    [(NSLayoutConstraint *)self->_leadingInsetConstraint constant];
    [(NSLayoutConstraint *)self->_titleLeadingInsetConstraint setConstant:?];
    [(NSLayoutConstraint *)self->_trailingInsetConstraint constant];
    [(NSLayoutConstraint *)self->_titleTrailingInsetConstraint setConstant:v6 + -12.0];
    v7 = [(CPUIGridCell *)self titleStackView];
    [v7 setNeedsLayout];

    v10 = [(CPUIGridViewTableViewCell *)self gridViewReference];
    [v10 setNeedsLayout];
  }
}

@end