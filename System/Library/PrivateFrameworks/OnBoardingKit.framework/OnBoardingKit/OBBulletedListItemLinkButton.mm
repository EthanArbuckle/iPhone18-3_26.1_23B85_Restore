@interface OBBulletedListItemLinkButton
+ (id)linkButton;
@end

@implementation OBBulletedListItemLinkButton

+ (id)linkButton
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___OBBulletedListItemLinkButton;
  v2 = objc_msgSendSuper2(&v6, sel_buttonWithType_, 1);
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [plainButtonConfiguration setBaseBackgroundColor:clearColor];

  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    [plainButtonConfiguration setButtonSize:1];
    [plainButtonConfiguration setTitleAlignment:1];
    [v2 setContentHorizontalAlignment:4];
  }

  else
  {
    [plainButtonConfiguration setButtonSize:3];
    [plainButtonConfiguration setTitleAlignment:2];
  }

  [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [v2 setConfiguration:plainButtonConfiguration];

  return v2;
}

@end