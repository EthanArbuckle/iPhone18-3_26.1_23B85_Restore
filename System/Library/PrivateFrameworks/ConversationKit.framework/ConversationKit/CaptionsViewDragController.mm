@interface CaptionsViewDragController
- (void)handlePanGestureRecognizer:(id)recognizer;
@end

@implementation CaptionsViewDragController

- (void)handlePanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;

  CaptionsViewDragController.handlePanGestureRecognizer(_:)(recognizerCopy);
}

@end