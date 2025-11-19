@interface CAFVentObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)ventService:(id)a3 didUpdateAutoMode:(BOOL)a4;
- (void)ventService:(id)a3 didUpdateCombinations:(id)a4;
- (void)ventService:(id)a3 didUpdateCurrentIndex:(unsigned int)a4;
- (void)ventService:(id)a3 didUpdateOn:(BOOL)a4;
@end

@implementation CAFVentObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFVentObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)ventService:(id)a3 didUpdateCombinations:(id)a4
{
  type metadata accessor for CAFVehicleUnits(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  CAFVentObservable.ventService(_:didUpdateCombinations:)(v8, v6);
}

- (void)ventService:(id)a3 didUpdateCurrentIndex:(unsigned int)a4
{
  v5 = a3;
  v6 = self;
  CAFVentObservable.ventService(_:didUpdateCurrentIndex:)();
}

- (void)ventService:(id)a3 didUpdateAutoMode:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFVentObservable.ventService(_:didUpdateAutoMode:)();
}

- (void)ventService:(id)a3 didUpdateOn:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFVentObservable.ventService(_:didUpdateOn:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFVentObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFVentObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFVentObservable.serviceDidFinishGroupUpdate(_:)();
}

@end