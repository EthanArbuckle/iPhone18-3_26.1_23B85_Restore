@interface UIVibrancyEffect(CCUIAdditions)
+ (id)controlCenterKeyLineOnDarkVibrancyEffect;
+ (id)controlCenterKeyLineOnLightVibrancyEffect;
+ (id)controlCenterPrimaryOnLightVibrancyEffect;
+ (id)controlCenterPrimaryVibrancyEffect;
+ (id)controlCenterScrollViewDarkeningVibrancyEffect;
+ (id)controlCenterSecondaryOnLightVibrancyEffect;
+ (id)controlCenterSecondaryVibrancyEffect;
@end

@implementation UIVibrancyEffect(CCUIAdditions)

+ (id)controlCenterPrimaryVibrancyEffect
{
  v0 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:+[CCUIControlCenterMaterialView _controlCenterModulesRecipe](CCUIControlCenterMaterialView andCategory:{"_controlCenterModulesRecipe"), 1}];
  v1 = [v0 _visualStylingForStyle:0];
  visualEffect = [v1 visualEffect];

  return visualEffect;
}

+ (id)controlCenterSecondaryVibrancyEffect
{
  +[CCUIControlCenterMaterialView _controlCenterModulesRecipe];
  v0 = _MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle();
  v1 = [MEMORY[0x1E69DD248] _vibrantEffectForLightMaterial:v0 darkMaterial:0 vibrancyStyle:102];

  return v1;
}

+ (id)controlCenterPrimaryOnLightVibrancyEffect
{
  v0 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:+[CCUIControlCenterMaterialView _controlCenterModulesRecipe](CCUIControlCenterMaterialView andCategory:{"_controlCenterModulesRecipe"), 1}];
  _controlCenterPrimaryOnLightVisualStyling = [v0 _controlCenterPrimaryOnLightVisualStyling];
  visualEffect = [_controlCenterPrimaryOnLightVisualStyling visualEffect];

  return visualEffect;
}

+ (id)controlCenterSecondaryOnLightVibrancyEffect
{
  v0 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:+[CCUIControlCenterMaterialView _controlCenterModulesRecipe](CCUIControlCenterMaterialView andCategory:{"_controlCenterModulesRecipe"), 1}];
  _controlCenterSecondaryOnLightVisualStyling = [v0 _controlCenterSecondaryOnLightVisualStyling];
  visualEffect = [_controlCenterSecondaryOnLightVisualStyling visualEffect];

  return visualEffect;
}

+ (id)controlCenterScrollViewDarkeningVibrancyEffect
{
  v0 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:+[CCUIControlCenterMaterialView _controlCenterModulesRecipe](CCUIControlCenterMaterialView andCategory:{"_controlCenterModulesRecipe"), 2}];
  _controlCenterScrollViewDarkeningVisualStyling = [v0 _controlCenterScrollViewDarkeningVisualStyling];
  visualEffect = [_controlCenterScrollViewDarkeningVisualStyling visualEffect];

  return visualEffect;
}

+ (id)controlCenterKeyLineOnDarkVibrancyEffect
{
  v0 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:+[CCUIControlCenterMaterialView _controlCenterModulesRecipe](CCUIControlCenterMaterialView andCategory:{"_controlCenterModulesRecipe"), 2}];
  v1 = [v0 _visualStylingForStyle:5];
  visualEffect = [v1 visualEffect];

  return visualEffect;
}

+ (id)controlCenterKeyLineOnLightVibrancyEffect
{
  v0 = [MEMORY[0x1E69AE170] _visualStylingProviderForRecipe:+[CCUIControlCenterMaterialView _controlCenterModulesRecipe](CCUIControlCenterMaterialView andCategory:{"_controlCenterModulesRecipe"), 1}];
  _controlCenterKeyLineOnLightVisualStyling = [v0 _controlCenterKeyLineOnLightVisualStyling];
  visualEffect = [_controlCenterKeyLineOnLightVisualStyling visualEffect];

  return visualEffect;
}

@end