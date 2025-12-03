@interface PushToTalkTalkButtonController
- (void)pressGestureChangedWithGestureRecognizer:(id)recognizer;
@end

@implementation PushToTalkTalkButtonController

- (void)pressGestureChangedWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;

  PushToTalkTalkButtonController.pressGestureChanged(gestureRecognizer:)(recognizerCopy);
}

@end