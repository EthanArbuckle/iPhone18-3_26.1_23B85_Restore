@interface EMKGestureRecognizerDelegate
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
@end

@implementation EMKGestureRecognizerDelegate

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [a3 view];
  v7 = [v6 touchHasEmojiSignificance:v5];

  return v7;
}

@end