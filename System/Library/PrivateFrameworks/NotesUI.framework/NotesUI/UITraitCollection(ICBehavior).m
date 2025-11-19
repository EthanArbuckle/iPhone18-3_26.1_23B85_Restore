@interface UITraitCollection(ICBehavior)
- (uint64_t)ic_behavior;
@end

@implementation UITraitCollection(ICBehavior)

- (uint64_t)ic_behavior
{
  v2 = objc_opt_class();

  return [a1 valueForNSIntegerTrait:v2];
}

@end