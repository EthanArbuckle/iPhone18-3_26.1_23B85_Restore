@interface CAFDefrostObservable
- (NSString)description;
- (void)defrostService:(id)a3 didUpdateLevel:(unsigned __int8)a4;
- (void)defrostService:(id)a3 didUpdateTypes:(unint64_t)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFDefrostObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFDefrostObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)defrostService:(id)a3 didUpdateTypes:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  CAFDefrostObservable.defrostService(_:didUpdateTypes:)();
}

- (void)defrostService:(id)a3 didUpdateLevel:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFDefrostObservable.defrostService(_:didUpdateLevel:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFDefrostObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFDefrostObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFDefrostObservable.serviceDidFinishGroupUpdate(_:)();
}

@end