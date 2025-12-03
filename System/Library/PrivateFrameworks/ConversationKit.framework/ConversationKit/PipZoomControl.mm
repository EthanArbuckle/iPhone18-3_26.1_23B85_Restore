@interface PipZoomControl
- (void)handlePinchWithSender:(id)sender;
- (void)zoomControl:(id)control didChangeZoomFactor:(double)factor interactionType:(int64_t)type;
@end

@implementation PipZoomControl

- (void)handlePinchWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  PipZoomControl.handlePinch(sender:)(senderCopy);
}

- (void)zoomControl:(id)control didChangeZoomFactor:(double)factor interactionType:(int64_t)type
{
  controlCopy = control;
  selfCopy = self;
  PipZoomControl.zoomControl(_:didChangeZoomFactor:interactionType:)(factor);
}

@end