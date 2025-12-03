@interface UIScreen(HKAdditions_TestSupport)
+ (int64_t)screenHeightSizeClassForHeight:()HKAdditions_TestSupport scale:;
@end

@implementation UIScreen(HKAdditions_TestSupport)

+ (int64_t)screenHeightSizeClassForHeight:()HKAdditions_TestSupport scale:
{
  mainScreen = [self mainScreen];
  [mainScreen nativeBounds];
  v4 = v3;
  mainScreen2 = [self mainScreen];
  [mainScreen2 scale];
  v7 = [HKScreenHeightSizeClassUtilities screenHeightSizeClassForHeight:v4 scale:v6];

  return v7;
}

@end