@interface CAFUIAppearanceObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)uiAppearanceService:(id)service didUpdateAppearanceMode:(unsigned __int8)mode;
- (void)uiAppearanceService:(id)service didUpdateNightMode:(BOOL)mode;
@end

@implementation CAFUIAppearanceObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFUIAppearanceObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)uiAppearanceService:(id)service didUpdateNightMode:(BOOL)mode
{
  serviceCopy = service;
  selfCopy = self;
  CAFUIAppearanceObservable.uiAppearanceService(_:didUpdateNightMode:)();
}

- (void)uiAppearanceService:(id)service didUpdateAppearanceMode:(unsigned __int8)mode
{
  serviceCopy = service;
  selfCopy = self;
  CAFUIAppearanceObservable.uiAppearanceService(_:didUpdateAppearanceMode:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFUIAppearanceObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFUIAppearanceObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFUIAppearanceObservable.serviceDidFinishGroupUpdate(_:)();
}

@end