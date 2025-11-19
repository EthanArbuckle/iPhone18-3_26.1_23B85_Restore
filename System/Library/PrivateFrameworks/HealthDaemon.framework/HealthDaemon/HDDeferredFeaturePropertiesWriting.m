@interface HDDeferredFeaturePropertiesWriting
@end

@implementation HDDeferredFeaturePropertiesWriting

uint64_t __50___HDDeferredFeaturePropertiesWriting_synchronize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  v2 = HKCreateSerialUtilityDispatchQueue();
  v3 = _MergedGlobals_212;
  _MergedGlobals_212 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

id __50___HDDeferredFeaturePropertiesWriting_synchronize__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) waitForActiveOrAltAccountDevice];
  v4.receiver = *(a1 + 32);
  v4.super_class = _HDDeferredFeaturePropertiesWriting;
  return objc_msgSendSuper2(&v4, sel_synchronize);
}

@end