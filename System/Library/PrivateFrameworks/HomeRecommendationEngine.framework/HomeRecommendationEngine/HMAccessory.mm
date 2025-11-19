@interface HMAccessory
@end

@implementation HMAccessory

void __77__HMAccessory_HRERecommendableObjectProtocol___containedRecommendableObjects__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if ([v6 conformsToProtocol:&unk_2866642D0])
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 na_safeAddObject:v5];
}

@end