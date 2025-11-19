@interface CAFTargetSpeedObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)targetSpeedService:(id)a3 didUpdateSpeedLimited:(BOOL)a4;
- (void)targetSpeedService:(id)a3 didUpdateTargetSpeedState:(unsigned __int8)a4;
@end

@implementation CAFTargetSpeedObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFTargetSpeedObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)targetSpeedService:(id)a3 didUpdateTargetSpeedState:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFTargetSpeedObservable.targetSpeedService(_:didUpdateTargetSpeedState:)();
}

- (void)targetSpeedService:(id)a3 didUpdateSpeedLimited:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFTargetSpeedObservable.targetSpeedService(_:didUpdateSpeedLimited:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFTargetSpeedObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFTargetSpeedObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFTargetSpeedObservable.serviceDidFinishGroupUpdate(_:)();
}

@end