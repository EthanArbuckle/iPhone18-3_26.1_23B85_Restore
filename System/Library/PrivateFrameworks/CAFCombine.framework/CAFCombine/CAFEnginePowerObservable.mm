@interface CAFEnginePowerObservable
- (NSString)description;
- (void)enginePowerService:(id)service didUpdatePowerState:(unsigned __int8)state;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFEnginePowerObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFEnginePowerObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)enginePowerService:(id)service didUpdatePowerState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFEnginePowerObservable.enginePowerService(_:didUpdatePowerState:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFEnginePowerObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFEnginePowerObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFEnginePowerObservable.serviceDidFinishGroupUpdate(_:)();
}

@end