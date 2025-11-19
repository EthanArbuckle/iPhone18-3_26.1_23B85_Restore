@interface CAFDynamicLocalNotificationObservable
- (NSString)description;
- (void)dynamicLocalNotificationService:(id)a3 didUpdateSymbolNameAndColor:(id)a4;
- (void)dynamicLocalNotificationService:(id)a3 didUpdateUserDismissible:(BOOL)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFDynamicLocalNotificationObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFDynamicLocalNotificationObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)dynamicLocalNotificationService:(id)a3 didUpdateUserDismissible:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFDynamicLocalNotificationObservable.dynamicLocalNotificationService(_:didUpdateUserDismissible:)();
}

- (void)dynamicLocalNotificationService:(id)a3 didUpdateSymbolNameAndColor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFDynamicLocalNotificationObservable.dynamicLocalNotificationService(_:didUpdateSymbolNameAndColor:)(v8, v7);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFDynamicLocalNotificationObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFDynamicLocalNotificationObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFDynamicLocalNotificationObservable.serviceDidFinishGroupUpdate(_:)();
}

@end