@interface HUTitleValueDescriptionCell
- (HUTitleValueDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateValue;
- (void)_updateValueHidden;
- (void)_updateValueWidthConstraintConstant;
- (void)prepareForReuse;
- (void)setHideValue:(BOOL)a3;
- (void)setValueColorFollowsTintColor:(BOOL)a3;
- (void)setValueFont:(id)a3;
- (void)setValueText:(id)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUTitleValueDescriptionCell

- (HUTitleValueDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v14.receiver = self;
  v14.super_class = HUTitleValueDescriptionCell;
  v4 = [(HUTitleDescriptionCell *)&v14 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    valueFont = v4->_valueFont;
    v4->_valueFont = v5;

    [(HUTitleDescriptionCell *)v4 setMaxNumberOfTitleLines:0];
    v7 = MEMORY[0x277D756B8];
    v8 = [(HUTitleDescriptionCell *)v4 titleText];
    v9 = [(HUTitleDescriptionCell *)v4 titleFont];
    v10 = [v7 labelWithText:v8 font:v9];
    valueLabel = v4->_valueLabel;
    v4->_valueLabel = v10;

    [(UILabel *)v4->_valueLabel _setTextColorFollowsTintColor:[(HUTitleValueDescriptionCell *)v4 valueColorFollowsTintColor]];
    v12 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v4->_valueLabel setTextColor:v12];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUTitleValueDescriptionCell;
  [(HUTitleDescriptionCell *)&v4 prepareForReuse];
  [(HUTitleValueDescriptionCell *)self setHideValue:0];
  [(HUTitleValueDescriptionCell *)self setValueText:0];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(HUTitleValueDescriptionCell *)self setValueFont:v3];

  [(HUTitleValueDescriptionCell *)self setValueColorFollowsTintColor:0];
}

- (void)setHideValue:(BOOL)a3
{
  if (self->_hideValue != a3)
  {
    self->_hideValue = a3;
    [(HUTitleValueDescriptionCell *)self _updateValueHidden];
  }
}

- (void)setValueText:(id)a3
{
  v5 = a3;
  v6 = [(HUTitleValueDescriptionCell *)self valueText];
  v7 = v5;
  v10 = v7;
  if (v6 == v7)
  {

    goto LABEL_8;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_valueText, a3);
    v9 = [(HUTitleValueDescriptionCell *)self valueLabel];
    [v9 setText:v10];

    [(HUTitleValueDescriptionCell *)self _updateValueHidden];
    [(HUTitleValueDescriptionCell *)self _updateValueWidthConstraintConstant];
  }

LABEL_8:
}

- (void)setValueFont:(id)a3
{
  v6 = a3;
  if (([(UIFont *)self->_valueFont isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_valueFont, a3);
    v5 = [(HUTitleValueDescriptionCell *)self valueLabel];
    [v5 setFont:v6];

    [(HUTitleValueDescriptionCell *)self _updateValueWidthConstraintConstant];
  }
}

- (void)setValueColorFollowsTintColor:(BOOL)a3
{
  if (self->_valueColorFollowsTintColor != a3)
  {
    v4 = a3;
    self->_valueColorFollowsTintColor = a3;
    v6 = [(HUTitleValueDescriptionCell *)self valueLabel];
    [v6 _setTextColorFollowsTintColor:v4];

    [(HUTitleValueDescriptionCell *)self _updateValue];
  }
}

- (void)updateConstraints
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HUTitleValueDescriptionCell *)self valueLabel];
  [v4 setNumberOfLines:0];

  v44.receiver = self;
  v44.super_class = HUTitleValueDescriptionCell;
  [(HUTitleDescriptionCell *)&v44 updateConstraints];
  v5 = [(HUTitleValueDescriptionCell *)self valueLabel];
  v6 = [v5 superview];

  if (v6)
  {
    v7 = [(HUTitleValueDescriptionCell *)self valueLabel];
    v8 = [v7 centerYAnchor];
    v9 = [(HUTitleValueDescriptionCell *)self contentView];
    v10 = [v9 centerYAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    [v3 addObject:v11];

    v12 = [(HUTitleValueDescriptionCell *)self contentView];
    v13 = [v12 layoutMarginsGuide];
    v14 = [v13 trailingAnchor];
    v15 = [(HUTitleValueDescriptionCell *)self valueLabel];
    v16 = [v15 trailingAnchor];
    v17 = [v14 constraintEqualToSystemSpacingAfterAnchor:v16 multiplier:1.0];
    [v3 addObject:v17];

    v18 = [(HUTitleValueDescriptionCell *)self valueLabelWidthConstraint];

    if (!v18)
    {
      v19 = [(HUTitleValueDescriptionCell *)self valueLabel];
      v20 = [v19 widthAnchor];
      v21 = [v20 constraintEqualToConstant:1.0];
      [(HUTitleValueDescriptionCell *)self setValueLabelWidthConstraint:v21];
    }

    [(HUTitleValueDescriptionCell *)self _updateValueWidthConstraintConstant];
    v22 = [(HUTitleValueDescriptionCell *)self valueLabelWidthConstraint];
    [v3 addObject:v22];

    v23 = [(HUTitleDescriptionCell *)self titleLabel];
    v24 = [v23 trailingAnchor];
    v25 = [v24 constraintsAffectingLayout];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __48__HUTitleValueDescriptionCell_updateConstraints__block_invoke;
    v43[3] = &unk_277DBF850;
    v43[4] = self;
    [v25 na_each:v43];

    v26 = [(HUTitleDescriptionCell *)self descriptionLabel];
    v27 = [v26 trailingAnchor];
    v28 = [v27 constraintsAffectingLayout];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __48__HUTitleValueDescriptionCell_updateConstraints__block_invoke_2;
    v42[3] = &unk_277DBF850;
    v42[4] = self;
    [v28 na_each:v42];

    v29 = [(HUTitleDescriptionCell *)self titleTrailingConstraint];
    [v29 setActive:0];

    v30 = [(HUTitleDescriptionCell *)self descriptionTrailingConstraint];
    [v30 setActive:0];

    v31 = [(HUTitleValueDescriptionCell *)self valueLabel];
    v32 = [v31 leadingAnchor];
    v33 = [(HUTitleDescriptionCell *)self titleLabel];
    v34 = [v33 trailingAnchor];
    v35 = [v32 constraintEqualToSystemSpacingAfterAnchor:v34 multiplier:1.0];
    [v3 addObject:v35];

    v36 = [(HUTitleValueDescriptionCell *)self valueLabel];
    v37 = [v36 leadingAnchor];
    v38 = [(HUTitleDescriptionCell *)self descriptionLabel];
    v39 = [v38 trailingAnchor];
    v40 = [v37 constraintEqualToSystemSpacingAfterAnchor:v39 multiplier:1.0];
    [v3 addObject:v40];
  }

  else
  {
    v41 = [(HUTitleValueDescriptionCell *)self valueLabelWidthConstraint];
    [v41 setActive:0];

    [(HUTitleValueDescriptionCell *)self setValueLabelWidthConstraint:0];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v3];
}

