@interface CAFTransmissionStatusObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)transmissionStatusService:(id)a3 didUpdateGearPosition:(unsigned __int8)a4;
- (void)transmissionStatusService:(id)a3 didUpdateTransmissionMode:(unsigned __int8)a4;
@end

@implementation CAFTransmissionStatusObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFTransmissionStatusObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)transmissionStatusService:(id)a3 didUpdateTransmissionMode:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFTransmissionStatusObservable.transmissionStatusService(_:didUpdateTransmissionMode:)(v7, a4);
}

- (void)transmissionStatusService:(id)a3 didUpdateGearPosition:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFTransmissionStatusObservable.transmissionStatusService(_:didUpdateGearPosition:)(v7, a4);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFTransmissionStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFTransmissionStatusObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFTransmissionStatusObservable.serviceDidFinishGroupUpdate(_:)();
}

@end