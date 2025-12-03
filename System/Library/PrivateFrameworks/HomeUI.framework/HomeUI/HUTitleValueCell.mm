@interface HUTitleValueCell
- (HUTitleValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_verticalConstraintsForContentSubview:(id)subview;
- (void)_addTitleLabel;
- (void)_addValueLabel;
- (void)_ensureCorrectHeaderViewOrientation;
- (void)_updateTitle;
- (void)_updateValue;
- (void)copy:(id)copy;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)disabled;
- (void)setHideTitle:(BOOL)title;
- (void)setHideValue:(BOOL)value;
- (void)setTitleColorFollowsTintColor:(BOOL)color;
- (void)setTitleFont:(id)font;
- (void)setTitleText:(id)text;
- (void)setValueColorFollowsTintColor:(BOOL)color;
- (void)setValueFont:(id)font;
- (void)setValueText:(id)text;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUTitleValueCell

- (HUTitleValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = HUTitleValueCell;
  v4 = [(HUIconCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = *MEMORY[0x277D76918];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    titleFont = v4->_titleFont;
    v4->_titleFont = v6;

    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:v5];
    valueFont = v4->_valueFont;
    v4->_valueFont = v8;

    v10 = objc_alloc_init(MEMORY[0x277D75A68]);
    labelsStackView = v4->_labelsStackView;
    v4->_labelsStackView = v10;

    [(UIStackView *)v4->_labelsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_labelsStackView setAxis:0];
    v4->_useVerticalLayoutOnly = 0;
    containerView = [(HUIconCell *)v4 containerView];
    [containerView addSubview:v4->_labelsStackView];

    [(HUTitleValueCell *)v4 _addTitleLabel];
    [(HUTitleValueCell *)v4 _addValueLabel];
  }

  return v4;
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = HUTitleValueCell;
  [(HUIconCell *)&v7 prepareForReuse];
  [(HUTitleValueCell *)self setHideTitle:0];
  [(HUTitleValueCell *)self setTitleText:0];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(HUTitleValueCell *)self setTitleFont:v3];

  [(HUTitleValueCell *)self setHideValue:0];
  [(HUTitleValueCell *)self setValueText:0];
  defaultValueFont = [objc_opt_class() defaultValueFont];
  [(HUTitleValueCell *)self setValueFont:defaultValueFont];

  titleLabel = [(HUTitleValueCell *)self titleLabel];
  [titleLabel setNumberOfLines:1];

  valueLabel = [(HUTitleValueCell *)self valueLabel];
  [valueLabel setNumberOfLines:1];

  [(HUTitleValueCell *)self setValueColorFollowsTintColor:0];
  [(HUTitleValueCell *)self setTitleColorFollowsTintColor:0];
  [(HUTitleValueCell *)self setAllowCopyValueToPasteboard:0];
  [(HUTitleValueCell *)self setUseVerticalLayoutOnly:0];
  [(HUTitleValueCell *)self setAccessoryView:0];
  [(HUTitleValueCell *)self setNeedsUpdateConstraints];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HUTitleValueCell;
  [(HUTitleValueCell *)&v3 tintColorDidChange];
  [(HUTitleValueCell *)self _updateValue];
}

- (void)copy:(id)copy
{
  generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
  valueLabel = [(HUTitleValueCell *)self valueLabel];
  text = [valueLabel text];
  [generalPasteboard setString:text];
}

- (void)setTitleText:(id)text
{
  objc_storeStrong(&self->_titleText, text);
  textCopy = text;
  titleLabel = [(HUTitleValueCell *)self titleLabel];
  [titleLabel setText:textCopy];

  titleLabel2 = [(HUTitleValueCell *)self titleLabel];
  [titleLabel2 sizeToFit];
}

- (void)setTitleFont:(id)font
{
  objc_storeStrong(&self->_titleFont, font);
  fontCopy = font;
  titleLabel = [(HUTitleValueCell *)self titleLabel];
  [titleLabel setFont:fontCopy];
}

