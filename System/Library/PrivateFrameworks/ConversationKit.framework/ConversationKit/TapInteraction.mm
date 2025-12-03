@interface TapInteraction
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (UIView)view;
- (int64_t)numberOfTapsRequired;
- (void)didMoveToView:(id)view;
- (void)handleRecognizer:(id)recognizer;
- (void)setNumberOfTapsRequired:(int64_t)required;
- (void)setView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation TapInteraction

- (UIView)view
{
  v2 = TapInteraction.view.getter();

  return v2;
}

- (void)setView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  TapInteraction.view.setter(view);
}

- (int64_t)numberOfTapsRequired
{
  selfCopy = self;
  v3 = TapInteraction.numberOfTapsRequired.getter();

  return v3;
}

- (void)setNumberOfTapsRequired:(int64_t)required
{
  selfCopy = self;
  TapInteraction.numberOfTapsRequired.setter(required);
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  TapInteraction.willMove(to:)(view);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  TapInteraction.didMove(to:)(view);
}

- (void)handleRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  TapInteraction.handleRecognizer(_:)(recognizerCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = TapInteraction.gestureRecognizer(_:shouldRequireFailureOf:)(recognizerCopy, gestureRecognizerCopy);

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = TapInteraction.gestureRecognizer(_:shouldReceive:)(selfCopy, touchCopy);

  return v9;
}

@end