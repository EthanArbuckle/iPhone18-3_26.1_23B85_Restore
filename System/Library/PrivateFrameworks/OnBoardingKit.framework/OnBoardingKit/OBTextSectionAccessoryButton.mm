@interface OBTextSectionAccessoryButton
+ (id)accessoryButton;
- (OBTextSectionAccessoryButton)init;
@end

@implementation OBTextSectionAccessoryButton

- (OBTextSectionAccessoryButton)init
{
  v5.receiver = self;
  v5.super_class = OBTextSectionAccessoryButton;
  v3 = [-[OBTextSectionAccessoryButton class](&v5 class)];

  return v3;
}

+ (id)accessoryButton
{
  v2 = *MEMORY[0x1E69DDCF8];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___OBTextSectionAccessoryButton;
  v3 = objc_msgSendSuper2(&v5, sel_accessoryButtonWithTextStyle_, v2);

  return v3;
}

@end