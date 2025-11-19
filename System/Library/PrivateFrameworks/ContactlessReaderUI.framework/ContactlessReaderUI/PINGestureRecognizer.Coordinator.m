@interface PINGestureRecognizer.Coordinator
- (_TtCV19ContactlessReaderUI20PINGestureRecognizer11Coordinator)init;
- (void)handleDoubleTap2FingersWithSender:(id)a3;
- (void)handleStrokeWithSender:(id)a3;
- (void)handleSwipe2FingersWithSender:(id)a3;
- (void)handleTapWithSender:(id)a3;
@end

@implementation PINGestureRecognizer.Coordinator

- (void)handleTapWithSender:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV19ContactlessReaderUI20PINGestureRecognizer11Coordinator_delegate);
  v4 = self;
  v3(0, 2);
}

- (void)handleDoubleTap2FingersWithSender:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV19ContactlessReaderUI20PINGestureRecognizer11Coordinator_delegate);
  v4 = self;
  v3(1, 2);
}

- (void)handleSwipe2FingersWithSender:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV19ContactlessReaderUI20PINGestureRecognizer11Coordinator_delegate);
  v6 = a3;
  v5 = self;
  v4([v6 direction], 0);
}

- (void)handleStrokeWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_243F805C4(v4);
}

- (_TtCV19ContactlessReaderUI20PINGestureRecognizer11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end