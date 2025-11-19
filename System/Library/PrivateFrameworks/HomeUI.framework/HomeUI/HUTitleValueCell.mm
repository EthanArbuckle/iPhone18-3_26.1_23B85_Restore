@interface HUTitleValueCell
- (HUTitleValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_verticalConstraintsForContentSubview:(id)a3;
- (void)_addTitleLabel;
- (void)_addValueLabel;
- (void)_ensureCorrectHeaderViewOrientation;
- (void)_updateTitle;
- (void)_updateValue;
- (void)copy:(id)a3;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)a3;
- (void)setHideTitle:(BOOL)a3;
- (void)setHideValue:(BOOL)a3;
- (void)setTitleColorFollowsTintColor:(BOOL)a3;
- (void)setTitleFont:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setValueColorFollowsTintColor:(BOOL)a3;
- (void)setValueFont:(id)a3;
- (void)setValueText:(id)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUTitleValueCell

- (HUTitleValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v14.receiver = self;
  v14.super_class = HUTitleValueCell;
  v4 = [(HUIconCell *)&v14 initWithStyle:a3 reuseIdentifier:a4];
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
    v12 = [(HUIconCell *)v4 containerView];
    [v12 addSubview:v4->_labelsStackView];

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
  v4 = [objc_opt_class() defaultValueFont];
  [(HUTitleValueCell *)self setValueFont:v4];

  v5 = [(HUTitleValueCell *)self titleLabel];
  [v5 setNumberOfLines:1];

  v6 = [(HUTitleValueCell *)self valueLabel];
  [v6 setNumberOfLines:1];

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

- (void)copy:(id)a3
{
  v6 = [MEMORY[0x277D75810] generalPasteboard];
  v4 = [(HUTitleValueCell *)self valueLabel];
  v5 = [v4 text];
  [v6 setString:v5];
}

- (void)setTitleText:(id)a3
{
  objc_storeStrong(&self->_titleText, a3);
  v5 = a3;
  v6 = [(HUTitleValueCell *)self titleLabel];
  [v6 setText:v5];

  v7 = [(HUTitleValueCell *)self titleLabel];
  [v7 sizeToFit];
}

- (void)setTitleFont:(id)a3
{
  objc_storeStrong(&self->_titleFont, a3);
  v5 = a3;
  v6 = [(HUTitleValueCell *)self titleLabel];
  [v6 setFont:v5];
}

- (void)setHideTitle:(BOOL)a3
{
  if (self->_hideTitle != a3)
  {
    self->_hideTitle = a3;
    if (a3)
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

- (void)setValueText:(id)a3
{
  objc_storeStrong(&self->_valueText, a3);
  v5 = a3;
  v6 = [(HUTitleValueCell *)self valueLabel];
  [v6 setText:v5];

  v7 = [(HUTitleValueCell *)self valueLabel];
  [v7 sizeToFit];
}

- (void)setValueFont:(id)a3
{
  objc_storeStrong(&self->_valueFont, a3);
  v5 = a3;
  v6 = [(HUTitleValueCell *)self valueLabel];
  [v6 setFont:v5];
}

- (void)setTitleColorFollowsTintColor:(BOOL)a3
{
  v3 = a3;
  self->_titleColorFollowsTintColor = a3;
  v5 = [(HUTitleValueCell *)self titleLabel];
  [v5 _setTextColorFollowsTintColor:v3];

  [(HUTitleValueCell *)self _updateTitle];
}

- (void)setValueColorFollowsTintColor:(BOOL)a3
{
  v3 = a3;
  self->_valueColorFollowsTintColor = a3;
  v5 = [(HUTitleValueCell *)self valueLabel];
  [v5 _setTextColorFollowsTintColor:v3];

  [(HUTitleValueCell *)self _updateValue];
}

- (void)setHideValue:(BOOL)a3
{
  if (self->_hideValue != a3)
  {
    self->_hideValue = a3;
    if (a3)
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

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = HUTitleValueCell;
  [(HUIconCell *)&v5 setDisabled:?];
  [(HUTitleValueCell *)self _updateTitle];
  [(HUTitleValueCell *)self setUserInteractionEnabled:!v3];
}

- (void)updateConstraints
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = [(HUTitleValueCell *)self stackViewConstraints];

  if (!v3)
  {
    v4 = [(HUIconCell *)self containerView];
    v20 = [v4 topAnchor];

    v5 = [(HUIconCell *)self containerView];
    v19 = [v5 bottomAnchor];

    v18 = [(UIStackView *)self->_labelsStackView topAnchor];
    v17 = [v18 constraintEqualToAnchor:v20];
    v22[0] = v17;
    v16 = [(UIStackView *)self->_labelsStackView bottomAnchor];
    v15 = [v16 constraintEqualToAnchor:v19];
    v22[1] = v15;
    v14 = [(UIStackView *)self->_labelsStackView leadingAnchor];
    v6 = [(HUIconCell *)self containerView];
    v7 = [v6 leadingAnchor];
    v8 = [v14 constraintEqualToAnchor:v7];
    v22[2] = v8;
    v9 = [(UIStackView *)self->_labelsStackView trailingAnchor];
    v10 = [(HUIconCell *)self containerView];
    v11 = [v10 trailingAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
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

- (id)_verticalConstraintsForContentSubview:(id)a3
{
  v25[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(UIStackView *)self->_labelsStackView axis])
  {
    v5 = [v4 superview];
    v6 = [(HUTitleValueCell *)self contentView];
    v7 = [v5 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      NSLog(&cfstr_NotAContentvie.isa);
    }

    v22 = [v4 topAnchor];
    v23 = [(HUTitleValueCell *)self contentView];
    v21 = [v23 layoutMarginsGuide];
    v20 = [v21 topAnchor];
    v19 = [v22 constraintGreaterThanOrEqualToAnchor:v20];
    v25[0] = v19;
    v18 = [v4 bottomAnchor];
    v8 = [(HUTitleValueCell *)self contentView];
    v9 = [v8 layoutMarginsGuide];
    v10 = [v9 bottomAnchor];
    v11 = [v18 constraintLessThanOrEqualToAnchor:v10];
    v25[1] = v11;
    v12 = [v4 centerYAnchor];
    v13 = [(HUTitleValueCell *)self contentView];
    v14 = [v13 centerYAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v25[2] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = HUTitleValueCell;
    v16 = [(HUIconCell *)&v24 _verticalConstraintsForContentSubview:v4];
  }

  return v16;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUTitleValueCell;
  [(HUTitleValueCell *)&v4 traitCollectionDidChange:a3];
  [(HUTitleValueCell *)self _ensureCorrectHeaderViewOrientation];
}

- (void)_ensureCorrectHeaderViewOrientation
{
  v3 = self->_labelsStackView;
  v4 = [(HUTitleValueCell *)self titleLabel];
  v5 = [(HUTitleValueCell *)self valueLabel];
  v6 = [objc_opt_class() defaultValueFont];
  [v5 setFont:v6];

  if (v4 && v5)
  {
    [v4 sizeToFit];
    [v5 sizeToFit];
    v7 = [v4 text];
    if ([v7 length])
    {
      v8 = [v5 text];
      if ([v8 length])
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
    v20 = self;
    v10 = v4;
    v21 = v10;
    v11 = v5;
    v22 = v11;
    v12 = v3;
    v23 = v12;
    v13 = __55__HUTitleValueCell__ensureCorrectHeaderViewOrientation__block_invoke(&v16);
    [(UIStackView *)v12 setDistribution:0, v16, v17, v18, v19, v20];
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

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v32[2] = *MEMORY[0x277D85DE8];
  v5 = [(HUIconCell *)self item];
  v6 = [v5 latestResults];

  v30.receiver = self;
  v30.super_class = HUTitleValueCell;
  [(HUIconCell *)&v30 updateUIWithAnimation:v3];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [(HUTitleValueCell *)self setTitleText:v7];

  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
  [(HUTitleValueCell *)self setAccessibilityIdentifier:v8];

  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  if (v9 || ([v6 objectForKeyedSubscript:*MEMORY[0x277D13E30]], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v31[0] = *MEMORY[0x277D740A8];
    v11 = [(HUTitleValueCell *)self valueLabel];
    v12 = [v11 font];
    v32[0] = v12;
    v31[1] = *MEMORY[0x277D740C0];
    v13 = [(HUTitleValueCell *)self valueLabel];
    v14 = [v13 textColor];
    v32[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

    if ([v10 prefersDynamicString])
    {
      v16 = [(HUTitleValueCell *)self valueLabel];
      [v16 bounds];
      v19 = [v10 dynamicStringForSize:v15 attributes:{v17, v18}];
      v20 = [(HUTitleValueCell *)self valueLabel];
      [v20 setAttributedText:v19];
    }

    else
    {
      v16 = [v10 stringWithAttributes:v15];
      v19 = [(HUTitleValueCell *)self valueLabel];
      [v19 setAttributedText:v16];
    }

    v21 = [(HUTitleValueCell *)self valueLabel];
    [v21 sizeToFit];
  }

  else
  {
    v10 = [(HUTitleValueCell *)self valueLabel];
    [v10 setAttributedText:0];
  }

  objc_opt_class();
  v22 = [(HUTitleValueCell *)self accessoryView];
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v25 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13DE0]];
  v26 = [v25 unsignedIntegerValue];

  if (v26 == 2)
  {
    if (!v24)
    {
      v27 = [HUBadgeAndDisclosureAccessoryView alloc];
      v22 = [(HUBadgeAndDisclosureAccessoryView *)v27 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    }

    v28 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13DD0]];
    -[HUBadgeAndDisclosureAccessoryView setBadgeCount:](v22, "setBadgeCount:", [v28 integerValue]);

    [(HUBadgeAndDisclosureAccessoryView *)v22 sizeToFit];
    v29 = v22;
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
  v3 = [(UILabel *)self->_titleLabel superview];

  if (v3)
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
    v8 = [(HUTitleValueCell *)self titleFont];
    [(UILabel *)self->_titleLabel setFont:v8];

    v9 = [(HUTitleValueCell *)self titleText];
    [(UILabel *)self->_titleLabel setText:v9];

    [(UILabel *)self->_titleLabel _setTextColorFollowsTintColor:[(HUTitleValueCell *)self titleColorFollowsTintColor]];
    v10 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)self->_titleLabel setTextColor:v10];

    [(UILabel *)self->_titleLabel setLineBreakMode:0];
    titleLabel = self->_titleLabel;
  }

  [(UIStackView *)self->_labelsStackView addArrangedSubview:titleLabel];

  [(HUTitleValueCell *)self _updateTitle];
}

- (void)_addValueLabel
{
  v3 = [(UILabel *)self->_valueLabel superview];

  if (v3)
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
    v8 = [(HUTitleValueCell *)self valueFont];
    [(UILabel *)self->_valueLabel setFont:v8];

    v9 = [(HUTitleValueCell *)self valueText];
    [(UILabel *)self->_valueLabel setText:v9];

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