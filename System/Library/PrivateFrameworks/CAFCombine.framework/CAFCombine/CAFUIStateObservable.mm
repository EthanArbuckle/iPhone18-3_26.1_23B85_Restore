@interface CAFUIStateObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)uiStateService:(id)service didUpdateDriverSide:(unsigned __int8)side;
- (void)uiStateService:(id)service didUpdateUiSceneOptions:(id)options;
- (void)uiStateService:(id)service didUpdateUiSceneState:(unsigned __int8)state;
@end

@implementation CAFUIStateObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFUIStateObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)uiStateService:(id)service didUpdateUiSceneState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFUIStateObservable.uiStateService(_:didUpdateUiSceneState:)();
}

- (void)uiStateService:(id)service didUpdateUiSceneOptions:(id)options
{
  if (options)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFUIStateObservable.uiStateService(_:didUpdateUiSceneOptions:)();
}

- (void)uiStateService:(id)service didUpdateDriverSide:(unsigned __int8)side
{
  serviceCopy = service;
  selfCopy = self;
  CAFUIStateObservable.uiStateService(_:didUpdateDriverSide:)();
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFUIStateObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFUIStateObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFUIStateObservable.serviceDidFinishGroupUpdate(_:)();
}

@end