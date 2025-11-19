@interface CAFMinimalRemoteNotificationObservable
- (NSString)description;
- (void)minimalRemoteNotificationService:(id)a3 didUpdateSymbolNameAndColor:(id)a4;
- (void)minimalRemoteNotificationService:(id)a3 didUpdateTrailingButton:(id)a4;
- (void)minimalRemoteNotificationService:(id)a3 didUpdateTrailingButtonState:(unsigned __int8)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFMinimalRemoteNotificationObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFMinimalRemoteNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)minimalRemoteNotificationService:(id)a3 didUpdateSymbolNameAndColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateSymbolNameAndColor:)(v8, v7);
}

- (void)minimalRemoteNotificationService:(id)a3 didUpdateTrailingButton:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateTrailingButton:)(v8, v7);
}

- (void)minimalRemoteNotificationService:(id)a3 didUpdateTrailingButtonState:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFMinimalRemoteNotificationObservable.minimalRemoteNotificationService(_:didUpdateTrailingButtonState:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFMinimalRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFMinimalRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFMinimalRemoteNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end