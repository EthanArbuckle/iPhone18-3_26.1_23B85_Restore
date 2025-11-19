@interface CAFAlertRemoteNotificationObservable
- (NSString)description;
- (void)alertRemoteNotificationService:(id)a3 didUpdateNotificationUserActions:(id)a4;
- (void)alertRemoteNotificationService:(id)a3 didUpdateShowsPrimaryActionHighlight:(BOOL)a4;
- (void)alertRemoteNotificationService:(id)a3 didUpdateSymbolNameAndColor:(id)a4;
- (void)alertRemoteNotificationService:(id)a3 didUpdateUserAction:(unsigned __int8)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFAlertRemoteNotificationObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFAlertRemoteNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)alertRemoteNotificationService:(id)a3 didUpdateSymbolNameAndColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(v8, v7);
}

- (void)alertRemoteNotificationService:(id)a3 didUpdateNotificationUserActions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateNotificationUserActions:)(v8, v7);
}

- (void)alertRemoteNotificationService:(id)a3 didUpdateUserAction:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateUserAction:)();
}

- (void)alertRemoteNotificationService:(id)a3 didUpdateShowsPrimaryActionHighlight:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFAlertRemoteNotificationObservable.alertRemoteNotificationService(_:didUpdateShowsPrimaryActionHighlight:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFAlertRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFAlertRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFAlertRemoteNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end