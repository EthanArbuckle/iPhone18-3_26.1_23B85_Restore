@interface WDMedicalRecordGroupableCell
- (UIEdgeInsets)separatorInsets;
- (WDMedicalRecordGroupableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_traitCollectionDidChange:(id)a3;
- (void)_updateForCurrentSizeCategory;
- (void)_updateForIntendedPlacement;
- (void)prepareForReuse;
- (void)setExtraTopPadding:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setIntendedPlacement:(int64_t)a3;
- (void)setPillBackgroundColorOverride:(id)a3;
- (void)setSeparatorDashStyle:(int64_t)a3 hidden:(BOOL)a4;
- (void)setSeparatorInsets:(UIEdgeInsets)a3;
- (void)setUpConstraints;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordGroupableCell

- (WDMedicalRecordGroupableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = WDMedicalRecordGroupableCell;
  v4 = [(WDMedicalRecordGroupableCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
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

  v4 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(WDMedicalRecordGroupableCell *)self setPillBackgroundColor:v4];

  v5 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(WDMedicalRecordGroupableCell *)self contentView];
  v7 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [v6 addSubview:v7];

  [(WDMedicalRecordGroupableCell *)self setSeparatorInsets:0.0, 16.0, 0.0, 16.0];
  v8 = objc_alloc(MEMORY[0x1E69A44A8]);
  v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(WDMedicalRecordGroupableCell *)self setSeparatorView:v9];

  v10 = [(WDMedicalRecordGroupableCell *)self separatorView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(WDMedicalRecordGroupableCell *)self traitCollection];
  [v11 displayPixel];
  v13 = v12;
  v14 = [(WDMedicalRecordGroupableCell *)self separatorView];
  [v14 setSeparatorThickness:v13];

  v15 = [MEMORY[0x1E69DC888] hk_clinicalRecordSeparatorColor];
  v16 = [(WDMedicalRecordGroupableCell *)self separatorView];
  [v16 setColor:v15];

  v17 = [(WDMedicalRecordGroupableCell *)self separatorView];
  [v17 setDashStyle:1];

  v18 = [(WDMedicalRecordGroupableCell *)self contentView];
  v19 = [(WDMedicalRecordGroupableCell *)self separatorView];
  [v18 addSubview:v19];

  v20 = [(WDMedicalRecordGroupableCell *)self separatorView];
  -[WDMedicalRecordGroupableCell setSeparatorDashStyle:hidden:](self, "setSeparatorDashStyle:hidden:", [v20 dashStyle], 1);
}

- (void)setUpConstraints
{
  v48[7] = *MEMORY[0x1E69E9840];
  v3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v4 = [v3 topAnchor];
  v5 = [(WDMedicalRecordGroupableCell *)self contentView];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [(WDMedicalRecordGroupableCell *)self setTopConstraint:v7];

  v8 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v9 = [v8 bottomAnchor];
  v10 = [(WDMedicalRecordGroupableCell *)self contentView];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [(WDMedicalRecordGroupableCell *)self setBottomConstraint:v12];

  v13 = [(WDMedicalRecordGroupableCell *)self separatorView];
  v14 = [v13 leadingAnchor];
  v15 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v16 = [v15 leadingAnchor];
  [(WDMedicalRecordGroupableCell *)self separatorInsets];
  v18 = [v14 constraintEqualToAnchor:v16 constant:v17];
  [(WDMedicalRecordGroupableCell *)self setSeparatorLeadingConstant:v18];

  v19 = [(WDMedicalRecordGroupableCell *)self separatorView];
  v20 = [v19 trailingAnchor];
  v21 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v22 = [v21 trailingAnchor];
  [(WDMedicalRecordGroupableCell *)self separatorInsets];
  v24 = [v20 constraintEqualToAnchor:v22 constant:-v23];
  [(WDMedicalRecordGroupableCell *)self setSeparatorTrailingConstraint:v24];

  v38 = MEMORY[0x1E696ACD8];
  v47 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v45 = [v47 leadingAnchor];
  v46 = [(WDMedicalRecordGroupableCell *)self contentView];
  v44 = [v46 layoutMarginsGuide];
  v43 = [v44 leadingAnchor];
  v42 = [v45 constraintEqualToAnchor:v43];
  v48[0] = v42;
  v41 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v39 = [v41 trailingAnchor];
  v40 = [(WDMedicalRecordGroupableCell *)self contentView];
  v37 = [v40 layoutMarginsGuide];
  v36 = [v37 trailingAnchor];
  v35 = [v39 constraintEqualToAnchor:v36];
  v48[1] = v35;
  v25 = [(WDMedicalRecordGroupableCell *)self topConstraint];
  v48[2] = v25;
  v26 = [(WDMedicalRecordGroupableCell *)self bottomConstraint];
  v48[3] = v26;
  v27 = [(WDMedicalRecordGroupableCell *)self separatorView];
  v28 = [v27 bottomAnchor];
  v29 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  v30 = [v29 bottomAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  v48[4] = v31;
  v32 = [(WDMedicalRecordGroupableCell *)self separatorLeadingConstant];
  v48[5] = v32;
  v33 = [(WDMedicalRecordGroupableCell *)self separatorTrailingConstraint];
  v48[6] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:7];
  [v38 activateConstraints:v34];
}

