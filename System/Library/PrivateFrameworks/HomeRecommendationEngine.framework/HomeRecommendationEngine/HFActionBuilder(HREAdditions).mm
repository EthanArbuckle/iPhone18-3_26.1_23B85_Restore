@interface HFActionBuilder(HREAdditions)
- (id)recommendableObjectsInvolved;
@end

@implementation HFActionBuilder(HREAdditions)

- (id)recommendableObjectsInvolved
{
  v1 = MEMORY[0x277CBEB98];
  containedAccessoryRepresentables = [self containedAccessoryRepresentables];
  v3 = [v1 setWithArray:containedAccessoryRepresentables];
  v4 = [v3 na_map:&__block_literal_global_12];

  return v4;
}

@end