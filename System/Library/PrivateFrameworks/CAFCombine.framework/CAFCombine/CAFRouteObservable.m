@interface CAFRouteObservable
- (NSString)description;
- (void)routeService:(id)a3 didUpdateDestination:(id)a4;
- (void)routeService:(id)a3 didUpdateGeodeticSystem:(unsigned __int8)a4;
- (void)routeService:(id)a3 didUpdateLegs:(id)a4;
- (void)routeService:(id)a3 didUpdateOrigin:(id)a4;
- (void)routeService:(id)a3 didUpdateRouteState:(unsigned __int8)a4;
- (void)routeService:(id)a3 didUpdateUserVisibleApplicationName:(id)a4;
- (void)routeService:(id)a3 didUpdateVehicleEnabled:(BOOL)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFRouteObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFRouteObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)routeService:(id)a3 didUpdateRouteState:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFRouteObservable.routeService(_:didUpdateRouteState:)(v7, a4);
}

- (void)routeService:(id)a3 didUpdateUserVisibleApplicationName:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  CAFRouteObservable.routeService(_:didUpdateUserVisibleApplicationName:)();
}

- (void)routeService:(id)a3 didUpdateVehicleEnabled:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFRouteObservable.routeService(_:didUpdateVehicleEnabled:)();
}

- (void)routeService:(id)a3 didUpdateGeodeticSystem:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFRouteObservable.routeService(_:didUpdateGeodeticSystem:)(v7, a4);
}

- (void)routeService:(id)a3 didUpdateOrigin:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFRouteObservable.routeService(_:didUpdateOrigin:)();
}

- (void)routeService:(id)a3 didUpdateDestination:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFRouteObservable.routeService(_:didUpdateDestination:)();
}

- (void)routeService:(id)a3 didUpdateLegs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFRouteObservable.routeService(_:didUpdateLegs:)(v8, a4);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFRouteObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFRouteObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFRouteObservable.serviceDidFinishGroupUpdate(_:)();
}

@end