void __48__HUTitleValueDescriptionCell_updateConstraints__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 firstAnchor];
  v4 = [*(a1 + 32) titleLabel];
  v5 = [v4 trailingAnchor];
  if ([v3 isEqual:v5])
  {
    [v13 secondAnchor];
  }

  else
  {
    [v13 firstAnchor];
  }
  v6 = ;

  v7 = [*(a1 + 32) titleLabel];
  v8 = [v7 superview];
  v9 = [v8 trailingAnchor];
  if ([v6 isEqual:v9])
  {
  }

  else
  {
    v10 = [*(a1 + 32) containerView];
    v11 = [v10 trailingAnchor];
    v12 = [v6 isEqual:v11];

    if (!v12)
    {
      goto LABEL_8;
    }
  }

  [v13 setActive:0];
LABEL_8:
}

void __48__HUTitleValueDescriptionCell_updateConstraints__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 firstAnchor];
  v4 = [*(a1 + 32) descriptionLabel];
  v5 = [v4 trailingAnchor];
  if ([v3 isEqual:v5])
  {
    [v13 secondAnchor];
  }

  else
  {
    [v13 firstAnchor];
  }
  v6 = ;

  v7 = [*(a1 + 32) descriptionLabel];
  v8 = [v7 superview];
  v9 = [v8 trailingAnchor];
  if ([v6 isEqual:v9])
  {
  }

  else
  {
    v10 = [*(a1 + 32) containerView];
    v11 = [v10 trailingAnchor];
    v12 = [v6 isEqual:v11];

    if (!v12)
    {
      goto LABEL_8;
    }
  }

  [v13 setActive:0];
LABEL_8:
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = HUTitleValueDescriptionCell;
  [(HUTitleDescriptionCell *)&v9 updateUIWithAnimation:a3];
  objc_opt_class();
  v4 = [(HUIconCell *)self item];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13E30]];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(HUTitleValueDescriptionCell *)self setValueText:v8];

  [(HUTitleValueDescriptionCell *)self _updateValueWidthConstraintConstant];
}

- (void)_updateValueWidthConstraintConstant
{
  v3 = [(HUTitleValueDescriptionCell *)self valueLabel];
  [(HUTitleValueDescriptionCell *)self bounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;

  v8 = [(HUTitleValueDescriptionCell *)self valueLabelWidthConstraint];

  if (v8)
  {
    v9 = [(HUTitleValueDescriptionCell *)self valueLabelWidthConstraint];
    [v9 setConstant:v7];
  }
}

- (void)_updateValueHidden
{
  if ([(HUTitleValueDescriptionCell *)self hideValue])
  {
    v3 = 1;
  }

  else
  {
    v4 = [(HUTitleValueDescriptionCell *)self valueText];
    v3 = [v4 length] == 0;
  }

  v5 = [(HUTitleValueDescriptionCell *)self valueLabel];
  v6 = [v5 superview];

  if (((v3 ^ (v6 != 0)) & 1) == 0)
  {
    if (v3)
    {
      v7 = [(HUTitleValueDescriptionCell *)self valueLabel];
      [v7 removeFromSuperview];
    }

    else
    {
      v8 = [(HUIconCell *)self containerView];
      v9 = [(HUTitleValueDescriptionCell *)self valueLabel];
      [v8 addSubview:v9];

      [(HUTitleValueDescriptionCell *)self _updateValueWidthConstraintConstant];
    }

    [(HUTitleValueDescriptionCell *)self setNeedsUpdateConstraints];

    [(HUTitleDescriptionCell *)self updateTitle];
  }
}

- (void)_updateValue
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__HUTitleValueDescriptionCell__updateValue__block_invoke;
  v4[3] = &unk_277DBF240;
  v4[4] = self;
  v3 = __43__HUTitleValueDescriptionCell__updateValue__block_invoke(v4);
  [(UILabel *)self->_valueLabel setTextColor:v3];
}

id __43__HUTitleValueDescriptionCell__updateValue__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isDisabled] & 1) != 0 || (objc_msgSend(*(a1 + 32), "valueColorFollowsTintColor") & 1) == 0)
  {
    v2 = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    v2 = [*(a1 + 32) tintColor];
  }

  return v2;
}

@end