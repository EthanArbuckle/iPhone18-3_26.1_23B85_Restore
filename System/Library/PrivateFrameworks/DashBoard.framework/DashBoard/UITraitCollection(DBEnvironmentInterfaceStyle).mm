@interface UITraitCollection(DBEnvironmentInterfaceStyle)
- (uint64_t)environmentInterfaceStyle;
@end

@implementation UITraitCollection(DBEnvironmentInterfaceStyle)

- (uint64_t)environmentInterfaceStyle
{
  v2 = objc_opt_class();

  return [self valueForNSIntegerTrait:v2];
}

@end