- (void)setSeparatorDashStyle:(int64_t)a3 hidden:(BOOL)a4
{
  v4 = a4;
  v7 = [(WDMedicalRecordGroupableCell *)self separatorView];
  [v7 setDashStyle:a3];

  v8 = [(WDMedicalRecordGroupableCell *)self separatorView];
  [v8 setHidden:v4];
}

- (void)setSeparatorInsets:(UIEdgeInsets)a3
{
  self->_separatorInsets = a3;
  [(WDMedicalRecordGroupableCell *)self separatorInsets];
  v5 = v4;
  v6 = [(WDMedicalRecordGroupableCell *)self separatorLeadingConstant];
  [v6 setConstant:v5];

  [(WDMedicalRecordGroupableCell *)self separatorInsets];
  v8 = -v7;
  v9 = [(WDMedicalRecordGroupableCell *)self separatorTrailingConstraint];
  [v9 setConstant:v8];
}

- (void)setExtraTopPadding:(BOOL)a3
{
  self->_extraTopPadding = a3;
  v4 = 0.0;
  if (a3)
  {
    v4 = 10.0;
  }

  [(WDMedicalRecordGroupableCell *)self setSectionTopPadding:v4];
  [(WDMedicalRecordGroupableCell *)self _topPadding];
  v6 = v5;
  v7 = [(WDMedicalRecordGroupableCell *)self topConstraint];
  [v7 setConstant:v6];
}

