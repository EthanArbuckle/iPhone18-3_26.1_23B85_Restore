@interface CAFOverlayViewObservable
- (NSString)description;
- (void)overlayViewService:(id)a3 didUpdateHeight:(float)a4;
- (void)overlayViewService:(id)a3 didUpdateOn:(BOOL)a4;
- (void)overlayViewService:(id)a3 didUpdateOriginX:(float)a4;
- (void)overlayViewService:(id)a3 didUpdateOriginY:(float)a4;
- (void)overlayViewService:(id)a3 didUpdateWidth:(float)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFOverlayViewObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFOverlayViewObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)overlayViewService:(id)a3 didUpdateOn:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFOverlayViewObservable.overlayViewService(_:didUpdateOn:)();
}

- (void)overlayViewService:(id)a3 didUpdateOriginX:(float)a4
{
  v5 = a3;
  v6 = self;
  CAFOverlayViewObservable.overlayViewService(_:didUpdateOriginX:)(v6);
}

- (void)overlayViewService:(id)a3 didUpdateOriginY:(float)a4
{
  v5 = a3;
  v6 = self;
  CAFOverlayViewObservable.overlayViewService(_:didUpdateOriginY:)(v6);
}

- (void)overlayViewService:(id)a3 didUpdateWidth:(float)a4
{
  v5 = a3;
  v6 = self;
  CAFOverlayViewObservable.overlayViewService(_:didUpdateWidth:)(v6);
}

- (void)overlayViewService:(id)a3 didUpdateHeight:(float)a4
{
  v5 = a3;
  v6 = self;
  CAFOverlayViewObservable.overlayViewService(_:didUpdateHeight:)(v6);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFOverlayViewObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFOverlayViewObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFOverlayViewObservable.serviceDidFinishGroupUpdate(_:)();
}

@end