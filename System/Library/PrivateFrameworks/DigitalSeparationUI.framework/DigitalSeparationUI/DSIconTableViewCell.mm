@interface DSIconTableViewCell
+ (id)disabledIconTableViewCellFromTableView:(id)view withText:(id)text detail:(id)detail icon:(id)icon;
+ (id)iconTableViewCellFromTableView:(id)view withRightAlignedLabel:(id)label detail:(id)detail icon:(id)icon;
+ (id)iconTableViewCellFromTableView:(id)view withText:(id)text detail:(id)detail icon:(id)icon;
- (DSIconTableViewCell)initWithRightAlignedLabel:(id)label detail:(id)detail icon:(id)icon;
- (DSIconTableViewCell)initWithText:(id)text detail:(id)detail icon:(id)icon;
- (NSDirectionalEdgeInsets)directionalLayoutMarginsForCellWithIcon:(BOOL)icon withSecondaryText:(BOOL)text;
- (id)contentConfigurationWithText:(id)text secondaryText:(id)secondaryText icon:(id)icon;
- (id)initDisabledCellWithText:(id)text detail:(id)detail icon:(id)icon;
- (id)subtitleFont;
- (id)titleFont;
- (void)addDisabledOverlay;
- (void)customizeProperties;
- (void)setIcon:(id)icon;
- (void)setTitle:(id)title detailText:(id)text icon:(id)icon;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation DSIconTableViewCell

+ (id)iconTableViewCellFromTableView:(id)view withText:(id)text detail:(id)detail icon:(id)icon
{
  textCopy = text;
  detailCopy = detail;
  iconCopy = icon;
  v13 = [view dequeueReusableCellWithIdentifier:@"DSCell"];
  v14 = v13;
  if (v13)
  {
    [v13 setTitle:textCopy detailText:detailCopy icon:iconCopy];
    v15 = v14;
  }

  else
  {
    v15 = [[self alloc] initWithText:textCopy detail:detailCopy icon:iconCopy];
  }

  v16 = v15;

  return v16;
}

+ (id)iconTableViewCellFromTableView:(id)view withRightAlignedLabel:(id)label detail:(id)detail icon:(id)icon
{
  labelCopy = label;
  detailCopy = detail;
  iconCopy = icon;
  v13 = [view dequeueReusableCellWithIdentifier:@"DSCellRightAligned"];
  v14 = v13;
  if (v13)
  {
    [v13 setTitle:labelCopy detailText:detailCopy icon:iconCopy];
    v15 = v14;
  }

  else
  {
    v15 = [[self alloc] initWithRightAlignedLabel:labelCopy detail:detailCopy icon:iconCopy];
  }

  v16 = v15;

  return v16;
}

- (DSIconTableViewCell)initWithText:(id)text detail:(id)detail icon:(id)icon
{
  textCopy = text;
  detailCopy = detail;
  iconCopy = icon;
  v14.receiver = self;
  v14.super_class = DSIconTableViewCell;
  v11 = [(DSIconTableViewCell *)&v14 initWithStyle:3 reuseIdentifier:@"DSCell"];
  v12 = v11;
  if (v11)
  {
    [(DSIconTableViewCell *)v11 setTitle:textCopy detailText:detailCopy icon:iconCopy];
    [(DSIconTableViewCell *)v12 customizeProperties];
  }

  return v12;
}

- (DSIconTableViewCell)initWithRightAlignedLabel:(id)label detail:(id)detail icon:(id)icon
{
  labelCopy = label;
  detailCopy = detail;
  iconCopy = icon;
  v14.receiver = self;
  v14.super_class = DSIconTableViewCell;
  v11 = [(DSIconTableViewCell *)&v14 initWithStyle:1 reuseIdentifier:@"DSCellRightAligned"];
  v12 = v11;
  if (v11)
  {
    [(DSIconTableViewCell *)v11 setTitle:labelCopy detailText:detailCopy icon:iconCopy];
    [(DSIconTableViewCell *)v12 customizeProperties];
  }

  return v12;
}

