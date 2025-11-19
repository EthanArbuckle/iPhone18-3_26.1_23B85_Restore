@interface CAFInteriorAmbientLightsObservable
- (NSString)description;
- (void)interiorAmbientLightsService:(id)a3 didUpdateBrightness:(unsigned int)a4;
- (void)interiorAmbientLightsService:(id)a3 didUpdatePrimaryColor:(id)a4;
- (void)interiorAmbientLightsService:(id)a3 didUpdateSupportedColors:(id)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFInteriorAmbientLightsObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFInteriorAmbientLightsObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)interiorAmbientLightsService:(id)a3 didUpdatePrimaryColor:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  CAFInteriorAmbientLightsObservable.interiorAmbientLightsService(_:didUpdatePrimaryColor:)();
}

- (void)interiorAmbientLightsService:(id)a3 didUpdateBrightness:(unsigned int)a4
{
  v5 = a3;
  v6 = self;
  CAFInteriorAmbientLightsObservable.interiorAmbientLightsService(_:didUpdateBrightness:)();
}

- (void)interiorAmbientLightsService:(id)a3 didUpdateSupportedColors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFInteriorAmbientLightsObservable.interiorAmbientLightsService(_:didUpdateSupportedColors:)(v8, a4);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFInteriorAmbientLightsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFInteriorAmbientLightsObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFInteriorAmbientLightsObservable.serviceDidFinishGroupUpdate(_:)();
}

@end