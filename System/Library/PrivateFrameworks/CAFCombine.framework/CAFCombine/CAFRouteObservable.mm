@interface CAFRouteObservable
- (NSString)description;
- (void)routeService:(id)service didUpdateDestination:(id)destination;
- (void)routeService:(id)service didUpdateGeodeticSystem:(unsigned __int8)system;
- (void)routeService:(id)service didUpdateLegs:(id)legs;
- (void)routeService:(id)service didUpdateOrigin:(id)origin;
- (void)routeService:(id)service didUpdateRouteState:(unsigned __int8)state;
- (void)routeService:(id)service didUpdateUserVisibleApplicationName:(id)name;
- (void)routeService:(id)service didUpdateVehicleEnabled:(BOOL)enabled;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFRouteObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFRouteObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)routeService:(id)service didUpdateRouteState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateRouteState:)(selfCopy, state);
}

- (void)routeService:(id)service didUpdateUserVisibleApplicationName:(id)name
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateUserVisibleApplicationName:)();
}

- (void)routeService:(id)service didUpdateVehicleEnabled:(BOOL)enabled
{
  serviceCopy = service;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateVehicleEnabled:)();
}

- (void)routeService:(id)service didUpdateGeodeticSystem:(unsigned __int8)system
{
  serviceCopy = service;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateGeodeticSystem:)(selfCopy, system);
}

- (void)routeService:(id)service didUpdateOrigin:(id)origin
{
  serviceCopy = service;
  originCopy = origin;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateOrigin:)();
}

- (void)routeService:(id)service didUpdateDestination:(id)destination
{
  serviceCopy = service;
  destinationCopy = destination;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateDestination:)();
}

- (void)routeService:(id)service didUpdateLegs:(id)legs
{
  serviceCopy = service;
  legsCopy = legs;
  selfCopy = self;
  CAFRouteObservable.routeService(_:didUpdateLegs:)(selfCopy, legs);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFRouteObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFRouteObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFRouteObservable.serviceDidFinishGroupUpdate(_:)();
}

@end