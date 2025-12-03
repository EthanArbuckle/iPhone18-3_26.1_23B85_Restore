@interface HMHome(AbstractionAdditions)
- (id)hf_accessoryLikeObjects;
@end

@implementation HMHome(AbstractionAdditions)

- (id)hf_accessoryLikeObjects
{
  v1 = MEMORY[0x277CBEB98];
  accessories = [self accessories];
  v3 = [v1 setWithArray:accessories];
  v4 = [v3 na_flatMap:&__block_literal_global_16];

  return v4;
}

@end