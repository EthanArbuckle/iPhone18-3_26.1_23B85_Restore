@interface CAFRemoteNotificationObservable
- (NSString)description;
- (void)remoteNotificationService:(id)a3 didUpdateNotificationUserActions:(id)a4;
- (void)remoteNotificationService:(id)a3 didUpdateSymbolNameAndColor:(id)a4;
- (void)remoteNotificationService:(id)a3 didUpdateUserAction:(unsigned __int8)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFRemoteNotificationObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFRemoteNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)remoteNotificationService:(id)a3 didUpdateNotificationUserActions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateNotificationUserActions:)(v8, v7);
}

- (void)remoteNotificationService:(id)a3 didUpdateUserAction:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateUserAction:)();
}

- (void)remoteNotificationService:(id)a3 didUpdateSymbolNameAndColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFRemoteNotificationObservable.remoteNotificationService(_:didUpdateSymbolNameAndColor:)(v8, a4);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFRemoteNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFRemoteNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFRemoteNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end