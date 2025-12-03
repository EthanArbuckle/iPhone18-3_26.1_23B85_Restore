@interface CAFRemoteNotificationObservable
- (NSString)description;
- (void)remoteNotificationService:(id)service didUpdateNotificationUserActions:(id)actions;
- (void)remoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color;
- (void)remoteNotificationService:(id)service didUpdateUserAction:(unsigned __int8)action;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFRemoteNotificationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFRemoteNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)remoteNotificationService:(id)service didUpdateNotificationUserActions:(id)actions
{
  serviceCopy = service;
  actionsCopy = actions;
  selfCopy = self;
  CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateNotificationUserActions:)(selfCopy, actionsCopy);
}

- (void)remoteNotificationService:(id)service didUpdateUserAction:(unsigned __int8)action
{
  serviceCopy = service;
  selfCopy = self;
  CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateUserAction:)();
}

- (void)remoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color
{
  serviceCopy = service;
  colorCopy = color;
  selfCopy = self;
  CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateSymbolNameAndColor:)(selfCopy, color);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFRemoteNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end