- (void)setPillBackgroundColorOverride:(id)a3
{
  v5 = a3;
  if (self->_pillBackgroundColorOverride != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_pillBackgroundColorOverride, a3);
    [(WDMedicalRecordGroupableCell *)self _updateForIntendedPlacement];
    v5 = v6;
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(WDMedicalRecordGroupableCell *)self selectionStyle]== 3)
  {
    v11.receiver = self;
    v11.super_class = WDMedicalRecordGroupableCell;
    [(WDMedicalRecordGroupableCell *)&v11 setHighlighted:v5 animated:v4];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__WDMedicalRecordGroupableCell_setHighlighted_animated___block_invoke;
    v9[3] = &unk_1E83DCF40;
    v9[4] = self;
    v10 = v5;
    v7 = _Block_copy(v9);
    v8 = v7;
    if (v4)
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

- (void)setIntendedPlacement:(int64_t)a3
{
  if (self->_intendedPlacement != a3)
  {
    self->_intendedPlacement = a3;
    [(WDMedicalRecordGroupableCell *)self _updateForIntendedPlacement];
  }
}

- (void)_updateForIntendedPlacement
{
  intendedPlacement = self->_intendedPlacement;
  if (intendedPlacement == 1)
  {
    v7 = [MEMORY[0x1E69DC888] clearColor];
    v8 = [(WDMedicalRecordGroupableCell *)self contentView];
    [v8 setBackgroundColor:v7];

    v9 = [MEMORY[0x1E69DC888] clearColor];
    [(WDMedicalRecordGroupableCell *)self setBackgroundColor:v9];

    if (self->_pillBackgroundColorOverride)
    {
      goto LABEL_8;
    }

    v10 = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    if (!intendedPlacement)
    {
      v4 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      v5 = [(WDMedicalRecordGroupableCell *)self contentView];
      [v5 setBackgroundColor:v4];

      v6 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      [(WDMedicalRecordGroupableCell *)self setBackgroundColor:v6];

      if (self->_pillBackgroundColorOverride)
      {
        [(WDMedicalRecordGroupableCell *)self setPillBackgroundColor:?];
      }

      else
      {
        v14 = [MEMORY[0x1E69DC888] clearColor];
        [(WDMedicalRecordGroupableCell *)self setPillBackgroundColor:v14];
      }

      [(WDMedicalRecordGroupableCell *)self _topPadding];
      v16 = v15;
      v17 = [(WDMedicalRecordGroupableCell *)self topConstraint];
      [v17 setConstant:v16];

      v18 = [(WDMedicalRecordGroupableCell *)self bottomConstraint];
      [v18 setConstant:0.0];
      goto LABEL_13;
    }

    v11 = [MEMORY[0x1E69DC888] clearColor];
    v12 = [(WDMedicalRecordGroupableCell *)self contentView];
    [v12 setBackgroundColor:v11];

    v13 = [MEMORY[0x1E69DC888] clearColor];
    [(WDMedicalRecordGroupableCell *)self setBackgroundColor:v13];

    if (self->_pillBackgroundColorOverride)
    {
LABEL_8:
      [(WDMedicalRecordGroupableCell *)self setPillBackgroundColor:?];
      goto LABEL_14;
    }

    v10 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }

  v18 = v10;
  [(WDMedicalRecordGroupableCell *)self setPillBackgroundColor:v10];
LABEL_13:

LABEL_14:
  v19 = self->_intendedPlacement;
  if (v19 > 3)
  {
    if (v19 == 4)
    {
      v24 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
      v26 = [v24 layer];
      [v26 setCornerRadius:0.0];
      goto LABEL_24;
    }

    if (v19 != 5)
    {
      goto LABEL_25;
    }

    [(WDMedicalRecordGroupableCell *)self _cornerRadius];
    v29 = v28;
    v30 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
    v31 = [v30 layer];
    [v31 setCornerRadius:v29];

    v24 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
    v25 = [v24 layer];
    v26 = v25;
    v27 = 12;
  }

  else if (v19 == 2)
  {
    [(WDMedicalRecordGroupableCell *)self _cornerRadius];
    v33 = v32;
    v34 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
    v35 = [v34 layer];
    [v35 setCornerRadius:v33];

    v24 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
    v25 = [v24 layer];
    v26 = v25;
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
    v22 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
    v23 = [v22 layer];
    [v23 setCornerRadius:v21];

    v24 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
    v25 = [v24 layer];
    v26 = v25;
    v27 = 3;
  }

  [v25 setMaskedCorners:v27];
LABEL_24:

  [(WDMedicalRecordGroupableCell *)self _topPadding];
  v37 = v36;
  v38 = [(WDMedicalRecordGroupableCell *)self topConstraint];
  [v38 setConstant:v37];

  v39 = [(WDMedicalRecordGroupableCell *)self bottomConstraint];
  [v39 setConstant:0.0];

LABEL_25:
  v41 = [(WDMedicalRecordGroupableCell *)self pillBackgroundColor];
  v40 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  [v40 setBackgroundColor:v41];
}

- (void)_updateForCurrentSizeCategory
{
  v6.receiver = self;
  v6.super_class = WDMedicalRecordGroupableCell;
  [(WDMedicalRecordGroupableCell *)&v6 _updateForCurrentSizeCategory];
  v3 = [(WDMedicalRecordGroupableCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = HKUIContentSizeCategoryMin();

  [(WDMedicalRecordGroupableCell *)self _updateForContentSizeCategory:v5];
  [(WDMedicalRecordGroupableCell *)self _updateBasedOnAccessibilityCategory:UIContentSizeCategoryIsAccessibilityCategory(v5)];
}

- (void)_traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (v4)
  {
    v5 = [(WDMedicalRecordGroupableCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v16 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    v4 = v16;
    if ((v8 & 1) == 0)
    {
      [(WDMedicalRecordGroupableCell *)self _updateForCurrentSizeCategory];
      v4 = v16;
    }
  }

  [v4 displayPixel];
  v9 = [(WDMedicalRecordGroupableCell *)self traitCollection];
  [v9 displayPixel];
  v10 = HKUIEqualCGFloats();

  if ((v10 & 1) == 0)
  {
    v11 = [(WDMedicalRecordGroupableCell *)self traitCollection];
    [v11 displayPixel];
    v13 = v12;
    v14 = [(WDMedicalRecordGroupableCell *)self separatorView];
    [v14 setSeparatorThickness:v13];

    v15 = [(WDMedicalRecordGroupableCell *)self separatorView];
    [v15 setNeedsDisplay];
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