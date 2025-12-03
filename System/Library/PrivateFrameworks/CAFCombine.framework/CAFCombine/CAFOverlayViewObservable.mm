@interface CAFOverlayViewObservable
- (NSString)description;
- (void)overlayViewService:(id)service didUpdateHeight:(float)height;
- (void)overlayViewService:(id)service didUpdateOn:(BOOL)on;
- (void)overlayViewService:(id)service didUpdateOriginX:(float)x;
- (void)overlayViewService:(id)service didUpdateOriginY:(float)y;
- (void)overlayViewService:(id)service didUpdateWidth:(float)width;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFOverlayViewObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFOverlayViewObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)overlayViewService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  CAFOverlayViewObservable.overlayViewService(_:didUpdateOn:)();
}

- (void)overlayViewService:(id)service didUpdateOriginX:(float)x
{
  serviceCopy = service;
  selfCopy = self;
  CAFOverlayViewObservable.overlayViewService(_:didUpdateOriginX:)(selfCopy);
}

- (void)overlayViewService:(id)service didUpdateOriginY:(float)y
{
  serviceCopy = service;
  selfCopy = self;
  CAFOverlayViewObservable.overlayViewService(_:didUpdateOriginY:)(selfCopy);
}

- (void)overlayViewService:(id)service didUpdateWidth:(float)width
{
  serviceCopy = service;
  selfCopy = self;
  CAFOverlayViewObservable.overlayViewService(_:didUpdateWidth:)(selfCopy);
}

- (void)overlayViewService:(id)service didUpdateHeight:(float)height
{
  serviceCopy = service;
  selfCopy = self;
  CAFOverlayViewObservable.overlayViewService(_:didUpdateHeight:)(selfCopy);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFOverlayViewObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFOverlayViewObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFOverlayViewObservable.serviceDidFinishGroupUpdate(_:)();
}

@end