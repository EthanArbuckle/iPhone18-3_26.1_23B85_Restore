@interface CAFActionRemoteNotificationObservable
- (NSString)description;
- (void)actionRemoteNotificationService:(id)service didUpdateShowsPrimaryActionHighlight:(BOOL)highlight;
- (void)actionRemoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color;
- (void)actionRemoteNotificationService:(id)service didUpdateSymbolNotificationUserActions:(id)actions;
- (void)actionRemoteNotificationService:(id)service didUpdateTrailingButton:(id)button;
- (void)actionRemoteNotificationService:(id)service didUpdateTrailingButtonState:(unsigned __int8)state;
- (void)actionRemoteNotificationService:(id)service didUpdateUserAction:(unsigned __int8)action;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFActionRemoteNotificationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFActionRemoteNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)actionRemoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color
{
  serviceCopy = service;
  colorCopy = color;
  selfCopy = self;
  CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(selfCopy, colorCopy);
}

- (void)actionRemoteNotificationService:(id)service didUpdateTrailingButton:(id)button
{
  serviceCopy = service;
  buttonCopy = button;
  selfCopy = self;
  CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateTrailingButton:)(selfCopy, buttonCopy);
}

- (void)actionRemoteNotificationService:(id)service didUpdateTrailingButtonState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateTrailingButtonState:)(selfCopy, state);
}

- (void)actionRemoteNotificationService:(id)service didUpdateSymbolNotificationUserActions:(id)actions
{
  serviceCopy = service;
  actionsCopy = actions;
  selfCopy = self;
  CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateSymbolNotificationUserActions:)(selfCopy, actionsCopy);
}

- (void)actionRemoteNotificationService:(id)service didUpdateUserAction:(unsigned __int8)action
{
  serviceCopy = service;
  selfCopy = self;
  CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateUserAction:)(selfCopy, action);
}

- (void)actionRemoteNotificationService:(id)service didUpdateShowsPrimaryActionHighlight:(BOOL)highlight
{
  serviceCopy = service;
  selfCopy = self;
  CAFActionRemoteNotificationObservable.actionRemoteNotificationService(_:didUpdateShowsPrimaryActionHighlight:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFActionRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFActionRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFActionRemoteNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end