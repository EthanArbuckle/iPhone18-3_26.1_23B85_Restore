@interface UIImageSymbolConfiguration(HKAdditions)
+ (id)hk_medicationTrackingSymbolConfiguration;
@end

@implementation UIImageSymbolConfiguration(HKAdditions)

+ (id)hk_medicationTrackingSymbolConfiguration
{
  v2 = [MEMORY[0x1E69DC888] hk_medicationTrackingKeyColor];
  v3 = [a1 hk_prefersHierarchicalColorConfigurationWithColor:v2];

  return v3;
}

@end