@interface UIColor(MUXCrossPlatformOperations)
+ (id)_mapsui_colorNamed:()MUXCrossPlatformOperations;
@end

@implementation UIColor(MUXCrossPlatformOperations)

+ (id)_mapsui_colorNamed:()MUXCrossPlatformOperations
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 _mapsuiBundle];
  v6 = [MEMORY[0x1E69DC888] colorNamed:v4 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

@end