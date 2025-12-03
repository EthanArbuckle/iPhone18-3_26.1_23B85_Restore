@interface HUTitleValueDescriptionCell
- (HUTitleValueDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateValue;
- (void)_updateValueHidden;
- (void)_updateValueWidthConstraintConstant;
- (void)prepareForReuse;
- (void)setHideValue:(BOOL)value;
- (void)setValueColorFollowsTintColor:(BOOL)color;
- (void)setValueFont:(id)font;
- (void)setValueText:(id)text;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUTitleValueDescriptionCell

- (HUTitleValueDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = HUTitleValueDescriptionCell;
  v4 = [(HUTitleDescriptionCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    valueFont = v4->_valueFont;
    v4->_valueFont = v5;

    [(HUTitleDescriptionCell *)v4 setMaxNumberOfTitleLines:0];
    v7 = MEMORY[0x277D756B8];
    titleText = [(HUTitleDescriptionCell *)v4 titleText];
    titleFont = [(HUTitleDescriptionCell *)v4 titleFont];
    v10 = [v7 labelWithText:titleText font:titleFont];
    valueLabel = v4->_valueLabel;
    v4->_valueLabel = v10;

    [(UILabel *)v4->_valueLabel _setTextColorFollowsTintColor:[(HUTitleValueDescriptionCell *)v4 valueColorFollowsTintColor]];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v4->_valueLabel setTextColor:systemGrayColor];
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

- (void)setHideValue:(BOOL)value
{
  if (self->_hideValue != value)
  {
    self->_hideValue = value;
    [(HUTitleValueDescriptionCell *)self _updateValueHidden];
  }
}

- (void)setValueText:(id)text
{
  textCopy = text;
  valueText = [(HUTitleValueDescriptionCell *)self valueText];
  v7 = textCopy;
  v10 = v7;
  if (valueText == v7)
  {

    goto LABEL_8;
  }

  if (!valueText)
  {

    goto LABEL_7;
  }

  v8 = [valueText isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_valueText, text);
    valueLabel = [(HUTitleValueDescriptionCell *)self valueLabel];
    [valueLabel setText:v10];

    [(HUTitleValueDescriptionCell *)self _updateValueHidden];
    [(HUTitleValueDescriptionCell *)self _updateValueWidthConstraintConstant];
  }

LABEL_8:
}

- (void)setValueFont:(id)font
{
  fontCopy = font;
  if (([(UIFont *)self->_valueFont isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_valueFont, font);
    valueLabel = [(HUTitleValueDescriptionCell *)self valueLabel];
    [valueLabel setFont:fontCopy];

    [(HUTitleValueDescriptionCell *)self _updateValueWidthConstraintConstant];
  }
}

- (void)setValueColorFollowsTintColor:(BOOL)color
{
  if (self->_valueColorFollowsTintColor != color)
  {
    colorCopy = color;
    self->_valueColorFollowsTintColor = color;
    valueLabel = [(HUTitleValueDescriptionCell *)self valueLabel];
    [valueLabel _setTextColorFollowsTintColor:colorCopy];

    [(HUTitleValueDescriptionCell *)self _updateValue];
  }
}

- (void)updateConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  valueLabel = [(HUTitleValueDescriptionCell *)self valueLabel];
  [valueLabel setNumberOfLines:0];

  v44.receiver = self;
  v44.super_class = HUTitleValueDescriptionCell;
  [(HUTitleDescriptionCell *)&v44 updateConstraints];
  valueLabel2 = [(HUTitleValueDescriptionCell *)self valueLabel];
  superview = [valueLabel2 superview];

  if (superview)
  {
    valueLabel3 = [(HUTitleValueDescriptionCell *)self valueLabel];
    centerYAnchor = [valueLabel3 centerYAnchor];
    contentView = [(HUTitleValueDescriptionCell *)self contentView];
    centerYAnchor2 = [contentView centerYAnchor];
    v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v11];

    contentView2 = [(HUTitleValueDescriptionCell *)self contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide trailingAnchor];
    valueLabel4 = [(HUTitleValueDescriptionCell *)self valueLabel];
    trailingAnchor2 = [valueLabel4 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
    [array addObject:v17];

    valueLabelWidthConstraint = [(HUTitleValueDescriptionCell *)self valueLabelWidthConstraint];

    if (!valueLabelWidthConstraint)
    {
      valueLabel5 = [(HUTitleValueDescriptionCell *)self valueLabel];
      widthAnchor = [valueLabel5 widthAnchor];
      v21 = [widthAnchor constraintEqualToConstant:1.0];
      [(HUTitleValueDescriptionCell *)self setValueLabelWidthConstraint:v21];
    }

    [(HUTitleValueDescriptionCell *)self _updateValueWidthConstraintConstant];
    valueLabelWidthConstraint2 = [(HUTitleValueDescriptionCell *)self valueLabelWidthConstraint];
    [array addObject:valueLabelWidthConstraint2];

    titleLabel = [(HUTitleDescriptionCell *)self titleLabel];
    trailingAnchor3 = [titleLabel trailingAnchor];
    constraintsAffectingLayout = [trailingAnchor3 constraintsAffectingLayout];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __48__HUTitleValueDescriptionCell_updateConstraints__block_invoke;
    v43[3] = &unk_277DBF850;
    v43[4] = self;
    [constraintsAffectingLayout na_each:v43];

    descriptionLabel = [(HUTitleDescriptionCell *)self descriptionLabel];
    trailingAnchor4 = [descriptionLabel trailingAnchor];
    constraintsAffectingLayout2 = [trailingAnchor4 constraintsAffectingLayout];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __48__HUTitleValueDescriptionCell_updateConstraints__block_invoke_2;
    v42[3] = &unk_277DBF850;
    v42[4] = self;
    [constraintsAffectingLayout2 na_each:v42];

    titleTrailingConstraint = [(HUTitleDescriptionCell *)self titleTrailingConstraint];
    [titleTrailingConstraint setActive:0];

    descriptionTrailingConstraint = [(HUTitleDescriptionCell *)self descriptionTrailingConstraint];
    [descriptionTrailingConstraint setActive:0];

    valueLabel6 = [(HUTitleValueDescriptionCell *)self valueLabel];
    leadingAnchor = [valueLabel6 leadingAnchor];
    titleLabel2 = [(HUTitleDescriptionCell *)self titleLabel];
    trailingAnchor5 = [titleLabel2 trailingAnchor];
    v35 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor5 multiplier:1.0];
    [array addObject:v35];

    valueLabel7 = [(HUTitleValueDescriptionCell *)self valueLabel];
    leadingAnchor2 = [valueLabel7 leadingAnchor];
    descriptionLabel2 = [(HUTitleDescriptionCell *)self descriptionLabel];
    trailingAnchor6 = [descriptionLabel2 trailingAnchor];
    v40 = [leadingAnchor2 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor6 multiplier:1.0];
    [array addObject:v40];
  }

  else
  {
    valueLabelWidthConstraint3 = [(HUTitleValueDescriptionCell *)self valueLabelWidthConstraint];
    [valueLabelWidthConstraint3 setActive:0];

    [(HUTitleValueDescriptionCell *)self setValueLabelWidthConstraint:0];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:array];
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

- (void)updateUIWithAnimation:(BOOL)animation
{
  v9.receiver = self;
  v9.super_class = HUTitleValueDescriptionCell;
  [(HUTitleDescriptionCell *)&v9 updateUIWithAnimation:animation];
  objc_opt_class();
  item = [(HUIconCell *)self item];
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E30]];
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
  valueLabel = [(HUTitleValueDescriptionCell *)self valueLabel];
  [(HUTitleValueDescriptionCell *)self bounds];
  [valueLabel sizeThatFits:{v4, v5}];
  v7 = v6;

  valueLabelWidthConstraint = [(HUTitleValueDescriptionCell *)self valueLabelWidthConstraint];

  if (valueLabelWidthConstraint)
  {
    valueLabelWidthConstraint2 = [(HUTitleValueDescriptionCell *)self valueLabelWidthConstraint];
    [valueLabelWidthConstraint2 setConstant:v7];
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
    valueText = [(HUTitleValueDescriptionCell *)self valueText];
    v3 = [valueText length] == 0;
  }

  valueLabel = [(HUTitleValueDescriptionCell *)self valueLabel];
  superview = [valueLabel superview];

  if (((v3 ^ (superview != 0)) & 1) == 0)
  {
    if (v3)
    {
      valueLabel2 = [(HUTitleValueDescriptionCell *)self valueLabel];
      [valueLabel2 removeFromSuperview];
    }

    else
    {
      containerView = [(HUIconCell *)self containerView];
      valueLabel3 = [(HUTitleValueDescriptionCell *)self valueLabel];
      [containerView addSubview:valueLabel3];

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