@interface UIFont(MobileSafariFrameworkExtras)
+ (id)_sf_highLegibilityAlternateFont:()MobileSafariFrameworkExtras;
+ (id)_sf_preferredFontForTextStyle:()MobileSafariFrameworkExtras attributes:;
+ (id)_sf_preferredFontForTextStyle:()MobileSafariFrameworkExtras symbolicTraits:;
+ (id)_sf_preferredFontForTextStyle:()MobileSafariFrameworkExtras weight:compatibleWithTraitCollection:;
+ (id)_sf_roundedSystemFontOfSize:()MobileSafariFrameworkExtras weight:;
+ (id)safari_fontDescriptorWithMonospacedDigitAttributes:()MobileSafariFrameworkExtras;
+ (id)safari_monospacedDigitFontForTextStyle:()MobileSafariFrameworkExtras;
+ (id)safari_monospacedDigitFontForTextStyle:()MobileSafariFrameworkExtras weight:;
- (id)_sf_fontByAddingAttributes:()MobileSafariFrameworkExtras;
@end

@implementation UIFont(MobileSafariFrameworkExtras)

+ (id)safari_monospacedDigitFontForTextStyle:()MobileSafariFrameworkExtras
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:?];
  v3 = [self safari_fontDescriptorWithMonospacedDigitAttributes:v2];

  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];

  return v4;
}

+ (id)safari_monospacedDigitFontForTextStyle:()MobileSafariFrameworkExtras weight:
{
  v2 = [MEMORY[0x1E69DB880] _preferredFontDescriptorWithTextStyle:? weight:?];
  v3 = [self safari_fontDescriptorWithMonospacedDigitAttributes:v2];

  v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];

  return v4;
}

+ (id)safari_fontDescriptorWithMonospacedDigitAttributes:()MobileSafariFrameworkExtras
{
  v17[1] = *MEMORY[0x1E69E9840];
  v16 = *MEMORY[0x1E69DB8B0];
  v3 = *MEMORY[0x1E69DB900];
  v11 = *MEMORY[0x1E69DB908];
  v12 = v3;
  v13 = &unk_1EFF742A0;
  v14 = &unk_1EFF742B8;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:&v13 forKeys:&v11 count:2];
  v15 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:{1, v11, v12, v13, v14}];
  v17[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v9 = [v5 fontDescriptorByAddingAttributes:v8];

  return v9;
}

+ (id)_sf_preferredFontForTextStyle:()MobileSafariFrameworkExtras symbolicTraits:
{
  v5 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:?];
  v6 = [v5 fontDescriptorWithSymbolicTraits:{objc_msgSend(v5, "symbolicTraits") | a4}];

  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];

  return v7;
}

+ (id)_sf_preferredFontForTextStyle:()MobileSafariFrameworkExtras attributes:
{
  v5 = MEMORY[0x1E69DB880];
  v6 = a4;
  v7 = [v5 preferredFontDescriptorWithTextStyle:a3];
  v8 = [v7 fontDescriptorByAddingAttributes:v6];

  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];

  return v9;
}

+ (id)_sf_preferredFontForTextStyle:()MobileSafariFrameworkExtras weight:compatibleWithTraitCollection:
{
  v5 = MEMORY[0x1E69DCA40];
  v6 = a4;
  v7 = a3;
  v8 = [v5 metricsForTextStyle:v7];
  v9 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:v6];

  v10 = MEMORY[0x1E69DB878];
  [v9 pointSize];
  v11 = [v10 systemFontOfSize:? weight:?];
  v12 = [v8 scaledFontForFont:v11 compatibleWithTraitCollection:v6];

  return v12;
}

+ (id)_sf_roundedSystemFontOfSize:()MobileSafariFrameworkExtras weight:
{
  v4 = a4;
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:a4 weight:self];
  fontDescriptor = [v5 fontDescriptor];
  v7 = [fontDescriptor fontDescriptorWithDesign:*MEMORY[0x1E69DB8D8]];

  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:v4];

  return v8;
}

+ (id)_sf_highLegibilityAlternateFont:()MobileSafariFrameworkExtras
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E69DB900];
  v17[0] = *MEMORY[0x1E69DB908];
  v17[1] = v4;
  v18[0] = &unk_1EFF742D0;
  v18[1] = &unk_1EFF742E8;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  fontDescriptor = [v3 fontDescriptor];
  v7 = *MEMORY[0x1E69DB8B0];
  v14 = v5;
  v15 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v16 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v10 = [fontDescriptor fontDescriptorByAddingAttributes:v9];

  if (v10)
  {
    v11 = MEMORY[0x1E69DB878];
    [v3 pointSize];
    v12 = [v11 fontWithDescriptor:v10 size:?];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_sf_fontByAddingAttributes:()MobileSafariFrameworkExtras
{
  v4 = a3;
  fontDescriptor = [self fontDescriptor];
  v6 = [fontDescriptor fontDescriptorByAddingAttributes:v4];

  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];

  return v7;
}

@end