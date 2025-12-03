@interface CCUIControlCenterMaterialView
+ (id)_auxiliaryMaterialView;
+ (id)_blankMaterialView;
+ (id)_darkMaterialView;
+ (id)_lightFillView;
+ (id)_moduleBackgroundMaterialView;
+ (id)_tertiaryView;
+ (int64_t)_controlCenterBackgroundRecipe;
@end

@implementation CCUIControlCenterMaterialView

+ (id)_moduleBackgroundMaterialView
{
  _darkMaterialView = [self _darkMaterialView];
  [_darkMaterialView setGroupNameBase:@"ControlCenterModuleBackground"];

  return _darkMaterialView;
}

+ (id)_darkMaterialView
{
  v2 = MEMORY[0x1E69AE158];
  _controlCenterModulesRecipe = [self _controlCenterModulesRecipe];

  return [v2 materialViewWithRecipe:_controlCenterModulesRecipe];
}

+ (id)_lightFillView
{
  v2 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:4 andCategory:2];
  v3 = [v2 newAutomaticallyUpdatingViewWithStyle:4];

  return v3;
}

+ (id)_tertiaryView
{
  v2 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:4 andCategory:2];
  v3 = [v2 newAutomaticallyUpdatingViewWithStyle:1];

  return v3;
}

+ (id)_blankMaterialView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v2 setUserInteractionEnabled:0];

  return v2;
}

+ (id)_auxiliaryMaterialView
{
  v2 = MEMORY[0x1E69AE158];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v2 materialViewWithRecipeNamed:@"auxiliary" inBundle:v3 options:0 initialWeighting:0 scaleAdjustment:1.0];

  return v4;
}

+ (int64_t)_controlCenterBackgroundRecipe
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 21;
  }

  else
  {
    return 20;
  }
}

@end