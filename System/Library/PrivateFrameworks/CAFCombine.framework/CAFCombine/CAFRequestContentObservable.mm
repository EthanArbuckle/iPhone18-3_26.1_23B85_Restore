@interface CAFRequestContentObservable
- (NSString)description;
- (void)requestContentService:(id)service didUpdateOn:(BOOL)on;
- (void)requestContentService:(id)service didUpdateUserDismissible:(BOOL)dismissible;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFRequestContentObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFRequestContentObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)requestContentService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  CAFRequestContentObservable.requestContentService(_:didUpdateOn:)();
}

- (void)requestContentService:(id)service didUpdateUserDismissible:(BOOL)dismissible
{
  serviceCopy = service;
  selfCopy = self;
  CAFRequestContentObservable.requestContentService(_:didUpdateUserDismissible:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFRequestContentObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFRequestContentObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFRequestContentObservable.serviceDidFinishGroupUpdate(_:)();
}

@end