- (void)setHideTitle:(BOOL)title
{
  if (self->_hideTitle != title)
  {
    self->_hideTitle = title;
    if (title)
    {
      titleLabel = self->_titleLabel;

      [(UILabel *)titleLabel removeFromSuperview];
    }

    else
    {
      [(HUTitleValueCell *)self _addTitleLabel];

      [(HUTitleValueCell *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setValueText:(id)text
{
  objc_storeStrong(&self->_valueText, text);
  textCopy = text;
  valueLabel = [(HUTitleValueCell *)self valueLabel];
  [valueLabel setText:textCopy];

  valueLabel2 = [(HUTitleValueCell *)self valueLabel];
  [valueLabel2 sizeToFit];
}

- (void)setValueFont:(id)font
{
  objc_storeStrong(&self->_valueFont, font);
  fontCopy = font;
  valueLabel = [(HUTitleValueCell *)self valueLabel];
  [valueLabel setFont:fontCopy];
}

- (void)setTitleColorFollowsTintColor:(BOOL)color
{
  colorCopy = color;
  self->_titleColorFollowsTintColor = color;
  titleLabel = [(HUTitleValueCell *)self titleLabel];
  [titleLabel _setTextColorFollowsTintColor:colorCopy];

  [(HUTitleValueCell *)self _updateTitle];
}

- (void)setValueColorFollowsTintColor:(BOOL)color
{
  colorCopy = color;
  self->_valueColorFollowsTintColor = color;
  valueLabel = [(HUTitleValueCell *)self valueLabel];
  [valueLabel _setTextColorFollowsTintColor:colorCopy];

  [(HUTitleValueCell *)self _updateValue];
}

- (void)setHideValue:(BOOL)value
{
  if (self->_hideValue != value)
  {
    self->_hideValue = value;
    if (value)
    {
      valueLabel = self->_valueLabel;

      [(UILabel *)valueLabel removeFromSuperview];
    }

    else
    {
      [(HUTitleValueCell *)self _addValueLabel];

      [(HUTitleValueCell *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v5.receiver = self;
  v5.super_class = HUTitleValueCell;
  [(HUIconCell *)&v5 setDisabled:?];
  [(HUTitleValueCell *)self _updateTitle];
  [(HUTitleValueCell *)self setUserInteractionEnabled:!disabledCopy];
}

- (void)updateConstraints
{
  v22[4] = *MEMORY[0x277D85DE8];
  stackViewConstraints = [(HUTitleValueCell *)self stackViewConstraints];

  if (!stackViewConstraints)
  {
    containerView = [(HUIconCell *)self containerView];
    topAnchor = [containerView topAnchor];

    containerView2 = [(HUIconCell *)self containerView];
    bottomAnchor = [containerView2 bottomAnchor];

    topAnchor2 = [(UIStackView *)self->_labelsStackView topAnchor];
    v17 = [topAnchor2 constraintEqualToAnchor:topAnchor];
    v22[0] = v17;
    bottomAnchor2 = [(UIStackView *)self->_labelsStackView bottomAnchor];
    v15 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor];
    v22[1] = v15;
    leadingAnchor = [(UIStackView *)self->_labelsStackView leadingAnchor];
    containerView3 = [(HUIconCell *)self containerView];
    leadingAnchor2 = [containerView3 leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v22[2] = v8;
    trailingAnchor = [(UIStackView *)self->_labelsStackView trailingAnchor];
    containerView4 = [(HUIconCell *)self containerView];
    trailingAnchor2 = [containerView4 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v22[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

    [(HUTitleValueCell *)self setStackViewConstraints:v13];
    [(UIStackView *)self->_labelsStackView updateConstraintsIfNeeded];
    [(UIStackView *)self->_labelsStackView setNeedsLayout];
    [MEMORY[0x277CCAAD0] activateConstraints:v13];
  }

  [(HUTitleValueCell *)self _ensureCorrectHeaderViewOrientation];
  v21.receiver = self;
  v21.super_class = HUTitleValueCell;
  [(HUIconCell *)&v21 updateConstraints];
}

- (id)_verticalConstraintsForContentSubview:(id)subview
{
  v25[3] = *MEMORY[0x277D85DE8];
  subviewCopy = subview;
  if ([(UIStackView *)self->_labelsStackView axis])
  {
    superview = [subviewCopy superview];
    contentView = [(HUTitleValueCell *)self contentView];
    v7 = [superview isEqual:contentView];

    if ((v7 & 1) == 0)
    {
      NSLog(&cfstr_NotAContentvie.isa);
    }

    topAnchor = [subviewCopy topAnchor];
    contentView2 = [(HUTitleValueCell *)self contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v19 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v25[0] = v19;
    bottomAnchor = [subviewCopy bottomAnchor];
    contentView3 = [(HUTitleValueCell *)self contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v11 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v25[1] = v11;
    centerYAnchor = [subviewCopy centerYAnchor];
    contentView4 = [(HUTitleValueCell *)self contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v25[2] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = HUTitleValueCell;
    v16 = [(HUIconCell *)&v24 _verticalConstraintsForContentSubview:subviewCopy];
  }

  return v16;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = HUTitleValueCell;
  [(HUTitleValueCell *)&v4 traitCollectionDidChange:change];
  [(HUTitleValueCell *)self _ensureCorrectHeaderViewOrientation];
}

- (void)_ensureCorrectHeaderViewOrientation
{
  v3 = self->_labelsStackView;
  titleLabel = [(HUTitleValueCell *)self titleLabel];
  valueLabel = [(HUTitleValueCell *)self valueLabel];
  defaultValueFont = [objc_opt_class() defaultValueFont];
  [valueLabel setFont:defaultValueFont];

  if (titleLabel && valueLabel)
  {
    [titleLabel sizeToFit];
    [valueLabel sizeToFit];
    text = [titleLabel text];
    if ([text length])
    {
      text2 = [valueLabel text];
      if ([text2 length])
      {
        [(HUTitleValueCell *)self labelSpacing];
      }

      else
      {
        v9 = 0.0;
      }

      [(UIStackView *)v3 setSpacing:v9];
    }

    else
    {
      [(UIStackView *)v3 setSpacing:0.0];
    }

    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __55__HUTitleValueCell__ensureCorrectHeaderViewOrientation__block_invoke;
    v19 = &unk_277DC1A90;
    selfCopy = self;
    v10 = titleLabel;
    v21 = v10;
    v11 = valueLabel;
    v22 = v11;
    v12 = v3;
    v23 = v12;
    v13 = __55__HUTitleValueCell__ensureCorrectHeaderViewOrientation__block_invoke(&v16);
    [(UIStackView *)v12 setDistribution:0, v16, v17, v18, v19, selfCopy];
    if (v13)
    {
      v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
      [v11 setFont:v14];

      [(UIStackView *)v12 setSpacing:0.0];
      [(UIStackView *)v12 setAxis:1];
      [(UIStackView *)v12 setAlignment:0];
      [v10 setNumberOfLines:0];
      [v11 setNumberOfLines:0];
      v15 = 4;
    }

    else
    {
      [(UIStackView *)v12 setAxis:0];
      [(UIStackView *)v12 setAlignment:2];
      [v10 setNumberOfLines:1];
      [v11 setNumberOfLines:1];
      v15 = 2 * ([(HUTitleValueCell *)self effectiveUserInterfaceLayoutDirection]== 0);
    }

    [v11 setTextAlignment:v15];
  }
}

BOOL __55__HUTitleValueCell__ensureCorrectHeaderViewOrientation__block_invoke(id *a1)
{
  if ([a1[4] useVerticalLayoutOnly])
  {
    return 1;
  }

  v3 = [a1[4] iconView];
  v4 = [v3 iconDescriptor];
  Width = 0.0;
  v6 = 0.0;
  if (v4 && ([a1[4] hideIcon] & 1) == 0)
  {
    v7 = [a1[4] contentMetrics];
    [v7 iconSize];
    v9 = v8;
    v10 = [a1[4] contentMetrics];
    [v10 contentInset];
    v12 = v9 + v11;
    v13 = [a1[4] contentMetrics];
    [v13 contentInset];
    v6 = v12 + v14;
  }

  v15 = [a1[4] accessoryView];
  if (v15)
  {
    v16 = [a1[4] accessoryView];
    [v16 frame];
    Width = CGRectGetWidth(v24);
  }

  [a1[5] frame];
  v17 = CGRectGetWidth(v25);
  [a1[6] frame];
  v18 = v17 + CGRectGetWidth(v26);
  [a1[7] spacing];
  v20 = v18 + v19;
  v21 = [a1[4] contentView];
  v22 = [v21 readableContentGuide];
  [v22 layoutFrame];
  v23 = CGRectGetWidth(v27) - v6 - Width;

  return v20 > v23;
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v32[2] = *MEMORY[0x277D85DE8];
  item = [(HUIconCell *)self item];
  latestResults = [item latestResults];

  v30.receiver = self;
  v30.super_class = HUTitleValueCell;
  [(HUIconCell *)&v30 updateUIWithAnimation:animationCopy];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [(HUTitleValueCell *)self setTitleText:v7];

  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
  [(HUTitleValueCell *)self setAccessibilityIdentifier:v8];

  v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  if (v9 || ([latestResults objectForKeyedSubscript:*MEMORY[0x277D13E30]], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    valueLabel7 = v9;
    v31[0] = *MEMORY[0x277D740A8];
    valueLabel = [(HUTitleValueCell *)self valueLabel];
    font = [valueLabel font];
    v32[0] = font;
    v31[1] = *MEMORY[0x277D740C0];
    valueLabel2 = [(HUTitleValueCell *)self valueLabel];
    textColor = [valueLabel2 textColor];
    v32[1] = textColor;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

    if ([valueLabel7 prefersDynamicString])
    {
      valueLabel3 = [(HUTitleValueCell *)self valueLabel];
      [valueLabel3 bounds];
      valueLabel5 = [valueLabel7 dynamicStringForSize:v15 attributes:{v17, v18}];
      valueLabel4 = [(HUTitleValueCell *)self valueLabel];
      [valueLabel4 setAttributedText:valueLabel5];
    }

    else
    {
      valueLabel3 = [valueLabel7 stringWithAttributes:v15];
      valueLabel5 = [(HUTitleValueCell *)self valueLabel];
      [valueLabel5 setAttributedText:valueLabel3];
    }

    valueLabel6 = [(HUTitleValueCell *)self valueLabel];
    [valueLabel6 sizeToFit];
  }

  else
  {
    valueLabel7 = [(HUTitleValueCell *)self valueLabel];
    [valueLabel7 setAttributedText:0];
  }

  objc_opt_class();
  accessoryView = [(HUTitleValueCell *)self accessoryView];
  if (objc_opt_isKindOfClass())
  {
    v23 = accessoryView;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v25 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DE0]];
  unsignedIntegerValue = [v25 unsignedIntegerValue];

  if (unsignedIntegerValue == 2)
  {
    if (!v24)
    {
      v27 = [HUBadgeAndDisclosureAccessoryView alloc];
      accessoryView = [(HUBadgeAndDisclosureAccessoryView *)v27 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    }

    v28 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DD0]];
    -[HUBadgeAndDisclosureAccessoryView setBadgeCount:](accessoryView, "setBadgeCount:", [v28 integerValue]);

    [(HUBadgeAndDisclosureAccessoryView *)accessoryView sizeToFit];
    v29 = accessoryView;
    goto LABEL_16;
  }

  if (v24)
  {
    v29 = 0;
LABEL_16:
    [(HUTitleValueCell *)self setAccessoryView:v29];
  }

  [(HUTitleValueCell *)self _updateTitle];
  [(HUTitleValueCell *)self _ensureCorrectHeaderViewOrientation];
}

- (void)_addTitleLabel
{
  superview = [(UILabel *)self->_titleLabel superview];

  if (superview)
  {
    NSLog(&cfstr_TitleLabelAlre.isa, self);
  }

  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = self->_titleLabel;
    self->_titleLabel = v6;

    [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    titleFont = [(HUTitleValueCell *)self titleFont];
    [(UILabel *)self->_titleLabel setFont:titleFont];

    titleText = [(HUTitleValueCell *)self titleText];
    [(UILabel *)self->_titleLabel setText:titleText];

    [(UILabel *)self->_titleLabel _setTextColorFollowsTintColor:[(HUTitleValueCell *)self titleColorFollowsTintColor]];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)self->_titleLabel setTextColor:labelColor];

    [(UILabel *)self->_titleLabel setLineBreakMode:0];
    titleLabel = self->_titleLabel;
  }

  [(UIStackView *)self->_labelsStackView addArrangedSubview:titleLabel];

  [(HUTitleValueCell *)self _updateTitle];
}

- (void)_addValueLabel
{
  superview = [(UILabel *)self->_valueLabel superview];

  if (superview)
  {
    NSLog(&cfstr_ValueLabelAlre.isa, self);
  }

  valueLabel = self->_valueLabel;
  if (!valueLabel)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v7 = self->_valueLabel;
    self->_valueLabel = v6;

    [(UILabel *)self->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    valueFont = [(HUTitleValueCell *)self valueFont];
    [(UILabel *)self->_valueLabel setFont:valueFont];

    valueText = [(HUTitleValueCell *)self valueText];
    [(UILabel *)self->_valueLabel setText:valueText];

    [(UILabel *)self->_valueLabel _setTextColorFollowsTintColor:[(HUTitleValueCell *)self valueColorFollowsTintColor]];
    [(UILabel *)self->_valueLabel setLineBreakMode:0];
    valueLabel = self->_valueLabel;
  }

  [(UIStackView *)self->_labelsStackView addArrangedSubview:valueLabel];

  [(HUTitleValueCell *)self _updateValue];
}

- (void)_updateTitle
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__HUTitleValueCell__updateTitle__block_invoke;
  v4[3] = &unk_277DBF240;
  v4[4] = self;
  v3 = __32__HUTitleValueCell__updateTitle__block_invoke(v4);
  [(UILabel *)self->_titleLabel setTextColor:v3];
  [(HUTitleValueCell *)self setTextColor:v3];
}

id __32__HUTitleValueCell__updateTitle__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDisabled])
  {
    v2 = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    if ([*(a1 + 32) titleColorFollowsTintColor])
    {
      [*(a1 + 32) tintColor];
    }

    else
    {
      [MEMORY[0x277D75348] labelColor];
    }
    v2 = ;
  }

  return v2;
}

- (void)_updateValue
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__HUTitleValueCell__updateValue__block_invoke;
  v4[3] = &unk_277DBF240;
  v4[4] = self;
  v3 = __32__HUTitleValueCell__updateValue__block_invoke(v4);
  [(UILabel *)self->_valueLabel setTextColor:v3];
}

id __32__HUTitleValueCell__updateValue__block_invoke(uint64_t a1)
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