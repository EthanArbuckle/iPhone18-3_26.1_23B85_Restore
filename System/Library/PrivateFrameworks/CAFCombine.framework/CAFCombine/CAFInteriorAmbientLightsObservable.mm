@interface CAFInteriorAmbientLightsObservable
- (NSString)description;
- (void)interiorAmbientLightsService:(id)service didUpdateBrightness:(unsigned int)brightness;
- (void)interiorAmbientLightsService:(id)service didUpdatePrimaryColor:(id)color;
- (void)interiorAmbientLightsService:(id)service didUpdateSupportedColors:(id)colors;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFInteriorAmbientLightsObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFInteriorAmbientLightsObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)interiorAmbientLightsService:(id)service didUpdatePrimaryColor:(id)color
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  serviceCopy = service;
  selfCopy = self;
  CAFInteriorAmbientLightsObservable.interiorAmbientLightsService(_:didUpdatePrimaryColor:)();
}

- (void)interiorAmbientLightsService:(id)service didUpdateBrightness:(unsigned int)brightness
{
  serviceCopy = service;
  selfCopy = self;
  CAFInteriorAmbientLightsObservable.interiorAmbientLightsService(_:didUpdateBrightness:)();
}

- (void)interiorAmbientLightsService:(id)service didUpdateSupportedColors:(id)colors
{
  serviceCopy = service;
  colorsCopy = colors;
  selfCopy = self;
  CAFInteriorAmbientLightsObservable.interiorAmbientLightsService(_:didUpdateSupportedColors:)(selfCopy, colors);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFInteriorAmbientLightsObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFInteriorAmbientLightsObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFInteriorAmbientLightsObservable.serviceDidFinishGroupUpdate(_:)();
}

@end