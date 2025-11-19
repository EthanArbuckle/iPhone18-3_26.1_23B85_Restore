@interface UIButton(MUXCrossPlatformOperations)
+ (id)_mapsui_sectionButton;
+ (id)_mapsui_sectionHeaderButton;
- (id)_mapsui_title;
@end

@implementation UIButton(MUXCrossPlatformOperations)

- (id)_mapsui_title
{
  v1 = [a1 titleLabel];
  v2 = [v1 text];

  return v2;
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