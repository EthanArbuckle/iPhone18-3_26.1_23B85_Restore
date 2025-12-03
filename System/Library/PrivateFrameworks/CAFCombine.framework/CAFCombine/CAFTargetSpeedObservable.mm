@interface CAFTargetSpeedObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)targetSpeedService:(id)service didUpdateSpeedLimited:(BOOL)limited;
- (void)targetSpeedService:(id)service didUpdateTargetSpeedState:(unsigned __int8)state;
@end

@implementation CAFTargetSpeedObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFTargetSpeedObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)targetSpeedService:(id)service didUpdateTargetSpeedState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFTargetSpeedObservable.targetSpeedService(_:didUpdateTargetSpeedState:)();
}

- (void)targetSpeedService:(id)service didUpdateSpeedLimited:(BOOL)limited
{
  serviceCopy = service;
  selfCopy = self;
  CAFTargetSpeedObservable.targetSpeedService(_:didUpdateSpeedLimited:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFTargetSpeedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFTargetSpeedObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFTargetSpeedObservable.serviceDidFinishGroupUpdate(_:)();
}

@end