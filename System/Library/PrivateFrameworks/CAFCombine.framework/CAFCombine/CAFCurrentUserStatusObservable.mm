@interface CAFCurrentUserStatusObservable
- (NSString)description;
- (void)currentUserStatusService:(id)a3 didUpdateHidden:(BOOL)a4;
- (void)currentUserStatusService:(id)a3 didUpdateImage:(id)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFCurrentUserStatusObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFCurrentUserStatusObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)currentUserStatusService:(id)a3 didUpdateImage:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = a4;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v12 = a3;
    v13 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  CAFCurrentUserStatusObservable.currentUserStatusService(_:didUpdateImage:)();
  outlined consume of Data?(v9, v11);
}

- (void)currentUserStatusService:(id)a3 didUpdateHidden:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFCurrentUserStatusObservable.currentUserStatusService(_:didUpdateHidden:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFCurrentUserStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFCurrentUserStatusObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFCurrentUserStatusObservable.serviceDidFinishGroupUpdate(_:)();
}

@end