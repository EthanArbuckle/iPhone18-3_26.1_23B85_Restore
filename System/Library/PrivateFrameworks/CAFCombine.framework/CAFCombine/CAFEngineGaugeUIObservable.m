@interface CAFEngineGaugeUIObservable
- (NSString)description;
- (void)engineGaugeUIService:(id)a3 didUpdateUiEmphasizedEngineGauge:(unsigned __int8)a4;
- (void)engineGaugeUIService:(id)a3 didUpdateUiSecondaryEngineGaugeHidden:(BOOL)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFEngineGaugeUIObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFEngineGaugeUIObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)engineGaugeUIService:(id)a3 didUpdateUiEmphasizedEngineGauge:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFEngineGaugeUIObservable.engineGaugeUIService(_:didUpdateUiEmphasizedEngineGauge:)();
}

- (void)engineGaugeUIService:(id)a3 didUpdateUiSecondaryEngineGaugeHidden:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFEngineGaugeUIObservable.engineGaugeUIService(_:didUpdateUiSecondaryEngineGaugeHidden:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFEngineGaugeUIObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFEngineGaugeUIObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFEngineGaugeUIObservable.serviceDidFinishGroupUpdate(_:)();
}

@end