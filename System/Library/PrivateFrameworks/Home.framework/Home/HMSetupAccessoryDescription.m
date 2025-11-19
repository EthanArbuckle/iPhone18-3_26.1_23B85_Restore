@interface HMSetupAccessoryDescription
@end

@implementation HMSetupAccessoryDescription

uint64_t __51__HMSetupAccessoryDescription_HFAdditions__hf_home__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) homeUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

@end