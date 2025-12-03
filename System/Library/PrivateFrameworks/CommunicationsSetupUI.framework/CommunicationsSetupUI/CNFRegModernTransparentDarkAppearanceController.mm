@interface CNFRegModernTransparentDarkAppearanceController
- (id)customBackgroundColor;
- (id)navigationBarBackgroundImage;
- (id)navigationBarTintColor;
- (id)splashEntryFieldLabelTextColor;
- (id)splashEntryFieldTextColor;
- (id)splashEntryPlaceholderTextColor;
- (id)splashSignInFieldsBorderColor;
- (id)splashTitleLabelTextColor;
- (id)tableBackgroundColor;
- (id)tableCellCheckmarkImageDisabled;
- (id)tableCellDetailLabelBackgroundColor;
- (id)tableCellDetailLabelColor;
- (id)tableCellEditableTextFieldClearButton;
- (id)tableCellTextLabelBackgroundColor;
- (id)tableCellTextLabelColor;
- (id)tableFooterTextColor;
- (id)tableHeaderTextColor;
@end

@implementation CNFRegModernTransparentDarkAppearanceController

- (id)customBackgroundColor
{
  v2 = customBackgroundColor_color;
  if (!customBackgroundColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v4 = customBackgroundColor_color;
    customBackgroundColor_color = v3;

    v2 = customBackgroundColor_color;
  }

  return v2;
}

- (id)tableBackgroundColor
{
  v2 = tableBackgroundColor_color;
  if (!tableBackgroundColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v4 = tableBackgroundColor_color;
    tableBackgroundColor_color = v3;

    v2 = tableBackgroundColor_color;
  }

  return v2;
}

- (id)tableCellCheckmarkImageDisabled
{
  v2 = tableCellCheckmarkImageDisabled_sTintedImage;
  if (!tableCellCheckmarkImageDisabled_sTintedImage)
  {
    v3 = [MEMORY[0x277D755B8] kitImageNamed:@"UIPreferencesBlueCheck.png"];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v5 = [v3 _flatImageWithColor:whiteColor];
    v6 = tableCellCheckmarkImageDisabled_sTintedImage;
    tableCellCheckmarkImageDisabled_sTintedImage = v5;

    v2 = tableCellCheckmarkImageDisabled_sTintedImage;
  }

  return v2;
}

- (id)tableCellEditableTextFieldClearButton
{
  v2 = MEMORY[0x277D755B8];
  v3 = CommunicationsSetupUIBundle();
  v4 = [v2 imageNamed:@"UITextFieldClearButton-white" inBundle:v3];

  return v4;
}

- (id)tableCellTextLabelBackgroundColor
{
  v2 = tableCellTextLabelBackgroundColor_color;
  if (!tableCellTextLabelBackgroundColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v4 = tableCellTextLabelBackgroundColor_color;
    tableCellTextLabelBackgroundColor_color = v3;

    v2 = tableCellTextLabelBackgroundColor_color;
  }

  return v2;
}

- (id)tableCellTextLabelColor
{
  v2 = tableCellTextLabelColor_color;
  if (!tableCellTextLabelColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v4 = tableCellTextLabelColor_color;
    tableCellTextLabelColor_color = v3;

    v2 = tableCellTextLabelColor_color;
  }

  return v2;
}

- (id)tableCellDetailLabelColor
{
  v2 = tableCellDetailLabelColor_color;
  if (!tableCellDetailLabelColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v4 = tableCellDetailLabelColor_color;
    tableCellDetailLabelColor_color = v3;

    v2 = tableCellDetailLabelColor_color;
  }

  return v2;
}

- (id)tableCellDetailLabelBackgroundColor
{
  v2 = tableCellDetailLabelBackgroundColor_color;
  if (!tableCellDetailLabelBackgroundColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v4 = tableCellDetailLabelBackgroundColor_color;
    tableCellDetailLabelBackgroundColor_color = v3;

    v2 = tableCellDetailLabelBackgroundColor_color;
  }

  return v2;
}

- (id)tableHeaderTextColor
{
  v2 = tableHeaderTextColor_color;
  if (!tableHeaderTextColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v4 = tableHeaderTextColor_color;
    tableHeaderTextColor_color = v3;

    v2 = tableHeaderTextColor_color;
  }

  return v2;
}

- (id)tableFooterTextColor
{
  v2 = tableFooterTextColor_color;
  if (!tableFooterTextColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v4 = tableFooterTextColor_color;
    tableFooterTextColor_color = v3;

    v2 = tableFooterTextColor_color;
  }

  return v2;
}

- (id)splashTitleLabelTextColor
{
  v2 = splashTitleLabelTextColor_color;
  if (!splashTitleLabelTextColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v4 = splashTitleLabelTextColor_color;
    splashTitleLabelTextColor_color = v3;

    v2 = splashTitleLabelTextColor_color;
  }

  return v2;
}

- (id)splashEntryFieldTextColor
{
  v2 = splashEntryFieldTextColor_color;
  if (!splashEntryFieldTextColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v4 = splashEntryFieldTextColor_color;
    splashEntryFieldTextColor_color = v3;

    v2 = splashEntryFieldTextColor_color;
  }

  return v2;
}

- (id)splashEntryPlaceholderTextColor
{
  v2 = splashEntryPlaceholderTextColor_color;
  if (!splashEntryPlaceholderTextColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.588235319 green:0.588235319 blue:0.588235319 alpha:1.0];
    v4 = splashEntryPlaceholderTextColor_color;
    splashEntryPlaceholderTextColor_color = v3;

    v2 = splashEntryPlaceholderTextColor_color;
  }

  return v2;
}

- (id)splashEntryFieldLabelTextColor
{
  v2 = splashEntryFieldLabelTextColor_color;
  if (!splashEntryFieldLabelTextColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v4 = splashEntryFieldLabelTextColor_color;
    splashEntryFieldLabelTextColor_color = v3;

    v2 = splashEntryFieldLabelTextColor_color;
  }

  return v2;
}

- (id)splashSignInFieldsBorderColor
{
  v2 = splashSignInFieldsBorderColor_color;
  if (!splashSignInFieldsBorderColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v4 = splashSignInFieldsBorderColor_color;
    splashSignInFieldsBorderColor_color = v3;

    v2 = splashSignInFieldsBorderColor_color;
  }

  return v2;
}

- (id)navigationBarTintColor
{
  v2 = navigationBarTintColor_color;
  if (!navigationBarTintColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v4 = navigationBarTintColor_color;
    navigationBarTintColor_color = v3;

    v2 = navigationBarTintColor_color;
  }

  return v2;
}

- (id)navigationBarBackgroundImage
{
  v2 = objc_alloc_init(MEMORY[0x277D755B8]);

  return v2;
}

@end