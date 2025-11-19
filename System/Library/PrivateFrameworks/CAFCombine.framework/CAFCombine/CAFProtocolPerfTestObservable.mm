@interface CAFProtocolPerfTestObservable
- (NSString)description;
- (void)protocolPerfTestService:(id)a3 didUpdateTestInt16:(signed __int16)a4;
- (void)protocolPerfTestService:(id)a3 didUpdateTestInt32:(int)a4;
- (void)protocolPerfTestService:(id)a3 didUpdateTestUInt16:(unsigned __int16)a4;
- (void)protocolPerfTestService:(id)a3 didUpdateTestUInt32:(unsigned int)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFProtocolPerfTestObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFProtocolPerfTestObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)protocolPerfTestService:(id)a3 didUpdateTestInt32:(int)a4
{
  v6 = a3;
  v7 = self;
  CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestInt32:)(v7, a4);
}

- (void)protocolPerfTestService:(id)a3 didUpdateTestInt16:(signed __int16)a4
{
  v5 = a3;
  v6 = self;
  CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestInt16:)();
}

- (void)protocolPerfTestService:(id)a3 didUpdateTestUInt32:(unsigned int)a4
{
  v6 = a3;
  v7 = self;
  CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestUInt32:)(v7, a4);
}

- (void)protocolPerfTestService:(id)a3 didUpdateTestUInt16:(unsigned __int16)a4
{
  v5 = a3;
  v6 = self;
  CAFProtocolPerfTestObservable.protocolPerfTestService(_:didUpdateTestUInt16:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFProtocolPerfTestObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFProtocolPerfTestObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFProtocolPerfTestObservable.serviceDidFinishGroupUpdate(_:)();
}

@end