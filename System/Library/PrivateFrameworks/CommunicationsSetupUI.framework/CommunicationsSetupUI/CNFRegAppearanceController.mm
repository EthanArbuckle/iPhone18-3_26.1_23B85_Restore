@interface CNFRegAppearanceController
+ (id)appearanceControllerForStyle:(int64_t)style;
+ (id)globalAppearanceController;
+ (id)gradientAppearanceController;
+ (id)modernAppearanceController;
+ (id)modernTransparentDarkAppearanceController;
+ (id)modernTransparentLightAppearanceController;
+ (id)stripedAppearanceController;
- (CGSize)tableHeaderTextShadowOffset;
- (UIColor)learnMoreTextColor;
- (UIColor)splashSignInFieldsBackgroundColor;
- (UIColor)splashSignInFieldsBorderColor;
- (UIColor)userInteractionColor;
- (UIImage)learnMoreArrowImage;
- (UIImage)tableCellCheckmarkImage;
- (UIImage)tableCellCheckmarkImageDisabled;
@end

@implementation CNFRegAppearanceController

- (UIColor)userInteractionColor
{
  v2 = userInteractionColor_color;
  if (!userInteractionColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0784313753 green:0.435294122 blue:0.874509811 alpha:1.0];
    v4 = userInteractionColor_color;
    userInteractionColor_color = v3;

    v2 = userInteractionColor_color;
  }

  return v2;
}

- (UIImage)tableCellCheckmarkImage
{
  v2 = tableCellCheckmarkImage_sTintedImage;
  if (!tableCellCheckmarkImage_sTintedImage)
  {
    v3 = [MEMORY[0x277D755B8] kitImageNamed:@"UIPreferencesBlueCheck.png"];
    _labelColor = [MEMORY[0x277D75348] _labelColor];
    v5 = [v3 _flatImageWithColor:_labelColor];
    v6 = tableCellCheckmarkImage_sTintedImage;
    tableCellCheckmarkImage_sTintedImage = v5;

    v2 = tableCellCheckmarkImage_sTintedImage;
  }

  return v2;
}

- (UIImage)tableCellCheckmarkImageDisabled
{
  v2 = tableCellCheckmarkImageDisabled_sTintedImage_0;
  if (!tableCellCheckmarkImageDisabled_sTintedImage_0)
  {
    v3 = [MEMORY[0x277D755B8] kitImageNamed:@"UIPreferencesBlueCheck.png"];
    _tertiaryLabelColor = [MEMORY[0x277D75348] _tertiaryLabelColor];
    v5 = [v3 _flatImageWithColor:_tertiaryLabelColor];
    v6 = tableCellCheckmarkImageDisabled_sTintedImage_0;
    tableCellCheckmarkImageDisabled_sTintedImage_0 = v5;

    v2 = tableCellCheckmarkImageDisabled_sTintedImage_0;
  }

  return v2;
}

- (CGSize)tableHeaderTextShadowOffset
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

id __55__CNFRegAppearanceController_splashTitleLabelTextColor__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  if (v2 >= 2)
  {
    if (v2 != 2)
    {
      goto LABEL_6;
    }

    v3 = MEMORY[0x277D75348];
    v4 = 0.854901961;
  }

  else
  {
    v3 = MEMORY[0x277D75348];
    v4 = 0.145098039;
  }

  v2 = [v3 colorWithRed:v4 green:v4 blue:v4 alpha:1.0];
LABEL_6:

  return v2;
}

- (UIColor)splashSignInFieldsBorderColor
{
  v2 = splashSignInFieldsBorderColor_color_0;
  if (!splashSignInFieldsBorderColor_color_0)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.298039228];
    v4 = splashSignInFieldsBorderColor_color_0;
    splashSignInFieldsBorderColor_color_0 = v3;

    v2 = splashSignInFieldsBorderColor_color_0;
  }

  return v2;
}

