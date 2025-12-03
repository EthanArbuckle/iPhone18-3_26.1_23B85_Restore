@interface HUTriggerSummaryCell
- (HUTriggerSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UILabel)descriptionLabel;
- (UILabel)titleLabel;
- (void)_addDescriptionIconView;
- (void)_addDescriptionLabel;
- (void)_addTitleLabel;
- (void)prepareForReuse;
- (void)setDescriptionIcon:(id)icon;
- (void)setDescriptionText:(id)text;
- (void)setDisabled:(BOOL)disabled;
- (void)setHideDescription:(BOOL)description;
- (void)setHideDescriptionIcon:(BOOL)icon;
- (void)setHideTitle:(BOOL)title;
- (void)setIconDescriptors:(id)descriptors;
- (void)setTitleText:(id)text;
- (void)setUpIconContainerViewConstraints;
- (void)setUpTextContainerViewConstraints;
- (void)updateConstraints;
- (void)updateHorizontalLabelConstraints;
- (void)updateSelectionUI;
- (void)updateTitle;
- (void)updateUIIconsWithResults:(id)results;
- (void)updateUITextWithResults:(id)results;
- (void)updateUIWithAnimation:(BOOL)animation;
- (void)updateVerticalLabelConstraints;
@end

@implementation HUTriggerSummaryCell

- (HUTriggerSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v18.receiver = self;
  v18.super_class = HUTriggerSummaryCell;
  v4 = [(HUTriggerSummaryCell *)&v18 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    titleFont = v4->_titleFont;
    v4->_titleFont = v5;

    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    descriptionFont = v4->_descriptionFont;
    v4->_descriptionFont = v7;

    v4->_textAlpha = 1.0;
    v4->_hideDescriptionIcon = 1;
    v9 = objc_alloc_init(HUIconListView);
    iconContainerView = v4->_iconContainerView;
    v4->_iconContainerView = v9;

    [(HUIconListView *)v4->_iconContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(HUIconListView *)v4->_iconContainerView setBackgroundColor:clearColor];

    contentView = [(HUTriggerSummaryCell *)v4 contentView];
    [contentView addSubview:v4->_iconContainerView];

    [(HUTriggerSummaryCell *)v4 setUpIconContainerViewConstraints];
    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    textContainerView = v4->_textContainerView;
    v4->_textContainerView = v13;

    [(UIView *)v4->_textContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(HUTriggerSummaryCell *)v4 contentView];
    [contentView2 addSubview:v4->_textContainerView];

    [(HUTriggerSummaryCell *)v4 setUpTextContainerViewConstraints];
    [(HUTriggerSummaryCell *)v4 _addTitleLabel];
    [(HUTriggerSummaryCell *)v4 _addDescriptionLabel];
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(HUTriggerSummaryCell *)v4 setCellColor:secondarySystemBackgroundColor];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUTriggerSummaryCell;
  [(HUTriggerSummaryCell *)&v3 prepareForReuse];
  [(HUTriggerSummaryCell *)self setHideTitle:0];
  [(HUTriggerSummaryCell *)self setTitleText:0];
  [(HUTriggerSummaryCell *)self setDisabled:0];
  [(HUTriggerSummaryCell *)self setCanBeSelected:1];
  [(HUTriggerSummaryCell *)self setHideDescription:0];
  [(HUTriggerSummaryCell *)self setDescriptionText:0];
}

- (void)setIconDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  iconContainerView = [(HUTriggerSummaryCell *)self iconContainerView];
  [iconContainerView setIconDescriptors:descriptorsCopy];
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    [(HUTriggerSummaryCell *)self _addTitleLabel];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (void)setTitleText:(id)text
{
  objc_storeStrong(&self->_titleText, text);
  textCopy = text;
  titleLabel = [(HUTriggerSummaryCell *)self titleLabel];
  [titleLabel setText:textCopy];
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
      [(HUTriggerSummaryCell *)self _addTitleLabel];
    }

    [(HUTriggerSummaryCell *)self setNeedsUpdateConstraints];
  }
}

- (UILabel)descriptionLabel
{
  descriptionLabel = self->_descriptionLabel;
  if (!descriptionLabel)
  {
    [(HUTriggerSummaryCell *)self _addDescriptionLabel];
    descriptionLabel = self->_descriptionLabel;
  }

  return descriptionLabel;
}

