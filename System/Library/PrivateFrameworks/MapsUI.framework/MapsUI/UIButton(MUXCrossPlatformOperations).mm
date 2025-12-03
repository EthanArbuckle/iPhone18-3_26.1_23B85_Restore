@interface UIButton(MUXCrossPlatformOperations)
+ (id)_mapsui_sectionButton;
+ (id)_mapsui_sectionHeaderButton;
- (id)_mapsui_title;
@end

@implementation UIButton(MUXCrossPlatformOperations)

- (id)_mapsui_title
{
  titleLabel = [self titleLabel];
  text = [titleLabel text];

  return text;
}

+ (id)_mapsui_sectionHeaderButton
{
  v0 = [MEMORY[0x1E69DC738] buttonWithType:MapKitIdiomIsMacCatalyst() ^ 1];

  return v0;
}

+ (id)_mapsui_sectionButton
{
  v0 = [MEMORY[0x1E69DC738] buttonWithType:MapKitIdiomIsMacCatalyst() ^ 1];

  return v0;
}

@end