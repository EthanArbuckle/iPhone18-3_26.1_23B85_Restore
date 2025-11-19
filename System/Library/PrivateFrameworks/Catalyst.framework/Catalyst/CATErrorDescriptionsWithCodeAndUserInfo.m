@interface CATErrorDescriptionsWithCodeAndUserInfo
@end

@implementation CATErrorDescriptionsWithCodeAndUserInfo

uint64_t ___CATErrorDescriptionsWithCodeAndUserInfo_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = _CATErrorDescriptionsWithCodeAndUserInfo_bundle;
  _CATErrorDescriptionsWithCodeAndUserInfo_bundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end