- (void)customizeProperties
{
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    heightAnchor = [(DSIconTableViewCell *)self heightAnchor];
    v4 = [heightAnchor constraintGreaterThanOrEqualToConstant:52.0];
    [v4 setActive:1];
  }

  else
  {
    textLabel = [(DSIconTableViewCell *)self textLabel];
    [textLabel setNumberOfLines:0];

    textLabel2 = [(DSIconTableViewCell *)self textLabel];
    [textLabel2 setLineBreakMode:0];

    detailTextLabel = [(DSIconTableViewCell *)self detailTextLabel];
    subtitleFont = [(DSIconTableViewCell *)self subtitleFont];
    [detailTextLabel setFont:subtitleFont];

    detailTextLabel2 = [(DSIconTableViewCell *)self detailTextLabel];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [detailTextLabel2 setTextColor:secondaryLabelColor];

    detailTextLabel3 = [(DSIconTableViewCell *)self detailTextLabel];
    [detailTextLabel3 setNumberOfLines:0];

    heightAnchor = [(DSIconTableViewCell *)self detailTextLabel];
    [heightAnchor setLineBreakMode:0];
  }

  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [(DSIconTableViewCell *)self setBackgroundColor:tertiarySystemFillColor];

  [(DSIconTableViewCell *)self setIsAccessibilityElement:1];
}

- (void)willTransitionToState:(unint64_t)state
{
  stateCopy = state;
  v7.receiver = self;
  v7.super_class = DSIconTableViewCell;
  [(DSIconTableViewCell *)&v7 willTransitionToState:?];
  if (stateCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v5 setBackgroundColor:clearColor];

    [(DSIconTableViewCell *)self setSelectedBackgroundView:v5];
  }
}

- (id)titleFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:17.0];

  return v3;
}

- (id)subtitleFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:17.0];
  }

  else
  {
    v4 = [v2 fontDescriptorWithSymbolicTraits:0x8000];

    v3 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];
    v2 = v4;
  }

  return v3;
}

- (void)setTitle:(id)title detailText:(id)text icon:(id)icon
{
  titleCopy = title;
  textCopy = text;
  iconCopy = icon;
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    imageView = [(DSIconTableViewCell *)self contentConfigurationWithText:titleCopy secondaryText:textCopy icon:iconCopy];
    [(DSIconTableViewCell *)self setContentConfiguration:imageView];
  }

  else
  {
    textLabel = [(DSIconTableViewCell *)self textLabel];
    [textLabel setText:titleCopy];

    detailTextLabel = [(DSIconTableViewCell *)self detailTextLabel];
    [detailTextLabel setText:textCopy];

    if (!iconCopy)
    {
      goto LABEL_6;
    }

    imageView = [(DSIconTableViewCell *)self imageView];
    [imageView setImage:iconCopy];
  }

LABEL_6:
}

- (id)contentConfigurationWithText:(id)text secondaryText:(id)secondaryText icon:(id)icon
{
  secondaryTextCopy = secondaryText;
  iconCopy = icon;
  textCopy = text;
  defaultContentConfiguration = [(DSIconTableViewCell *)self defaultContentConfiguration];
  [defaultContentConfiguration setText:textCopy];

  titleFont = [(DSIconTableViewCell *)self titleFont];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setFont:titleFont];

  if (secondaryTextCopy)
  {
    [defaultContentConfiguration setSecondaryText:secondaryTextCopy];
    subtitleFont = [(DSIconTableViewCell *)self subtitleFont];
    secondaryTextProperties = [defaultContentConfiguration secondaryTextProperties];
    [secondaryTextProperties setFont:subtitleFont];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    secondaryTextProperties2 = [defaultContentConfiguration secondaryTextProperties];
    [secondaryTextProperties2 setColor:secondaryLabelColor];
  }

  if (iconCopy)
  {
    [iconCopy size];
    if (v18 < 32.0 || ([iconCopy size], v19 < 32.0))
    {
      v20 = [iconCopy imageByPreparingThumbnailOfSize:{32.0, 32.0}];

      iconCopy = v20;
    }

    [defaultContentConfiguration setImage:iconCopy];
    imageProperties = [defaultContentConfiguration imageProperties];
    [imageProperties setCornerRadius:7.0];

    iconCopy = iconCopy != 0;
  }

  -[DSIconTableViewCell directionalLayoutMarginsForCellWithIcon:withSecondaryText:](self, "directionalLayoutMarginsForCellWithIcon:withSecondaryText:", iconCopy, [secondaryTextCopy length] != 0);
  [defaultContentConfiguration setDirectionalLayoutMargins:?];

  return defaultContentConfiguration;
}

