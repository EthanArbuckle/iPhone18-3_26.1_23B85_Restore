@interface UIArrowConsumingGestureRecognizer.Coordinator
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (_TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer11Coordinator)init;
- (void)handleGesture;
@end

@implementation UIArrowConsumingGestureRecognizer.Coordinator

- (void)handleGesture
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer11Coordinator_action);
  v3 = self;
  v2();
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_24EFDD0EC(v6, v7);

  return v9 & 1;
}

- (_TtCV12GameStoreKit33UIArrowConsumingGestureRecognizer11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end