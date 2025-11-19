@interface _MNLocationSimulationData
- (GEOComposedRoute)routeToFollow;
@end

@implementation _MNLocationSimulationData

- (GEOComposedRoute)routeToFollow
{
  v2 = 32;
  if (self->_simulationType == 2)
  {
    v2 = 24;
  }

  v3 = [*(&self->super.isa + v2) route];

  return v3;
}

@end