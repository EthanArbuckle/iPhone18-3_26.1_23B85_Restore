@interface CAFAutoClimateControlObservable
- (NSString)description;
- (void)autoClimateControlService:(id)service didUpdateIntensity:(unsigned __int8)intensity;
- (void)autoClimateControlService:(id)service didUpdateLevel:(unsigned __int8)level;
- (void)autoClimateControlService:(id)service didUpdateName:(id)name;
- (void)autoClimateControlService:(id)service didUpdateVehicleLayoutKey:(id)key;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFAutoClimateControlObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFAutoClimateControlObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)autoClimateControlService:(id)service didUpdateLevel:(unsigned __int8)level
{
  serviceCopy = service;
  selfCopy = self;
  CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateLevel:)(selfCopy, level);
}

- (void)autoClimateControlService:(id)service didUpdateIntensity:(unsigned __int8)intensity
{
  serviceCopy = service;
  selfCopy = self;
  CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateIntensity:)(selfCopy, intensity);
}

- (void)autoClimateControlService:(id)service didUpdateVehicleLayoutKey:(id)key
{
  if (key)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateVehicleLayoutKey:)();
}

- (void)autoClimateControlService:(id)service didUpdateName:(id)name
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFAutoClimateControlObservable.autoClimateControlService(_:didUpdateName:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFAutoClimateControlObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFAutoClimateControlObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFAutoClimateControlObservable.serviceDidFinishGroupUpdate(_:)();
}

@end