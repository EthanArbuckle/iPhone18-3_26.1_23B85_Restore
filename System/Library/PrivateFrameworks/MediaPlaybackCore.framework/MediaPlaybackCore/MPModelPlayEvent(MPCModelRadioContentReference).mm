@interface MPModelPlayEvent(MPCModelRadioContentReference)
- (id)mpc_radioContentReference;
@end

@implementation MPModelPlayEvent(MPCModelRadioContentReference)

- (id)mpc_radioContentReference
{
  genericObjectRepresentation = [self genericObjectRepresentation];
  mpc_radioContentReference = [genericObjectRepresentation mpc_radioContentReference];

  return mpc_radioContentReference;
}

@end