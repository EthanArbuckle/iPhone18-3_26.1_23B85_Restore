@interface UIButtonConfiguration(IC)
+ (id)ic_filledTintedButtonConfiguration;
+ (id)ic_plainButtonConfiguration;
@end

@implementation UIButtonConfiguration(IC)

+ (id)ic_filledTintedButtonConfiguration
{
  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  tintColor = [MEMORY[0x1E69DC888] tintColor];
  background = [filledButtonConfiguration background];
  [background setBackgroundColor:tintColor];

  return filledButtonConfiguration;
}

+ (id)ic_plainButtonConfiguration
{
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [clearConfiguration setBackgroundColor:clearColor];

  [plainButtonConfiguration setBackground:clearConfiguration];
  [plainButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_67];

  return plainButtonConfiguration;
}

@end