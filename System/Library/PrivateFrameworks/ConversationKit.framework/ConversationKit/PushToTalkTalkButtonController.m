@interface PushToTalkTalkButtonController
- (void)pressGestureChangedWithGestureRecognizer:(id)a3;
@end

@implementation PushToTalkTalkButtonController

- (void)pressGestureChangedWithGestureRecognizer:(id)a3
{
  v3 = a3;

  PushToTalkTalkButtonController.pressGestureChanged(gestureRecognizer:)(v3);
}

@end