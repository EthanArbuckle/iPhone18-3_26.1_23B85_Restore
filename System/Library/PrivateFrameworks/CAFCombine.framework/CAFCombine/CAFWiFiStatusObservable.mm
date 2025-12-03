@interface CAFWiFiStatusObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)wiFiStatusService:(id)service didUpdateContentURLAction:(id)action;
- (void)wiFiStatusService:(id)service didUpdateModuleStatus:(unsigned __int8)status;
- (void)wiFiStatusService:(id)service didUpdateSignalBars:(unsigned __int8)bars;
@end

@implementation CAFWiFiStatusObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFWiFiStatusObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)wiFiStatusService:(id)service didUpdateModuleStatus:(unsigned __int8)status
{
  serviceCopy = service;
  selfCopy = self;
  CAFWiFiStatusObservable.wiFiStatusService(_:didUpdateModuleStatus:)(selfCopy, status);
}

- (void)wiFiStatusService:(id)service didUpdateSignalBars:(unsigned __int8)bars
{
  serviceCopy = service;
  selfCopy = self;
  CAFWiFiStatusObservable.wiFiStatusService(_:didUpdateSignalBars:)(selfCopy, bars);
}

- (void)wiFiStatusService:(id)service didUpdateContentURLAction:(id)action
{
  if (action)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFWiFiStatusObservable.wiFiStatusService(_:didUpdateContentURLAction:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFWiFiStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFWiFiStatusObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFWiFiStatusObservable.serviceDidFinishGroupUpdate(_:)();
}

@end