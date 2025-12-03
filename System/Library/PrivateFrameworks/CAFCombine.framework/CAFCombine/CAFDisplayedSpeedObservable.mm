@interface CAFDisplayedSpeedObservable
- (NSString)description;
- (void)displayedSpeedService:(id)service didUpdateShowSecondarySpeed:(BOOL)speed;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFDisplayedSpeedObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFDisplayedSpeedObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)displayedSpeedService:(id)service didUpdateShowSecondarySpeed:(BOOL)speed
{
  serviceCopy = service;
  selfCopy = self;
  CAFDisplayedSpeedObservable.displayedSpeedService(_:didUpdateShowSecondarySpeed:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFDisplayedSpeedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFDisplayedSpeedObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFDisplayedSpeedObservable.serviceDidFinishGroupUpdate(_:)();
}

@end