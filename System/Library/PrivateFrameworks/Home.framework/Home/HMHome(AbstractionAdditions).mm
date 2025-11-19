@interface HMHome(AbstractionAdditions)
- (id)hf_accessoryLikeObjects;
@end

@implementation HMHome(AbstractionAdditions)

- (id)hf_accessoryLikeObjects
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 accessories];
  v3 = [v1 setWithArray:v2];
  v4 = [v3 na_flatMap:&__block_literal_global_16];

  return v4;
}

@end