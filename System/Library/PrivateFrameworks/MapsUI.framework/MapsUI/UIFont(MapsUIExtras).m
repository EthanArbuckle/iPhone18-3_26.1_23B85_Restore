@interface UIFont(MapsUIExtras)
+ (id)_mapsui_preferredFontForTextStyle:()MapsUIExtras maxContentSizeCategory:weight:withSymbolicTraits:;
- (id)_mapsui_fontWithMonospacedNumbers;
@end

@implementation UIFont(MapsUIExtras)

- (id)_mapsui_fontWithMonospacedNumbers
{
  [a1 pointSize];
  v3 = v2;
  v4 = MEMORY[0x1E69DB878];
  v5 = [a1 fontDescriptor];
  v6 = [v5 _mapkit_fontDescriptorByAddingFeaturesForTabularFigures];
  v7 = [v4 fontWithDescriptor:v6 size:v3];

  return v7;
}

+ (id)_mapsui_preferredFontForTextStyle:()MapsUIExtras maxContentSizeCategory:weight:withSymbolicTraits:
{
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69DC668] sharedApplication];
  v12 = [v11 preferredContentSizeCategory];

  v13 = v10;
  v14 = v13;
  if (*MEMORY[0x1E69DDC90] != v13)
  {
    v14 = v13;
    if (UIContentSizeCategoryCompareToCategory(v12, v13) == NSOrderedAscending)
    {
      v14 = v12;
    }
  }

  v15 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:v9 weight:v14 contentSizeCategory:a6 symbolicTraits:a1];

  return v15;
}

@end