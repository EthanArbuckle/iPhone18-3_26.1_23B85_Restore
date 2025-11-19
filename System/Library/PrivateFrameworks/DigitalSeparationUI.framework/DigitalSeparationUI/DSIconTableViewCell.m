@interface DSIconTableViewCell
+ (id)disabledIconTableViewCellFromTableView:(id)a3 withText:(id)a4 detail:(id)a5 icon:(id)a6;
+ (id)iconTableViewCellFromTableView:(id)a3 withRightAlignedLabel:(id)a4 detail:(id)a5 icon:(id)a6;
+ (id)iconTableViewCellFromTableView:(id)a3 withText:(id)a4 detail:(id)a5 icon:(id)a6;
- (DSIconTableViewCell)initWithRightAlignedLabel:(id)a3 detail:(id)a4 icon:(id)a5;
- (DSIconTableViewCell)initWithText:(id)a3 detail:(id)a4 icon:(id)a5;
- (NSDirectionalEdgeInsets)directionalLayoutMarginsForCellWithIcon:(BOOL)a3 withSecondaryText:(BOOL)a4;
- (id)contentConfigurationWithText:(id)a3 secondaryText:(id)a4 icon:(id)a5;
- (id)initDisabledCellWithText:(id)a3 detail:(id)a4 icon:(id)a5;
- (id)subtitleFont;
- (id)titleFont;
- (void)addDisabledOverlay;
- (void)customizeProperties;
- (void)setIcon:(id)a3;
- (void)setTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (void)willTransitionToState:(unint64_t)a3;
@end

@implementation DSIconTableViewCell

+ (id)iconTableViewCellFromTableView:(id)a3 withText:(id)a4 detail:(id)a5 icon:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 dequeueReusableCellWithIdentifier:@"DSCell"];
  v14 = v13;
  if (v13)
  {
    [v13 setTitle:v10 detailText:v11 icon:v12];
    v15 = v14;
  }

  else
  {
    v15 = [[a1 alloc] initWithText:v10 detail:v11 icon:v12];
  }

  v16 = v15;

  return v16;
}

+ (id)iconTableViewCellFromTableView:(id)a3 withRightAlignedLabel:(id)a4 detail:(id)a5 icon:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 dequeueReusableCellWithIdentifier:@"DSCellRightAligned"];
  v14 = v13;
  if (v13)
  {
    [v13 setTitle:v10 detailText:v11 icon:v12];
    v15 = v14;
  }

  else
  {
    v15 = [[a1 alloc] initWithRightAlignedLabel:v10 detail:v11 icon:v12];
  }

  v16 = v15;

  return v16;
}

- (DSIconTableViewCell)initWithText:(id)a3 detail:(id)a4 icon:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = DSIconTableViewCell;
  v11 = [(DSIconTableViewCell *)&v14 initWithStyle:3 reuseIdentifier:@"DSCell"];
  v12 = v11;
  if (v11)
  {
    [(DSIconTableViewCell *)v11 setTitle:v8 detailText:v9 icon:v10];
    [(DSIconTableViewCell *)v12 customizeProperties];
  }

  return v12;
}

- (DSIconTableViewCell)initWithRightAlignedLabel:(id)a3 detail:(id)a4 icon:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = DSIconTableViewCell;
  v11 = [(DSIconTableViewCell *)&v14 initWithStyle:1 reuseIdentifier:@"DSCellRightAligned"];
  v12 = v11;
  if (v11)
  {
    [(DSIconTableViewCell *)v11 setTitle:v8 detailText:v9 icon:v10];
    [(DSIconTableViewCell *)v12 customizeProperties];
  }

  return v12;
}

- (void)customizeProperties
{
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v3 = [(DSIconTableViewCell *)self heightAnchor];
    v4 = [v3 constraintGreaterThanOrEqualToConstant:52.0];
    [v4 setActive:1];
  }

  else
  {
    v5 = [(DSIconTableViewCell *)self textLabel];
    [v5 setNumberOfLines:0];

    v6 = [(DSIconTableViewCell *)self textLabel];
    [v6 setLineBreakMode:0];

    v7 = [(DSIconTableViewCell *)self detailTextLabel];
    v8 = [(DSIconTableViewCell *)self subtitleFont];
    [v7 setFont:v8];

    v9 = [(DSIconTableViewCell *)self detailTextLabel];
    v10 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v9 setTextColor:v10];

    v11 = [(DSIconTableViewCell *)self detailTextLabel];
    [v11 setNumberOfLines:0];

    v3 = [(DSIconTableViewCell *)self detailTextLabel];
    [v3 setLineBreakMode:0];
  }

  v12 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  [(DSIconTableViewCell *)self setBackgroundColor:v12];

  [(DSIconTableViewCell *)self setIsAccessibilityElement:1];
}

