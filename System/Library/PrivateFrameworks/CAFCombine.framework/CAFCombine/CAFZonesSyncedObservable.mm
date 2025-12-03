@interface CAFZonesSyncedObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)zonesSyncedService:(id)service didUpdateName:(id)name;
- (void)zonesSyncedService:(id)service didUpdateOn:(BOOL)on;
- (void)zonesSyncedService:(id)service didUpdateVehicleLayoutKey:(id)key;
@end

@implementation CAFZonesSyncedObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFZonesSyncedObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)zonesSyncedService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  CAFZonesSyncedObservable.zonesSyncedService(_:didUpdateOn:)();
}

- (void)zonesSyncedService:(id)service didUpdateVehicleLayoutKey:(id)key
{
  if (key)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFZonesSyncedObservable.zonesSyncedService(_:didUpdateVehicleLayoutKey:)();
}

- (void)zonesSyncedService:(id)service didUpdateName:(id)name
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFZonesSyncedObservable.zonesSyncedService(_:didUpdateName:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFZonesSyncedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFZonesSyncedObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFZonesSyncedObservable.serviceDidFinishGroupUpdate(_:)();
}

@end