- (void)setDescriptionText:(id)text
{
  objc_storeStrong(&self->_descriptionText, text);
  textCopy = text;
  descriptionLabel = [(HUTriggerSummaryCell *)self descriptionLabel];
  [descriptionLabel setText:textCopy];
}

- (void)setHideDescription:(BOOL)description
{
  if (self->_hideDescription != description)
  {
    self->_hideDescription = description;
    if (description)
    {
      [(UILabel *)self->_descriptionLabel removeFromSuperview];
    }

    else
    {
      [(HUTriggerSummaryCell *)self _addDescriptionLabel];
    }

    [(HUTriggerSummaryCell *)self setNeedsUpdateConstraints];
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

    descriptionIconView = [(HUTriggerSummaryCell *)self descriptionIconView];
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
      [(HUTriggerSummaryCell *)self _addDescriptionIconView];
    }

    [(HUTriggerSummaryCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  self->_disabled = disabled;
  [(HUTriggerSummaryCell *)self updateTitle];
  [(HUTriggerSummaryCell *)self updateSelectionUI];
  v5 = 0.200000003;
  if (!disabledCopy)
  {
    v5 = 1.0;
  }

  [(HUTriggerSummaryCell *)self setTextAlpha:v5];
}

- (void)updateConstraints
{
  titleLabel = [(HUTriggerSummaryCell *)self titleLabel];
  [titleLabel setNumberOfLines:0];

  descriptionLabel = [(HUTriggerSummaryCell *)self descriptionLabel];
  [descriptionLabel setNumberOfLines:0];

  [(HUTriggerSummaryCell *)self updateVerticalLabelConstraints];
  [(HUTriggerSummaryCell *)self updateHorizontalLabelConstraints];
  v5.receiver = self;
  v5.super_class = HUTriggerSummaryCell;
  [(HUTriggerSummaryCell *)&v5 updateConstraints];
}

- (void)setUpIconContainerViewConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  iconContainerView = [(HUTriggerSummaryCell *)self iconContainerView];
  topAnchor = [iconContainerView topAnchor];
  contentView = [(HUTriggerSummaryCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  [array addObject:v7];

  iconContainerView2 = [(HUTriggerSummaryCell *)self iconContainerView];
  leadingAnchor = [iconContainerView2 leadingAnchor];
  contentView2 = [(HUTriggerSummaryCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [array addObject:v12];

  iconContainerView3 = [(HUTriggerSummaryCell *)self iconContainerView];
  trailingAnchor = [iconContainerView3 trailingAnchor];
  contentView3 = [(HUTriggerSummaryCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:16.0];
  [array addObject:v17];

  v18 = MEMORY[0x277CCAAD0];
  iconContainerView4 = [(HUTriggerSummaryCell *)self iconContainerView];
  v20 = [v18 constraintWithItem:iconContainerView4 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:32.0];

  contentView4 = [(HUTriggerSummaryCell *)self contentView];
  [contentView4 addConstraint:v20];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (void)setUpTextContainerViewConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  textContainerView = [(HUTriggerSummaryCell *)self textContainerView];
  topAnchor = [textContainerView topAnchor];
  iconContainerView = [(HUTriggerSummaryCell *)self iconContainerView];
  bottomAnchor = [iconContainerView bottomAnchor];
  v7 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:8.0];
  [array addObject:v7];

  textContainerView2 = [(HUTriggerSummaryCell *)self textContainerView];
  leadingAnchor = [textContainerView2 leadingAnchor];
  contentView = [(HUTriggerSummaryCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [array addObject:v12];

  textContainerView3 = [(HUTriggerSummaryCell *)self textContainerView];
  trailingAnchor = [textContainerView3 trailingAnchor];
  contentView2 = [(HUTriggerSummaryCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [array addObject:v17];

  textContainerView4 = [(HUTriggerSummaryCell *)self textContainerView];
  bottomAnchor2 = [textContainerView4 bottomAnchor];
  contentView3 = [(HUTriggerSummaryCell *)self contentView];
  bottomAnchor3 = [contentView3 bottomAnchor];
  v22 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-16.0];
  [array addObject:v22];

  v23 = MEMORY[0x277CCAAD0];
  iconContainerView2 = [(HUTriggerSummaryCell *)self iconContainerView];
  v25 = [v23 constraintWithItem:iconContainerView2 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:32.0];

  contentView4 = [(HUTriggerSummaryCell *)self contentView];
  [contentView4 addConstraint:v25];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (void)updateVerticalLabelConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  verticalLabelConstraints = [(HUTriggerSummaryCell *)self verticalLabelConstraints];
  [v3 deactivateConstraints:verticalLabelConstraints];

  array = [MEMORY[0x277CBEB18] array];
  superview = [(UILabel *)self->_titleLabel superview];

  if (superview)
  {
    titleLabel = [(HUTriggerSummaryCell *)self titleLabel];
    topAnchor = [titleLabel topAnchor];
    textContainerView = [(HUTriggerSummaryCell *)self textContainerView];
    topAnchor2 = [textContainerView topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v10];

    superview2 = [(UILabel *)self->_descriptionLabel superview];

    if (!superview2)
    {
      titleLabel2 = [(HUTriggerSummaryCell *)self titleLabel];
      bottomAnchor = [titleLabel2 bottomAnchor];
      textContainerView2 = [(HUTriggerSummaryCell *)self textContainerView];
      bottomAnchor2 = [textContainerView2 bottomAnchor];
      v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [array addObject:v16];
    }
  }

  superview3 = [(UILabel *)self->_descriptionLabel superview];

  if (superview3)
  {
    superview4 = [(UILabel *)self->_titleLabel superview];

    descriptionLabel = [(HUTriggerSummaryCell *)self descriptionLabel];
    topAnchor3 = [descriptionLabel topAnchor];
    if (superview4)
    {
      bottomAnchor3 = [(UILabel *)self->_titleLabel bottomAnchor];
      topAnchor4 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:3.0];
      [array addObject:topAnchor4];
    }

    else
    {
      bottomAnchor3 = [(HUTriggerSummaryCell *)self textContainerView];
      topAnchor4 = [bottomAnchor3 topAnchor];
      v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      [array addObject:v23];
    }

    descriptionLabel2 = [(HUTriggerSummaryCell *)self descriptionLabel];
    bottomAnchor4 = [descriptionLabel2 bottomAnchor];
    textContainerView3 = [(HUTriggerSummaryCell *)self textContainerView];
    bottomAnchor5 = [textContainerView3 bottomAnchor];
    v28 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [array addObject:v28];

    superview5 = [(UIImageView *)self->_descriptionIconView superview];

    if (superview5)
    {
      descriptionIconView = [(HUTriggerSummaryCell *)self descriptionIconView];
      topAnchor5 = [descriptionIconView topAnchor];
      descriptionLabel3 = [(HUTriggerSummaryCell *)self descriptionLabel];
      topAnchor6 = [descriptionLabel3 topAnchor];
      v34 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      [array addObject:v34];

      descriptionIconView2 = [(HUTriggerSummaryCell *)self descriptionIconView];
      bottomAnchor6 = [descriptionIconView2 bottomAnchor];
      descriptionLabel4 = [(HUTriggerSummaryCell *)self descriptionLabel];
      bottomAnchor7 = [descriptionLabel4 bottomAnchor];
      v39 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
      [array addObject:v39];
    }
  }

  [(HUTriggerSummaryCell *)self setVerticalLabelConstraints:array];
  v40 = MEMORY[0x277CCAAD0];
  verticalLabelConstraints2 = [(HUTriggerSummaryCell *)self verticalLabelConstraints];
  [v40 activateConstraints:verticalLabelConstraints2];
}

- (void)updateHorizontalLabelConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  horizontalLabelConstraints = [(HUTriggerSummaryCell *)self horizontalLabelConstraints];
  [v3 deactivateConstraints:horizontalLabelConstraints];

  array = [MEMORY[0x277CBEB18] array];
  superview = [(UILabel *)self->_titleLabel superview];

  if (superview)
  {
    titleLabel = [(HUTriggerSummaryCell *)self titleLabel];
    leadingAnchor = [titleLabel leadingAnchor];
    textContainerView = [(HUTriggerSummaryCell *)self textContainerView];
    leadingAnchor2 = [textContainerView leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v10];

    titleLabel2 = [(HUTriggerSummaryCell *)self titleLabel];
    trailingAnchor = [titleLabel2 trailingAnchor];
    textContainerView2 = [(HUTriggerSummaryCell *)self textContainerView];
    trailingAnchor2 = [textContainerView2 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v15];
  }

  superview2 = [(UILabel *)self->_descriptionLabel superview];

  if (superview2)
  {
    superview3 = [(UIImageView *)self->_descriptionIconView superview];

    if (superview3)
    {
      descriptionIconView = [(HUTriggerSummaryCell *)self descriptionIconView];
      leadingAnchor3 = [descriptionIconView leadingAnchor];
      textContainerView3 = [(HUTriggerSummaryCell *)self textContainerView];
      leadingAnchor4 = [textContainerView3 leadingAnchor];
      v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      [array addObject:v22];

      descriptionIconView2 = [(HUTriggerSummaryCell *)self descriptionIconView];
      widthAnchor = [descriptionIconView2 widthAnchor];
      descriptionIconView3 = [(HUTriggerSummaryCell *)self descriptionIconView];
      heightAnchor = [descriptionIconView3 heightAnchor];
      v27 = [widthAnchor constraintEqualToAnchor:heightAnchor];
      [array addObject:v27];

      descriptionIconView4 = [(HUTriggerSummaryCell *)self descriptionIconView];
      trailingAnchor3 = [descriptionIconView4 trailingAnchor];
      descriptionLabel = [(HUTriggerSummaryCell *)self descriptionLabel];
      leadingAnchor5 = [descriptionLabel leadingAnchor];
      [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5 constant:-5.0];
    }

    else
    {
      descriptionIconView4 = [(HUTriggerSummaryCell *)self descriptionLabel];
      trailingAnchor3 = [descriptionIconView4 leadingAnchor];
      descriptionLabel = [(HUTriggerSummaryCell *)self textContainerView];
      leadingAnchor5 = [descriptionLabel leadingAnchor];
      [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5];
    }
    v32 = ;
    [array addObject:v32];

    descriptionLabel2 = [(HUTriggerSummaryCell *)self descriptionLabel];
    trailingAnchor4 = [descriptionLabel2 trailingAnchor];
    textContainerView4 = [(HUTriggerSummaryCell *)self textContainerView];
    trailingAnchor5 = [textContainerView4 trailingAnchor];
    v37 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    [array addObject:v37];
  }

  [(HUTriggerSummaryCell *)self setHorizontalLabelConstraints:array];
  v38 = MEMORY[0x277CCAAD0];
  horizontalLabelConstraints2 = [(HUTriggerSummaryCell *)self horizontalLabelConstraints];
  [v38 activateConstraints:horizontalLabelConstraints2];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  item = [(HUTriggerSummaryCell *)self item];
  latestResults = [item latestResults];

  [(HUTriggerSummaryCell *)self updateUITextWithResults:latestResults];
  [(HUTriggerSummaryCell *)self updateUIIconsWithResults:latestResults];
  [(HUTriggerSummaryCell *)self setNeedsUpdateConstraints];
}

- (void)updateUITextWithResults:(id)results
{
  v21[2] = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [(HUTriggerSummaryCell *)self setTitleText:v5];

  [(HUTriggerSummaryCell *)self updateTitle];
  v6 = *MEMORY[0x277D13E20];
  v7 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v7)
  {
    v20[0] = *MEMORY[0x277D740A8];
    descriptionLabel = [(HUTriggerSummaryCell *)self descriptionLabel];
    font = [descriptionLabel font];
    v21[0] = font;
    v20[1] = *MEMORY[0x277D740C0];
    descriptionLabel2 = [(HUTriggerSummaryCell *)self descriptionLabel];
    textColor = [descriptionLabel2 textColor];
    v21[1] = textColor;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v13 = [resultsCopy objectForKeyedSubscript:v6];
    if ([v13 prefersDynamicString])
    {
      descriptionLabel3 = [(HUTriggerSummaryCell *)self descriptionLabel];
      [descriptionLabel3 bounds];
      descriptionLabel5 = [v13 dynamicStringForSize:v12 attributes:{v15, v16}];
      descriptionLabel4 = [(HUTriggerSummaryCell *)self descriptionLabel];
      [descriptionLabel4 setAttributedText:descriptionLabel5];
    }

    else
    {
      descriptionLabel3 = [v13 stringWithAttributes:v12];
      descriptionLabel5 = [(HUTriggerSummaryCell *)self descriptionLabel];
      [descriptionLabel5 setAttributedText:descriptionLabel3];
    }
  }

  else
  {
    descriptionLabel6 = [(HUTriggerSummaryCell *)self descriptionLabel];
    [descriptionLabel6 setAttributedText:0];
  }
}

- (void)updateUIIconsWithResults:(id)results
{
  resultsCopy = results;
  array = [MEMORY[0x277CBEB18] array];
  v5 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  if (v5)
  {
    [array addObject:v5];
    v6 = objc_alloc(MEMORY[0x277D14728]);
    v7 = [v6 initWithImageIdentifier:*MEMORY[0x277D13AC8]];
    [array addObject:v7];
  }

  v8 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13E90]];
  if (v8)
  {
    [array addObjectsFromArray:v8];
  }

  [(HUTriggerSummaryCell *)self setIconDescriptors:array];
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
    titleText = [(HUTriggerSummaryCell *)self titleText];
    titleFont = [(HUTriggerSummaryCell *)self titleFont];
    v7 = [v4 labelWithText:titleText font:titleFont];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v7;

    LODWORD(v9) = 1144766464;
    [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v9];
    LODWORD(v10) = 1132134400;
    [(UILabel *)self->_titleLabel setContentHuggingPriority:1 forAxis:v10];
  }

  textContainerView = [(HUTriggerSummaryCell *)self textContainerView];
  [textContainerView addSubview:self->_titleLabel];

  [(HUTriggerSummaryCell *)self updateTitle];
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
    descriptionText = [(HUTriggerSummaryCell *)self descriptionText];
    descriptionFont = [(HUTriggerSummaryCell *)self descriptionFont];
    v9 = [v6 labelWithText:descriptionText font:descriptionFont];
    v10 = self->_descriptionLabel;
    self->_descriptionLabel = v9;

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)self->_descriptionLabel setTextColor:systemGrayColor];

    descriptionLabel = self->_descriptionLabel;
  }

  LODWORD(v4) = 1144766464;
  [(UILabel *)descriptionLabel setContentHuggingPriority:1 forAxis:v4];
  textContainerView = [(HUTriggerSummaryCell *)self textContainerView];
  [textContainerView addSubview:self->_descriptionLabel];
}

