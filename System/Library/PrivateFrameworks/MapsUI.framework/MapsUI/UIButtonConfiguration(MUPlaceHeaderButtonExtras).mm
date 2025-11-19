@interface UIButtonConfiguration(MUPlaceHeaderButtonExtras)
+ (id)_mapsui_configurationForPrimaryType:()MUPlaceHeaderButtonExtras;
+ (id)_mapsui_primaryHeaderActionConfiguration;
+ (id)_mapsui_secondaryHeaderActionConfiguration;
+ (id)_setupDirectionsButtonConfiguration:()MUPlaceHeaderButtonExtras;
@end

@implementation UIButtonConfiguration(MUPlaceHeaderButtonExtras)

+ (id)_mapsui_configurationForPrimaryType:()MUPlaceHeaderButtonExtras
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_9:
    v4 = [MEMORY[0x1E69DC740] _mapsui_secondaryHeaderActionConfiguration];
    goto LABEL_10;
  }

  switch(a3)
  {
    case 2:
      v3 = [MEMORY[0x1E69DC740] _mapsui_primaryHeaderActionConfiguration];
      v6 = [MEMORY[0x1E69DC888] systemGreenColor];
      [v3 setBaseBackgroundColor:v6];

      break;
    case 3:
      goto LABEL_9;
    case 4:
LABEL_8:
      v4 = [MEMORY[0x1E69DC740] _mapsui_primaryHeaderActionConfiguration];
LABEL_10:
      v3 = v4;
      break;
  }

LABEL_11:

  return v3;
}

+ (id)_setupDirectionsButtonConfiguration:()MUPlaceHeaderButtonExtras
{
  v3 = a3;
  [v3 setTitleTextAttributesTransformer:&__block_literal_global_12864];
  [v3 setImagePadding:4.0];
  v4 = MUPlacePlatterCornerRadius(0);
  v5 = [v3 background];
  [v5 setCornerRadius:v4];

  v6 = *MEMORY[0x1E69DC5C0];
  v7 = *(MEMORY[0x1E69DC5C0] + 8);
  v8 = *(MEMORY[0x1E69DC5C0] + 16);
  v9 = *(MEMORY[0x1E69DC5C0] + 24);
  v10 = [v3 background];
  [v10 setBackgroundInsets:{v6, v7, v8, v9}];

  [v3 setContentInsets:{v6, v7, v8, v9}];
  v11 = MEMORY[0x1E69DCAD8];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  v13 = [v11 configurationWithFont:v12];
  [v3 setPreferredSymbolConfigurationForImage:v13];

  [v3 setTitleLineBreakMode:4];
  if (+[MUInfoCardStyle platterStyle]== 1)
  {
    [v3 setBaseBackgroundColor:0];
    v14 = [v3 background];
    [v14 setBackgroundColor:0];

    v15 = +[MUInfoCardStyle tintColor];
    [v3 setBaseForegroundColor:v15];

    v16 = MEMORY[0x1E69DD248];
    v17 = [MEMORY[0x1E69DC730] effectWithStyle:1100];
    v18 = [v16 effectForBlurEffect:v17 style:6];
    v19 = [v3 background];
    [v19 setVisualEffect:v18];
  }

  return v3;
}

+ (id)_mapsui_secondaryHeaderActionConfiguration
{
  v2 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  v3 = [a1 _setupDirectionsButtonConfiguration:v2];

  return v3;
}

+ (id)_mapsui_primaryHeaderActionConfiguration
{
  v2 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  v3 = [a1 _setupDirectionsButtonConfiguration:v2];

  return v3;
}

@end