@interface CAFSeatHeatingCoolingObservable
- (NSString)description;
- (void)heatingCoolingService:(id)service didUpdateAutoMode:(BOOL)mode;
- (void)heatingCoolingService:(id)service didUpdateHeatingCoolingLevel:(int)level;
- (void)heatingCoolingService:(id)service didUpdateOn:(BOOL)on;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFSeatHeatingCoolingObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFSeatHeatingCoolingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)heatingCoolingService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  CAFSeatHeatingCoolingObservable.heatingCoolingService(_:didUpdateOn:)();
}

- (void)heatingCoolingService:(id)service didUpdateHeatingCoolingLevel:(int)level
{
  serviceCopy = service;
  selfCopy = self;
  CAFSeatHeatingCoolingObservable.heatingCoolingService(_:didUpdateHeatingCoolingLevel:)();
}

- (void)heatingCoolingService:(id)service didUpdateAutoMode:(BOOL)mode
{
  serviceCopy = service;
  selfCopy = self;
  CAFSeatHeatingCoolingObservable.heatingCoolingService(_:didUpdateAutoMode:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFSeatHeatingCoolingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFSeatHeatingCoolingObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFSeatHeatingCoolingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end