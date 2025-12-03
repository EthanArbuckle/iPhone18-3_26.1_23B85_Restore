@interface WDMedicalRecordGroupableCell
- (UIEdgeInsets)separatorInsets;
- (WDMedicalRecordGroupableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_traitCollectionDidChange:(id)change;
- (void)_updateForCurrentSizeCategory;
- (void)_updateForIntendedPlacement;
- (void)prepareForReuse;
- (void)setExtraTopPadding:(BOOL)padding;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setIntendedPlacement:(int64_t)placement;
- (void)setPillBackgroundColorOverride:(id)override;
- (void)setSeparatorDashStyle:(int64_t)style hidden:(BOOL)hidden;
- (void)setSeparatorInsets:(UIEdgeInsets)insets;
- (void)setUpConstraints;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordGroupableCell

- (WDMedicalRecordGroupableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = WDMedicalRecordGroupableCell;
  v4 = [(WDMedicalRecordGroupableCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDMedicalRecordGroupableCell *)v4 setSelectionStyle:0];
    [(WDMedicalRecordGroupableCell *)v5 setupSubviews];
    [(WDMedicalRecordGroupableCell *)v5 setUpConstraints];
    [(WDMedicalRecordGroupableCell *)v5 setIntendedPlacement:0];
    v10[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(WDMedicalRecordGroupableCell *)v5 registerForTraitChanges:v6 withAction:sel__traitCollectionDidChange_];
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = WDMedicalRecordGroupableCell;
  [(WDMedicalRecordGroupableCell *)&v3 prepareForReuse];
  [(WDMedicalRecordGroupableCell *)self setHighlighted:0];
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(WDMedicalRecordGroupableCell *)self setPillBackgroundView:v3];

  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(WDMedicalRecordGroupableCell *)self setPillBackgroundColor:secondarySystemGroupedBackgroundColor];

  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [pillBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(WDMedicalRecordGroupableCell *)self contentView];
  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [contentView addSubview:pillBackgroundView2];

  [(WDMedicalRecordGroupableCell *)self setSeparatorInsets:0.0, 16.0, 0.0, 16.0];
  v8 = objc_alloc(MEMORY[0x1E69A44A8]);
  v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(WDMedicalRecordGroupableCell *)self setSeparatorView:v9];

  separatorView = [(WDMedicalRecordGroupableCell *)self separatorView];
  [separatorView setTranslatesAutoresizingMaskIntoConstraints:0];

  traitCollection = [(WDMedicalRecordGroupableCell *)self traitCollection];
  [traitCollection displayPixel];
  v13 = v12;
  separatorView2 = [(WDMedicalRecordGroupableCell *)self separatorView];
  [separatorView2 setSeparatorThickness:v13];

  hk_clinicalRecordSeparatorColor = [MEMORY[0x1E69DC888] hk_clinicalRecordSeparatorColor];
  separatorView3 = [(WDMedicalRecordGroupableCell *)self separatorView];
  [separatorView3 setColor:hk_clinicalRecordSeparatorColor];

  separatorView4 = [(WDMedicalRecordGroupableCell *)self separatorView];
  [separatorView4 setDashStyle:1];

  contentView2 = [(WDMedicalRecordGroupableCell *)self contentView];
  separatorView5 = [(WDMedicalRecordGroupableCell *)self separatorView];
  [contentView2 addSubview:separatorView5];

  separatorView6 = [(WDMedicalRecordGroupableCell *)self separatorView];
  -[WDMedicalRecordGroupableCell setSeparatorDashStyle:hidden:](self, "setSeparatorDashStyle:hidden:", [separatorView6 dashStyle], 1);
}

