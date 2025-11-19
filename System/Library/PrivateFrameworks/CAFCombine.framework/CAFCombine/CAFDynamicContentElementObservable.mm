@interface CAFDynamicContentElementObservable
- (NSString)description;
- (void)dynamicContentElementService:(id)a3 didUpdateUserDismissible:(BOOL)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFDynamicContentElementObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFDynamicContentElementObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)dynamicContentElementService:(id)a3 didUpdateUserDismissible:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFDynamicContentElementObservable.dynamicContentElementService(_:didUpdateUserDismissible:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFDynamicContentElementObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFDynamicContentElementObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFDynamicContentElementObservable.serviceDidFinishGroupUpdate(_:)();
}

@end