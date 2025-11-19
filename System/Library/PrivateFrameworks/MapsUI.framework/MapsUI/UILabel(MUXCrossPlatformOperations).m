@interface UILabel(MUXCrossPlatformOperations)
+ (id)_mapsui_defaultLabel;
@end

@implementation UILabel(MUXCrossPlatformOperations)

+ (id)_mapsui_defaultLabel
{
  v0 = objc_alloc(MEMORY[0x1E69DCC10]);
  v1 = [v0 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v1;
}

@end