@interface ToolbarItemConfiguration
+ (id)attributedTitleForTabGroup:(id)a3 inProfile:(id)a4 primaryColor:(id)a5 secondaryColor:(id)a6;
+ (id)configurationForProfile:(id)a3;
+ (id)configurationForTabGroup:(id)a3;
+ (id)configurationForTabGroup:(id)a3 inProfile:(id)a4;
+ (id)configurationForTabGroupPicker;
- (NSAttributedString)attributedTitle;
- (NSString)title;
- (ToolbarItemConfiguration)init;
- (id)buttonConfigurationWithStyle:(int64_t)a3;
- (void)setAttributedTitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation ToolbarItemConfiguration

+ (id)configurationForTabGroup:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ToolbarItemConfiguration);
  v5 = [v3 displayTitle];

  [(ToolbarItemConfiguration *)v4 setTitle:v5];

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

+ (id)configurationForProfile:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ToolbarItemConfiguration);
  v5 = [v3 symbolImage];
  [(ToolbarItemConfiguration *)v4 setImage:v5];

  v6 = [v3 title];
  [(ToolbarItemConfiguration *)v4 setTitle:v6];

  v7 = [v3 title];

  [(ToolbarItemConfiguration *)v4 setAccessibilityIdentifier:v7];

  return v4;
}

+ (id)configurationForTabGroup:(id)a3 inProfile:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(ToolbarItemConfiguration);
  v9 = [v6 symbolImage];
  [(ToolbarItemConfiguration *)v8 setImage:v9];

  v10 = [v6 title];
  [(ToolbarItemConfiguration *)v8 setAccessibilityIdentifier:v10];

  v11 = [MEMORY[0x277D75348] labelColor];
  v12 = [MEMORY[0x277D75348] secondaryLabelColor];
  v13 = [a1 attributedTitleForTabGroup:v7 inProfile:v6 primaryColor:v11 secondaryColor:v12];

  [(ToolbarItemConfiguration *)v8 setAttributedTitle:v13];

  return v8;
}

+ (id)attributedTitleForTabGroup:(id)a3 inProfile:(id)a4 primaryColor:(id)a5 secondaryColor:(id)a6
{
  v29[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x277D740C0];
  if (v11)
  {
    v28 = *MEMORY[0x277D740C0];
    v29[0] = v11;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_alloc(MEMORY[0x277CCAB48]);
  v16 = [v10 title];
  v17 = [v15 initWithString:v16 attributes:v14];

  if (v12)
  {
    v26 = *v13;
    v27 = v12;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_alloc(MEMORY[0x277CCA898]);
  v20 = MEMORY[0x277CCACA8];
  v21 = [v9 displayTitle];
  v22 = [v20 stringWithFormat:@" — %@", v21];
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

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
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

- (void)setAttributedTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;
}

- (id)buttonConfigurationWithStyle:(int64_t)a3
{
  v5 = [MEMORY[0x277D75230] borderlessButtonConfiguration];
  v6 = MEMORY[0x277D76988];
  if (!self->_emphasized)
  {
    v6 = MEMORY[0x277D76918];
  }

  v7 = *v6;
  if (self->_image)
  {
    [v5 setImage:?];
    v8 = 4.0;
    if (self->_emphasized)
    {
      v8 = 2.0;
    }

    [v5 setImagePadding:v8];
    if (a3 == 1)
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
    [v5 setPreferredSymbolConfigurationForImage:v10];
  }

  if (a3 != 1 && self->_title)
  {
    v11 = [(ToolbarItemConfiguration *)self title];
    if (v11)
    {
      [v5 setTitle:v11];
    }

    v12 = [(ToolbarItemConfiguration *)self attributedTitle];
    if (v12)
    {
      [v5 setAttributedTitle:v12];
    }

    [v5 setTitleLineBreakMode:4];
  }

  if (self->_emphasized)
  {
    v13 = [MEMORY[0x277D75348] labelColor];
    [v5 setBaseForegroundColor:v13];

    [v5 setTitleTextAttributesTransformer:&__block_literal_global_2];
  }

  else
  {
    v14 = [MEMORY[0x277D75348] tintColor];
    [v5 setBaseForegroundColor:v14];
  }

  if (self->_showsIndicator)
  {
    [v5 setIndicator:3];
    [v5 setIndicatorColorTransformer:&__block_literal_global_16];
  }

  return v5;
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