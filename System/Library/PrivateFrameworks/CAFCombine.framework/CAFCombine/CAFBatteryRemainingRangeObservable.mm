@interface CAFBatteryRemainingRangeObservable
- (NSString)description;
- (void)batteryRemainingRangeService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFBatteryRemainingRangeObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFBatteryRemainingRangeObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)batteryRemainingRangeService:(id)service didUpdateHidden:(BOOL)hidden
{
  serviceCopy = service;
  selfCopy = self;
  CAFBatteryRemainingRangeObservable.batteryRemainingRangeService(_:didUpdateHidden:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFBatteryRemainingRangeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFBatteryRemainingRangeObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFBatteryRemainingRangeObservable.serviceDidFinishGroupUpdate(_:)();
}

@end