- (void)setUpConstraints
{
  v48[7] = *MEMORY[0x1E69E9840];
  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  topAnchor = [pillBackgroundView topAnchor];
  contentView = [(WDMedicalRecordGroupableCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [(WDMedicalRecordGroupableCell *)self setTopConstraint:v7];

  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor = [pillBackgroundView2 bottomAnchor];
  contentView2 = [(WDMedicalRecordGroupableCell *)self contentView];
  bottomAnchor2 = [contentView2 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(WDMedicalRecordGroupableCell *)self setBottomConstraint:v12];

  separatorView = [(WDMedicalRecordGroupableCell *)self separatorView];
  leadingAnchor = [separatorView leadingAnchor];
  pillBackgroundView3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor2 = [pillBackgroundView3 leadingAnchor];
  [(WDMedicalRecordGroupableCell *)self separatorInsets];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v17];
  [(WDMedicalRecordGroupableCell *)self setSeparatorLeadingConstant:v18];

  separatorView2 = [(WDMedicalRecordGroupableCell *)self separatorView];
  trailingAnchor = [separatorView2 trailingAnchor];
  pillBackgroundView4 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor2 = [pillBackgroundView4 trailingAnchor];
  [(WDMedicalRecordGroupableCell *)self separatorInsets];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v23];
  [(WDMedicalRecordGroupableCell *)self setSeparatorTrailingConstraint:v24];

  v38 = MEMORY[0x1E696ACD8];
  pillBackgroundView5 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor3 = [pillBackgroundView5 leadingAnchor];
  contentView3 = [(WDMedicalRecordGroupableCell *)self contentView];
  layoutMarginsGuide = [contentView3 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
  v42 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v48[0] = v42;
  pillBackgroundView6 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor3 = [pillBackgroundView6 trailingAnchor];
  contentView4 = [(WDMedicalRecordGroupableCell *)self contentView];
  layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v48[1] = v35;
  topConstraint = [(WDMedicalRecordGroupableCell *)self topConstraint];
  v48[2] = topConstraint;
  bottomConstraint = [(WDMedicalRecordGroupableCell *)self bottomConstraint];
  v48[3] = bottomConstraint;
  separatorView3 = [(WDMedicalRecordGroupableCell *)self separatorView];
  bottomAnchor3 = [separatorView3 bottomAnchor];
  pillBackgroundView7 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor4 = [pillBackgroundView7 bottomAnchor];
  v31 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v48[4] = v31;
  separatorLeadingConstant = [(WDMedicalRecordGroupableCell *)self separatorLeadingConstant];
  v48[5] = separatorLeadingConstant;
  separatorTrailingConstraint = [(WDMedicalRecordGroupableCell *)self separatorTrailingConstraint];
  v48[6] = separatorTrailingConstraint;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:7];
  [v38 activateConstraints:v34];
}

- (void)setSeparatorDashStyle:(int64_t)style hidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  separatorView = [(WDMedicalRecordGroupableCell *)self separatorView];
  [separatorView setDashStyle:style];

  separatorView2 = [(WDMedicalRecordGroupableCell *)self separatorView];
  [separatorView2 setHidden:hiddenCopy];
}

- (void)setSeparatorInsets:(UIEdgeInsets)insets
{
  self->_separatorInsets = insets;
  [(WDMedicalRecordGroupableCell *)self separatorInsets];
  v5 = v4;
  separatorLeadingConstant = [(WDMedicalRecordGroupableCell *)self separatorLeadingConstant];
  [separatorLeadingConstant setConstant:v5];

  [(WDMedicalRecordGroupableCell *)self separatorInsets];
  v8 = -v7;
  separatorTrailingConstraint = [(WDMedicalRecordGroupableCell *)self separatorTrailingConstraint];
  [separatorTrailingConstraint setConstant:v8];
}

- (void)setExtraTopPadding:(BOOL)padding
{
  self->_extraTopPadding = padding;
  v4 = 0.0;
  if (padding)
  {
    v4 = 10.0;
  }

  [(WDMedicalRecordGroupableCell *)self setSectionTopPadding:v4];
  [(WDMedicalRecordGroupableCell *)self _topPadding];
  v6 = v5;
  topConstraint = [(WDMedicalRecordGroupableCell *)self topConstraint];
  [topConstraint setConstant:v6];
}

