@interface UIImageSymbolConfiguration(HUAdditions)
- (uint64_t)hu_hasTextStyle;
@end

@implementation UIImageSymbolConfiguration(HUAdditions)

- (uint64_t)hu_hasTextStyle
{
  v1 = a1;
  v2 = [a1 configurationWithoutTextStyle];
  v3 = [v2 configurationWithoutPointSizeAndWeight];

  LODWORD(v1) = [v1 isEqualToConfiguration:v3];
  return v1 ^ 1;
}

@end