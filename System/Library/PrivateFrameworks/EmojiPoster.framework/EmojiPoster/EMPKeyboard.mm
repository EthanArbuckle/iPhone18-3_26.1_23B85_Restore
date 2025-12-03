@interface EMPKeyboard
+ (CGSize)keyboardSizeForOrientation:(int64_t)orientation;
@end

@implementation EMPKeyboard

+ (CGSize)keyboardSizeForOrientation:(int64_t)orientation
{
  [MEMORY[0x277D75658] keyboardSizeForInterfaceOrientation:orientation];
  result.height = v4;
  result.width = v3;
  return result;
}

@end