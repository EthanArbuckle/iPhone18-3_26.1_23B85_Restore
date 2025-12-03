@interface UIButton(InfoIcon)
- (void)addInfoIcon;
@end

@implementation UIButton(InfoIcon)

- (void)addInfoIcon
{
  currentImage = [self currentImage];

  if (!currentImage)
  {
    v3 = MEMORY[0x1E69DCAD8];
    titleLabel = [self titleLabel];
    font = [titleLabel font];
    v10 = [v3 configurationWithFont:font];

    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle.fill"];
    v7 = [v6 imageByApplyingSymbolConfiguration:v10];

    borderlessButtonConfiguration = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
    v9 = [borderlessButtonConfiguration updatedConfigurationForButton:self];

    [v9 setImage:v7];
    [v9 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    [v9 setImagePadding:6.0];
    [v9 setImagePlacement:2];
    [v9 setCornerStyle:-1];
    [self setConfiguration:v9];
  }
}

@end