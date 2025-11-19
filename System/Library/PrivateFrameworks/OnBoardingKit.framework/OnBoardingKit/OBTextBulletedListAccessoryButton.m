@interface OBTextBulletedListAccessoryButton
+ (id)accessoryButton;
@end

@implementation OBTextBulletedListAccessoryButton

+ (id)accessoryButton
{
  v2 = *MEMORY[0x1E69DDD80];
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___OBTextBulletedListAccessoryButton;
  v3 = objc_msgSendSuper2(&v5, sel_accessoryButtonWithTextStyle_, v2);

  return v3;
}

@end