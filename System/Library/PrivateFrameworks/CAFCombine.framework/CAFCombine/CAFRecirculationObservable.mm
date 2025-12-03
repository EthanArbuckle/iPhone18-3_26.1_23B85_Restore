@interface CAFRecirculationObservable
- (NSString)description;
- (void)recirculationService:(id)service didUpdateAutoMode:(BOOL)mode;
- (void)recirculationService:(id)service didUpdateOn:(BOOL)on;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFRecirculationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFRecirculationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)recirculationService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  CAFRecirculationObservable.recirculationService(_:didUpdateOn:)();
}

- (void)recirculationService:(id)service didUpdateAutoMode:(BOOL)mode
{
  serviceCopy = service;
  selfCopy = self;
  CAFRecirculationObservable.recirculationService(_:didUpdateAutoMode:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFRecirculationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFRecirculationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFRecirculationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end