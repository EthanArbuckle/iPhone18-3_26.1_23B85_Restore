@interface UIImageSymbolConfiguration(HUAdditions)
- (uint64_t)hu_hasTextStyle;
@end

@implementation UIImageSymbolConfiguration(HUAdditions)

- (uint64_t)hu_hasTextStyle
{
  selfCopy = self;
  configurationWithoutTextStyle = [self configurationWithoutTextStyle];
  configurationWithoutPointSizeAndWeight = [configurationWithoutTextStyle configurationWithoutPointSizeAndWeight];

  LODWORD(selfCopy) = [selfCopy isEqualToConfiguration:configurationWithoutPointSizeAndWeight];
  return selfCopy ^ 1;
}

@end