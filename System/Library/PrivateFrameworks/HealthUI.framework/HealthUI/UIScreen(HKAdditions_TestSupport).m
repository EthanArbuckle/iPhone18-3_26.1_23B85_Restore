@interface UIScreen(HKAdditions_TestSupport)
+ (int64_t)screenHeightSizeClassForHeight:()HKAdditions_TestSupport scale:;
@end

@implementation UIScreen(HKAdditions_TestSupport)

+ (int64_t)screenHeightSizeClassForHeight:()HKAdditions_TestSupport scale:
{
  v2 = [a1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v5 = [a1 mainScreen];
  [v5 scale];
  v7 = [HKScreenHeightSizeClassUtilities screenHeightSizeClassForHeight:v4 scale:v6];

  return v7;
}

@end