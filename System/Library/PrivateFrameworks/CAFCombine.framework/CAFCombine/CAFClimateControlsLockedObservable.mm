@interface CAFClimateControlsLockedObservable
- (NSString)description;
- (void)climateControlsLockedService:(id)a3 didUpdateLockState:(unsigned __int8)a4;
- (void)climateControlsLockedService:(id)a3 didUpdateName:(id)a4;
- (void)climateControlsLockedService:(id)a3 didUpdateVehicleLayoutKey:(id)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFClimateControlsLockedObservable

- (NSString)description
{
  v2 = self;
  locked = CAFClimateControlsLockedObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](locked, v5);

  return v6;
}

- (void)climateControlsLockedService:(id)a3 didUpdateLockState:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFClimateControlsLockedObservable.climateControlsLockedService(_:didUpdateLockState:)();
}

- (void)climateControlsLockedService:(id)a3 didUpdateVehicleLayoutKey:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  CAFClimateControlsLockedObservable.climateControlsLockedService(_:didUpdateVehicleLayoutKey:)();
}

- (void)climateControlsLockedService:(id)a3 didUpdateName:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  CAFClimateControlsLockedObservable.climateControlsLockedService(_:didUpdateName:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFClimateControlsLockedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFClimateControlsLockedObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFClimateControlsLockedObservable.serviceDidFinishGroupUpdate(_:)();
}

@end