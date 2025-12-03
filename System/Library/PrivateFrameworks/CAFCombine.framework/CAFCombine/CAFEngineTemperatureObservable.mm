@interface CAFEngineTemperatureObservable
- (NSString)description;
- (void)engineTemperatureService:(id)service didUpdateTemperatureState:(unsigned __int8)state;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFEngineTemperatureObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFEngineTemperatureObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)engineTemperatureService:(id)service didUpdateTemperatureState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFEngineTemperatureObservable.engineTemperatureService(_:didUpdateTemperatureState:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFEngineTemperatureObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFEngineTemperatureObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFEngineTemperatureObservable.serviceDidFinishGroupUpdate(_:)();
}

@end