@interface MPModelGenericObject(MPCModelRadioContentReference)
- (id)mpc_radioContentReference;
@end

@implementation MPModelGenericObject(MPCModelRadioContentReference)

- (id)mpc_radioContentReference
{
  v1 = [a1 flattenedGenericObject];
  v2 = [v1 anyObject];
  v3 = [v2 mpc_radioContentReference];

  return v3;
}

@end