- (void)willTransitionToState:(unint64_t)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = DSIconTableViewCell;
  [(DSIconTableViewCell *)&v7 willTransitionToState:?];
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    v6 = [MEMORY[0x277D75348] clearColor];
    [v5 setBackgroundColor:v6];

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

- (void)setTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v10 = [(DSIconTableViewCell *)self contentConfigurationWithText:v13 secondaryText:v8 icon:v9];
    [(DSIconTableViewCell *)self setContentConfiguration:v10];
  }

  else
  {
    v11 = [(DSIconTableViewCell *)self textLabel];
    [v11 setText:v13];

    v12 = [(DSIconTableViewCell *)self detailTextLabel];
    [v12 setText:v8];

    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = [(DSIconTableViewCell *)self imageView];
    [v10 setImage:v9];
  }

LABEL_6:
}

- (id)contentConfigurationWithText:(id)a3 secondaryText:(id)a4 icon:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(DSIconTableViewCell *)self defaultContentConfiguration];
  [v11 setText:v10];

  v12 = [(DSIconTableViewCell *)self titleFont];
  v13 = [v11 textProperties];
  [v13 setFont:v12];

  if (v8)
  {
    [v11 setSecondaryText:v8];
    v14 = [(DSIconTableViewCell *)self subtitleFont];
    v15 = [v11 secondaryTextProperties];
    [v15 setFont:v14];

    v16 = [MEMORY[0x277D75348] secondaryLabelColor];
    v17 = [v11 secondaryTextProperties];
    [v17 setColor:v16];
  }

  if (v9)
  {
    [v9 size];
    if (v18 < 32.0 || ([v9 size], v19 < 32.0))
    {
      v20 = [v9 imageByPreparingThumbnailOfSize:{32.0, 32.0}];

      v9 = v20;
    }

    [v11 setImage:v9];
    v21 = [v11 imageProperties];
    [v21 setCornerRadius:7.0];

    v9 = v9 != 0;
  }

  -[DSIconTableViewCell directionalLayoutMarginsForCellWithIcon:withSecondaryText:](self, "directionalLayoutMarginsForCellWithIcon:withSecondaryText:", v9, [v8 length] != 0);
  [v11 setDirectionalLayoutMargins:?];

  return v11;
}

- (NSDirectionalEdgeInsets)directionalLayoutMarginsForCellWithIcon:(BOOL)a3 withSecondaryText:(BOOL)a4
{
  v4 = 15.0;
  v5 = 10.0;
  if ((a3 & ~a4) == 0)
  {
    v5 = 15.0;
  }

  if (a3)
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

+ (id)disabledIconTableViewCellFromTableView:(id)a3 withText:(id)a4 detail:(id)a5 icon:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 dequeueReusableCellWithIdentifier:@"DSCellOverlay"];
  v14 = v13;
  if (v13)
  {
    [v13 setTitle:v10 detailText:v11 icon:v12];
    v15 = v14;
  }

  else
  {
    v15 = [[a1 alloc] initDisabledCellWithText:v10 detail:v11 icon:v12];
  }

  v16 = v15;

  return v16;
}

- (id)initDisabledCellWithText:(id)a3 detail:(id)a4 icon:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = DSIconTableViewCell;
  v11 = [(DSIconTableViewCell *)&v14 initWithStyle:3 reuseIdentifier:@"DSCellOverlay"];
  v12 = v11;
  if (v11)
  {
    [(DSIconTableViewCell *)v11 setTitle:v8 detailText:v9 icon:v10];
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
      v4 = [(DSIconTableViewCell *)self contentConfiguration];
      [v4 setAlpha:0.5];
      [(DSIconTableViewCell *)self setContentConfiguration:v4];
    }

    else
    {
      v5 = [(DSIconTableViewCell *)self textLabel];
      [v5 setAlpha:0.5];

      v6 = [(DSIconTableViewCell *)self detailTextLabel];
      [v6 setAlpha:0.5];

      v4 = [(DSIconTableViewCell *)self imageView];
      [v4 setAlpha:0.5];
    }

    v7 = [(DSIconTableViewCell *)self interactionTintColor];
    v8 = [v7 colorWithAlphaComponent:0.5];

    [(DSIconTableViewCell *)self setInteractionTintColor:v8];
  }
}

- (void)setIcon:(id)a3
{
  v8 = a3;
  [v8 size];
  if (v4 < 32.0 || ([v8 size], v5 < 32.0))
  {
    v6 = [v8 imageByPreparingThumbnailOfSize:{32.0, 32.0}];

    v8 = v6;
  }

  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v7 = [(DSIconTableViewCell *)self contentConfiguration];
    if (objc_opt_respondsToSelector())
    {
      [v7 performSelector:sel_setImage_ withObject:v8];
    }

    [(DSIconTableViewCell *)self setContentConfiguration:v7];
  }

  else
  {
    v7 = [(DSIconTableViewCell *)self imageView];
    [v7 setImage:v8];
  }
}

@end