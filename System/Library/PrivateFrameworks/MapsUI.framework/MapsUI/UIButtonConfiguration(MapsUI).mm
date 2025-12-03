@interface UIButtonConfiguration(MapsUI)
+ (id)_mapsui_filledButtonConfiguration;
+ (id)_mapsui_grayButtonConfiguration;
+ (id)_mapsui_textButtonConfiguration;
+ (id)_mapsui_textButtonConfigurationWithFont:()MapsUI textColor:;
+ (id)_setupButtonConfiguration:()MapsUI;
@end

@implementation UIButtonConfiguration(MapsUI)

+ (id)_mapsui_textButtonConfigurationWithFont:()MapsUI textColor:
{
  v5 = a3;
  v6 = a4;
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [plainButtonConfiguration setTitleAlignment:1];
  background = [plainButtonConfiguration background];
  [background setBackgroundColorTransformer:&__block_literal_global_5642];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__UIButtonConfiguration_MapsUI___mapsui_textButtonConfigurationWithFont_textColor___block_invoke_2;
  v12[3] = &unk_1E8218F00;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  [plainButtonConfiguration setTitleTextAttributesTransformer:v12];

  return plainButtonConfiguration;
}

+ (id)_mapsui_textButtonConfiguration
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  v4 = +[MUInfoCardStyle textColor];
  v5 = [self _mapsui_textButtonConfigurationWithFont:v3 textColor:v4];

  return v5;
}

+ (id)_mapsui_filledButtonConfiguration
{
  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  v3 = [self _setupButtonConfiguration:filledButtonConfiguration];

  return v3;
}

+ (id)_mapsui_grayButtonConfiguration
{
  grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  v3 = [self _setupButtonConfiguration:grayButtonConfiguration];

  return v3;
}

+ (id)_setupButtonConfiguration:()MapsUI
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD78] weight:*MEMORY[0x1E69DB980]];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__UIButtonConfiguration_MapsUI___setupButtonConfiguration___block_invoke;
  v8[3] = &unk_1E8218EB8;
  v9 = v4;
  v5 = v4;
  [v3 setTitleTextAttributesTransformer:v8];
  [v3 setContentInsets:{15.0, 10.0, 15.0, 10.0}];
  background = [v3 background];
  [background setCornerRadius:8.0];

  return v3;
}

@end