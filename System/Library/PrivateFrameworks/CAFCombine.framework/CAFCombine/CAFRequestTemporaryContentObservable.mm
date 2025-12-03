@interface CAFRequestTemporaryContentObservable
- (NSString)description;
- (void)requestTemporaryContentService:(id)service didUpdateOn:(BOOL)on;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFRequestTemporaryContentObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFRequestTemporaryContentObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)requestTemporaryContentService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  CAFRequestTemporaryContentObservable.requestTemporaryContentService(_:didUpdateOn:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFRequestTemporaryContentObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFRequestTemporaryContentObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFRequestTemporaryContentObservable.serviceDidFinishGroupUpdate(_:)();
}

@end