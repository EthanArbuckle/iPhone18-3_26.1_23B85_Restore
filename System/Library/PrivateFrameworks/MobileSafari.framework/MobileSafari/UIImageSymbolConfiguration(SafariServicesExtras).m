@interface UIImageSymbolConfiguration(SafariServicesExtras)
+ (id)_sf_staticConfigurationWithTextStyle:()SafariServicesExtras scale:;
+ (id)_sf_staticConfigurationWithTextStyle:()SafariServicesExtras scale:compatibleWithTraitCollection:;
+ (id)_sf_staticConfigurationWithTextStyle:()SafariServicesExtras scale:weight:compatibleWithTraitCollection:;
+ (id)safari_URLFieldButtonConfiguration;
+ (id)safari_barButtonConfiguration;
@end

@implementation UIImageSymbolConfiguration(SafariServicesExtras)

+ (id)_sf_staticConfigurationWithTextStyle:()SafariServicesExtras scale:
{
  v6 = MEMORY[0x1E69DD1B8];
  v7 = *MEMORY[0x1E69DDC70];
  v8 = a3;
  v9 = [v6 traitCollectionWithPreferredContentSizeCategory:v7];
  v10 = [a1 _sf_staticConfigurationWithTextStyle:v8 scale:a4 compatibleWithTraitCollection:v9];

  return v10;
}

+ (id)_sf_staticConfigurationWithTextStyle:()SafariServicesExtras scale:compatibleWithTraitCollection:
{
  v8 = MEMORY[0x1E69DB880];
  v9 = a5;
  v10 = a3;
  v11 = [v8 preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:v9];
  v12 = [v11 fontAttributes];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69DB8F0]];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69DB990]];
  [v14 floatValue];
  v16 = v15;

  v17 = [a1 _sf_staticConfigurationWithTextStyle:v10 scale:a4 weight:MEMORY[0x18CFFDEE0](v16) compatibleWithTraitCollection:v9];

  return v17;
}

+ (id)_sf_staticConfigurationWithTextStyle:()SafariServicesExtras scale:weight:compatibleWithTraitCollection:
{
  v9 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a3 compatibleWithTraitCollection:a6];
  [v9 pointSize];
  v10 = [a1 configurationWithPointSize:a5 weight:a4 scale:?];

  return v10;
}

+ (id)safari_barButtonConfiguration
{
  v1 = [a1 configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
  v2 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v3 = [v1 configurationByApplyingConfiguration:v2];

  return v3;
}

+ (id)safari_URLFieldButtonConfiguration
{
  v1 = [a1 configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
  v2 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v3 = [v1 configurationByApplyingConfiguration:v2];

  return v3;
}

@end