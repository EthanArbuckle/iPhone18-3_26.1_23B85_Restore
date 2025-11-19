@interface OBBulletedListItemLinkButton
+ (id)linkButton;
@end

@implementation OBBulletedListItemLinkButton

+ (id)linkButton
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___OBBulletedListItemLinkButton;
  v2 = objc_msgSendSuper2(&v6, sel_buttonWithType_, 1);
  v3 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBaseBackgroundColor:v4];

  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    [v3 setButtonSize:1];
    [v3 setTitleAlignment:1];
    [v2 setContentHorizontalAlignment:4];
  }

  else
  {
    [v3 setButtonSize:3];
    [v3 setTitleAlignment:2];
  }

  [v3 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [v2 setConfiguration:v3];

  return v2;
}

@end