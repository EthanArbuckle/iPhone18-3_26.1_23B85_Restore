@interface ToolbarItemConfiguration
+ (id)attributedTitleForTabGroup:(id)group inProfile:(id)profile primaryColor:(id)color secondaryColor:(id)secondaryColor;
+ (id)configurationForProfile:(id)profile;
+ (id)configurationForTabGroup:(id)group;
+ (id)configurationForTabGroup:(id)group inProfile:(id)profile;
+ (id)configurationForTabGroupPicker;
- (NSAttributedString)attributedTitle;
- (NSString)title;
- (ToolbarItemConfiguration)init;
- (id)buttonConfigurationWithStyle:(int64_t)style;
- (void)setAttributedTitle:(id)title;
- (void)setTitle:(id)title;
@end

@implementation ToolbarItemConfiguration

+ (id)configurationForTabGroup:(id)group
{
  groupCopy = group;
  v4 = objc_alloc_init(ToolbarItemConfiguration);
  displayTitle = [groupCopy displayTitle];

  [(ToolbarItemConfiguration *)v4 setTitle:displayTitle];

  return v4;
}

+ (id)configurationForTabGroupPicker
{
  v2 = objc_alloc_init(ToolbarItemConfiguration);
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"list.bullet"];
  [(ToolbarItemConfiguration *)v2 setImage:v3];

  [(ToolbarItemConfiguration *)v2 setShowsIndicator:0];

  return v2;
}

+ (id)configurationForProfile:(id)profile
{
  profileCopy = profile;
  v4 = objc_alloc_init(ToolbarItemConfiguration);
  symbolImage = [profileCopy symbolImage];
  [(ToolbarItemConfiguration *)v4 setImage:symbolImage];

  title = [profileCopy title];
  [(ToolbarItemConfiguration *)v4 setTitle:title];

  title2 = [profileCopy title];

  [(ToolbarItemConfiguration *)v4 setAccessibilityIdentifier:title2];

  return v4;
}

+ (id)configurationForTabGroup:(id)group inProfile:(id)profile
{
  profileCopy = profile;
  groupCopy = group;
  v8 = objc_alloc_init(ToolbarItemConfiguration);
  symbolImage = [profileCopy symbolImage];
  [(ToolbarItemConfiguration *)v8 setImage:symbolImage];

  title = [profileCopy title];
  [(ToolbarItemConfiguration *)v8 setAccessibilityIdentifier:title];

  labelColor = [MEMORY[0x277D75348] labelColor];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v13 = [self attributedTitleForTabGroup:groupCopy inProfile:profileCopy primaryColor:labelColor secondaryColor:secondaryLabelColor];

  [(ToolbarItemConfiguration *)v8 setAttributedTitle:v13];

  return v8;
}

+ (id)attributedTitleForTabGroup:(id)group inProfile:(id)profile primaryColor:(id)color secondaryColor:(id)secondaryColor
{
  v29[1] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  profileCopy = profile;
  colorCopy = color;
  secondaryColorCopy = secondaryColor;
  v13 = MEMORY[0x277D740C0];
  if (colorCopy)
  {
    v28 = *MEMORY[0x277D740C0];
    v29[0] = colorCopy;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_alloc(MEMORY[0x277CCAB48]);
  title = [profileCopy title];
  v17 = [v15 initWithString:title attributes:v14];

  if (secondaryColorCopy)
  {
    v26 = *v13;
    v27 = secondaryColorCopy;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_alloc(MEMORY[0x277CCA898]);
  v20 = MEMORY[0x277CCACA8];
  displayTitle = [groupCopy displayTitle];
  v22 = [v20 stringWithFormat:@" — %@", displayTitle];
  v23 = [v19 initWithString:v22 attributes:v18];
  [v17 appendAttributedString:v23];

  v24 = [v17 mutableCopy];

  return v24;
}

- (ToolbarItemConfiguration)init
{
  v3.receiver = self;
  v3.super_class = ToolbarItemConfiguration;
  result = [(ToolbarItemConfiguration *)&v3 init];
  *&result->_showsIndicator = 257;
  return result;
}

- (NSString)title
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    title = self->_title;
  }

  else
  {
    title = 0;
  }

  return title;
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;
}

- (NSAttributedString)attributedTitle
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    title = self->_title;
  }

  else
  {
    title = 0;
  }

  return title;
}

- (void)setAttributedTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;
}

- (id)buttonConfigurationWithStyle:(int64_t)style
{
  borderlessButtonConfiguration = [MEMORY[0x277D75230] borderlessButtonConfiguration];
  v6 = MEMORY[0x277D76988];
  if (!self->_emphasized)
  {
    v6 = MEMORY[0x277D76918];
  }

  v7 = *v6;
  if (self->_image)
  {
    [borderlessButtonConfiguration setImage:?];
    v8 = 4.0;
    if (self->_emphasized)
    {
      v8 = 2.0;
    }

    [borderlessButtonConfiguration setImagePadding:v8];
    if (style == 1)
    {
      v9 = 3;
    }

    else if (self->_title)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    v10 = [MEMORY[0x277D755D0] configurationWithTextStyle:v7 scale:v9];
    [borderlessButtonConfiguration setPreferredSymbolConfigurationForImage:v10];
  }

  if (style != 1 && self->_title)
  {
    title = [(ToolbarItemConfiguration *)self title];
    if (title)
    {
      [borderlessButtonConfiguration setTitle:title];
    }

    attributedTitle = [(ToolbarItemConfiguration *)self attributedTitle];
    if (attributedTitle)
    {
      [borderlessButtonConfiguration setAttributedTitle:attributedTitle];
    }

    [borderlessButtonConfiguration setTitleLineBreakMode:4];
  }

  if (self->_emphasized)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    [borderlessButtonConfiguration setBaseForegroundColor:labelColor];

    [borderlessButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_2];
  }

  else
  {
    tintColor = [MEMORY[0x277D75348] tintColor];
    [borderlessButtonConfiguration setBaseForegroundColor:tintColor];
  }

  if (self->_showsIndicator)
  {
    [borderlessButtonConfiguration setIndicator:3];
    [borderlessButtonConfiguration setIndicatorColorTransformer:&__block_literal_global_16];
  }

  return borderlessButtonConfiguration;
}

id __57__ToolbarItemConfiguration_buttonConfigurationWithStyle___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277D740A8];
  v2 = MEMORY[0x277D74300];
  v3 = *MEMORY[0x277D76988];
  v4 = a2;
  v5 = [v2 preferredFontForTextStyle:v3];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 safari_setValuesFromDictionary:v6];

  return v7;
}

@end