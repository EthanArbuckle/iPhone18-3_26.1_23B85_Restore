@interface CAFClosureStateObservable
- (NSString)description;
- (void)closureStateService:(id)service didUpdateLatchState:(BOOL)state;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFClosureStateObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFClosureStateObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)closureStateService:(id)service didUpdateLatchState:(BOOL)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFClosureStateObservable.closureStateService(_:didUpdateLatchState:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFClosureStateObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFClosureStateObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFClosureStateObservable.serviceDidFinishGroupUpdate(_:)();
}

@end