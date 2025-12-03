@interface CAFEngineGaugeUIObservable
- (NSString)description;
- (void)engineGaugeUIService:(id)service didUpdateUiEmphasizedEngineGauge:(unsigned __int8)gauge;
- (void)engineGaugeUIService:(id)service didUpdateUiSecondaryEngineGaugeHidden:(BOOL)hidden;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFEngineGaugeUIObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFEngineGaugeUIObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)engineGaugeUIService:(id)service didUpdateUiEmphasizedEngineGauge:(unsigned __int8)gauge
{
  serviceCopy = service;
  selfCopy = self;
  CAFEngineGaugeUIObservable.engineGaugeUIService(_:didUpdateUiEmphasizedEngineGauge:)();
}

- (void)engineGaugeUIService:(id)service didUpdateUiSecondaryEngineGaugeHidden:(BOOL)hidden
{
  serviceCopy = service;
  selfCopy = self;
  CAFEngineGaugeUIObservable.engineGaugeUIService(_:didUpdateUiSecondaryEngineGaugeHidden:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFEngineGaugeUIObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFEngineGaugeUIObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFEngineGaugeUIObservable.serviceDidFinishGroupUpdate(_:)();
}

@end