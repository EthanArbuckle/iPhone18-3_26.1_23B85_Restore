@interface HMMTRFeatures
+ (void)disableFeatureMatterLocalFabricConfigEnabledForTests;
+ (void)disableFeatureMatterRVCForTests;
+ (void)disableFeatureiPhoneOnlyPairingControlForTests;
+ (void)enableFeatureMatterLocalFabricConfigEnabledForTests;
+ (void)enableFeatureMatterRVCForTests;
+ (void)enableFeatureiPhoneOnlyPairingControlForTests;
+ (void)unsetFeatureMatterLocalFabricConfigEnabledForTests;
+ (void)unsetFeatureMatterRVCForTests;
+ (void)unsetFeatureiPhoneOnlyPairingControlForTests;
@end

@implementation HMMTRFeatures

+ (void)disableFeatureMatterRVCForTests
{
  v2 = isFeatureMatterRVCEnabledForTests;
  isFeatureMatterRVCEnabledForTests = MEMORY[0x277CBEC28];
}

+ (void)unsetFeatureMatterRVCForTests
{
  v2 = isFeatureMatterRVCEnabledForTests;
  isFeatureMatterRVCEnabledForTests = 0;
}

+ (void)enableFeatureMatterRVCForTests
{
  v2 = isFeatureMatterRVCEnabledForTests;
  isFeatureMatterRVCEnabledForTests = MEMORY[0x277CBEC38];
}

+ (void)disableFeatureMatterLocalFabricConfigEnabledForTests
{
  v2 = isFeatureMatterLocalFabricConfigEnabledForTests;
  isFeatureMatterLocalFabricConfigEnabledForTests = MEMORY[0x277CBEC28];
}

+ (void)unsetFeatureMatterLocalFabricConfigEnabledForTests
{
  v2 = isFeatureMatterLocalFabricConfigEnabledForTests;
  isFeatureMatterLocalFabricConfigEnabledForTests = 0;
}

+ (void)enableFeatureMatterLocalFabricConfigEnabledForTests
{
  v2 = isFeatureMatterLocalFabricConfigEnabledForTests;
  isFeatureMatterLocalFabricConfigEnabledForTests = MEMORY[0x277CBEC38];
}

+ (void)disableFeatureiPhoneOnlyPairingControlForTests
{
  v2 = isFeatureMatteriPhoneOnlyPairingControlEnabledForTests;
  isFeatureMatteriPhoneOnlyPairingControlEnabledForTests = MEMORY[0x277CBEC28];
}

+ (void)unsetFeatureiPhoneOnlyPairingControlForTests
{
  v2 = isFeatureMatteriPhoneOnlyPairingControlEnabledForTests;
  isFeatureMatteriPhoneOnlyPairingControlEnabledForTests = 0;
}

+ (void)enableFeatureiPhoneOnlyPairingControlForTests
{
  v2 = isFeatureMatteriPhoneOnlyPairingControlEnabledForTests;
  isFeatureMatteriPhoneOnlyPairingControlEnabledForTests = MEMORY[0x277CBEC38];
}

@end