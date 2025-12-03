@interface CAFAutomakerSettingsRemoteNotificationObservable
- (NSString)description;
- (void)automakerSettingsRemoteNotificationService:(id)service didUpdateAutomakerSettingsNotificationButtons:(id)buttons;
- (void)automakerSettingsRemoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color;
- (void)automakerSettingsRemoteNotificationService:(id)service didUpdateTrailingButton:(id)button;
- (void)automakerSettingsRemoteNotificationService:(id)service didUpdateTrailingButtonState:(unsigned __int8)state;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFAutomakerSettingsRemoteNotificationObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFAutomakerSettingsRemoteNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)automakerSettingsRemoteNotificationService:(id)service didUpdateSymbolNameAndColor:(id)color
{
  serviceCopy = service;
  colorCopy = color;
  selfCopy = self;
  CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(selfCopy, colorCopy);
}

- (void)automakerSettingsRemoteNotificationService:(id)service didUpdateTrailingButton:(id)button
{
  serviceCopy = service;
  buttonCopy = button;
  selfCopy = self;
  CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateTrailingButton:)(selfCopy, buttonCopy);
}

- (void)automakerSettingsRemoteNotificationService:(id)service didUpdateTrailingButtonState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateTrailingButtonState:)();
}

- (void)automakerSettingsRemoteNotificationService:(id)service didUpdateAutomakerSettingsNotificationButtons:(id)buttons
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateAutomakerSettingsNotificationButtons:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFAutomakerSettingsRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFAutomakerSettingsRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFAutomakerSettingsRemoteNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end