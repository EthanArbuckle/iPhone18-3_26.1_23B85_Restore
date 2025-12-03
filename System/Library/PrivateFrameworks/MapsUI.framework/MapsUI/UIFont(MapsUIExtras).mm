@interface UIFont(MapsUIExtras)
+ (id)_mapsui_preferredFontForTextStyle:()MapsUIExtras maxContentSizeCategory:weight:withSymbolicTraits:;
- (id)_mapsui_fontWithMonospacedNumbers;
@end

@implementation UIFont(MapsUIExtras)

- (id)_mapsui_fontWithMonospacedNumbers
{
  [self pointSize];
  v3 = v2;
  v4 = MEMORY[0x1E69DB878];
  fontDescriptor = [self fontDescriptor];
  _mapkit_fontDescriptorByAddingFeaturesForTabularFigures = [fontDescriptor _mapkit_fontDescriptorByAddingFeaturesForTabularFigures];
  v7 = [v4 fontWithDescriptor:_mapkit_fontDescriptorByAddingFeaturesForTabularFigures size:v3];

  return v7;
}

+ (id)_mapsui_preferredFontForTextStyle:()MapsUIExtras maxContentSizeCategory:weight:withSymbolicTraits:
{
  v9 = a4;
  v10 = a5;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  v13 = v10;
  v14 = v13;
  if (*MEMORY[0x1E69DDC90] != v13)
  {
    v14 = v13;
    if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, v13) == NSOrderedAscending)
    {
      v14 = preferredContentSizeCategory;
    }
  }

  v15 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:v9 weight:v14 contentSizeCategory:a6 symbolicTraits:self];

  return v15;
}

@end