@interface UIButtonConfiguration(IC)
+ (id)ic_filledTintedButtonConfiguration;
+ (id)ic_plainButtonConfiguration;
@end

@implementation UIButtonConfiguration(IC)

+ (id)ic_filledTintedButtonConfiguration
{
  v0 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  v1 = [MEMORY[0x1E69DC888] tintColor];
  v2 = [v0 background];
  [v2 setBackgroundColor:v1];

  return v0;
}

+ (id)ic_plainButtonConfiguration
{
  v0 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v1 = [MEMORY[0x1E69DC6E8] clearConfiguration];
  v2 = [MEMORY[0x1E69DC888] clearColor];
  [v1 setBackgroundColor:v2];

  [v0 setBackground:v1];
  [v0 setTitleTextAttributesTransformer:&__block_literal_global_67];

  return v0;
}

@end