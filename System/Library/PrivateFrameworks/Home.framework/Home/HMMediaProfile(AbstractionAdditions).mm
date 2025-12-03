@interface HMMediaProfile(AbstractionAdditions)
- (id)hf_containedCharacteristics;
- (id)hf_containedServices;
@end

@implementation HMMediaProfile(AbstractionAdditions)

- (id)hf_containedServices
{
  v1 = MEMORY[0x277CBEB98];
  services = [self services];
  v3 = [v1 setWithArray:services];

  return v3;
}

- (id)hf_containedCharacteristics
{
  hf_containedServices = [self hf_containedServices];
  v2 = [hf_containedServices na_flatMap:&__block_literal_global_206];

  return v2;
}

@end