@interface HMAccessoryProfile(HFAdditions)
+ (id)_profilesWithNonStandardTileUI;
- (id)hf_iconDescriptor;
- (uint64_t)hf_hasNonStandardTileUI;
@end

@implementation HMAccessoryProfile(HFAdditions)

- (id)hf_iconDescriptor
{
  v1 = [a1 accessory];
  v2 = [HFServiceIconFactory iconDescriptorForAccessory:v1];

  return v2;
}

- (uint64_t)hf_hasNonStandardTileUI
{
  v0 = [objc_opt_class() _profilesWithNonStandardTileUI];
  v1 = [v0 containsObject:objc_opt_class()];

  return v1;
}

+ (id)_profilesWithNonStandardTileUI
{
  if (_MergedGlobals_218 != -1)
  {
    dispatch_once(&_MergedGlobals_218, &__block_literal_global_3_1);
  }

  v1 = qword_280E02BB8;

  return v1;
}

@end