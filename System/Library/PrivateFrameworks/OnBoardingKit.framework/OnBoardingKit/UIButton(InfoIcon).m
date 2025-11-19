@interface UIButton(InfoIcon)
- (void)addInfoIcon;
@end

@implementation UIButton(InfoIcon)

- (void)addInfoIcon
{
  v2 = [a1 currentImage];

  if (!v2)
  {
    v3 = MEMORY[0x1E69DCAD8];
    v4 = [a1 titleLabel];
    v5 = [v4 font];
    v10 = [v3 configurationWithFont:v5];

    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle.fill"];
    v7 = [v6 imageByApplyingSymbolConfiguration:v10];

    v8 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
    v9 = [v8 updatedConfigurationForButton:a1];

    [v9 setImage:v7];
    [v9 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    [v9 setImagePadding:6.0];
    [v9 setImagePlacement:2];
    [v9 setCornerStyle:-1];
    [a1 setConfiguration:v9];
  }
}

@end