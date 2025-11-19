@interface CAFSeatFanObservable
- (NSString)description;
- (void)fanService:(id)a3 didUpdateAutoMode:(BOOL)a4;
- (void)fanService:(id)a3 didUpdateFanLevel:(unsigned __int8)a4;
- (void)fanService:(id)a3 didUpdateOn:(BOOL)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFSeatFanObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFSeatFanObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)fanService:(id)a3 didUpdateOn:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFSeatFanObservable.fanService(_:didUpdateOn:)();
}

- (void)fanService:(id)a3 didUpdateFanLevel:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFSeatFanObservable.fanService(_:didUpdateFanLevel:)();
}

- (void)fanService:(id)a3 didUpdateAutoMode:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFSeatFanObservable.fanService(_:didUpdateAutoMode:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFSeatFanObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFSeatFanObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFSeatFanObservable.serviceDidFinishGroupUpdate(_:)();
}

@end