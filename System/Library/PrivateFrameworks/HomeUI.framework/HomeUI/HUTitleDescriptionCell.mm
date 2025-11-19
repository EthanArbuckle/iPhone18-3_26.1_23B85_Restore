@interface HUTitleDescriptionCell
- (HUTitleDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UILabel)descriptionLabel;
- (UILabel)titleLabel;
- (id)_verticalConstraintsForContentSubview:(id)a3;
- (id)verticalContentBottomAnchor;
- (id)verticalContentTopAnchor;
- (void)_addDescriptionIconView;
- (void)_addDescriptionLabel;
- (void)_addTitleLabel;
- (void)prepareForReuse;
- (void)setDescriptionFont:(id)a3;
- (void)setDescriptionIcon:(id)a3;
- (void)setDescriptionText:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setHideDescription:(BOOL)a3;
- (void)setHideDescriptionIcon:(BOOL)a3;
- (void)setHideTitle:(BOOL)a3;
- (void)setTitleFont:(id)a3;
- (void)setTitleText:(id)a3;
- (void)updateConstraints;
- (void)updateHorizontalLabelConstraints;
- (void)updateTitle;
- (void)updateUIWithAnimation:(BOOL)a3;
- (void)updateVerticalLabelConstraints;
@end

@implementation HUTitleDescriptionCell

