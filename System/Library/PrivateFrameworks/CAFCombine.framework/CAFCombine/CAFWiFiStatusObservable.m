@interface CAFWiFiStatusObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)wiFiStatusService:(id)a3 didUpdateContentURLAction:(id)a4;
- (void)wiFiStatusService:(id)a3 didUpdateModuleStatus:(unsigned __int8)a4;
- (void)wiFiStatusService:(id)a3 didUpdateSignalBars:(unsigned __int8)a4;
@end

@implementation CAFWiFiStatusObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFWiFiStatusObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)wiFiStatusService:(id)a3 didUpdateModuleStatus:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFWiFiStatusObservable.wiFiStatusService(_:didUpdateModuleStatus:)(v7, a4);
}

- (void)wiFiStatusService:(id)a3 didUpdateSignalBars:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFWiFiStatusObservable.wiFiStatusService(_:didUpdateSignalBars:)(v7, a4);
}

- (void)wiFiStatusService:(id)a3 didUpdateContentURLAction:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  CAFWiFiStatusObservable.wiFiStatusService(_:didUpdateContentURLAction:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFWiFiStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFWiFiStatusObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFWiFiStatusObservable.serviceDidFinishGroupUpdate(_:)();
}

@end