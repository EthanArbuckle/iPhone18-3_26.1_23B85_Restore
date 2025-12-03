@interface CAFMinimalRemoteNotificationObservable
- (NSString)description;
- (void)minimalRemoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color;
- (void)minimalRemoteNotificationService:(id)service didUpdateTrailingButton:(id)button;
- (void)minimalRemoteNotificationService:(id)service didUpdateTrailingButtonState:(unsigned __int8)state;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFMinimalRemoteNotificationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFMinimalRemoteNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)minimalRemoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color
{
  serviceCopy = service;
  colorCopy = color;
  selfCopy = self;
  CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(selfCopy, colorCopy);
}

- (void)minimalRemoteNotificationService:(id)service didUpdateTrailingButton:(id)button
{
  serviceCopy = service;
  buttonCopy = button;
  selfCopy = self;
  CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateTrailingButton:)(selfCopy, buttonCopy);
}

- (void)minimalRemoteNotificationService:(id)service didUpdateTrailingButtonState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateTrailingButtonState:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFMinimalRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFMinimalRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFMinimalRemoteNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end