- (UIColor)splashSignInFieldsBackgroundColor
{
  v2 = splashSignInFieldsBackgroundColor_color;
  if (!splashSignInFieldsBackgroundColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v4 = splashSignInFieldsBackgroundColor_color;
    splashSignInFieldsBackgroundColor_color = v3;

    v2 = splashSignInFieldsBackgroundColor_color;
  }

  return v2;
}

- (UIColor)learnMoreTextColor
{
  v2 = learnMoreTextColor_color;
  if (!learnMoreTextColor_color)
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.298039228 green:0.337254912 blue:0.423529416 alpha:1.0];
    v4 = learnMoreTextColor_color;
    learnMoreTextColor_color = v3;

    v2 = learnMoreTextColor_color;
  }

  return v2;
}

- (UIImage)learnMoreArrowImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = CommunicationsSetupUIBundle();
  v4 = [v2 imageNamed:@"arrowbutton-default" inBundle:v3];

  return v4;
}

+ (id)globalAppearanceController
{
  v3 = CNFRegGlobalAppearanceStyle();

  return [self appearanceControllerForStyle:v3];
}

+ (id)appearanceControllerForStyle:(int64_t)style
{
  if (style > 3)
  {
    switch(style)
    {
      case 4:
        modernAppearanceController = [self modernAppearanceController];
        break;
      case 5:
        modernAppearanceController = [self modernTransparentLightAppearanceController];
        break;
      case 6:
LABEL_9:
        modernAppearanceController = [self modernTransparentDarkAppearanceController];
        break;
      default:
        goto LABEL_5;
    }
  }

  else
  {
    switch(style)
    {
      case 1:
        modernAppearanceController = [self stripedAppearanceController];
        break;
      case 2:
        modernAppearanceController = [self gradientAppearanceController];
        break;
      case 3:
        goto LABEL_9;
      default:
LABEL_5:
        modernAppearanceController = [self defaultAppearanceController];
        break;
    }
  }

  return modernAppearanceController;
}

+ (id)stripedAppearanceController
{
  v2 = stripedAppearanceController_controller;
  if (!stripedAppearanceController_controller)
  {
    v3 = objc_alloc_init(CNFRegStripedAppearanceController);
    v4 = stripedAppearanceController_controller;
    stripedAppearanceController_controller = v3;

    v2 = stripedAppearanceController_controller;
  }

  return v2;
}

+ (id)gradientAppearanceController
{
  v2 = gradientAppearanceController_controller;
  if (!gradientAppearanceController_controller)
  {
    v3 = objc_alloc_init(CNFRegGradientAppearanceController);
    v4 = gradientAppearanceController_controller;
    gradientAppearanceController_controller = v3;

    v2 = gradientAppearanceController_controller;
  }

  return v2;
}

+ (id)modernAppearanceController
{
  v2 = modernAppearanceController_controller;
  if (!modernAppearanceController_controller)
  {
    v3 = objc_alloc_init(CNFRegModernAppearanceController);
    v4 = modernAppearanceController_controller;
    modernAppearanceController_controller = v3;

    v2 = modernAppearanceController_controller;
  }

  return v2;
}

+ (id)modernTransparentLightAppearanceController
{
  v2 = modernTransparentLightAppearanceController_controller;
  if (!modernTransparentLightAppearanceController_controller)
  {
    v3 = objc_alloc_init(CNFRegModernTransparentLightAppearanceController);
    v4 = modernTransparentLightAppearanceController_controller;
    modernTransparentLightAppearanceController_controller = v3;

    v2 = modernTransparentLightAppearanceController_controller;
  }

  return v2;
}

+ (id)modernTransparentDarkAppearanceController
{
  v2 = modernTransparentDarkAppearanceController_controller;
  if (!modernTransparentDarkAppearanceController_controller)
  {
    v3 = objc_alloc_init(CNFRegModernTransparentDarkAppearanceController);
    v4 = modernTransparentDarkAppearanceController_controller;
    modernTransparentDarkAppearanceController_controller = v3;

    v2 = modernTransparentDarkAppearanceController_controller;
  }

  return v2;
}

@end