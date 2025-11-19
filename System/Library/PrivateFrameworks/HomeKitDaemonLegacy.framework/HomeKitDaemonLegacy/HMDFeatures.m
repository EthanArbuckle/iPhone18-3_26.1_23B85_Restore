@interface HMDFeatures
+ (void)disableFeatureHomeTheaterQFAForTests;
+ (void)enableFeatureHomeTheaterQFAForTests;
+ (void)unsetFeatureHomeTheaterQFAForTests;
@end

@implementation HMDFeatures

+ (void)unsetFeatureHomeTheaterQFAForTests
{
  v2 = isFeatureHomeTheaterQFAEnabledForTests;
  isFeatureHomeTheaterQFAEnabledForTests = 0;
}

+ (void)disableFeatureHomeTheaterQFAForTests
{
  v2 = isFeatureHomeTheaterQFAEnabledForTests;
  isFeatureHomeTheaterQFAEnabledForTests = MEMORY[0x277CBEC28];
}

+ (void)enableFeatureHomeTheaterQFAForTests
{
  v2 = isFeatureHomeTheaterQFAEnabledForTests;
  isFeatureHomeTheaterQFAEnabledForTests = MEMORY[0x277CBEC38];
}

@end