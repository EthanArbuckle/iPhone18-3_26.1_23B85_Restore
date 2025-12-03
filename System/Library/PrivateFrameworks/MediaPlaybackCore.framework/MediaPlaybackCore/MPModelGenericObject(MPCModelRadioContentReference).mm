@interface MPModelGenericObject(MPCModelRadioContentReference)
- (id)mpc_radioContentReference;
@end

@implementation MPModelGenericObject(MPCModelRadioContentReference)

- (id)mpc_radioContentReference
{
  flattenedGenericObject = [self flattenedGenericObject];
  anyObject = [flattenedGenericObject anyObject];
  mpc_radioContentReference = [anyObject mpc_radioContentReference];

  return mpc_radioContentReference;
}

@end