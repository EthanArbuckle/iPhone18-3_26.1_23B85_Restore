@interface CAFVentObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)ventService:(id)service didUpdateAutoMode:(BOOL)mode;
- (void)ventService:(id)service didUpdateCombinations:(id)combinations;
- (void)ventService:(id)service didUpdateCurrentIndex:(unsigned int)index;
- (void)ventService:(id)service didUpdateOn:(BOOL)on;
@end

@implementation CAFVentObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFVentObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)ventService:(id)service didUpdateCombinations:(id)combinations
{
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFVentObservable.ventService(_:didUpdateCombinations:)(selfCopy, v6);
}

- (void)ventService:(id)service didUpdateCurrentIndex:(unsigned int)index
{
  serviceCopy = service;
  selfCopy = self;
  CAFVentObservable.ventService(_:didUpdateCurrentIndex:)();
}

- (void)ventService:(id)service didUpdateAutoMode:(BOOL)mode
{
  serviceCopy = service;
  selfCopy = self;
  CAFVentObservable.ventService(_:didUpdateAutoMode:)();
}

- (void)ventService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  CAFVentObservable.ventService(_:didUpdateOn:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFVentObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFVentObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFVentObservable.serviceDidFinishGroupUpdate(_:)();
}

@end