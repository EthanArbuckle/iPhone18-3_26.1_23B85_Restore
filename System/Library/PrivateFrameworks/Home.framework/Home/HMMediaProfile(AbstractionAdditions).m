@interface HMMediaProfile(AbstractionAdditions)
- (id)hf_containedCharacteristics;
- (id)hf_containedServices;
@end

@implementation HMMediaProfile(AbstractionAdditions)

- (id)hf_containedServices
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 services];
  v3 = [v1 setWithArray:v2];

  return v3;
}

- (id)hf_containedCharacteristics
{
  v1 = [a1 hf_containedServices];
  v2 = [v1 na_flatMap:&__block_literal_global_206];

  return v2;
}

@end