- (void)setPillBackgroundColorOverride:(id)override
{
  overrideCopy = override;
  if (self->_pillBackgroundColorOverride != overrideCopy)
  {
    v6 = overrideCopy;
    objc_storeStrong(&self->_pillBackgroundColorOverride, override);
    [(WDMedicalRecordGroupableCell *)self _updateForIntendedPlacement];
    overrideCopy = v6;
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  if ([(WDMedicalRecordGroupableCell *)self selectionStyle]== 3)
  {
    v11.receiver = self;
    v11.super_class = WDMedicalRecordGroupableCell;
    [(WDMedicalRecordGroupableCell *)&v11 setHighlighted:highlightedCopy animated:animatedCopy];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__WDMedicalRecordGroupableCell_setHighlighted_animated___block_invoke;
    v9[3] = &unk_1E83DCF40;
    v9[4] = self;
    v10 = highlightedCopy;
    v7 = _Block_copy(v9);
    v8 = v7;
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:0.5];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

void __56__WDMedicalRecordGroupableCell_setHighlighted_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [MEMORY[0x1E69DC888] hrui_tableViewCellHighlightColor];
  }

  else
  {
    [*(a1 + 32) pillBackgroundColor];
  }
  v3 = ;
  v2 = [*(a1 + 32) pillBackgroundView];
  [v2 setBackgroundColor:v3];
}

- (void)setIntendedPlacement:(int64_t)placement
{
  if (self->_intendedPlacement != placement)
  {
    self->_intendedPlacement = placement;
    [(WDMedicalRecordGroupableCell *)self _updateForIntendedPlacement];
  }
}

- (void)_updateForIntendedPlacement
{
  intendedPlacement = self->_intendedPlacement;
  if (intendedPlacement == 1)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    contentView = [(WDMedicalRecordGroupableCell *)self contentView];
    [contentView setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(WDMedicalRecordGroupableCell *)self setBackgroundColor:clearColor2];

    if (self->_pillBackgroundColorOverride)
    {
      goto LABEL_8;
    }

    clearColor3 = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    if (!intendedPlacement)
    {
      secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      contentView2 = [(WDMedicalRecordGroupableCell *)self contentView];
      [contentView2 setBackgroundColor:secondarySystemGroupedBackgroundColor];

      secondarySystemGroupedBackgroundColor2 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [(WDMedicalRecordGroupableCell *)self setBackgroundColor:secondarySystemGroupedBackgroundColor2];

      if (self->_pillBackgroundColorOverride)
      {
        [(WDMedicalRecordGroupableCell *)self setPillBackgroundColor:?];
      }

      else
      {
        clearColor4 = [MEMORY[0x1E69DC888] clearColor];
        [(WDMedicalRecordGroupableCell *)self setPillBackgroundColor:clearColor4];
      }

      [(WDMedicalRecordGroupableCell *)self _topPadding];
      v16 = v15;
      topConstraint = [(WDMedicalRecordGroupableCell *)self topConstraint];
      [topConstraint setConstant:v16];

      bottomConstraint = [(WDMedicalRecordGroupableCell *)self bottomConstraint];
      [bottomConstraint setConstant:0.0];
      goto LABEL_13;
    }

    clearColor5 = [MEMORY[0x1E69DC888] clearColor];
    contentView3 = [(WDMedicalRecordGroupableCell *)self contentView];
    [contentView3 setBackgroundColor:clearColor5];

    clearColor6 = [MEMORY[0x1E69DC888] clearColor];
    [(WDMedicalRecordGroupableCell *)self setBackgroundColor:clearColor6];

    if (self->_pillBackgroundColorOverride)
    {
LABEL_8:
      [(WDMedicalRecordGroupableCell *)self setPillBackgroundColor:?];
      goto LABEL_14;
    }

    clearColor3 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }

  bottomConstraint = clearColor3;
  [(WDMedicalRecordGroupableCell *)self setPillBackgroundColor:clearColor3];
LABEL_13:

