@interface PINGestureRecognizer.Coordinator
- (_TtCV19ContactlessReaderUI20PINGestureRecognizer11Coordinator)init;
- (void)handleDoubleTap2FingersWithSender:(id)sender;
- (void)handleStrokeWithSender:(id)sender;
- (void)handleSwipe2FingersWithSender:(id)sender;
- (void)handleTapWithSender:(id)sender;
@end

@implementation PINGestureRecognizer.Coordinator

- (void)handleTapWithSender:(id)sender
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV19ContactlessReaderUI20PINGestureRecognizer11Coordinator_delegate);
  selfCopy = self;
  v3(0, 2);
}

- (void)handleDoubleTap2FingersWithSender:(id)sender
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV19ContactlessReaderUI20PINGestureRecognizer11Coordinator_delegate);
  selfCopy = self;
  v3(1, 2);
}

- (void)handleSwipe2FingersWithSender:(id)sender
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV19ContactlessReaderUI20PINGestureRecognizer11Coordinator_delegate);
  senderCopy = sender;
  selfCopy = self;
  v4([senderCopy direction], 0);
}

- (void)handleStrokeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_243F805C4(senderCopy);
}

- (_TtCV19ContactlessReaderUI20PINGestureRecognizer11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end