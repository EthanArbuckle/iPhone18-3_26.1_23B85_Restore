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

  route = [*(&self->super.isa + v2) route];

  return route;
}

@end