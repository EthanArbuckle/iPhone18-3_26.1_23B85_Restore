@interface CAFAlertRemoteNotificationObservable
- (NSString)description;
- (void)alertRemoteNotificationService:(id)service didUpdateNotificationUserActions:(id)actions;
- (void)alertRemoteNotificationService:(id)service didUpdateShowsPrimaryActionHighlight:(BOOL)highlight;
- (void)alertRemoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color;
- (void)alertRemoteNotificationService:(id)service didUpdateUserAction:(unsigned __int8)action;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFAlertRemoteNotificationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFAlertRemoteNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)alertRemoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color
{
  serviceCopy = service;
  colorCopy = color;
  selfCopy = self;
  CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(selfCopy, colorCopy);
}

- (void)alertRemoteNotificationService:(id)service didUpdateNotificationUserActions:(id)actions
{
  serviceCopy = service;
  actionsCopy = actions;
  selfCopy = self;
  CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateNotificationUserActions:)(selfCopy, actionsCopy);
}

- (void)alertRemoteNotificationService:(id)service didUpdateUserAction:(unsigned __int8)action
{
  serviceCopy = service;
  selfCopy = self;
  CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateUserAction:)();
}

- (void)alertRemoteNotificationService:(id)service didUpdateShowsPrimaryActionHighlight:(BOOL)highlight
{
  serviceCopy = service;
  selfCopy = self;
  CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateShowsPrimaryActionHighlight:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFAlertRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFAlertRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFAlertRemoteNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end