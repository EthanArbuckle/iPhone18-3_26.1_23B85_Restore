@interface CAFDynamicLocalNotificationObservable
- (NSString)description;
- (void)dynamicLocalNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color;
- (void)dynamicLocalNotificationService:(id)service didUpdateUserDismissible:(BOOL)dismissible;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFDynamicLocalNotificationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFDynamicLocalNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)dynamicLocalNotificationService:(id)service didUpdateUserDismissible:(BOOL)dismissible
{
  serviceCopy = service;
  selfCopy = self;
  CAFDynamicLocalNotificationObservable.dynamicLocalNotificationService(_:didUpdateUserDismissible:)();
}

- (void)dynamicLocalNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color
{
  serviceCopy = service;
  colorCopy = color;
  selfCopy = self;
  CAFDynamicLocalNotificationObservable.dynamicLocalNotificationService(_:didUpdateSymbolNameAndColor:)(selfCopy, colorCopy);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFDynamicLocalNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFDynamicLocalNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFDynamicLocalNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end