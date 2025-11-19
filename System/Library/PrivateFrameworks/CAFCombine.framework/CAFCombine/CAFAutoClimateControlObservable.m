@interface CAFAutoClimateControlObservable
- (NSString)description;
- (void)autoClimateControlService:(id)a3 didUpdateIntensity:(unsigned __int8)a4;
- (void)autoClimateControlService:(id)a3 didUpdateLevel:(unsigned __int8)a4;
- (void)autoClimateControlService:(id)a3 didUpdateName:(id)a4;
- (void)autoClimateControlService:(id)a3 didUpdateVehicleLayoutKey:(id)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFAutoClimateControlObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFAutoClimateControlObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)autoClimateControlService:(id)a3 didUpdateLevel:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateLevel:)(v7, a4);
}

- (void)autoClimateControlService:(id)a3 didUpdateIntensity:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateIntensity:)(v7, a4);
}

- (void)autoClimateControlService:(id)a3 didUpdateVehicleLayoutKey:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateVehicleLayoutKey:)();
}

- (void)autoClimateControlService:(id)a3 didUpdateName:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateName:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFAutoClimateControlObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFAutoClimateControlObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFAutoClimateControlObservable.serviceDidFinishGroupUpdate(_:)();
}

@end