- (NSDirectionalEdgeInsets)directionalLayoutMarginsForCellWithIcon:(BOOL)icon withSecondaryText:(BOOL)text
{
  v4 = 15.0;
  v5 = 10.0;
  if ((icon & ~text) == 0)
  {
    v5 = 15.0;
  }

  if (icon)
  {
    v4 = 13.0;
  }

  v6 = 15.0;
  v7 = v5;
  result.trailing = v6;
  result.bottom = v7;
  result.leading = v4;
  result.top = v5;
  return result;
}

+ (id)disabledIconTableViewCellFromTableView:(id)view withText:(id)text detail:(id)detail icon:(id)icon
{
  textCopy = text;
  detailCopy = detail;
  iconCopy = icon;
  v13 = [view dequeueReusableCellWithIdentifier:@"DSCellOverlay"];
  v14 = v13;
  if (v13)
  {
    [v13 setTitle:textCopy detailText:detailCopy icon:iconCopy];
    v15 = v14;
  }

  else
  {
    v15 = [[self alloc] initDisabledCellWithText:textCopy detail:detailCopy icon:iconCopy];
  }

  v16 = v15;

  return v16;
}

- (id)initDisabledCellWithText:(id)text detail:(id)detail icon:(id)icon
{
  textCopy = text;
  detailCopy = detail;
  iconCopy = icon;
  v14.receiver = self;
  v14.super_class = DSIconTableViewCell;
  v11 = [(DSIconTableViewCell *)&v14 initWithStyle:3 reuseIdentifier:@"DSCellOverlay"];
  v12 = v11;
  if (v11)
  {
    [(DSIconTableViewCell *)v11 setTitle:textCopy detailText:detailCopy icon:iconCopy];
    [(DSIconTableViewCell *)v12 customizeProperties];
    [(DSIconTableViewCell *)v12 addDisabledOverlay];
  }

  return v12;
}

- (void)addDisabledOverlay
{
  if (+[DSFeatureFlags isIntroductionsEnabled])
  {
    if (+[DSFeatureFlags isNaturalUIEnabled]&& ([(DSIconTableViewCell *)self contentConfiguration], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {
      contentConfiguration = [(DSIconTableViewCell *)self contentConfiguration];
      [contentConfiguration setAlpha:0.5];
      [(DSIconTableViewCell *)self setContentConfiguration:contentConfiguration];
    }

    else
    {
      textLabel = [(DSIconTableViewCell *)self textLabel];
      [textLabel setAlpha:0.5];

      detailTextLabel = [(DSIconTableViewCell *)self detailTextLabel];
      [detailTextLabel setAlpha:0.5];

      contentConfiguration = [(DSIconTableViewCell *)self imageView];
      [contentConfiguration setAlpha:0.5];
    }

    interactionTintColor = [(DSIconTableViewCell *)self interactionTintColor];
    v8 = [interactionTintColor colorWithAlphaComponent:0.5];

    [(DSIconTableViewCell *)self setInteractionTintColor:v8];
  }
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  [iconCopy size];
  if (v4 < 32.0 || ([iconCopy size], v5 < 32.0))
  {
    v6 = [iconCopy imageByPreparingThumbnailOfSize:{32.0, 32.0}];

    iconCopy = v6;
  }

  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    contentConfiguration = [(DSIconTableViewCell *)self contentConfiguration];
    if (objc_opt_respondsToSelector())
    {
      [contentConfiguration performSelector:sel_setImage_ withObject:iconCopy];
    }

    [(DSIconTableViewCell *)self setContentConfiguration:contentConfiguration];
  }

  else
  {
    contentConfiguration = [(DSIconTableViewCell *)self imageView];
    [contentConfiguration setImage:iconCopy];
  }
}

@end