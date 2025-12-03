@interface ParticipantViewDragController
- (void)handlePanGestureRecognizer:(id)recognizer;
@end

@implementation ParticipantViewDragController

- (void)handlePanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;

  ParticipantViewDragController.handlePanGestureRecognizer(_:)(recognizerCopy);
}

@end