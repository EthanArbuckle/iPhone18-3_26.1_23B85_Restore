@interface CAFBatteryTemperatureObservable
- (NSString)description;
- (void)batteryTemperatureService:(id)service didUpdateTemperatureState:(unsigned __int8)state;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFBatteryTemperatureObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFBatteryTemperatureObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)batteryTemperatureService:(id)service didUpdateTemperatureState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFBatteryTemperatureObservable.batteryTemperatureService(_:didUpdateTemperatureState:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFBatteryTemperatureObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFBatteryTemperatureObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFBatteryTemperatureObservable.serviceDidFinishGroupUpdate(_:)();
}

@end