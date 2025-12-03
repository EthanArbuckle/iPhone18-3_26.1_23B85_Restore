@interface UITraitCollection(MapsUI)
- (BOOL)_mapsUI_isWithinMUPlatterView;
@end

@implementation UITraitCollection(MapsUI)

- (BOOL)_mapsUI_isWithinMUPlatterView
{
  v2 = objc_opt_self();
  v3 = [self valueForNSIntegerTrait:v2];

  return v3 != 0;
}

@end