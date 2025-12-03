@interface EMKGestureRecognizerDelegate
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
@end

@implementation EMKGestureRecognizerDelegate

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  view = [recognizer view];
  v7 = [view touchHasEmojiSignificance:touchCopy];

  return v7;
}

@end