LABEL_14:
  v19 = self->_intendedPlacement;
  if (v19 > 3)
  {
    if (v19 == 4)
    {
      pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
      layer = [pillBackgroundView layer];
      [layer setCornerRadius:0.0];
      goto LABEL_24;
    }

    if (v19 != 5)
    {
      goto LABEL_25;
    }

    [(WDMedicalRecordGroupableCell *)self _cornerRadius];
    v29 = v28;
    pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
    layer2 = [pillBackgroundView2 layer];
    [layer2 setCornerRadius:v29];

    pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
    layer3 = [pillBackgroundView layer];
    layer = layer3;
    v27 = 12;
  }

  else if (v19 == 2)
  {
    [(WDMedicalRecordGroupableCell *)self _cornerRadius];
    v33 = v32;
    pillBackgroundView3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
    layer4 = [pillBackgroundView3 layer];
    [layer4 setCornerRadius:v33];

    pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
    layer3 = [pillBackgroundView layer];
    layer = layer3;
    v27 = 15;
  }

  else
  {
    if (v19 != 3)
    {
      goto LABEL_25;
    }

    [(WDMedicalRecordGroupableCell *)self _cornerRadius];
    v21 = v20;
    pillBackgroundView4 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
    layer5 = [pillBackgroundView4 layer];
    [layer5 setCornerRadius:v21];

    pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
    layer3 = [pillBackgroundView layer];
    layer = layer3;
    v27 = 3;
  }

  [layer3 setMaskedCorners:v27];
LABEL_24:

  [(WDMedicalRecordGroupableCell *)self _topPadding];
  v37 = v36;
  topConstraint2 = [(WDMedicalRecordGroupableCell *)self topConstraint];
  [topConstraint2 setConstant:v37];

  bottomConstraint2 = [(WDMedicalRecordGroupableCell *)self bottomConstraint];
  [bottomConstraint2 setConstant:0.0];

LABEL_25:
  pillBackgroundColor = [(WDMedicalRecordGroupableCell *)self pillBackgroundColor];
  pillBackgroundView5 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [pillBackgroundView5 setBackgroundColor:pillBackgroundColor];
}

- (void)_updateForCurrentSizeCategory
{
  v6.receiver = self;
  v6.super_class = WDMedicalRecordGroupableCell;
  [(WDMedicalRecordGroupableCell *)&v6 _updateForCurrentSizeCategory];
  traitCollection = [(WDMedicalRecordGroupableCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = HKUIContentSizeCategoryMin();

  [(WDMedicalRecordGroupableCell *)self _updateForContentSizeCategory:v5];
  [(WDMedicalRecordGroupableCell *)self _updateBasedOnAccessibilityCategory:UIContentSizeCategoryIsAccessibilityCategory(v5)];
}

- (void)_traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v16 = changeCopy;
  if (changeCopy)
  {
    traitCollection = [(WDMedicalRecordGroupableCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [v16 preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    changeCopy = v16;
    if ((v8 & 1) == 0)
    {
      [(WDMedicalRecordGroupableCell *)self _updateForCurrentSizeCategory];
      changeCopy = v16;
    }
  }

  [changeCopy displayPixel];
  traitCollection2 = [(WDMedicalRecordGroupableCell *)self traitCollection];
  [traitCollection2 displayPixel];
  v10 = HKUIEqualCGFloats();

  if ((v10 & 1) == 0)
  {
    traitCollection3 = [(WDMedicalRecordGroupableCell *)self traitCollection];
    [traitCollection3 displayPixel];
    v13 = v12;
    separatorView = [(WDMedicalRecordGroupableCell *)self separatorView];
    [separatorView setSeparatorThickness:v13];

    separatorView2 = [(WDMedicalRecordGroupableCell *)self separatorView];
    [separatorView2 setNeedsDisplay];
  }
}

- (UIEdgeInsets)separatorInsets
{
  top = self->_separatorInsets.top;
  left = self->_separatorInsets.left;
  bottom = self->_separatorInsets.bottom;
  right = self->_separatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end