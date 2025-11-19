@interface IMAppleStoreHelper
+ (BOOL)isInAppleStoreDemoMode;
@end

@implementation IMAppleStoreHelper

+ (BOOL)isInAppleStoreDemoMode
{
  if (qword_1ED8CA1C8 != -1)
  {
    sub_1A85EAC88();
  }

  return byte_1ED8C9BC8;
}

@end