@interface CNFRegModernAppearanceController
- (id)tableBackgroundColor;
- (id)tableCellCheckmarkImage;
- (id)tableCellCheckmarkImageDisabled;
- (id)tableCellDetailLabelBackgroundColor;
- (id)tableCellDetailLabelColor;
- (id)tableCellTextLabelBackgroundColor;
- (id)tableCellTextLabelColor;
- (id)tableFooterTextColor;
- (id)tableHeaderTextColor;
- (id)webViewBackgroundView;
@end

@implementation CNFRegModernAppearanceController

- (id)tableBackgroundColor
{
  v2 = tableBackgroundColor_color_0;
  if (!tableBackgroundColor_color_0)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v4 = tableBackgroundColor_color_0;
    tableBackgroundColor_color_0 = v3;

    v2 = tableBackgroundColor_color_0;
  }

  return v2;
}

- (id)tableCellTextLabelBackgroundColor
{
  v2 = tableCellTextLabelBackgroundColor_color_0;
  if (!tableCellTextLabelBackgroundColor_color_0)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v4 = tableCellTextLabelBackgroundColor_color_0;
    tableCellTextLabelBackgroundColor_color_0 = v3;

    v2 = tableCellTextLabelBackgroundColor_color_0;
  }

  return v2;
}

- (id)tableCellTextLabelColor
{
  v2 = tableCellTextLabelColor_color_0;
  if (!tableCellTextLabelColor_color_0)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v4 = tableCellTextLabelColor_color_0;
    tableCellTextLabelColor_color_0 = v3;

    v2 = tableCellTextLabelColor_color_0;
  }

  return v2;
}

- (id)tableCellDetailLabelColor
{
  v2 = tableCellDetailLabelColor_color_0;
  if (!tableCellDetailLabelColor_color_0)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v4 = tableCellDetailLabelColor_color_0;
    tableCellDetailLabelColor_color_0 = v3;

    v2 = tableCellDetailLabelColor_color_0;
  }

  return v2;
}

- (id)tableCellDetailLabelBackgroundColor
{
  v2 = tableCellDetailLabelBackgroundColor_color_0;
  if (!tableCellDetailLabelBackgroundColor_color_0)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v4 = tableCellDetailLabelBackgroundColor_color_0;
    tableCellDetailLabelBackgroundColor_color_0 = v3;

    v2 = tableCellDetailLabelBackgroundColor_color_0;
  }

  return v2;
}

- (id)tableHeaderTextColor
{
  v2 = tableHeaderTextColor_color_0;
  if (!tableHeaderTextColor_color_0)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.145098045 green:0.145098045 blue:0.145098045 alpha:1.0];
    v4 = tableHeaderTextColor_color_0;
    tableHeaderTextColor_color_0 = v3;

    v2 = tableHeaderTextColor_color_0;
  }

  return v2;
}

- (id)tableFooterTextColor
{
  v2 = tableFooterTextColor_color_0;
  if (!tableFooterTextColor_color_0)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.145098045 green:0.145098045 blue:0.145098045 alpha:1.0];
    v4 = tableFooterTextColor_color_0;
    tableFooterTextColor_color_0 = v3;

    v2 = tableFooterTextColor_color_0;
  }

  return v2;
}

- (id)tableCellCheckmarkImage
{
  v3 = tableCellCheckmarkImage_sTintedImage_0;
  if (!tableCellCheckmarkImage_sTintedImage_0)
  {
    v4 = [MEMORY[0x277D755B8] kitImageNamed:@"UIPreferencesBlueCheck.png"];
    v5 = [(CNFRegAppearanceController *)self userInteractionColor];
    v6 = [v4 _flatImageWithColor:v5];
    v7 = tableCellCheckmarkImage_sTintedImage_0;
    tableCellCheckmarkImage_sTintedImage_0 = v6;

    v3 = tableCellCheckmarkImage_sTintedImage_0;
  }

  return v3;
}

- (id)tableCellCheckmarkImageDisabled
{
  v2 = tableCellCheckmarkImageDisabled_sTintedImage_1;
  if (!tableCellCheckmarkImageDisabled_sTintedImage_1)
  {
    v3 = [MEMORY[0x277D755B8] kitImageNamed:@"UIPreferencesBlueCheck.png"];
    v4 = [MEMORY[0x277D75348] colorWithRed:0.698039216 green:0.698039216 blue:0.698039216 alpha:1.0];
    v5 = [v3 _flatImageWithColor:v4];
    v6 = tableCellCheckmarkImageDisabled_sTintedImage_1;
    tableCellCheckmarkImageDisabled_sTintedImage_1 = v5;

    v2 = tableCellCheckmarkImageDisabled_sTintedImage_1;
  }

  return v2;
}

- (id)webViewBackgroundView
{
  v2 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:1 style:{0.0, 0.0, 1.0, 1.0}];
  [v2 setAutoresizingMask:18];

  return v2;
}

@end