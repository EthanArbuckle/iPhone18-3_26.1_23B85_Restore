@interface CNFRegModernTransparentLightAppearanceController
- (id)navigationBarTintColor;
- (id)splashEntryFieldLabelTextColor;
- (id)splashEntryPlaceholderTextColor;
- (id)splashSignInFieldsBorderColor;
- (id)tableBackgroundColor;
- (id)tableCellCheckmarkImageDisabled;
@end

@implementation CNFRegModernTransparentLightAppearanceController

- (id)tableBackgroundColor
{
  v2 = tableBackgroundColor_color_1;
  if (!tableBackgroundColor_color_1)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v4 = tableBackgroundColor_color_1;
    tableBackgroundColor_color_1 = v3;

    v2 = tableBackgroundColor_color_1;
  }

  return v2;
}

- (id)tableCellCheckmarkImageDisabled
{
  v2 = tableCellCheckmarkImageDisabled_sTintedImage_2;
  if (!tableCellCheckmarkImageDisabled_sTintedImage_2)
  {
    v3 = [MEMORY[0x277D755B8] kitImageNamed:@"UIPreferencesBlueCheck.png"];
    v4 = [MEMORY[0x277D75348] whiteColor];
    v5 = [v3 _flatImageWithColor:v4];
    v6 = tableCellCheckmarkImageDisabled_sTintedImage_2;
    tableCellCheckmarkImageDisabled_sTintedImage_2 = v5;

    v2 = tableCellCheckmarkImageDisabled_sTintedImage_2;
  }

  return v2;
}

- (id)splashEntryPlaceholderTextColor
{
  v2 = splashEntryPlaceholderTextColor_color_0;
  if (!splashEntryPlaceholderTextColor_color_0)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.266666681 green:0.266666681 blue:0.266666681 alpha:1.0];
    v4 = splashEntryPlaceholderTextColor_color_0;
    splashEntryPlaceholderTextColor_color_0 = v3;

    v2 = splashEntryPlaceholderTextColor_color_0;
  }

  return v2;
}

- (id)splashEntryFieldLabelTextColor
{
  v2 = splashEntryFieldLabelTextColor_color_0;
  if (!splashEntryFieldLabelTextColor_color_0)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.00392156886 green:0.00392156886 blue:0.00392156886 alpha:1.0];
    v4 = splashEntryFieldLabelTextColor_color_0;
    splashEntryFieldLabelTextColor_color_0 = v3;

    v2 = splashEntryFieldLabelTextColor_color_0;
  }

  return v2;
}

- (id)splashSignInFieldsBorderColor
{
  v2 = splashSignInFieldsBorderColor_color_1;
  if (!splashSignInFieldsBorderColor_color_1)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.00392156886 green:0.00392156886 blue:0.00392156886 alpha:1.0];
    v4 = splashSignInFieldsBorderColor_color_1;
    splashSignInFieldsBorderColor_color_1 = v3;

    v2 = splashSignInFieldsBorderColor_color_1;
  }

  return v2;
}

- (id)navigationBarTintColor
{
  v2 = navigationBarTintColor_color_0;
  if (!navigationBarTintColor_color_0)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v4 = navigationBarTintColor_color_0;
    navigationBarTintColor_color_0 = v3;

    v2 = navigationBarTintColor_color_0;
  }

  return v2;
}

@end