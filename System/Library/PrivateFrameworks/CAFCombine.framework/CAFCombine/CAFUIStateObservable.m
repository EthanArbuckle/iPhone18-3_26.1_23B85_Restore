@interface CAFUIStateObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)uiStateService:(id)a3 didUpdateDriverSide:(unsigned __int8)a4;
- (void)uiStateService:(id)a3 didUpdateUiSceneOptions:(id)a4;
- (void)uiStateService:(id)a3 didUpdateUiSceneState:(unsigned __int8)a4;
@end

@implementation CAFUIStateObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFUIStateObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)uiStateService:(id)a3 didUpdateUiSceneState:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFUIStateObservable.uiStateService(_:didUpdateUiSceneState:)();
}

- (void)uiStateService:(id)a3 didUpdateUiSceneOptions:(id)a4
{
  if (a4)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  CAFUIStateObservable.uiStateService(_:didUpdateUiSceneOptions:)();
}

- (void)uiStateService:(id)a3 didUpdateDriverSide:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFUIStateObservable.uiStateService(_:didUpdateDriverSide:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFUIStateObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFUIStateObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFUIStateObservable.serviceDidFinishGroupUpdate(_:)();
}

@end