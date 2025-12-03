@interface CAFCellularStatusObservable
- (NSString)description;
- (void)cellularStatusService:(id)service didUpdateCellularType:(unsigned __int8)type;
- (void)cellularStatusService:(id)service didUpdateContentURLAction:(id)action;
- (void)cellularStatusService:(id)service didUpdateModuleStatus:(unsigned __int8)status;
- (void)cellularStatusService:(id)service didUpdateSignalBars:(unsigned __int8)bars;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFCellularStatusObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFCellularStatusObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)cellularStatusService:(id)service didUpdateModuleStatus:(unsigned __int8)status
{
  serviceCopy = service;
  selfCopy = self;
  CAFCellularStatusObservable.cellularStatusService(_:didUpdateModuleStatus:)(selfCopy, status);
}

- (void)cellularStatusService:(id)service didUpdateSignalBars:(unsigned __int8)bars
{
  serviceCopy = service;
  selfCopy = self;
  CAFCellularStatusObservable.cellularStatusService(_:didUpdateSignalBars:)(selfCopy, bars);
}

- (void)cellularStatusService:(id)service didUpdateCellularType:(unsigned __int8)type
{
  serviceCopy = service;
  selfCopy = self;
  CAFCellularStatusObservable.cellularStatusService(_:didUpdateCellularType:)();
}

- (void)cellularStatusService:(id)service didUpdateContentURLAction:(id)action
{
  if (action)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFCellularStatusObservable.cellularStatusService(_:didUpdateContentURLAction:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFCellularStatusObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFCellularStatusObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFCellularStatusObservable.serviceDidFinishGroupUpdate(_:)();
}

@end