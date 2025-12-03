@interface CAFSteeringWheelHeatingCoolingObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)steeringWheelHeatingCoolingService:(id)service didUpdateAutoMode:(BOOL)mode;
- (void)steeringWheelHeatingCoolingService:(id)service didUpdateHeatingCoolingLevel:(int)level;
@end

@implementation CAFSteeringWheelHeatingCoolingObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFSteeringWheelHeatingCoolingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)steeringWheelHeatingCoolingService:(id)service didUpdateHeatingCoolingLevel:(int)level
{
  serviceCopy = service;
  selfCopy = self;
  CAFSteeringWheelHeatingCoolingObservable.steeringWheelHeatingCoolingService(_:didUpdateHeatingCoolingLevel:)();
}

- (void)steeringWheelHeatingCoolingService:(id)service didUpdateAutoMode:(BOOL)mode
{
  serviceCopy = service;
  selfCopy = self;
  CAFSteeringWheelHeatingCoolingObservable.steeringWheelHeatingCoolingService(_:didUpdateAutoMode:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFSteeringWheelHeatingCoolingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFSteeringWheelHeatingCoolingObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFSteeringWheelHeatingCoolingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end