- (void)_addDescriptionIconView
{
  if (!self->_descriptionIconView)
  {
    v3 = objc_alloc(MEMORY[0x277D755E8]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    descriptionIconView = self->_descriptionIconView;
    self->_descriptionIconView = v4;

    [(UIImageView *)self->_descriptionIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UIImageView *)self->_descriptionIconView setTintColor:systemGrayColor];

    [(UIImageView *)self->_descriptionIconView setContentMode:1];
    descriptionIcon = [(HUTriggerSummaryCell *)self descriptionIcon];

    if (descriptionIcon)
    {
      descriptionIcon2 = [(HUTriggerSummaryCell *)self descriptionIcon];
      v10 = [descriptionIcon2 imageWithRenderingMode:2];
      [(UIImageView *)self->_descriptionIconView setImage:v10];
    }

    LODWORD(v8) = 1132003328;
    [(UIImageView *)self->_descriptionIconView setContentCompressionResistancePriority:1 forAxis:v8];
  }

  textContainerView = [(HUTriggerSummaryCell *)self textContainerView];
  [textContainerView addSubview:self->_descriptionIconView];
}

- (void)updateTitle
{
  if ([(HUTriggerSummaryCell *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v3 = ;
  [(UILabel *)self->_titleLabel setTextColor:v3];

  [(HUTriggerSummaryCell *)self textAlpha];
  if (v4 != 0.0)
  {
    [(HUTriggerSummaryCell *)self textAlpha];
    [(UILabel *)self->_titleLabel setAlpha:?];
    [(HUTriggerSummaryCell *)self textAlpha];
    descriptionLabel = self->_descriptionLabel;

    [(UILabel *)descriptionLabel setAlpha:?];
  }
}

- (void)updateSelectionUI
{
  canBeSelected = [(HUTriggerSummaryCell *)self canBeSelected];
  if (canBeSelected)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  [(HUTriggerSummaryCell *)self setAccessoryType:canBeSelected];

  [(HUTriggerSummaryCell *)self setSelectionStyle:v4];
}

@end