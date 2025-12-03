@interface UIImageSymbolConfiguration(HKAdditions)
+ (id)hk_medicationTrackingSymbolConfiguration;
@end

@implementation UIImageSymbolConfiguration(HKAdditions)

+ (id)hk_medicationTrackingSymbolConfiguration
{
  hk_medicationTrackingKeyColor = [MEMORY[0x1E69DC888] hk_medicationTrackingKeyColor];
  v3 = [self hk_prefersHierarchicalColorConfigurationWithColor:hk_medicationTrackingKeyColor];

  return v3;
}

@end