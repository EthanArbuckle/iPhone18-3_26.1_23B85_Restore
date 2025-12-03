@interface UIButton(AXFont)
- (id)fontForStyle:()AXFont currentSizeCategory:maxSizeCategory:;
- (id)fontForStyle:()AXFont maxSizeCategory:;
@end

@implementation UIButton(AXFont)

- (id)fontForStyle:()AXFont currentSizeCategory:maxSizeCategory:
{
  v7 = a3;
  v8 = a5;
  if (UIContentSizeCategoryCompareToCategory(v8, a4) == NSOrderedAscending)
  {
    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v8];
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7 compatibleWithTraitCollection:v10];
  }

  else
  {
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
  }

  return v9;
}

- (id)fontForStyle:()AXFont maxSizeCategory:
{
  v6 = MEMORY[0x1E69DC668];
  v7 = a4;
  v8 = a3;
  sharedApplication = [v6 sharedApplication];
  preferredContentSizeCategory = [sharedApplication preferredContentSizeCategory];

  v11 = [self fontForStyle:v8 currentSizeCategory:preferredContentSizeCategory maxSizeCategory:v7];

  return v11;
}

@end