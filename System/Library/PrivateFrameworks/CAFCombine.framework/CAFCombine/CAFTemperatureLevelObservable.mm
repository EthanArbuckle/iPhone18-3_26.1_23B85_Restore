@interface CAFTemperatureLevelObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)temperatureLevelService:(id)service didUpdateHeatingCoolingLevel:(int)level;
- (void)temperatureLevelService:(id)service didUpdateOn:(BOOL)on;
@end

@implementation CAFTemperatureLevelObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFTemperatureLevelObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)temperatureLevelService:(id)service didUpdateHeatingCoolingLevel:(int)level
{
  serviceCopy = service;
  selfCopy = self;
  CAFTemperatureLevelObservable.temperatureLevelService(_:didUpdateHeatingCoolingLevel:)();
}

- (void)temperatureLevelService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  CAFTemperatureLevelObservable.temperatureLevelService(_:didUpdateOn:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFTemperatureLevelObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFTemperatureLevelObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFTemperatureLevelObservable.serviceDidFinishGroupUpdate(_:)();
}

@end