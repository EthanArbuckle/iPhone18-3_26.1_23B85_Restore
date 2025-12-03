@interface NSBundle(HKMenstrualCyclesUI)
+ (uint64_t)hkmcui_bundle;
@end

@implementation NSBundle(HKMenstrualCyclesUI)

+ (uint64_t)hkmcui_bundle
{
  v2 = objc_opt_class();

  return [self bundleForClass:v2];
}

@end