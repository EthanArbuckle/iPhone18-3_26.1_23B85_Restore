@interface UITraitCollection(CPUILimitedUserInterfaces)
- (uint64_t)limitedUserInterfaces;
@end

@implementation UITraitCollection(CPUILimitedUserInterfaces)

- (uint64_t)limitedUserInterfaces
{
  v2 = objc_opt_class();

  return [a1 valueForNSIntegerTrait:v2];
}

@end