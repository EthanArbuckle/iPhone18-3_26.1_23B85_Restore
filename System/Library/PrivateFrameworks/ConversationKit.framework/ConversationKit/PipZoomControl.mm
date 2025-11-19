@interface PipZoomControl
- (void)handlePinchWithSender:(id)a3;
- (void)zoomControl:(id)a3 didChangeZoomFactor:(double)a4 interactionType:(int64_t)a5;
@end

@implementation PipZoomControl

- (void)handlePinchWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  PipZoomControl.handlePinch(sender:)(v4);
}

- (void)zoomControl:(id)a3 didChangeZoomFactor:(double)a4 interactionType:(int64_t)a5
{
  v7 = a3;
  v8 = self;
  PipZoomControl.zoomControl(_:didChangeZoomFactor:interactionType:)(a4);
}

@end