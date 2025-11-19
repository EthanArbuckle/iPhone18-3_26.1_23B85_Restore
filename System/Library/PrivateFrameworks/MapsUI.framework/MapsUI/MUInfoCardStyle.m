@interface MUInfoCardStyle
+ (BOOL)hasExternallyProvidedTintColor;
+ (id)actionRowTintColor;
+ (id)attributionTintColor;
+ (id)cardBackgroundColor;
+ (id)directionsButtonTintColor;
+ (id)labelForProminence:(int64_t)a3;
+ (id)resolvedPrimaryColorForProposedColor:(id)a3;
+ (id)sectionHeaderTextColor;
+ (id)tintColor;
+ (id)vibrantLabelForProminence:(int64_t)a3;
+ (void)setTintColorProvider:(id)a3;
@end

@implementation MUInfoCardStyle

+ (id)resolvedPrimaryColorForProposedColor:(id)a3
{
  v3 = a3;
  if (+[MUInfoCardStyle hasExternallyProvidedTintColor])
  {
    v4 = +[MUInfoCardStyle tintColor];
  }

  else
  {
    v4 = v3;
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

+ (id)vibrantLabelForProminence:(int64_t)a3
{
  v3 = [MUInfoCardStyle labelForProminence:a3];
  [v3 setPreferredVibrancy:1];

  return v3;
}

+ (id)labelForProminence:(int64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  if (a3 == 2)
  {
    v6 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  else if (a3 == 1)
  {
    v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v6 = [MEMORY[0x1E69DC888] labelColor];
  }

  v7 = v6;
  [v5 setTextColor:v6];

LABEL_8:

  return v5;
}

+ (id)directionsButtonTintColor
{
  if (!tintColorBlock || ((*(tintColorBlock + 16))(), (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  return v2;
}

+ (id)actionRowTintColor
{
  if (!tintColorBlock || ((*(tintColorBlock + 16))(), (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  return v2;
}

+ (id)attributionTintColor
{
  v2 = [MEMORY[0x1E696F240] currentTheme];
  if ([v2 isDarkTheme])
  {
    v3 = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
    a1 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else if (!_sectionHeaderStyle)
  {
    a1 = [MEMORY[0x1E69DC888] labelColor];
  }

  return a1;
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

+ (void)setTintColorProvider:(id)a3
{
  if (tintColorBlock != a3)
  {
    v3 = [a3 copy];
    v4 = tintColorBlock;
    tintColorBlock = v3;

    v5 = MEMORY[0x1E696F240];
    v6 = tintColorBlock;

    [v5 setTintColorProvider:v6];
  }
}

@end