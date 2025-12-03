@interface UIArrowConsumingGestureRecognizer.Coordinator
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (_TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer11Coordinator)init;
- (void)handleGesture;
@end

@implementation UIArrowConsumingGestureRecognizer.Coordinator

- (void)handleGesture
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer11Coordinator_action);
  selfCopy = self;
  v2();
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_24EFDD0EC(recognizerCopy, gestureRecognizerCopy);

  return v9 & 1;
}

- (_TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end