@interface HUTitleDescriptionCell
- (HUTitleDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UILabel)descriptionLabel;
- (UILabel)titleLabel;
- (id)_verticalConstraintsForContentSubview:(id)subview;
- (id)verticalContentBottomAnchor;
- (id)verticalContentTopAnchor;
- (void)_addDescriptionIconView;
- (void)_addDescriptionLabel;
- (void)_addTitleLabel;
- (void)prepareForReuse;
- (void)setDescriptionFont:(id)font;
- (void)setDescriptionIcon:(id)icon;
- (void)setDescriptionText:(id)text;
- (void)setDisabled:(BOOL)disabled;
- (void)setHideDescription:(BOOL)description;
- (void)setHideDescriptionIcon:(BOOL)icon;
- (void)setHideTitle:(BOOL)title;
- (void)setTitleFont:(id)font;
- (void)setTitleText:(id)text;
- (void)updateConstraints;
- (void)updateHorizontalLabelConstraints;
- (void)updateTitle;
- (void)updateUIWithAnimation:(BOOL)animation;
- (void)updateVerticalLabelConstraints;
@end

@implementation HUTitleDescriptionCell

- (HUTitleDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = HUTitleDescriptionCell;
  v4 = [(HUIconCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    defaultTitleFont = [objc_opt_class() defaultTitleFont];
    titleFont = v4->_titleFont;
    v4->_titleFont = defaultTitleFont;

    defaultDescriptionFont = [objc_opt_class() defaultDescriptionFont];
    descriptionFont = v4->_descriptionFont;
    v4->_descriptionFont = defaultDescriptionFont;

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
  defaultTitleFont = [objc_opt_class() defaultTitleFont];
  [(HUTitleDescriptionCell *)self setTitleFont:defaultTitleFont];

  [(HUTitleDescriptionCell *)self updateTitle];
  [(HUTitleDescriptionCell *)self setHideDescription:0];
  [(HUTitleDescriptionCell *)self setDescriptionText:0];
  defaultDescriptionFont = [objc_opt_class() defaultDescriptionFont];
  [(HUTitleDescriptionCell *)self setDescriptionFont:defaultDescriptionFont];

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

- (void)setTitleText:(id)text
{
  objc_storeStrong(&self->_titleText, text);
  textCopy = text;
  titleLabel = [(HUTitleDescriptionCell *)self titleLabel];
  [titleLabel setText:textCopy];
}

- (void)setTitleFont:(id)font
{
  objc_storeStrong(&self->_titleFont, font);
  fontCopy = font;
  titleLabel = [(HUTitleDescriptionCell *)self titleLabel];
  [titleLabel setFont:fontCopy];
}

- (void)setHideTitle:(BOOL)title
{
  if (self->_hideTitle != title)
  {
    self->_hideTitle = title;
    if (title)
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

- (void)setDescriptionText:(id)text
{
  objc_storeStrong(&self->_descriptionText, text);
  textCopy = text;
  descriptionLabel = [(HUTitleDescriptionCell *)self descriptionLabel];
  [descriptionLabel setText:textCopy];
}

- (void)setDescriptionFont:(id)font
{
  objc_storeStrong(&self->_descriptionFont, font);
  fontCopy = font;
  descriptionLabel = [(HUTitleDescriptionCell *)self descriptionLabel];
  [descriptionLabel setFont:fontCopy];
}

- (void)setHideDescription:(BOOL)description
{
  if (self->_hideDescription != description)
  {
    self->_hideDescription = description;
    if (description)
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

- (void)setDescriptionIcon:(id)icon
{
  iconCopy = icon;
  objc_storeStrong(&self->_descriptionIcon, icon);
  v5 = iconCopy;
  if (!self->_hideDescriptionIcon)
  {
    if (iconCopy)
    {
      v6 = [iconCopy imageWithRenderingMode:2];
    }

    else
    {
      v6 = 0;
    }

    descriptionIconView = [(HUTitleDescriptionCell *)self descriptionIconView];
    [descriptionIconView setImage:v6];

    v5 = iconCopy;
  }
}

- (void)setHideDescriptionIcon:(BOOL)icon
{
  if (self->_hideDescriptionIcon != icon)
  {
    self->_hideDescriptionIcon = icon;
    if (icon)
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

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v5.receiver = self;
  v5.super_class = HUTitleDescriptionCell;
  [(HUIconCell *)&v5 setDisabled:?];
  [(HUTitleDescriptionCell *)self updateTitle];
  [(HUTitleDescriptionCell *)self setAdjustsTextColorWhenDisabled:1];
  [(HUTitleDescriptionCell *)self setUserInteractionEnabled:!disabledCopy];
}

- (void)updateConstraints
{
  traitCollection = [(UILabel *)self->_titleLabel traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  titleLabel = [(HUTitleDescriptionCell *)self titleLabel];
  [titleLabel setNumberOfLines:v5];

  traitCollection2 = [(UILabel *)self->_descriptionLabel traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2))
  {
    v9 = 0;
  }

  else
  {
    v9 = 2;
  }

  descriptionLabel = [(HUTitleDescriptionCell *)self descriptionLabel];
  [descriptionLabel setNumberOfLines:v9];

  [(HUTitleDescriptionCell *)self updateVerticalLabelConstraints];
  [(HUTitleDescriptionCell *)self updateHorizontalLabelConstraints];
  traitCollection3 = [(HUTitleDescriptionCell *)self traitCollection];
  preferredContentSizeCategory3 = [traitCollection3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);

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
  containerView = [(HUIconCell *)self containerView];
  topAnchor = [containerView topAnchor];

  return topAnchor;
}

- (id)verticalContentBottomAnchor
{
  containerView = [(HUIconCell *)self containerView];
  bottomAnchor = [containerView bottomAnchor];

  return bottomAnchor;
}

- (id)_verticalConstraintsForContentSubview:(id)subview
{
  v26[3] = *MEMORY[0x277D85DE8];
  subviewCopy = subview;
  text = [(UILabel *)self->_descriptionLabel text];

  if (text)
  {
    superview = [subviewCopy superview];
    contentView = [(HUTitleDescriptionCell *)self contentView];
    v8 = [superview isEqual:contentView];

    if ((v8 & 1) == 0)
    {
      NSLog(&cfstr_NotAContentvie.isa);
    }

    topAnchor = [subviewCopy topAnchor];
    contentView2 = [(HUTitleDescriptionCell *)self contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v20 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v26[0] = v20;
    bottomAnchor = [subviewCopy bottomAnchor];
    contentView3 = [(HUTitleDescriptionCell *)self contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
    v12 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v26[1] = v12;
    centerYAnchor = [subviewCopy centerYAnchor];
    contentView4 = [(HUTitleDescriptionCell *)self contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v26[2] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = HUTitleDescriptionCell;
    v17 = [(HUIconCell *)&v25 _verticalConstraintsForContentSubview:subviewCopy];
  }

  return v17;
}

- (void)updateVerticalLabelConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  verticalLabelConstraints = [(HUTitleDescriptionCell *)self verticalLabelConstraints];
  [v3 deactivateConstraints:verticalLabelConstraints];

  array = [MEMORY[0x277CBEB18] array];
  superview = [(UILabel *)self->_titleLabel superview];

  if (superview)
  {
    titleLabel = [(HUTitleDescriptionCell *)self titleLabel];
    topAnchor = [titleLabel topAnchor];
    verticalContentTopAnchor = [(HUTitleDescriptionCell *)self verticalContentTopAnchor];
    v9 = [topAnchor constraintEqualToAnchor:verticalContentTopAnchor];
    [array addObject:v9];

    superview2 = [(UILabel *)self->_descriptionLabel superview];

    if (!superview2)
    {
      titleLabel2 = [(HUTitleDescriptionCell *)self titleLabel];
      bottomAnchor = [titleLabel2 bottomAnchor];
      verticalContentBottomAnchor = [(HUTitleDescriptionCell *)self verticalContentBottomAnchor];
      v14 = [bottomAnchor constraintEqualToAnchor:verticalContentBottomAnchor];
      [array addObject:v14];
    }
  }

  superview3 = [(UILabel *)self->_descriptionLabel superview];

  if (superview3)
  {
    superview4 = [(UILabel *)self->_titleLabel superview];

    descriptionLabel = [(HUTitleDescriptionCell *)self descriptionLabel];
    topAnchor2 = [descriptionLabel topAnchor];
    if (superview4)
    {
      bottomAnchor2 = [(UILabel *)self->_titleLabel bottomAnchor];
      [(HUTitleDescriptionCell *)self titleLabelBottomPadding];
      [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:?];
    }

    else
    {
      bottomAnchor2 = [(HUTitleDescriptionCell *)self verticalContentTopAnchor];
      [topAnchor2 constraintEqualToAnchor:bottomAnchor2];
    }
    v20 = ;
    [array addObject:v20];

    descriptionLabel2 = [(HUTitleDescriptionCell *)self descriptionLabel];
    bottomAnchor3 = [descriptionLabel2 bottomAnchor];
    verticalContentBottomAnchor2 = [(HUTitleDescriptionCell *)self verticalContentBottomAnchor];
    [(HUTitleDescriptionCell *)self containerViewBottomPadding];
    v25 = [bottomAnchor3 constraintEqualToAnchor:verticalContentBottomAnchor2 constant:-v24];
    [array addObject:v25];

    superview5 = [(UIImageView *)self->_descriptionIconView superview];

    if (superview5)
    {
      descriptionIconView = [(HUTitleDescriptionCell *)self descriptionIconView];
      topAnchor3 = [descriptionIconView topAnchor];
      descriptionLabel3 = [(HUTitleDescriptionCell *)self descriptionLabel];
      topAnchor4 = [descriptionLabel3 topAnchor];
      v31 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      [array addObject:v31];

      descriptionIconView2 = [(HUTitleDescriptionCell *)self descriptionIconView];
      bottomAnchor4 = [descriptionIconView2 bottomAnchor];
      descriptionLabel4 = [(HUTitleDescriptionCell *)self descriptionLabel];
      bottomAnchor5 = [descriptionLabel4 bottomAnchor];
      v36 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      [array addObject:v36];
    }
  }

  [(HUTitleDescriptionCell *)self setVerticalLabelConstraints:array];
  v37 = MEMORY[0x277CCAAD0];
  verticalLabelConstraints2 = [(HUTitleDescriptionCell *)self verticalLabelConstraints];
  [v37 activateConstraints:verticalLabelConstraints2];
}

- (void)updateHorizontalLabelConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  horizontalLabelConstraints = [(HUTitleDescriptionCell *)self horizontalLabelConstraints];
  [v3 deactivateConstraints:horizontalLabelConstraints];

  array = [MEMORY[0x277CBEB18] array];
  superview = [(UILabel *)self->_titleLabel superview];

  if (superview)
  {
    titleLabel = [(HUTitleDescriptionCell *)self titleLabel];
    leadingAnchor = [titleLabel leadingAnchor];
    containerView = [(HUIconCell *)self containerView];
    leadingAnchor2 = [containerView leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v10];

    titleLabel2 = [(HUTitleDescriptionCell *)self titleLabel];
    trailingAnchor = [titleLabel2 trailingAnchor];
    containerView2 = [(HUIconCell *)self containerView];
    trailingAnchor2 = [containerView2 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    titleTrailingConstraint = self->_titleTrailingConstraint;
    self->_titleTrailingConstraint = v15;

    [array addObject:self->_titleTrailingConstraint];
  }

  superview2 = [(UILabel *)self->_descriptionLabel superview];

  if (superview2)
  {
    superview3 = [(UIImageView *)self->_descriptionIconView superview];

    if (superview3)
    {
      descriptionIconView = [(HUTitleDescriptionCell *)self descriptionIconView];
      leadingAnchor3 = [descriptionIconView leadingAnchor];
      containerView3 = [(HUIconCell *)self containerView];
      leadingAnchor4 = [containerView3 leadingAnchor];
      v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      [array addObject:v23];

      descriptionIconView2 = [(HUTitleDescriptionCell *)self descriptionIconView];
      widthAnchor = [descriptionIconView2 widthAnchor];
      descriptionIconView3 = [(HUTitleDescriptionCell *)self descriptionIconView];
      heightAnchor = [descriptionIconView3 heightAnchor];
      v28 = [widthAnchor constraintEqualToAnchor:heightAnchor];
      [array addObject:v28];

      descriptionIconView4 = [(HUTitleDescriptionCell *)self descriptionIconView];
      trailingAnchor3 = [descriptionIconView4 trailingAnchor];
      descriptionLabel = [(HUTitleDescriptionCell *)self descriptionLabel];
      leadingAnchor5 = [descriptionLabel leadingAnchor];
      [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5 constant:-5.0];
    }

    else
    {
      descriptionIconView4 = [(HUTitleDescriptionCell *)self descriptionLabel];
      trailingAnchor3 = [descriptionIconView4 leadingAnchor];
      descriptionLabel = [(HUIconCell *)self containerView];
      leadingAnchor5 = [descriptionLabel leadingAnchor];
      [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5];
    }
    v33 = ;
    [array addObject:v33];

    descriptionLabel2 = [(HUTitleDescriptionCell *)self descriptionLabel];
    trailingAnchor4 = [descriptionLabel2 trailingAnchor];
    containerView4 = [(HUIconCell *)self containerView];
    trailingAnchor5 = [containerView4 trailingAnchor];
    v38 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    descriptionTrailingConstraint = self->_descriptionTrailingConstraint;
    self->_descriptionTrailingConstraint = v38;

    [array addObject:self->_descriptionTrailingConstraint];
  }

  [(HUTitleDescriptionCell *)self setHorizontalLabelConstraints:array];
  v40 = MEMORY[0x277CCAAD0];
  horizontalLabelConstraints2 = [(HUTitleDescriptionCell *)self horizontalLabelConstraints];
  [v40 activateConstraints:horizontalLabelConstraints2];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v23[2] = *MEMORY[0x277D85DE8];
  item = [(HUIconCell *)self item];
  latestResults = [item latestResults];

  v21.receiver = self;
  v21.super_class = HUTitleDescriptionCell;
  [(HUIconCell *)&v21 updateUIWithAnimation:animationCopy];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [(HUTitleDescriptionCell *)self setTitleText:v7];

  [(HUTitleDescriptionCell *)self updateTitle];
  v8 = *MEMORY[0x277D13E20];
  v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v9)
  {
    v22[0] = *MEMORY[0x277D740A8];
    descriptionLabel = [(HUTitleDescriptionCell *)self descriptionLabel];
    font = [descriptionLabel font];
    v23[0] = font;
    v22[1] = *MEMORY[0x277D740C0];
    descriptionLabel2 = [(HUTitleDescriptionCell *)self descriptionLabel];
    textColor = [descriptionLabel2 textColor];
    v23[1] = textColor;
    descriptionLabel6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

    v15 = [latestResults objectForKeyedSubscript:v8];
    if ([v15 prefersDynamicString])
    {
      descriptionLabel3 = [(HUTitleDescriptionCell *)self descriptionLabel];
      [descriptionLabel3 bounds];
      descriptionLabel5 = [v15 dynamicStringForSize:descriptionLabel6 attributes:{v17, v18}];
      descriptionLabel4 = [(HUTitleDescriptionCell *)self descriptionLabel];
      [descriptionLabel4 setAttributedText:descriptionLabel5];
    }

    else
    {
      descriptionLabel3 = [v15 stringWithAttributes:descriptionLabel6];
      descriptionLabel5 = [(HUTitleDescriptionCell *)self descriptionLabel];
      [descriptionLabel5 setAttributedText:descriptionLabel3];
    }
  }

  else
  {
    descriptionLabel6 = [(HUTitleDescriptionCell *)self descriptionLabel];
    [descriptionLabel6 setAttributedText:0];
  }

  [(HUTitleDescriptionCell *)self setNeedsUpdateConstraints];
}

- (void)_addTitleLabel
{
  superview = [(UILabel *)self->_titleLabel superview];

  if (superview)
  {
    NSLog(&cfstr_TitleLabelAlre.isa, self);
  }

  if (!self->_titleLabel)
  {
    v4 = MEMORY[0x277D756B8];
    titleText = [(HUTitleDescriptionCell *)self titleText];
    titleFont = [(HUTitleDescriptionCell *)self titleFont];
    v7 = [v4 labelWithText:titleText font:titleFont];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v7;

    LODWORD(v9) = 1144766464;
    [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v9];
    LODWORD(v10) = 1132134400;
    [(UILabel *)self->_titleLabel setContentHuggingPriority:1 forAxis:v10];
  }

  containerView = [(HUIconCell *)self containerView];
  [containerView addSubview:self->_titleLabel];

  [(HUTitleDescriptionCell *)self updateTitle];
}

- (void)_addDescriptionLabel
{
  superview = [(UILabel *)self->_descriptionLabel superview];

  if (superview)
  {
    NSLog(&cfstr_DescriptionLab.isa, self);
  }

  descriptionLabel = self->_descriptionLabel;
  if (!descriptionLabel)
  {
    v6 = MEMORY[0x277D756B8];
    descriptionText = [(HUTitleDescriptionCell *)self descriptionText];
    descriptionFont = [(HUTitleDescriptionCell *)self descriptionFont];
    v9 = [v6 labelWithText:descriptionText font:descriptionFont];
    v10 = self->_descriptionLabel;
    self->_descriptionLabel = v9;

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)self->_descriptionLabel setTextColor:systemGrayColor];

    descriptionLabel = self->_descriptionLabel;
  }

  LODWORD(v4) = 1144766464;
  [(UILabel *)descriptionLabel setContentHuggingPriority:1 forAxis:v4];
  containerView = [(HUIconCell *)self containerView];
  [containerView addSubview:self->_descriptionLabel];
}

- (void)_addDescriptionIconView
{
  superview = [(UIImageView *)self->_descriptionIconView superview];

  if (superview)
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
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UIImageView *)self->_descriptionIconView setTintColor:systemGrayColor];

    [(UIImageView *)self->_descriptionIconView setContentMode:1];
    descriptionIcon = [(HUTitleDescriptionCell *)self descriptionIcon];

    if (descriptionIcon)
    {
      descriptionIcon2 = [(HUTitleDescriptionCell *)self descriptionIcon];
      v11 = [descriptionIcon2 imageWithRenderingMode:2];
      [(UIImageView *)self->_descriptionIconView setImage:v11];
    }

    LODWORD(v9) = 1132003328;
    [(UIImageView *)self->_descriptionIconView setContentCompressionResistancePriority:1 forAxis:v9];
  }

  containerView = [(HUIconCell *)self containerView];
  [containerView addSubview:self->_descriptionIconView];
}

- (void)updateTitle
{
  if ([(HUIconCell *)self isDisabled]&& [(HUTitleDescriptionCell *)self adjustsTextColorWhenDisabled])
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    systemGrayColor = [MEMORY[0x277D75348] labelColor];
  }

  v5 = systemGrayColor;
  [(UILabel *)self->_titleLabel setTextColor:systemGrayColor];
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