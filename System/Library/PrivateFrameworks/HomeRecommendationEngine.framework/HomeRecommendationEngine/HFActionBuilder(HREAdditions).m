@interface HFActionBuilder(HREAdditions)
- (id)recommendableObjectsInvolved;
@end

@implementation HFActionBuilder(HREAdditions)

- (id)recommendableObjectsInvolved
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 containedAccessoryRepresentables];
  v3 = [v1 setWithArray:v2];
  v4 = [v3 na_map:&__block_literal_global_12];

  return v4;
}

@end