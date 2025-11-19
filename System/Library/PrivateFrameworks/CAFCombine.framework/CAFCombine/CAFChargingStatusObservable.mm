@interface CAFChargingStatusObservable
- (NSString)description;
- (void)chargingStatusService:(id)a3 didUpdateCableState:(unsigned __int8)a4;
- (void)chargingStatusService:(id)a3 didUpdateChargingModeIdentifier:(id)a4;
- (void)chargingStatusService:(id)a3 didUpdateChargingState:(unsigned __int8)a4;
- (void)chargingStatusService:(id)a3 didUpdatePortSideIndicator:(unsigned __int8)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFChargingStatusObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFChargingStatusObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)chargingStatusService:(id)a3 didUpdateChargingModeIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  CAFChargingStatusObservable.chargingStatusService(_:didUpdateChargingModeIdentifier:)();
}

- (void)chargingStatusService:(id)a3 didUpdateChargingState:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFChargingStatusObservable.chargingStatusService(_:didUpdateChargingState:)(v7, a4);
}

- (void)chargingStatusService:(id)a3 didUpdateCableState:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFChargingStatusObservable.chargingStatusService(_:didUpdateCableState:)(v7, a4);
}

- (void)chargingStatusService:(id)a3 didUpdatePortSideIndicator:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFChargingStatusObservable.chargingStatusService(_:didUpdatePortSideIndicator:)(v7, a4);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFChargingStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFChargingStatusObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFChargingStatusObservable.serviceDidFinishGroupUpdate(_:)();
}

@end