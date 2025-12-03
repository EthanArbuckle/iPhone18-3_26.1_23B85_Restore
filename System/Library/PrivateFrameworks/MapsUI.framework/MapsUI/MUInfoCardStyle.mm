@interface MUInfoCardStyle
+ (BOOL)hasExternallyProvidedTintColor;
+ (id)actionRowTintColor;
+ (id)attributionTintColor;
+ (id)cardBackgroundColor;
+ (id)directionsButtonTintColor;
+ (id)labelForProminence:(int64_t)prominence;
+ (id)resolvedPrimaryColorForProposedColor:(id)color;
+ (id)sectionHeaderTextColor;
+ (id)tintColor;
+ (id)vibrantLabelForProminence:(int64_t)prominence;
+ (void)setTintColorProvider:(id)provider;
@end

@implementation MUInfoCardStyle

+ (id)resolvedPrimaryColorForProposedColor:(id)color
{
  colorCopy = color;
  if (+[MUInfoCardStyle hasExternallyProvidedTintColor])
  {
    v4 = +[MUInfoCardStyle tintColor];
  }

  else
  {
    v4 = colorCopy;
  }

  v5 = v4;

  return v5;
}

+ (BOOL)hasExternallyProvidedTintColor
{
  result = 0;
  if (tintColorBlock)
  {
    v2 = (*(tintColorBlock + 16))();

    if (v2)
    {
      return 1;
    }
  }

  return result;
}

+ (id)vibrantLabelForProminence:(int64_t)prominence
{
  v3 = [MUInfoCardStyle labelForProminence:prominence];
  [v3 setPreferredVibrancy:1];

  return v3;
}

+ (id)labelForProminence:(int64_t)prominence
{
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  if (prominence == 2)
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  else if (prominence == 1)
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    if (prominence)
    {
      goto LABEL_8;
    }

    tertiaryLabelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  v7 = tertiaryLabelColor;
  [v5 setTextColor:tertiaryLabelColor];

LABEL_8:

  return v5;
}

+ (id)directionsButtonTintColor
{
  if (!tintColorBlock || ((*(tintColorBlock + 16))(), (systemWhiteColor = objc_claimAutoreleasedReturnValue()) == 0))
  {
    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  return systemWhiteColor;
}

+ (id)actionRowTintColor
{
  if (!tintColorBlock || ((*(tintColorBlock + 16))(), (systemBlueColor = objc_claimAutoreleasedReturnValue()) == 0))
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  return systemBlueColor;
}

+ (id)attributionTintColor
{
  currentTheme = [MEMORY[0x1E696F240] currentTheme];
  if ([currentTheme isDarkTheme])
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    whiteColor = 0;
  }

  return whiteColor;
}

+ (id)tintColor
{
  if (tintColorBlock)
  {
    v2 = (*(tintColorBlock + 16))();
  }

  else
  {
    if (MapKitIdiomIsMacCatalyst())
    {
      [MEMORY[0x1E69DC888] _mapsui_accentColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }
    v2 = ;
  }

  return v2;
}

+ (id)sectionHeaderTextColor
{
  if (_sectionHeaderStyle == 1)
  {
    self = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else if (!_sectionHeaderStyle)
  {
    self = [MEMORY[0x1E69DC888] labelColor];
  }

  return self;
}

+ (id)cardBackgroundColor
{
  if (_isDeveloperPlaceCard == 1)
  {
    [MEMORY[0x1E69DC888] _mapsui_colorNamed:@"DeveloperPlaceCardPlatterBackgroundColor"];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }
  v2 = ;

  return v2;
}

+ (void)setTintColorProvider:(id)provider
{
  if (tintColorBlock != provider)
  {
    v3 = [provider copy];
    v4 = tintColorBlock;
    tintColorBlock = v3;

    v5 = MEMORY[0x1E696F240];
    v6 = tintColorBlock;

    [v5 setTintColorProvider:v6];
  }
}

@end