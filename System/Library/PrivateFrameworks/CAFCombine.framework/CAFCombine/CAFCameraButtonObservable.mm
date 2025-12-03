@interface CAFCameraButtonObservable
- (NSString)description;
- (void)cameraButtonService:(id)service didUpdateButtonAction:(unsigned __int8)action;
- (void)cameraButtonService:(id)service didUpdateChildrenIdentifiers:(id)identifiers;
- (void)cameraButtonService:(id)service didUpdateContentURLAction:(id)action;
- (void)cameraButtonService:(id)service didUpdateSelectedEntryIndex:(unsigned __int8)index;
- (void)cameraButtonService:(id)service didUpdateSortOrder:(unsigned __int8)order;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFCameraButtonObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFCameraButtonObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)cameraButtonService:(id)service didUpdateButtonAction:(unsigned __int8)action
{
  serviceCopy = service;
  selfCopy = self;
  CAFCameraButtonObservable.cameraButtonService(_:didUpdateButtonAction:)(selfCopy, action);
}

- (void)cameraButtonService:(id)service didUpdateContentURLAction:(id)action
{
  if (action)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFCameraButtonObservable.cameraButtonService(_:didUpdateContentURLAction:)();
}

- (void)cameraButtonService:(id)service didUpdateSortOrder:(unsigned __int8)order
{
  serviceCopy = service;
  selfCopy = self;
  CAFCameraButtonObservable.cameraButtonService(_:didUpdateSortOrder:)();
}

- (void)cameraButtonService:(id)service didUpdateChildrenIdentifiers:(id)identifiers
{
  if (identifiers)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFCameraButtonObservable.cameraButtonService(_:didUpdateChildrenIdentifiers:)();
}

- (void)cameraButtonService:(id)service didUpdateSelectedEntryIndex:(unsigned __int8)index
{
  serviceCopy = service;
  selfCopy = self;
  CAFCameraButtonObservable.cameraButtonService(_:didUpdateSelectedEntryIndex:)(selfCopy, index);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFCameraButtonObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFCameraButtonObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFCameraButtonObservable.serviceDidFinishGroupUpdate(_:)();
}

@end