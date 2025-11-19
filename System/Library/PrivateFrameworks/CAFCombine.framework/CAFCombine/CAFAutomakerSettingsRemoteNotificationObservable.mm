@interface CAFAutomakerSettingsRemoteNotificationObservable
- (NSString)description;
- (void)automakerSettingsRemoteNotificationService:(id)a3 didUpdateAutomakerSettingsNotificationButtons:(id)a4;
- (void)automakerSettingsRemoteNotificationService:(id)a3 didUpdateSymbolNameAndColor:(id)a4;
- (void)automakerSettingsRemoteNotificationService:(id)a3 didUpdateTrailingButton:(id)a4;
- (void)automakerSettingsRemoteNotificationService:(id)a3 didUpdateTrailingButtonState:(unsigned __int8)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFAutomakerSettingsRemoteNotificationObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFAutomakerSettingsRemoteNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)automakerSettingsRemoteNotificationService:(id)a3 didUpdateSymbolNameAndColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(v8, v7);
}

- (void)automakerSettingsRemoteNotificationService:(id)a3 didUpdateTrailingButton:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateTrailingButton:)(v8, v7);
}

- (void)automakerSettingsRemoteNotificationService:(id)a3 didUpdateTrailingButtonState:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateTrailingButtonState:)();
}

- (void)automakerSettingsRemoteNotificationService:(id)a3 didUpdateAutomakerSettingsNotificationButtons:(id)a4
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  CAFAutomakerSettingsRemoteNotificationObservable.automakerSettingsRemoteNotificationService(_:didUpdateAutomakerSettingsNotificationButtons:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFAutomakerSettingsRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFAutomakerSettingsRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFAutomakerSettingsRemoteNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end