- (HUTitleDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = HUTitleDescriptionCell;
  v4 = [(HUIconCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [objc_opt_class() defaultTitleFont];
    titleFont = v4->_titleFont;
    v4->_titleFont = v5;

    v7 = [objc_opt_class() defaultDescriptionFont];
    descriptionFont = v4->_descriptionFont;
    v4->_descriptionFont = v7;

    v4->_textAlpha = 1.0;
    v4->_titleLabelBottomPadding = 0.0;
    v4->_containerViewBottomPadding = 0.0;
    v4->_hideDescriptionIcon = 1;
    v4->_adjustsTextColorWhenDisabled = 1;
    v4->_maxNumberOfTitleLines = 2;
    v4->_maxNumberOfDescriptionLines = 2;
    [(HUTitleDescriptionCell *)v4 _addTitleLabel];
    [(HUTitleDescriptionCell *)v4 _addDescriptionLabel];
  }

  return v4;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HUTitleDescriptionCell;
  [(HUIconCell *)&v5 prepareForReuse];
  [(HUTitleDescriptionCell *)self setHideTitle:0];
  [(HUTitleDescriptionCell *)self setTitleText:0];
  v3 = [objc_opt_class() defaultTitleFont];
  [(HUTitleDescriptionCell *)self setTitleFont:v3];

  [(HUTitleDescriptionCell *)self updateTitle];
  [(HUTitleDescriptionCell *)self setHideDescription:0];
  [(HUTitleDescriptionCell *)self setDescriptionText:0];
  v4 = [objc_opt_class() defaultDescriptionFont];
  [(HUTitleDescriptionCell *)self setDescriptionFont:v4];

  [(HUTitleDescriptionCell *)self setHideDescriptionIcon:1];
  [(HUTitleDescriptionCell *)self setDescriptionIcon:0];
  [(HUIconCell *)self setIconAlpha:1.0];
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    [(HUTitleDescriptionCell *)self _addTitleLabel];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (void)setTitleText:(id)a3
{
  objc_storeStrong(&self->_titleText, a3);
  v5 = a3;
  v6 = [(HUTitleDescriptionCell *)self titleLabel];
  [v6 setText:v5];
}

- (void)setTitleFont:(id)a3
{
  objc_storeStrong(&self->_titleFont, a3);
  v5 = a3;
  v6 = [(HUTitleDescriptionCell *)self titleLabel];
  [v6 setFont:v5];
}

- (void)setHideTitle:(BOOL)a3
{
  if (self->_hideTitle != a3)
  {
    self->_hideTitle = a3;
    if (a3)
    {
      [(UILabel *)self->_titleLabel removeFromSuperview];
    }

    else
    {
      [(HUTitleDescriptionCell *)self _addTitleLabel];
    }

    [(HUTitleDescriptionCell *)self setNeedsUpdateConstraints];
  }
}

- (UILabel)descriptionLabel
{
  descriptionLabel = self->_descriptionLabel;
  if (!descriptionLabel)
  {
    [(HUTitleDescriptionCell *)self _addDescriptionLabel];
    descriptionLabel = self->_descriptionLabel;
  }

  return descriptionLabel;
}

- (void)setDescriptionText:(id)a3
{
  objc_storeStrong(&self->_descriptionText, a3);
  v5 = a3;
  v6 = [(HUTitleDescriptionCell *)self descriptionLabel];
  [v6 setText:v5];
}

- (void)setDescriptionFont:(id)a3
{
  objc_storeStrong(&self->_descriptionFont, a3);
  v5 = a3;
  v6 = [(HUTitleDescriptionCell *)self descriptionLabel];
  [v6 setFont:v5];
}

- (void)setHideDescription:(BOOL)a3
{
  if (self->_hideDescription != a3)
  {
    self->_hideDescription = a3;
    if (a3)
    {
      [(UILabel *)self->_descriptionLabel removeFromSuperview];
      [(HUTitleDescriptionCell *)self setHideDescriptionIcon:1];
    }

    else
    {
      [(HUTitleDescriptionCell *)self _addDescriptionLabel];
    }

    [(HUTitleDescriptionCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setDescriptionIcon:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_descriptionIcon, a3);
  v5 = v8;
  if (!self->_hideDescriptionIcon)
  {
    if (v8)
    {
      v6 = [v8 imageWithRenderingMode:2];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(HUTitleDescriptionCell *)self descriptionIconView];
    [v7 setImage:v6];

    v5 = v8;
  }
}

- (void)setHideDescriptionIcon:(BOOL)a3
{
  if (self->_hideDescriptionIcon != a3)
  {
    self->_hideDescriptionIcon = a3;
    if (a3)
    {
      [(UIImageView *)self->_descriptionIconView removeFromSuperview];
    }

    else
    {
      [(HUTitleDescriptionCell *)self _addDescriptionIconView];
    }

    [(HUTitleDescriptionCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = HUTitleDescriptionCell;
  [(HUIconCell *)&v5 setDisabled:?];
  [(HUTitleDescriptionCell *)self updateTitle];
  [(HUTitleDescriptionCell *)self setAdjustsTextColorWhenDisabled:1];
  [(HUTitleDescriptionCell *)self setUserInteractionEnabled:!v3];
}

- (void)updateConstraints
{
  v3 = [(UILabel *)self->_titleLabel traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(HUTitleDescriptionCell *)self titleLabel];
  [v6 setNumberOfLines:v5];

  v7 = [(UILabel *)self->_descriptionLabel traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  v10 = [(HUTitleDescriptionCell *)self descriptionLabel];
  [v10 setNumberOfLines:v9];

  [(HUTitleDescriptionCell *)self updateVerticalLabelConstraints];
  [(HUTitleDescriptionCell *)self updateHorizontalLabelConstraints];
  v11 = [(HUTitleDescriptionCell *)self traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12);

  if (IsAccessibilityCategory)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  [(UILabel *)self->_titleLabel setNumberOfLines:v14];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:v14];
  if ([(HUTitleDescriptionCell *)self maxNumberOfTitleLines]!= 2)
  {
    [(UILabel *)self->_titleLabel setNumberOfLines:[(HUTitleDescriptionCell *)self maxNumberOfTitleLines]];
  }

  if ([(HUTitleDescriptionCell *)self maxNumberOfDescriptionLines]!= 2)
  {
    [(UILabel *)self->_descriptionLabel setNumberOfLines:[(HUTitleDescriptionCell *)self maxNumberOfDescriptionLines]];
  }

  v15.receiver = self;
  v15.super_class = HUTitleDescriptionCell;
  [(HUIconCell *)&v15 updateConstraints];
}

- (id)verticalContentTopAnchor
{
  v2 = [(HUIconCell *)self containerView];
  v3 = [v2 topAnchor];

  return v3;
}

- (id)verticalContentBottomAnchor
{
  v2 = [(HUIconCell *)self containerView];
  v3 = [v2 bottomAnchor];

  return v3;
}

- (id)_verticalConstraintsForContentSubview:(id)a3
{
  v26[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UILabel *)self->_descriptionLabel text];

  if (v5)
  {
    v6 = [v4 superview];
    v7 = [(HUTitleDescriptionCell *)self contentView];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      NSLog(&cfstr_NotAContentvie.isa);
    }

    v23 = [v4 topAnchor];
    v24 = [(HUTitleDescriptionCell *)self contentView];
    v22 = [v24 layoutMarginsGuide];
    v21 = [v22 topAnchor];
    v20 = [v23 constraintGreaterThanOrEqualToAnchor:v21];
    v26[0] = v20;
    v19 = [v4 bottomAnchor];
    v9 = [(HUTitleDescriptionCell *)self contentView];
    v10 = [v9 layoutMarginsGuide];
    v11 = [v10 bottomAnchor];
    v12 = [v19 constraintLessThanOrEqualToAnchor:v11];
    v26[1] = v12;
    v13 = [v4 centerYAnchor];
    v14 = [(HUTitleDescriptionCell *)self contentView];
    v15 = [v14 centerYAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v26[2] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = HUTitleDescriptionCell;
    v17 = [(HUIconCell *)&v25 _verticalConstraintsForContentSubview:v4];
  }

  return v17;
}

- (void)updateVerticalLabelConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(HUTitleDescriptionCell *)self verticalLabelConstraints];
  [v3 deactivateConstraints:v4];

  v39 = [MEMORY[0x277CBEB18] array];
  v5 = [(UILabel *)self->_titleLabel superview];

  if (v5)
  {
    v6 = [(HUTitleDescriptionCell *)self titleLabel];
    v7 = [v6 topAnchor];
    v8 = [(HUTitleDescriptionCell *)self verticalContentTopAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [v39 addObject:v9];

    v10 = [(UILabel *)self->_descriptionLabel superview];

    if (!v10)
    {
      v11 = [(HUTitleDescriptionCell *)self titleLabel];
      v12 = [v11 bottomAnchor];
      v13 = [(HUTitleDescriptionCell *)self verticalContentBottomAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      [v39 addObject:v14];
    }
  }

  v15 = [(UILabel *)self->_descriptionLabel superview];

  if (v15)
  {
    v16 = [(UILabel *)self->_titleLabel superview];

    v17 = [(HUTitleDescriptionCell *)self descriptionLabel];
    v18 = [v17 topAnchor];
    if (v16)
    {
      v19 = [(UILabel *)self->_titleLabel bottomAnchor];
      [(HUTitleDescriptionCell *)self titleLabelBottomPadding];
      [v18 constraintEqualToAnchor:v19 constant:?];
    }

    else
    {
      v19 = [(HUTitleDescriptionCell *)self verticalContentTopAnchor];
      [v18 constraintEqualToAnchor:v19];
    }
    v20 = ;
    [v39 addObject:v20];

    v21 = [(HUTitleDescriptionCell *)self descriptionLabel];
    v22 = [v21 bottomAnchor];
    v23 = [(HUTitleDescriptionCell *)self verticalContentBottomAnchor];
    [(HUTitleDescriptionCell *)self containerViewBottomPadding];
    v25 = [v22 constraintEqualToAnchor:v23 constant:-v24];
    [v39 addObject:v25];

    v26 = [(UIImageView *)self->_descriptionIconView superview];

    if (v26)
    {
      v27 = [(HUTitleDescriptionCell *)self descriptionIconView];
      v28 = [v27 topAnchor];
      v29 = [(HUTitleDescriptionCell *)self descriptionLabel];
      v30 = [v29 topAnchor];
      v31 = [v28 constraintEqualToAnchor:v30];
      [v39 addObject:v31];

      v32 = [(HUTitleDescriptionCell *)self descriptionIconView];
      v33 = [v32 bottomAnchor];
      v34 = [(HUTitleDescriptionCell *)self descriptionLabel];
      v35 = [v34 bottomAnchor];
      v36 = [v33 constraintEqualToAnchor:v35];
      [v39 addObject:v36];
    }
  }

  [(HUTitleDescriptionCell *)self setVerticalLabelConstraints:v39];
  v37 = MEMORY[0x277CCAAD0];
  v38 = [(HUTitleDescriptionCell *)self verticalLabelConstraints];
  [v37 activateConstraints:v38];
}

- (void)updateHorizontalLabelConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(HUTitleDescriptionCell *)self horizontalLabelConstraints];
  [v3 deactivateConstraints:v4];

  v42 = [MEMORY[0x277CBEB18] array];
  v5 = [(UILabel *)self->_titleLabel superview];

  if (v5)
  {
    v6 = [(HUTitleDescriptionCell *)self titleLabel];
    v7 = [v6 leadingAnchor];
    v8 = [(HUIconCell *)self containerView];
    v9 = [v8 leadingAnchor];
    v10 = [v7 constraintEqualToAnchor:v9];
    [v42 addObject:v10];

    v11 = [(HUTitleDescriptionCell *)self titleLabel];
    v12 = [v11 trailingAnchor];
    v13 = [(HUIconCell *)self containerView];
    v14 = [v13 trailingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    titleTrailingConstraint = self->_titleTrailingConstraint;
    self->_titleTrailingConstraint = v15;

    [v42 addObject:self->_titleTrailingConstraint];
  }

  v17 = [(UILabel *)self->_descriptionLabel superview];

  if (v17)
  {
    v18 = [(UIImageView *)self->_descriptionIconView superview];

    if (v18)
    {
      v19 = [(HUTitleDescriptionCell *)self descriptionIconView];
      v20 = [v19 leadingAnchor];
      v21 = [(HUIconCell *)self containerView];
      v22 = [v21 leadingAnchor];
      v23 = [v20 constraintEqualToAnchor:v22];
      [v42 addObject:v23];

      v24 = [(HUTitleDescriptionCell *)self descriptionIconView];
      v25 = [v24 widthAnchor];
      v26 = [(HUTitleDescriptionCell *)self descriptionIconView];
      v27 = [v26 heightAnchor];
      v28 = [v25 constraintEqualToAnchor:v27];
      [v42 addObject:v28];

      v29 = [(HUTitleDescriptionCell *)self descriptionIconView];
      v30 = [v29 trailingAnchor];
      v31 = [(HUTitleDescriptionCell *)self descriptionLabel];
      v32 = [v31 leadingAnchor];
      [v30 constraintEqualToAnchor:v32 constant:-5.0];
    }

    else
    {
      v29 = [(HUTitleDescriptionCell *)self descriptionLabel];
      v30 = [v29 leadingAnchor];
      v31 = [(HUIconCell *)self containerView];
      v32 = [v31 leadingAnchor];
      [v30 constraintEqualToAnchor:v32];
    }
    v33 = ;
    [v42 addObject:v33];

    v34 = [(HUTitleDescriptionCell *)self descriptionLabel];
    v35 = [v34 trailingAnchor];
    v36 = [(HUIconCell *)self containerView];
    v37 = [v36 trailingAnchor];
    v38 = [v35 constraintEqualToAnchor:v37];
    descriptionTrailingConstraint = self->_descriptionTrailingConstraint;
    self->_descriptionTrailingConstraint = v38;

    [v42 addObject:self->_descriptionTrailingConstraint];
  }

  [(HUTitleDescriptionCell *)self setHorizontalLabelConstraints:v42];
  v40 = MEMORY[0x277CCAAD0];
  v41 = [(HUTitleDescriptionCell *)self horizontalLabelConstraints];
  [v40 activateConstraints:v41];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v23[2] = *MEMORY[0x277D85DE8];
  v5 = [(HUIconCell *)self item];
  v6 = [v5 latestResults];

  v21.receiver = self;
  v21.super_class = HUTitleDescriptionCell;
  [(HUIconCell *)&v21 updateUIWithAnimation:v3];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [(HUTitleDescriptionCell *)self setTitleText:v7];

  [(HUTitleDescriptionCell *)self updateTitle];
  v8 = *MEMORY[0x277D13E20];
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v9)
  {
    v22[0] = *MEMORY[0x277D740A8];
    v10 = [(HUTitleDescriptionCell *)self descriptionLabel];
    v11 = [v10 font];
    v23[0] = v11;
    v22[1] = *MEMORY[0x277D740C0];
    v12 = [(HUTitleDescriptionCell *)self descriptionLabel];
    v13 = [v12 textColor];
    v23[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

    v15 = [v6 objectForKeyedSubscript:v8];
    if ([v15 prefersDynamicString])
    {
      v16 = [(HUTitleDescriptionCell *)self descriptionLabel];
      [v16 bounds];
      v19 = [v15 dynamicStringForSize:v14 attributes:{v17, v18}];
      v20 = [(HUTitleDescriptionCell *)self descriptionLabel];
      [v20 setAttributedText:v19];
    }

    else
    {
      v16 = [v15 stringWithAttributes:v14];
      v19 = [(HUTitleDescriptionCell *)self descriptionLabel];
      [v19 setAttributedText:v16];
    }
  }

  else
  {
    v14 = [(HUTitleDescriptionCell *)self descriptionLabel];
    [v14 setAttributedText:0];
  }

  [(HUTitleDescriptionCell *)self setNeedsUpdateConstraints];
}

- (void)_addTitleLabel
{
  v3 = [(UILabel *)self->_titleLabel superview];

  if (v3)
  {
    NSLog(&cfstr_TitleLabelAlre.isa, self);
  }

  if (!self->_titleLabel)
  {
    v4 = MEMORY[0x277D756B8];
    v5 = [(HUTitleDescriptionCell *)self titleText];
    v6 = [(HUTitleDescriptionCell *)self titleFont];
    v7 = [v4 labelWithText:v5 font:v6];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v7;

    LODWORD(v9) = 1144766464;
    [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v9];
    LODWORD(v10) = 1132134400;
    [(UILabel *)self->_titleLabel setContentHuggingPriority:1 forAxis:v10];
  }

  v11 = [(HUIconCell *)self containerView];
  [v11 addSubview:self->_titleLabel];

  [(HUTitleDescriptionCell *)self updateTitle];
}

- (void)_addDescriptionLabel
{
  v3 = [(UILabel *)self->_descriptionLabel superview];

  if (v3)
  {
    NSLog(&cfstr_DescriptionLab.isa, self);
  }

  descriptionLabel = self->_descriptionLabel;
  if (!descriptionLabel)
  {
    v6 = MEMORY[0x277D756B8];
    v7 = [(HUTitleDescriptionCell *)self descriptionText];
    v8 = [(HUTitleDescriptionCell *)self descriptionFont];
    v9 = [v6 labelWithText:v7 font:v8];
    v10 = self->_descriptionLabel;
    self->_descriptionLabel = v9;

    v11 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)self->_descriptionLabel setTextColor:v11];

    descriptionLabel = self->_descriptionLabel;
  }

  LODWORD(v4) = 1144766464;
  [(UILabel *)descriptionLabel setContentHuggingPriority:1 forAxis:v4];
  v12 = [(HUIconCell *)self containerView];
  [v12 addSubview:self->_descriptionLabel];
}

- (void)_addDescriptionIconView
{
  v3 = [(UIImageView *)self->_descriptionIconView superview];

  if (v3)
  {
    NSLog(&cfstr_DescriptionIco.isa, self);
  }

  if (!self->_descriptionIconView)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    descriptionIconView = self->_descriptionIconView;
    self->_descriptionIconView = v5;

    [(UIImageView *)self->_descriptionIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D75348] systemGrayColor];
    [(UIImageView *)self->_descriptionIconView setTintColor:v7];

    [(UIImageView *)self->_descriptionIconView setContentMode:1];
    v8 = [(HUTitleDescriptionCell *)self descriptionIcon];

    if (v8)
    {
      v10 = [(HUTitleDescriptionCell *)self descriptionIcon];
      v11 = [v10 imageWithRenderingMode:2];
      [(UIImageView *)self->_descriptionIconView setImage:v11];
    }

    LODWORD(v9) = 1132003328;
    [(UIImageView *)self->_descriptionIconView setContentCompressionResistancePriority:1 forAxis:v9];
  }

  v12 = [(HUIconCell *)self containerView];
  [v12 addSubview:self->_descriptionIconView];
}

- (void)updateTitle
{
  if ([(HUIconCell *)self isDisabled]&& [(HUTitleDescriptionCell *)self adjustsTextColorWhenDisabled])
  {
    v3 = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    v3 = [MEMORY[0x277D75348] labelColor];
  }

  v5 = v3;
  [(UILabel *)self->_titleLabel setTextColor:v3];
  [(HUTitleDescriptionCell *)self setTextColor:v5];
  [(HUTitleDescriptionCell *)self textAlpha];
  if (v4 != 0.0)
  {
    [(HUTitleDescriptionCell *)self textAlpha];
    [(UILabel *)self->_titleLabel setAlpha:?];
    [(HUTitleDescriptionCell *)self textAlpha];
    [(UILabel *)self->_descriptionLabel setAlpha:?];
    [(HUTitleDescriptionCell *)self textAlpha];
    [(UIImageView *)self->_descriptionIconView setAlpha:?];
  }
}

@end